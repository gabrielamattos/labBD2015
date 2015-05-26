If Object_id ('antes_inserir_em_inf_cliente','TR') Is Not Null 
Drop Trigger antes_inserir_em_inf_cliente 
Go

create trigger antes_inserir_em_inf_cliente
		on inf_cliente
		instead of insert
		as
		begin
		
		declare	@novo_cod numeric;
		declare @novo_CPF numeric;
		declare @novo_primeiro_nome varchar;
		declare	@novo_sobrenome varchar;
		declare @senha numeric;
		declare @novo_sexo varchar;
		declare	@novo_cod_cabelo varchar;

		
			select @novo_cod = max(cod_pessoa)+1 
			from pessoa
			select @novo_primeiro_nome = primeiro_nome, @novo_sobrenome = sobrenome,
				  @novo_sexo = sexo, @novo_cod_cabelo = cod_cabelo,  @novo_CPF = CPF
			from INSERTED
			
			set @senha = DBO.geraSenha(@novo_CPF, @novo_cod);

			insert into fisica(CPF, cod_pessoa, primeiro_nome, sobrenome, senha, sexo)
					values (@novo_CPF, @novo_cod, @novo_primeiro_nome, @novo_sobrenome, @senha, @novo_sexo);
			insert into cliente(CPF,cod_cabelo)	
					values(@novo_CPF,@novo_cod_cabelo);
end;			
	