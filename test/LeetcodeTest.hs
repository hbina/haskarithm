module Main where

import           Test.Tasty
import           Test.Tasty.HUnit

import           Problem1295

--  NOTE  ::  Add Problem(s) here
import           TemplateLib

--  TODO  ::  There ought to be better ways to do this...
--  NOTE  ::  Add the functions here
main :: IO ()
main = do
  defaultMain (testGroup "Leetcode Tests" [testSayYo, testAdd5, testProblem1295])

-- NOTE ::  Add tests here
testSayYo :: TestTree
testSayYo =
  testCase
    "Testing sayYo 1"
    (assertEqual "Should say Yo to Friend!" "Yo Friend!" (sayYo "Friend"))

testAdd5 :: TestTree
testAdd5 =
  testCase "Testing add5 1" (assertEqual "Should add 5 to get 10" 10 (add5 5))

testProblem1295 :: TestTree
testProblem1295 =
  testCase
    "Testing findNumbers 1"
    (assertEqual
       "There are 2 numbers with even digits in [12, 345, 2, 6, 7896]"
       2
       (findNumbers [12, 345, 2, 6, 7896]))
