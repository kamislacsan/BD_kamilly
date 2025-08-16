INSERT INTO Pacientes (nome, data_nascimento, telefone, email) VALUES
('João Silva', '1990-05-15', '11987654321', 'joao.silva@email.com'),
('Maria Oliveira', '1985-10-20', '11998765432', 'maria.o@email.com'),
('Pedro Souza', '2000-01-01', '11976543210', 'pedro.souza@email.com');

INSERT INTO Medicos (nome, crm, especialidade) VALUES
('Dr. Carlos Santos', 'CRM/SP 123456', 'Clínico Geral'),
('Dra. Ana Costa', 'CRM/SP 654321', 'Cardiologia');

INSERT INTO Consultas (id_paciente, id_medico, data_hora, observacoes) VALUES
(1, 1, '2025-08-15 10:00:00', 'Paciente com dor de cabeça.'),
(2, 2, '2025-08-16 14:30:00', 'Avaliação de rotina.'),
(1, 2, '2025-08-17 09:00:00', 'Retorno para exames.'),
(3, 1, '2025-08-17 11:00:00', 'Consulta de emergência.');
