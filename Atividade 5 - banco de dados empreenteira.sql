CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria (
idCategoria INT NOT NULL AUTO_INCREMENT,
contrucao BOOLEAN NOT NULL,
pintura BOOLEAN NOT NULL,
PRIMARY KEY (idCategoria)
);

CREATE TABLE tb_produto(
idProduto INT NOT NULL AUTO_INCREMENT,
especificidade VARCHAR(255) NOT NULL,
valor INT NOT NULL,
atendimentoFuncionario VARCHAR (255),
fk_idCategoria INT NOT NULL,
PRIMARY KEY (idProduto),
FOREIGN KEY (fk_idCategoria) REFERENCES tb_categoria(idCategoria)
);

INSERT INTO tb_categoria(idCategoria, contrucao, pintura) VALUES (DEFAULT, TRUE, TRUE);
INSERT INTO tb_categoria(idCategoria, contrucao, pintura) VALUES (DEFAULT, TRUE, FALSE);
INSERT INTO tb_categoria(idCategoria, contrucao, pintura) VALUES (DEFAULT, FALSE, FALSE);
INSERT INTO tb_categoria(idCategoria, contrucao, pintura) VALUES (DEFAULT, FALSE, TRUE);


INSERT INTO tb_produto(idProduto, especificidade, valor, atendimentoFuncionario, fk_idCategoria) VALUES (DEFAULT, "pitura no banheiro", 1000, "Rebeca", 4);
INSERT INTO tb_produto(idProduto, especificidade, valor, atendimentoFuncionario, fk_idCategoria) VALUES (DEFAULT, "contruir churrasqueira", 4000, "Vicent", 1);
INSERT INTO tb_produto(idProduto, especificidade, valor, atendimentoFuncionario, fk_idCategoria) VALUES (DEFAULT, "arrumar luz", 40, "Pam", 2);
INSERT INTO tb_produto(idProduto, especificidade, valor, atendimentoFuncionario, fk_idCategoria) VALUES (DEFAULT, "orcamento obra", 1000, "Thales", 3);
INSERT INTO tb_produto(idProduto, especificidade, valor, atendimentoFuncionario, fk_idCategoria) VALUES (DEFAULT, "pitura do quarto", 1000, "Rebeca", 4);
INSERT INTO tb_produto(idProduto, especificidade, valor, atendimentoFuncionario, fk_idCategoria) VALUES (DEFAULT, "contruir guarda roupa", 2000, "Vicent", 1);
INSERT INTO tb_produto(idProduto, especificidade, valor, atendimentoFuncionario, fk_idCategoria) VALUES (DEFAULT, "arrumar box banheiro", 20, "Pam", 2);
INSERT INTO tb_produto(idProduto, especificidade, valor, atendimentoFuncionario, fk_idCategoria) VALUES (DEFAULT, "orcamento obra", 10000, "Nelsin", 3);



SELECT * FROM tb_produto WHERE valor > 50;

SELECT * FROM tb_produto WHERE valor <= 60 AND valor >= 3;

SELECT * FROM tb_produto WHERE especificidade LIKE "%C%";

SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.idCategoria= tb_produto.fk_idCategoria;
    
    
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.idCategoria= tb_produto.fk_idCategoria
WHERE tb_categoria.contrucao LIKE TRUE;

SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.idCategoria= tb_produto.fk_idCategoria
WHERE tb_categoria.contrucao LIKE FALSE;


