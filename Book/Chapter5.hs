{-
  CAESAR'S CIPHER
  The first part of the solution will be the algorithm that creates the cipher
  The second part will represent code that will break the cipher
  The third part will be composed of Chapter exercises
-}
--First Part
import Data.Char

--create two functions to convert chars to ints and vice versa
let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr(ord 'a' + n)

--define a function that will shift a char to the corresponding shift factor
shift :: Char -> Int -> Char
shift c n 
  | isLower c = int2let(((let2int c) + n ) `mod` 26)
  | otherwise = c

--loop thorugh all the characters of a string and shift them to the corresponding factor
encode :: String -> Int -> String
encode xs factor = [shift c factor| c <- xs]


--Part 2
--To be finished


--Part 3

--Exercise 1
sumSquares n = sum [x ^ 2 | x <- [1..n]]

--Exercise 2
grid :: Int -> Int -> [(Int, Int)]
grid x y = [(a, b) | a <- [0..x], b <- [0..y]]

--Exercise 3
square :: Int -> [(Int, Int)]
square x = [(a, b) | a <- [0..x], b <- [0..x], a /= b]

--Exercise 4
replicate_ctm :: Int -> a -> [a]
replicate_ctm n x = [x | _ <- [1..n]]

--Exercise 5
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x ^ 2 + y ^ 2 == z ^ 2 ]

--Exercise 6
factors :: Int -> [Int]
factors n = [x | x <- [1..n-1], n `mod` x ==0]
perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (factors x) == x]

--Exercise 7
generator = concat [x | x <- [[1, 2], [3, 4]]]