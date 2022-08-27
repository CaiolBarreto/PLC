tribonacci :: Int -> Int
tribonacci 1 = 1
tribonacci 2 = 1
tribonacci 3 = 2
tribonacci n = tribonacci(n - 1) + tribonacci(n - 2) + tribonacci(n - 3)