-- Exemplos de Alter Table e Drop Table

-- Adicionar coluna
ALTER TABLE `Paciente`
ADD COLUMN `DataNascimento` DATE NULL;

-- Modificar coluna
ALTER TABLE `Funcionario`
MODIFY COLUMN `Salario` DECIMAL(12,2) NOT NULL;

-- Renomear coluna
ALTER TABLE `Solicitante`
CHANGE COLUMN `Logradouro` `Endereco` VARCHAR(50) NOT NULL;


----------------------------------------------------------
----------------------------------------------------------

-- Criar tabela extra
CREATE TABLE IF NOT EXISTS `ExtraTable` (
    `Id` INT AUTO_INCREMENT NOT NULL,
    `Descricao` VARCHAR(100) NULL,
    PRIMARY KEY (`Id`)
) ENGINE=InnoDB;

-- Apagar tabela extra
DROP TABLE IF EXISTS `ExtraTable`;

