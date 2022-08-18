potentiation :: Int -> Int -> Int
potentiation n k = n ^ k

parseInput str = let [n, k] = map read (words str)
                 in (n, k)
main :: IO()
main = interact $ show . uncurry potentiation . parseInput
