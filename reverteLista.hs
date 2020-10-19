reverte :: [Int] -> [Int]
reverte [] = []
reverte (x : xs) = reverte (xs) ++ (x : [])