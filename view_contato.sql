-- View: Contato
-- ~pequeno resumo~
-- Autor: 


create view contato as
		select CPF, telefone.numero, email
		from telefone, fisica, pessoa
		where telefone.cod_pessoa = fisica.cod_pessoa and pessoa.cod_pessoa = fisica.cod_pessoa	