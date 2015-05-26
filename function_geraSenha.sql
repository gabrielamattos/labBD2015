-- Function: geraSenha
-- ~pequeno resumo~
-- Autor: Breno




IF EXISTS (SELECT ROUTINE_NAME FROM INFORMATION_SCHEMA.ROUTINES
        WHERE ROUTINE_NAME = 'geraSenha')
    DROP function geraSenha
GO

create function geraSenha
			(@CPF numeric, @codigo numeric)
	returns varchar
	begin
	declare @CPFf numeric;
	declare @cod numeric;

		set @CPFf = @CPF;
		set @cod = @codigo;
		return convert(varchar(16),(@CPFf + @cod));
	end;	