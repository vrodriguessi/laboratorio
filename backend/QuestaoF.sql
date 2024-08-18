-- 1. Consulta simples para listar todos os pacientes.
-- Recupera o CPF, nome e data de nascimento de todos os pacientes registrados.
SELECT CPF, Nome, DataNascimento
FROM Paciente;

-- 2. Consulta simples com cláusula WHERE.
-- Recupera todos os exames realizados em uma data específica.
SELECT ID, NomeExame, DataRealizacao
FROM Exame
WHERE DataRealizacao = '2024-08-01';

-- 3. Consulta com ORDER BY.
-- Lista todos os funcionários ordenados pelo salário de forma decrescente.
SELECT CPF, Nome, Salario
FROM Funcionario
ORDER BY Salario DESC;

-- 4. Consulta com cláusula LIKE.
-- Busca laboratórios cujo nome contém 'Clínica'.
SELECT CNPJ, NomeFantasia
FROM Laboratorio
WHERE NomeFantasia LIKE '%Clínica%';

-- 5. Consulta com função agregada.
-- Conta o número total de exames realizados no sistema.
SELECT COUNT(*) AS TotalExames
FROM Exame;

-- 6. Consulta com subconsulta e cláusula IN.
-- Recupera os nomes dos pacientes que realizaram exames em mais de um laboratório diferente.
SELECT Nome 
FROM Paciente
WHERE CPF IN (
  SELECT Paciente_CPF
  FROM Exame e
  JOIN Unidade u ON e.Unidade_CNPJ = u.CNPJ
  GROUP BY Paciente_CPF
  HAVING COUNT(DISTINCT u.Laboratorio_CNPJ) > 1
);

-- 7. Consulta com JOIN e função agregada.
-- Calcula o salário médio dos funcionários por laboratório.
SELECT l.NomeFantasia, AVG(f.Salario) AS MediaSalario
FROM Funcionario f
JOIN Unidade u ON f.Cidade = u.Cidade AND f.Estado = u.Estado
JOIN Laboratorio l ON u.Laboratorio_CNPJ = l.CNPJ
GROUP BY l.NomeFantasia;

-- 8. Consulta com junção externa (OUTER JOIN).
-- Lista todos os laboratórios e o número de exames realizados, incluindo aqueles que ainda não têm exames registrados.
SELECT l.NomeFantasia, COUNT(e.ID) AS TotalExames
FROM Laboratorio l
LEFT JOIN Unidade u ON l.CNPJ = u.Laboratorio_CNPJ
LEFT JOIN Exame e ON u.CNPJ = e.Unidade_CNPJ
GROUP BY l.NomeFantasia;

-- 9. Consulta com UNION.
-- Combina a lista de cidades onde há unidades de laboratórios com a lista de cidades de origem dos pacientes.
SELECT Cidade FROM Unidade
UNION
SELECT Cidade FROM Paciente;

-- 10. Consulta com subconsulta correlacionada.
-- Retorna o nome e a data de nascimento do paciente mais velho.
SELECT Nome, DataNascimento
FROM Paciente
WHERE DataNascimento = (
  SELECT MIN(DataNascimento)
  FROM Paciente
);

-- 11. Consulta com função agregada HAVING.
-- Lista os estados que possuem mais de 10 funcionários.
SELECT Estado, COUNT(*) AS TotalFuncionarios
FROM Funcionario
GROUP BY Estado
HAVING COUNT(*) > 10;

-- 12. Consulta com subconsulta aninhada.
-- Encontra os laboratórios que possuem o maior número de unidades.
SELECT NomeFantasia
FROM Laboratorio
WHERE CNPJ = (
  SELECT Laboratorio_CNPJ
  FROM Unidade
  GROUP BY Laboratorio_CNPJ
  ORDER BY COUNT(*) DESC
  LIMIT 1
);
