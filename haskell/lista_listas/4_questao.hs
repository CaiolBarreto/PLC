fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

tabela :: Integer -> Integer -> String
tabela n m
    | m == n = ""
    | otherwise = show m ++ "  " ++ show(fibonacci m) ++ "\n" ++ tabela n (m + 1)

fibTable :: Integer -> String
fibTable n = "n  fib" ++ "\n" ++ tabela n 0
