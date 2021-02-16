-- create database ecommerce;
use ecommerce;

create table tb_produtos(
id int(8) auto_increment,
nome varchar(50)NOT NULL,
tipo varchar(30),
cor varchar(30),
preco double NOT NULL,
estoque boolean,
primary key(id)
);

insert into tb_produtos(nome,tipo,cor,preco,estoque) values ("iphone","celular","vermelho",5000,true);
insert into tb_produtos(nome,tipo,cor,preco,estoque) values ("aviador","oculos","preto",200,false);
insert into tb_produtos(nome,tipo,cor,preco,estoque) values ("harry potter","livro","cor",50,true);
insert into tb_produtos(nome,tipo,cor,preco,estoque) values ("geladeira lg","eletrodomestico","prata",3000,true);
insert into tb_produtos(nome,tipo,cor,preco,estoque) values ("nike shof","tênis","branco",250,true);
insert into tb_produtos(nome,tipo,cor,preco,estoque) values ("tupware","cozinha","vermelho",12000,true);
insert into tb_produtos(nome,tipo,cor,preco,estoque) values ("notebook 234","eletrônicos","preto",5000,true);
insert into tb_produtos(nome,tipo,cor,preco,estoque) values ("paracetamol","remédios","cor",15,true);



select*from tb_produtos where preco>500;

select*from tb_produtos where preco<500;

update tb_produtos set preco= preco-100 where id=4;