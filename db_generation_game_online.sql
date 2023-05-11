 CREATE DATABASE db_generation_game_online;
 USE db_generation_game_online;
 
 CREATE TABLE  tb_classes(
	id BIGINT AUTO_INCREMENT,
	race VARCHAR (255) ,
	nivel INT,
	PRIMARY KEY (id)
); 

INSERT INTO tb_classes (race, nivel) VALUES ("HUMANO", 2), ("ELFO" , 3), ("ORC" , 4);


CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255),
    vida INT,
    ataque INT,
    defesa INT,
    forca INT,
    dest INT,
    id_classes BIGINT,
    PRIMARY KEY (id)
 );  
 ALTER TABLE tb_personagens ADD CONSTRAINT fk_id_classes FOREIGN KEY (id_classes) REFERENCES tb_classes (id);
 INSERT INTO tb_personagens (nome, vida, ataque, defesa, forca, dest, id_classes) VALUES 
("ManosDoAlem", 15000, 3000, 4000, 2500, 4000, 1), 
("Charlie Brown", 15000, 4000, 5000, 2500, 4000, 2), 
("Aragorn", 15000, 6000000, 4000, 5500, 4000, 3), 
("Chico Xavier", 9000, 3000, 6000, 7500, 4000, 4), 
("Adulto Ney", 455000, 4000, 4000, 8500, 4000, 5), 
("Super 15", 25000, 3000, 4000, 2500, 4000, 1), 
("Maximilian Pegasus", 10000, 9000, 4000, 8500, 4000, 2), 
("Rambo", 25000, 3000, 4000, 9500, 8000, 3);

SELECT * FROM tb_personagens;

INSERT INTO tb_classes (race, nivel) VALUES ("HALFLING", 4), ("ANÃO" , 3);
SELECT * FROM tb_classes;
SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "c%";

#juncao de suas tabelas com filtro id classes = ao id da tabela classes
SELECT DISTINCT * FROM tb_personagens JOIN tb_classes ON tb_classes.id = tb_classes.id WHERE id_classes = tb_classes.id;

#junçao de duas tabelas com filtro por raças 
SELECT DISTINCT * FROM tb_personagens JOIN tb_classes ON tb_classes.id = tb_classes.id WHERE tb_classes.race = "humano"; 

