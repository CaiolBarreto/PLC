addEspacos :: Int -> String
addEspacos 1 = " "
addEspacos n = " " ++ addEspacos(n - 1)