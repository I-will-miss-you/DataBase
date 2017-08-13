-- ex 1 
-- Uma lista com o nome de todas as gafanhotas
SELECT 
    nome
FROM
    gafanhotos
WHERE
    sexo = 'F'
ORDER BY nome;

--ex 2
-- Uma lista com os dados de todos que nasceram entre 1/Jan/2000 e 31/Dez/2015
SELECT 
    *
FROM
    gafanhotos
WHERE
    nascimento > '2000-1-1'
        AND nascimento < '2015-12-31'
ORDER BY nascimento;

--ex 3
-- Uma lista com o nome de todos os homens que trabalham como Programadores
SELECT 
    nome
FROM
    gafanhotos
WHERE
    sexo = 'M' and profissao = 'Programador'
ORDER BY nome;

-- ex 4
-- Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome inicidado com a letra 'J'
SELECT 
    *
FROM
    gafanhotos
WHERE
    sexo = 'F' AND nacionalidade = 'Brasil'
        AND nome LIKE 'J%'
ORDER BY nome;

-- ex 5
-- Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100kg
SELECT 
    nome, nacionalidade
FROM
    gafanhotos
WHERE
    sexo = 'M' AND nacionalidade != 'Brasil'
        AND nome LIKE '%Silva%'
        AND peso < '100'
ORDER BY nome;

-- ex 6
-- Qual é a maior altura entre gafanhotos homens que moram no Brasil
SELECT 
    max(altura) 'altura max'
FROM
    gafanhotos
WHERE
    sexo = 'M' AND nacionalidade = 'Brasil';

-- ex 7
-- Qual é a média de peso dos gafanhotos cadastrados
SELECT 
    avg(peso) 'Peso médio'
FROM
    gafanhotos;

-- ex 8
-- Qual é o menor peso entre as gafanhotas mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
SELECT 
    MIN(peso) 'Menor Peso'
FROM
    gafanhotos
WHERE
    sexo = 'F' AND nacionalidade != 'Brasil'
        AND nascimento > '1990-1-1'
        AND nascimento < '2000-31-12';


-- ex 9
-- Quantas gafanhotas mulheres têm mais de 1.90m de altura?
SELECT 
    count(*) 'Número de mulheres'
FROM
    gafanhotos
WHERE
    sexo = 'F' AND altura > '1.90';