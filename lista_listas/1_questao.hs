isLetter :: Char -> Bool
isLetter c 
      | (c `elem` ['a'..'z']) || (c `elem` ['A'..'Z']) = True
      | otherwise = False

upperCase :: Char -> [(Char, Char)] -> Char
upperCase c xs = list !! 0
      where list = [snd x | x <- xs, (c == fst x) || (c == snd x)]

-- falta fazer a iterar nos char da string e aplicar as funções 