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
-- populando tabela classe

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

-- populando a tabela tb_personagem POKEMONS

INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ('1', 'Pikachu', '10', '6', '5000', '1000');
INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ('2', 'Pichu', '2', '3', '500', '1000');
INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ( '3', 'Raichu', '13', '8', '10000', '4500');

INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ('4', 'Charmeleon', '8', '19', '5020', '3800');
INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ( '5', 'Charmander', '4', '8.5', '1100', '1000');
INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ( '6', 'Charizard', '14', '60', '1100', '9000');

INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ( '7', 'Wartortle', '11', '20', '4500', '5000');
INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ( '8', 'Squirtle', '4', '6', '500', '1000');
INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ( '9', 'Blastoise', '17', '150', '1400', '1500');

INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ('10', 'Ivysauro', '6', '19', '5000', '2500');
INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ( '11', 'Bulbasauro', '3', '10', '500', '1000');
INSERT INTO db_generation_game_online.tb_personagem(fk_id_classe ,nome, idade, peso, ataque, defesa) values ( '12', 'Venusauro', '16', '40', '1300', '1235');



-- selecionando

SELECT*FROM db_generation_game_online.tb_personagem where ataque>2000; -- personagens onde ataque>2000
SELECT*FROM db_generation_game_online.tb_personagem where defesa>1000 AND defesa<2000; -- defesa entre 1000 e 2000
SELECT*FROM db_generation_game_online.tb_personagem where nome LIKE "C%"; -- antes do "%" é a primeira letra, depois é a ultima,( pesquisa de nome)
SELECT*FROM db_generation_game_online.tb_personagem INNER JOIN tb_classe ON fk_id_classe= id_classe; -- pegando junção entre os id's das tabelas
SELECT*FROM db_generation_game_online.tb_personagem INNER JOIN tb_classe ON tb_personagem.fk_id_classe= tb_classe.id_classe where forma="final"; -- agora achando todos pokemons com forma final

