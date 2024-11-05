
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
	descricao VARCHAR(200),
	categoria VARCHAR(50),
	marca VARCHAR(50) NOT NULL,
);

CREATE TABLE dimensao_loja (
	loja_id SERIAL PRIMARY KEY,
	cidade VARCHAR(100) NOT NULL,
	estado VARCHAR(50)  NOT NULL,
	categoria VARCHAR(20),
	porte VARCHAR(20),
	franqueada BOOLEAN
);


CREATE TABLE dimensao_data (
	data_id SERIAL PRIMARY KEY,
	data_venda DATE NOT NULL,
	dia_semana INT NOT NULL,
	mes INT NOT NULL,
	semestre INT NOT NULL,
	trimestre INT NOT NULL,
	ano INT NOT NULL
);


CREATE TABLE dimensao_pagamento (
	pagamento_id SERIAL PRIMARY KEY,
	pagamento_tipo VARCHAR(100) NOT NULL,
	descricao_tipo VARCHAR(200) NOT NULL
);
