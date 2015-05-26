-- View: tipoServico
-- ~pequeno resumo~
-- Autor: Gabriela




IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'tipoServico')
    DROP VIEW viewtipoServico;
GO

create view tipoServico as
	select	Nome as [Nome Servico],
		Valor as [Valor Servico]
	from tipoServico;