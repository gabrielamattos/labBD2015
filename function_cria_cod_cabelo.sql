-- Nome: cria_cod_cabelo
-- Resumo: função para criar o código do cabelo (que não é único, ou seja, se clientes se enquadrarem na mesma descrição
-- eles podem possuir mesmo código de cabelo) a partir de informações de tipo, tamanho e cor
-- Autor: Breno

IF EXISTS (SELECT ROUTINE_NAME FROM INFORMATION_SCHEMA.ROUTINES
        WHERE ROUTINE_NAME = 'cria_cod_cabelo')
    DROP function cria_cod_cabelo;
GO


create function cria_cod_cabelo
		(@tipo varchar, @tamanho varchar, @cor varchar)
	returns numeric	
		begin
		declare @codigo numeric;
			set @codigo = 0;
			if @tipo = 'Liso'
				set @codigo = @codigo + 100;
			else if @tipo = 'Cacheado'
				set @codigo = @codigo + 200;
			else
				set @codigo = @codigo + 300;
			
			if @tamanho = 'Curto'
				set @codigo = @codigo + 30;
			else if @tamanho = 'Medio'
				set @codigo = @codigo + 20;
			else
				set @codigo = @codigo + 10;
		
			if @cor = 'Castanho'
				set @codigo = @codigo + 1;
			else if @cor = 'Preto'
				set @codigo = @codigo + 2;
			else if @cor = 'Loiro'
				set @codigo = @codigo + 3;
			else if @cor = 'Ruivo'
				set @codigo = @codigo + 4;
			
			return @codigo;
		end;	
