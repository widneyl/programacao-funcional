atividade = "3"
nome = "Antonio Widney Lima"
matricula = "552200"


tls :: String -> [(Char, Int)]
tls [] = []
tls s = [(y, contando y s) | y <- tiraRepeticao s]
        where
            contando :: Char -> String -> Int
            contando _ [] = 0
            contando y (x:xs) = if y == x then 
                                    1 + contando y xs 
                                else contando y xs

            tiraRepeticao :: String -> String
            tiraRepeticao [] = []
            tiraRepeticao (x:xs) = if elem x xs then
                                tiraRepeticao xs
                                    else x : tiraRepeticao xs


sfq :: String -> (String, Int)
sfq [] = (" ", 0)
sfq s = frequencia (dividindo ([x | x <- s, x notElem ".,!?"]) [])
        where
            cont :: Eq a => a -> [a] -> Int
            cont _ [] = 0
            cont y (x:xs) = if y == x then
                                    1 + cont y xs
                                else cont y xs
            
            dividindo :: String -> String -> [String]
            dividindo "" y = [y]
            dividindo (x:xs) y = if elem x " " && null y then
                                            dividindo xs ""
                                    else
                                        if elem x " " && not (null y) then
                                            y : dividindo xs ""
                                          else dividindo xs (y ++ [x])

            frequencia :: [String] -> (String, Int)
            frequencia [x] = (x, 1)
            frequencia (x:xs) = let (repetida, quantas) = frequencia xs in 
                    if x == fst (frequencia xs) then
                        (x, quantas + 1)
                    else (repetida, quantas)
