-- Criar usuários
CREATE USER 'usuario1'@'localhost' IDENTIFIED BY 'senha1';
CREATE USER 'usuario2'@'localhost' IDENTIFIED BY 'senha2';

SELECT User, Host FROM mysql.user;

-- Concessão de permissões
GRANT SELECT, INSERT, UPDATE ON `mydb`.* TO 'usuario1'@'localhost';
GRANT ALL PRIVILEGES ON `mydb`.* TO 'usuario2'@'localhost';

SHOW GRANTS FOR 'usuario1'@'localhost';
SHOW GRANTS FOR 'usuario2'@'localhost';

-- Revogação de permissões
REVOKE INSERT, UPDATE ON `mydb`.* FROM 'usuario1'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'usuario2'@'localhost';


