module Nat(My_nat(..), add) where

data My_nat = Zero | Succ My_nat

add :: My_nat -> My_nat -> My_nat
add Zero n = n
add (Succ m) n = Succ (add m n)