
-- inserir dados na tabela de dimensao de produto

INSERT INTO dimensao_produto (nome, descricao, categoria, marca) VALUES
('Ultra HD 4K TV', '55-inch Ultra HD 4K television', 'Electronics', 'Samsung'),
('Bluetooth Speaker', 'Portable Bluetooth speaker with deep bass', 'Electronics', 'JBL'),
('Stainless Steel Refrigerator', 'Double-door stainless steel refrigerator', 'Home Appliances', 'LG'),
('Noise Cancelling Headphones', 'Wireless noise-cancelling over-ear headphones', 'Electronics', 'Sony'),
('Gaming Laptop', '15-inch gaming laptop with RTX graphics card', 'Computers', 'Dell'),
('Air Purifier', 'HEPA-certified air purifier for home use', 'Home Appliances', 'Philips'),
('Office Chair', 'Ergonomic office chair with adjustable height', 'Furniture', 'HermanMiller'),
('Smart Watch', 'Fitness tracking smart watch with GPS', 'Wearables', 'Apple'),
('Blender', 'High-power blender for smoothies and sauces', 'Kitchen Appliances', 'NutriBullet'),
('DSLR Camera', '24.2 MP DSLR camera with zoom lens', 'Cameras', 'Canon');



SELECT * FROM dimensao_produto;

-- inserir dados na tabela de dimensao de loja

INSERT INTO dimensao_loja (cidade, estado, categoria, porte, franqueada) VALUES
('São Paulo', 'São Paulo', 'Electronics', 'Large', TRUE),
('Rio de Janeiro', 'Rio de Janeiro', 'Clothing', 'Medium', FALSE),
('Belo Horizonte', 'Minas Gerais', 'Grocery', 'Small', TRUE),
('Porto Alegre', 'Rio Grande do Sul', 'Electronics', 'Large', FALSE),
('Curitiba', 'Paraná', 'Furniture', 'Medium', TRUE),
('Salvador', 'Bahia', 'Grocery', 'Large', FALSE),
('Fortaleza', 'Ceará', 'Clothing', 'Small', TRUE),
('Brasília', 'Distrito Federal', 'Electronics', 'Medium', FALSE),
('Manaus', 'Amazonas', 'Home Appliances', 'Large', TRUE),
('Recife', 'Pernambuco', 'Furniture', 'Medium', FALSE);


SELECT * FROM dimensao_loja;

-- inserir dados na tabela de dimensao de data

INSERT INTO dimensao_data (data_venda, dia_semana, mes, semestre, trimestre, ano) VALUES
('2024-01-05', 5, 1, 1, 1, 2024),
('2024-02-14', 3, 2, 1, 1, 2024),
('2024-03-21', 4, 3, 1, 1, 2024),
('2024-04-01', 1, 4, 1, 2, 2024),
('2024-05-15', 3, 5, 1, 2, 2024),
('2024-06-30', 7, 6, 1, 2, 2024),
('2024-07-04', 5, 7, 2, 3, 2024),
('2024-08-23', 6, 8, 2, 3, 2024),
('2024-09-10', 2, 9, 2, 3, 2024),
('2024-10-19', 7, 10, 2, 4, 2024);

SELECT * FROM dimensao_data;

-- inserir dados na tabela de dimensao de pagamento

INSERT INTO dimensao_pagamento (pagamento_tipo, descricao_tipo) VALUES
('Credit Card', 'Payment made using a credit card'),
('Debit Card', 'Payment made using a debit card'),
('Cash', 'Payment made in cash'),
('Bank Transfer', 'Payment made via direct bank transfer'),
('Digital Wallet', 'Payment made using a digital wallet (e.g., PayPal)'),
('Gift Card', 'Payment made using a store gift card'),
('Buy Now, Pay Later', 'Payment plan for later payment (e.g., Klarna)'),
('Cryptocurrency', 'Payment made using cryptocurrency'),
('Mobile Payment', 'Payment made via mobile (e.g., Apple Pay, Google Pay)'),
('Store Credit', 'Payment using store-specific credit');


SELECT * FROM dimensao_pagamento;

--inserir dados na tabela de fato

INSERT INTO fato_vendas (produto_id, loja_id, data_id, pagamento_id, quantidade, preco) VALUES
(1, 1, 1, 1, 3, 1299.99),
(2, 2, 2, 3, 1, 79.99),
(3, 3, 3, 2, 2, 799.99),
(4, 4, 4, 4, 5, 199.99),
(5, 5, 5, 5, 1, 1199.99),
(6, 6, 6, 6, 6, 149.99),
(7, 7, 7, 7, 7, 349.99),
(8, 8, 8, 8, 3, 299.99),
(9, 9, 9, 9, 9, 89.99),
(10, 10, 10, 10, 10, 499.99);



SELECT * FROM fato_vendas;
