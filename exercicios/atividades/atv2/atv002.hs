atividade = "04"
nome = "Antonio Widney Lima"
matricula = "552200"

--  1

replace :: [Char] -> [Char] -> [Char] -> [Char]
replace _ _ [] = []
replace text from to = subs text from to
    where 
        subs :: [Char] -> [Char] -> [Char] -> [Char]
        subs [] _ _ = []
        subs frase@(x:xs) prs xNew 
            | indenF prs frase = xNew ++ subs (drop (length prs) frase) prs xNew 
            | otherwise = x : subs xs prs xNew 

        indenF :: [Char] -> [Char] -> Bool 
        indenF "" _ = True 
        indenF _ "" = False 
        indenF (x:xs) (y:ys) = x == y && indenF xs ys


-- 2

lsSplit :: [Int] -> ([Int], Int, [Int])
lsSplit [] = ([], 0, [])
lsSplit [x] = ([], x, [])
lsSplit ls = (fst (sp (maximum ls) ls), maximum ls, snd (sp (maximum ls) ls))
            where
                sp :: Int -> [Int] -> ([Int], [Int])
                sp _ [] = ([], [])
                sp y (x:xs)
                    | x == y = ([], xs)
                    | otherwise = let (a, b) = sp y xs
                                  in (x : a, b)

-- 3

selectionSort :: Ord a => [a] -> [a]
selectionSort [] = []
selectionSort ls = listOrderBy (maximum ls) ls
                where
                    listOrderBy :: Ord a => a -> [a] -> [a]
                    listOrderBy _ [] = []
                    listOrderBy maior lista = let proxMaior = maximum lista
                                                  orderList = proxMaior : listOrderBy maior (rmE proxMaior lista)
                                              in orderList

                    rmE :: Eq a => a -> [a] -> [a]
                    rmE _ [] = []
                    rmE elem (x:xs)
                        | elem == x = rmE elem xs
                        | otherwise = x : rmE elem xs

