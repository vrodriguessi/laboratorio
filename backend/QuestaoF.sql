-- 1. Consulta simples
SELECT * FROM `Paciente`;

-- 2. Consulta com JOIN
SELECT p.`Nome`, s.`Nome` AS `SolicitanteNome`
FROM `Paciente` p
JOIN `Solicitante` s ON p.`CPF` = s.`CPF`;

-- 3. Consulta com WHERE
SELECT * FROM `Funcionario`
WHERE `Salario` > 2000;

-- 4. Consulta com ORDER BY
SELECT * FROM `Unidade`
ORDER BY `Nome` ASC;

-- 5. Consulta com GROUP BY e COUNT
SELECT `Estado`, COUNT(*) AS `Total`
FROM `Paciente`
GROUP BY `Estado`;

-- 6. Consulta com HAVING
SELECT `Estado`, COUNT(*) AS `Total`
FROM `Paciente`
GROUP BY `Estado`
HAVING COUNT(*) > 2;

-- 7. Consulta com UNION
SELECT `Nome` FROM `Paciente`
UNION
SELECT `Nome` FROM `Funcionario`;

-- 8. Consulta com LIKE
SELECT * FROM `Solicitante`
WHERE `Nome` LIKE 'João%';

-- 9. Consulta com EXISTS
SELECT * FROM `Paciente`
WHERE EXISTS (SELECT 1 FROM `Prontuario` WHERE `Paciente_CPF` = `Paciente`.`CPF`);

-- 10. Consulta com BETWEEN
SELECT * FROM `Funcionario`
WHERE `Salario` BETWEEN 2000 AND 3000;

-- 11. Consulta com subconsulta
SELECT `Nome`
FROM `Paciente`
WHERE `CPF` IN (SELECT `Paciente_CPF` FROM `Prontuario`);

-- 12. Consulta com funções agregadas
SELECT `Estado`, AVG(`Salario`) AS `SalarioMedio`
FROM `Funcionario`
GROUP BY `Estado`;
