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


-- function define
squares :: Integer-> Integer
squares n = n*n


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