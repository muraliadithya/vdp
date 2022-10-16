{-# LANGUAGE RecordWildCards #-}

module Main where

import Control.Concurrent
import Control.Concurrent.Async
import Control.Exception
import Control.Monad
import Data.Hashable (Hashable)
import Data.List (mapAccumL, sort)
import FO
import Fixpoint
import JSON
import System.CPUTime
import System.IO
import System.Directory
import System.Environment
import qualified System.FilePath as Sys.P
import System.Timeout
import Text.Printf

-- How many separators to return
numberOfSeparators = 1

timeOutSec = 60 -- (in ) = 100 seconds

timeFactor = 10 ^ 6

combinator :: (Eq t, Hashable t) => Combinator t
-- combinator = twoQuantifierProgressive
combinator = disjunctOrConjunct

-- Run searches with each possible target image in parallel and return
-- the first to find a separator
type Task = IO (String, [Formula])

raceOf :: [Task] -> IO (Maybe (String, [Formula]))
raceOf tasks = loopUntilOne [] tasks

loopUntilOne :: [Async (String, [Formula])] -> [Task] -> IO (Maybe (String, [Formula]))
loopUntilOne asyncs (task : rest) = withAsync task (\a -> loopUntilOne (a : asyncs) rest)
loopUntilOne asyncs [] = loopWith asyncs
  where
    loopWith :: [Async (String, [Formula])] -> IO (Maybe (String, [Formula]))
    loopWith asyncs = (readPolls asyncs) $ pollAll asyncs
    pollAll asyncs = sequence $ map poll asyncs
    readPolls ::
      [Async (String, [Formula])] ->
      IO [Maybe (Either SomeException (String, [Formula]))] ->
      IO (Maybe (String, [Formula]))
    readPolls asyncs io = do
      results <- io
      processResults asyncs False results
    processResults _ _ ((Just (Right (name, fs@(_ : _)))) : _) = return $ Just (name, fs)
    processResults asyncs flag ((Just (Right (name, []))) : rest) = processResults asyncs flag rest
    processResults _ flag ((Just (Left e)) : _) = throw e
    processResults asyncs flag (Nothing : rest) = processResults asyncs True rest
    processResults asyncs True [] = loopWith asyncs
    processResults asyncs False [] = return Nothing

-- Takes directory of puzzle, list of relations to filter out
solvePuzzle :: Handle -> FilePath -> [String] -> IO ()
solvePuzzle h fn filt = do
  (lang, puzzle) <- vdpParse fn
  let langFiltered = case filt of
        [] -> lang
        _ -> filterLanguage lang filt
      tasks = mkTasks langFiltered puzzle combinator
  mbResult <- raceOf tasks
  case mbResult of
    Nothing -> hPutStrLn h $ "No discriminator found for puzzle " ++ fn
    Just (name, fs) -> do
      hPutStrLn h $ "Concept: " ++ (show . head) fs
      hPutStrLn h $ "Candidate Name: " ++ Sys.P.joinPath [fn, "/test/", name]
  where
    mkTasks lang Puzzle {..} c =
      let (special, regular) = test
          trainModels = map snd train
          instances =
            [ (name, m : trainModels, map snd rest)
              | ((name, m), rest) <- allSplits [] (special ++ regular)
            ]
       in map aux instances
      where
        allSplits acc [] = []
        allSplits acc (x : xs) = (x, acc ++ xs) : allSplits (acc ++ [x]) xs
        aux (name, pos, neg) =
          pure $
            ( name,
              vdpFirstNSeparators
                lang
                (pos, neg)
                c
                numberOfSeparators
            )

main :: IO ()
main = do
  args <- getArgs
  case args of
    [] -> putStrLn "First argument must be 0 or 1..."
    ("0" : fn : rest) -> do
      putStrLn $ "Solving a single puzzle " ++ fn ++ " with filter " ++ (show rest)
      start <- getCPUTime
      solvePuzzle stdout fn rest
      end <- getCPUTime
      let diff = fromIntegral (end - start) / (10 ^ 12)
      printf "CPU time: %0.3f sec\n" (diff :: Double)
    ("1" : fn : _) -> do
      putStrLn $ "Solving a suite of puzzles in " ++ fn
      runAllPuzzlesWithTimeout (timeOutSec * timeFactor) fn stdout
    ("2" : fn : o : _) -> do
      putStrLn $ "Solving a suite of puzzles in " ++ fn
      putStrLn $ "Output going to " ++ o
      withFile o AppendMode (runAllPuzzlesWithTimeout (timeOutSec * timeFactor) fn)
    _ -> putStrLn "Bad arguments...exiting"

-- First arg is timeout in microseconds
runAllPuzzlesWithTimeout :: Int -> FilePath -> Handle -> IO ()
runAllPuzzlesWithTimeout t fn h = do
  hSetBuffering h LineBuffering
  puzzleDirs <- listDirectory fn
  withCurrentDirectory fn (solvePuzzlesWithTimeout (sort puzzleDirs))
  where
    solvePuzzlesWithTimeout dirs = do
      forM_
        dirs
        ( \puzzle -> do
            hPutStrLn h $ "\nPuzzle " ++ puzzle
            start <- getCPUTime
            mbData <- timeout t (solvePuzzle h puzzle [])
            case mbData of
              Nothing -> hPrintf h "TIMEOUT: %0.3d sec\n" timeOutSec
              Just _ -> do
                end <- getCPUTime
                let diff = fromIntegral (end - start) / (10 ^ 12)
                -- printf "CPU time: %0.3f sec\n" (diff :: Double)
                return ()
        )
