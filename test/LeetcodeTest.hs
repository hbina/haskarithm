module Main where

import           Data.Set         (Set, lookupMax, lookupMin)
import qualified Data.Set         as Set

import           Test.Tasty
import           Test.Tasty.HUnit

import           Problem1
import           Problem1295
import           Problem1342

--  NOTE  ::  Add Problem(s) here
import           TemplateLib

--  TODO  ::  There ought to be better ways to do this...
--  NOTE  ::  Add the functions here
main :: IO ()
main = do
  defaultMain
    (testGroup
       "Leetcode Tests"
       [ testSayYo
       , testAdd5
       , testProblem1295
       , testProblem1
       , testProblem1342_1
       , testProblem1342_2
       , testProblem1342_3
       ])

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

testProblem1 :: TestTree
testProblem1 =
  testCase
    "Testing twoSum 1"
    (assertEqual
       "The indices add up to 9 in [3, 2, 5, 7, 11, 15] should be (0, 1)"
       (Set.fromList [(1, 3), (3, 1)])
       (Set.fromList (twoSum [3, 2, 5, 7, 11, 15] 9)))

testProblem1342_1 :: TestTree
testProblem1342_1 =
  testCase
    "Testing numberOfSteps 1"
    (assertEqual "It should take 6 steps to reduce 14 to 0" 6 (numberOfSteps 14))

testProblem1342_2 :: TestTree
testProblem1342_2 =
  testCase
    "Testing numberOfSteps 2"
    (assertEqual "It should take 4 steps to reduce 8 to 0" 4 (numberOfSteps 8))

testProblem1342_3 :: TestTree
testProblem1342_3 =
  testCase
    "Testing numberOfSteps 3"
    (assertEqual
       "It should take 12 steps to reduce 123 to 0"
       12
       (numberOfSteps 123))
