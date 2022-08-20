numDiv:: Integral a => a -> a -> a
numDiv x y
    | x `mod` y == 0 = 1 + numDiv division y
    | otherwise = 0
    where division = x `div` y

main = do
   a <- readLn
   b <- readLn
   print (numDiv (a :: Int) (b :: Int))
