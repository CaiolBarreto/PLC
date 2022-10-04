firstPart :: Int -> [x] -> [x]
firstPart n xs = take (n - 1) xs

secondPart :: Int -> [x] -> [x]
secondPart n xs = drop (n) xs

remDiv :: Int -> [x] -> ([x], [x])
remDiv n xs = (firstPart n xs, secondPart n xs)

main = do
  n <- readLn
  x <- getLine
  print $ remDiv (n :: Int) (words x)