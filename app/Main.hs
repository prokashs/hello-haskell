module Main where

import MathUtils
import TextUtils
-- import
import qualified Data.List as L
import BinaryTree
import BinarySearchTree

-- import from Haskell Algos boook
import Chapter1
import Chapter3
import Chapter4

import Sorting


-- Helper: Convert Haskell Integer to Isabelle Nat
toNat :: Integer -> Sorting.Nat
toNat 0 = Sorting.Zero_nat
toNat n | n > 0 = Sorting.Suc (toNat (n - 1))
toNat _ = error "Nat cannot be negative"

-- Helper: Convert Isabelle Nat back to Haskell Integer
fromNat :: Sorting.Nat -> Integer
fromNat Sorting.Zero_nat = 0
fromNat (Sorting.Suc n) = 1 + fromNat n

-- Your existing square function
squares :: Integer -> Integer
squares n = n * n

-- 2. Your Isabelle Test Function (Defined at the far left margin)
testIsabelleSort :: IO ()
testIsabelleSort = do
    let unsorted = [5, 3, 9, 1, 7]
    let asNat = map toNat unsorted
    let sortedResult = Sorting.sort asNat          -- Call the sort function
    let isItSorted = Sorting.sorted sortedResult  -- Call the check function

-- Conversion for printing
    let finalResult = map fromNat sortedResult

    putStrLn "--- Isabelle Sort Result ---"
    putStr "Sorted List: "
    print finalResult

    putStr "Is it actually sorted? "
    print isItSorted
    putStrLn "--- Isabelle Sorting Test ---"
   --- print (map fromNat sortedResult)
    putStrLn $ "Isabelle verified it is sorted: " ++ show isItSorted

 --end of function define for tests


main :: IO ()
-- follow the space alignment
main = do
  putStrLn (shout "hello IdeaJ Haskell ")
  putStrLn " add  a, b"
  print (add 2 3)
  putStrLn " mult x, y "
  print (mult 5  7 )
  print(L.sort [3,1,2])
  -- L.nub  [1,1,2,2,3]
  -- BTree a
  putStrLn "SamplTree:"
  print sampleTree

  putStrLn "\nIs this a BST?"
  print (isBST sampleTree)

  putStrLn ("test define square function:")


  print (squares 9 )

  -- JUST CALL THE FUNCTION HERE (Do not define it again)
  testIsabelleSort