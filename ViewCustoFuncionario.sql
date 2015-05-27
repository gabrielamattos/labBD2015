-- View: CustoFuncionario
-- View que utiliza a function funcCustoFuncionario para mostrar a soma dos gastos que cada funcionario proporcionou desde a entrada
-- Autor: Rodrigo

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'viewCustoFuncionario')
    DROP VIEW viewCustoFuncionario
GO

create view viewCustoFuncionario as
	select fis.primeiro_nome+' '+fis.sobrenome as Nome, cg.salario as Salario, dbo.funcCustoFuncionario(func.CPF) as GastosAteHoje
	from fisica as fis, cargo as cg, funcionario as func
	where fis.CPF = func.CPF and func.cod_cargo = cg.cod_cargo
