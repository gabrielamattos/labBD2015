select CPF,
 DadosCliente.value('(/Cliente/PrimeiroNome)[1]', 'varchar(40)')+ ' '+DadosCliente.value('(/Cliente/Sobrenome)[1]', 'varchar(40)')as Nome_Completo,
 DadosCliente.value('(/Cliente/Rua)[1]', 'varchar(40)')+' N. '
 +DadosCliente.value('(/Cliente/Numero)[1]', 'varchar(10)') as Endereco,
 DadosCliente.value('(/Cliente/Municipio)[1]', 'varchar(40)') as Municipio,
 DadosCliente.value('(/Cliente/Estado)[1]', 'varchar(40)') as Estado,
  DadosCliente.value('(/Cliente/CEP)[1]', 'varchar(10)') as CEP
from cliente
order by Nome_Completo;
