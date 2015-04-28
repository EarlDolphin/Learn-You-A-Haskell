{-Copyright (c) 2015, EarlDolphin-}
{-All rights reserved.-}

{-Redistribution and use in source and binary forms, with or without-}
{-modification, are permitted provided that the following conditions are met:-}

{-* Redistributions of source code must retain the above copyright notice, this-}
  {-list of conditions and the following disclaimer.-}

{-* Redistributions in binary form must reproduce the above copyright notice,-}
  {-this list of conditions and the following disclaimer in the documentation-}
  {-and/or other materials provided with the distribution.-}

{-* Neither the name of Spec.hs nor the names of its-}
  {-contributors may be used to endorse or promote products derived from-}
  {-this software without specific prior written permission.-}

{-THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"-}
{-AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE-}
{-IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE-}
{-DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE-}
{-FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL-}
{-DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR-}
{-SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER-}
{-CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,-}
{-OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE-}
{-OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.-}

module Spec where

import Test.Hspec
import Control.Exception (evaluate)
import Lizt

main :: IO ()
main = hspec $ do

  describe "head'" $ do
    it "head' [5,4,3,2,1] should return (5 :: Int)" $
      head' [5,4,3,2,1] `shouldBe` (5 :: Int)
    it "head' [] should throw an exception" $
      evaluate (head' []) `shouldThrow` anyException
    it "head' [1] should return (1 :: Int)" $
      head' [1] `shouldBe` (1 :: Int)
    it "head' \"zabracadabra\" should return ('z' :: Char)" $
      head' "zabracadabra" `shouldBe` ('z' :: Char)
    it "head' ([2] ++ [5..]) should return 2" $
      head' ([2] ++ [5..]) `shouldBe` 2
-----------------------------------------------------------------

  describe "tail'" $ do
    it "tail' [5,4,3,2,1] should return ([4,3,2,1] :: [Int])" $
      tail' [5,4,3,2,1] `shouldBe` ([4,3,2,1] :: [Int])
    it "tail' [] should throw an exception" $
      evaluate (tail' []) `shouldThrow` anyException
    it "tail' [1] should return []" $
      tail' [1] `shouldBe` []
    it "tail' \"zabracdabra\" should return (\"abracadabra\" :: [Char])" $
      tail' "zabracadabra" `shouldBe` ("abracadabra" :: [Char])
-----------------------------------------------------------------

  describe "last'" $ do
    it "last' [5,4,3,2,1] should return (1 :: Int)" $
      last' [5,4,3,2,1] `shouldBe` (1 :: Int)
    it "last' [] should throw an exception" $
      evaluate (last' []) `shouldThrow` anyException
    it "last' [1] should return (1 :: Int)" $
      last' [1] `shouldBe` (1 :: Int)
    it "last' \"abracadabraz\" should return ('z' :: Char)" $
      last' "abracadabraz" `shouldBe` ('z' :: Char)
-----------------------------------------------------------------

  describe "init'" $ do
    it "init' [5,4,3,2,1] should return ([5,4,3,2] :: [Int])" $
      init' [5,4,3,2,1] `shouldBe` ([5,4,3,2] :: [Int])
    it "init' [] should throw an error" $
      evaluate (init' []) `shouldThrow` anyException
    it "init \"abracadabraz\" should return \"abracadabra\"" $
      init' "abracadabraz" `shouldBe` "abracadabra"
    it "init' [1] should return []" $
      init' [1] `shouldBe` []
-----------------------------------------------------------------

  describe "length'" $ do
    it "length' [5,4,3,2,1] should return (5 :: Int)" $
      length' [5,4,3,2,1] `shouldBe` (5 :: Int)
    it "length' [5] should return (1 :: Int)" $
      length' [5] `shouldBe` (1 :: Int)
    it "length' [] should return (0 :: Int)" $
      length' [] `shouldBe` (0 :: Int)
    it "init \"abracadabra\" should return (11 :: Int)" $
      length' "abracadabra" `shouldBe` (11 :: Int)
-----------------------------------------------------------------

  describe "null'" $ do
    it "null' [1,2,3] should return False" $
      null' [1,2,3] `shouldBe` False
    it "null' [] should return True" $
      null' [] `shouldBe` True
    it "null' \"abracadabra\" should return False" $
      null' "abracadabra" `shouldBe` False
    it "null' \"\" should return True" $
      null' "" `shouldBe` True
-----------------------------------------------------------------

  describe "reverse'" $ do
    it "reverse' [5,4,3,2,1] should return [1,2,3,4,5]" $
      reverse' [5,4,3,2,1] `shouldBe` [1,2,3,4,5]
    it "reverse' [] should return []" $
      reverse' ([] :: [Int]) `shouldBe` []
    it "reverse' [1] should return [1]" $
      reverse' [1] `shouldBe` [1]
    it "reverse' \"abracadabra\" should return \"arbadacarba\"" $
      reverse' "abracadabra" `shouldBe` "arbadacarba"
    it "reverse' \"a\" should return \"a\"" $
      reverse' "a" `shouldBe` "a"
-----------------------------------------------------------------

  describe "take'" $ do
    it "take' 3 [5,4,3,2,1] should return [5,4,3]" $
      take' 3 [5,4,3,2,1] `shouldBe` [5,4,3]
    it "take' 1 [3,9,3] should return [3]" $
      take' 1 [3,9,3] `shouldBe` [3]
    it "take' 5 [1,2] should return [1,2]" $
      take' 5 [1,2] `shouldBe` [1,2]
    it "take' 0 [6,6,6] should return []" $
      take' 0 [6,6,6] `shouldBe` []
    it "take' 0 ([] :: [Int]) should return []" $
      take' 0 ([] :: [Int]) `shouldBe` []
    it "take' 1 ([] :: [Int]) should return []" $
      take' 1 ([] :: [Int]) `shouldBe` []
    it "take' 5 ([] :: [Int]) should return []" $
      take' 5 ([] :: [Int]) `shouldBe` []
    it "take' (-2) [1,2,3] should return []" $
      take' (-2) [1,2,3] `shouldBe` []
    it "take' (-2) ([] :: [Int]) should return []" $
      take' (-2) ([] :: [Int]) `shouldBe` []
-----------------------------------------------------------------

  describe "drop'" $ do
    it "drop' 3 [8,4,2,1,5,6] should return [1,5,6]" $
      drop' 3 [8,4,2,1,5,6] `shouldBe` [1,5,6]
    it "drop' 0 [1,2,3,4] should return [1,2,3,4]" $
      drop' 0 [1,2,3,4] `shouldBe` [1,2,3,4]
    it "drop' 100 [1,2,3,4] should return []" $
      drop 100 [1,2,3,4] `shouldBe` []
    it "drop' 1 ([] :: [Int]) should return []" $
      drop 1 ([] :: [Int]) `shouldBe` []
    it "drop' (-2) ([] :: [Int]) should return []" $
      drop (-2) ([] :: [Int]) `shouldBe` []
    it "drop' (-2) [1,2,3,4,5] should return [1,2,3,4,5]" $
      drop (-2) [1,2,3,4,5] `shouldBe` [1,2,3,4,5]
-----------------------------------------------------------------

  describe "maximum'" $ do
    it "maximum' [8,4,2,1,5,6] should return 8" $
      maximum' [8,4,2,1,5,6] `shouldBe` 8
    it "maximum' [1,9,2,3,4] should return 9" $
      maximum' [1,9,2,3,4] `shouldBe` 9
    it "maximum' ([] :: [Int]) should raise an exception" $
      evaluate (maximum' ([] :: [Int])) `shouldThrow` anyException
    it "maximum' \"\" should raise an exception" $
      evaluate (maximum' "") `shouldThrow` anyException
    it "maximum' \"abracadabra\" should return 'r'" $
      maximum' "abracadabra" `shouldBe` 'r'
-----------------------------------------------------------------

  describe "minimum'" $ do
    it "minimum' [8,4,2,1,5,6] should return 1" $
      minimum' [8,4,2,1,5,6] `shouldBe` 1
    it "minimum' [1,9,2,3,4] should return 1" $
      minimum' [1,9,2,3,4] `shouldBe` 1
    it "minimum' ([] :: [Int]) should raise an exception" $
      evaluate (minimum' ([] :: [Int])) `shouldThrow` anyException
    it "minimum' \"\" should raise an exception" $
      evaluate (minimum' "") `shouldThrow` anyException
    it "minimum' \"abracadabra\" should return 'a'" $
      minimum' "abracadabra" `shouldBe` 'a'
-----------------------------------------------------------------

  describe "sum'" $ do
    it "sum' [5,2,1,6,3,2,5,7] should return 31" $
      sum' [5,2,1,6,3,2,5,7] `shouldBe` 31
    it "sum' ([] :: [Int]) should return 0" $
      sum' ([] :: [Int]) `shouldBe` 0
    it "sum' [-5] should return -5" $
      sum' [-5] `shouldBe` -5
    it "sum' [-5,-5] should return -10" $
      sum' [-5,-5] `shouldBe` -10
-----------------------------------------------------------------

  describe "product'" $ do
    it "product' [6,2,1,2] should return 24" $
      product' [6,2,1,2] `shouldBe` 24
    it "product' ([] :: [Int]) should return 1" $
      product' ([] :: [Int]) `shouldBe` 1
    it "product' [-5] should return -5" $
      product' [-5] `shouldBe` -5
    it "product' [-5, -5] should return 25" $
      product' [-5,-5] `shouldBe` 25
    it "product [1,2,5,6,7,9,2,0] should return 0" $
      product' [1,2,5,6,7,9,2,0] `shouldBe` 0
-----------------------------------------------------------------

  describe "elem'" $ do
    it "4 `elem'` [3,4,5,6] should return True" $
      4 `elem'` [3,4,5,6] `shouldBe` True
    it "10 `elem'` [3,4,5,6] should return False" $
      10 `elem'` [3,4,5,6] `shouldBe` False
    it "5 `elem'` [] should return False" $
      5 `elem'` [] `shouldBe` False
    it "'x' `elem'` \"\" should return False" $
      'x' `elem'` "" `shouldBe` False
    it "'x' `elem'` \"abrax\" should return True" $
      'x' `elem'` "abrax" `shouldBe` True
-----------------------------------------------------------------
