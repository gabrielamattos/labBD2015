-- Arquivo para geração das tabelas
-- Autores: Breno, Douglas, Gabriela e Rodrigo

drop table utilizaServico;
drop table servico;
drop table agendamentoServico;
drop table tipoServico;
drop table utilizaVenda;
drop table venda;
drop table possuiProdutoServico;
drop table possuiProdutoVenda;
drop table produtoServico;
drop table produtoVenda;
drop table fornecedor;
drop table formacao;
drop table funcAdministrativo;
drop table certificado;
drop table funcServico;
drop table funcionario;
drop table cargo;
drop table cliente;
drop table telefone;
drop table juridica;
drop table fisica;
drop table pessoa;
DROP XML SCHEMA COLLECTION XMLSchemaCliente;
GO
DROP XML SCHEMA COLLECTION XMLSchemaProdutoVenda;
GO
DROP XML SCHEMA COLLECTION XMLSchemaProdutoServico;
GO

/*drop database FormasFios;
CREATE DATABASE FormasFios;*/

create table pessoa
(
	cod_pessoa 	numeric(10) constraint pessoa_pk primary key,
	email      	varchar(30),
    rua			varchar(40),
	numero 		numeric(6) constraint numero_ch check (numero > 0),
	bairro 		varchar(40),
	municipio 	varchar(40),
	estado 		varchar(40),
	cep 		numeric(8) default 00000000
);
 
create table fisica
(
	CPF 		numeric(11),
	cod_pessoa 	numeric(10) constraint cod_pess1_nu not null,
	primeiro_nome 	varchar(40) constraint nome_nu not null,
	sobrenome 	varchar(50),
	senha 		varchar(16),
	sexo 		varchar(2) constraint sexo_ch check(sexo in('M','F')),
	constraint fisica_fk foreign key (cod_pessoa) references pessoa(cod_pessoa) on delete cascade,
	constraint fisica_pk primary key(CPF) 
);
	

create table juridica
(
	CNPJ 		numeric(14),
	razao_social 	varchar(30),
	cod_pessoa 	numeric(10) constraint cod_pess_nu not null,
	constraint jur_fk foreign key(cod_pessoa) references pessoa(cod_pessoa) on delete cascade,
	constraint jur_pk primary key(CNPJ)
);
create table telefone
(
	cod_pessoa 	numeric(10),
	numero    	numeric(9) constraint numero_tel_ch check(numero >0),
	DDD 		numeric(3) constraint ddd_nu not null,
    pais 		varchar(40),
	constraint telefone_fk foreign key(cod_pessoa) references pessoa(cod_pessoa) on delete cascade,
	constraint telefone_pk primary key (cod_pessoa, numero)
);	


CREATE XML SCHEMA COLLECTION XMLSchemaCliente AS '
<!--Componente:  Rodrigo-->
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">

<xsd:element name="Cliente">
	<xsd:complexType>
	
			<xsd:complexContent>
				<xsd:extension base = "Fisica">	
					<xsd:sequence>
						<xsd:element name = "CabeloCliente" type = "Cabelo" minOccurs="1" maxOccurs="1"/>	
					</xsd:sequence>	
				</xsd:extension>	
		</xsd:complexContent>
	</xsd:complexType>
</xsd:element>

	<xsd:complexType name = "Fisica">
		<xsd:complexContent>
			<xsd:extension base = "Pessoa">
				<xsd:sequence>
				
					<xsd:element name="CPF" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
					<xsd:element name="PrimeiroNome" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
					<xsd:element name="Sobrenome" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
					<xsd:element name="Senha" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
					<xsd:element name="Sexo" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
					
				</xsd:sequence>	
			</xsd:extension>
		</xsd:complexContent>
	</xsd:complexType>

	<xsd:complexType name = "Pessoa">
		<xsd:sequence>
		    <xsd:element name = "Telefone" type = "TipoTelefone" minOccurs="1" maxOccurs="unbounded"/>
			<xsd:element name = "Codigo" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
			<xsd:element name = "Rua" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
			<xsd:element name = "Numero" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
			<xsd:element name = "Estado" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
			<xsd:element name = "Email" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
			<xsd:element name = "CEP" type = "xsd:string" minOccurs="1" maxOccurs="1"/>			
			<xsd:element name = "Bairro" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
			<xsd:element name = "Municipio" type = "xsd:string" minOccurs="1" maxOccurs="1"/>
			
		</xsd:sequence>
	</xsd:complexType>

