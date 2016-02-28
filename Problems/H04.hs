module Problems.H04 where

{-# ANN module "HLint: ignore Use string literal" #-}
{-# ANN module "HLint: ignore Use last" #-}

-- |
-- Find the number of elements of a list.
--
-- >>> myLength ['a','b','c']
-- 3
--
-- >>> myLength "haskell"
-- 7
--
myLength :: [a] -> Int
-- myLength = length

myLength = foldr (\nxt -> \acc -> acc + 1) 0
