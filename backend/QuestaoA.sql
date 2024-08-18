-- Adicionar coluna
ALTER TABLE 'Paciente' 
ADD COLUMN 'DataNascimento DATE NULL';

-- Modificar coluna
ALTER TABLE 'Funcionario'
MODIFY COLUMN 'Salario' DECIMAL(10,2) NOT NULL;

-- Renomear coluna
ALTER TABLE 'Solicitante'
CHANGE COLUMN 'Logradouro' 'Endereco' VARCHAR(50) NOT NULL;


----------------------------------------------------------
----------------------------------------------------------

-- Criar tabela extra
CREATE TABLE IF NOT WXOSTS 'ExtraTable' (
    'Id' INT AUTO_INCREMENT NOT NULL,
    'Descricao' VARCHAR(100),
    PRIMARY KEY ('Id')
); ENGINE=InnoDB;

-- Apagar tabela extra
DROP TABLE IF EXISTS 'ExtraTable';