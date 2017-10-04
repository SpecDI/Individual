-- this is a one line comment

{-
  this is a multiline comment
-}

--import some modules that contain function
import Data.List
import System.IO

-- Datatypes
{-
  Int : has a limit
  Integer: has no limit
  Float, Double
  Bool
-}
maxInt = maxBound :: Int -- display the maximum value of an int

--decalre a variable
constVar :: Int
constVar = 5

constBool :: Bool
constBool = True


--math functions
--sum
sumOfNums :: Integer
sumOfNums = sum [1..1000]

--math operations are normal
mathOp :: Int
mathOp = 5 * 4
--modulus
mod1 :: Int
mod2 :: Int
mod1 = mod 5 4 --prefix
mod2 = 5 `mod` 4 --infix

--negative numbers
negativeNum = 5 + (-4)

-- :t <function> gives description of function

--square roots (only take floats) -> use fromIntegral to convert
num9 :: Int
num9 = 9
sqrtof9 = sqrt (fromIntegral num9)

--pi
piVal = pi

--square values
sqare9 :: Double
sqare9 = 9 ** 2

{-
  AND : &&
  OR : ||
  Not: not()
-}

--Lists : Singly List and only add to head
primeNumbers = [3, 5, 7, 11]
morePrimess = primeNumbers ++ [13, 17, 19, 23, 29]
-- Concatenation is done with '++'!!!

favNums = 2 : 7 : 21 : 66 :[]

--can create multidimensianal lists
multList = [[3, 5, 7], [11, 13, 17]]
morePrimes2 = 2 : morePrimess

--size of list: length
lenPrime  = length morePrimes2

--reverse a list: reverse
revPrime = reverse morePrimes2

--check if empty: null
isEmpty = null morePrimes2

--access elements from the list: '!!' operator
secondPrime = morePrimes2 !! 1

--last value: last
lastPrime = last morePrimes2

--select all but the last value: init
allButLast = init morePrimes2

--first n values: take n list
first3 = take 3 morePrimes2

--delete first n values: drop 3 list
removesPrimes = drop 3 morePrimes2

--check if values is in list: <element> `elem` <list>
is7InList = 7 `elem` morePrimes2

--maximum minimum
maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2

--sum is thorugh: sum
--product is thorugh: product
newList = [2, 3, 5]
prod = product newList

--generate list from a to b: [a..b]
zeroToTen = [0..10]

--define createion rule to create custom lists
evenList = [2,4..20]

--char lists
letterList = ['A', 'C'..'Z']

--generate infinte lists
infinitPow10 = [10, 20..]

--repeat values: take <nr_of_rep> (repeat <value>)
many2s = take 10 (repeat 2)

--replicate to generate multiple copies of the same value
many3s = replicate 10 3

--cycle values 
cyclelist = take 10 (cycle [1..5])

--multiple values from a list by a constant
-- <constatn> = [<tempVar> * nr | <tempVar> <- <list>, <clause condition>]
listTimes2 = [x * 2 | x <- [1..10], x * 2 < 18]
divBy9and13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

--create sorted list
initalList = [1, 8, 5, 3, 5, 8, 2]
sortedList = sort initalList

--add the elemnts of two list one by one
sumOfLists = zipWith (+) [1, 2, 3, 4, 5] [6, 7, 8, 9, 10]

--filter elements: filter (<condition>) <list>
listBiggerThan5 = filter (>5) [1..10]

--sort of while loop
evensUpTo20 = takeWhile (<=20) [2, 4..]

--multiply the elements of a list: foldl/foldr (<operation>) <number> <list>
multOfList = foldl (*) 2 [1, 2, 3, 4]
sumOfelements = foldr (+) 3 [1, 2, 3, 4]
divOfelements = foldr (/) 1 [1, 2]

--raise a lists elements to a power
pow3list = [3 ^ n | n <- [1..5]]

 