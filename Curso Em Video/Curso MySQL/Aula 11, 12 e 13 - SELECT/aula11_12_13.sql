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

-- Selecionar os curso com o nome 'PHP'
select *
from cursos
where nome = 'PHP';

-- ------------------------
--  LIKE
-- ------------------------

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

-- Selecionar todos os Cursos que contenham 'A' no nome
select * 
from cursos
where nome like '%A%';

-- Selecionar todos os Cursos que não contenham 'A' no nome
select * 
from cursos
where nome not like '%A%';

-- Selecionar todos os Cursos que:
-- tenha 'ph' no incio 
-- terminem com 'p' mais um caracter qualquer
-- e no meio tenha zero ou mais caracteres
select * 
from cursos
where nome like 'ph%p_';

-- Selecionar todos os cursos que:
-- começe com 'p'
-- tenha mais dois carateres quais queres
-- tenha 't'
-- tenha zero ou mais carateres quais queres
select * 
from cursos
where nome like 'p__t%';

-- Selecionar todos os gafanhotos que tem 'Silva' no nome
select * 
from gafanhotos
where nome like '%silva%';

-- Selecionar todos os gafanhotos que tem 'Silva' no ultimo nome
select * 
from gafanhotos
where nome like '%silva';

-- ------------------------
--  DISTINCT
-- ------------------------
-- Quais as nacionalidades dos gafanhotos:
select distinct nacionalidade
from gafanhotos
order by nacionalidade;

-- ------------------------
--  AGREGAÇÕES
-- ------------------------
-- Quantos cursos tenho?
select count(*) 'qtd cursos' from cursos;
--Quantos cursos com mais de 40h?
select count(*) 'qtd cursos' 
from cursos
where carga > 40;

-- Qual é o valor da maior carga dos cursos?
select max(carga) from cursos;

-- Quais os cursos com o maior número de aulas?
select * 
from cursos
where totaulas = (select max(totaulas) from cursos);

-- Quais os cursos com o menor número de aulas?
select * 
from cursos
where totaulas = (select min(totaulas) from cursos);

-- Total de aulas de 2016
select sum(totaulas)
from cursos
where ano = '2016';

-- Valor médio de aulas
select avg(totaulas)
from cursos;

