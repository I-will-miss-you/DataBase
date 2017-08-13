-- Criar relação muitos para muitos
create table  gafanhoto_assiste_curso(
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos(idcurso)
)default charset = utf8;

-- Inserir dados
insert into gafanhoto_assiste_curso
values 
(default, '2014-03-01','1','2'),
(default, '2015-12-22','3','6'),
(default, '2014-01-01','22','12'),
(default, '2016-05-12','1','19');

-- Saber os curso que os gafanhotos assistem
select g.nome, c.nome, a.data
from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome; 