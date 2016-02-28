module Problems.H03 where

{-# ANN module "HLint: ignore Use string literal" #-}
{-# ANN module "HLint: ignore Use last" #-}

-- |
-- Find the K'th element of a list. The first element in the list is number 1.
--
-- >>> elementAt [1,2,3,4] 2
-- 2
--
-- >>> elementAt "haskell" 5
-- 'e'
--

elementAt :: [a] -> Int -> a
elementAt xs n = xs !! (n - 1)

-- elementAt [] _ = error "index out of bounds"
-- elementAt (x:_) 1 = x
-- elementAt (x:xs) n = elementAt xs (n - 1)

-- elementAt xs n =
--   if n == 1 then head xs
--   else elementAt (tail xs) (n - 1)
