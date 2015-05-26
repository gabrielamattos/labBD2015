-- View: inf_empresa
-- ~pequeno resumo~
-- Autor: 

create view inf_empresa as
		select razao_social, email, CNPJ, rua, numero, bairro, municipio, estado, cep
		from juridica, pessoa
		where juridica.cod_pessoa = pessoa.cod_pessoa	