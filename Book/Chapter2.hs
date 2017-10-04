--Exercise 3
--N should be lower case
--the used apotrophes are not good ''
n = a `div` length xs
  where
    a = 10
    xs = [1, 2, 3, 4, 5]


--Exercise 4
ctmLast (x:xs) = xs !! pos
    where
      pos = (length xs) - 1

--Exercise 5
ctmInit xs = take (length xs - 1) xs