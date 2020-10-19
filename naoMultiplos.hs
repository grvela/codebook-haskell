nao_multiplos :: [Int] -> Int -> [Int]
nao_multiplos [] _ = []
nao_multiplos (x : xs) a
  | mod x a /= 0 = [x] ++ nao_multiplos xs a
  | otherwise = nao_multiplos xs a