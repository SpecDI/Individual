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