-- Nome: contaTipoServico
-- Autor: Gabriela Mattos

IF EXISTS (SELECT ROUTINE_NAME FROM INFORMATION_SCHEMA.ROUTINES
        WHERE ROUTINE_NAME = 'contaTipoServico')
    DROP procedure contaTipoServico
GO


create procedure contaTipoServico
as
	begin
	declare cursor_contaTipoServico cursor for
		select Nome 
		from tipoServico;
	declare @linhas numeric;
	declare @cont	numeric;
	declare @nome varchar;
	declare @schemaName varchar;
	declare @contador numeric;
	
	open cursor_contaTipoServico ;
	fetch	cursor_contaTipoServico  into @Nome;
	
	set @linhas = @@CURSOR_ROWS;
	set @cont = 0;
	
	while(@cont < @linhas)
		begin
				PRINT  N'Nome tipo servico: '+  @schemaName+'.'

				set @contador = @contador + 1
   				FETCH NEXT FROM cursor_contaTipoServico INTO @schemaName
		end;
		
		close cursor_contaTipoServico;
	
	end;	