/*
[ PRATICANDO JOIN ]
Nessa atividade você deverá enviar um arquivo PDF contendo os exercícios abaixo e
um print do código SQL e o resultado após a execução do código para cada um dos itens abaixo.
*/

--  1. Selecione o nome e a espécie de todos os animais
SELECT
	a.nome,
	e.nome
FROM animais a
LEFT JOIN especies e
	ON e.id = a.especie_id;
​
--  2. Selecione todos os gatos laranja
SELECT
	a.nome,
	e.nome AS especie,
	a.cor
FROM animais a
INNER JOIN especies e
	ON e.id = a.especie_id
WHERE a.cor = 'laranja'
	AND e.nome = 'gato';
​
--  3. Selecione todos os cachorros da cor amarelo
SELECT
	a.nome,
	e.nome AS especie,
	a.cor
FROM animais a
INNER JOIN especies e
	ON e.id = a.especie_id
WHERE a.cor = 'amarelo'
	AND e.nome = 'cachorro';
​
--  4. Selecione todos os animais aquáticos que pesam mais que 70 Kg
SELECT
	a.*
FROM especies e
INNER JOIN animais a
	ON a.especie_id = e.id
WHERE e.id IN (6,7,8,9,10,11,24,25)
	AND a.peso > 70;
​
--  5. Selecione todos os herbívoro ordenados pelos mais pesados​
SELECT
	a.*,
	e.alimentacao
FROM animais a
INNER JOIN especies e
	ON e.id = a.especie_id
WHERE e.alimentacao = 'herbívoro'
ORDER BY a.peso DESC;

--  6. Selecione todos os carnívoro que são pretos e brancos
SELECT
	a.*,
	e.alimentacao
FROM animais a
INNER JOIN especies e
	ON e.id = a.especie_id
WHERE a.cor IN ('preto', 'branco')
	AND e.alimentacao = 'carnívoro';
​
--  7. Selecione todos os onívoros que nasceram antes de 2013​
SELECT
	a.*,
	e.alimentacao
FROM animais a
INNER JOIN especies e
	ON e.id = a.especie_id
WHERE e.alimentacao = 'onívoro'
	AND a.data_nasc < '2013-01-01';

--  8. Selecione todos os mamíferos que pesam mais que 10 quilos e são marrons ou azul​
SELECT
	a.nome,
	a.peso,
	a.cor,
	e.nome AS especie,
	e.alimentacao
FROM animais a
INNER JOIN especies e
	ON e.id = a.especie_id
WHERE e.id IN (1, 2, 3, 4, 5, 6) -- Id mamíferos
	AND a.cor IN ('marrom', 'azul')
	AND a.peso > 10;

--  9. Selecione a quantidade total de animais
SELECT COUNT(id) AS total FROM animais;
​
-- 10. Se somarmos os pesos de todos os gatos, qual será o resultado?
SELECT
	SUM(a.peso) AS peso_total_gatos
FROM animais a
INNER JOIN especies e
	ON e.id = a.especie_id
WHERE e.nome = 'gato';
