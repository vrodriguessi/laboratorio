SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Solicitante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Solicitante` (
  `CPF` INT(11) NOT NULL,
  `CRM` INT(6) NOT NULL,
  `Nome` VARCHAR(50) NOT NULL,
  `Logradouro` VARCHAR(40) NOT NULL,
  `Bairro` VARCHAR(30) NULL,
  `Cidade` VARCHAR(30) NOT NULL,
  `Estado` VARCHAR(30) NOT NULL,
  `CEP` INT(8) NOT NULL,
  `Numero` INT(4) NOT NULL,
  PRIMARY KEY (`CPF`),
  UNIQUE INDEX `CRM_UNIQUE` (`CRM` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Paciente` (
  `CPF` INT(11) NOT NULL,
  `Nome` VARCHAR(50) NOT NULL,
  `Logradouro` VARCHAR(40) NOT NULL,
  `Bairro` VARCHAR(30) NULL,
  `Cidade` VARCHAR(30) NOT NULL,
  `Estado` VARCHAR(30) NOT NULL,
  `CEP` INT(8) NOT NULL,
  `Numero` INT(4) NOT NULL,
  PRIMARY KEY (`CPF`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TelefoneSolicitante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TelefoneSolicitante` (
  `Telefone` INT(11) NOT NULL,
  `Solicitante_CPF` INT(11) NOT NULL,
  PRIMARY KEY (`Telefone`, `Solicitante_CPF`),
  INDEX `fk_TelefoneSolicitante_Solicitante_idx` (`Solicitante_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_TelefoneSolicitante_Solicitante`
    FOREIGN KEY (`Solicitante_CPF`)
    REFERENCES `mydb`.`Solicitante` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TelefonePaciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TelefonePaciente` (
  `Telefone` INT(11) NOT NULL,
  `Paciente_CPF` INT(11) NOT NULL,
  PRIMARY KEY (`Telefone`, `Paciente_CPF`),
  INDEX `fk_TelefonePaciente_Paciente1_idx` (`Paciente_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_TelefonePaciente_Paciente1`
    FOREIGN KEY (`Paciente_CPF`)
    REFERENCES `mydb`.`Paciente` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Funcionario` (
  `CPF` INT(11) NOT NULL,
  `ID` INT(3) NOT NULL,
  `SenhaDeAcesso` VARCHAR(16) NOT NULL,
  `Salario` REAL(10,2) NOT NULL,
  `Nome` VARCHAR(50) NOT NULL,
  `Logradouro` VARCHAR(40) NOT NULL,
  `Bairro` VARCHAR(30) NULL,
  `Cidade` VARCHAR(30) NOT NULL,
  `Estado` VARCHAR(30) NOT NULL,
  `CEP` INT(8) NOT NULL,
  `Numero` INT(4) NOT NULL,
  PRIMARY KEY (`CPF`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TelefoneFuncionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TelefoneFuncionario` (
  `Telefone` INT(11) NOT NULL,
  `Funcionario_CPF` INT(11) NOT NULL,
  PRIMARY KEY (`Telefone`, `Funcionario_CPF`),
  INDEX `fk_TelefoneFuncionario_Funcionario1_idx` (`Funcionario_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_TelefoneFuncionario_Funcionario1`
    FOREIGN KEY (`Funcionario_CPF`)
    REFERENCES `mydb`.`Funcionario` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Prontuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Prontuario` (
  `ID` INT(7) NOT NULL,
  `DataDeCadastro` DATE NOT NULL,
  `Solicitante_CPF` INT(11) NOT NULL,
  `Paciente_CPF` INT(11) NOT NULL,
  `Funcionario_CPF` INT(11) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Prontuario_Solicitante1_idx` (`Solicitante_CPF` ASC) VISIBLE,
  INDEX `fk_Prontuario_Paciente1_idx` (`Paciente_CPF` ASC) VISIBLE,
  INDEX `fk_Prontuario_Funcionario1_idx` (`Funcionario_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Prontuario_Solicitante1`
    FOREIGN KEY (`Solicitante_CPF`)
    REFERENCES `mydb`.`Solicitante` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Prontuario_Paciente1`
    FOREIGN KEY (`Paciente_CPF`)
    REFERENCES `mydb`.`Paciente` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Prontuario_Funcionario1`
    FOREIGN KEY (`Funcionario_CPF`)
    REFERENCES `mydb`.`Funcionario` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Laboratorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Laboratorio` (
  `CNPJ` INT(14) NOT NULL,
  `NomeFantasia` VARCHAR(40) NOT NULL,
  `RazaoSocial` VARCHAR(40) NOT NULL,
  `TipoLaboratorio` VARCHAR(6) NOT NULL,
  `Logradouro` VARCHAR(40) NOT NULL,
  `Bairro` VARCHAR(30) NULL,
  `Cidade` VARCHAR(30) NOT NULL,
  `Estado` VARCHAR(30) NOT NULL,
  `CEP` INT(8) NOT NULL,
  `Numero` INT(4) NOT NULL,
  PRIMARY KEY (`CNPJ`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Unidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Unidade` (
  `CNPJ` INT(14) NOT NULL,
  `Nome` VARCHAR(40) NOT NULL,
  `Logradouro` VARCHAR(40) NOT NULL,
  `Bairro` VARCHAR(30) NULL,
  `Cidade` VARCHAR(30) NOT NULL,
  `Estado` VARCHAR(30) NOT NULL,
  `CEP` INT(8) NOT NULL,
  `Numero` INT(4) NOT NULL,
  `Laboratorio_CNPJ` int(14) NOT NULL,
  PRIMARY KEY (`CNPJ`),
  INDEX `fk_Unidade_Laboratorio1_idx` (`Laboratorio_CNPJ` ASC) VISIBLE,
  CONSTRAINT `fk_Unidade_Laboratorio1`
    FOREIGN KEY (`Laboratorio_CNPJ`)
    REFERENCES `mydb`.`Laboratorio` (`CNPJ`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Exame`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Exame` (
  `ID` INT(6) NOT NULL,
  `Descricao` VARCHAR(1000) NOT NULL,
  `Setor` VARCHAR(5) NOT NULL,
  `Preco` DECIMAL(10,2) NOT NULL DEFAULT 70.00, -- Valor padrão definido
  `Nome` VARCHAR(30) NOT NULL,
  `Orientacoes` VARCHAR(1000) NOT NULL,
  `Unidade_CNPJ` INT(14) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Exame_Unidade1_idx` (`Unidade_CNPJ` ASC) VISIBLE,
  CONSTRAINT `fk_Exame_Unidade1`
    FOREIGN KEY (`Unidade_CNPJ`)
    REFERENCES `mydb`.`Unidade` (`CNPJ`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`TelefoneUnidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TelefoneUnidade` (
  `Telefone` INT NOT NULL,
  `Unidade_CNPJ` INT(14) NOT NULL,
  PRIMARY KEY (`Telefone`, `Unidade_CNPJ`),
  INDEX `fk_TelefoneUnidade_Unidade1_idx` (`Unidade_CNPJ` ASC) VISIBLE,
  CONSTRAINT `fk_TelefoneUnidade_Unidade1`
    FOREIGN KEY (`Unidade_CNPJ`)
    REFERENCES `mydb`.`Unidade` (`CNPJ`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TelefoneLaboratorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TelefoneLaboratorio` (
  `Telefone` INT NOT NULL,
  `Laboratorio_CNPJ` INT(14) NOT NULL,
  PRIMARY KEY (`Telefone`, `Laboratorio_CNPJ`),
  INDEX `fk_TelefoneLaboratorio_Laboratorio1_idx` (`Laboratorio_CNPJ` ASC) VISIBLE,
  CONSTRAINT `fk_TelefoneLaboratorio_Laboratorio1`
    FOREIGN KEY (`Laboratorio_CNPJ`)
    REFERENCES `mydb`.`Laboratorio` (`CNPJ`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Composto por`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Composto por` (
  `Prontuario_ID` INT(7) NOT NULL,
  `Exame_ID` INT(6) NOT NULL,
  `PrecoPago` REAL(6,2) NOT NULL,
  PRIMARY KEY (`Prontuario_ID`, `Exame_ID`),
  INDEX `fk_Prontuario_has_Exame_Exame1_idx` (`Exame_ID` ASC) VISIBLE,
  INDEX `fk_Prontuario_has_Exame_Prontuario1_idx` (`Prontuario_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Prontuario_has_Exame_Prontuario1`
    FOREIGN KEY (`Prontuario_ID`)
    REFERENCES `mydb`.`Prontuario` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Prontuario_has_Exame_Exame1`
    FOREIGN KEY (`Exame_ID`)
    REFERENCES `mydb`.`Exame` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Trabalha em`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Trabalha em` (
  `Unidade_CNPJ` INT(14) NOT NULL,
  `Funcionario_CPF` INT(11) NOT NULL,
  PRIMARY KEY (`Unidade_CNPJ`, `Funcionario_CPF`),
  INDEX `fk_Unidade_has_Funcionario_Funcionario1_idx` (`Funcionario_CPF` ASC) VISIBLE,
  INDEX `fk_Unidade_has_Funcionario_Unidade1_idx` (`Unidade_CNPJ` ASC) VISIBLE,
  CONSTRAINT `fk_Unidade_has_Funcionario_Unidade1`
    FOREIGN KEY (`Unidade_CNPJ`)
    REFERENCES `mydb`.`Unidade` (`CNPJ`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Unidade_has_Funcionario_Funcionario1`
    FOREIGN KEY (`Funcionario_CPF`)
    REFERENCES `mydb`.`Funcionario` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
