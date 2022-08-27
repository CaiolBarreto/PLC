firstPart :: Int -> [a] -> [a]
firstPart n xs = take n xs

secondPart :: Int -> [a] -> [a]
secondPart n xs = drop (n + 1) xs

remove :: Int -> [a] -> [a]
remove n xs
    | n > length xs = []
    | otherwise = firstPart n xs ++ secondPart n xs