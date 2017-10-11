type Assoc k v = [(k, v)]

hashmap :: Assoc Int String
hashmap = [(1, "Vlad")]

--Select
traverseMap :: Int -> Assoc Int String -> (Int, String)
traverseMap p map = hashmap !! p
--Get
