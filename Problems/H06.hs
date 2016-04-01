module Problems.H06 where

{-# ANN module "HLint: ignore Use string literal" #-}
{-# ANN module "HLint: ignore Use last" #-}

-- |
-- Find out whether a list is a palindrome.
-- A palindrome can be read forward or backward; e.g. (x a m a x).
--
-- >>> isPalindrome [1,2,3]
-- False
-- >>> isPalindrome "madamimadam"
-- True
-- >>> isPalindrome [1,2,4,8,16,8,4,2,1]
-- True

isPalindrome :: (Eq a) => [a] -> Bool
--   pattern matching: check heaad/last and recurse on the middle
-- isPalindrome [] = True
-- isPalindrome [_] = True
-- isPalindrome xs = (head xs) == (last xs) && (isPalindrome (init (tail xs)))

-- isPalindrome [] = True
-- isPalindrome [_] = True
-- isPalindrome xs = (head xs) == (last xs) && (isPalindrome $ init $ tail xs)

--   equals reverse of itself
-- isPalindrome xs = xs == reverse xs

isPalindrome xs =
  let half = (length xs) `div` 2
      front = take half xs
      back = drop half xs
  in front == back
