data SafeDivision = Just1 | Nothing1
                    deriving (Show)
isSafe :: Float -> Float -> SafeDivision
isSafe x 0 = Nothing1
isSafe x y = Just1