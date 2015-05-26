


--Autora: Gabriela
IF EXISTS (SELECT ROUTINE_NAME FROM INFORMATION_SCHEMA.ROUTINES
        WHERE ROUTINE_NAME = 'atualizarValor')
    DROP function atualizarValor;
GO


create function atualizarValor
	(@valorparam numeric)
	returns numeric	
		begin
		declare @Valor numeric;
			
			set @Valor = @Valor + 0.15*@valorparam;
			
			return @Valor;
		end;