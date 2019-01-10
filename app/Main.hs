module Main where

import           Data.Char
import           Lib
import           System.Environment

main :: IO ()
main = do
    (argv) <- getArgs
    putStrLn . process (getChoice argv) . map toLower . getMeat $ argv
