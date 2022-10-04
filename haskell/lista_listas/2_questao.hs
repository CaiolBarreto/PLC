divisores :: Integer -> [Integer]
divisores n = [x | x <- [1..n], n `mod` x == 0]

isPrime :: Integer -> Bool
isPrime n
    | length (divisores n) == 2 = True
    | otherwise = False