module Problem1
  ( twoSum
  ) where

twoSum :: [Int] -> Int -> [(Int, Int)]
twoSum xs target =
  [ (i, j)
  | (i, v) <- zip [0 ..] xs
  , (j, w) <- zip [1 ..] (tail xs)
  , v + w == target
  , i /= j
  ]
