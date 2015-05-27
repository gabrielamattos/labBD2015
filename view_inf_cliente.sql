--Nome: inf_cliente
--Resumo: view que exibe informações CPF, nome completo, sexo e código cabelo do cliente
--Autor: Breno

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'inf_cliente')
    DROP VIEW inf_cliente
GO

create view inf_cliente as
		select fisica.CPF as CPF, primeiro_nome as Primeiro_Nome, sobrenome as Sobrenome, sexo, cod_cabelo 
		from fisica, cliente
		where fisica.CPF = cliente.CPF
