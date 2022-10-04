parImpar :: Int -> String
parImpar x
    | x `mod` 2 == 0 = "par"
    | otherwise = "impar"
