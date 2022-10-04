data Either1 a b = Left1 a | Right1 b
                  deriving (Eq, Ord, Show)

classifica :: [Either1 a b] -> ([a], [b])
classifica xs = go xs [] []
    where
        go (Left1 a: xs) as bs  = go xs (a:as) bs
        go (Right1 b: xs) as bs = go xs as (b:bs)
        go [] as bs = (reverse as, reverse bs)
