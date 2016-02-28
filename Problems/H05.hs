module Problems.H05 where

{-# ANN module "HLint: ignore Use string literal" #-}
{-# ANN module "HLint: ignore Use last" #-}

-- |
-- Reverse a list.
--
-- >>> myReverse "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
--
-- >>> myReverse [1,2,3,4]
-- [4,3,2,1]

myReverse :: [a] -> [a]
myReverse = reverse

--   prelude version:
-- myReverse xs = foldl (\a -> \n -> n:a) [] xs
-- myReverse = foldl (flip (:)) []

--   pattern matching with array concatenation
-- myReverse [] = []
-- myReverse (x:xs) = (myReverse xs) ++ [x]

--   FOLD left/right:
-- Prelude> foldl (\a -> \n -> a++[n]) [] [1,2,3]
-- [1,2,3]
--
-- Prelude> foldl (\a -> \n -> n : a) [] [1,2,3]
-- foldl (\a -> \n -> n : a) [] [1,2,3]
-- let z1 = 1 : []
-- in foldl f [] [2,3]
-- let z1 = 1 : []
--     z2 = 2 : z1
-- in foldl f [] [3]
-- let z1 = 1 : []
--     z2 = 2 : z1
--     z3 = 3 : z2
-- in foldl f [] []
-- let z1 = 1 : []
--     z2 = 2 : z1
--     z3 = 3 : z2
-- in z3 -->
-- [3,2,1]
--
-- Prelude> foldr (\n -> \a -> a ++ [n]) [] [1,2,3]
-- [3,2,1]
--
-- Prelude> foldr (\n -> \a -> n : a) [] [1,2,3]
-- foldr (\n -> \a -> n : a) [] [1,2,3]
-- 1 `f` (foldr f [] [2,3])
-- 1 `f` (2 `f` (foldr f [] [3]))
-- 1 `f` (2 `f` (3 `f` (foldr f [] [])))
-- 1 `f` (2 `f` (3 `f` []))
-- 1 `f` (2 `f` (f 3 []))
-- 1 `f` (2 `f` [3])
-- 1 `f` (f 2 [3])
-- 1 `f` [2,3]
-- [1,2,3]
--
