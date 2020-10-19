concatena :: [Int] -> [Int] -> [Int]
concatena [] x = x
concatena x [] = x
concatena (x : xs) y = x : concatena xs y

divisores :: Int -> Int -> Int
divisores n 1 = 1
divisores n x
  | mod n x == 0 = divisores (n) (x - 1) + 1
  | otherwise = divisores n (x -1)

primos :: [Int] -> [Int]
primos [] = []
primos (x : xs)
  | divisores x x == 2 = concatena [x] (primos xs)
  | otherwise = primos xs