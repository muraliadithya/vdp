{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE OverloadedStrings #-}

module JSON where


-- import GHC.Generics
import Data.Hashable
import qualified Data.HashSet as S
import qualified Data.HashMap.Strict as DHS
import qualified Data.List as List
import Data.Maybe (fromJust, maybeToList, catMaybes)
import Control.Monad
import Control.Monad.State
import qualified System.Directory as Sys.Dir
import qualified System.FilePath as Sys.P

import qualified Debug.Trace as D
import Data.Aeson
import Data.Aeson.Types
import qualified Data.Text as T
import qualified Data.Text.Encoding as E
import qualified Data.ByteString.Lazy as B
import Text.Regex.TDFA

import FO
import Fixpoint
import CompressibleSet

data JSONModel = JSONModel { domain :: [String],
                             labels :: [String],
                             interpretations :: DHS.HashMap T.Text [[String]] } deriving (Show)

jsonModelToFOModel :: Int -> JSONModel -> (FO.Model String)
jsonModelToFOModel nId JSONModel{..} =
  let relations = DHS.foldlWithKey (\a k v -> DHS.insert (T.unpack k) (S.fromList v) a)
                  DHS.empty interpretations
      setOfLabels = relations DHS.! "has_label"
      relationsPruned = DHS.delete "has_label" relations
  in Model{ id = nId,
            dom = domain,
            ext = DHS.union relationsPruned (labelRelations setOfLabels) }
  where labelRelations sLabels =
          S.foldl' (\a [obj, lab] ->
                       DHS.alter (\mbV ->
                                   case mbV of
                                     Nothing -> Just $ S.singleton [obj]
                                     Just s -> Just $ S.insert [obj] s) lab a) DHS.empty sLabels


instance FromJSON JSONModel where
  parseJSON = withObject "elements" $ \o -> do
    oElements <- o .: "elements"
    domain <- oElements .: "object"
    labels <- oElements .: "label"
    interpretations <- o .: "interpretation"
    return JSONModel{..}


parseJSONIntoJSONModel :: FilePath -> IO (Maybe JSONModel)
parseJSONIntoJSONModel fp = do
  jsonBytes <- B.readFile fp
  let json = decode jsonBytes :: Maybe Value
  return $ (parseMaybe parseJSON =<< json :: Maybe JSONModel)

parseJSONIntoModel :: Int -> FilePath -> IO (Maybe (FO.Model String))
parseJSONIntoModel nId fp = do
  mbModel <- parseJSONIntoJSONModel fp
  return $ (jsonModelToFOModel nId) <$> mbModel

-- Cannot guarantee models coming from json files will have the same
-- language, so I extract the language from each model, take the
-- union, and then complete each model using this language.
languageOfModel :: (FO.Model a) -> Language
languageOfModel FO.Model{..} =
  let extList = DHS.toList ext
      withArities =
        map (\(name, extension) ->
               -- error if extension is empty!
               let first = head $ S.toList extension
               in (name, length first)) extList
  in withArities

-- Note: if two languages disagree on the arity of a relation, then
-- one arity will be preferred arbitrarily.
unionOfLanguages :: Language -> Language -> Language
unionOfLanguages l1 l2 = List.unionBy (\(name1, arity1) (name2, arity2) -> name1 == name2) l1 l2