<xsd:complexType name = "TipoTelefone" >
		<xsd:sequence>
			<xsd:element name = "Numero" type = "xsd:integer"/>
			<xsd:element name = "DDD" type = "xsd:integer"/>
			<xsd:element name = "Pais" type = "xsd:string"/>
					
		</xsd:sequence>
	</xsd:complexType>

	<xsd:complexType name = "Cabelo">
		<xsd:sequence>
			<xsd:element name = "Cor" type = "xsd:string"/>
			<xsd:element name = "Tamanho" type = "xsd:string"/>
			<xsd:element name = "CodigoCabelo" type = "xsd:integer"/>
			<xsd:element name = "Tipo" type = "xsd:string"/>			
		</xsd:sequence>
	</xsd:complexType>
</xsd:schema>

'
;
GO

create table cliente
(
	CPF 		numeric(11),
	DadosCliente xml (XMLSchemaCliente),
	constraint cliente_pk primary key(CPF)
	
);
GO
create table cargo
(
	cod_cargo 	numeric(3) constraint cargo_pk primary key,
	nome    	varchar(40) constraint nome_ch check(nome in('Administrativo', 'Setor de servicos', 'Vendas')),
	salario 	numeric(10,2) constraint sal_nu not null,
	cargaHorSem	numeric(2), 
	dataPagamento	date 
);	
	
create table funcionario
(
	CPF 		numeric(11),
	CTPS 		numeric(10),
	data_nas 	date,
	RG 		numeric(15) constraint rg_nu not null,
	tipo_conta 	varchar(10) constraint tipo_conta_ch check (tipo_conta in('Corrente','Poupanca')),
	nome_banco 	varchar(40) constraint nome_banco_nu not null,
	numero_conta 	numeric(20) constraint num_c_nu not null,
	agencia 	varchar(40) constraint agencia_nu not null,
	cod_cargo 	numeric(3) constraint cod_cargo_nu_func not null,
	Data_inicio 	date,
	constraint funcionario_fk foreign key(CPF) references fisica(CPF) on delete cascade,
	constraint funcionario_fk2 foreign key(cod_cargo) references cargo(cod_cargo) on delete cascade,
	constraint funcionario_pk primary key(CPF)	 
);
	
create table funcServico
(
	CPF 		numeric(11),
	constraint funcServico_fk foreign key(CPF) references funcionario(CPF) on delete cascade,
	constraint funcServico_pk primary key(CPF)
);

create table certificado
(
	cargaHoraria 	numeric(3),
	nome_curso 	varchar(40),
	CPF 		numeric(11),
	constraint certificado_fk foreign key(CPF) references funcServico(CPF)on delete cascade,
	constraint certificado_pk primary key(CPF,nome_curso)
);
	
create table funcAdministrativo	
(
	CPF 		numeric(11),
	constraint administrativo_fk foreign key(CPF) references funcionario(CPF) on delete cascade,
	constraint administrativo_pk primary key(CPF)
);
	
create table formacao
(
	formacao 	varchar(40),
	CPF 		numeric(11),
	constraint formacao_fk foreign key(CPF) references funcAdministrativo(CPF) on delete cascade ,
	constraint formacao_pk primary key(formacao,CPF)
);

create table fornecedor
(
	CNPJ 		numeric(14),
	pais 		varchar(40),
	constraint fornecedor_fk foreign key(CNPJ) references juridica(CNPJ) on delete cascade,
	constraint fornecedor_pk primary key(CNPJ)
);

