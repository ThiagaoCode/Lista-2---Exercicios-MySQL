CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizza(
idPizza INT NOT NULL AUTO_INCREMENT,
nomePizza VARCHAR(255) NOT NULL,
comQueijo BOOLEAN NOT NULL,
bordaRecheada BOOLEAN NOT NULL,
PRIMARY KEY(idPizza)
);

CREATE TABLE tb_categoria (

idCategoria INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
valor INT NOT NULL,
desconto  BOOLEAN NOT NULL,
entrega BOOLEAN NOT NULL,
fk_pizza INT NOT NULL,
PRIMARY KEY (idCategoria),
FOREIGN KEY (fk_pizza) REFERENCES tb_pizza (idPizza)
);


INSERT INTO tb_pizza(idPizza, nomePizza, comQueijo, bordaRecheada) VALUES (DEFAULT, "Peperoni", TRUE, FALSE);

INSERT INTO tb_pizza(idPizza, nomePizza, comQueijo, bordaRecheada) VALUES (DEFAULT, "frango catupiry", TRUE, TRUE);

INSERT INTO tb_pizza(idPizza, nomePizza, comQueijo, bordaRecheada) VALUES (DEFAULT, "calabresa", FALSE, FALSE);

INSERT INTO tb_pizza(idPizza, nomePizza, comQueijo, bordaRecheada) VALUES (DEFAULT, "carne seca", FALSE, TRUE);

INSERT INTO tb_pizza(idPizza, nomePizza, comQueijo, bordaRecheada) VALUES (DEFAULT, "Broculis", TRUE, TRUE);




INSERT INTO db_pizzaria_legal.tb_categoria(idCategoria, nome, valor, desconto, entrega, fk_pizza) VALUES (DEFAULT, "Angel", 200, TRUE, TRUE, 2);

INSERT INTO db_pizzaria_legal.tb_categoria(idCategoria, nome, valor, desconto, entrega, fk_pizza) VALUES (DEFAULT, "Pamela", 50, FALSE, TRUE, 5);

INSERT INTO db_pizzaria_legal.tb_categoria(idCategoria, nome, valor, desconto, entrega, fk_pizza) VALUES (DEFAULT, "Cris", 400, TRUE, TRUE, 4);

INSERT INTO db_pizzaria_legal.tb_categoria(idCategoria, nome, valor, desconto, entrega, fk_pizza) VALUES (DEFAULT, "Math", 150, FALSE, FALSE, 1);

INSERT INTO db_pizzaria_legal.tb_categoria(idCategoria, nome, valor, desconto, entrega, fk_pizza) VALUES (DEFAULT, "Pam", 300, TRUE, FALSE, 3);

INSERT INTO db_pizzaria_legal.tb_categoria(idCategoria, nome, valor, desconto, entrega, fk_pizza) VALUES (DEFAULT, "Tam", 80, TRUE, TRUE, 2);

INSERT INTO db_pizzaria_legal.tb_categoria(idCategoria, nome, valor, desconto, entrega, fk_pizza) VALUES (DEFAULT, "Aline", 30, TRUE, TRUE, 1);

INSERT INTO db_pizzaria_legal.tb_categoria(idCategoria, nome, valor, desconto, entrega, fk_pizza) VALUES (DEFAULT, "Angel", 40, FALSE, FALSE, 3);

SELECT * FROM db_pizzaria_legal.tb_categoria WHERE valor > 45;

SELECT * FROM db_pizzaria_legal.tb_categoria WHERE valor <= 60 AND valor >= 29;


SELECT * FROM db_pizzaria_legal.tb_categoria WHERE nome LIKE "%C%";

SELECT * FROM db_pizzaria_legal.tb_pizza WHERE nomePizza LIKE "%C%";

SELECT * FROM db_pizzaria_legal.tb_categoria
	INNER JOIN db_pizzaria_legal.tb_pizza ON tb_pizza.idPizza= tb_categoria.fk_pizza;
    


SELECT * FROM db_pizzaria_legal.tb_categoria
	INNER JOIN db_pizzaria_legal.tb_pizza ON tb_pizza.idPizza= tb_categoria.fk_pizza
    WHERE db_pizzaria_legal.tb_pizza.nomePizza LIKE "%calabresa%";






