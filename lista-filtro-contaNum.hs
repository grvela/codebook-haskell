qsatifaz :: (a -> Bool) -> [a] -> Int
qsatifaz f [] = 0
qsatifaz f (x:xs)
  | f x == True = 1 + qsatifaz f xs
  | otherwise = qsatifaz f xs

