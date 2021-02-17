-- criando um novo database
create database db_generation_game_online;
-- usando
use  db_generation_game_online;

-- criando tabela
create table tb_classe(
id_classe int not null auto_increment unique,
tipo int not null,
forma varchar(50) not null,
fraqueza varchar(50),
forcacontra varchar(50),
primary key(id_classe)
);

-- criando tabela POKEMONS
create table tb_personagem(
id_personagem int not null auto_increment unique,
primary key(id_classe),
fk_id_classe int, -- criando objeto id extrangeiro
foreign key (fk_id_classe) references tb_classe(id_classe), -- referenciando ao id classe(idclasse=idExtrangeiro)
nome varchar(45) not null,
idade int not null,
peso double,
ataque int(20),
defesa int(20)

);
-- populando tabela personagem

INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Elétrico","media","Terra","Água e Voador");
INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Elétrico","inicial","Terra","Água e Voador");
INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Elétrico","final","Terra","Água e Voador");

INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Fogo","media","Água,Pedra e Terra","Aço,Gelo,Inseto e Planta");
INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Fogo","inicial","Água,Pedra e Terra","Aço,Gelo,Inseto e Planta");
INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Fogo","final","Água,Pedra e Terra","Aço,Gelo,Inseto e Planta");

INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Água","media","Fogo,Pedra e Terra","Elétrico e Planta");
INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Água","inicial","Fogo,Pedra e Terra","Elétrico e Planta");
INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Água","final","Fogo,Pedra e Terra","Elétrico e Planta");

INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Planta","media","Água,Pedra e Terra","Gelo,Fogo,Inseto,Venenoso e Voador");
INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Planta","inicial","Água,Pedra e Terra","Gelo,Fogo,Inseto,Venenoso e Voador");
INSERT INTO tb_classe(tipo,forma,fraqueza,forcacontra) values ("Planta","final","Água,Pedra e Terra","Gelo,Fogo,Inseto,Venenoso e Voador");

-- selecionando

SELECT*FROM db_generation_game_online.tb_personagem where ataque>2000; -- personagens onde ataque>2000
SELECT*FROM db_generation_game_online.tb_personagem where defesa>1000 AND defesa<2000; -- defesa entre 1000 e 2000
SELECT*FROM db_generation_game_online.tb_personagem where nome LIKE "C%"; -- antes do "%" é a primeira letra, depois é a ultima,( pesquisa de nome)
SELECT*FROM db_generation_game_online.tb_personagem INNER JOIN tb_classe ON fk_id_classe= id_classe; -- pegando junção entre os id's das tabelas
SELECT*FROM db_generation_game_online.tb_personagem INNER JOIN tb_classe ON tb_personagem.fk_id_classe= tb_classe.id_classe where forma="final"; -- agora achando todos pokemons com forma final

