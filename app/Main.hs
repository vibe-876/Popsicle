{-
This file is simply all of the IO functions.
-}
module Main where

import PreProcessor
import System.Environment

main :: IO ()
main = do
  getArgs >>= readFile . head >>= print . PreProcessor.preProcess
