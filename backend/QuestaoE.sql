-- Excluir dados de uma tabela
DELETE FROM `Funcionario`
WHERE `Nome` = 'Carlos Oliveira';

-- Excluir dados em duas tabelas (aninhado)
DELETE FROM `Paciente`
WHERE `CPF` IN (SELECT `Paciente_CPF` FROM `Prontuario` WHERE `DataDeCadastro` < '2024-01-01');
