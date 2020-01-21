module Main where

import           Test.Tasty
import           Test.Tasty.HUnit

--  NOTE  ::  Add Problem(s) here
import           TemplateLib

--  TODO  ::  There ought to be better ways to do this...
--  NOTE  ::  Add the functions here
main :: IO ()
main = do
  defaultMain (testGroup "Leetcode Tests" [sayYoTest, add5Test])

-- NOTE ::  Add tests here
sayYoTest :: TestTree
sayYoTest =
  testCase
    "Testing sayYo"
    (assertEqual "Should say Yo to Friend!" "Yo Friend!" (sayYo "Friend"))

add5Test :: TestTree
add5Test =
  testCase "Testing add5" (assertEqual "Should add 5 to get 10" 10 (add5 5))
