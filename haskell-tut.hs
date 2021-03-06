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

--operations on multiple lists
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]

{-
  !!TUPLES
-}

randTuple = (1, "Random Tuple")

--tuple pairs
bobSmith = ("Bob Smith", 52)
--retrive values from tuples
bobsName :: String
bobsName = fst bobSmith
bobsAge :: Int
bobsAge = snd bobSmith

--convert values from lists into tuple pairs
names = ["Bob", "Mary", "Tom"]
address = ["123 Main", "234 North", "567 South"]
namesAndAddress = zip names address

{-
  FUNCTIOS !!
-}

--we can define functions to run if we start with a main function
--functions cannot begin with an upper case letter
main = do
  putStr "Whats your name: "
  name <- getLine
  putStrLn ("Hello " ++ name)

--this is a type declaration -> optional
addMe :: Int -> Int -> Int
--functioname param1 param2 = operations (return value)
addMe x y = x + y
--without declaration
multMe x y = x * y

--we can add tuples
addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

whatAge :: Int -> String
whatAge 16 = "You can drive"

{-
  RECURISON
-}
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n-1)

--condition guards /basic if statements
isOdd :: Int -> Bool
isOdd n
  | n`mod` 2 == 0 = False
  | otherwise = True
--without guards
isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

--more guards
whatGrade :: Int -> String
whatGrade age 
  | (age>=5) && (age<=6) = "Kindergarten"
  | (age>6) && (age<=10) = "Primary School"
  | (age>10) && (age<=14) = "Middle School"
  | (age>14) && (age<=19) = "High School"
  | otherwise = "Go to college"

--where clause
batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
  | avg <= 0.200 = "Terrible"
  | avg <= 0.250 = "Good"
  | avg <= 0.280 = "Great"
  | otherwise = "Superstar"
  where avg = hits / atBats


--access list items in a very efficient way
getListItems :: [Int] -> String
getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The 1st item in the list is " ++ show x ++ " and the rest of the items are" ++ show xs

getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]

{-
  HIGH ORDER FUNCTIONS !
  passing functions as paramters
-}

times4 :: Int -> Int
times4 x = x * 4
listTimes4 = map times4 [1..5]

multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

--more recursion
areStringEq :: [Char] -> [Char] -> Bool
areStringEq [] [] = True
areStringEq (x:xs) (y:ys) = x == y && areStringEq xs ys
areStringEq _ _ = False

--function wthin a function
doMult :: (Int -> Int) ->Int
doMult func = func 3
num3Times4 = doMult times4

--return a function
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y
adds3 = getAddFunc 3
fourPlus3 = adds3 4

{-
  LAMBDAS
  functions that don't have a name
-}
dbl1To10 = map(\x -> x * 2) [1..10]

--if statements
doubleEvens x= 
  if(x `mod` 2 /= 0)
    then x
    else x * 2

doubleListOfEvens = map doubleEvens [1..5]

--case (type of switch)
getClass :: Int -> String
getClass n = case n of
  5 -> "Kindergarten"
  6 -> "School"
  _ -> "Go away"

{-
  MODULES -> see samplefunctions.hs
-}

{-
  NUMERATION TYPES
-}

data BaseballPlayer = Pitcher
                    | Cathcer
                    | Infilder
                    | Outfield
                  deriving Show
barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True
barryInOF = print(barryBonds Outfield)


{-
  CUSTOM TYPES
-}

data Customer = Customer String String Double
  deriving Show

tomSmith :: Customer
tomSmith = Customer "Tom Smith" "123 Main" 20.5

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

--the $ operator -> removes parantheses

--the dot operator chains functions
sumValue = putStrLn . show $ 1 + 2

{-
  TYPE CLASSES
-}

--the fibb sequence
fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]

