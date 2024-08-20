-- 1. Consulta simples para listar todos os pacientes.
-- Recupera o CPF, nome e data de nascimento de todos os pacientes registrados.
SELECT CPF, Nome, DataNascimento
FROM Paciente;

-- 2. Consulta simples com cláusula WHERE.
-- Recupera todos os exames cujo preço é maior que 80.
SELECT ID, Nome, Preco
FROM Exame
WHERE Preco > 80;

-- 3. Consulta com ORDER BY.
-- Lista todos os funcionários ordenados pelo salário de forma decrescente.
SELECT CPF, Nome, Salario
FROM Funcionario
ORDER BY Salario DESC;

-- 4. Consulta com cláusula LIKE.
-- Busca laboratórios cujo nome contém 'Lab A'.
SELECT CNPJ, NomeFantasia
FROM Laboratorio
WHERE NomeFantasia LIKE '%Lab A%';

-- 5. Consulta com função agregada.
-- Conta o número total de exames realizados no sistema.
SELECT COUNT(*) AS TotalExames
FROM Exame;

-- 6. Consulta com subconsulta e cláusula IN.
-- Consulta todos os exames feitos de acordo com o ID do exame.
SELECT *
FROM Prontuario
WHERE ID IN (
    SELECT Prontuario_ID
    FROM `Composto por`
    WHERE Exame_ID IN ('EX001')
);

-- 7. Consulta com JOIN e função agregada.
-- Calcula o salário médio dos funcionários por laboratório.
SELECT l.NomeFantasia, ROUND(AVG(f.Salario), 2) AS MediaSalario
FROM Funcionario f
JOIN `Trabalha em` te ON f.CPF = te.Funcionario_CPF
JOIN Unidade u ON te.Unidade_CNPJ = u.CNPJ
JOIN Laboratorio l ON u.Laboratorio_CNPJ = l.CNPJ
GROUP BY l.NomeFantasia;


-- 8. Consulta com junção externa (OUTER JOIN).
-- Consulta que retorna uma lista de pacientes e os nomes dos solicitantes associados aos exames.
SELECT p.Nome AS PacienteNome, s.Nome AS SolicitanteNome
FROM `mydb`.`Prontuario` pr
LEFT JOIN `mydb`.`Paciente` p ON pr.Paciente_CPF = p.CPF
LEFT JOIN `mydb`.`Solicitante` s ON pr.Solicitante_CPF = s.CPF;

-- 9. Consulta com UNION.
-- Lista todas as cidades onde há exames realizados e onde há unidades de laboratórios, com a contagem de exames para as cidades que possuem exames
SELECT
    Cidade,
    COUNT(e.ID) AS TotalExames
FROM
    Unidade u
LEFT JOIN
    Exame e ON u.CNPJ = e.Unidade_CNPJ
GROUP BY
    Cidade

UNION

SELECT
    Cidade,
    0 AS TotalExames
FROM
    Unidade u
WHERE
    Cidade NOT IN (
        SELECT
            p.Cidade
        FROM
            Paciente p
        JOIN
            Prontuario pr ON p.CPF = pr.Paciente_CPF
        GROUP BY
            p.Cidade
    )
GROUP BY
    Cidade;

-- 10. Consulta com subconsulta correlacionada.
-- Consulta com subconsulta correlacionada para listar cidades e o número total de exames realizados, apenas para cidades com mais exames que a média geral.
SELECT
    u.Cidade,
    (SELECT COUNT(e.ID)
     FROM Exame e
     JOIN Unidade u2 ON e.Unidade_CNPJ = u2.CNPJ
     WHERE u2.Cidade = u.Cidade) AS TotalExames
FROM Unidade u
GROUP BY u.Cidade
HAVING TotalExames > (
    SELECT AVG(ExameCount) 
    FROM (
        SELECT
            u2.Cidade,
            COUNT(e.ID) AS ExameCount
        FROM Unidade u2
        LEFT JOIN Exame e ON u2.CNPJ = e.Unidade_CNPJ
        GROUP BY u2.Cidade
    ) AS CidadesExames
);

-- 11. Consulta com função agregada HAVING.
-- Listar os laboratorios com mais de um exame.
SELECT l.NomeFantasia, COUNT(e.ID) AS TotalExames
FROM Laboratorio l
JOIN Unidade u ON l.CNPJ = u.Laboratorio_CNPJ
JOIN Exame e ON u.CNPJ = e.Unidade_CNPJ
GROUP BY l.NomeFantasia
HAVING COUNT(e.ID) > 1;


-- 12. OR e BETWEEN
-- Listar todos os exames cujo preço está entre R$70,00 e R$80,00 ou que pertencem a uma unidade em "Cidade 110"
SELECT DISTINCT e.*
FROM Exame e
LEFT JOIN Unidade u ON e.Unidade_CNPJ = u.CNPJ
WHERE e.Preco BETWEEN 70.00 AND 85.00
   OR u.Cidade = 'Cidade 110';
   
-- 13.NOT e IN
-- Listar todas as unidades que possuem exames com preços maiores que qualquer um dos valores especificados (R$80,00) e que não estão localizadas nas cidades 'Cidade 101' e 'Cidade 102'.
SELECT DISTINCT u.*
FROM Unidade u
WHERE u.Cidade NOT IN ('Cidade 101', 'Cidade 102')
  AND EXISTS (
    SELECT 1
    FROM Exame e
    WHERE e.Unidade_CNPJ = u.CNPJ
      AND e.Preco > 80.00
);

-- 13. EXISTS
-- Obtém solicitantes que só solicitaram exames com preços menores ou iguais a R$80,00.
SELECT s.Nome AS SolicitanteNome
FROM `mydb`.`Solicitante` s
WHERE NOT EXISTS (
    SELECT 1
    FROM `mydb`.`Prontuario` pr
    JOIN `mydb`.`Composto por` cp ON pr.ID = cp.Prontuario_ID
    JOIN `mydb`.`Exame` e ON cp.Exame_ID = e.ID
    WHERE pr.Solicitante_CPF = s.CPF
    AND e.Preco >= 80.00
);

-- 14. ALL
-- encontrar todos os pacientes que têm um telefone registrado na tabela TelefonePaciente 
-- e cujas informações estão presentes na tabela Prontuario.
SELECT p.CPF, p.Nome
FROM mydb.Paciente p
WHERE p.CPF = ALL (
    SELECT tp.Paciente_CPF
    FROM mydb.TelefonePaciente tp
    WHERE tp.Telefone IN (
        SELECT t.Telefone
        FROM mydb.TelefonePaciente t
        WHERE t.Paciente_CPF = p.CPF
    )
);

-- 15. ANY
-- Subconsulta para obter uma lista de estados com laboratorio de apoio
-- Consulta que seleciona pacientes nos estados retornados pela subconsulta.
SELECT *
FROM Paciente
WHERE Estado = ANY (
    SELECT Estado
    FROM Laboratorio
    WHERE TipoLaboratorio = 'apoio'
);

-- 16. IS NULL
-- Encontrar pacientes sem telefone
SELECT p.*
FROM Paciente p
LEFT JOIN TelefonePaciente tp ON p.CPF = tp.Paciente_CPF
WHERE tp.Telefone IS NULL;
