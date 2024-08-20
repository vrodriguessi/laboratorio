-- Modificações em 5 tabelas
-- Exemplo 1: Aumentar o salário do funcionário Carlos Oliveira em 10%
UPDATE Funcionario
SET Salario = Salario * 1.10
WHERE Nome = 'Carlos Lima';

SET SQL_SAFE_UPDATES = 0;

SELECT Nome, Salario
FROM Funcionario
WHERE Nome = 'Carlos Lima';

-- Exemplo 2: Alterar o nome fantasia de um laboratório específico
UPDATE Laboratorio
SET NomeFantasia = 'Laboratório Central'
WHERE CNPJ = '32345678000101';

SELECT CNPJ, NomeFantasia
FROM Laboratorio
WHERE CNPJ = '32345678000101';

-- Exemplo 3: Atualizar o endereço de uma unidade
UPDATE Unidade
SET Logradouro = 'Rua Nova, 150'
WHERE CNPJ = '12345678000101';

SELECT CNPJ, Nome, Logradouro
FROM Unidade
WHERE CNPJ = '12345678000101';

-- Exemplo 4: Atualizar o setor de todos os exames com preço inferior ou igual a 85.00
UPDATE Exame
SET Setor = 'LAB'
WHERE Preco <= 85.00;

SELECT *
FROM Exame;

-- Exemplo 5: Atualizar nomes de pacientes com base em informações na tabela Solicitante
-- Atualizar o logradouro dos pacientes em uma cidade específica usando uma tabela derivada
UPDATE Paciente
JOIN (
    SELECT DISTINCT Cidade
    FROM Paciente
    WHERE Cidade = 'Cidade A'
) AS Cidades
ON Paciente.Cidade = Cidades.Cidade
SET Paciente.Logradouro = 'Rua Atualizada, 123';

-- Verificar as atualizações
SELECT CPF, Nome, Logradouro, Cidade
FROM Paciente
WHERE Cidade = 'Cidade A';