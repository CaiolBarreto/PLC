ordenar :: [Int] -> [Int]
ordenar [] = []
ordenar [x] = [x]
ordenar (x:xs)
    | sumDigit x <= sumDigit (head (order)) = x : order
    | sumDigit x > sumDigit (head (order)) = ordenar([head (order)] ++ [x] ++ tail (order))
    where order = ordenar xs
    


sumDigit :: Int -> Int
sumDigit 0 = 0
sumDigit x = (x `mod` 10) + sumDigit (x `div` 10)