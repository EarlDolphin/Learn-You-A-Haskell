-- 1. head
-- takes a list and returns its head. The head of a list is basically its first element.
head :: [a] -> a

-- 2. tail
-- takes a list and returns its tail. In other words, it chops off a list's head.
tail :: [a] -> [a]

-- 3. last
-- takes a list and returns its last element.
last :: [a] -> a

-- 4. init
-- takes a list and returns everything except its last element.
init :: [a] -> [a]

-- 5. length
-- takes a list and returns its length, obviously.
length :: [a] -> Int

-- 6. null
-- checks if a list is empty. If it is, it returns True, otherwise it returns False. Use this function instead of xs == [] (if you have a list called xs)
null :: [a] -> Bool

-- 7. reverse
-- reverses a list.
reverse :: [a] -> [a]

-- 8. take
-- takes number and a list. It extracts that many elements from the beginning of the list.
take :: Int -> [a] -> [a]

-- 9. drop
-- drops the number of elements from the beginning of a list.
drop :: Int -> [a] -> [a]

-- 10. maximum
-- takes a list of stuff that can be put in some kind of order and returns the biggest element.
maximum :: Ord a => [a] -> a

-- 11. minimum
-- returns the smallest element of a list of orderables.
minimum :: Ord a => [a] -> a

-- 12. sum
-- takes a list of numbers and returns their sum.
sum :: Num a => [a] -> a

-- 13. product
-- takes a list of numbers and returns their product.
product :: Num a => [a] -> a

-- 14. elem
-- takes a thing and a list of things and tells us if that thing is an element of the list. It's usually called as an infix function because it's easier to read that way.
elem :: a -> [a] -> Bool
