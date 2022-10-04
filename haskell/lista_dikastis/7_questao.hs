firstPart :: [x] -> Int -> [x]
firstPart xs half = take half xs

secondPart :: [x] -> Int -> [x]
secondPart xs half = drop half xs

merge :: Ord x => [x] -> [x] -> [x]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x <= y    = x:merge xs (y:ys)
    | otherwise = y:merge (x:xs) ys

msort :: Ord x => [x] -> [x]
msort []    = []
msort [x]   = [x]
msort xs    = merge (msort (firstPart xs half)) (msort (secondPart xs half))
    where half = length xs `div` 2

main = do
  x <- getLine
  print $ msort (map (read :: String -> Int) (words x))
