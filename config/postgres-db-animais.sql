
CREATE TABLE especies (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) UNIQUE NOT NULL,
	alimentacao VARCHAR(20)
);


CREATE TABLE animais (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	data_nasc DATE NOT NULL,
	peso DECIMAL(10,2) CHECK (peso > 0),
	cor VARCHAR(50),
	especie_id INT REFERENCES especies(id)
);


INSERT INTO especies (nome, alimentacao) VALUES ('gato'			, 'carnívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('cachorro'		, 'carnívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('morcego'		, 'onívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('rato'			, 'onívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('ramister'		, 'herbívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('baleia'			, 'carnívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('sardinha'		, 'herbívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('bacalhau'		, 'herbívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('tubarão'		, 'carnívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('lambari'		, 'herbívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('corvina'		, 'herbívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('iguana'			, 'herbívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('camaleão'		, 'herbívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('lagarto'		, 'herbívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('cobra'			, 'carnívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('cacatua'		, 'herbívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('pardal'			, 'onívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('bentevi'		, 'herbívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('canario'		, 'herbívoro');
INSERT INTO especies (nome, alimentacao) VALUES ('virus'			, null);
INSERT INTO especies (nome, alimentacao) VALUES ('bactéria'		, null);
INSERT INTO especies (nome) VALUES ('barata');
INSERT INTO especies (nome) VALUES ('carcará');
INSERT INTO especies (nome) VALUES ('polvo');
INSERT INTO especies (nome) VALUES ('nautilus');


INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('ágata'		, '2015-4-9', 13.9, 'branco' , 1);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('félix'		, '2016-6-6', 14.3, 'preto'  , 1);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('tom'			, '2013-2-8', 11.2, 'azul'   , 1);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('garfield'	, '2015-7-6', 17.1, 'laranja', 1);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('frajola'		, '2013-8-1', 13.7, 'preto'  , 1);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('manda-chuva'	, '2012-2-3', 12.3, 'amarelo', 1);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('snowball'	, '2014-4-6', 13.2, 'preto'  , 1);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('ágata'		, '2015-8-3', 11.9, 'azul' 	 , 1);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('ágata'		, '2016-3-4', 18.6, 'roxo'  , 1);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('gato de botas', '2012-12-10', 11.6, 'amarelo', 1);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('bola de pelo', '2020-04-06', 11.6, 'amarelo', 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('milu'		, '2013-2-4', 17.9, 'branco'  , 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('pluto'		, '2012-1-3', 12.3, 'amarelo' , 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('pateta'		, '2015-5-1', 17.7, 'preto'   , 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('snoopy'		, '2013-7-2', 18.2, 'branco'  , 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('bidu'		, '2012-9-8', 12.4, 'azul'    , 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('dum dum'		, '2015-4-6', 11.2, 'laranja' , 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('muttley'		, '2011-2-3', 14.3, 'laranja' , 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('scooby'		, '2012-1-2', 19.9, 'marrom'  , 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('rufus'		, '2014-4-5', 19.7, 'branco'  , 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('costelinha'	, '2016-5-2', 13.4, 'branco'  , 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('coragem'		, '2013-7-8', 12.2, 'vermelho', 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('jake'		, '2012-2-7', 11.6, 'vermelho', 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('k900'		, '2012-11-25', 11.6, 'amarelo', 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('gato de botas', '2012-11-25', 11.6, 'amarelo', 2);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('jerry'		, '2010-2-4', 06.6, 'laranja', 4);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('ligeirinho'	, '2011-5-3', 04.4, 'amarelo', 4);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('mikey'		, '2012-7-1', 02.2, 'preto'  , 4);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('minie'		, '2013-9-3', 03.2, 'preta'  , 4);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('topo gigio'	, '2016-6-8', 05.5, 'amarelo', 4);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('bafo de onça', '2016-6-8', 05.5, 'amarelo', null);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('susan murphy', '2016-6-8', 05.5, 'amarelo', null);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('insectosauro', '2016-6-8', 05.5, 'amarelo', null);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('gallaxhar'   , '2016-6-8', 05.5, 'amarelo', null);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('hathaway'    , '2016-6-8', 05.5, 'amarelo', null);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('tutubarão'	, '2010-2-6', 101.9 , 'branca' , 9);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('prof. pardal', '2012-4-4', 1.7   , 'amarelo', 17);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('mobie'		, '2014-5-2', 5069.4, 'branca' , 6);
INSERT INTO animais (nome, data_nasc, peso, cor, especie_id) VALUES ('batman'		, '2013-7-1', 96.1  , 'preto'  , 3);

