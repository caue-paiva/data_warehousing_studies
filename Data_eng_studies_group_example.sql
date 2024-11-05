

CREATE TABLE fato_vendas (
 id_venda SERIAL  PRIMARY KEY,
 
 produto_id INT,
 CONSTRAINT produto_fk FOREIGN KEY produto_id REFERENCES dimensao_produto(produto_id),
 
 loja_id INT,
 CONSTRAINT loja_fk FOREIGN KEY loja_id REFERENCES dimensao_loja(loja_id)
 
 data_id INT,
 CONSTRAINT data_fk  FOREIGN KEY data_id REFERENCES dimensao_data(data_id)

 pagamento_id INT,
 CONSTRAINT pagamento_fk FOREIGN KEY pagamento_id REFERENCES dimensao_pagamento(pagamento_id),

 quantidade INT NOT NULL,
 preco DECIMAL(10,2) NOT NULL
);




CREATE TABLE dimensao_produto (
	produto_id SERIAL  PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	descricao VARCHAR(200) NOT NULL,
	categoria VARCHAR(50) NOT NULL,
	marca VARCHAR(50) NOT NULL,
);

CREATE TABLE dimensao_loja (
	loja_id SERIAL PRIMARY KEY,
	cidade VARCHAR(100) NOT NULL,
	estado VARCHAR(50)  NOT NULL,
	categoria VARCHAR(20)  NOT NULL,
	porte VARCHAR(20)  NOT NULL,
	franqueada BOOLEAN  NOT NULL
);


CREATE TABLE dimensao_data (
	data_id SERIAL PRIMARY KEY,
	data ,
	dia_semana,
	mes INT,
	semestre INT,
	trimestre INT,
	ano INT NOT NULL
);


CREATE TABLE dimensao_pagamento (
	pagamento_id SERIAL PRIMARY KEY,
	pagamento_tipo ,
	descricao_tipo VARCHAR(200) NOT NULL
);
