--[expressão | padrão <- lista, condição]

dobroNunsMenor10 = [x*2 | x <- [1..10], x*2 > 12 && x*2 <16]
combiPoss = [(x,y) | x <- ['A', 'B', 'C'], y <- [1..3]]
resSeteDe_Cinquenta_A_Cem = [x | x <- [50..100], x `mod` 7 == 3]

--A função odd retorna True quando o número for ímpar e False quando for par. 
bangBoom xs = [if x <= 10 then "BANG!" else "BOOM!" | x <- xs, odd x]

exclua y xs = [x | x <- xs, x /= y]