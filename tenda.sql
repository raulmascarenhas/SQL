CREATE DATABASE db_tenda;
USE db_tenda;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR (255) NOT NULL,
	quantidade INT,
	preco DECIMAL,
	PRIMARY KEY (id)
);
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, quantidade, preco) VALUES ("LARANJA", 15, 6), ("UVA", 50, 9), ("PERA", 25, 6), ("MAÇA", 50, 10), ("BANANA", 45, 3);

SELECT *FROM tb_produtos;    
