/*descrição da tabela*/
describe pessoas;
desc pessoas;

/*Adicionar coluna profissão*/
alter table pessoas
add column profissao varchar(10);

/*Adicionar coluna profissão depois da coluna nome*/
alter table pessoas
add column profissao varchar(10) after nome; 

/*Adicionar antes da primeira coluna a coluna codigo*/
alter table pessoas
add column codigo int first;

/*Fomar simplificada*/
alter table pessoas
add codigo int first;

/*Apagar coluna profissão*/
alter table pessoas
drop column profissao;

/*Alterar as definições do campo profissão para varchar(20)... (deu erro ao usar o 'not null') */
alter table pessoas
modify column profissao varchar(20) not null default '';

/*Modificar o nome de uma coluna - profissao para prof*/
alter table pessoas
change column profissao prof varchar(20);

/*Modar o nome da tabela de 'pessoas' para 'gafanhotos'*/
alter table pessoas
rename to gafanhotos;

/*
* Criar uma nova tabela 'cursos' caso não exista
*/
create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int,
ano year default '2016'
)default charset = utf8;

/*Adicionar idcurso na primeira posição*/
alter table cursos
add column idcurso int first;
/*Colocar o idcurso como primary key*/
alter table cursos
add primary key(idcurso);

/*apagar tabela*/
drop table if exists nome_da_tabela;