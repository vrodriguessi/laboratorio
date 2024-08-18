-- Excluir o funcionário chamado 'Carlos Oliveira'
DELETE FROM `Funcionario`
WHERE `Nome` = 'Carlos Oliveira';

SELECT * FROM `Funcionario` WHERE `Nome` = 'Carlos Oliveira';

-- Excluir o solicitante com CPF específico
DELETE FROM `Solicitante`
WHERE `CPF` = '12345678901';

SELECT * FROM `Solicitante` WHERE `CPF` = '12345678901';

-- Excluir a unidade de laboratório com o CNPJ especificado
DELETE FROM `Unidade`
WHERE `CNPJ` = '12345678000101';

SELECT * FROM `Unidade` WHERE `CNPJ` = '12345678000101';


-- Excluir o laboratório com o CNPJ especificado
DELETE FROM `Laboratorio`
WHERE `CNPJ` = '32345678000102';

SELECT * FROM `Laboratorio` WHERE `CNPJ` = '32345678000102';

-- Excluir pacientes cujos prontuários foram cadastrados antes de 2024-01-01
DELETE FROM `Paciente`
WHERE `CPF` IN (
    SELECT `Paciente_CPF`
    FROM `Prontuario`
    WHERE `DataDeCadastro` < '2024-01-01'
);

SELECT * FROM `Paciente` WHERE `CPF` IN (
    SELECT `Paciente_CPF`
    FROM `Prontuario`
    WHERE `DataDeCadastro` < '2024-01-01'
);

