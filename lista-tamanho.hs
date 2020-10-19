listaTamanho :: [Int] -> Int
listaTamanho [] = 0 
listaTamanho (x:xs) = 1 + listaTamanho xs 