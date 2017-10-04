--Exercise 3
ctmProd :: [Int] -> Int
ctmProd [] = 1
ctmProd (x:xs) = x * ctmProd xs

--Exercise 4
qsort :: [Int] -> [Int]
qsort [] = []
qsort(x:xs) = qsort larger ++ [x] ++ qsort smaller
  where
    smaller = [a | a <- xs, a < x]
    larger = [b | b <- xs, b > x]