CREATE XML SCHEMA COLLECTION XMLSchemaProdutoVenda AS '
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">
	<xsd:complexType name="produto">
		<xsd:sequence>
			<xsd:element name="quantidadeMinima" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:integer">
						<xsd:totalDigits value="3"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="codigoFabrica" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:integer">
						<xsd:totalDigits value="20"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="nome" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:string">
						<xsd:maxLength value="40"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="precoFabrica" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:decimal">
						<xsd:totalDigits value="20"/>
						<xsd:fractionDigits value="2"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="nomeLinha" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:string">
						<xsd:maxLength value="40"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="nomeTipo" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:string">
						<xsd:maxLength value="40"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="linhaProduto" maxOccurs="unbounded">
				<xsd:complexType>
					<xsd:sequence>
						<xsd:element name="nomeLinha" minOccurs="1" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:string">
									<xsd:maxLength value="40"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
						<xsd:element name="descricao" minOccurs="0" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:string">
									<xsd:maxLength value="100"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
						<xsd:element name="marca" minOccurs="0" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:string">
									<xsd:maxLength value="40"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
					</xsd:sequence>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="tipoProduto" maxOccurs="unbounded">
				<xsd:complexType>
					<xsd:sequence>
						<xsd:element name="nomeTipo" minOccurs="1" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:string">
									<xsd:maxLength value="40"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
						<xsd:element name="descricao" minOccurs="0" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:string">
									<xsd:maxLength value="100"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
					</xsd:sequence>
				</xsd:complexType>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="produtoVenda">
		<xsd:complexType>
			<xsd:complexContent>
				<xsd:extension base="produto">
					<xsd:sequence>
						<xsd:element name="quantidade" minOccurs="1" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:integer">
									<xsd:totalDigits value="6"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
						<xsd:element name="precoVenda" minOccurs="0" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:decimal">
									<xsd:totalDigits value="4"/>
									<xsd:fractionDigits value="2"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
					</xsd:sequence>
				</xsd:extension>
			</xsd:complexContent>
		</xsd:complexType>
	</xsd:element>
</xsd:schema>'
;
GO

create table produtoVenda
(
	CodigoProduto numeric(20),
	DadosprodutoVenda xml (XMLSchemaProdutoVenda),
	constraint produtoVenda_pk primary key(CodigoProduto)
); 
GO

CREATE XML SCHEMA COLLECTION XMLSchemaProdutoServico AS '
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">
	<xsd:complexType name="produto">
		<xsd:sequence>
			<xsd:element name="quantidadeMinima" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:integer">
						<xsd:totalDigits value="3"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="codigoFabrica" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:integer">
						<xsd:totalDigits value="20"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="nome" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:string">
						<xsd:maxLength value="40"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="precoFabrica" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:decimal">
						<xsd:totalDigits value="20"/>
						<xsd:fractionDigits value="2"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="nomeLinha" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:string">
						<xsd:maxLength value="40"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="nomeTipo" minOccurs="0" maxOccurs="1">
				<xsd:simpleType>
					<xsd:restriction base="xsd:string">
						<xsd:maxLength value="40"/>
					</xsd:restriction>
				</xsd:simpleType>
			</xsd:element>
			<xsd:element name="linhaProduto" maxOccurs="unbounded">
				<xsd:complexType>
					<xsd:sequence>
						<xsd:element name="nomeLinha" minOccurs="1" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:string">
									<xsd:maxLength value="40"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
						<xsd:element name="descricao" minOccurs="0" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:string">
									<xsd:maxLength value="100"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
						<xsd:element name="marca" minOccurs="0" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:string">
									<xsd:maxLength value="40"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
					</xsd:sequence>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="tipoProduto" maxOccurs="unbounded">
				<xsd:complexType>
					<xsd:sequence>
						<xsd:element name="nomeTipo" minOccurs="1" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:string">
									<xsd:maxLength value="40"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
						<xsd:element name="descricao" minOccurs="0" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:string">
									<xsd:maxLength value="100"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
					</xsd:sequence>
				</xsd:complexType>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="produtoServico">
		<xsd:complexType>
			<xsd:complexContent>
				<xsd:extension base="produto">
					<xsd:sequence>
						<xsd:element name="quantidade" minOccurs="1" maxOccurs="1">
							<xsd:simpleType>
								<xsd:restriction base="xsd:integer">
									<xsd:totalDigits value="6"/>
								</xsd:restriction>
							</xsd:simpleType>
						</xsd:element>
					</xsd:sequence>
				</xsd:extension>
			</xsd:complexContent>
		</xsd:complexType>
	</xsd:element>
</xsd:schema>'
;
GO

create table produtoServico 
(
	CodigoProduto numeric(20),
	DadosprodutoServico	xml (XMLSchemaProdutoServico),
	constraint produtoServico_pk primary key(CodigoProduto)
); 
GO

