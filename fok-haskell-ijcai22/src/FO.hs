{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE OverloadedStrings #-}

module FO where

import Data.List
import Data.Hashable
import qualified Data.HashSet as S
import qualified Data.HashMap.Strict as DHS
import System.Random (randomR, mkStdGen)

import CompressibleSet


numberOfVariables :: Int
numberOfVariables = 2

type Language = [(String, Int)]

-- Keeps all predicates with arity > 2. Goal is to lose worthless
-- labels (unary predicates) by randomly dropping frac of them.
randomSubLanguage :: Float -> Language -> Language
randomSubLanguage frac l | frac >= 0 && frac <= 1 =
  let (unary, rest) = partition (\(_, arity) -> arity <= 1) l
  in  rest ++ (untilHalfDropped unary)
  where untilHalfDropped xs =
          let c      = length xs
              cutoff = ceiling $ (fromIntegral c) * frac
          in  aux (mkStdGen 0) c cutoff xs []
        aux g c cutoff xs toRemove =
          if length toRemove >= cutoff then remove xs toRemove
            else let (idx, g') = randomR (0, c-1) g
                 in aux g' c cutoff xs $ nub (idx:toRemove)
        remove xx toRemove = snd . unzip $ filter (\(idx, elt) -> not . elem idx $ toRemove) (withIndices xx)
        withIndices xx     = zip (take (length xx) [0..]) xx
randomSubLanguage _ _ | otherwise = error "Sublanguage fraction makes no sense"

filterLanguage :: Language -> [String] -> Language
filterLanguage lang whitelist = filter (\(name,_) -> elem name whitelist) lang


--- VARIABLES ---

newtype Var = Var Int deriving (Eq, Ord)
instance Show Var where
  show (Var n) = "x"++(show n)
instance Enum Var where
  toEnum n = Var n
  fromEnum (Var n) = n
instance Bounded Var where
  minBound = Var 0
  maxBound = Var (numberOfVariables - 1)
instance Hashable Var where
  hashWithSalt n (Var m) = n + m

vars :: [Var]
vars = [minBound..maxBound]


--- FORMULAS ---

data Formula = Pos String [Var]
          | Neg String [Var]
          | And Formula Formula
          | Or Formula Formula
          | All (Var, Formula)
          | Exists (Var, Formula) deriving (Eq, Ord)
instance Show Formula where
  show (Pos name args) = name++"("++(intercalate ", " $ map show args)++")"
  show (Neg name args) = "not("++name++"("++(intercalate ", " $ map show args)++"))"
  show (And f1 f2) = "("++(show f1)++")"++" /\\ "++"("++(show f2)++")"
  show (Or f1 f2) = "("++(show f1)++")"++" \\/ "++"("++(show f2)++")"
  show (All (v,f)) = "Forall "++(show v)++". "++"("++(show f)++")"
  show (Exists (v,f)) = "Exists "++(show v)++". "++"("++(show f)++")"
instance Hashable Formula where
  hashWithSalt n (Pos name args) = (hash name) + (hash args) + n
  hashWithSalt n (Neg name args) = 2*((hash name) + (hash args) + n)
  hashWithSalt n (And f1 f2) = 3*((hash f1) + (hash f2) + n)
  hashWithSalt n (Or f1 f2) = 4*((hash f1) + (hash f2) + n)
  hashWithSalt n (All (x, f)) = 5*((hash f) + (hash x) + n)
  hashWithSalt n (Exists (x, f)) = 6*((hash f) + (hash x) + n)


freeVars :: Formula -> S.HashSet Var
freeVars (Pos _ vs) = S.fromList vs
freeVars (Neg _ vs) = S.fromList vs
freeVars (And f1 f2) = S.union (freeVars f1) (freeVars f2)
freeVars (Or f1 f2) = S.union (freeVars f1) (freeVars f2)
freeVars (All (v, f)) = S.delete v (freeVars f)
freeVars (Exists (v, f)) = S.delete v (freeVars f)

mbLeastFreeVar :: Formula -> Maybe Var
mbLeastFreeVar f = fmap fst $ uncons . sort . S.toList $ freeVars f

sentence :: Formula -> Bool
sentence f = S.null $ freeVars f


--- MODELS ---

data Model t = Model { id  :: Int,
                       dom :: [t],
                       ext :: DHS.HashMap String (S.HashSet [t])}
instance (Show t) => Show (Model t) where
  show Model{..} =
    "Model{id = "++(show id)++",\n"++
    "dom = "++(show dom)++",\n"++
    "ext = "++(show ext)++"}\n"


getBinding :: Assignment t -> [Var] -> [t]
getBinding _ [] = []
getBinding a xs = map (\v -> lookupVar a v) xs
  where lookupVar (a1:ar) (Var n) | n > 0 = lookupVar ar (Var (n-1))
                                  | otherwise = a1
        lookupVar [] (Var n) = error "Variable is too large for assignment"


entails :: (Eq t, Hashable t) => Model t -> Assignment t -> Formula -> Bool
entails Model{..} assgn (Pos name args) =
  S.member (getBinding assgn args) $ ext DHS.! name
entails Model{..} assgn (Neg name args) =
  not . S.member (getBinding assgn args) $ ext DHS.! name
entails m assgn (And f1 f2) = entails m assgn f1 && entails m assgn f2
entails m assgn (Or f1 f2) =  entails m assgn f1 || entails m assgn f2
entails m@Model{..} assgn (All (Var n, f)) =
  and $ map (entails' m f) $ allAssgnsAtPosition dom assgn n
  where allAssgnsAtPosition domain a n =
          let (prefix, (s:ss)) = splitAt n a
          in [prefix ++ (d:ss) | d <- domain]
entails m@Model{..} assgn (Exists (Var n, f)) =
  or $ map (entails' m f) $ allAssgnsAtPosition dom assgn n
  where allAssgnsAtPosition domain a n =
          let (prefix, (s:ss)) = splitAt n a
          in [prefix ++ (d:ss) | d <- domain]
entails' m f a = entails m a f


--- AUXILIARY ---

allLengthNListsOverX :: Int -> [t] -> [[t]]
allLengthNListsOverX n base | n > 0 =
  head . drop (n-1) $ iterate (>>= \xs -> [d:xs | d <- base]) (map pure base)

allAssignments :: (Eq t, Hashable t) => [t] -> AssignmentSet t
allAssignments domain = S.fromList $ allLengthNListsOverX numberOfVariables domain

allLengthArityVariables :: Int -> [[Var]]
allLengthArityVariables arity = allLengthNListsOverX arity vars

allPredicates :: Language -> [Formula]
allPredicates lang = concatMap populate lang
  where populate (name, arity) =
          let p = Pos name
              n = Neg name
              args = allLengthArityVariables arity
          in map p args ++ map n args


-- Consider calling this with a sublanguage of the language of the models
modelToTriples :: (Eq t, Hashable t) => Language -> Model t -> S.HashSet (Formula, Int, CompressibleSet t)
modelToTriples lang m@Model{..} =
  let allPreds   = allPredicates lang
      triples    = map (formulaToTriple m) allPreds
  in  S.fromList triples

-- One model and one formula to an old-school triple
formulaToTriple :: (Eq t, Hashable t) => Model t -> Formula -> (Formula, Int, CompressibleSet t)
formulaToTriple m@Model{..} f =
  let yes = S.filter (entails' m f) (allAssignments dom)
      cp  = compress (dom, S.fromList $ map (\xs -> map Elt xs) (S.toList yes))
  in (f, id, cp)


-- Filters predicates and orders

isConjunction :: Formula -> Bool
isConjunction (And _ _ ) = True
isConjunction _          = False

isDisjunction :: Formula -> Bool
isDisjunction (Or _ _) = True
isDisjunction _        = False

isAtomic :: Formula -> Bool
isAtomic (Pos _ _) = True
isAtomic (Neg _ _) = True
isAtomic _         = False

isUnary :: Formula -> Bool
isUnary (Pos _ vs) = length vs == 1
isUnary (Neg _ vs) = length vs == 1
isUnary _          = False

isBinary :: Formula -> Bool
isBinary (Pos _ vs) = length vs == 2
isBinary (Neg _ vs) = length vs == 2
isBinary _          = False

isNegative :: Formula -> Bool
isNegative (Neg _ _) = True
isNegative _         = False

isPositive :: Formula -> Bool
isPositive (Pos _ _) = True
isPositive _         = False

isAll :: Formula -> Bool
isAll (All (_,_)) = True
isAll _           = False

isExists :: Formula -> Bool
isExists (Exists (_,_)) = True
isExists _              = False

onlyAtomic :: [Formula] -> [Formula]
onlyAtomic fs = filter isAtomic fs

onlyUnary :: [Formula] -> [Formula]
onlyUnary fs = filter isUnary fs

onlyBinary :: [Formula] -> [Formula]
onlyBinary fs = filter isBinary fs

onlyNegativeLit :: [Formula] -> [Formula]
onlyNegativeLit fs = filter isNegative fs

onlyPositiveLit :: [Formula] -> [Formula]
onlyPositiveLit fs = filter isPositive fs

onlyPositive :: [Formula] -> [Formula]
onlyPositive fs = filter (not . isNegative) fs

containsPred :: String -> Formula -> Bool
containsPred name (Pos n _) = n == name
containsPred name (Neg n _) = n == name
containsPred name (And f1 f2) = containsPred name f1 || containsPred name f2
containsPred name (Or f1 f2) =  containsPred name f1 || containsPred name f2
containsPred name (All (Var _, f)) = containsPred name f
containsPred name (Exists (Var _, f)) = containsPred name f
