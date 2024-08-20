-- Consultas
-- 1. Consulta simples para listar todos os pacientes.
-- Recupera o CPF e o nome de todos os pacientes registrados.
SELECT CPF, Nome
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

-- 5. Consulta com o uso do COUNT
-- Conta o número total de exames realizados no sistema.
SELECT COUNT(*) AS TotalExames
FROM Exame;

-- 6. Consulta com subconsulta e cláusula IN.
-- Recupera todos os registros da tabela Prontuario para os quais há um relacionamento na tabela
-- Composto por que corresponde ao exame com Exame_ID igual a 'EX001'
-- Ou seja, busca todos os prontuários associados ao exame EX001.
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
-- Recupera os nomes dos pacientes e dos solicitantes associados a prontuários.
SELECT p.Nome AS PacienteNome, s.Nome AS SolicitanteNome
FROM `mydb`.`Prontuario` pr
LEFT JOIN `mydb`.`Paciente` p ON pr.Paciente_CPF = p.CPF
LEFT JOIN `mydb`.`Solicitante` s ON pr.Solicitante_CPF = s.CPF;

-- 9. Consulta com UNION.
-- Lista todas as cidades onde há exames realizados e onde há unidades de laboratórios, 
-- com a contagem de exames para as cidades que possuem exames.
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

-- 10. Consulta com função agregada HAVING.
-- Listar os laboratorios com mais de um exame.
SELECT l.NomeFantasia, COUNT(e.ID) AS TotalExames
FROM Laboratorio l
JOIN Unidade u ON l.CNPJ = u.Laboratorio_CNPJ
JOIN Exame e ON u.CNPJ = e.Unidade_CNPJ
GROUP BY l.NomeFantasia
HAVING COUNT(e.ID) > 1;

-- 11. OR e BETWEEN
-- Listar todos os exames cujo preço está entre R$70,00 e R$80,00 ou que pertencem
-- a uma unidade em "Cidade 110".
SELECT DISTINCT e.*
FROM Exame e
LEFT JOIN Unidade u ON e.Unidade_CNPJ = u.CNPJ
WHERE e.Preco BETWEEN 70.00 AND 85.00
   OR u.Cidade = 'Cidade 110';

-- 12. EXISTS
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

-- 13. ALL
-- Encontrar todos os exames cujo preço é maior do que todos os preços de exames
-- realizados na unidade com o CNPJ '12345678000102'.
	SELECT *
	FROM Exame
	WHERE Preco > ALL (
		SELECT Preco
		FROM Exame
		WHERE Unidade_CNPJ = '12345678000102'
	);

-- 14. ANY
-- Seleciona todos os pacientes que estão localizados em estados
-- onde há pelo menos um laboratório do tipo 'apoio'
SELECT *
FROM Paciente
WHERE Estado = ANY (
    SELECT Estado
    FROM Laboratorio
    WHERE TipoLaboratorio = 'apoio'
);

-- 15. IS NULL
-- Encontrar pacientes sem telefone
SELECT p.*
FROM Paciente p
LEFT JOIN TelefonePaciente tp ON p.CPF = tp.Paciente_CPF
WHERE tp.Telefone IS NULL;