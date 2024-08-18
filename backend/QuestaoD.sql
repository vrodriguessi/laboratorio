-- Exemplo 1: Aumentar o salário do funcionário Carlos Oliveira em 10%
UPDATE Funcionario
SET Salario = Salario * 1.10
WHERE Nome = 'Carlos Oliveira';

-- Exemplo 2: Alterar o nome fantasia de um laboratório específico
UPDATE Laboratorio
SET NomeFantasia = 'Laboratório Central'
WHERE CNPJ = '12345678901234';

-- Exemplo 3: Atualizar o endereço de uma unidade
UPDATE Unidade
SET Endereco = 'Rua Nova, 150'
WHERE CNPJ = '12345678901234';

-- Exemplo 4: Atualizar o status de todos os exames com preço inferior a R$ 80,00
UPDATE Exame
SET Status = 'Concluído'
WHERE Preco < '80.00';

-- Exemplo 5: Atualizar nomes de pacientes com base em informações na tabela Solicitante
UPDATE `Paciente`
SET `Nome` = 'Aladina Alberta'
WHERE `CPF` IN (
    SELECT `CPF`
    FROM `Solicitante`
    WHERE `Estado` = 'Estado B'
);
