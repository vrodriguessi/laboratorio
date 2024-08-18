-- Atualizar dados em uma tabela
UPDATE `Funcionario`
SET `Salario` = `Salario` * 1.10
WHERE `Nome` = 'Carlos Oliveira';

-- Atualizar dados em duas tabelas (aninhado)
UPDATE `Paciente` p
JOIN `Solicitante` s ON p.CPF = s.CPF
SET p.`Nome` = 'Aladina Alberta'
WHERE s.`Estado` = 'Estado B';
