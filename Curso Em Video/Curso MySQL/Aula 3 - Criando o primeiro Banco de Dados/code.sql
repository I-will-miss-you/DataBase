
/*Cria base de dados "cadastro"*/
create database cadastro;

/*Cria tabela "pessoas"*/
create table pessoas(
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);

/*descreve a tabela pessoas*/
describe pessoas; 

/*mostra todas a bases de dados */
show databases; 

use cadastro; 

/*mostra os banco de dados que esta aberto*/
status;

/*mostra todas as tabela do banco de dados*/
show tables;

