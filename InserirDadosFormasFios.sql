-- Arquivo de inserção de dados nas tabelas
-- Autores: Breno, Douglas, Gabriela e Rodrigo

-- inserindo dados: pessoa
-- ************************************************************
insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (1, 'maria@gmail.com', 'Avenida Brasil', 33, 'Cidade Aracy 2', 'São Carlos', 14825550);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (2, 'shampoovida@hotmail.com', 'Alameda das Orquideas', 85, 'Cidade Jardim', 'São Carlos', 15200300);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (3, 'gabriela@gmail.com', 'Alojamento UFSCar', 67, 'UFSCar', 'São Carlos', 13565905);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (4, 'seda@hotmail.com', 'Rua Padre Afonso', 78, 'Barreirinhas', 'Barreiras', 47806250);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (5, 'pedroaugusto@hotmail.com', 'Rua Voluntarios da Patria', 235, 'Parque do Basalto', 'Araraquara', 14856598);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (6, 'loreal@hotmail.com', 'Avenida das Orquideas', 99, 'Parque Laranjeiras', 'Sao Paulo', 15474858);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (7, 'pantene@hotmail.com', 'Rua Anotnio Jose', 778, 'Centro', 'Campinas', 15696854);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (8, 'risque@hotmail.com', 'Rua Augusto Moreira', 8895, 'Centro', 'Campinas', 58695878);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (9, 'andreipanhan@hotmail.com', 'Rua Padre Afonso', 744, 'Vila Prado', 'Sao Carlos', 14252669);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (10, 'biafigueiredo@hotmail.com', 'Avenida Paulista', 789, 'Centro', 'Sao Paulo', 15455558);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (11, 'sofia.freitas@gmail.com', 'Avenida das Orquideas', 512, 'Cidade Jardim', 'Sao Carlos', 14805374);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (12, 'robertosilveira@hotmail.com', 'Avenida Padre Afonse', 99, 'Centro', 'Sao Paulo', 15455558);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (13, 'silvanaribeiro@hotmail.com', 'Rua dos Manacas', 778, 'Casa Verde', 'Campinas', 15476851);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (14, 'claclaalmdeia@hotmail.com', 'Rua Augusto Silveira', 995, 'Vila Ferroviairia', 'Araraquara', 58698547);

insert into pessoa (cod_pessoa, email, rua, numero, bairro, municipio, cep)
values (15, 'sandrosilva@hotmail.com', 'Avenida Brasiliense', 123, 'Fonte Luminosa', 'Araraquara', 45896523);

update pessoa
set estado = 'SP'

-- inserindo dados: fisica
-- ************************************************************
insert into fisica (CPF, cod_pessoa, primeiro_nome, sobrenome, senha, sexo)
values (15945675360, 1, 'Maria', 'Carolina Sirio', 'MCS2015', 'F');

insert into fisica (CPF, cod_pessoa, primeiro_nome, sobrenome, senha, sexo)
values (33366699900, 3, 'Gabriela', 'Pereira', 'MCX2222', 'F');

insert into fisica (CPF, cod_pessoa, primeiro_nome, sobrenome, senha, sexo)
values (11245789655, 5, 'Pedro', 'Augusto', 'ABC1245', 'M');

insert into fisica (CPF, cod_pessoa, primeiro_nome, sobrenome, senha, sexo)
values (22565898569, 9, 'Andreia', 'Panhan', 'MCG5522', 'F');

insert into fisica (CPF, cod_pessoa, primeiro_nome, sobrenome, senha, sexo)
values (55689565877, 10, 'Beatriz', 'Figueiredo', 'AGH8895', 'F');

insert into fisica (CPF, cod_pessoa, primeiro_nome, sobrenome, senha, sexo)
values (56589856585, 11, 'Sofia', 'Freitas', 'MFS2025', 'F');

insert into fisica (CPF, cod_pessoa, primeiro_nome, sobrenome, senha, sexo)
values (25658985654, 12, 'Roberto', 'Silveira', 'RCX8822', 'M');

insert into fisica (CPF, cod_pessoa, primeiro_nome, sobrenome, senha, sexo)
values (54875487589, 13, 'Silvana', 'Ribeiro', 'CDF8845', 'F');

insert into fisica (CPF, cod_pessoa, primeiro_nome, sobrenome, senha, sexo)
values (35698565898, 14, 'Clarice', 'Almeida', 'FGG44522', 'F');

insert into fisica (CPF, cod_pessoa, primeiro_nome, sobrenome, senha, sexo)
values (12458798565, 15, 'Sandro', 'Silva', 'AJH7779', 'M');




-- inserindo dados: juridica 
-- ************************************************************
insert into juridica (CNPJ, razao_social, cod_pessoa)
values (2854612345610, 'Shampoo Vida', 2);

