maior :: Int -> [Int] -> Int
maior a [] = a
maior a (x:xs)
 | a > x = maior a xs
 | otherwise = maior x xs

menor :: Int -> [Int] -> Int
menor a [] = a
menor a (x:xs)
 | a < x = menor a xs
 | otherwise = menor x xs

maiormenor :: [Int] -> [Int]
maiormenor [] = []
maiormenor (x:xs) = [(maior x xs), (menor x xs)]

