module TemplateLib
  ( add5
  , sayYo
  ) where

add5 :: Int -> Int
add5 x = x + 5

sayYo :: String -> String
sayYo input = "Yo " ++ input ++ "!"
