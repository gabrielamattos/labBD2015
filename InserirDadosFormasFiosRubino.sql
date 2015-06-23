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




-- inserindo dados: cliente Rodrigo
-- ************************************************************

insert into cliente (CPF, DadosCliente)
values (22565898569, '
<!--Componente:  Rodrigo-->
	<Cliente>
			
				
					<Telefone>							
						<Numero>22565898569</Numero>
						<DDD>16</DDD>
						<Pais>Brasil</Pais>
					</Telefone>	
					
					<Codigo>5</Codigo>
					<Rua>Rua Padre Afonso</Rua>
					<Numero>744	</Numero>
					<Estado>Sao Paulo</Estado>
					<Email>andreipanhan@hotmail.com</Email>
					<CEP>14252669</CEP>
					<Bairro>Vila Prado</Bairro>
					<Municipio>Sao Carlos</Municipio>										
				
				
			<CPF>22565898569</CPF>		
			<PrimeiroNome>Andreia</PrimeiroNome>
			<Sobrenome>Panhan</Sobrenome>
			<Senha>MCG5522</Senha>
			<Sexo>F</Sexo>
		
			
		<CabeloCliente>
			<Cor>Castanho</Cor>
			<Tamanho>Curto</Tamanho>
			<CodigoCabelo>231</CodigoCabelo>
			<Tipo>Cacheado</Tipo>
			
			
		</CabeloCliente>		
	</Cliente>');
GO

insert into cliente (CPF, DadosCliente)
values (33366699900, '

<!--Componente:  Rodrigo-->
	<Cliente>
					
				<Telefone>	
						
					<Numero>333255466</Numero>
					<DDD>16</DDD>
					<Pais>Brasil</Pais>
				</Telefone>	
					
				<Codigo>3</Codigo>
				<Rua>Alojamento UFSCar</Rua>
				<Numero>67</Numero>
				<Estado>Sao Paulo</Estado>
				<Email>gabriela@gmail.com</Email>
				<CEP>13565905</CEP>
				<Bairro>UFSCar</Bairro>
				<Municipio>Sao Carlos</Municipio>										
			
				
		<CPF>33366699900</CPF>		
		<PrimeiroNome>Gabriela</PrimeiroNome>
		<Sobrenome>Pereira</Sobrenome>
		<Senha>MCX2222</Senha>
		<Sexo>F</Sexo>
		
	<CabeloCliente>
		<Cor>Preto</Cor>
		<Tamanho>Medio</Tamanho>
		<CodigoCabelo>123</CodigoCabelo>
		<Tipo>Liso</Tipo>		
		
	</CabeloCliente>		
</Cliente>');
GO

insert into cliente (CPF, DadosCliente)
values (11245789655, '

<!--Componente:  Rodrigo-->

	<Cliente>
		
				
					<Telefone>	
						
						<Numero>232122545</Numero>
						<DDD>31</DDD>
						<Pais>Brasil</Pais>
					</Telefone>	
					
					<Codigo>5</Codigo>
					<Rua>Voluntarios da Patria</Rua>
					<Numero>235</Numero>
					<Estado>Sao Paulo</Estado>
					<Email>pedroaugusto@hotmail.com</Email>
					<CEP>14856598</CEP>
					<Bairro>Parque do Basalto</Bairro>
					<Municipio>Araraquara</Municipio>										
				
			<CPF>11245789655</CPF>		
			<PrimeiroNome>Pedro</PrimeiroNome>
			<Sobrenome>Augusto</Sobrenome>
			<Senha>ABC1245</Senha>
			<Sexo>M</Sexo>
			
		<CabeloCliente>
			<Cor>Loiro</Cor>
			<Tamanho>Medio</Tamanho>
			<CodigoCabelo>222</CodigoCabelo>
			<Tipo>Cacheado</Tipo>
			
			
		</CabeloCliente>		
	</Cliente>');
GO

-- inserindo dados: 
-- ************************************************************
insert into cargo (cod_cargo, nome, salario, cargaHorSem, dataPagamento)
values (1, 'Administrativo', 2000.00, 40, '20150623');

insert into cargo (cod_cargo, nome, salario, cargaHorSem, dataPagamento)
values (2, 'Setor de Servicos', 1500.00, 10, '20150610');

-- inserindo dados: funcionario
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

  
-- inserindo dados: funcServico
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


-- inserindo dados: certificado
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

-- inserindo dados: administrativo
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

-- inserindo dados: formacao
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

-- inserindo dados: fornecedor
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

-- inserindo dados: produtoVenda Douglas
-- ************************************************************
insert into produtoVenda (CodigoProduto, DadosprodutoVenda)
values (1, '<produtoVenda>
     	<quantidadeMinima>100</quantidadeMinima>
     	<codigoFabrica>102</codigoFabrica>
      	<nome>Shampoo</nome>
      	<precoFabrica>10.25</precoFabrica>
		<linhaProduto>
			<nomeLinha>Shampoo Vida Plus</nomeLinha>
			<descricao>Para lavar e dar brilho aos cabelos dos clientes</descricao>
			<marca>Shampoo Vida</marca>
		</linhaProduto>
		<tipoProduto>
			<nomeTipo>Shampoo</nomeTipo>
			<descricao>Para lavar o cabelo dos clientes</descricao>
		</tipoProduto>
		<quantidade>1600</quantidade>
		<precoVenda>15.00</precoVenda>
	</produtoVenda>');
GO

insert into produtoVenda (CodigoProduto, DadosprodutoVenda)
values (4, '<produtoVenda>
      	<quantidadeMinima>50</quantidadeMinima>
      	<codigoFabrica>448</codigoFabrica>
      	<nome>Oleo Fortificante</nome>
		<precoFabrica>41.99</precoFabrica>
		<linhaProduto>
			<nomeLinha>Oleo pos-lavagem</nomeLinha>
			<descricao>Aplicado apos a lavagem para fortalecer as raizes quebradicas dos cabelos dos clientes</descricao>
			<marca>Linha de oleos Vida</marca>
		</linhaProduto>
		<tipoProduto>
			<nomeTipo>Oleo Fortificante</nomeTipo>
			<descricao>Para fortalecer as raizes quebradicas do cabelo dos clientes</descricao>
		</tipoProduto>
		<quantidade>200</quantidade>
		<precoVenda>50.00</precoVenda>
	</produtoVenda>');
GO

insert into produtoVenda (CodigoProduto, DadosprodutoVenda)
values (6, '<produtoVenda>
      	<quantidadeMinima>100</quantidadeMinima>
      	<codigoFabrica>56</codigoFabrica>
      	<nome>Shampoo</nome>
      	<precoFabrica>22.99</precoFabrica>
		<linhaProduto>
			<nomeLinha>Shampoo Loreal Paris</nomeLinha>
			<descricao>Shampoo utilizado para rejuvenecer o cabelo dos clientes</descricao>
			<marca>Loreal Paris</marca>
		</linhaProduto>
		<tipoProduto>
			<nomeTipo>Shampoo</nomeTipo>
			<descricao>Para lavar o cabelo dos clientes</descricao>
		</tipoProduto>
		<quantidade>157</quantidade>
		<precoVenda>29.99</precoVenda>
	</produtoVenda>');
GO

-- inserindo dados: produtoServico Douglas
-- ************************************************************

insert into produtoServico (CodigoProduto, DadosprodutoServico)
values (2, '<produtoServico>
      	<quantidadeMinima>150</quantidadeMinima>
      	<codigoFabrica>165</codigoFabrica>
      	<nome>Condicionador</nome>
      	<precoFabrica>15.00</precoFabrica>
		<linhaProduto>
			<nomeLinha>Condicionador Vida Plus</nomeLinha>
			<descricao>Para hidratar e dar resistencia aos cabelos dos clientes</descricao>
			<marca>Condicionador Vida</marca>
		</linhaProduto>
		<tipoProduto>
			<nomeTipo>Condicionador</nomeTipo>
			<descricao>Para hidratar o cabelo dos clientes</descricao>
		</tipoProduto>
		<quantidade>300</quantidade>
	</produtoServico>');
GO

insert into produtoServico (CodigoProduto, DadosprodutoServico)
values (3, '<produtoServico>
      	<quantidadeMinima>10</quantidadeMinima>
      	<codigoFabrica>741</codigoFabrica>
      	<nome>Pente</nome>
      	<precoFabrica>0.90</precoFabrica>
		<linhaProduto>
			<nomeLinha>Pente Anti-magnetico</nomeLinha>
			<descricao>Evita dar volume ao pentear os cabelos dos clientes</descricao>
			<marca>Mega Pentes</marca>
		</linhaProduto>
		<tipoProduto>
			<nomeTipo>Pente</nomeTipo>
			<descricao>Para pentear o cabelo dos clientes</descricao>
		</tipoProduto>
		<quantidade>15</quantidade>
	</produtoServico>');
GO

insert into produtoServico (CodigoProduto, DadosprodutoServico)
values (5, '<produtoServico>
      	<quantidadeMinima>10</quantidadeMinima>
      	<codigoFabrica>2</codigoFabrica>
      	<nome>Secador</nome>
      	<precoFabrica>119.99</precoFabrica>
		<linhaProduto>
			<nomeLinha>Secador 5 temperaturas</nomeLinha>
			<descricao>Cada temperatura produz um efeito diferente no cabelo dos clientes</descricao>
			<marca>Secador Seca Tudo</marca>
		</linhaProduto>
		<tipoProduto>
			<nomeTipo>Secador</nomeTipo>
			<descricao>Para secar o cabelo dos clientes</descricao>
		</tipoProduto>
		<quantidade>15</quantidade>
	</produtoServico>');
GO

-- inserindo dados: possuiProdutoVenda Douglas
-- ************************************************************

insert into possuiProdutoVenda (CNPJ, CodigoProduto)
values (2854612345610, 1);

insert into possuiProdutoVenda (CNPJ, CodigoProduto)
values (7454352345622, 4);

insert into possuiProdutoVenda (CNPJ, CodigoProduto)
values (3565547745610, 6);

-- inserindo dados: possuiProdutoServico Douglas
-- ************************************************************

insert into possuiProdutoServico (CNPJ, CodigoProduto)
values (2854612345610, 2);

insert into possuiProdutoServico (CNPJ, CodigoProduto)
values (3254784452366, 3);

insert into possuiProdutoServico (CNPJ, CodigoProduto)
values (8856985471214, 5);

--commit;
