-- Exercise 1
fac ::Int -> Int
fac 0 = 1
fac n | n >= 0 = n * fac (n-1)
      | otherwise = 1

--Exercise 2
sumdown :: Integral a => a -> a
sumdown 0 = 0
sumdown n = n + sumdown(n-1)

--Exercise 3
(#) :: Int -> Int -> Int
_ # 0 = 1
0 # _ = 0
n # 1 = n
n # e = n * ( n #  (e - 1) )

--Exercise 4
euclid :: Int -> Int -> Int
euclid a b
      | a == b = a
      | a > b = euclid (a-b) b
      | otherwise = euclid a (b-a)

-- Exercise 5
length_ctm :: [a] -> Int
length_ctm [] = 0
length_ctm (x:xs) = 1 + length_ctm xs

drop_ctm :: Int -> [a] -> [a]
drop_ctm _ [] = []
drop_ctm 0 xs = xs
drop_ctm nr (x:xs) = drop (nr-1) xs

init_ctm :: [a] -> [a]
init_ctm [x] = []
init_ctm (x:xs) = x : init_ctm xs

--Exercise 6
and_ctm :: [Bool] -> Bool
and_ctm [True] = True
and_ctm [False] = False
and_ctm (x:xs) 
      | x == False = False
      | x == True = and_ctm xs

concat_ctm :: [[a]] -> [a]
concat_ctm [] = []
concat_ctm (x:xs) = x

replicate_ctm :: Int -> a -> [a]
replicate_ctm 1 x = [x]
replicate_ctm n x = x : replicate_ctm (n-1) x

(!!!) :: [a] -> Int -> a 
(!!!) xs 0 = head xs
(!!!) (x:xs) n = (!!!) xs (n-1)

elem_ctm :: Eq a => a -> [a] -> Bool
elem_ctm _ [] = False
elem_ctm a (x:xs) 
      | a == x = True
      | otherwise = elem_ctm a xs

--Exercise 7
merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) 
      | x <= y = x : merge xs (y:ys)
      | otherwise = y : merge (x:xs) ys

--Exercise 8 - Mergesort
fsthalf :: [a] -> [a]
fsthalf xs = take (length xs `div` 2) xs
sndhalf :: [a] -> [a]
sndhalf xs = drop (length xs `div` 2) xs

msort :: Ord a=> [a] -> [a]
msrot [] = []
msort [x] = [x]
msort xs = merge (msort (fsthalf xs)) (msort (sndhalf xs))
         