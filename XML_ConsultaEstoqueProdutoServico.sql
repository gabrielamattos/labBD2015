select CodigoProduto as Codigo_Produto,	DadosprodutoServico.value('(/produtoServico/linhaProduto/nomeLinha)[1]', 'varchar(40)') as Nome_Produto, DadosprodutoServico.value('(/produtoServico/quantidade)[1]', 'numeric(6)') as Quantidade, DadosprodutoServico.value('(/produtoServico/tipoProduto/nomeTipo)[1]', 'varchar(40)') as Nome_Tipo
	from produtoServico;
