-- Trigger: t_agendamentoServico
-- Autor: Gabriela

If Object_id ('t_agendamentoServico','TR') Is Not Null 
Drop Trigger t_agendamentoServico
Go

create trigger t_agendamentoServico
	on agendamentoServico 
	after update
	as 
	begin

	declare @DataHoraPrevia timestamp;
	declare @CPFCliente numeric(11);
	declare @Multa numeric (4,2);
	declare @Cancelado numeric(1);
	declare @valor numeric(4,2);

		select @DataHoraPrevia = DataHoraPrevia, @CPFCliente = CPFCliente, @valor = Preco
		from UPDATED;
		select @Cancelado = Cancelado
		from agendamentoServico 
		where CPFCliente = @CPFCliente and DataHoraPrevia = @DataHoraPrevia;

	

	    if @Cancelado = 1
			set @Multa = DBO.calcularMultaServico(@valor, @DataHoraPrevia);
			Print N'A multa que deve pagar é:' + @Multa +'.';

		update agendamentoServico
		set Multa = @Multa
		where CPFCliente = @CPFCliente and DataHoraPrevia = @DataHoraPrevia;

end;



		

	
	
	