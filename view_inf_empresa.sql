-- View: inf_empresa
-- Resumo: view que seleciona os atributos razao_social, email, CNPJ, rua, numero, bairro, municipio, estado, Cep das empresas cadastradas no BD
-- Autor: Breno

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'inf_empresa')
    DROP VIEW inf_empresa
GO

create view inf_empresa as
		select razao_social, email, CNPJ, rua, numero, bairro, municipio, estado, cep
		from juridica, pessoa
		where juridica.cod_pessoa = pessoa.cod_pessoa	
