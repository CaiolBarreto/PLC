type Ponto = (Float, Float)
type Reta = (Ponto, Ponto)

returnFirstCoord :: Ponto -> Float
returnFirstCoord p = fst p

returnSecondCoord :: Ponto -> Float
returnSecondCoord p = snd p

isVertical :: Reta -> Bool
isVertical r
    | fst (fst r) == fst (snd r) = True
    | otherwise = False