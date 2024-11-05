-- queries de análise


-- Agrupamento de vendas por estado

SELECT estado, SUM(preco*quantidade) FROM 
fato_vendas
JOIN dimensao_loja ON dimensao_loja.loja_id = fato_vendas.loja_id
GROUP BY estado;

-- drill down: Colocar mais uma coluna de agrupamento
-- Agrupar vendas totais por estado e categoria

SELECT estado, categoria, SUM(preco*quantidade) FROM 
fato_vendas
JOIN dimensao_loja ON dimensao_loja.loja_id = fato_vendas.loja_id
GROUP BY estado, categoria;


-- drill down com categorias de 2 dimensões
-- agrupar vendas por tipo de pagamento e marca

SELECT marca, pagamento_tipo, SUM(preco*quantidade) FROM 
fato_vendas
JOIN dimensao_produto ON dimensao_produto.produto_id = fato_vendas.produto_id
JOIN dimensao_pagamento ON dimensao_pagamento.pagamento_id = fato_vendas.pagamento_id
GROUP BY marca, pagamento_tipo;


-- Agrupar com categorias de 3 dimensoes
-- agrupar vendas por Trimestre, Marca e Estado

SELECT trimestre,marca,estado, SUM(preco*quantidade) FROM 
fato_vendas
JOIN dimensao_produto ON dimensao_produto.produto_id = fato_vendas.produto_id
JOIN dimensao_loja ON dimensao_loja.loja_id = fato_vendas.loja_id
JOIN dimensao_data ON dimensao_data.data_id = fato_vendas.data_id
GROUP BY trimestre,marca,estado;
