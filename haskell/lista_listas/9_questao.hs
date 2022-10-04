sumTwoFirsts :: [Int] -> Int
sumTwoFirsts [] = 0
sumTwoFirsts [x] = x
sumTwoFirsts xs = (xs !! 0) + (xs !! 1)