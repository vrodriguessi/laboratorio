-- Criar usuários
CREATE USER 'usuario1'@'localhost' IDENTIFIED BY 'senha1';
CREATE USER 'usuario2'@'localhost' IDENTIFIED BY 'senha2';

-- Concessão de permissões
GRANT SELECT, INSERT, UPDATE ON `mydb`.* TO 'usuario1'@'localhost';
GRANT ALL PRIVILEGES ON `mydb`.* TO 'usuario2'@'localhost';

-- Revogação de permissões
REVOKE INSERT, UPDATE ON `mydb`.* FROM 'usuario1'@'localhost';
REVOKE ALL PRIVILEGES ON `mydb`.* FROM 'usuario2'@'localhost';
