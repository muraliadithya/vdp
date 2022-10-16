{-# LANGUAGE RecordWildCards #-}

-- Is laziness increased by having combinators return as values also
-- their witness triples?

-- Key observation about implementing search combinators: exploring
-- different parts of a grammar that has choices *must* be done
-- independently of the work done for other choices. Otherwise the
-- pool grows very large early on, and exploring small formulas in a
-- neglected fragment of the grammar will not start for a long time.

module Fixpoint where

import CompressibleSet hiding (expand)
import Control.Applicative hiding ((<|>))
import Control.Monad
import Control.Monad.State
import qualified Data.HashMap.Strict as DHS
import qualified Data.HashSet as S
import Data.Hashable
import Data.List hiding (all, some)
import Data.Maybe
import Data.Ord (comparing)
import Debug.Trace
import FO

type Owner = Int

data Info = Info
  { relativeUtility :: Float,
    ratio :: Float,
    deltaRatioLeft :: Float,
    -- Next field is not used for quantifiers and literals
    deltaRatioRight :: Maybe Float
  }

-- Don't need to compare Infos
instance Eq Info where
  _ == _ = True

instance Hashable Info where
  hashWithSalt n Info {..} =
    hashWithSalt n relativeUtility
      + hashWithSalt n ratio
      + hashWithSalt n deltaRatioLeft
      + hashWithSalt n deltaRatioRight

type Triple t = ((Formula, Info), Owner, CompressibleSet t)

positive :: Owner -> Bool
positive = (>= 0)

negative = not . positive

swap (a, b) = (b, a)

first (a, b, c) = a

second (a, b, c) = b

third (a, b, c) = c

emptyPool :: Pool t
emptyPool = S.empty

addLiteralToPool :: (Eq t, Hashable t) => Pool t -> [Model t] -> Formula -> Pool t
addLiteralToPool pool models f =
  let mbPackage = vetAtomic f models
   in case mbPackage of
        Nothing -> pool
        Just (_, _, triples) -> S.union (S.fromList triples) pool

filterPool :: (Triple t -> Bool) -> Pool t -> Pool t
filterPool pred pool = S.filter pred pool

-- Returns a singleton if the pool is well formed
lookupTOnF_O :: Formula -> Owner -> S.HashSet (Triple t) -> [Triple t]
lookupTOnF_O f o s = S.toList $ S.filter (\((f', _), o', _) -> f == f' && o == o') s

lookupTOnF :: Pool t -> Formula -> [Triple t]
lookupTOnF s f = S.toList $ S.filter (\((f', _), _, _) -> f == f') s

lookupTOnO :: Owner -> S.HashSet (Triple t) -> [Triple t]
lookupTOnO o s = S.toList $ S.filter (\(_, o', _) -> o == o') s

-- Is the formula already present in some triple in the pool?
isPresent :: Pool t -> Formula -> Bool
isPresent p f1 = anyInPool (\((f, score), o, c) -> f == f1) p

anyInPool :: (Triple t -> Bool) -> Pool t -> Bool
anyInPool pred p = not . S.null $ S.filter pred p

-- Non-lazy
formulas :: S.HashSet (Triple t) -> [Formula]
formulas s = S.toList $ S.map (\((f, score), o, c) -> f) s

-- Non-lazy
formulaPairs :: S.HashSet (Triple t) -> [(Formula, Formula)]
formulaPairs s = let fs = formulas s in [(f1, f2) | f1 <- fs, f2 <- fs, f1 <= f2]

sentences :: S.HashSet (Triple t) -> [Formula]
sentences s = filter (\f -> sentence f) $ formulas s

literals :: Pool t -> [Formula]
literals pool = onlyAtomic . formulas $ pool

unaries :: Pool t -> [Formula]
unaries pool = onlyUnary . formulas $ pool

binaries :: Pool t -> [Formula]
binaries pool = onlyBinary . formulas $ pool

negatives :: Pool t -> [Formula]
negatives pool = onlyNegativeLit . formulas $ pool

positives :: Pool t -> [Formula]
positives pool = onlyPositive . formulas $ pool

positiveUnary :: Pool t -> [Formula]
positiveUnary pool = onlyPositive . unaries $ pool

negativeUnary :: Pool t -> [Formula]
negativeUnary pool = onlyNegativeLit . unaries $ pool

owners :: S.HashSet (Triple t) -> [Owner]
owners pool = S.toList $ S.map (\(f, o, c) -> o) pool

positiveOwners :: S.HashSet (Triple t) -> [Owner]
positiveOwners pool = filter (>= 0) $ owners pool

negativeOwners :: S.HashSet (Triple t) -> [Owner]
negativeOwners pool = filter (< 0) $ owners pool

-- Truth of formula for owner if the pool can witness it
satisfies :: S.HashSet (Triple t) -> Formula -> Owner -> Maybe Bool
satisfies pool f o =
  case lookupTOnF_O f o pool of
    [] -> Nothing
    (f', o', c') : _ -> Just $ nonEmpty c'

-- Note on correctness of this function. Every model will have some
-- triple for every predicate. So no model can be missing in this
-- check.
separator :: S.HashSet (Triple t) -> Formula -> Bool
separator pool f =
  let ps = positiveOwners pool
      ns = negativeOwners pool
      satisfiesPs =
        and $
          map
            ( \p -> case satisfies pool f p of
                Nothing -> False
                Just b -> b
            )
            ps
      satisfiesNs =
        and $
          map
            ( \p -> case satisfies pool f p of
                Nothing -> False
                Just b -> not b
            )
            ns
   in sentence f && satisfiesPs && satisfiesNs

separators :: S.HashSet (Triple t) -> [Formula]
separators pool =
  let sents = sentences pool
   in filter (separator pool) sents

-- Makes ordered formula pairs and removes duplicates
canonicalFormulaPairs :: [Formula] -> [Formula] -> [(Formula, Formula)]
canonicalFormulaPairs fs gs =
  let pairs = [(f, g) | f <- fs, g <- gs]
      pairsOrd = map (\(a, b) -> if (a <= b) then (a, b) else (b, a)) pairs
   in nub pairsOrd

------------------------------------------
type Pool t = S.HashSet (Triple t)

-- N.b. performance is very sensitive to this parameter with larger
-- grammars that make lots of choices
chunkSize :: Int
chunkSize = 100

maxDepth :: Int
maxDepth = 3

data Search t = Search
  { explored :: Pool t,
    unexplored :: [Formula],
    models :: [Model t],
    strategy :: Combinator t
  }

-- Return value is for separators
type AlgState t = State (Search t) [Formula]

-- Union a new pool into the search state
addPool :: (Eq t, Hashable t) => Pool t -> Search t -> Search t
addPool pool Search {..} =
  Search
    { explored = (S.union pool explored),
      unexplored = unexplored,
      models = models,
      strategy = strategy
    }

literalsToPool :: (Eq t, Hashable t) => [Formula] -> [Model t] -> Pool t
literalsToPool fs models = foldl (\acc f -> addLiteralToPool acc models f) emptyPool fs

-- Expand the pool with new literals
expand :: (Eq t, Hashable t) => Search t -> Search t
expand Search {..} =
  let (next, rest) = splitAt chunkSize unexplored
      nextPool =
        -- trace ("Expanding with: "++(show next)) $
        S.union (literalsToPool next models) explored
   in Search
        { explored = nextPool,
          unexplored = rest,
          models = models,
          strategy = strategy
        }

-- Run strategy on the current pool, try to solve, recurse
explore :: (Eq t, Hashable t) => AlgState t
explore = do
  Search {..} <- get
  let (fs, pool) = runState strategy explored
  modify $ addPool pool
  maybeSolve fs

-- Either confirm a separator from the list or move a new chunk of literals into the pool
maybeSolve :: (Eq t, Hashable t) => [Formula] -> AlgState t
maybeSolve fs = do
  Search {..} <- get
  let solutions = filter (separator explored) fs
  case solutions of
    [] ->
      if null unexplored
        then return solutions
        else withStateT expand explore
    _ -> return solutions

type Combinator t = State (Pool t) [Formula]

-- FOLLOWING SUPPORTS GRAMMARS
(<|>) :: (Eq t, Hashable t) => Combinator t -> Combinator t -> Combinator t
c1 <|> c2 = do
  pool <- get
  let (f1s, pool1) = runState c1 pool
  let (f2s, pool2) = runState c2 pool
  modify (S.union $ S.unions [pool1, pool2])
  -- put (S.union pool1 pool2)
  return . nub $ interleave f1s f2s
  where
    -- return $ interleave f1s f2s
    interleave [] ys = ys
    interleave xs [] = xs
    interleave (x : xs) (y : ys) = x : y : (interleave xs ys)

-- Short-circuiting version of <|>, which stops when it finds a separator
(<||>) :: (Eq t, Hashable t) => Combinator t -> Combinator t -> Combinator t
c1 <||> c2 = do
  pool <- get
  let (f1s, pool1) = runState c1 pool
  if not . null $ filter (separator pool1) f1s
    then do
      modify (S.union pool1)
      return f1s
    else do
      let (f2s, pool2) = runState c2 pool
      modify (S.union $ S.unions [pool1, pool2])
      return . nub $ f1s ++ f2s

quantification :: (Eq t, Hashable t) => [Formula] -> Combinator t
quantification fs = existential fs <|> universal fs

quantify :: (Eq t, Hashable t) => Combinator t -> Combinator t
quantify c = do
  fs <- c
  quantification fs

close :: (Eq t, Hashable t) => Combinator t -> Combinator t
close c = nextQ <||> c
  where
    nextQ = do
      fs <- c -- force evaluation
      case fs of
        [] -> return []
        _ -> close (quantification fs)

solve :: (Eq t, Hashable t) => Combinator t -> Combinator t
solve c = do
  fs <- c
  pool <- get
  return $ filter (separator pool) fs

solveOrDeepen :: (Eq t, Hashable t) => Int -> Combinator t -> Combinator t
solveOrDeepen cap c = solve c <|> nextDepth cap
  where
    nextDepth 0 = pure []
    nextDepth n
      | n > 0 =
        solveOrDeepen
          (cap - 1)
          ( close c
              <|> (c /\ c)
              <|> (c \/ c)
          )

base :: (Eq t, Hashable t) => Combinator t
base = do
  pool <- get
  return (formulas pool)

nConjunction :: (Eq t, Hashable t) => Int -> Combinator t
nConjunction 0 = base
nConjunction n | n > 0 = nConjunction (n -1) /\ base

uptoNConjunction :: (Eq t, Hashable t) => Int -> Combinator t
uptoNConjunction 0 = base
uptoNConjunction n | n > 0 = uptoNConjunction (n -1) <|> nConjunction n

uptoNConjunctionPrenex :: (Eq t, Hashable t) => Int -> Combinator t
uptoNConjunctionPrenex 0 = close base
uptoNConjunctionPrenex n | n > 0 = uptoNConjunctionPrenex (n -1) <|> (close $ nConjunction n)

-- BASE COMBINATORS
conjunction :: (Eq t, Hashable t) => [Formula] -> [Formula] -> Combinator t
conjunction ff gg = do
  pool <- get
  let sorted = sortByGain $ vetConjunctions pool ff gg
      fAndgs = map second sorted
      toBeAdded = map (S.fromList . third) sorted
  modify (S.union $ S.unions toBeAdded)
  return fAndgs

vetConjunctions :: (Eq t, Hashable t) => Pool t -> [Formula] -> [Formula] -> [(Float, Formula, [Triple t])]
vetConjunctions pool ff gg = catMaybes [vetNonAtomic pool (And f1 f2) | (f1, f2) <- canonicalFormulaPairs ff gg]

disjunction :: (Eq t, Hashable t) => [Formula] -> [Formula] -> Combinator t
disjunction ff gg = do
  pool <- get
  let sorted = sortByGain $ vetDisjunctions pool ff gg
      fOrgs = map second sorted
      toBeAdded = map (S.fromList . third) sorted
  modify (S.union $ S.unions toBeAdded)
  return fOrgs

vetDisjunctions :: (Eq t, Hashable t) => Pool t -> [Formula] -> [Formula] -> [(Float, Formula, [Triple t])]
vetDisjunctions pool ff gg = catMaybes [vetNonAtomic pool (Or f1 f2) | (f1, f2) <- canonicalFormulaPairs ff gg]

universal :: (Eq t, Hashable t) => [Formula] -> Combinator t
universal ff = do
  pool <- get
  let sorted = sortByGain $ vetUniversals pool ff
      allFs = map second sorted
      toBeAdded = map (S.fromList . third) sorted
  modify (S.union $ S.unions toBeAdded)
  return allFs

-- Ensure ff is a set
vetUniversals :: (Eq t, Hashable t) => Pool t -> [Formula] -> [(Float, Formula, [Triple t])]
vetUniversals pool ff = catMaybes [vetNonAtomic pool (All (v, f)) | f <- ff, v <- maybeToList $ mbLeastFreeVar f]

existential :: (Eq t, Hashable t) => [Formula] -> Combinator t
existential ff = do
  pool <- get
  let sorted = sortByGain $ vetExistentials pool ff
      existFs = map second sorted
      toBeAdded = map (S.fromList . third) sorted
  modify (S.union $ S.unions toBeAdded)
  return existFs

vetExistentials :: (Eq t, Hashable t) => Pool t -> [Formula] -> [(Float, Formula, [Triple t])]
vetExistentials pool ff = catMaybes [vetNonAtomic pool (Exists (v, f)) | f <- ff, v <- maybeToList $ mbLeastFreeVar f]

-- (>>=) for StateT would cause unhappy increase in pool
-- (/\) :: (Eq t, Hashable t) => Combinator t -> Combinator t -> Combinator t
-- c1 /\ c2 = do fs1 <- c1
--               fs2 <- c2
--               conjunction fs1 fs2

(/\) :: (Eq t, Hashable t) => Combinator t -> Combinator t -> Combinator t
c1 /\ c2 = do
  pool <- get
  let (fs1, pool1) = runState c1 pool
  let (fs2, pool2) = runState c2 pool
  modify (S.union $ S.unions [pool1, pool2])
  conjunction fs1 fs2

(\/) :: (Eq t, Hashable t) => Combinator t -> Combinator t -> Combinator t
c1 \/ c2 = do
  pool <- get
  let (fs1, pool1) = runState c1 pool
  let (fs2, pool2) = runState c2 pool
  modify (S.union $ S.unions [pool1, pool2])
  -- put (S.union pool1 pool2)
  disjunction fs1 fs2

all :: (Eq t, Hashable t) => Combinator t -> Combinator t
all c = do
  fs <- c
  universal fs

some :: (Eq t, Hashable t) => Combinator t -> Combinator t
some c = do
  fs <- c
  existential fs

-- DERIVED combinators for use in guarded fragment
allExists :: (Eq t, Hashable t) => Combinator t -> Combinator t
allExists = Fixpoint.all . Fixpoint.some

literal :: (Eq t, Hashable t) => Combinator t
literal = do
  pool <- get
  return (literals pool)

unary :: (Eq t, Hashable t) => Combinator t
unary = do
  pool <- get
  pure (unaries pool)

negUnary :: (Eq t, Hashable t) => Combinator t
negUnary = do
  pool <- get
  pure (negativeUnary pool)

posUnary :: (Eq t, Hashable t) => Combinator t
posUnary = do
  pool <- get
  pure (positiveUnary pool)

binary :: (Eq t, Hashable t) => Combinator t
binary = do
  pool <- get
  pure (binaries $ pool)

posBinary :: (Eq t, Hashable t) => Combinator t
posBinary = do
  pool <- get
  pure (onlyPositive . binaries $ pool)

negBinary :: (Eq t, Hashable t) => Combinator t
negBinary = do
  pool <- get
  pure (onlyNegativeLit . binaries $ pool)

labelImpl :: (Eq t, Hashable t) => Combinator t -> Combinator t
labelImpl phi = negUnary \/ phi

allLabelImpl :: (Eq t, Hashable t) => Combinator t -> Combinator t
allLabelImpl phi = Fixpoint.all $ labelImpl phi

labelAnd :: (Eq t, Hashable t) => Combinator t -> Combinator t
labelAnd phi = posUnary /\ phi

someLabelAnd :: (Eq t, Hashable t) => Combinator t -> Combinator t
someLabelAnd phi = Fixpoint.some $ labelAnd phi

-- SMALL GUARDED FRAGMENT
guardedSmall :: (Eq t, Hashable t) => Combinator t -> Combinator t
guardedSmall phi = allLabelImpl $ someLabelAnd phi

guardedSmall' :: (Eq t, Hashable t) => Combinator t -> Combinator t
guardedSmall' phi = someLabelAnd $ allLabelImpl phi

smallGuardedFragmentNonProgressive :: (Eq t, Hashable t) => Combinator t
smallGuardedFragmentNonProgressive = guardedSmall literal <|> guardedSmall' literal

-- TWO-QUANTIFIER, ONE LABEL (similar to guarded fragment, but more
-- likely to make progress)
existsForall :: (Eq t, Hashable t) => Combinator t
existsForall = someLabelAnd $ Fixpoint.all binary

forallExists :: (Eq t, Hashable t) => Combinator t
forallExists = allLabelImpl $ Fixpoint.some binary

existsExists :: (Eq t, Hashable t) => Combinator t
existsExists = someLabelAnd $ Fixpoint.some binary

forallForall :: (Eq t, Hashable t) => Combinator t
forallForall = allLabelImpl $ Fixpoint.all binary

twoQuantifierProgressive :: (Eq t, Hashable t) => Combinator t
twoQuantifierProgressive =
  forallExists
    <|> existsExists
    <|> existsForall
    <|> forallForall

-- ICML
disjunctOrConjunct :: (Eq t, Hashable t) => Combinator t
disjunctOrConjunct = close (base \/ base) <||> close (base /\ base)

-- close (negUnary \/ posBinary) <||> close (posUnary /\ posBinary)
-- close (literal /\ (literal \/ literal))

-- FULL GUARDED FRAGMENT (non progressive)
fullGuardedFragmentNonProgressive :: (Eq t, Hashable t) => Combinator t -> Combinator t
fullGuardedFragmentNonProgressive c = guardOrWiden maxDepth c

guardOrWiden :: (Eq t, Hashable t) => Int -> Combinator t -> Combinator t
guardOrWiden cap c = solve c <|> nextDepth cap
  where
    nextDepth 0 = pure []
    nextDepth n
      | n > 0 =
        guardOrWiden
          (cap - 1)
          ( guardedCloseNonProgressive c
              <|> (c /\ c)
          )

guardedCloseNonProgressive :: (Eq t, Hashable t) => Combinator t -> Combinator t
guardedCloseNonProgressive c = nextQ <|> c
  where
    nextQ = do
      fs <- c
      case fs of
        [] -> return []
        _ ->
          guardedCloseNonProgressive
            ( someLabelAnd (pure fs)
                <|> allLabelImpl (pure fs)
            )

------------------------------------------

sortByGain :: [(Float, Formula, [Triple t])] -> [(Float, Formula, [Triple t])]
sortByGain xs = sortBy (flip $ comparing (\(a, b, c) -> a)) xs

-- sortByGain xs = xs -- does gain achieve anything useful?

vetAtomic :: (Eq t, Hashable t) => Formula -> [Model t] -> Maybe (Float, Formula, [Triple t])
vetAtomic f models =
  let triples = buildLiteral f models
      gainf = gain f triples
   in case _useProgress of
        False -> Just (gainf, f, triples)
        True ->
          if progress f triples
            then Just (gainf, f, triples)
            else Nothing

-- Returns a score for f w.r.t. pool and returns its triples.
vetNonAtomic :: (Eq t, Hashable t) => Pool t -> Formula -> Maybe (Float, Formula, [Triple t])
vetNonAtomic pool f =
  let old = lookupTOnF pool f
   in if null old
        then
          let triples = buildFormula pool f
              gainf = gain f triples
           in case _useProgress of
                False -> Just (gainf, f, triples)
                True ->
                  if progress f triples
                    then Just (gainf, f, triples)
                    else Nothing
        else Just (gain f old, f, old) -- recompute gain for simplicity

-- Progress
_useProgress = True

progress :: Formula -> [Triple t] -> Bool
-- Some positive with some assigment and some negative without some assignment
progress (Pos s vs) triples = literalProgress triples
progress (Neg s vs) triples = literalProgress triples
-- Some positive with some assigment and some negatives (possibly
-- identical) that got strictly smaller on each of the sides
progress (And f1 f2) triples = conjunctionProgress triples
-- Some positives (possibly identical) that got strictly larger on
-- each of the sides and some negative without some assignment
progress (Or f1 f2) triples = disjunctionProgress triples
-- Some positive with some assignment and some negative that gets
-- strictly smaller
progress (All (v, f)) triples = universalProgress triples
-- Some positive got strictly larger and some negative without some
-- assignment
progress (Exists (v, f)) triples = existentialProgress triples

literalProgress :: [Triple t] -> Bool
literalProgress triples = condition1 triples && condition2 triples
  where
    condition1 ts = any (\((f, Info {..}), o, c) -> positive o && ratio > 0) ts
    condition2 ts = any (\((f, Info {..}), o, c) -> negative o && ratio < 1) ts

conjunctionProgress :: [Triple t] -> Bool
conjunctionProgress triples = condition1 triples && condition2 triples && condition3 triples
  where
    condition1 ts = any (\((f, Info {..}), o, c) -> positive o && ratio > 0) ts
    condition2 ts = any (\((f, Info {..}), o, c) -> negative o && deltaRatioLeft < 0) ts
    condition3 ts = any (\((f, Info {..}), o, c) -> negative o && fromJust deltaRatioRight < 0) ts

disjunctionProgress :: [Triple t] -> Bool
disjunctionProgress triples = condition1 triples && condition2 triples && condition3 triples
  where
    condition1 ts = any (\((f, Info {..}), o, c) -> negative o && ratio < 1) ts
    condition2 ts = any (\((f, Info {..}), o, c) -> positive o && deltaRatioLeft > 0) ts
    condition3 ts = any (\((f, Info {..}), o, c) -> positive o && fromJust deltaRatioRight > 0) ts

universalProgress :: [Triple t] -> Bool
universalProgress triples = condition1 triples && condition2 triples
  where
    condition1 ts = any (\((f, Info {..}), o, c) -> positive o && ratio > 0) ts
    condition2 ts = any (\((f, Info {..}), o, c) -> negative o && deltaRatioLeft < 0) ts

existentialProgress :: [Triple t] -> Bool
existentialProgress triples = condition1 triples && condition2 triples
  where
    condition1 ts = any (\((f, Info {..}), o, c) -> negative o && ratio < 1) ts
    condition2 ts = any (\((f, Info {..}), o, c) -> positive o && deltaRatioLeft > 0) ts

----- Heuristic -----
data Heuristic = RATIOGAIN | INFOGAIN | NONE

heuristic = RATIOGAIN

-- Take a formula and its triples and calculate gain
gain :: Formula -> [Triple t] -> Float
gain f triples = case heuristic of
  INFOGAIN -> infoGain f triples
  RATIOGAIN -> deltaRatios triples
  NONE -> 0

-- INFOGAIN
infoGain (Pos n vs) triples = literalGain triples
infoGain (Neg n vs) triples = literalGain triples
infoGain (And f1 f2) triples = conjunctionGain triples
infoGain (Or f1 f2) triples = disjunctionGain triples
infoGain (All (v, f)) triples = universalGain triples
infoGain (Exists (v, f)) triples = existentialGain triples

currRatio ((f, Info {..}), o, c) = ratio

prevLeftRatio ((f, Info {..}), o, c) = ratio - deltaRatioLeft

prevRightRatio ((f, Info {..}), o, c) = ratio - fromJust deltaRatioRight -- Contract: f is /\ or \/

-- Reconstruct old information using ratio and deltaRatios
prevInfoLeft :: [Triple t] -> Float
prevInfoLeft triples =
  let (pTriples, nTriples) = partition (\((_, _), o, c) -> positive o) triples
      prevPosPurityLeft = (sum $ map prevLeftRatio pTriples)
      prevNegPurityLeft = (sum $ map prevLeftRatio nTriples)
   in - (logBase 2 (prevPosPurityLeft / prevPosPurityLeft + prevNegPurityLeft))

prevInfoRight :: [Triple t] -> Float
prevInfoRight triples =
  let (pTriples, nTriples) = partition (\((_, _), o, c) -> positive o) triples
      prevPosPurityRight = (sum $ map prevRightRatio pTriples)
      prevNegPurityRight = (sum $ map prevRightRatio nTriples)
   in - (logBase 2 (prevPosPurityRight / prevPosPurityRight + prevNegPurityRight))

currInfo triples =
  let (pTriples, nTriples) = partition (\((_, _), o, c) -> positive o) triples
      sumsPos = sum $ map currRatio pTriples
      sumsNeg = sum $ map currRatio nTriples
   in - (logBase 2 (sumsPos / sumsPos + sumsNeg))

literalGain triples = avgStartPosRatio * (prevInfo - current)
  where
    (pTriples, nTriples) = partition (\((_, _), o, c) -> positive o) triples
    (nPos, nNeg) = (length pTriples, length nTriples)
    avgStartPosRatio = 1 -- view True as the initial formula
    prevInfo =
      - ( logBase
            2
            ( fromIntegral nPos
                / (fromIntegral $ nPos + nNeg)
            )
        )
    sumsPos = sum $ map currRatio pTriples
    sumsNeg = sum $ map currRatio nTriples
    current = - (logBase 2 (sumsPos / sumsPos + sumsNeg))

conjunctionGain triples = max leftGain rightGain
  where
    (pTriples, nTriples) = partition (\((_, _), o, c) -> positive o) triples
    (nPos, nNeg) = (length pTriples, length nTriples)
    avgStartPosRatioLeft = (sum $ map prevLeftRatio pTriples) / fromIntegral nPos
    avgStartPosRatioRight = (sum $ map prevRightRatio pTriples) / fromIntegral nPos
    current = currInfo triples
    leftGain = avgStartPosRatioLeft * (prevInfoLeft triples - current)
    rightGain = avgStartPosRatioRight * (prevInfoRight triples - current)

disjunctionGain triples = max leftGain rightGain
  where
    (pTriples, nTriples) = partition (\((_, _), o, c) -> positive o) triples
    (nPos, nNeg) = (length pTriples, length nTriples)
    avgEndPosRatio = (sum $ map currRatio pTriples) / fromIntegral nPos
    current = currInfo triples
    leftGain = avgEndPosRatio * (prevInfoLeft triples - current)
    rightGain = avgEndPosRatio * (prevInfoRight triples - current)

universalGain triples = avgStartPosRatio * (prevInfoLeft triples - current)
  where
    current = currInfo triples
    (pTriples, nTriples) = partition (\((_, _), o, c) -> positive o) triples
    (nPos, nNeg) = (length pTriples, length nTriples)
    avgStartPosRatio = (sum $ map prevLeftRatio pTriples) / fromIntegral nPos

existentialGain triples = avgEndPosRatio * (prevInfoLeft triples - current)
  where
    current = currInfo triples
    (pTriples, nTriples) = partition (\((_, _), o, c) -> positive o) triples
    (nPos, nNeg) = (length pTriples, length nTriples)
    avgEndPosRatio = (sum $ map currRatio pTriples) / fromIntegral nPos

-- RATIOGAIN
deltaRatios :: [Triple t] -> Float
deltaRatios triples = foldl localGain 0 triples
  where
    localGain acc ((Pos s vs, Info {..}), o, c) =
      if positive o then deltaRatioLeft else (- deltaRatioLeft)
    localGain acc ((Neg s vs, Info {..}), o, c) =
      if positive o then deltaRatioLeft else (- deltaRatioLeft)
    localGain acc ((And f1 f2, Info {..}), o, c) =
      if positive o
        then min deltaRatioLeft (fromJust deltaRatioRight)
        else max (- deltaRatioLeft) (- (fromJust deltaRatioRight))
    localGain acc ((Or f1 f2, Info {..}), o, c) =
      if positive o
        then max deltaRatioLeft (fromJust deltaRatioRight)
        else min (- deltaRatioLeft) (- (fromJust deltaRatioRight))
    localGain acc ((All (v, f), Info {..}), o, c) =
      if positive o then deltaRatioLeft else (- deltaRatioLeft)
    localGain acc ((Exists (v, f), Info {..}), o, c) =
      if positive o then deltaRatioLeft else (- deltaRatioLeft)

-- Returns a list of pairs (one per model) of triple and gain
buildFormula :: (Eq t, Hashable t) => Pool t -> Formula -> [Triple t]
buildFormula pool f =
  case f of
    And f1 f2 -> buildConjunction pool f1 f2
    Or f1 f2 -> buildDisjunction pool f1 f2
    All (v, f') -> buildUniversal pool v f'
    Exists (v, f') -> buildExistential pool v f'
    _ -> error "Cannot build a triple from a literal without a model" -- buildLiteral pool f

buildConjunction :: (Eq t, Hashable t) => Pool t -> Formula -> Formula -> [Triple t]
buildConjunction pool f1 f2 =
  let (triples1, triples2) = (lookupTOnF pool f1, lookupTOnF pool f2)
      byOwner = [(l, r) | l@(_, ol, _) <- triples1, r@(_, or, _) <- triples2, ol == or]
   in map (\(l, r) -> buildConjunctionO pool l r) byOwner

buildConjunctionO :: (Eq t, Hashable t) => Pool t -> Triple t -> Triple t -> Triple t
buildConjunctionO pool l@((f1, info1), o1, c1) r@((f2, info2), o2, c2)
  | o1 == o2 =
    let compressed = compressedIntersection c1 c2
        card = cardinality compressed
        retained =
          (fromIntegral card)
            / (fromIntegral $ cardinality (compressedUnion c1 c2))
        relutil = if positive o1 then retained else 1 - retained
        r = fractionCovered FO.numberOfVariables compressed
        deltaLeft = r - (ratio info1)
        deltaRight = r - (ratio info2)
        info =
          Info
            { relativeUtility = relutil,
              ratio = r,
              deltaRatioLeft = deltaLeft,
              deltaRatioRight = Just deltaRight
            }
     in ((And f1 f2, info), o1, compressed)

buildDisjunction :: (Eq t, Hashable t) => Pool t -> Formula -> Formula -> [Triple t]
buildDisjunction pool f1 f2 =
  let (triples1, triples2) = (lookupTOnF pool f1, lookupTOnF pool f2)
      byOwner = [(l, r) | l@(_, ol, _) <- triples1, r@(_, or, _) <- triples2, ol == or]
   in map (\(l, r) -> buildDisjunctionO pool l r) byOwner

buildDisjunctionO :: (Eq t, Hashable t) => Pool t -> Triple t -> Triple t -> Triple t
buildDisjunctionO pool l@((f1, info1), o1, c1) r@((f2, info2), o2, c2)
  | o1 == o2 =
    let compressed = compressedUnion c1 c2
        r = fractionCovered FO.numberOfVariables compressed
        captured = r
        relutil = if positive o1 then captured else 1 - captured
        deltaLeft = r - (ratio info1)
        deltaRight = r - (ratio info2)
        info =
          Info
            { relativeUtility = relutil,
              ratio = r,
              deltaRatioLeft = deltaLeft,
              deltaRatioRight = Just deltaRight
            }
     in ((Or f1 f2, info), o1, compressed)

buildUniversal :: (Eq t, Hashable t) => Pool t -> Var -> Formula -> [Triple t]
buildUniversal pool v f1 =
  let triples1 = lookupTOnF pool f1
   in map (\t -> buildUniversalO pool v t) triples1

buildUniversalO :: (Eq t, Hashable t) => Pool t -> Var -> Triple t -> Triple t
buildUniversalO pool v@(Var n) t@((f, info1), o, c) =
  let compressed = compressedAllFilter n c
      card = cardinality compressed
      cardPrior = cardinality c
      retained = (fromIntegral card) / (fromIntegral $ cardPrior)
      relutil = if positive o then retained else 1 - retained
      r = fractionCovered FO.numberOfVariables compressed
      deltaLeft = r - (ratio info1)
      info =
        Info
          { relativeUtility = relutil,
            ratio = r,
            deltaRatioLeft = deltaLeft,
            deltaRatioRight = Nothing
          }
   in ((All (v, f), info), o, compressed)

buildExistential :: (Eq t, Hashable t) => Pool t -> Var -> Formula -> [Triple t]
buildExistential pool v f1 =
  let triples1 = lookupTOnF pool f1
   in map (\t -> buildExistentialO pool v t) triples1

buildExistentialO :: (Eq t, Hashable t) => Pool t -> Var -> Triple t -> Triple t
buildExistentialO pool v@(Var n) t@((f, info1), o, c) =
  let compressed = makeWildAtN n c
      r = fractionCovered FO.numberOfVariables compressed
      captured = r
      relutil = if positive o then captured else 1 - captured
      deltaLeft = r - (ratio info1)
      info =
        Info
          { relativeUtility = relutil,
            ratio = r,
            deltaRatioLeft = deltaLeft,
            deltaRatioRight = Nothing
          }
   in ((Exists (v, f), info), o, compressed)

buildLiteral :: (Eq t, Hashable t) => Formula -> [Model t] -> [Triple t]
buildLiteral f models = map (buildLiteralO f) models

buildLiteralO :: (Eq t, Hashable t) => Formula -> Model t -> Triple t
buildLiteralO lit model =
  let (f, o, c) = formulaToTriple model lit
   in case f of
        Pos _ _ -> adorn f o c
        Neg _ _ -> adorn f o c
        _ -> error "Not a literal"
  where
    adorn f o c =
      let r = fractionCovered FO.numberOfVariables c
          retained = r
          relutil = if positive o then retained else 1 - retained
          deltaLeft = r - 1 -- Interpretation: initial formula is True
          info =
            Info
              { relativeUtility = relutil,
                ratio = r,
                deltaRatioLeft = deltaLeft,
                deltaRatioRight = Nothing
              }
       in ((f, info), o, c)
