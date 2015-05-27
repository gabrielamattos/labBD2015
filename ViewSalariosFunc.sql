-- Nome:ViewSalariosFunc
-- Resumo: Mostra o nome e respectivos salarios de cada funcionario, alem da conta onde ele sera depositado
-- Autor: Rodrigo

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'SalariosFunc')
    DROP VIEW SalariosFunc
GO

create view SalariosFunc as
	select fis.primeiro_nome+' '+fis.sobrenome as Nome, 
	cg.salario as Salario, cg.dataPagamento, 
	 func.nome_banco as Bancofunc, agencia as Agencia, func.numero_conta as Conta
	from fisica as fis, cargo as cg, funcionario as func
	where fis.CPF=func.CPF
	 and func.cod_cargo = cg.cod_cargo


	 

	 
