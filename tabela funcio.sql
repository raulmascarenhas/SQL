SELECT @@version;

CREATE DATABASE db_EmpresaX;

USE db_EmpresaX;

CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
salario DECIMAL NOT NULL,
faltas INT,
atestados INT,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios (nome, salario, faltas, atestados) VALUES
 ("Chikin", 1000, 4, 1),
("Ivo Holanda", 6000, 1, 0),
   ("João Cleber", 12000, 2, 5),
    ("Michael Jackson", 1054400, 11, 15),
  ("Melocoton", 200, 40, 51),
    ("Xuxa", 23555200, 4, 2);

sELECT * fROM tb_funcionarios;

sELECT * fROM tb_funcionarios wHERE salario > 2000;

sELECT *
fROM tb_funcionarios 
wHERE salario < 2000;

uPDATE tb_funcionarios sET salario = 1500 wHERE id = 1;


