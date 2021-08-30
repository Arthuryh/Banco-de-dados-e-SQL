/*EXERCICIO LIVRARIA (CURSO COMPLETO DE MYSQL - VERSÃO 3.0)
Aluno: Arthur Yoshio Hayakawa 

FASE CONCEITUAL

DATABASE: LIVRARIA

TABLE: LIVROS

NOME DO LIVRO   		-   nm_livro
NOME DO AUTOR			-	nm_autor
SEXO DO AUTOR			-	genero_autor
NUMERO DE PAGINAS		-	num_paginas
NOME DA EDITORA			-	nm_editora
VALOR DO LIVRO			-	dsc_vl_livro
ESTADO (UF) DA EDITORA		-	uf_editora
ANO PUBLICACAO			-	ano_publicacao 

FASE LÓGICA */

CREATE DATABASE LIVRARIA; /* CRIAÇÃO DO BANCO*/

USE LIVRARIA; /* CONECTANDO-SE AO BANCO*/

/* CRIAÇÃO DA ENTIDADE E SEUS ATRIBUTOS */
CREATE TABLE LIVROS (
	nm_livro VARCHAR(100),
	nm_autor VARCHAR(100),
	sx_autor CHAR(1),
	num_paginas INT(5),
	nm_editora VARCHAR(30),
	dsc_vl_livro FLOAT(10,2),
	uf_editora CHAR(2),
	ano_publicacao INT(4)
);

/* POPULANDO A TABELA MÉTODO 1*/
INSERT INTO LIVROS VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);

INSERT INTO LIVROS VALUES('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);

INSERT INTO LIVROS VALUES('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);

INSERT INTO LIVROS VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78.99,'RJ',2018);

INSERT INTO LIVROS VALUES('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ',2019);

INSERT INTO LIVROS VALUES('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);

INSERT INTO LIVROS VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);

INSERT INTO LIVROS VALUES('Pra sempre amigas','Leda Silva','F',510,'Insignia',78.98,'ES',2011);

INSERT INTO LIVROS VALUES('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130.98,'RS',2018);

INSERT INTO LIVROS VALUES('O poder da mente','Clara Mafra','F',120,'Continental',56.58,'SP',2017);

/* POPULANDO A TABELA MÉTODO 2
INSERT INTO LIVROS VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009),('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018),('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008),('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78.99,'RJ',2018),('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ',2019),('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016),('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015),('Pra sempre amigas','Leda Silva','F',510,'Insignia',78.98,'ES',2011),('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130.98,'RS',2018),('O poder da mente','Clara Mafra','F',120,'Continental',56.58,'SP',2017); */

/*QUERIES SOLICITADAS NO EXERCICIO
1 – Trazer todos os dados.*/
SELECT * FROM LIVROS;

/*2 – Trazer o nome do livro e o nome da editora*/
SELECT nm_livro, nm_editora 
FROM LIVROS; 

/*3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.*/
SELECT nm_livro, uf_editora 
FROM LIVROS 
WHERE sx_autor = 'M';

/*4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.*/
SELECT nm_livro, num_paginas 
FROM LIVROS 
WHERE sx_autor = 'F';

/*5 – Trazer os valores dos livros das editoras de São Paulo.*/
SELECT dsc_vl_livro 
FROM LIVROS 
WHERE uf_editora = 'SP';

/*6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).*/
SELECT nm_autor, sx_autor, uf_editora 
FROM LIVROS 
WHERE sx_autor = 'M' 
AND uf_editora = 'SP'  
OR sx_autor = 'M' 
AND uf_editora = 'RJ';