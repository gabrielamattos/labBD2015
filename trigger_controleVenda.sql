-- Trigger: controleVenda
-- Autor: Breno, Douglas, Gabriela e Rodrigo

If Object_id ('controleVenda','TR') Is Not Null 
Drop Trigger controleVenda 
Go
create trigger controleVenda
		on venda
		instead of insert
		as
		begin

		declare	@CodigoVenda numeric(20);
		declare	@ValorTotal numeric(5,2);
		declare	@DataPagamento date;
		declare	@CPFFunc numeric(11);

		select @CodigoVenda = CodigoVenda, @ValorTotal = ValorTotal, @DataPagamento = DataPagamento, @CPFFunc = CPFFunc
			from inserted;

		IF EXISTS (SELECT @CPFFunc FROM funcAdministrativo
					WHERE @CPFFunc = CPF)
				insert into venda (CodigoVenda, ValorTotal, DataPagamento, CPFFunc)
					values (@CodigoVenda, @ValorTotal, @DataPagamento, @CPFFunc);

		ELSE
			Print N'Este funcionario nao pode inserir'

end;
