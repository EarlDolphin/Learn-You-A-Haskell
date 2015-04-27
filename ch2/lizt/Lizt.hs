{-Copyright (c) 2015, EarlDolphin-}
{-All rights reserved.-}

{-Redistribution and use in source and binary forms, with or without-}
{-modification, are permitted provided that the following conditions are met:-}

{-* Redistributions of source code must retain the above copyright notice, this-}
  {-list of conditions and the following disclaimer.-}

{-* Redistributions in binary form must reproduce the above copyright notice,-}
  {-this list of conditions and the following disclaimer in the documentation-}
  {-and/or other materials provided with the distribution.-}

{-* Neither the name of Lizt.hs nor the names of its-}
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

module Lizt where

-- 1. head
-- takes a list and returns its head. The head of a list is basically its first element.
head' :: [a] -> a
head' [] = error "cannot call head\' on an empty list"
head' (x:xs) = x

-- 2. tail
-- takes a list and returns its tail. In other words, it chops off a list's head.
tail' :: [a] -> [a]
tail' [] = error "cannot call tail\' on an empty list"
tail' (x:xs) = xs

{--- 3. last-}
{--- takes a list and returns its last element.-}
{-last :: [a] -> a-}

{--- 4. init-}
{--- takes a list and returns everything except its last element.-}
{-init :: [a] -> [a]-}

{--- 5. length-}
{--- takes a list and returns its length, obviously.-}
{-length :: [a] -> Int-}

{--- 6. null-}
{--- checks if a list is empty. If it is, it returns True, otherwise it returns False. Use this function instead of xs == [] (if you have a list called xs)-}
{-null :: [a] -> Bool-}

{--- 7. reverse-}
{--- reverses a list.-}
{-reverse :: [a] -> [a]-}

{--- 8. take-}
{--- takes number and a list. It extracts that many elements from the beginning of the list.-}
{-take :: Int -> [a] -> [a]-}

{--- 9. drop-}
{--- drops the number of elements from the beginning of a list.-}
{-drop :: Int -> [a] -> [a]-}

{--- 10. maximum-}
{--- takes a list of stuff that can be put in some kind of order and returns the biggest element.-}
{-maximum :: Ord a => [a] -> a-}

{--- 11. minimum-}
{--- returns the smallest element of a list of orderables.-}
{-minimum :: Ord a => [a] -> a-}

{--- 12. sum-}
{--- takes a list of numbers and returns their sum.-}
{-sum :: Num a => [a] -> a-}

{--- 13. product-}
{--- takes a list of numbers and returns their product.-}
{-product :: Num a => [a] -> a-}

{--- 14. elem-}
{--- takes a thing and a list of things and tells us if that thing is an element of the list. It's usually called as an infix function because it's easier to read that way.-}
{-elem :: a -> [a] -> Bool-}
