use clinica_medica;

SELECT 
    c.id_consulta, 
    p.nome AS paciente, 
    m.nome AS medico, 
    c.data_hora, 
    c.observacoes
FROM Consultas c
JOIN Pacientes p ON c.id_paciente = p.id_paciente
JOIN Medicos m ON c.id_medico = m.id_medico
ORDER BY c.data_hora;

SELECT 
    p.nome AS paciente, 
    c.data_hora
FROM Consultas c
JOIN Pacientes p ON c.id_paciente = p.id_paciente
JOIN Medicos m ON c.id_medico = m.id_medico
WHERE m.nome = 'Dr. Carlos Santos'
ORDER BY c.data_hora;

SELECT 
    p.nome, 
    COUNT(c.id_consulta) AS total_consultas
FROM Pacientes p
LEFT JOIN Consultas c ON p.id_paciente = c.id_paciente
GROUP BY p.nome
ORDER BY total_consultas DESC;

SELECT DISTINCT p.nome AS nome_paciente
FROM Pacientes p
JOIN Consultas c ON p.id_paciente = c.id_paciente
JOIN Medicos m ON c.id_medico = m.id_medico
WHERE m.nome = 'Dra. Ana Costa';

SELECT 
    m.nome, 
    m.especialidade,
    COUNT(c.id_consulta) AS numero_consultas
FROM Medicos m
LEFT JOIN Consultas c ON m.id_medico = c.id_medico
GROUP BY m.nome, m.especialidade
ORDER BY numero_consultas DESC;

SELECT 
    p.nome AS paciente,
    m.nome AS medico,
    c.data_hora
FROM Consultas c
JOIN Pacientes p ON c.id_paciente = p.id_paciente
JOIN Medicos m ON c.id_medico = m.id_medico
WHERE DATE(c.data_hora) = '2025-08-17'
ORDER BY c.data_hora;