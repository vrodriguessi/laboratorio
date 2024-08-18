USE mydb;

-- -----------------------------------------------------
-- Inserindo dados na tabela `Solicitante`
-- -----------------------------------------------------
INSERT INTO `mydb`.`Solicitante` (`CPF`, `CRM`, `Nome`, `Logradouro`, `Bairro`, `Cidade`, `Estado`, `CEP`, `Numero`) VALUES
('12345678901', 100001, 'Ana Costa', 'Rua A', 'Bairro A', 'Cidade A', 'Estado A', '12345678', 1),
('12345678902', 100002, 'Bruno Silva', 'Rua B', 'Bairro B', 'Cidade B', 'Estado B', '23456789', 2),
('12345678903', 100003, 'Carlos Oliveira', 'Rua C', 'Bairro C', 'Cidade C', 'Estado C', '34567890', 3),
('12345678904', 100004, 'Diana Pereira', 'Rua D', 'Bairro D', 'Cidade D', 'Estado D', '45678901', 4),
('12345678905', 100005, 'João Santos', 'Rua E', 'Bairro E', 'Cidade E', 'Estado E', '56789012', 5),
('12345678906', 100006, 'Fernanda Lima', 'Rua F', 'Bairro F', 'Cidade F', 'Estado F', '67890123', 6),
('12345678907', 100007, 'Gabriel Martins', 'Rua G', 'Bairro G', 'Cidade G', 'Estado G', '78901234', 7),
('12345678908', 100008, 'Helena Rocha', 'Rua H', 'Bairro H', 'Cidade H', 'Estado H', '89012345', 8),
('12345678909', 100009, 'Igor Almeida', 'Rua I', 'Bairro I', 'Cidade I', 'Estado I', '90123456', 9),
('12345678910', 100010, 'Juliana Ferreira', 'Rua J', 'Bairro J', 'Cidade J', 'Estado J', '01234567', 10),
('12345678911', 100011, 'Karina Souza', 'Rua K', 'Bairro K', 'Cidade K', 'Estado K', '12345678', 11),
('12345678912', 100012, 'Lucas Rocha', 'Rua L', 'Bairro L', 'Cidade L', 'Estado L', '23456789', 12),
('12345678913', 100013, 'Mariana Santos', 'Rua M', 'Bairro M', 'Cidade M', 'Estado M', '34567890', 13),
('12345678914', 100014, 'Nathan Almeida', 'Rua N', 'Bairro N', 'Cidade N', 'Estado N', '45678901', 14),
('12345678915', 100015, 'Olivia Costa', 'Rua O', 'Bairro O', 'Cidade O', 'Estado O', '56789012', 15),
('12345678916', 100016, 'Paulo Lima', 'Rua P', 'Bairro P', 'Cidade P', 'Estado P', '67890123', 16),
('12345678917', 100017, 'Quésia Silva', 'Rua Q', 'Bairro Q', 'Cidade Q', 'Estado Q', '78901234', 17),
('12345678918', 100018, 'Rafael Santos', 'Rua R', 'Bairro R', 'Cidade R', 'Estado R', '89012345', 18),
('12345678919', 100019, 'Sabrina Oliveira', 'Rua S', 'Bairro S', 'Cidade S', 'Estado S', '90123456', 19),
('12345678920', 100020, 'Tiago Pereira', 'Rua T', 'Bairro T', 'Cidade T', 'Estado T', '01234567', 20),
('12345678921', 100021, 'Ursula Martins', 'Rua U', 'Bairro U', 'Cidade U', 'Estado U', '12345678', 21),
('12345678922', 100022, 'Vinícius Rocha', 'Rua V', 'Bairro V', 'Cidade V', 'Estado V', '23456789', 22),
('12345678923', 100023, 'Wanda Costa', 'Rua W', 'Bairro W', 'Cidade W', 'Estado W', '34567890', 23),
('12345678924', 100024, 'Xuxa Souza', 'Rua X', 'Bairro X', 'Cidade X', 'Estado X', '45678901', 24),
('12345678925', 100025, 'Yago Ferreira', 'Rua Y', 'Bairro Y', 'Cidade Y', 'Estado Y', '56789012', 25),
('12345678926', 100026, 'Zara Lima', 'Rua Z', 'Bairro Z', 'Cidade Z', 'Estado Z', '67890123', 26),
('12345678927', 100027, 'Arthur Almeida', 'Rua AA', 'Bairro AA', 'Cidade AA', 'Estado AA', '78901234', 27),
('12345678928', 100028, 'Bianca Silva', 'Rua BB', 'Bairro BB', 'Cidade BB', 'Estado BB', '89012345', 28),
('12345678929', 100029, 'Carlos Costa', 'Rua CC', 'Bairro CC', 'Cidade CC', 'Estado CC', '90123456', 29),
('12345678930', 100030, 'Débora Rocha', 'Rua DD', 'Bairro DD', 'Cidade DD', 'Estado DD', '01234567', 30);

