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

  describe "head\'" $ do
    it "head\' [5,4,3,2,1] should return (5 :: Int)" $
      head' [5,4,3,2,1] `shouldBe` (5 :: Int)
    it "head\' [] should throw an exception" $
      evaluate (head' []) `shouldThrow` anyException
    it "head\' [1] should return (1 :: Int)" $
      head' [1] `shouldBe` (1 :: Int)
    it "head\' \"zabracadabra\" should return (\'z\' :: Char)" $
      head' "zabracadabra" `shouldBe` ('z' :: Char)
    it "head\' ([2] ++ [5..]) should return 2" $
      head' ([2] ++ [5..]) `shouldBe` 2
-----------------------------------------------------------------

  describe "tail\'" $ do
    it "tail\' [5,4,3,2,1] should return ([4,3,2,1] :: [Int])" $
      tail' [5,4,3,2,1] `shouldBe` ([4,3,2,1] :: [Int])
    it "tail\' [] should throw an exception" $ do
      evaluate (tail' []) `shouldThrow` anyException
    it "tail\' [1] should return []" $
      tail' [1] `shouldBe` []
    it "tail\' \"zabracdabra\" should return (\"abracadabra\" :: [Char])" $
      tail' "zabracadabra" `shouldBe` ("abracadabra" :: [Char])
-----------------------------------------------------------------
{-
 -3. last
 --------
 -takes a list and returns its last element.
 -
 -ghci> last [5,4,3,2,1]
 -1 
 -=======
 -}

{-
 -4. init
 --------
 -takes a list and returns everything except its last element.
 -
 -ghci> init [5,4,3,2,1]
 -[5,4,3,2] 
 -=======
 -}

 {-5. length
 --------
 -takes a list and returns its length, obviously.
 -
 -ghci> length [5,4,3,2,1]
 -5
 -=======
 -}

 {-6. null
 --------
 -checks if a list is empty. If it is, it returns True, otherwise it returns False. Use this function instead of xs == [] (if you have a list called xs)
 -
 -ghci> null [1,2,3]
 -False
 -ghci> null []
 -True
 -=======
 -}

 {-7. reverse
 --------
 -reverses a list.
 -
 -ghci> reverse [5,4,3,2,1]
 -[1,2,3,4,5]
 -=======
 -}

 {-8. take
 --------
 -takes number and a list. It extracts that many elements from the beginning of the list.
 -
 -ghci> take 3 [5,4,3,2,1]
 -[5,4,3]
 -ghci> take 1 [3,9,3]
 -[3]
 -ghci> take 5 [1,2]
 -[1,2]
 -ghci> take 0 [6,6,6]
 -[]
 -=======
 -}

 {-9. drop
 --------
 -drops the number of elements from the beginning of a list.
 -
 -ghci> drop 3 [8,4,2,1,5,6]
 -[1,5,6]
 -ghci> drop 0 [1,2,3,4]
 -[1,2,3,4]
 -ghci> drop 100 [1,2,3,4]
 -[] 
 -=======
 -}

 {-10. maximum
 --------
 -takes a list of stuff that can be put in some kind of order and returns the biggest element.
 -=======
 -}

 {-11. minimum
 --------
 -returns the smallest element of a list of orderables.
 -
 -ghci> minimum [8,4,2,1,5,6]
 -1
 -ghci> maximum [1,9,2,3,4]
 -9 
 -=======
 -}

 {-12. sum
 --------
 -takes a list of numbers and returns their sum.
 -
 -ghci> sum [5,2,1,6,3,2,5,7]
 -31
 -=======
 -}

 {-13. product
 --------
 -takes a list of numbers and returns their product.
 -
 -ghci> product [6,2,1,2]
 -24
 -ghci> product [1,2,5,6,7,9,2,0]
 -0
 -=======
 -}

 {-14. elem
 --------
 -takes a thing and a list of things and tells us if that thing is an element of the list. It's usually called as an infix function because it's easier to read that way.
 -
 -ghci> 4 `elem` [3,4,5,6]
 -True
 -ghci> 10 `elem` [3,4,5,6]
 -False
 -=======
 --- 2. tail
 --------
 -takes a list and returns its tail. In other words, it chops off a list's head.
 -
 -ghci> tail [5,4,3,2,1]
 -[4,3,2,1] 
 -=======
 -}
