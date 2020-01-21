module Problem1295
  ( findNumbers
  ) where

findNumbers :: [Int] -> Int
findNumbers = length . filter even . map (length . show)
