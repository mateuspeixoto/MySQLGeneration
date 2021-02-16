-- create database db_registroescola

use db_registroescola;

create table tb_aluno(
id int(8) auto_increment,
nome varchar(50) not null,
idade int(3) not null,
sala varchar(25),
nota double,
primary key(id)
);

insert into tb_aluno(nome,idade,sala,nota) values ("Credil",19,"2b",9.5);
insert into tb_aluno(nome,idade,sala,nota) values ("Flavia",18,"3F",8);
insert into tb_aluno(nome,idade,sala,nota) values ("Michele",20,"2G",4);
insert into tb_aluno(nome,idade,sala,nota) values ("Luis",21,"1A",5);
insert into tb_aluno(nome,idade,sala,nota) values ("Joaquim",28,"3P",9);
insert into tb_aluno(nome,idade,sala,nota) values ("Cléia",19,"2b",9);
insert into tb_aluno(nome,idade,sala,nota) values ("julia",16,"2b",7);
insert into tb_aluno(nome,idade,sala,nota) values ("Pedro",17,"3b",7.5);

select*from tb_aluno where nota>7;

select*from tb_aluno where nota<7;

update tb_aluno set sala="2b" where id=2;