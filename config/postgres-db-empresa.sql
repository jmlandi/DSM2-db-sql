CREATE TABLE marcas (
	marca_id SERIAL PRIMARY KEY,
	nome_marca VARCHAR(50) NOT NULL,
	origem VARCHAR(50)
);

CREATE TABLE produtos (
	prod_id SERIAL PRIMARY KEY,
	nome_prod VARCHAR(50) NOT NULL,
	qtd_estoque INT NOT NULL DEFAULT 0,
	estoque_mim INT NOT NULL DEFAULT 0,
	data_fabricacao TIMESTAMP WITHOUT TIME ZONE DEFAULT now(),
	perecivel BOOLEAN,
	valor DECIMAL(10,2),
	marca_id INT REFERENCES marcas(marca_id)
);

CREATE TABLE fornecedores (
	forn_id SERIAL PRIMARY KEY,
	nome_forn VARCHAR(50) NOT NULL,
	email VARCHAR(50)
);

CREATE TABLE produto_fornecedor (
	prod_id INT NOT NULL REFERENCES produtos(prod_id),
	forn_id INT NOT NULL REFERENCES fornecedores(forn_id),
	PRIMARY KEY (prod_id, forn_id)
);


INSERT INTO fornecedores (nome_forn, email) VALUES ('Los Pollos Hermanos'       ,'frig@pollos.com.mx');
INSERT INTO fornecedores (nome_forn, email) VALUES ('Umbrella Corporation'      ,'umbrella@umbrella.com.ca');
INSERT INTO fornecedores (nome_forn, email) VALUES ('UAC'                       ,'uac@uac.com.mars.dm');
INSERT INTO fornecedores (nome_forn, email) VALUES ('Huey Materiais Escolares'  ,'huey@duck.com.us');
INSERT INTO fornecedores (nome_forn, email) VALUES ('Dewey Materiais Escolares' ,'dewey@duck.com.us');
INSERT INTO fornecedores (nome_forn, email) VALUES ('Louie Materiais Escolares' ,'louie@duck.com.us');
INSERT INTO fornecedores (nome_forn, email) VALUES ('New Informática'           ,'ni@newinf.com.br');
INSERT INTO fornecedores (nome_forn, email) VALUES ('Meio Bit TI'               ,'meiobit@bitbit.com.br');
INSERT INTO fornecedores (nome_forn, email) VALUES ('Ze Faisca SA'              ,'ze@faisca.com.br');
INSERT INTO fornecedores (nome_forn, email) VALUES ('Facens'                    ,'facens@facens.com.br');
INSERT INTO fornecedores (nome_forn, email) VALUES ('Linux'                     ,'linux@linux.br');


INSERT INTO marcas (nome_marca, origem) VALUES ('Faber Castel'	, 'Brasil');
INSERT INTO marcas (nome_marca, origem) VALUES ('Labra'			, 'Brasil');
INSERT INTO marcas (nome_marca, origem) VALUES ('TOTVS'  		, 'Brasil');
INSERT INTO marcas (nome_marca, origem) VALUES ('Multilaser'	, 'Brasil');
INSERT INTO marcas (nome_marca, origem) VALUES ('ORCACLE'		, 'EUA');
INSERT INTO marcas (nome_marca, origem) VALUES ('IBM'			, 'EUA');
INSERT INTO marcas (nome_marca, origem) VALUES ('Microsoft'		, 'EUA');
INSERT INTO marcas (nome_marca, origem) VALUES ('HP'			, 'EUA');
INSERT INTO marcas (nome_marca, origem) VALUES ('Apple'			, 'EUA');
INSERT INTO marcas (nome_marca, origem) VALUES ('SAP'			, 'Alemanha');
INSERT INTO marcas (nome_marca, origem) VALUES ('Lenovo'		, 'China');
INSERT INTO marcas (nome_marca, origem) VALUES ('ASUS'			, 'Taiwan');
INSERT INTO marcas (nome_marca, origem) VALUES ('AOC'			, 'Taiwan');
INSERT INTO marcas (nome_marca, origem) VALUES ('LG'			, 'Corea do Sul');


INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('lapis'				, 4502, 100, '2016-3-3', false, 002.5, 1);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('lapis'				, 8800, 100, '2015-5-5', false, 014.0, 2);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('borracha'			, 2907, 100, '2013-7-8', false, 004.2, 1);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('borracha'			, 5408, 100, '2015-8-2', false, 002.0, 2);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('caderno'			, 7004, 100, '2016-3-4', false, 022.5, 1);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('caneta'				, 8030, 100, '2013-2-4', false, 011.0, 1);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('ERP'				, 0060, 100, '2016-5-7', false, 937.5, 3);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('ERP'				, 3070, 100, '2014-6-5', false, 472.0, 4);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('ERP'				, 2083, 100, '2015-8-4', false, 252.0, 5);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Windows'			, 5040, 100, '2012-9-2', false, 532.0, 7);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('IOS'				, 6020, 100, '2014-3-3', false, 756.5, 9);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('teclado'			, 7030, 100, '2016-5-8', false, 412.5, 4);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('teclado'			, 0024, 100, '2013-4-7', false, 172.5, 11);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('teclado'			, 9070, 100, '2015-5-4', false, 192.0, 8);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('mouse'				, 1303, 100, '2016-7-3', false, 142.0, 4);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('mouse'				, 3050, 100, '2013-9-2', false, 122.5, 8);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('mouse'				, 0007, 100, '2012-3-7', false, 152.0, 7);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Pendrive'			, 6070, 100, '2014-5-6', false, 172.0, 4);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('CD'					, 8080, 100, '2015-6-4', false, 012.5, 4);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Monitor'			, 9040, 100, '2016-5-2', false, 332.0, 8);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Monitor'			, 0001, 100, '2013-3-6', false, 172.0, 11);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Monitor'			, 2300, 100, '2015-2-5', false, 312.5, 14);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Monitor'			, 6620, 100, '2014-3-3', false, 272.0, 6);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Joystick'			, 0063, 100, '2014-5-7', false, 152.0, 4);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Módulo de memória'	, 7230, 100, '2013-6-8', false, 512.5, 6);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Módulo de memória'	, 9032, 100, '2013-7-8', false, 612.0, 12);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Processador'		, 4509, 100, '2016-8-6', false, 282.5, 6);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Placa de Vídeo'		, 2408, 100, '2015-3-5', false, 152.0, 6);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Placa de Vídeo'		, 0066, 100, '2012-2-3', false, 612.5, 13);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Fonte de Energia'	, 9044, 100, '2013-5-2', false, 112.0, 4);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('Fonte de Energia'	, 4054, 100, '2014-7-3', false, 012.5, 8);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('HD externo'			, 0400, 100, '2016-8-4', false, 412.5, 14);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('mesa'				, 0240, 100, '2014-4-8', false, 632.5, null);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('cadeira'			, 0490, 100, '2012-3-7', false, 342.0, null);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('rack'				, 0030, 100, '2013-2-6', false, 262.0, null);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('armario'			, 0404, 100, '2012-5-4', false, 412.5, null);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('pera'				, 0069, 100, '2014-7-6', true , 612.0, null);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('maça'				, 0020, 100, '2015-3-5', true , 716.8, null);
INSERT INTO produtos (nome_prod, qtd_estoque, estoque_mim, data_fabricacao, perecivel, valor, marca_id) VALUES ('banana'				, 0081, 100, '2016-5-8', true , 512.0, null);


INSERT INTO produto_fornecedor VALUES (1,1);
INSERT INTO produto_fornecedor VALUES (4,1);