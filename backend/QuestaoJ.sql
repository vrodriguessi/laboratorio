-- Trigger após inserção
DELIMITER //
CREATE TRIGGER `after_insert_funcionario`
AFTER INSERT ON `Funcionario`
FOR EACH ROW
BEGIN
  INSERT INTO `AuditLog` (`Action`, `CPF`, `Timestamp`)
  VALUES ('INSERT', NEW.`CPF`, NOW());
END //
DELIMITER ;

-- Trigger antes da atualização
DELIMITER //
CREATE TRIGGER `before_update_funcionario`
BEFORE UPDATE ON `Funcionario`
FOR EACH ROW
BEGIN
  SET OLD.`Salario` = OLD.`Salario` * 0.95;
END //
DELIMITER ;

-- Trigger antes da exclusão
DELIMITER //
CREATE TRIGGER `before_delete_funcionario`
BEFORE DELETE ON `Funcionario`
FOR EACH ROW
BEGIN
  INSERT INTO `AuditLog` (`Action`, `CPF`, `Timestamp`)
  VALUES ('DELETE', OLD.`CPF`, NOW());
END //
DELIMITER ;

