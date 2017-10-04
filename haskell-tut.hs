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
