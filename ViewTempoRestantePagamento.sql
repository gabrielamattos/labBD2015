-- View: TempoRestantePagamento
-- Usando a funcao temporREstantePagamento, mostra quantos dias faltam pro pagamento de cada funcionario
-- Autor: Rodrigo

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'viewTempoRestantePagamento')
    DROP VIEW viewTempoRestantePagamento
GO

create view viewTempoRestantePagamento as
	select fis.primeiro_nome+' '+fis.sobrenome as Nome, cg.salario as Salario, dbo.tempoRestantePagamento(func.CPF) as DiasRestantes
	from fisica as fis, cargo as cg, funcionario as func
	where fis.CPF = func.CPF and func.cod_cargo = cg.cod_cargo