-- -----------------------------------------------------
-- Inserindo dados na tabela `Paciente`
-- -----------------------------------------------------
INSERT INTO `mydb`.`Paciente` (`CPF`, `Nome`, `Logradouro`, `Bairro`, `Cidade`, `Estado`, `CEP`, `Numero`) VALUES
('98765432100', 'Alice Pereira', 'Avenida A', 'Bairro A', 'Cidade A', 'Estado A', '87654321', 1),
('98765432101', 'Bruno Almeida', 'Avenida B', 'Bairro B', 'Cidade B', 'Estado B', '76543210', 2),
('98765432102', 'Clara Santos', 'Avenida C', 'Bairro C', 'Cidade C', 'Estado C', '65432109', 3),
('98765432103', 'Daniel Costa', 'Avenida D', 'Bairro D', 'Cidade D', 'Estado D', '54321098', 4),
('98765432104', 'Eva Lima', 'Avenida E', 'Bairro E', 'Cidade E', 'Estado E', '43210987', 5),
('98765432105', 'Fernando Rocha', 'Avenida F', 'Bairro F', 'Cidade F', 'Estado F', '32109876', 6),
('98765432106', 'Gabriela Silva', 'Avenida G', 'Bairro G', 'Cidade G', 'Estado G', '21098765', 7),
('98765432107', 'Henrique Oliveira', 'Avenida H', 'Bairro H', 'Cidade H', 'Estado H', '10987654', 8),
('98765432108', 'Isabela Pereira', 'Avenida I', 'Bairro I', 'Cidade I', 'Estado I', '09876543', 9),
('98765432109', 'João Santos', 'Avenida J', 'Bairro J', 'Cidade J', 'Estado J', '98765432', 10),
('98765432110', 'Karol Lima', 'Avenida K', 'Bairro K', 'Cidade K', 'Estado K', '87654321', 11),
('98765432111', 'Leonardo Costa', 'Avenida L', 'Bairro L', 'Cidade L', 'Estado L', '76543210', 12),
('98765432112', 'Maria Oliveira', 'Avenida M', 'Bairro M', 'Cidade M', 'Estado M', '65432109', 13),
('98765432113', 'Nina Almeida', 'Avenida N', 'Bairro N', 'Cidade N', 'Estado N', '54321098', 14),
('98765432114', 'Otávio Rocha', 'Avenida O', 'Bairro O', 'Cidade O', 'Estado O', '43210987', 15),
('98765432115', 'Patrícia Silva', 'Avenida P', 'Bairro P', 'Cidade P', 'Estado P', '32109876', 16),
('98765432116', 'Quintino Santos', 'Avenida Q', 'Bairro Q', 'Cidade Q', 'Estado Q', '21098765', 17),
('98765432117', 'Rafaela Pereira', 'Avenida R', 'Bairro R', 'Cidade R', 'Estado R', '10987654', 18),
('98765432118', 'Sérgio Lima', 'Avenida S', 'Bairro S', 'Cidade S', 'Estado S', '09876543', 19),
('98765432119', 'Tatiane Costa', 'Avenida T', 'Bairro T', 'Cidade T', 'Estado T', '98765432', 20),
('98765432120', 'Ulisses Rocha', 'Avenida U', 'Bairro U', 'Cidade U', 'Estado U', '87654321', 21),
('98765432121', 'Valéria Santos', 'Avenida V', 'Bairro V', 'Cidade V', 'Estado V', '76543210', 22),
('98765432122', 'Wellington Silva', 'Avenida W', 'Bairro W', 'Cidade W', 'Estado W', '65432109', 23),
('98765432123', 'Xuxa Almeida', 'Avenida X', 'Bairro X', 'Cidade X', 'Estado X', '54321098', 24),
('98765432124', 'Yvan Costa', 'Avenida Y', 'Bairro Y', 'Cidade Y', 'Estado Y', '43210987', 25),
('98765432125', 'Zoe Oliveira', 'Avenida Z', 'Bairro Z', 'Cidade Z', 'Estado Z', '32109876', 26),
('98765432126', 'André Lima', 'Avenida AA', 'Bairro AA', 'Cidade AA', 'Estado AA', '21098765', 27),
('98765432127', 'Beatriz Pereira', 'Avenida BB', 'Bairro BB', 'Cidade BB', 'Estado BB', '10987654', 28),
('98765432128', 'Claudia Rocha', 'Avenida CC', 'Bairro CC', 'Cidade CC', 'Estado CC', '09876543', 29),
('98765432129', 'Diego Silva', 'Avenida DD', 'Bairro DD', 'Cidade DD', 'Estado DD', '98765432', 30);

