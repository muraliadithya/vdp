module CompressibleSet where

import Data.List
import Data.Hashable
import qualified Data.HashSet as S


data WildCardElt t = Wild | Elt t deriving (Eq, Show)
type WildCardAssignment t = [WildCardElt t]
type Assignment t = [t]
type AssignmentSet t = S.HashSet (Assignment t)
type CompressibleSet t = ([t], S.HashSet (WildCardAssignment t))

instance (Hashable t) => Hashable (WildCardElt t) where
  hashWithSalt n Wild = 1+n
  hashWithSalt n (Elt x) = hashWithSalt n x

isWild :: Int -> WildCardAssignment t -> Bool
isWild n [] = error "Variable out of range"
isWild 0 (Wild:ws) = True
isWild 0 (w:ws) = False
isWild n (w:ws) = isWild (n-1) ws

allWild :: WildCardAssignment t -> Bool
allWild [] = True
allWild (Wild:ws) = allWild ws
allWild _ = False

covers :: (Eq t) => WildCardElt t -> WildCardElt t -> Bool
covers _ Wild = True
covers (Elt x) (Elt y) = x == y
covers Wild (Elt _) = False

coversA :: (Eq t) => WildCardAssignment t -> WildCardAssignment t -> Bool
coversA x y = and (zipWith covers x y)

memberWithCoversA :: (Eq t) => WildCardAssignment t -> S.HashSet (WildCardAssignment t) -> Bool
memberWithCoversA a s = any (coversA a) $ S.toList s

expand :: [t] -> WildCardAssignment t -> [Assignment t]
expand carrier wca =
  case wca of
    []         -> [[]]
    (Wild):xx  -> [(c:t) | c <- carrier, t <- expand carrier xx]
    (Elt x):xx -> [(x:t) | t <- expand carrier xx]

decompress :: (Eq t, Hashable t) => CompressibleSet t -> AssignmentSet t
decompress (carrier, s) =
  S.foldl' (\acc ws -> S.union acc . S.fromList $ expand carrier ws) S.empty s

compressOnce :: (Eq t, Hashable t) => CompressibleSet t -> CompressibleSet t
compressOnce (carrier, s) = (carrier, S.foldl' (\acc w -> compressAllPositions w carrier acc) s s)
compress c = let d = compressOnce c in if d == c then d else compress d

compressAllPositions :: (Eq t, Hashable t) => WildCardAssignment t -> [t] -> S.HashSet (WildCardAssignment t) -> S.HashSet (WildCardAssignment t)
compressAllPositions w carrier as =
  let xs = [(init a, b) | i <- [1..length w], let (a,b) = splitAt i w]
  in foldl (\acc (pre,suff) -> compressAtPosition carrier acc (pre,suff)) as xs

compressAtPosition :: (Eq t, Hashable t) => [t] -> S.HashSet (WildCardAssignment t) -> ([WildCardElt t], [WildCardElt t]) -> S.HashSet (WildCardAssignment t)
compressAtPosition carrier as (prefix, suffix) =
  let instantiations = [prefix ++ [Elt c] ++ suffix | c <- carrier]
      allPresent = all (\x -> memberWithCoversA x as) instantiations
  in if allPresent
     then removeCovered $ S.insert (prefix ++ [Wild] ++ suffix) $ S.difference as (S.fromList instantiations)
     else as
  where removeCovered s = S.filter (\x -> not $ memberWithCoversA x (S.delete x s)) s


cpFilter :: (WildCardAssignment t -> Bool) -> CompressibleSet t -> CompressibleSet t
cpFilter p (carrier, s) = (carrier, S.filter p s)

-- Requires set is compressed. Tricky to count cardinality of
-- compressed sets compactly because there can be overlap between the
-- denotations of wildcard assignments. Easy option: decompress then
-- count.
cardinality :: (Eq t, Hashable t) => CompressibleSet t -> Int
cardinality c = S.size $ decompress c

cardinalityUpperBound :: (Eq t, Hashable t) => Int -> CompressibleSet t -> Int
cardinalityUpperBound size (carrier, _) = (length carrier) ^ size

-- fraction of assignments to total possible assignments
fractionCovered :: (Eq t, Hashable t) => Int -> CompressibleSet t -> Float
fractionCovered size c = (fromIntegral $ cardinality c) / (fromIntegral $ cardinalityUpperBound size c)

nonEmpty :: CompressibleSet t -> Bool
nonEmpty (_, s) = not $ S.null s

-- N.B. changing any --> all should give same result
nonComplete :: CompressibleSet t -> Bool
nonComplete (_, s) = not $ any allWild (S.toList s)

-- Used to check both directions, a mistake, given that the negative
-- witnesses may come from different models
notCovered :: (Eq t, Hashable t) => CompressibleSet t -> CompressibleSet t -> Bool
notCovered (_, s1) (_, s2) = any (\w -> not $ memberWithCoversA w s2) (S.toList s1)


-- Requires carrier1 == carrier2. N.b. this could be more efficient,
-- since as written it involves a compression (in union), but this
-- needn't happen, since the denotation is getting smaller.
compressedIntersection :: (Eq t, Hashable t) => CompressibleSet t -> CompressibleSet t -> CompressibleSet t
compressedIntersection cp1@(_,s1) cp2@(_,s2) =
  compressedUnion
  (cpFilter (\wca -> memberWithCoversA wca s2) cp1)
  (cpFilter (\wca -> memberWithCoversA wca s1) cp2)

-- Requires carrier1 == carrier2
compressedUnion :: (Eq t, Hashable t) => CompressibleSet t -> CompressibleSet t -> CompressibleSet t
compressedUnion (c1, s1) (c2, s2) = compress (c1, S.union s1 s2)

-- No need to compress afterward
compressedAllFilter :: Int -> CompressibleSet t -> CompressibleSet t
compressedAllFilter n c = cpFilter (isWild n) c

-- No need to compress afterward
compressedNotAllFilter :: Int -> CompressibleSet t -> CompressibleSet t
compressedNotAllFilter n c = cpFilter (not . isWild n) c


allWildExceptN :: Int -> WildCardAssignment t -> Bool
allWildExceptN _ [] = True
allWildExceptN n ws | n >= 0 = let (a,b) = splitAt (n+1) ws
                               in  allWild (init a) && allWild b

noAllWildExceptN :: Int -> CompressibleSet t -> Bool
noAllWildExceptN n (_,s) = S.null $ S.filter (allWildExceptN n) s

makeNWild :: Int -> WildCardAssignment t -> WildCardAssignment t
makeNWild n [] = error "Variable out of range"
makeNWild 0 (x:ws) = (Wild:ws)
makeNWild n (x:ws) = x : makeNWild (n-1) ws

-- Set increases, may have new opportunity to compress
makeWildAtN :: (Eq t, Hashable t) => Int -> CompressibleSet t -> CompressibleSet t
makeWildAtN n (carrier, s) = compress (carrier, S.map (\wca -> makeNWild n wca) s)
