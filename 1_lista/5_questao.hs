merge :: Ord x => [x] -> [x] -> [x]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x <= y    = x:merge xs (y:ys)
    | otherwise = y:merge (x:xs) ys

main = do
  x <- getLine
  y <- getLine
  print $ merge (map (read :: String -> Int) (words x)) (map (read :: String -> Int) (words y))