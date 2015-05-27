drop table utilizaServico;
drop table servico;
drop table agendamentoServico;
drop table tipoServico;
drop table utilizaVenda;
drop table venda;
drop table produtoServico;
drop table produtoVenda;
drop table produto;
drop table tipo_produto;
drop table possui;
drop table linhaProduto;
drop table fornecedor;
drop table formacao;
drop table funcAdministrativo;
drop table certificado;
drop table funcServico;
drop table funcionario;
drop table cargo;
drop table cliente;
drop table cabelo;
drop table telefone;
drop table juridica;
drop table fisica;
drop table pessoa;


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

	
create table cabelo
(
	cod_cabelo 	numeric(3) constraint cabelo_pk primary key,
	tipo 		varchar(10) constraint tipo_ch check(tipo in('Crespo','Liso','Cacheado')),
	tamanho 	varchar(10) constraint tamanho_ch check(tamanho in('Curto','Medio','Longo')),
	cor 		varchar(40)
);

create table cliente
(
	CPF 		numeric(11),
	cod_cabelo 	numeric(3) constraint cod_cabelo_cliente_nu not null,
	constraint cliente_fk foreign key(CPF) references fisica(CPF) on delete cascade,
	constraint cliente_fk2 foreign key(cod_cabelo) references cabelo(cod_cabelo) on delete cascade,
	constraint cliente_pk primary key(CPF)
);

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

create table linhaProduto
(
	nome 		varchar(40),
	descricao 	varchar(100),
	marca 		varchar(40),
	constraint linhaProduto_pk primary key (nome)
);

create table possui	
(
	CNPJ 		numeric(14),
	nome 		varchar(40),
	constraint possui_fk1 foreign key (CNPJ) references fornecedor(CNPJ) on delete cascade,
	constraint possui_fk2 foreign key (nome) references linhaProduto(nome) on delete cascade,
	constraint possui_pk primary key (CNPJ, nome)
);


create table tipo_produto
(
	nome 		varchar(40) constraint tipoProduto_pk primary key,
	descricao 	varchar(100)
);

create table produto
(
	CodigoProduto 	numeric(20),
	QuantidadeMinima numeric(3) constraint QM_produto_nu not null,
	CodigoFabrica 	numeric(20),
	nome 		varchar(40),
	PrecoFabrica 	numeric(20,2),
	NomeLinha 	varchar(40),
	NomeTipo 	varchar(40),
	constraint produto_pk primary key(CodigoProduto),
	constraint produto_fk1 foreign key (NomeTipo) references tipo_produto(nome) on delete cascade,
	constraint produto_fk2 foreign key (NomeLinha) references linhaProduto(nome) 
);

create table produtoVenda
(
	CodigoProduto 	numeric(20),
	Quantidade 	numeric(6) constraint quantVendaNotNull not null,
	PrecoVenda	numeric(4,2) constraint precoVendaNotNull not null,
	constraint produtoVenda_pk primary key(CodigoProduto),
 	constraint produtoVenda_fk foreign key(CodigoProduto) references produto(CodigoProduto) on delete cascade
); 

create table produtoServico 
(
	CodigoProduto 	numeric(20),
	Quantidade 	numeric(6) constraint quantServNotNull not null,
	constraint produtoServico_pk primary key(CodigoProduto),
 	constraint produtoServico_fk foreign key(CodigoProduto) references produto(CodigoProduto) on delete cascade 
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
