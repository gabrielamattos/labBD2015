select CPF,
 DadosCliente.value('(/Cliente/PrimeiroNome)[1]', 'varchar(40)')+ ' '+DadosCliente.value('(/Cliente/Sobrenome)[1]', 'varchar(40)')as Nome_Completo,
 DadosCliente.value('(/Cliente/CabeloCliente/Cor)[1]', 'varchar(40)') as Cor_Cabelo,
 DadosCliente.value('(/Cliente/CabeloCliente/Tipo)[1]', 'varchar(40)') as Tipo_Cabelo,
 DadosCliente.value('(/Cliente/CabeloCliente/Tamanho)[1]', 'varchar(40)') as Tamanho_Cabelo
from cliente
order by Nome_Completo;
