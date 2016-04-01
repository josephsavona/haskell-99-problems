module Problems.H07 where

{-# ANN module "HLint: ignore Use string literal" #-}
{-# ANN module "HLint: ignore Use last" #-}

-- |
-- Flatten a nested list structure.
--
-- Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
--
-- Example:
--
-- >>> flatten (Elem 5)
-- [5]
-- >>> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
-- [1,2,3,4,5]
-- >>> flatten (List [])
-- []

data NestedList a = Elem a | List [NestedList a]

flatten :: (NestedList a) => a -> [a]
flatten (Elem a) = a
flatten (List as) = foldr (\acc -> \nxt -> (acc:(flatten nxt))) [] as
