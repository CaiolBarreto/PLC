sells :: Int -> Int -> IO ()
sells inital final = do
    if inital <= final 
    then do
        print inital
        sells (inital + 1) final 
    else putStrLn "\n"