-- View: Estoque Produto Servico
-- Autor: Douglas



IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'viewEstoqueProdutoServico')
    DROP VIEW viewEstoqueProdutoServico;
GO

create view viewEstoqueProdutoServico as
	select ps.CodigoProduto as Codigo_Produto,	p.nome as Nome_Produto, Quantidade, NomeTipo as Nome_Tipo
	from produtoServico as ps, produto as p, tipo_produto as tp
	where ps.CodigoProduto = p.CodigoProduto and
		  tp.nome = p.NomeTipo;
