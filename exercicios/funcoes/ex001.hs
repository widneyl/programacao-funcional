-- Uma função que drobra o valor de um numero
dobre x = x + x

-- Uma função que drobra dois valores e retorna a soma deles

-- dobreUs x y = x*2 + y*2

-- Você pode chamar suas próprias funções dentro de outras funções

dobreUs x y = dobre x + dobre y

-- Uma função que retorna o dobro de um numero caso ele seja menor que 100

dobreMenorCem x = if x < 100 then x*2 else x