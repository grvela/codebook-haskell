filtro :: (n -> Bool) -> [n] -> [n]
filtro f [] = []
filtro f (x:xs)
  | f x == True = [x] ++ filtro f xs
  | otherwise = filtro f xs