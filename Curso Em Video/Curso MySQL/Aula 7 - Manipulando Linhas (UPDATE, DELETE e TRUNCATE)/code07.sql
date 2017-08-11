/*Dados para a tabela cursos*/
insert into cursos values
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Bancos de Dados MySQL','30','15','2016'),
('7','Word','Curso Completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTube','Gerar polêmica e ganhar inscritos','5','2','2018');

/*Mudar o nome de HTML4 para HTML5*/
update cursos 
set nome = 'HTML5'
where idcurso = '1';

/*Mudar o nome de PGP para PHP e ano de 2010 para 2015*/
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

/*Mudar o nome de Jarva -> Java, 10 -> 40 e 2000->2015 */
update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;

/*Apagar o registo 8*/
delete from cursos
where idcurso = '8';

/*Apagar os registos em que o ano é 2018*/
delete from cursos
where ano = '2018'
limit 2;

/*Apagar todos o registo de uma tabela*/
truncate table cursos;
/*ou*/
truncate cursos;
