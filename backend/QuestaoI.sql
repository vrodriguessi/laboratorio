-- Procedimento com parâmetros
DELIMITER //

CREATE PROCEDURE `AddPaciente`(
  IN `p_CPF` CHAR(11),
  IN `p_Nome` VARCHAR(50),
  IN `p_Logradouro` VARCHAR(40),
  IN `p_Bairro` VARCHAR(30),
  IN `p_Cidade` VARCHAR(30),
  IN `p_Estado` VARCHAR(30),
  IN `p_CEP` CHAR(8),
  IN `p_Numero` INT
)
BEGIN
  INSERT INTO `Paciente` (
    `CPF`, `Nome`, `Logradouro`, `Bairro`, `Cidade`, `Estado`, `CEP`, `Numero`
  )
  VALUES (
    p_CPF, p_Nome, p_Logradouro, p_Bairro, p_Cidade, p_Estado, p_CEP, p_Numero
  );
END //

DELIMITER ;

CALL AddPaciente(
  '12345678999',  -- CPF
  'João da Silva',  -- Nome
  'Rua Exemplo',  -- Logradouro
  'Centro',  -- Bairro
  'São Paulo',  -- Cidade
  'SP',  -- Estado
  '12345678',  -- CEP
  123  -- Número
);

-- Função com retorno
DELIMITER //
CREATE FUNCTION `GetFuncionarioSalario`(
  p_CPF CHAR(11)
) RETURNS REAL
READS SQL DATA
BEGIN
  DECLARE v_Salario REAL;
  SELECT `Salario` INTO v_Salario
  FROM `Funcionario`
  WHERE `CPF` = p_CPF;
  RETURN v_Salario;
END //
DELIMITER ;

SELECT GetFuncionarioSalario('11111111111') AS Salario;

-- Procedimento com controle de fluxo
-- Este procedimento ajusta os salários de todos os funcionários aumentando-os em 5%
DELIMITER //
CREATE PROCEDURE `AdjustSalaries`()
BEGIN
  DECLARE v_Done INT DEFAULT 0;
  DECLARE v_CPF CHAR(11);
  DECLARE v_Salario REAL;
  
  DECLARE cur CURSOR FOR SELECT `CPF`, `Salario` FROM `Funcionario`;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_Done = 1;
  
  OPEN cur;
  
  read_loop: LOOP
    FETCH cur INTO v_CPF, v_Salario;
    IF v_Done THEN
      LEAVE read_loop;
    END IF;
    UPDATE `Funcionario`
    SET `Salario` = v_Salario * 1.05
    WHERE `CPF` = v_CPF;
  END LOOP;
  
  CLOSE cur;
END //
DELIMITER ;

CALL AdjustSalaries();
