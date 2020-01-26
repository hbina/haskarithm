# haskarithm

## Motivations

Haskell is not supported in Leetcode.
This repository is mostly me trying to learn Haskell by way of solving Leetcode.
Its also meant to illustrate the power and beauty of Haskell and functional programming in general.
I am also using it while I am following Programming With Categories lecture here: http://brendanfong.com/programmingcats.html

## Build (Test, really) Instructions

1. Install `stack`.
The simplest is to follow the instruction here: https://docs.haskellstack.org/en/stable/README/.
Note that these installation does NOT have to be in elevated privelege mode.

Basically, in Linux:

```bash
curl -sSL https://get.haskellstack.org/ | sh
```

In Windows, download the installer.

2. Run 

```bash
stack test
```

## Note When Solving Problems

Whenever one provide a solution to a problem, there are 3 things that one must do to test them.
All of this happen inside test/LeetcodeTest.hs file.
Namely,

1.  Add

```haskell
import TemplateLib
```

2.  Implement the tests at the bottom (There are likely better solution that to put everything here).
3.  Add these tests functions to the test entry point,

```haskell
main :: IO ()
main = do
  defaultMain (testGroup "Leetcode Tests" [sayYoTest, {your_test_here}])
```
