-- View: Agendamento de Serviço
-- Seleciona todos os agendamentos de atendimento ao cliente, apresentando o nome do cliente e o horário
-- Utilizada para os funcionarios 
-- Autora: Gabriela

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
        WHERE TABLE_NAME = 'AgendamentoAtendimentoCliente')
    DROP VIEW AgendamentoAtendimentoCliente;
GO

create view AgendamentoAtendimentoCliente as 
	select primeiro_nome as [Nome Cliente],
		   DataHoraPrevia as [Data Hora]
	from fisica, agendamentoServico
	where fisica.CPF = agendamentoServico.CPFCliente;