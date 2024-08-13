module Main where

import PreProcessor
import System.Environment

main :: IO ()
main = do
  getArgs >>= print . PreProcessor.preProcess . head
