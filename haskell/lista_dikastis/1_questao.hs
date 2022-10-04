potentiation :: Int -> Int -> Int
potentiation n 0 = 1
potentiation n 1 = n
potentiation n k = n * potentiation n (k - 1)

parseInput str = let [n, k] = map read (words str)
                 in (n, k)
main :: IO()
main = interact $ show . uncurry potentiation . parseInput