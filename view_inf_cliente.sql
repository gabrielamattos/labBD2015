IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'inf_cliente')
    DROP VIEW inf_cliente
GO

create view inf_cliente as
		select primeiro_nome, sobrenome, sexo, cod_cabelo, fisica.CPF
		from fisica, cliente
		where fisica.CPF = cliente.CPF