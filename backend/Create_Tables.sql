SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


CREATE SCHEMA IF NOT EXISTS Laboratorio;

USE Laboratorio;


-- Criação das tabelas
CREATE TABLE IF NOT EXISTS Pessoa (
    CPF CHAR(11) PRIMARY KEY CHECK (CPF ~ '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}$'),
    Nome VARCHAR(50) NOT NULL,
    Telefone CHAR(11) NOT NULL, (Telefone ~ '^\([0-9]{2}\) [0-9]{4,5}-[0-9]{4}$'),
    Logradouro VARCHAR(40) NOT NULL,
    Numero INT(4) NOT NULL,
    Bairro VARCHAR(30),
    Cidade VARCHAR(30) NOT NULL,
    Estado VARCHAR(30) NOT NULL,
    Cep CHAR(9) NOT NULL CHECK (Cep ~ '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}$')
);

CREATE TABLE Paciente (
    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF)
);

CREATE TABLE Solicitante (
    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF)
    CRM INT(6) NOT NULL,
);

CREATE TABLE Funcionario (
    ID INT(6) NOT NULL,
    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF)
    SenhaDeAcesso VARCHAR(16) NOT NULL,
    Salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Laboratorio (
    CNPJ CHAR(14) PRIMARY KEY CHECK (CNPJ ~ '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}/[0-9]{4}-[0-9]{2}$'),
    NomeFantasia VARCHAR(40) NOT NULL,
    RazaoSocial VARCHAR(40) NOT NULL,
    TipoLaboratorio VARCHAR(6) NOT NULL,
    Telefone CHAR(11) NOT NULL CHECK (Telefone ~ '^\([0-9]{2}\) [0-9]{4,5}-[0-9]{4}$'),
    Logradouro VARCHAR(40) NOT NULL,
    Numero INT(4) NOT NULL CHECK (Numero > 0),
    Bairro VARCHAR(30),
    Cidade VARCHAR(30) NOT NULL,
    Estado VARCHAR(30) NOT NULL,
    Cep CHAR(8) NOT NULL CHECK (Cep ~ '^[0-9]{2}\.[0-9]{3}-[0-9]{3}$'),
);

CREATE TABLE Unidade (
    CNPJ CHAR(14) PRIMARY KEY CHECK (CNPJ ~ '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}/[0-9]{4}-[0-9]{2}$'),
    Nome VARCHAR(40) NOT NULL,
    Telefone CHAR(11) NOT NULL CHECK (Telefone ~ '^\([0-9]{2}\) [0-9]{4,5}-[0-9]{4}$'),
    Logradouro VARCHAR(40) NOT NULL,
    Numero INT(4) NOT NULL CHECK (Numero > 0),
    Bairro VARCHAR(30),
    Cidade VARCHAR(30) NOT NULL,
    Estado VARCHAR(30) NOT NULL,
    Cep CHAR(8) NOT NULL CHECK (Cep ~ '^[0-9]{2}\.[0-9]{3}-[0-9]{3}$'),
    Laboratorio_CNPJ CHAR(14),
    FOREIGN KEY (Laboratorio_CNPJ) REFERENCES Laboratorio(CNPJ)
);

CREATE TABLE Prontuario (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    DataDeCadastro DATE NOT NULL,
    Solicitante_CPF CHAR(11),
    Paciente_CPF CHAR(11),
    Funcionario_CPF CHAR(11),
    FOREIGN KEY (Solicitante_CPF) REFERENCES Solicitante(CPF),
    FOREIGN KEY (Paciente_CPF) REFERENCES Paciente(CPF),
    FOREIGN KEY (Funcionario_CPF) REFERENCES Funcionario(CPF)
); 

CREATE TABLE Exame (
    ID CHAR(6) NOT NULL AUTO_INCREMENT,
    Descricao VARCHAR(1000) NOT NULL,
    Setor CHAR(5) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    Orientacoes VARCHAR(1000) NOT NULL
    PRIMARY KEY (ID)
);


CREATE TRIGGER UpperCase 
BEFORE INSERT ON Exame
FOR EACH ROW
BEGIN
    SET NEW.Setor = UPPER(NEW.Setor);
END;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

CREATE USER 'estudante'@'localhost' IDENTIFIED BY 'estudante1';
GRANT ALL PRIVILEGES ON BD_Trabalho.* TO 'estudante'@'localhost';
FLUSH PRIVILEGES;
