USE db_quitanda;
select * from tb_produtos;
SELECT * FROM tb_produtos ORDER BY nomeproduto ASC;
SELECT * FROM tb_produtos ORDER BY nomeproduto DESC;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 16;
SELECT * FROM tb_produtos WHERE preco IN (5, 14, 10);
SELECT * FROM tb_produtos WHERE nomeproduto LIKE "m%";
SELECT * FROM tb_produtos WHERE nomeproduto LIKE "m_l%";

