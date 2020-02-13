module Problem1342
  ( numberOfSteps
  ) where

numberOfSteps :: Int -> Int
numberOfSteps 0 = 0
numberOfSteps x =
  if mod x 2 == 0
    then 1 + numberOfSteps (quot x 2)
    else 1 + numberOfSteps (x - 1)
