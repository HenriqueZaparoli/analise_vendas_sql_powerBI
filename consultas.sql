-- Visualizando as 5 primeiras linhas 
SELECT * FROM vendas LIMIT 5;


-- Análise por quantidade 
-- Top 5 Estados com maior número de vendas 
SELECT estado, SUM(quantidade) AS vendas_por_estado
FROM vendas
GROUP BY estado
ORDER BY vendas_por_estado DESC
LIMIT 5;


-- Top 5 regiões com maior número de vendas 
SELECT regiao, SUM(quantidade) AS vendas_por_regiao
FROM vendas
GROUP BY regiao
ORDER BY vendas_por_regiao DESC
LIMIT 5;


-- formato de pagamento com maior número de vendas
SELECT forma_pagamento, SUM(quantidade) AS vendas_por_pagamento
FROM vendas
GROUP BY forma_pagamento
ORDER BY vendas_por_pagamento DESC;


-- Top 5 datas com maior número de vendas
SELECT data_venda, SUM(quantidade) AS vendas_por_data
FROM vendas
GROUP BY data_venda
ORDER BY vendas_por_data DESC
LIMIT 5;


-- categoria com maior número de vendas
SELECT categoria, SUM(quantidade) AS vendas_por_categoria
FROM vendas
GROUP BY categoria
ORDER BY vendas_por_categoria DESC;


-- Top 5 produtos com maior número de vendas
SELECT produto, SUM(quantidade) AS vendas_por_produto
FROM vendas
GROUP BY produto
ORDER BY vendas_por_produto DESC;



-- Análise por faturamento
-- Top 5 Estados com maior faturamento 
SELECT estado, SUM(preco_unitario*quantidade) AS faturamento_por_estado
FROM vendas
GROUP BY estado
ORDER BY faturamento_por_estado DESC
LIMIT 5;


-- Top 5 regiões com maior faturamento 
SELECT regiao, SUM(preco_unitario*quantidade) AS faturamento_por_regiao
FROM vendas
GROUP BY regiao
ORDER BY faturamento_por_regiao DESC
LIMIT 5;


-- formato de pagamento com maior faturamento
SELECT forma_pagamento, SUM(preco_unitario*quantidade) AS faturamento_por_pagamento
FROM vendas
GROUP BY forma_pagamento
ORDER BY faturamento_por_pagamento DESC;


-- Top 5 datas com maior faturamento
SELECT data_venda, SUM(preco_unitario*quantidade) AS faturamento_por_data
FROM vendas
GROUP BY data_venda
ORDER BY faturamento_por_data DESC
LIMIT 5;


-- categoria com maior faturamento
SELECT categoria, SUM(preco_unitario*quantidade) AS faturamento_por_categoria
FROM vendas
GROUP BY categoria
ORDER BY faturamento_por_categoria DESC;


-- Top 5 produtos com maior faturamento
SELECT produto, SUM(preco_unitario*quantidade) AS faturamento_por_produto
FROM vendas
GROUP BY produto
ORDER BY faturamento_por_produto DESC
LIMIT 5;


-- Top 5 clientes com mais compras
SELECT cliente, SUM(quantidade) as qtd_compras_cliente
FROM vendas
GROUP BY cliente
ORDER BY qtd_compras_cliente DESC
LIMIT 5;


--Top 5 vendedores com mais vendas
SELECT vendedor, SUM(quantidade) AS vendas_por_vendedor
FROM vendas
GROUP BY vendedor
ORDER BY vendas_por_vendedor DESC
LIMIT 5;


-- Analisando o status das vendas
SELECT status, SUM(quantidade) AS vendas_por_status
FROM vendas
GROUP BY status
ORDER BY vendas_por_status DESC;




