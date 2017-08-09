
create database cadastro;

create table pessoas(
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);

describe pessoas; #descreve a tabela pessoas

show databases; #mostra todas a bases de dados 

use cadastro; 

status; #mostra os banco de dados que esta aberto

show tables; #mostra todas as tabela do banco de dados

