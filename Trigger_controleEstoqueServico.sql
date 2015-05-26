-- Trigger: controleEstoqueServico
-- Autor: 

If Object_id ('controleEstoqueServico','TR') Is Not Null 
Drop Trigger controleEstoqueServico 
Go

		create trigger controleEstoqueServico
		on produtoServico
		after update
		as
		begin
		
		declare	@nova_quant numeric;
		declare @quantidadeMinima numeric;
		declare @nomeProduto varchar;
		declare @cod_produto numeric;
		
			select @nova_quant = Quantidade, @cod_produto = CodigoProduto, @nomeProduto = nome 
			from UPDATED;
			select @quantidadeMinima = QuantidadeMinima
			from produto
			where CodigoProduto = @cod_produto;
			
		if(@nova_quant <= @quantidadeMinima)
			Print N'Produto com estoque baixo :' + @nomeProduto +'.'
		
end;	
