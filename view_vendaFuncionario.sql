

--Autor:

create view vendaFuncionario as
		select CodigoVenda, ValorTotal, DataPagamento, CPFFunc
		from venda, funcAdministrativo
		where funcAdministrativo.CPF = venda.CPFFunc	