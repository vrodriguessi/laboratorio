-- Criação da visão
CREATE VIEW `mydb`.`PacienteInfo` AS
SELECT
  p.CPF AS PacienteCPF,
  p.Nome AS PacienteNome,
  p.Logradouro AS PacienteLogradouro,
  p.Bairro AS PacienteBairro,
  p.Cidade AS PacienteCidade,
  p.Estado AS PacienteEstado,
  p.CEP AS PacienteCEP,
  p.Numero AS PacienteNumero,
  t.Telefone AS PacienteTelefone
FROM
  `mydb`.`Paciente` p
LEFT JOIN
  `mydb`.`TelefonePaciente` t
ON
  p.CPF = t.Paciente_CPF;

-- Usar a visão
SELECT * FROM `mydb`.`PacienteInfo`;

-- Criação da visão `ExameUnidadeInfo`
CREATE VIEW `mydb`.`ExameUnidadeInfo` AS
SELECT
  e.ID AS ExameID,
  e.Descricao AS ExameDescricao,
  e.Setor AS ExameSetor,
  e.Preco AS ExamePreco,
  e.Nome AS ExameNome,
  e.Orientacoes AS ExameOrientacoes,
  u.CNPJ AS UnidadeCNPJ,
  u.Nome AS UnidadeNome,
  u.Logradouro AS UnidadeLogradouro,
  u.Bairro AS UnidadeBairro,
  u.Cidade AS UnidadeCidade,
  u.Estado AS UnidadeEstado,
  u.CEP AS UnidadeCEP,
  u.Numero AS UnidadeNumero
FROM
  `mydb`.`Exame` e
JOIN
  `mydb`.`Unidade` u
ON
  e.Unidade_CNPJ = u.CNPJ;
  
  -- Usar a visão 'ExameUnidadeInfo'
  SELECT * FROM `mydb`.`ExameUnidadeInfo`;


-- Criação da visão `ProntuarioDetalhes`
CREATE VIEW `mydb`.`ProntuarioDetalhes` AS
SELECT
  p.ID AS ProntuarioID,
  p.DataDeCadastro AS ProntuarioDataDeCadastro,
  s.Nome AS SolicitanteNome,
  s.CPF AS SolicitanteCPF,
  f.Nome AS FuncionarioNome,
  f.CPF AS FuncionarioCPF,
  pa.Nome AS PacienteNome,
  pa.CPF AS PacienteCPF
FROM
  `mydb`.`Prontuario` p
JOIN
  `mydb`.`Solicitante` s
ON
  p.Solicitante_CPF = s.CPF
JOIN
  `mydb`.`Funcionario` f
ON
  p.Funcionario_CPF = f.CPF
JOIN
  `mydb`.`Paciente` pa
ON
  p.Paciente_CPF = pa.CPF;
  
  -- Usar a visão 'ProntuarioDetalhes'
  SELECT * FROM `mydb`.`ProntuarioDetalhes`;

