--View: InfoFunc
--Autor: Rodrigo

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'InfoFunc')
    DROP VIEW InfoFunc
GO

create view InfoFunc as
	select fis.primeiro_nome+' '+fis.sobrenome as Nome, cg.nome as NomeCargo, certif.nome_curso as Titulo
	from fisica as fis, cargo as cg, funcionario as func, certificado as certif, funcServico
	where fis.CPF=func.CPF
	 and func.cod_cargo = cg.cod_cargo
	 and funcServico.CPF = func.CPF
	 and funcServico.CPF = certif.CPF 
	 union
	 select fis.primeiro_nome+' '+ fis.sobrenome as Nome, cg.nome as NomeCargo, form.formacao as Titulo
	from fisica as fis, cargo as cg, funcionario as func, formacao as form, funcAdministrativo
	where fis.CPF=func.CPF
	 and func.cod_cargo = cg.cod_cargo
	 and funcAdministrativo.CPF = func.CPF
	 and funcAdministrativo.CPF = form.CPF
	 

	 