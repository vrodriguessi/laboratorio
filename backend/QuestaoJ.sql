-- Trigger após inserção
-- Cria uma nova tabela com o registro de que foi inserido um novo funcionário, guardando a operação, 
-- o cpf do funcionario que foi inserido, data e a hora.
CREATE TABLE `AuditLog` (
    `ID` INT AUTO_INCREMENT PRIMARY KEY,
    `Action` VARCHAR(50) NOT NULL,
    `CPF` CHAR(11) NOT NULL,
    `Timestamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
CREATE TRIGGER `after_insert_funcionario`
AFTER INSERT ON `Funcionario`
FOR EACH ROW
BEGIN
  INSERT INTO `AuditLog` (`Action`, `CPF`, `Timestamp`)
  VALUES ('INSERT', NEW.`CPF`, NOW());
END //
DELIMITER ;

INSERT INTO `Funcionario` 
(`CPF`, `ID`, `SenhaDeAcesso`, `Salario`, `Nome`, `Logradouro`, `Bairro`, `Cidade`, `Estado`, `CEP`, `Numero`) 
VALUES 
('12345678901', 1, 'senha123', 5000, 'João Silva', 'Rua A', 'Bairro B', 'Cidade C', 'Estado D', '12345678', 10);

-- Trigger antes da atualização
-- Diminui em 5% o salário
DELIMITER //
CREATE TRIGGER `before_update_funcionario`
BEFORE UPDATE ON `Funcionario`
FOR EACH ROW
BEGIN
  SET NEW.`Salario` = OLD.`Salario` * 0.95;
END //
DELIMITER ;


-- Trigger antes da exclusão
-- Antes de excluir ele salva a operação que foi feita, o cpf do funcionário deletado,
-- data e a hora.
DELIMITER //
CREATE TRIGGER `before_delete_funcionario`
BEFORE DELETE ON `Funcionario`
FOR EACH ROW
BEGIN
  INSERT INTO `AuditLog` (`Action`, `CPF`, `Timestamp`)
  VALUES ('DELETE', OLD.`CPF`, NOW());
END //
DELIMITER ;

DESCRIBE `AuditLog`;

DELETE FROM `Funcionario`
WHERE `CPF` = '12345678901';

SELECT * FROM `AuditLog` WHERE `CPF` = '12345678901';

