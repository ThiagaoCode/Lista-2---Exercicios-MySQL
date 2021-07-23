CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria (
idCategoria INT NOT NULL AUTO_INCREMENT,
carne ENUM ("primeira", "segunda") NOT NULL,
desconto BOOLEAN NOT NULL,
PRIMARY KEY (idCategoria)
);

CREATE TABLE tb_produto(
idProduto INT NOT NULL AUTO_INCREMENT,
nomeCarne VARCHAR(255) NOT NULL,
valor INT NOT NULL,
validade VARCHAR (255),
fk_idCategoria INT NOT NULL,
PRIMARY KEY (idProduto),
FOREIGN KEY (fk_idCategoria) REFERENCES tb_categoria(idCategoria)
);


INSERT INTO tb_categoria(idCategoria, carne, desconto) VALUES (DEFAULT, "primeira", TRUE);
INSERT INTO tb_categoria(idCategoria, carne, desconto) VALUES (DEFAULT, "primeira", FALSE);
INSERT INTO tb_categoria(idCategoria, carne, desconto) VALUES (DEFAULT, "segunda", TRUE);
INSERT INTO tb_categoria(idCategoria, carne, desconto) VALUES (DEFAULT, "segunda", FALSE);




INSERT INTO tb_produto(idProduto, nomeCarne, valor, validade, fk_idCategoria) VALUES (DEFAULT, "Cupim", 50, "2021-07-30", 2);
INSERT INTO tb_produto(idProduto, nomeCarne, valor, validade, fk_idCategoria) VALUES (DEFAULT, "Acem", 25, "2021-07-30", 3);
INSERT INTO tb_produto(idProduto, nomeCarne, valor, validade, fk_idCategoria) VALUES (DEFAULT, "lombinho", 30, "2021-07-30", 4);
INSERT INTO tb_produto(idProduto, nomeCarne, valor, validade, fk_idCategoria) VALUES (DEFAULT, "alcatra", 70, "2021-07-30", 2);
INSERT INTO tb_produto(idProduto, nomeCarne, valor, validade, fk_idCategoria) VALUES (DEFAULT, "picanha", 90, "2021-07-30", 1);
INSERT INTO tb_produto(idProduto, nomeCarne, valor, validade, fk_idCategoria) VALUES (DEFAULT, "file mignom", 75, "2021-07-30", 2);
INSERT INTO tb_produto(idProduto, nomeCarne, valor, validade, fk_idCategoria) VALUES (DEFAULT, "rabo", 12, "2021-07-30", 3);
INSERT INTO tb_produto(idProduto, nomeCarne, valor, validade, fk_idCategoria) VALUES (DEFAULT, "costela", 45, "2021-07-30", 1);


SELECT * FROM tb_produto WHERE valor > 50;

SELECT * FROM tb_produto WHERE valor <= 60 AND valor >= 3;

SELECT * FROM tb_produto WHERE nomeCarne LIKE "%C%";

SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.idCategoria= tb_produto.fk_idCategoria;



SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.idCategoria= tb_produto.fk_idCategoria
WHERE tb_categoria.carne LIKE "%primeira%";

SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.idCategoria= tb_produto.fk_idCategoria
WHERE tb_categoria.carne LIKE "%segunda%";




