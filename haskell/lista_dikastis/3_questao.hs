count :: Int -> [Int] -> Int
count n xs = length list
    where list = [ x | x <- xs, x == n]

unicos :: [Int] -> [Int]
unicos xs = [ x | x <- xs, count x xs == 1]

main = do
  x <- getLine
  print $ unicos (map (read :: String -> Int) (words x))