-- -----------------------------------------------------
-- Inserindo dados na tabela `Funcionario`
-- -----------------------------------------------------
INSERT INTO `mydb`.`Funcionario` (`CPF`, `ID`, `SenhaDeAcesso`, `Salario`, `Nome`, `Logradouro`, `Bairro`, `Cidade`, `Estado`, `CEP`, `Numero`) VALUES
('11111111111', 2001, 'senha2001', 1500.00, 'Alex Oliveira', 'Rua F', 'Centro', 'Cidade 1', 'Estado 1', '11111111', 1),
('11111111112', 2002, 'senha2002', 1600.00, 'Bruna Santos', 'Rua G', 'Bairro 1', 'Cidade 2', 'Estado 2', '22222222', 2),
('11111111113', 2003, 'senha2003', 1700.00, 'Carlos Lima', 'Rua H', 'Centro', 'Cidade 3', 'Estado 3', '33333333', 3),
('11111111114', 2004, 'senha2004', 1800.00, 'Daniela Costa', 'Rua I', 'Bairro 2', 'Cidade 4', 'Estado 4', '44444444', 4),
('11111111115', 2005, 'senha2005', 1900.00, 'Eduarda Silva', 'Rua J', 'Centro', 'Cidade 5', 'Estado 5', '55555555', 5),
('11111111116', 2006, 'senha2006', 2000.00, 'Fábio Rocha', 'Rua K', 'Bairro 3', 'Cidade 6', 'Estado 6', '66666666', 6),
('11111111117', 2007, 'senha2007', 2100.00, 'Gabriela Lima', 'Rua L', 'Centro', 'Cidade 7', 'Estado 7', '77777777', 7),
('11111111118', 2008, 'senha2008', 2200.00, 'Hugo Santos', 'Rua M', 'Bairro 4', 'Cidade 8', 'Estado 8', '88888888', 8),
('11111111119', 2009, 'senha2009', 2300.00, 'Isabela Costa', 'Rua N', 'Centro', 'Cidade 9', 'Estado 9', '99999999', 9),
('11111111120', 2010, 'senha2010', 2400.00, 'João Pereira', 'Rua O', 'Bairro 5', 'Cidade 10', 'Estado 10', '10101010', 10),
('11111111121', 2011, 'senha2011', 2500.00, 'Karla Souza', 'Rua P', 'Centro', 'Cidade 11', 'Estado 11', '12121212', 11),
('11111111122', 2012, 'senha2012', 2600.00, 'Lucas Santos', 'Rua Q', 'Bairro 6', 'Cidade 12', 'Estado 12', '13131313', 12),
('11111111123', 2013, 'senha2013', 2700.00, 'Mariana Lima', 'Rua R', 'Centro', 'Cidade 13', 'Estado 13', '14141414', 13),
('11111111124', 2014, 'senha2014', 2800.00, 'Nicolas Rocha', 'Rua S', 'Bairro 7', 'Cidade 14', 'Estado 14', '15151515', 14),
('11111111125', 2015, 'senha2015', 2900.00, 'Olivia Pereira', 'Rua T', 'Centro', 'Cidade 15', 'Estado 15', '16161616', 15),
('11111111126', 2016, 'senha2016', 3000.00, 'Paula Santos', 'Rua U', 'Bairro 8', 'Cidade 16', 'Estado 16', '17171717', 16),
('11111111127', 2017, 'senha2017', 3100.00, 'Quintino Silva', 'Rua V', 'Centro', 'Cidade 17', 'Estado 17', '18181818', 17),
('11111111128', 2018, 'senha2018', 3200.00, 'Rafaela Lima', 'Rua W', 'Bairro 9', 'Cidade 18', 'Estado 18', '19191919', 18),
('11111111129', 2019, 'senha2019', 3300.00, 'Sérgio Costa', 'Rua X', 'Centro', 'Cidade 19', 'Estado 19', '20202020', 19),
('11111111130', 2020, 'senha2020', 3400.00, 'Tatiane Rocha', 'Rua Y', 'Bairro 10', 'Cidade 20', 'Estado 20', '21212121', 20),
('11111111131', 2021, 'senha2021', 3500.00, 'Ulisses Pereira', 'Rua Z', 'Centro', 'Cidade 21', 'Estado 21', '22222222', 21),
('11111111132', 2022, 'senha2022', 3600.00, 'Vanessa Santos', 'Rua AA', 'Bairro 11', 'Cidade 22', 'Estado 22', '23232323', 22),
('11111111133', 2023, 'senha2023', 3700.00, 'Wellington Silva', 'Rua BB', 'Centro', 'Cidade 23', 'Estado 23', '24242424', 23),
('11111111134', 2024, 'senha2024', 3800.00, 'Xuxa Lima', 'Rua CC', 'Bairro 12', 'Cidade 24', 'Estado 24', '25252525', 24),
('11111111135', 2025, 'senha2025', 3900.00, 'Yvan Costa', 'Rua DD', 'Centro', 'Cidade 25', 'Estado 25', '26262626', 25),
('11111111136', 2026, 'senha2026', 4000.00, 'Zoe Rocha', 'Rua EE', 'Bairro 13', 'Cidade 26', 'Estado 26', '27272727', 26),
('11111111137', 2027, 'senha2027', 4100.00, 'André Pereira', 'Rua FF', 'Centro', 'Cidade 27', 'Estado 27', '28282828', 27),
('11111111138', 2028, 'senha2028', 4200.00, 'Beatriz Silva', 'Rua GG', 'Bairro 14', 'Cidade 28', 'Estado 28', '29292929', 28),
('11111111139', 2029, 'senha2029', 4300.00, 'Claudia Costa', 'Rua HH', 'Centro', 'Cidade 29', 'Estado 29', '30303030', 29),
('11111111140', 2030, 'senha2030', 4400.00, 'Diego Almeida', 'Rua II', 'Bairro 15', 'Cidade 30', 'Estado 30', '31313131', 30);

