-- Inserir dados em Solicitante
INSERT INTO `Solicitante` (CPF, CRM, Nome, Logradouro, Bairro, Cidade, Estado, CEP, Numero)
VALUES ('12345678901', 123456, 'João Silva', 'Rua A', 'Bairro A', 'Cidade A', 'Estado A', '00000000', 123);

-- Inserir dados em Paciente
INSERT INTO `Paciente` (CPF, Nome, Logradouro, Bairro, Cidade, Estado, CEP, Numero)
VALUES ('10987654321', 'Maria Oliveira', 'Rua B', 'Bairro B', 'Cidade B', 'Estado B', '00000001', 456);

-- Inserir dados em Funcionario
INSERT INTO `Funcionario` (CPF, ID, SenhaDeAcesso, Salario, Nome, Logradouro, Bairro, Cidade, Estado, CEP, Numero)
VALUES ('56789012345', 1, 'senha123', 2500.00, 'Carlos Santos', 'Rua C', 'Bairro C', 'Cidade C', 'Estado C', '00000002', 789);

-- Inserir dados em Laboratorio
INSERT INTO `Laboratorio` (CNPJ, NomeFantasia, RazaoSocial, TipoLaboratorio, Logradouro, Bairro, Cidade, Estado, CEP, Numero)
VALUES ('12345678000195', 'Lab A', 'Laboratório A Ltda', 'Tipo1', 'Rua D', 'Bairro D', 'Cidade D', 'Estado D', '00000003', 101);

-- Inserir dados em Unidade
INSERT INTO `Unidade` (CNPJ, Nome, Logradouro, Bairro, Cidade, Estado, CEP, Numero, Laboratorio_CNPJ)
VALUES ('12345678000195', 'Unidade A', 'Rua E', 'Bairro E', 'Cidade E', 'Estado E', '00000004', 102, '12345678000195');
