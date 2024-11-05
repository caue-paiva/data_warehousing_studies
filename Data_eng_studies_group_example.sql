

CREATE TABLE fato_vendas (
 id_venda SERIAL  PRIMARY KEY,
 local_venda INT FOREIGN KEY REFERENCES()
);



CREATE TABLE dimensao_local (
	id_local SERIAL  PRIMARY KEY,
	cidade VARCHAR(100),
	estado VARCHAR(50),
	pais VARCHAR(50),
	continente VARCHAR(20),
);


CREATE TABLE dimensao_produto (
	id_produto SERIAL  PRIMARY KEY,
	nome VARCHAR(100),
	descricao VARCHAR(200),
	categoria VARCHAR(50),
	marca VARCHAR(50),
)

CREATE TABLE dimensao_loja (
	id_loja SERIAL PRIMARY KEY,
	cidade 







CREATE TABLE fato_vendas (
 id_venda SERIAL INT PRIMARY KEY,
 local_venda INT FOREIGN KEY REFERENCES()
);



CREATE TABLE dimensao_local (
	id_local SERIAL INT PRIMARY KEY,
	cidade VARCHAR(100),
	estado VARCHAR(50),
	pais VARCHAR(50),
	continente VARCHAR(20),
);


CREATE TABLE dimensao_produto (
	id_produto SERIAL INT PRIMARY KEY,
	nome VARCHAR(100),
	descricao VARCHAR(200),
	categoria VARCHAR(50),
	marca VARCHAR(50),
)

CREATE TABLE dimensao_loja (
	id_loja SERIAL INT PRIMARY KEY,
	cidade 

)