-- Inserções na tabela Laboratorio
INSERT INTO `Laboratorio` (CNPJ, NomeFantasia, RazaoSocial, TipoLaboratorio, Logradouro, Bairro, Cidade, Estado, CEP, Numero)
VALUES 
('12345678000101', 'Lab A', 'Laboratório A Ltda', 'matriz', 'Rua D', 'Bairro D', 'Cidade D', 'Estado D', '00000001', 101),
('12345678000102', 'Lab B', 'Laboratório B Ltda', 'apoio', 'Rua E', 'Bairro E', 'Cidade E', 'Estado E', '00000002', 102),
('12345678000103', 'Lab C', 'Laboratório C Ltda', 'matriz', 'Rua F', 'Bairro F', 'Cidade F', 'Estado F', '00000003', 103),
('12345678000104', 'Lab D', 'Laboratório D Ltda', 'apoio', 'Rua G', 'Bairro G', 'Cidade G', 'Estado G', '00000004', 104),
('12345678000105', 'Lab E', 'Laboratório E Ltda', 'matriz', 'Rua H', 'Bairro H', 'Cidade H', 'Estado H', '00000005', 105),
('12345678000106', 'Lab F', 'Laboratório F Ltda', 'apoio', 'Rua I', 'Bairro I', 'Cidade I', 'Estado I', '00000006', 106),
('12345678000107', 'Lab G', 'Laboratório G Ltda', 'matriz', 'Rua J', 'Bairro J', 'Cidade J', 'Estado J', '00000007', 107),
('12345678000108', 'Lab H', 'Laboratório H Ltda', 'apoio', 'Rua K', 'Bairro K', 'Cidade K', 'Estado K', '00000008', 108),
('12345678000109', 'Lab I', 'Laboratório I Ltda', 'matriz', 'Rua L', 'Bairro L', 'Cidade L', 'Estado L', '00000009', 109),
('12345678000110', 'Lab J', 'Laboratório J Ltda', 'apoio', 'Rua M', 'Bairro M', 'Cidade M', 'Estado M', '00000010', 110),
('12345678000111', 'Lab K', 'Laboratório K Ltda', 'matriz', 'Rua N', 'Bairro N', 'Cidade N', 'Estado N', '00000011', 111),
('12345678000112', 'Lab L', 'Laboratório L Ltda', 'apoio', 'Rua O', 'Bairro O', 'Cidade O', 'Estado O', '00000012', 112),
('12345678000113', 'Lab M', 'Laboratório M Ltda', 'matriz', 'Rua P', 'Bairro P', 'Cidade P', 'Estado P', '00000013', 113),
('12345678000114', 'Lab N', 'Laboratório N Ltda', 'apoio', 'Rua Q', 'Bairro Q', 'Cidade Q', 'Estado Q', '00000014', 114),
('12345678000115', 'Lab O', 'Laboratório O Ltda', 'matriz', 'Rua R', 'Bairro R', 'Cidade R', 'Estado R', '00000015', 115),
('12345678000116', 'Lab P', 'Laboratório P Ltda', 'apoio', 'Rua S', 'Bairro S', 'Cidade S', 'Estado S', '00000016', 116),
('12345678000117', 'Lab Q', 'Laboratório Q Ltda', 'matriz', 'Rua T', 'Bairro T', 'Cidade T', 'Estado T', '00000017', 117),
('12345678000118', 'Lab R', 'Laboratório R Ltda', 'apoio', 'Rua U', 'Bairro U', 'Cidade U', 'Estado U', '00000018', 118),
('12345678000119', 'Lab S', 'Laboratório S Ltda', 'matriz', 'Rua V', 'Bairro V', 'Cidade V', 'Estado V', '00000019', 119),
('12345678000120', 'Lab T', 'Laboratório T Ltda', 'apoio', 'Rua W', 'Bairro W', 'Cidade W', 'Estado W', '00000020', 120),
('12345678000121', 'Lab U', 'Laboratório U Ltda', 'matriz', 'Rua X', 'Bairro X', 'Cidade X', 'Estado X', '00000021', 121),
('12345678000122', 'Lab V', 'Laboratório V Ltda', 'apoio', 'Rua Y', 'Bairro Y', 'Cidade Y', 'Estado Y', '00000022', 122),
('12345678000123', 'Lab W', 'Laboratório W Ltda', 'matriz', 'Rua Z', 'Bairro Z', 'Cidade Z', 'Estado Z', '00000023', 123),
('12345678000124', 'Lab X', 'Laboratório X Ltda', 'apoio', 'Rua AA', 'Bairro AA', 'Cidade AA', 'Estado AA', '00000024', 124),
('12345678000125', 'Lab Y', 'Laboratório Y Ltda', 'matriz', 'Rua AB', 'Bairro AB', 'Cidade AB', 'Estado AB', '00000025', 125),
('12345678000126', 'Lab Z', 'Laboratório Z Ltda', 'apoio', 'Rua AC', 'Bairro AC', 'Cidade AC', 'Estado AC', '00000026', 126),
('12345678000127', 'Lab AA', 'Laboratório AA Ltda', 'matriz', 'Rua AD', 'Bairro AD', 'Cidade AD', 'Estado AD', '00000027', 127),
('12345678000128', 'Lab AB', 'Laboratório AB Ltda', 'apoio', 'Rua AE', 'Bairro AE', 'Cidade AE', 'Estado AE', '00000028', 128),
('12345678000129', 'Lab AC', 'Laboratório AC Ltda', 'matriz', 'Rua AF', 'Bairro AF', 'Cidade AF', 'Estado AF', '00000029', 129),
('12345678000130', 'Lab AD', 'Laboratório AD Ltda', 'apoio', 'Rua AG', 'Bairro AG', 'Cidade AG', 'Estado AG', '00000030', 130);

