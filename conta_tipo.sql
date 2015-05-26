-- Nome: contaTipo
-- Resumo: Conta quantas ocorrências existem no banco de dados de cada tipo de cabelo
-- Autor: Breno

IF EXISTS (SELECT ROUTINE_NAME FROM INFORMATION_SCHEMA.ROUTINES
        WHERE ROUTINE_NAME = 'contaTipo')
    DROP procedure contaTipo
GO

create procedure contaTipo
as
	begin
	declare @Tipo1 numeric;
	declare @Tipo2 numeric;
	declare @Tipo3 numeric;
	declare @Tipo varchar;
	declare cursor_tipo cursor for
		select tipo 
		from cliente, cabelo
		where cliente.cod_cabelo = cabelo.cod_cabelo;
	declare @linhas numeric;
	declare @cont	numeric;
	
	open cursor_tipo;
	fetch	cursor_tipo into @Tipo;
	
	set @linhas = @@CURSOR_ROWS;
	set @cont = 0;
	
	while(@cont < @linhas)
		begin
			if @Tipo = 'Liso'
				set @Tipo1 = @Tipo1 + 1;
			else if @Tipo = 'Cacheado'
				set @Tipo2 = @Tipo2 + 1;
			else
				set @Tipo3 = @Tipo3 + 1;
				
			SET @cont = @cont + 1;
			fetch	cursor_tipo into @Tipo;
		end;
		
		close cursor_tipo;

		Print N'Tipo Liso:' + @Tipo1 + ',Tipo Cacheado:' +@Tipo2 + ',Tipo Crespo: ' + @Tipo3 +'.'
	
	end;	