--Alterado a tabela possui jah que a linha de produto estah dentro da tabela dos produtos
create table possuiProdutoVenda
(
	CNPJ 		numeric(14),
	CodigoProduto numeric(20),
	constraint possuiProdutoVenda_fk1 foreign key (CNPJ) references fornecedor(CNPJ) on delete cascade,
	constraint possuiProdutoVenda_fk2 foreign key (CodigoProduto) references produtoVenda(CodigoProduto) on delete cascade,
	constraint possuiProdutoVenda_pk primary key (CNPJ, CodigoProduto)
);

create table possuiProdutoServico
(
	CNPJ 		numeric(14),
	CodigoProduto numeric(20),
	constraint possuiProdutoServico_fk1 foreign key (CNPJ) references fornecedor(CNPJ) on delete cascade,
	constraint possuiProdutoServico_fk2 foreign key (CodigoProduto) references produtoServico(CodigoProduto) on delete cascade,
	constraint possuiProdutoServico_pk primary key (CNPJ, CodigoProduto)
);

create table venda	
(
	CodigoVenda 	numeric(20),
	ValorTotal 	numeric(5,2) constraint valorTotNotNull not null,
	DataPagamento 	date,
	CPFFunc 	numeric(11),
	constraint venda_pk primary key (CodigoVenda, CPFFunc),
	constraint venda_fk foreign key(CPFFunc) references funcAdministrativo(CPF) on delete cascade
);	

create table utilizaVenda 
(
	CodigoVenda 	numeric(20),
	CPFFunc 	numeric(11),
	CodigoProduto 	numeric(20),
	Quantidade 	numeric(4) constraint quantidadeVendaNotNull not null,
 	constraint utilizaVenda_pk primary key(CodigoProduto, CodigoVenda),
 	constraint utilizaVenda_fk1 foreign key(CodigoProduto) references produtoVenda(CodigoProduto) on delete cascade,
	constraint utilizaVenda_fk2 foreign key(CodigoVenda, CPFFunc) references venda(CodigoVenda, CPFFunc) on delete cascade
);

create table tipoServico
(
	Nome 		varchar(40),
	Descricao 	varchar(100),
	Valor 		numeric (4,2),
	constraint tipoServico_pk primary key(Nome)	 
);

create table agendamentoServico 	
(
	DataHoraPrevia 	timestamp, 
	NomeTipoServico varchar(40), 
	CPFCliente	numeric(11), 
	CPFFuncionario 	numeric(11), 
	Multa 		numeric (4,2), 
	Preco 		numeric (4,2),
	Cancelado	numeric,
	constraint agendamentoServico_pk primary key(DataHoraPrevia, NomeTipoServico, CPFCliente, CPFFuncionario),
	constraint agendamentoServico_fk1 foreign key(NomeTipoServico) references tipoServico(Nome) ,
	constraint agendamentoServico_fk2 foreign key(CPFCliente) references cliente(CPF) ,
	constraint agendamentoServico_fk3 foreign key(CPFFuncionario) references funcServico(CPF) on delete cascade
);

create table servico 
(
	DataHora 	timestamp, 
	NomeTipoServico varchar(40), 
	CPFCliente 	numeric(11), 
	CPFFunc 	numeric(11),  
	CodigoServico 	numeric(20), 
	Tempo 		numeric(3), 
	Valor 		numeric (4,2),
	constraint servico_fk foreign key(DataHora, NomeTipoServico, CPFCliente, CPFFunc) 
	references agendamentoServico(DataHoraPrevia, NomeTipoServico, CPFCliente, CPFFuncionario) ,
	constraint servico_pk primary key(DataHora, NomeTipoServico, CPFCliente, CPFFunc, CodigoServico)
);

create table utilizaServico
(
	DataHora 	timestamp, 
	NomeTipoServico varchar(40), 
	CPFCliente 	numeric(11), 
	CPFFunc 	numeric(11),  
	CodigoServico 	numeric(20),
	CodigoProduto 	numeric(20),
	Quantidade 	numeric(4) constraint quantidadeVendaNotNull not null,
 	constraint utilizaServico_pk primary key(CodigoServico, CodigoProduto),
 	constraint utilizaServico_fk1 foreign key(CodigoProduto) references produtoServico(CodigoProduto) ,
	constraint utilizaServico_fk2 foreign key(DataHora, NomeTipoServico, CPFCliente, CPFFunc, CodigoServico) 
	references servico(DataHora, NomeTipoServico, CPFCliente, CPFFunc, CodigoServico) 
);
