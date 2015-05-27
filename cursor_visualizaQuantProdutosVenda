-- Nome: visualizaQuantProdutosVenda
-- Resumo: Baseado em um requisito do ambiente do sistema, serve para informar com mais detalhes a quantidade dos produtos do estoque de venda
-- Autor: Douglas

IF EXISTS (SELECT ROUTINE_NAME FROM INFORMATION_SCHEMA.ROUTINES
        WHERE ROUTINE_NAME = 'visualizaQuantProdutosVenda')
    DROP procedure visualizaQuantProdutosVenda
GO

create procedure visualizaQuantProdutosVenda
as
	begin
	declare @porcentagem numeric(4,2); -- Calcula quantos por cento a mais ou a menos determinado produto tem em quantidade com relacao a quantidade minima
	declare dadosEstoqueVenda cursor for
		select nome, produto.CodigoProduto, quantidade, quantidadeMinima  
		from produto, produtoVenda
		where produto.CodigoProduto = produtoVenda.CodigoProduto;
	declare @nome varchar(40);
	declare @codigoProduto numeric(20);
	declare @quantidade numeric(6);
	declare @quantidadeMinima numeric(3);
	declare @statusEstoque varchar(20);
	declare @linhas numeric;
	declare @cont	numeric;
	
	open dadosEstoqueVenda;
	fetch dadosEstoqueVenda into @nome, @codigoProduto, @quantidade, @quantidadeMinima;
	
	set @linhas = @@CURSOR_ROWS;
	set @cont = 0;
	
	while(@cont < @linhas)
	begin
		set @porcentagem = @quantidade / @quantidadeMinima;
		if @porcentagem >= 2
			set @statusEstoque = 'Cheio'
		else if @porcentagem >= 1.5
				set @statusEstoque = 'Otimo'
			else if @porcentagem >= 1.25
					set @statusEstoque = 'Bom'
				else if @porcentagem > 1
						set @statusEstoque = 'Proximo do baixo'
					else 
						set @statusEstoque = 'Baixo'

		Print N'O produto de codigo ' + @codigoProduto + ' e nome ' + @nome + ' estah com o estoque ' + @statusEstoque +'.'
				
		SET @cont = @cont + 1;
		fetch dadosEstoqueVenda into @nome, @codigoProduto, @quantidade, @quantidadeMinima;
	end;
		
	close dadosEstoqueVenda;	
end;	
