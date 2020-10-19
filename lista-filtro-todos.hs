todos :: (n -> Bool) -> [n] -> Bool
todos f [] = True
todos f (x:xs)
  | f x == True = todos f xs
  | otherwise = False