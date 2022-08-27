isCrescent :: [Float] -> Bool
isCrescent [x] = True
isCrescent (x:xs)
    | x < head xs = isCrescent xs
    | otherwise = False