-- Complete a given model by adding empty relations to it wherever it
-- lacks an interpretation.
completeModelInLanguage :: Language -> (FO.Model a) -> FO.Model a
completeModelInLanguage l m =
  foldl (\a (name, _) ->
           case DHS.lookup name (ext a) of
             Nothing ->
               let ext' = DHS.insert name S.empty (ext a)
               in FO.Model{FO.id=FO.id a, dom=FO.dom a, ext=ext'}
             Just ext -> a) m l


iAmMonadNovice' :: [IO (Maybe a)] -> IO [a]
iAmMonadNovice' ios = catMaybes <$> sequence ios

iAmMonadNovice :: [IO (Maybe a)] -> IO [a]
iAmMonadNovice [] = return []
iAmMonadNovice (x:xs) = do
  mbA <- x
  case mbA of
    Nothing -> fail "Failed to parse a file"
    Just y  -> do rest <- iAmMonadNovice xs
                  return (y:rest)

-- A type for VDP puzzles. The test field separates the special test from the rest
type NamedModel a = (String, FO.Model a)
data Puzzle a = Puzzle { train :: [NamedModel a]
                       , test  :: ([NamedModel a], [NamedModel a]) }

-- Takes the path to directory containing json files for a vdp puzzle.
parseFile :: FilePath -> IO (Maybe (NamedModel String))
parseFile fp = do mbModel <- parseJSONIntoModel 0 fp
                  return $ (\m -> (fp, m)) <$> mbModel

-- look at filename to separate special test model
partitionTests :: [FilePath] -> ([FilePath], [FilePath])
partitionTests fps =
  -- special path contains an a-z
  let m = (\p -> p =~ ("_[a-z]_" :: String)) :: (String -> String)
  in  List.partition (\p -> not . null $ m p) fps

filterBadFilenames :: [FilePath] -> [FilePath]
filterBadFilenames fps =
  let m = (\p -> not $ p =~ (".~" :: String) :: Bool)
  in filter (\pth -> m pth) fps


vdpParse :: FilePath -> IO (Language, Puzzle String)
vdpParse fp = do
  basePath <- Sys.Dir.getCurrentDirectory
  let puzzleDir = Sys.P.combine basePath fp
      trainDir = Sys.P.combine puzzleDir "train"
      testDir = Sys.P.combine puzzleDir "test"
  json_files_train <- Sys.Dir.listDirectory trainDir
  json_files_test <- Sys.Dir.listDirectory testDir
  let filtered_train = filterBadFilenames json_files_train
      filtered_test  = filterBadFilenames json_files_test
      trainPaths = map (Sys.P.combine trainDir) filtered_train
      testPaths = map (Sys.P.combine testDir) filtered_test
      (tspecial,trest) = partitionTests testPaths
  trainModels <- catMaybes <$> sequence (map parseFile trainPaths)
  testSpecial <- catMaybes <$> sequence (map parseFile tspecial)
  testRest    <- catMaybes <$> sequence (map parseFile trest)
  let languages = map languageOfModel (map snd $ trainModels ++ testRest ++ testSpecial)
      unionLanguage = List.foldl unionOfLanguages [] languages
  -- D.traceIO ("Language: "++(show unionLanguage))
  let completedTrain     = map (\(a,b) -> (a, completeModelInLanguage unionLanguage b)) trainModels
      completedTest      = map (\(a,b) -> (a, completeModelInLanguage unionLanguage b)) testRest
      completedSpecial   = map (\(a,b) -> (a, completeModelInLanguage unionLanguage b)) testSpecial
  return (unionLanguage, Puzzle { train = completedTrain
                                , test = (completedSpecial, completedTest) })


mkPositive :: [FO.Model a] -> [FO.Model a]
mkPositive xs = snd $ List.mapAccumL (\a Model{..} -> let id=a in (a+1,Model{..})) 0 xs

mkNegative :: [FO.Model a] -> [FO.Model a]
mkNegative xs = snd $ List.mapAccumL (\a Model{..} -> let id=a in (a-1,Model{..})) (-1) xs

vdpRun :: (Show a, Eq a, Hashable a) => Language -> ([FO.Model a], [FO.Model a]) -> Combinator a -> [FO.Formula]
vdpRun lang (pos, neg) combinator =
  let ps = mkPositive pos
      ns = mkNegative neg
      literals = allPredicates lang
      start = Search { explored = emptyPool
                     , unexplored = List.sort literals
                     , models = ps++ns
                     , strategy = combinator }
  in fst $ runState explore start

-- First argument is a fraction that specifies how many labels to randomly prune from the language
vdpSolvePuzzleRandom :: Float -> FilePath -> Combinator String -> IO [FO.Formula]
vdpSolvePuzzleRandom frac fp combinator = do
  (lang, Puzzle {..}) <- vdpParse fp
  let langPruned = FO.randomSubLanguage frac lang
      solns = vdpRun langPruned (map snd $ train++(fst test), map snd $ snd test) combinator
  return solns

-- First argument is a list of predicate names so search over. Even
-- for a whitelist of size 2, takes a few seconds
vdpSolvePuzzleWhitelist :: [String] -> FilePath -> Combinator String -> IO [FO.Formula]
vdpSolvePuzzleWhitelist whitelist fp combinator = do
  (lang, Puzzle {..}) <- vdpParse fp
  let langFiltered = FO.filterLanguage lang whitelist
      solns = vdpRun langFiltered (map snd $ train++(fst test), map snd $ snd test) combinator
  return solns

vdpSolvePuzzle :: FilePath -> Combinator String -> IO [FO.Formula]
vdpSolvePuzzle = vdpSolvePuzzleRandom 0

vdpFirstNSeparators :: (Show a, Eq a, Hashable a) => Language -> ([FO.Model a], [FO.Model a]) -> Combinator a -> Int -> [FO.Formula]
vdpFirstNSeparators lang (ps,ns) combinator n = take n $ vdpRun lang (ps,ns) combinator
