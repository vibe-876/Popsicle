{-
This file is simply all of the IO functions.
-}
module Main where

import System.Environment
import PreProcessor
import Parser

main :: IO ()
main = getArgs >>= readFile . head >>= putStrLn . PreProcessor.preProcess
