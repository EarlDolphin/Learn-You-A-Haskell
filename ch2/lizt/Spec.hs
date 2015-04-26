module Spec where

import Test.Hspec
import Lizt

main :: IO ()
main = hspec $ do
  describe "head\'" $ do
    it "head' [] should throw an exception" $
      head' [] `shouldThrow` anyException

    it "head' [5,4,3,2,1] should return (5 :: Int)" $
      head' [5,4,3,2,1] `shouldBe` (5 :: Int)

    it "head' [1] should return (1 :: Int)" $
      head' [1] `shouldBe` (1 :: Int)

    it "head' \"zabracadabra\" should return (\'z\' :: Char)" $
      head' "zabracadabra" `shouldBe` ('z' :: Char)

    it "head\' ([2] ++ [5..]) should return 2" $
      head' ([2] ++ [5..]) `shouldBe` 2
