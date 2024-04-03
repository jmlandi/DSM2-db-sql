
-- Altere o nome do Pateta para Goofy;
UPDATE animais
SET nome = 'Goofy'
WHERE nome = 'pateta';

SELECT * FROM animais
WHERE nome = 'Goofy';

-- Altere o peso do Garfield para 10 quilogramas
UPDATE animais
SET peso = 10.0
WHERE nome = 'garfield';

SELECT * FROM animais
WHERE nome = 'garfield';


-- Altere a cor de todos os gatos para laranja
UPDATE animais
SET cor = 'laranja'
WHERE especie_id = 1;

SELECT * FROM animais
WHERE especie_id = 1;

-- Crie um campo altura para os animais
ALTER TABLE animais
ADD altura FLOAT;

SELECT * FROM animais
LIMIT 5;

-- Crie um campo observação para os animais
ALTER TABLE animais
ADD observacoes VARCHAR(255);

SELECT observacoes FROM animais
LIMIT 5;

-- Remova todos os animais que pesam mais que 200 quilogramas.
DELETE FROM animais
WHERE peso > 200;

SELECT * FROM animais
WHERE peso > 200;

-- Remova todos os animais que o nome inicie com a letra ‘C’.
DELETE FROM animais
WHERE nome iLIKE 'c%';

SELECT * FROM animais
WHERE nome iLIKE 'c%';

-- Remova o campo cor dos animais
ALTER TABLE animais
DROP cor;

SELECT * FROM animais
LIMIT 5;

-- Aumente o tamanho do campo nome dos animais para 80 caracteres
ALTER TABLE animais
ALTER COLUMN nome TYPE VARCHAR(80);

SELECT * FROM animais
LIMIT 5;

-- Remova todos os gatos e cachorros
DELETE FROM animais
WHERE especie_id IN (1, 2);

SELECT * FROM animais
WHERE especie_id IN (1, 2);

-- Remova o campo data de nascimento dos animais
ALTER TABLE animais
DROP data_nasc;

SELECT * FROM animais
LIMIT 5;

-- Remova a tabela espécies
DROP TABLE especies CASCADE;

-- Remova todos os animais
DELETE FROM animais;

SELECT * FROM animais;

