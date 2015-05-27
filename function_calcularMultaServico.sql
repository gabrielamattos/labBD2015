-- Function: calcularMultaServico
-- Verifica se já passou a data do serviço e então calcula uma multa a partir do valor do servico
-- Autora: Gabriela

IF EXISTS (SELECT ROUTINE_NAME FROM INFORMATION_SCHEMA.ROUTINES
        WHERE ROUTINE_NAME = 'calcularMultaServico')
    DROP function calcularMultaServico;
GO

create function calcularMultaServico
		(@Valor numeric, @DataHoraPrevia date)
	returns numeric
		begin
		declare @Multa numeric;
		declare @DataAtual DATETIME;
		declare @data timestamp;

		set @DataAtual = getdate();



		set @data = CAST(@DataAtual AS TIMESTAMP);

		if @DataHoraPrevia < @DataAtual 
			set @Multa = @Valor*0.2;
		else
			set @Multa = 0

		return @Multa
		end
