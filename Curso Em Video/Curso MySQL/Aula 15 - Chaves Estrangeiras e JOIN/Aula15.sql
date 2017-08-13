
-- Criar chave estrangeira
alter table gafanhotos
add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido) 
references cursos(idcurso);

-- atualizar os dados - fazer o update com os valore do cursopreferido 
update gafanhotos
set cursopreferido = '6'
where id = '1';

-- saber qual é o curso preferido de cada aluno
select gafanhotos.nome, cursos.nome, cursos.ano 
from gafanhotos 
join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;

-- JOIN é a mesma coisa que inner join. O mesmo comando usando aplidos de coluna.
select g.nome, c.nome, c.ano 
from gafanhotos as g 
inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

-- LEFT JOIN
select g.nome, c.nome, c.ano 
from gafanhotos as g 
left outer join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;
-- ou
select g.nome, c.nome, c.ano 
from gafanhotos as g 
left join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

-- RIGHT JOIN
select g.nome, c.nome, c.ano 
from gafanhotos as g 
right outer join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;
-- ou
select g.nome, c.nome, c.ano 
from gafanhotos as g 
right join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;