module Problems.H01 where

{-# ANN module "HLint: ignore Use string literal" #-}
{-# ANN module "HLint: ignore Use last" #-}

-- |
-- "myLast" - Find the last element of a list.
--
-- >>> myLast [1,2,3,4]
-- 4
--
-- >>> myLast ['x','y','z']
-- 'z'
--
-- prop> myLast [a] == last [a]

myLast :: [a] -> a
myLast = head . reverse

-- head/reverse:
--   reverse the list and get the first item
-- myLast xs = head (reverse xs)
-- myLast = head . reverse

-- foldr1:
--   fold/reduce the list and always return the second item; on the last step
--   this will be the last item in the List
-- myLast xs = foldr1 (\acc -> \nxt -> nxt) xs
-- >>> const 3 1
-- 3
-- >>> const id 3 1
-- 1
-- create a constant function that accepts an arg (3), discards it, and returns
-- the id function. apply 1 to id and get 1. this is a convenient way to the
-- second argument in the reducer function:
-- myLast = foldr1 (const id)
