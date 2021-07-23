CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
idCategoria INT NOT NULL AUTO_INCREMENT,
nomeCategoria ENUM ('cosméticos', 'remédios') NOT NULL,
desconto BOOLEAN NOT NULL,
PRIMARY KEY (idCategoria)
);

CREATE TABLE tb_produto(
idProduto INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
valor INT NOT NULL,
validade DATE,
fk_idCategoria INT NOT NULL,
PRIMARY KEY (idProduto),
FOREIGN KEY (fk_idCategoria) REFERENCES tb_categoria(idCategoria)
);


INSERT INTO tb_categoria(idCategoria, nomeCategoria, desconto) VALUES (DEFAULT, "cosméticos", TRUE);

INSERT INTO tb_categoria(idCategoria, nomeCategoria, desconto) VALUES (DEFAULT, "remédios", TRUE);

INSERT INTO tb_categoria(idCategoria, nomeCategoria, desconto) VALUES (DEFAULT, "cosméticos", FALSE);

INSERT INTO tb_categoria(idCategoria, nomeCategoria, desconto) VALUES (DEFAULT, "remédios", FALSE);

INSERT INTO tb_categoria(idCategoria, nomeCategoria, desconto) VALUES (DEFAULT, "remédios", TRUE);


INSERT INTO tb_produto(idProduto, nome, valor, fk_idCategoria) VALUES (DEFAULT, "Adivil", 50, 2);

INSERT INTO tb_produto(idProduto, nome, valor, fk_idCategoria) VALUES (DEFAULT, "buscopam", 20, 4);

INSERT INTO tb_produto(idProduto, nome, valor, fk_idCategoria) VALUES (DEFAULT, "tinta cabelo", 150, 1);

INSERT INTO tb_produto(idProduto, nome, valor, fk_idCategoria) VALUES (DEFAULT, "cotonete", 10, 3);

INSERT INTO tb_produto(idProduto, nome, valor, fk_idCategoria) VALUES (DEFAULT, "dorival", 100, 5);

INSERT INTO tb_produto(idProduto, nome, valor, fk_idCategoria) VALUES (DEFAULT, "desodorante", 17, 3);

INSERT INTO tb_produto(idProduto, nome, valor, fk_idCategoria) VALUES (DEFAULT, "luftal", 200, 4);

INSERT INTO tb_produto(idProduto, nome, valor, fk_idCategoria) VALUES (DEFAULT, "esmalte unha", 12, 1);


SELECT * FROM tb_produto WHERE valor > 50;

SELECT * FROM tb_produto WHERE valor <= 60 AND valor >= 3;

SELECT * FROM tb_produto WHERE nome LIKE "%B%";

SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.idCategoria= tb_produto.fk_idCategoria;


SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.idCategoria= tb_produto.fk_idCategoria
WHERE tb_categoria.nomeCategoria LIKE "%remedios%";





