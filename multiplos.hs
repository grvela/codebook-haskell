multiplos :: [Int] -> Int -> [Int]
multiplos [] _ = []
multiplos (x : xs) a
  | mod x a == 0 = [x] ++ multiplos xs a
  | otherwise = multiplos xs a