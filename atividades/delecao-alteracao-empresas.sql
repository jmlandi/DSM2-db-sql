-- Selecione quantos produtos cada marca possui
SELECT
	m.nome_marca,
	COUNT(p.prod_id) AS total_produtos
FROM produtos p
INNER JOIN marcas m USING(marca_id)
GROUP BY 1
ORDER BY 2 DESC;


-- Selecione o preço médio dos produtos de cada marca
SELECT
	m.nome_marca,
	ROUND(AVG(p.valor), 2) AS total_produtos
FROM produtos p
INNER JOIN marcas m USING(marca_id)
GROUP BY 1
ORDER BY 2 DESC;

-- Selecione a média dos preços e total em estoque dos produtos agrupados por marca
SELECT
	m.nome_marca,
	SUM(p.qtd_estoque) AS total_estoque,
	ROUND(AVG(p.valor), 2) AS total_produtos
FROM produtos p
INNER JOIN marcas m USING(marca_id)
GROUP BY 1
ORDER BY 2 DESC;

-- Selecione quantos produtos estão cadastrados
SELECT COUNT(DISTINCT prod_id) AS total_cadastros FROM produtos;

-- Selecione o preço médio dos produtos
SELECT ROUND(AVG(valor),2) AS preco_medio FROM produtos;

-- Selecione a média dos preços dos produtos em 2 grupos: perecíveis e não perecíveis
SELECT
	CASE
		WHEN perecivel IS TRUE
		THEN 'Perecível'
		ELSE 'Não Perecível'
	END AS qualidade,
	ROUND(AVG(valor),2) AS valor_medio
FROM produtos
GROUP BY 1;

-- Selecione a média dos preços dos produtos agrupados pelo nome do produto
SELECT
	nome_prod,
	ROUND(AVG(valor),2) AS valor_medio
FROM produtos
GROUP BY 1;

-- Selecione a média dos preços e total em estoque dos produtos
SELECT
	ROUND(AVG(valor),2) AS media_preco,
	SUM(qtd_estoque) AS total_Estoque
FROM produtos;

-- Selecione o nome, marca e quantidade em estoque do produto mais caro
SELECT 
	p.nome_prod,
	m.nome_marca,
	p.qtd_estoque
FROM produtos p
INNER JOIN marcas m USING(marca_id)
ORDER BY p.valor DESC
LIMIT 1;

-- Selecione os produtos com preço acima da média
SELECT * FROM produtos
WHERE valor > (SELECT AVG(valor) FROM produtos);

-- Selecione a quantidade de produtos de cada nacionalidade
SELECT
	m.origem,
	COUNT(DISTINCT p.prod_id) AS total_produtos
FROM produtos p
INNER JOIN marcas m USING(marca_id)
GROUP BY 1
ORDER BY 2 DESC;
