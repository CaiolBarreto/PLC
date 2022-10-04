minim :: [Int] -> Int
minim []       = 0
minim [x]      = x
minim (x:xs)   = min1 x (minim xs)

min1 :: Int -> Int -> Int
min1 a b
    | a > b  = b
    | a < b  = a
    | a == b = a