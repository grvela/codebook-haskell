somaLista :: [Int] -> Int
somaLista [] = 0
somaLista (x : xs) = x + somaLista xs