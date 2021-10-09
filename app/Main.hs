module Main where

import Control.Monad
import Lib

main :: IO ()
main = do
  fizzbuzz

fizzbuzz = do
  forM_ [1 .. 100] $ \x -> do
    putStrLn $ prtFizzBuzz x

isFizz :: Int -> Bool
isFizz x = mod x 3 == 0

isBuzz :: Int -> Bool
isBuzz x = mod x 5 == 0

isFizzBuzz :: Int -> Bool
isFizzBuzz x = isFizz x && isBuzz x

prtFizzBuzz :: Int -> [Char]
prtFizzBuzz x = do
  if isFizzBuzz x
    then "FuzzBuzz"
    else
      if isFizz x
        then "Fizz"
        else if isBuzz x then "Buzz" else show x