-- Inserções na tabela Unidade
INSERT INTO `Unidade` (CNPJ, Nome, Logradouro, Bairro, Cidade, Estado, CEP, Numero, Laboratorio_CNPJ)
VALUES
('12345678000101', 'Unidade 1', 'Rua 101', 'Bairro 101', 'Cidade 101', 'Estado 101', '22222221', 201, '12345678000101'),
('12345678000102', 'Unidade 2', 'Rua 102', 'Bairro 102', 'Cidade 102', 'Estado 102', '22222222', 202, '12345678000102'),
('12345678000103', 'Unidade 3', 'Rua 103', 'Bairro 103', 'Cidade 103', 'Estado 103', '22222223', 203, '12345678000103'),
('12345678000104', 'Unidade 4', 'Rua 104', 'Bairro 104', 'Cidade 104', 'Estado 104', '22222224', 204, '12345678000104'),
('12345678000105', 'Unidade 5', 'Rua 105', 'Bairro 105', 'Cidade 105', 'Estado 105', '22222225', 205, '12345678000105'),
('12345678000106', 'Unidade 6', 'Rua 106', 'Bairro 106', 'Cidade 106', 'Estado 106', '22222226', 206, '12345678000106'),
('12345678000107', 'Unidade 7', 'Rua 107', 'Bairro 107', 'Cidade 107', 'Estado 107', '22222227', 207, '12345678000107'),
('12345678000108', 'Unidade 8', 'Rua 108', 'Bairro 108', 'Cidade 108', 'Estado 108', '22222228', 208, '12345678000108'),
('12345678000109', 'Unidade 9', 'Rua 109', 'Bairro 109', 'Cidade 109', 'Estado 109', '22222229', 209, '12345678000109'),
('12345678000110', 'Unidade 10', 'Rua 110', 'Bairro 110', 'Cidade 110', 'Estado 110', '22222230', 210, '12345678000110'),
('12345678000111', 'Unidade 11', 'Rua 111', 'Bairro 111', 'Cidade 111', 'Estado 111', '22222231', 211, '12345678000111'),
('12345678000112', 'Unidade 12', 'Rua 112', 'Bairro 112', 'Cidade 112', 'Estado 112', '22222232', 212, '12345678000112'),
('12345678000113', 'Unidade 13', 'Rua 113', 'Bairro 113', 'Cidade 113', 'Estado 113', '22222233', 213, '12345678000113'),
('12345678000114', 'Unidade 14', 'Rua 114', 'Bairro 114', 'Cidade 114', 'Estado 114', '22222234', 214, '12345678000114'),
('12345678000115', 'Unidade 15', 'Rua 115', 'Bairro 115', 'Cidade 115', 'Estado 115', '22222235', 215, '12345678000115');

