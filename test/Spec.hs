module Main where

import Test.Hspec
import Lib (greet)

main :: IO ()
main = hspec $
  describe "greet" $
    it "greets a name" $
      greet "World" `shouldBe` "Hello, World!"
