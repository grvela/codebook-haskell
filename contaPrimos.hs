for :: Int -> Int -> Bool
for a b 
 | a == 2 = True
 | a == b = True
 | a `mod` b == 0 = False
 | otherwise = for a (b + 1)

verifica :: Int -> [Int]
verifica a 
 | a <= 1 = []
 | for a 2 == False = []
 | otherwise = [a]

primos :: [Int] -> [Int]
primos [] = []
primos (x:xs) = verifica x ++ primos xs

contaNum :: [Int] -> Int
contaNum [] = 0 
contaNum (x:xs) = 1 + contaNum xs 

contaPrimos :: [Int] -> Int
contaPrimos x = contaNum (primos x)