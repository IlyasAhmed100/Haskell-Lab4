-- Task 4.1 

-- a 

filterOut :: (a -> Bool) -> [a] -> [a]
filterOut p xs = [x | x <- xs, not(p x)]

mapTS :: (a -> b) -> [a] -> [(a,b)]
mapTS p xs = [(x, p x) | x <- xs]

-- Task 4.2

allPairs :: [a] -> [b] -> [(a,b)]
allPairs xs ys = [(x,y) | x <- xs, y <- ys]

-- Task 4.3 

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n - 1], factors x == x]
factors :: Int -> Int
factors n = sum[x | x <- [1..n - 1], n `mod` x == 0]