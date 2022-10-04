measure :: [a] -> Int
measure [] = -1
measure [a] = 1
measure (a:as) = 1 + measure xs