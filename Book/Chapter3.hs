--Exercise 1
bools :: [Bool]
bools = [True, True, False]

nums :: [[Int]]
nums = [[1..4], [1..5], [1..6]]

add :: Int -> Int -> Int -> Int
add x y z = x + y + z

copy :: a -> (a, a)
copy a = (a, a)

apply :: (a -> b) -> a -> b
apply x y x = y