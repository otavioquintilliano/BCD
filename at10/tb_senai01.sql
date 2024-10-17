DROP DATABASE IF EXISTS db_senai;

CREATE DATABASE IF NOT EXISTS db_senai;

USE db_senai;

CREATE TABLE IF NOT EXISTS tb_aluno(
id_aluno INT PRIMARY KEY AUTO_INCREMENT,
nome_aluno VARCHAR(45) NULL,
nascimeto DATE,
sexo ENUM('M','F'),
peso DECIMAL(5,2),
altura DECIMAL(3,2),
nacionalidade VARCHAR(20) DEFAULT 'BRASILEIRA'  
);



DESC tb_aluno;

INSERT INTO tb_aluno(nome_aluno, nascimeto, sexo, peso, altura, nacionalidade)
VALUES 
('Leandromeda Rosa', '1919-02-15','M',75.45,1.15, 'ITALIANA');


INSERT INTO tb_aluno(id_aluno,nome_aluno,nascimeto, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Pedro Francisco', '2001-09-11','M', 55.1, 1.92, 'francesa');

INSERT INTO tb_aluno VALUES 
(DEFAULT, 'Murilo de Prata', '1998-04-03', 'M', 65.9,1.78,'Francesa'), 
(DEFAULT, 'Otavio Agapito', '1994-03-24','F',32.0,0.99,'Paquistanesa');

SELECT * FROM   tb_aluno;

UPDATE tb_aluno 
SET nome_aluno = 'Dias'
WHERE id_aluno = 3;

UPDATE tb_aluno
SET nome_aluno = 'MaFer', nascimeto = '2001-09-11', sexo = 'F', nacionalidade = 'Croata'
WHERE id_aluno = 1;

SELECT * FROM tb_aluno;

UPDATE tb_alunos
SET nome_aluno = 'Bruneca'
WHERE altura = 1.15;

SELECT * FROM tb_aluno;

UPDATE tb_aluno
SET nome_aluno = 'Filho'
WHERE altura = 1.15
LIMIT 2;


DELETE FROM tb_aluno
WHERE id_aluno = 8;

DELETE FROM tb_aluno
WHERE altura = 1.15
LIMIT 4;

TRUNCATE TABLE tb_aluno;

