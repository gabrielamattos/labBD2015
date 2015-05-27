-- Cursor, procedure: atualizaSalariosInflacao
-- Procedure com cursor que atualiza os salarios da tabela cargo conforme uma inflacao dada
-- Autor: Rodrigo

IF EXISTS (SELECT ROUTINE_NAME FROM INFORMATION_SCHEMA.ROUTINES
        WHERE ROUTINE_NAME = 'procedureInflacaoSalario')
    DROP procedure procedureInflacaoSalario
GO

create procedure procedureInflacaoSalario (@inflacao numeric(10,2))
as
begin
	DECLARE @salario numeric(10,2),			
			@contador numeric
			
    
	-- Cursor para percorrer os nomes dos objetos
	DECLARE cursor_salario CURSOR FOR
		SELECT
			  cg.salario
		FROM
			cargo as cg
 
	OPEN cursor_salario
	FETCH NEXT FROM cursor_salario INTO @salario
	set @contador = 1
	set @inflacao = 1.04
	-- Percorrendo linhas do cursor (enquanto houverem)
	WHILE @@FETCH_STATUS = 0
	BEGIN
	
		--Atualiza cada salario
	
		update cargo
		set salario = @salario * (@inflacao+1)
		where cargo.cod_cargo = @contador


		set @contador = @contador + 1
		FETCH NEXT FROM cursor_salario INTO @salario
	END
	CLOSE cursor_salario
	DEALLOCATE cursor_salario
end;
