--Exercise 1
halve :: [a] -> ([a], [a])
halve xs = (take halfLen xs, drop halfLen xs) where
                halfLen = length xs `div` 2

--Exercise 2
-- a)
third1 :: [a] -> a
third1 xs = head (tail (tail xs))

-- b)
third2 :: [a] -> a
third2 xs = xs !! 2

-- c)
third3 :: [a] -> a
third3 (_ : _ : x : _) = x

--Exercise 3
-- a)
safetail1 :: [a] -> [a]
safetail1 xs = 
  if( length xs == 0 ) then
    xs
  else
    tail xs

-- b)
safetail2 :: [a] -> [a]
safetail2 xs
  | length xs == 0 = []
  | length xs > 0 = tail xs

-- c)
safetail3 :: [a] -> [a]
safetail3 [] = [] 
safetail3 xs = tail xs

--Exercise 4
(||) :: Bool -> Bool -> Bool
True || _ = True
_ || _ = False

--Exercise 5
{-
(&&) :: Bool -> Bool -> Bool
x && y = 
  if(x == True) then
    if(y ==True) then
      True
    else
      False
  else
    False
-}

--Exercise 6

--Exercise 7
mult :: Int -> (Int -> Int ->Int)
mult x = \y -> (\z -> x * y *z)

--Exercise 8
luhnDouble :: Int -> Int
luhnDouble n = res
    where
      res  
        | n * 2 <= 9 = n * 2
        | otherwise = n * 2 - 9
        
luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = 
  if(result `mod` 10 == 0) then
    True
  else
    False
  where
    result = luhnDouble a + luhnDouble b + luhnDouble c + luhnDouble d