insert into juridica (CNPJ, razao_social, cod_pessoa)
values (7454352345622, 'Seda', 4);

insert into juridica (CNPJ, razao_social, cod_pessoa)
values (3565547745610, 'Loreal', 6);

insert into juridica (CNPJ, razao_social, cod_pessoa)
values (3254784452366, 'Pantene', 7);

insert into juridica (CNPJ, razao_social, cod_pessoa)
values (8856985471214, 'Risque', 8);


-- inserindo dados: telefone
-- ************************************************************
insert into telefone (cod_pessoa, numero, DDD, pais)
values (1, 333255464, 16, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (2, 123456789, 16, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (3, 333255466, 16, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (4, 123456789, 77, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (5, 232122545, 31, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (6, 388255464, 16, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (7, 123457789, 16, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (8, 993255466, 16, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (9, 653456779, 77, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (10, 782122556, 31, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (11, 453255498, 16, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (12, 533456776, 16, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (13, 653255477, 16, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (14, 663456799, 77, 'Brasil');

insert into telefone (cod_pessoa, numero, DDD, pais)
values (15, 452122520, 31, 'Brasil');



-- inserindo dados: cabelo Rodrigo Rubino
-- ************************************************************
insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (111, 'Liso', 'Longo', 'Castanho');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (121, 'Liso', 'Medio', 'Castanho');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (131, 'Liso', 'Curto', 'Castanho');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (112, 'Liso', 'Longo', 'Loiro');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (122, 'Liso', 'Medio', 'Loiro');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (132, 'Liso', 'Curto', 'Loiro');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (113, 'Liso', 'Longo', 'Preto');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (123, 'Liso', 'Medio', 'Preto');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (133, 'Liso', 'Curto', 'Preto');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (211, 'Cacheado', 'Longo', 'Castanho');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (221, 'Cacheado', 'Medio', 'Castanho');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (231, 'Cacheado', 'Curto', 'Castanho');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (212, 'Cacheado', 'Longo', 'Loiro');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (222, 'Cacheado', 'Medio', 'Loiro');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (232, 'Cacheado', 'Curto', 'Loiro');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (213, 'Cacheado', 'Longo', 'Preto');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (223, 'Cacheado', 'Medio', 'Preto');

insert into cabelo (cod_cabelo, tipo, tamanho, cor)
values (233, 'Cacheado', 'Curto', 'Preto');


-- inserindo dados: cliente Rodrigo Rubino
-- ************************************************************

insert into cliente (CPF, cod_cabelo)
values (56589856585, 113);

insert into cliente (CPF, cod_cabelo)
values (25658985654, 232);

insert into cliente (CPF, cod_cabelo)
values (54875487589, 231);

insert into cliente (CPF, cod_cabelo)
values (35698565898, 212);

insert into cliente (CPF, cod_cabelo)
values (12458798565, 111);

-- inserindo dados: cargo Rodrigo Rubino
-- ************************************************************
insert into cargo (cod_cargo, nome, salario, cargaHorSem, dataPagamento)
values (1, 'Administrativo', 2000.00, 40, '20150623');

insert into cargo (cod_cargo, nome, salario, cargaHorSem, dataPagamento)
values (2, 'Setor de Servicos', 1500.00, 10, '20150610');

-- inserindo dados: funcionario Rodrigo Rubino
-- ************************************************************

insert into funcionario (CPF, CTPS, data_nas, RG, tipo_conta, nome_banco, numero_conta, agencia, cod_cargo, Data_inicio)
values (15945675360, 80802020, '19880220', '889996587','Corrente', 'Banco do Brasil', 456210, 10952, 1, '20000220');

insert into funcionario (CPF, CTPS, data_nas, RG, tipo_conta, nome_banco, numero_conta, agencia, cod_cargo, Data_inicio)
values (33366699900, 15946200, '19880220', '125632547','Poupanca', 'Banco Itau', 822051, 02316, 2, '20010225');

insert into funcionario (CPF, CTPS, data_nas, RG, tipo_conta, nome_banco, numero_conta, agencia, cod_cargo, Data_inicio)
values (11245789655, 56895547, '19880220', '562548745','Corrente', 'Banco Itau', 733051, 02316, 2, '20130220');

insert into funcionario (CPF, CTPS, data_nas, RG, tipo_conta, nome_banco, numero_conta, agencia, cod_cargo, Data_inicio)
values (22565898569, 56895547, '19880220', '695874545','Poupanca', 'Banco Bradesco', 124051, 11425, 1, '19980710');

insert into funcionario (CPF, CTPS, data_nas, RG, tipo_conta, nome_banco, numero_conta, agencia, cod_cargo, Data_inicio)
values (55689565877, 56895874, '19880220', '362541258','Poupanca', 'Banco Itau', 426051, 02316, 2, '20080920');

insert into funcionario (CPF, CTPS, data_nas, RG, tipo_conta, nome_banco, numero_conta, agencia, cod_cargo, Data_inicio)
values (56589856585, 80802020, '19880220', '457856985','Corrente', 'Banco do Brasil', 456580, 10952, 1, '20071220');

insert into funcionario (CPF, CTPS, data_nas, RG, tipo_conta, nome_banco, numero_conta, agencia, cod_cargo, Data_inicio)
values (25658985654, 15946200, '19880220', '068977587','Poupanca', 'Banco Itau', 982051, 02316, 2, '20060520');

insert into funcionario (CPF, CTPS, data_nas, RG, tipo_conta, nome_banco, numero_conta, agencia, cod_cargo, Data_inicio)
values (54875487589, 56895547, '19880220', '338956565','Corrente', 'Banco Itau', 263051, 02316, 2, '20041220');

insert into funcionario (CPF, CTPS, data_nas, RG, tipo_conta, nome_banco, numero_conta, agencia, cod_cargo, Data_inicio)
values (35698565898, 56895547, '19880220', '448954587','Poupanca', 'Banco Bradesco', 314051, 11425, 1, '19990920');

insert into funcionario (CPF, CTPS, data_nas, RG, tipo_conta, nome_banco, numero_conta, agencia, cod_cargo, Data_inicio)
values (12458798565, 56895874, '19880220', '458956512','Poupanca', 'Banco Itau', 426051, 02316, 1, '20150120');

  
-- inserindo dados: funcServico Rodrigo Rubino
-- ************************************************************
insert into funcServico (CPF)
values (33366699900);

insert into funcServico (CPF)
values (11245789655);

insert into funcServico (CPF)
values (55689565877);

insert into funcServico (CPF)
values (25658985654);

insert into funcServico (CPF)
values (54875487589);


-- inserindo dados: certificado Rodrigo Rubino
-- ************************************************************
insert into certificado (cargaHoraria, nome_curso, CPF)
values (100, 'Manicure', 33366699900);

insert into certificado (cargaHoraria, nome_curso, CPF)
values (50, 'Manicure', 11245789655);

insert into certificado (cargaHoraria, nome_curso, CPF)
values (100, 'Cabeleireira', 55689565877);

insert into certificado (cargaHoraria, nome_curso, CPF)
values (50, 'Manicure', 25658985654);

insert into certificado (cargaHoraria, nome_curso, CPF)
values (100, 'Cabeleireira', 54875487589);

-- inserindo dados: administrativo Rodrigo Rubino
-- ************************************************************
insert into FuncAdministrativo (CPF)
values (15945675360);

insert into FuncAdministrativo (CPF)
values (22565898569);

insert into FuncAdministrativo (CPF)
values (12458798565);

insert into FuncAdministrativo (CPF)
values (35698565898);

insert into FuncAdministrativo (CPF)
values (56589856585);

-- inserindo dados: formacao Rodrigo Rubino
-- ************************************************************
insert into formacao (formacao, CPF)
values ('Administracao', 15945675360);

insert into formacao (formacao, CPF)
values ('Economia', 22565898569);

insert into formacao (formacao, CPF)
values ('Administracao', 12458798565);

insert into formacao (formacao, CPF)
values ('Medio completo', 35698565898);

insert into formacao (formacao, CPF)
values ('Artes visuais', 56589856585);

-- inserindo dados: fornecedor Rodrigo Rubino
-- ************************************************************
insert into fornecedor (CNPJ, pais)
values (2854612345610, 'Brasil');

insert into fornecedor (CNPJ, pais)
values (7454352345622, 'Espanha');

insert into fornecedor (CNPJ, pais)
values (3565547745610, 'Estados Unidos');

insert into fornecedor (CNPJ, pais)
values (3254784452366, 'Brasil');

insert into fornecedor (CNPJ, pais)
values (8856985471214, 'Franca');

-- inserindo dados: linhaProduto Douglas
-- ************************************************************

insert into linhaProduto (nome, descricao, marca)
values ('Shampoo Vida Plus', 'Para lavar e dar brilho aos cabelos dos clientes', 'Shampoo Vida');

insert into linhaProduto (nome, descricao, marca)
values ('Condicionador Vida Plus', 'Para hidratar e dar resistencia aos cabelos dos clientes', 'Condicionador Vida');

insert into linhaProduto (nome, descricao, marca)
values ('Pente Anti-magnetico', 'Evita dar volume ao pentear os cabelos dos clientes', 'Mega Pentes');

insert into linhaProduto (nome, descricao, marca)
values ('Oleo pos-lavagem', 'Aplicado apos a lavagem para fortalecer as raizes quebradicas dos cabelos dos clientes', 'Linha de oleos Vida');

insert into linhaProduto (nome, descricao, marca)
values ('Secador 5 temperaturas', 'Cada temperatura produz um efeito diferente no cabelo dos clientes', 'Secador Seca Tudo');

insert into linhaProduto (nome, descricao, marca)
values ('Shampoo Loreal Paris', 'Shampoo utilizado para rejuvenecer o cabelo dos clientes', 'Loreal Paris');
						
-- inserindo dados: possui Douglas
-- ************************************************************

insert into possui (CNPJ, nome)
values (2854612345610, 'Shampoo Vida Plus');

insert into possui (CNPJ, nome)
values (2854612345610, 'Condicionador Vida Plus');

insert into possui (CNPJ, nome)
values (3254784452366, 'Pente Anti-magnetico');

insert into possui (CNPJ, nome)
values (7454352345622, 'Oleo pos-lavagem');

insert into possui (CNPJ, nome)
values (8856985471214, 'Secador 5 temperaturas');

insert into possui (CNPJ, nome)
values (3565547745610, 'Shampoo Loreal Paris');

-- inserindo dados: tipo_produto Douglas
-- ************************************************************
insert into tipo_produto (nome, descricao)
values ('Shampoo', 'Para lavar o cabelo dos clientes');

insert into tipo_produto (nome, descricao)
values ('Condicionador', 'Para hidratar o cabelo dos clientes');

insert into tipo_produto (nome, descricao)
values ('Pente', 'Para pentear o cabelo dos clientes');

insert into tipo_produto (nome, descricao)
values ('Oleo Fortificante', 'Para fortalecer as raizes quebradicas do cabelo dos clientes');

insert into tipo_produto (nome, descricao)
values ('Secador', 'Para secar o cabelo dos clientes');

-- inserindo dados: produto Douglas
-- ************************************************************

insert into produto (CodigoProduto, QuantidadeMinima, CodigoFabrica, nome, PrecoFabrica, NomeLinha, NomeTipo)
values (1, 100, 102, 'Shampoo', 10.25, 'Shampoo Vida Plus', 'Shampoo');

insert into produto (CodigoProduto, QuantidadeMinima, CodigoFabrica, nome, PrecoFabrica, NomeLinha, NomeTipo)
values (2, 100, 165, 'Condicionador', 15.00, 'Condicionador Vida Plus', 'Condicionador');

insert into produto (CodigoProduto, QuantidadeMinima, CodigoFabrica, nome, PrecoFabrica, NomeLinha, NomeTipo)
values (3, 10, 741, 'Pente', 0.90, 'Pente Anti-magnetico', 'Pente');

insert into produto (CodigoProduto, QuantidadeMinima, CodigoFabrica, nome, PrecoFabrica, NomeLinha, NomeTipo)
values (4, 100 ,448, 'Oleo Fortificante', 41.99, 'Oleo pos-lavagem', 'Oleo Fortificante');

insert into produto (CodigoProduto, QuantidadeMinima, CodigoFabrica, nome, PrecoFabrica, NomeLinha, NomeTipo)
values (5, 5, 2, 'Secador', 119.99, 'Secador 5 temperaturas', 'Secador');

insert into produto (CodigoProduto, QuantidadeMinima, CodigoFabrica, nome, PrecoFabrica, NomeLinha, NomeTipo)
values (6, 50, 56, 'Shampoo Supreme Loreal', 22.99, 'Shampoo Loreal Paris', 'Shampoo');

-- inserindo dados: produtoVenda Douglas
-- ************************************************************

insert into produtoVenda (CodigoProduto, Quantidade, PrecoVenda)
values (1, 1600, 15.00);

insert into produtoVenda (CodigoProduto, Quantidade, PrecoVenda)
values (2, 1300, 20.00);

insert into produtoVenda (CodigoProduto, Quantidade, PrecoVenda)
values (3, 6130, 1.50);

insert into produtoVenda (CodigoProduto, Quantidade, PrecoVenda)
values (4, 200, 50.00);

insert into produtoVenda (CodigoProduto, Quantidade, PrecoVenda)
values (5, 310, 10.00);

-- inserindo dados: produtoServico Douglas
-- ************************************************************

insert into produtoServico (CodigoProduto, Quantidade)
values (1, 300);

insert into produtoServico (CodigoProduto, Quantidade)
values (2, 300);

insert into produtoServico (CodigoProduto, Quantidade)
values (3, 15);

insert into produtoServico (CodigoProduto, Quantidade)
values (4, 200);

insert into produtoServico (CodigoProduto, Quantidade)
values (5, 15);



--commit;
