--{head} recebe uma lista e retorna o seu head. O head (cabeça) de uma lista é basicamente o primeiro elemento.

ghci> head [5,4,3,2,1]  
5   

--{tail} recebe uma lista e retorna a sua "cauda". Em outras palavras, ele decepa a cabeça de uma lista e retorna a cauda.

ghci> tail [5,4,3,2,1]  
[4,3,2,1]   

--{last} recebe uma lista e retorna o seu último elemento.

ghci> last [5,4,3,2,1]  
1   

--{init} recebe uma lista e retorna tudo com exceção do último elemento.

ghci> init [5,4,3,2,1]  
[5,4,3,2]   