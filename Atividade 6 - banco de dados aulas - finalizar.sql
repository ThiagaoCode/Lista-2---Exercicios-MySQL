CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
idCategoria INT NOT NULL AUTO_INCREMENT,
presencial BOOLEAN NOT NULL,
on_line BOOLEAN NOT NULL,
PRIMARY KEY (idCategoria)
);

CREATE TABLE tb_curso(
idCurso INT NOT NULL AUTO_INCREMENT,
nomeCurso VARCHAR(255) NOT NULL,
valor INT NOT NULL,
certificado BOOLEAN,
fk_idCategoria INT NOT NULL,
PRIMARY KEY (idCurso),
FOREIGN KEY (fk_idCategoria) REFERENCES tb_categoria(idCategoria)
);


INSERT INTO tb_categoria(idCategoria, presencial, on_line) VALUES (DEFAULT, TRUE, TRUE);
INSERT INTO tb_categoria(idCategoria, presencial, on_line) VALUES (DEFAULT, TRUE, FALSE);
INSERT INTO tb_categoria(idCategoria, presencial, on_line) VALUES (DEFAULT, FALSE, TRUE);

INSERT INTO db_cursoDaMinhaVida.tb_curso(idCurso, nomeCurso, valor, certificado, fk_idCategoria) VALUES (DEFAULT, "Desenvolvedor Fullstack", 2000, TRUE, 1);
INSERT INTO tb_curso(idCurso, nomeCurso, valor, certificado, fk_idCategoria) VALUES (DEFAULT, "Desenvolvedor Fullstack", 2000, TRUE, 2);
INSERT INTO tb_curso(idCurso, nomeCurso, valor, certificado, fk_idCategoria) VALUES (DEFAULT, "Desenvolvedor Fullstack", 2000, TRUE, 3);
INSERT INTO tb_curso(idCurso, nomeCurso, valor, certificado, fk_idCategoria) VALUES (DEFAULT, "Vendas online", 40, FALSE, 3);
INSERT INTO tb_curso(idCurso, nomeCurso, valor, certificado, fk_idCategoria) VALUES (DEFAULT, "Vendas online", 30, FALSE, 2);
INSERT INTO tb_curso(idCurso, nomeCurso, valor, certificado, fk_idCategoria) VALUES (DEFAULT, "Desenolvedor Back end", 700, TRUE, 3);
INSERT INTO tb_curso(idCurso, nomeCurso, valor, certificado, fk_idCategoria) VALUES (DEFAULT, "Desenolvedor Back end", 1000, TRUE, 1);
INSERT INTO tb_curso(idCurso, nomeCurso, valor, certificado, fk_idCategoria) VALUES (DEFAULT, "Desenolvedor front end", 1500, TRUE, 1);

SELECT * FROM tb_curso WHERE valor > 50;

SELECT * FROM tb_curso WHERE valor <= 60 AND valor >= 3;

SELECT * FROM tb_curso WHERE nomeCurso LIKE "%R%"; #Utilizei a letra R já que não haviam dados com a letra J

SELECT * FROM tb_curso
	INNER JOIN tb_categoria ON tb_categoria.idCategoria= tb_curso.fk_idCategoria;
    

SELECT * FROM tb_curso
	INNER JOIN tb_categoria ON tb_categoria.idCategoria= tb_curso.fk_idCategoria
WHERE tb_categoria.on_line LIKE TRUE;


SELECT * FROM tb_curso
	INNER JOIN tb_categoria ON tb_categoria.idCategoria= tb_curso.fk_idCategoria
WHERE tb_categoria.on_line LIKE FALSE;




