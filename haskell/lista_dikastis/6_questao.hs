metade :: [a] -> ([a], [a])
metade []              = ([], [])
metade [x]             = ([x], [])
metade (x1:x2:xs)      = (x1:par, x2:impar)
    where (par, impar) = metade xs


main = do
  x <- getLine
  print $ metade (map (read :: String -> Int) (words x))