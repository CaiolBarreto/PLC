quantosIguais :: Integer -> Integer -> Integer -> Integer
quantosIguais x y z
    | x == y && x == z = 3
    | x /= y && x /= z = 0
    | otherwise = 2
