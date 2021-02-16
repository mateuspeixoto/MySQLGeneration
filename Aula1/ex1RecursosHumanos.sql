-- um banco de dados: 
-- create database db_rh;

-- declarando o banco de dados que queremos usar:
USE db_rh;
-- criando uma tabela (descriar= drop)
create table tb_funcionario(
id int(5) auto_increment,
nome varchar(50) NOT NULL,
cpf varchar(11) NOT NULL,
email varchar(20),
salario double not null,
PRIMARY KEY (id)
 );
 -- populando(inserindo dados na tabela):
 insert into tb_funcionario(nome,cpf,email,salario) values ("Mateus","12345678911","mateus@mateus.com",6000);
 insert into tb_funcionario(nome,cpf,email,salario) values ("Jose","27384512634","hams@bro.com",40);
 insert into tb_funcionario(nome,cpf,email,salario) values ("Juca","64738254612","sena@ilto.com",123);
 insert into tb_funcionario(nome,cpf,email,salario) values ("Jamelão","1568760375","milhos@corn.com",14.5);
 insert into tb_funcionario(nome,cpf,email,salario) values ("Louro","94638652456","leits@milton.com",50000);
 
 -- para ver a tabela:
 -- select *from tb_funcionario(*=todos);

-- selecione funcionarios com salario>2000;
-- select*from tb_funcionario where salario>2000;
	
-- selecione funcionarios com salario<2000;
-- select*from tb_funcionario where salario<2000;

-- query de atualização:

-- update tb_funcionario set salario= salario+960 where id=6


 select *from tb_funcionario