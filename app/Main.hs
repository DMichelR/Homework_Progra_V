module Main (main) where

import Lib (hanoi)

main :: IO ()
main = do
  putStrLn "Example: Hanoi 3 a b c -> move 3 disks from a to c using b as aux rod"
  putStrLn "Number of disks:"
  n <- getLine
  putStrLn "Name of Initial rod:"
  a <- getLine
  putStrLn "Name of Auxiliary rod:"
  b <- getLine
  putStrLn "Name of Final rod:"
  c <- getLine
  print $ hanoi (read n) a b c
