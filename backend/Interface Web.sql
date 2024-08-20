-- Inserções, updates, e deletes através do MySql para visualização na interface web
DELETE FROM `Paciente` WHERE `CPF` = '98765432100';

INSERT INTO `mydb`.`Paciente` (`CPF`, `Nome`, `Logradouro`, `Bairro`, `Cidade`, `Estado`, `CEP`, `Numero`) VALUES 
('98765432100', 'Alice Pereira', 'Avenida A', 'Bairro A', 'Cidade A', 'Estado A', '87654321', 1);

UPDATE `Paciente`
SET `Nome` = 'Ana Souza'
WHERE `CPF` = '98765432100';