-- View: VendaFuncionarioX
-- Autor: Gabriela


IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'VendaFuncionarioX')
    DROP VIEW VendaFuncionarioX;
GO

create view VendaFuncionarioX as 
	select	CodigoVenda as [Codigo Venda],
			CPFFunc as [CPFFuncionario],
			ValorTotal as [Valor Venda]
	from venda
	where CPFFunc = '11111111111';
