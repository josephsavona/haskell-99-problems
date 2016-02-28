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
myLength = length

--   reduce ignoring the values and just adding one to the accumulator
-- myLength = foldr (\_ -> \acc -> acc + 1) 0
--   this reducer is equivalent to `const (+1)`:
-- myLength = foldr (const (+1)) 0

--   or with matching:
-- myLength [] = 0
-- myLength (x:xs) = 1 + myLength xs

--   or map the array to 1s and sum:
-- myLength xs = sum (map (\_ -> 1) xs)
-- myLength = sum . map (\_ -> 1)
