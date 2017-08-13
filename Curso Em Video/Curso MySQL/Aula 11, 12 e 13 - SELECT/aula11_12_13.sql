-- -----------------
-- Parte 1
-- -----------------

-- Selecionar todos os cursos
select * from cursos;

-- Selecionar todos os cursos ordenados pelo nome
select * from cursos order by nome; 
-- ou (ascendente)
select * from cursos order by nome asc;

-- ... ordenados pelo nome decrescente
select * from cursos order by nome desc;

-- Selecionar todos os cursos mas só apresentar o seu nome, carga e ano
select nome, carga, ano
from cursos 
order by nome;

-- ... apresentar como ano, nome e carga. Odernar por ano e nome.
select ano, nome, carga
from cursos 
order by ano, nome;

-- Selecionar todos os curso do ano 2016
select *
from cursos 
where ano = '2016'
order by ano, nome;

-- ... mostrar somente o nome e a carga
select nome, carga
from cursos 
where ano = '2016'
order by ano, nome;

-- Selecionar todos os cursos <= 2015. Apresentar ano, nome e descrição. Ordenado por ano e nome.
select ano, nome, descricao
from cursos
where  ano <= '2015'
order by ano, nome;

-- Selcionar todos os curso em que o total de aulas esteja entre 20 e 30.
select *
from cursos
where totaulas between '20' and '30'
order by ano desc, nome asc;

-- Selecionar todos os curso de 2014 e 2016.
select nome, descricao, ano
from cursos
where ano in (2014, 2016)
order by ano;

-- Selecionar todos os cursos que tenham carga > 35 e total de aulas < 30
select *
from cursos
where carga > 35 and totaulas < 30
order by ano;

-- Selecionar todos os cursos que tenham carga > 35 ou total de aulas < 30
select *
from cursos
where carga > 35 or totaulas < 30
order by ano;

-- -----------------
-- Parte 2
-- -----------------

-- Selecionar os curso com o nome 'PHP'
select *
from cursos
where nome = 'PHP';

-- Selecionar todos os Cursos que começão com 'P'
-- like -> parecido
-- % -> nenhum ou vários caracteres
select * 
from cursos
where nome like 'P%';

-- Selecionar todos os Cursos que terminão com 'a'
select * 
from cursos
where nome like '%a';

-- Selecionar todos os Curso que contenham 'A' no nome
select * 
from cursos
where nome like '%A%';

-- Selecionar todos os Curso que não contenham 'A' no nome
select * 
from cursos
where nome not like '%A%';

