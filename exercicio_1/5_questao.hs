maxThree :: Int -> Int -> Int -> Int
maxThree x y z
    | x >= y && x >= z = x
    | y >= x && y >= z = y
    | otherwise = z

maxFour :: Int -> Int -> Int -> Int -> Int
maxFour a b c d = maximum [a, b, c, d]

maxFour2 :: Int -> Int -> Int -> Int -> Int
maxFour2 a b c d = maximum [a, maxThree b c d]
