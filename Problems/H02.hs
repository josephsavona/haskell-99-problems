module Problems.H02 where

{-# ANN module "HLint: ignore Use string literal" #-}
{-# ANN module "HLint: ignore Use last" #-}

-- |
-- "myButLast" - Find the last element of a list.
--
-- >>> myButLast [1,2,3,4]
-- 3
--
-- >>> myButLast ['w','x','y','z']
-- 'y'
--

myButLast :: [a] -> a
-- reverse then first of rest:
-- myButLast xs = head (tail (reverse xs))
myButLast = head . tail . reverse

-- pattern matching:
--   the pattern (x:_:[]) is equiv to (x:_)
-- myButLast (x:_:[]) = x
-- myButLast (x:xs) = myButLast xs

-- OTHER
-- last: last element of a list
-- init: inverse of reset, gets all elements of a list except last
-- xs = last (init x)
-- last . init

-- myButLast [] = error "Empty list"
-- myButLast [x] = error "Too few elements"
-- myButLast (x:xs) =
--   if length xs == 1 then x
--   else myButLast xs
