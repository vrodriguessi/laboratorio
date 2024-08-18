-- Procedimento com parâmetros
DELIMITER //
CREATE PROCEDURE `AddPaciente`(
  IN `p_CPF` CHAR(11),
  IN `p_Nome` VARCHAR(50),
  IN `p_Logradouro` VARCHAR(40),
  IN `p_Cidade` VARCHAR(30),
  IN `p_Estado` VARCHAR(30)
)
BEGIN
  INSERT INTO `Paciente` (CPF, Nome, Logradouro, Cidade, Estado)
  VALUES (p_CPF, p_Nome, p_Logradouro, p_Cidade, p_Estado);
END //
DELIMITER ;

-- Função com retorno
DELIMITER //
CREATE FUNCTION `GetFuncionarioSalario`(
  p_CPF CHAR(11)
) RETURNS REAL
BEGIN
  DECLARE v_Salario REAL;
  SELECT `Salario` INTO v_Salario
  FROM `Funcionario`
  WHERE `CPF` = p_CPF;
  RETURN v_Salario;
END //
DELIMITER ;

-- Procedimento com controle de fluxo
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
