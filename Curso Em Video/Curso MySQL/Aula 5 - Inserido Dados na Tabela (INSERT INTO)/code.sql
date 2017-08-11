/*Insere dados na tabela pessoa*/
insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

/*usando 'default'*/
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default,'Creuza', '1920-12-30', 'F', '50.2', '1.65', default);

/*mantendo a mesma ordem 'maneira simplificada'*/
insert into pessoas values
(default,'Adalgiza', '1930-11-2', 'F', '63.2', '1.75', 'Irlanda');

/*multiplas entradas*/
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
(default, 'Pedro', '2000-07-15', 'M', '52.3', '1.45', 'Brasil'),
(default, 'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

insert into pessoas values
(default, 'Cláudio', '1975-4-22', 'M', '99', '2.15', 'Brasil'),
(default, 'Pedro', '1999-12-7', 'M', '87', '2', default),
(default, 'Janaína', '1987-11-12', 'F', '75.4', '1.66', 'EUA');

/*Selecionar todos os elementso da tabela pessoas*/
select * from pessoas;