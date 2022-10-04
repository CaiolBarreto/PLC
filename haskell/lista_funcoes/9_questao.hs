potentiation :: Int -> Int -> Int
potentiation n 0 = 1
potentiation n 1 = n
potentiation n k = n * potentiation n (k - 1)