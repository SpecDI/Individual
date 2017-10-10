-- Binary String Transmitter
import Data.Char
import Data.List
type Bit = Int
bin2int :: [Bit] -> Int
bin2int bits = sum [w * b | (w, b) <- zip weights bits]
    where
        weights = iterate (*2) 1

int2bin :: Int -> [Bit]
int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

make8 :: [Bit] -> [Bit]
make8 bits = take 8 (bits ++ repeat 0)

--encode :: String -> [Bit]
--encode str = concat . map (make8 . int2bin (ord(ASASDr)))

--Voting algorithms
--Type 1
votes :: [String]
votes = ["Green", "Green", "Green", "Blue", "Blue", "Red"]
count :: Eq a => a -> [a] -> Int
count x = length . filter (==x)

rmdups :: Eq a => [a] -> [a]
rmdups [] = []
rmdups (x:xs) = x : filter (/=x) (rmdups xs)

result :: Ord a => [a] -> [(Int, a)]
result vs = sort [(count v vs, v) | v <- rmdups vs]

winner :: Ord a => [a] -> a
winner vs = snd . last . result vs