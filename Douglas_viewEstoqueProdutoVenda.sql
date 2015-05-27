-- View: Estoque Produto Venda
-- Autor: Douglas

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'viewEstoqueProdutoVenda')
    DROP VIEW viewEstoqueProdutoVenda
GO

create view viewEstoqueProdutoVenda as
	select pv.CodigoProduto as Codigo_Produto, p.nome as Nome_Produto, quantidade, marca as Marca_Produto, PrecoVenda as Preco_venda, NomeTipo as Nome_Tipo
	from produtoVenda as pv, produto as p, linhaProduto as lp, tipo_produto as tp
	where pv.CodigoProduto = p.CodigoProduto and
		p.NomeLinha = lp.nome and
		tp.nome = p.NomeTipo;
