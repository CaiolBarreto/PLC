type Ponto = (Float, Float)
type Reta = (Ponto, Ponto)

pontoY :: Float -> Reta -> Float
pontoY x r = (((y2 - y1) * (x - x1)) / (x2 - x1)) + y1
    where (x1, x2, y1, y2) = (fst (fst r), snd (fst r), fst (snd r), snd (snd r))