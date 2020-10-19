mapeia :: (Int -> Int) -> [Int] -> [Int]
mapeia a [] = []
mapeia a (x:xs) = [a x] ++ mapeia a xs   