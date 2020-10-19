euclides :: Int -> Int -> Int
euclides a b
 | b == 0 = a
 | otherwise = euclides b (a `mod` b)


mdc :: Int -> Int -> Int
mdc a b
 | a >= b = euclides a b
 | otherwise = euclides b a
 
