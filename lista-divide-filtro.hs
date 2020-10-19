filtro_1 :: (n -> Bool) -> [n] -> [n]
filtro_1 f [] = []
filtro_1 f (x:xs)
  | f x == True = [x] ++ filtro_1 f xs
  | otherwise = filtro_1 f xs

filtro_2 :: (n -> Bool) -> [n] -> [n]
filtro_2 f [] = []
filtro_2 f (x:xs)
  | f x == False = [x] ++ filtro_2 f xs
  | otherwise = filtro_2 f xs

divlista :: (n -> Bool) -> [n] -> ([n],[n])
divlista f [] = ([], [])
divlista f x = (filtro_1 f x, filtro_2 f x)