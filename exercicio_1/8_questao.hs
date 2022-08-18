sumTo :: Int -> Int
sumTo 1 = 1
sumTo n = n + sumTo (n - 1)