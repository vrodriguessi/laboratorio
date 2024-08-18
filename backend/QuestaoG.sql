-- Criar visão
CREATE VIEW `vw_Paciente_Solicitante` AS
SELECT p.`Nome` AS `PacienteNome`, s.`Nome` AS `SolicitanteNome`
FROM `Paciente` p
JOIN `Solicitante` s ON p.`CPF` = s.`CPF`;

-- Usar visão
SELECT * FROM `vw_Paciente_Solicitante`;
