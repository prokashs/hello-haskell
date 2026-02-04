
module Permute where

-- Permutations.hs
-- A program to generate all permutations of a list in Haskell

-- Function to insert an element into every possible position in a list
insertEverywhere :: a -> [a] -> [[a]]
insertEverywhere x []     = [[x]]
insertEverywhere x (y:ys) = (x:y:ys) : map (y:) (insertEverywhere x ys)

-- Main permutation function
permute :: [a] -> [[a]]
permute []     = [[]]       -- Base case: one permutation of an empty list
permute (x:xs) = concatMap (insertEverywhere x) (permute xs)

-- Optional: Remove duplicates if the input list has repeated elements
uniquePermutations :: (Eq a) => [a] -> [[a]]
uniquePermutations = removeDuplicates . permute
  where
    removeDuplicates []     = []
    removeDuplicates (p:ps) = p : removeDuplicates (filter (/= p) ps)

{-
-- Main function for testing
main :: IO ()
main = do
    putStrLn "Enter a list (e.g., [1,2,3]):"
    input <- getLine
    let list = read input :: [Int]  -- Change type if needed
    putStrLn "\nAll permutations:"
    print (permute list)
    putStrLn "\nUnique permutations (if duplicates exist):"
    print (uniquePermutations list)
How It Works
insertEverywhere
Inserts an element into every possible position in a list.

permute
Recursively generates permutations by inserting the head element into all positions of permutations of the tail.

uniquePermutations
Filters out duplicate permutations when the input list contains repeated elements.

Example Run
Bash

Copy code
$ runhaskell Permutations.hs
Enter a list (e.g., [1,2,3]):
[1,2,3]

All permutations:
[[1,2,3],[2,1,3],[2,3,1],[1,3,2],[3,1,2],[3,2,1]]

Unique permutations (if duplicates exist):
[[1,2,3],[2,1,3],[2,3,1],[1,3,2],[3,1,2],[3,2,1]]
If you want, I can also show you a more concise one-liner version using Haskell’s list comprehensions for permutations.
Do you want me to provide that shorter version?

-}