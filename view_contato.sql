-- View: Contato
-- Resumo: view contato que seleciona as informações de contato das pessoas físicas cadastradas no BD (telefone e e-mail, diferenciando cada pessoa pelo seu CPF)
-- Autor: Breno

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'contato')
    DROP VIEW contato
GO
create view contato as
		select CPF, telefone.numero, email
		from telefone, fisica, pessoa
		where telefone.cod_pessoa = fisica.cod_pessoa and pessoa.cod_pessoa = fisica.cod_pessoa	
