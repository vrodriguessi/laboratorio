-- 1. Procedimento: Adicionar um Novo Paciente
-- Este procedimento adiciona um novo paciente ao banco de dados, verificando se o CPF já existe.
 -- Se o CPF já existir, o procedimento não adiciona o paciente e retorna uma mensagem de erro.
DELIMITER //

CREATE PROCEDURE AdicionarPaciente(
    IN p_CPF CHAR(11),
    IN p_Nome VARCHAR(50),
    IN p_Logradouro VARCHAR(40),
    IN p_Bairro VARCHAR(30),
    IN p_Cidade VARCHAR(30),
    IN p_Estado VARCHAR(30),
    IN p_CEP CHAR(8),
    IN p_Numero INT(4)
)
BEGIN
    DECLARE v_Count INT;

    -- Verifica se o CPF já existe
    SELECT COUNT(*) INTO v_Count
    FROM Paciente
    WHERE CPF = p_CPF;

    IF v_Count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Paciente com este CPF já existe.';
    ELSE
        INSERT INTO Paciente (CPF, Nome, Logradouro, Bairro, Cidade, Estado, CEP, Numero)
        VALUES (p_CPF, p_Nome, p_Logradouro, p_Bairro, p_Cidade, p_Estado, p_CEP, p_Numero);
    END IF;
END //

DELIMITER ;

CALL AdicionarPaciente('98765432100', 'João Silva', 'Rua A', 'Centro', 'Cidade X', 'Estado Y', '12345678', 100);

-- Procedimento: Atualizar Tipo de Laboratório
-- Este procedimento atualiza o tipo de um laboratório para 'Matriz' ou 'Apoio' com base no número de exames realizados.
DELIMITER //

CREATE PROCEDURE AtualizarTipoLaboratorio(
    IN p_Laboratorio_CNPJ CHAR(14)
)
BEGIN
    DECLARE v_NumeroExames INT;
    DECLARE v_TipoLaboratorio VARCHAR(6);

    -- Obtém o número de exames realizados pelo laboratório
    SELECT COUNT(*) INTO v_NumeroExames
    FROM Exame
    WHERE Unidade_CNPJ = p_Laboratorio_CNPJ;

    -- Determina o tipo de laboratório com base no número de exames
    SET v_TipoLaboratorio = CASE
        WHEN v_NumeroExames > 50 THEN 'Matriz'
        ELSE 'Apoio'
    END;

    -- Atualiza o tipo do laboratório
    UPDATE Laboratorio
    SET TipoLaboratorio = v_TipoLaboratorio
    WHERE CNPJ = p_Laboratorio_CNPJ;
END //

DELIMITER ;

CALL AtualizarTipoLaboratorio('32345678000101');

SELECT * FROM laboratorio
WHERE CNPJ = '32345678000101';

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

SELECT CPF, Nome, Salario
FROM Funcionario;

