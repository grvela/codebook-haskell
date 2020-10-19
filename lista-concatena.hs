concatena :: [Int] -> [Int] -> [Int]
concatena [] x = x
concatena x [] = x
concatena (x : xs) y = x : concatena xs y
