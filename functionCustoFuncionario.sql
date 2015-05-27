-- Function: CustoFuncionario
--  Dado um cpf retorna o custo do funcionario desde sua data de entrada
-- Autor: Rodrigo

create function funcCustoFuncionario(@CPF_Func numeric(11))
returns numeric
as
begin
	declare @dataAtual date
	declare @dataEntrada date
	declare @tempoDeTrabalho numeric
	declare @salarioFunc numeric(10,2)
	
	set @dataAtual = getdate();
	    
	set @dataEntrada =
	(select func.data_Inicio
	from funcionario as func
	where func.CPF = @CPF_Func
	)

	set @salarioFunc =
	(select cg.salario
	from funcionario as func, cargo as cg
	where func.CPF = @CPF_Func and func.cod_cargo = cg.cod_cargo
	)

	set @tempoDeTrabalho = datediff(MONTH, @dataEntrada,@dataAtual);
	return @tempoDeTrabalho * @salarioFunc;
	

end;
