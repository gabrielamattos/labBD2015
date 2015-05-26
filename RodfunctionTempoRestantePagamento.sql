
-- Function: tempoRestantePagamento
-- Dado um cpf retorna o rempo restante para o pagamento dessa pessoa, com base na data atual
-- Autor: Rodrigo

create function tempoRestantePagamento(@CPF_Func numeric(11))
returns numeric
as
begin
	declare @dataAtual date
	declare @dataPagamento date
	
	set @dataAtual = getdate();
	    
	set @dataPagamento =
	(select c.dataPagamento
	from cargo as c, funcionario as func
	where c.cod_cargo = func.cod_cargo and func.CPF = @CPF_Func
	)

	return datediff(DAY,@dataAtual,@dataPagamento)
	

end;