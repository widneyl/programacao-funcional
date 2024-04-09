atividade = "2"

-- Substitua seus dados
nome = "Antonio Widney Lima"
matricula = "552200"

-- 1 
-- Sejam as tuplas u e v de inteiros
-- tal que exista um inteiro k onde
-- u = kv ou v = ku  
-- então u e v são mútiplos. Construa 
-- função que determine se duas 
-- tuplas de inteiros  são múltiplas.
isMult :: (Int, Int) -> (Int, Int) -> Bool

   

-- 2
-- Sejam todos os triângulos retângulos
-- de perímetro p e de lados inteiros.
--   representados por tuplas (a,b,c) 
-- com  a>=b>=c. Criar  
--  função que determine 
-- o total destes triângulos dado p .

tot'tri :: Int -> Int
tot'tri p = length [(a, b, c) | a <- [1..p], b <- [1..a], let c = p - a - b, a^2 == b^2 + c^2, a >= b, b >= c]

