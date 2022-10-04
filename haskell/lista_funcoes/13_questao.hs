addEspacos :: Int -> String
addEspacos 1 = " "
addEspacos n = " " ++ addEspacos(n - 1)

paraDireita :: Int -> String -> String
paraDireita n s = addEspacos n ++ s