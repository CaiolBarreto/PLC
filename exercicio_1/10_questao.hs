binomialCoefficients :: (Integer, Integer) -> Integer
binomialCoefficients (n, 0) = 1
binomialCoefficients (0, k) | k > 0 = 0
binomialCoefficients (n, k) = binomialCoefficients(n - 1, k) + binomialCoefficients(n - 1, k - 1)