-- Inserções na tabela Prontuario
INSERT INTO `mydb`.`Prontuario` (`ID`, `DataDeCadastro`, `Solicitante_CPF`, `Paciente_CPF`, `Funcionario_CPF`) VALUES
(1, '2024-08-18', '12345678901', '98765432100', '11111111111'), 
(2, '2024-08-18', '12345678904', '98765432101', '11111111112'),
(3, '2024-08-18', '12345678906', '98765432102', '11111111113'),
(4, '2024-08-18', '12345678908', '98765432103', '11111111114'),
(5, '2024-08-18', '12345678910', '98765432104', '11111111115'),
(6, '2024-08-18', '12345678912', '98765432105', '11111111116'),
(7, '2024-08-18', '12345678914', '98765432106', '11111111117'),
(8, '2024-08-18', '12345678916', '98765432107', '11111111118'),
(9, '2024-08-18', '12345678918', '98765432108', '11111111119'),
(10, '2024-08-18', '12345678920', '98765432109', '11111111120'),
(11, '2024-08-18', '12345678922', '98765432110', '11111111121'),
(12, '2024-08-18', '12345678924', '98765432111', '11111111122'),
(13, '2024-08-18', '12345678926', '98765432112', '11111111123'),
(14, '2024-08-18', '12345678928', '98765432113', '11111111124'),
(15, '2024-08-18', '12345678930', '98765432114', '11111111125');

-- Inserções na tabela Exame
INSERT INTO `mydb`.`Exame` (`ID`, `Descricao`, `Setor`, `Preco`, `Nome`, `Orientacoes`, `Unidade_CNPJ`) VALUES
('EX001', 'Exame de Sangue Completo', 'LAB', 70.00, 'Hemograma', 'Jejum de 12 horas', '12345678901234'),
('EX002', 'Exame de Urina', 'LAB', 70.00, 'Urocultura', 'Coletar a primeira urina da manhã', '12345678901234'),
('EX003', 'Ultrassonografia Abdominal', 'IMAG', 70.00, 'Ultrassom Abdominal', 'Não comer 6 horas antes do exame', '12345678901234'),
('EX004', 'Exame de Colesterol', 'LAB', 70.00, 'Perfil Lipídico', 'Jejum de 12 horas', '23456789012345'),
('EX005', 'Exame de Glicemia', 'LAB', 70.00, 'Glicemia em Jejum', 'Jejum de 8 horas', '23456789012345'),
('EX006', 'Radiografia Torácica', 'IMAG', 70.00, 'Raio-X do Tórax', 'Sem preparação necessária', '23456789012345'),
('EX007', 'Teste de Função Hepática', 'LAB', 70.00, 'Função Hepática', 'Não comer alimentos gordurosos 24 horas antes', '34567890123456'),
('EX008', 'Eletrocardiograma', 'LAB', 70.00, 'ECG', 'Descansar por 10 minutos antes do exame', '34567890123456'),
('EX009', 'Tomografia Computadorizada', 'IMAG', 70.00, 'Tomografia', 'Não comer 4 horas antes do exame', '34567890123456'),
('EX010', 'Exame de Prostatectomia', 'LAB', 70.00, 'Antígeno Prostático', 'Jejum de 8 horas', '45678901234567'),
('EX011', 'Exame de Função Renal', 'LAB', 70.00, 'Creatinina e Ureia', 'Jejum de 8 horas', '45678901234567'),
('EX012', 'Ultrassonografia do Coração', 'IMAG', 70.00, 'Ecocardiograma', 'Não comer 2 horas antes do exame', '45678901234567'),
('EX013', 'Exame de Vitamina D', 'LAB', 70.00, '25-Hidroxivitamina D', 'Sem preparação necessária', '56789012345678'),
('EX014', 'Exame de Hormônios', 'LAB', 70.00, 'Perfil Hormonal', 'Jejum de 8 horas', '56789012345678'),
('EX015', 'Ressonância Magnética', 'IMAG', 70.00, 'RM', 'Não comer 4 horas antes do exame', '56789012345678');

-- Inserções na tabela Composto por
INSERT INTO `mydb`.`Composto por` (`Prontuario_ID`, `Exame_ID`, `PrecoPago`) VALUES
(1, 'EX001', 80.00),
(1, 'EX002', 70.00),
(1, 'EX003', 90.00),
(2, 'EX004', 85.00),
(2, 'EX005', 75.00),
(2, 'EX006', 95.00),
(3, 'EX007', 80.00),
(3, 'EX008', 70.00),
(3, 'EX009', 85.00),
(4, 'EX010', 90.00),
(4, 'EX011', 75.00),
(4, 'EX012', 80.00),
(5, 'EX013', 85.00),
(5, 'EX014', 95.00),
(5, 'EX015', 100.00);

-- Inserções na tabela Trabalha em
INSERT INTO `mydb`.`Trabalha em` (`Unidade_CNPJ`, `Funcionario_CPF`) VALUES
('12345678000100', '11111111111'),
('12345678000101', '11111111112'),
('12345678000102', '11111111113'),
('12345678000103', '11111111114'),
('12345678000104', '11111111115'),
('12345678000105', '11111111116'),
('12345678000106', '11111111117'),
('12345678000107', '11111111118'),
('12345678000108', '11111111119'),
('12345678000109', '11111111120'),
('12345678000110', '11111111121'),
('12345678000111', '11111111122'),
('12345678000112', '11111111123'),
('12345678000113', '11111111124'),
('12345678000114', '11111111125');

