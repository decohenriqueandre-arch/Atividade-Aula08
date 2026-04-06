-- -----------------------------------------------------
-- Trabalho aula-08 Bar do Zé
-- -----------------------------------------------------
 -- CREATE SCHEMA IF NOT EXISTS Encontro8 ;
USE DB_ANDRE ;

-- -----------------------------------------------------
-- Table FUNCIONARIOS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS FUNCIONARIOS (
  ID_FUNCIONARIO INT NOT NULL AUTO_INCREMENT,
  NOME_FUNCIONARIO VARCHAR(50) NOT NULL,
  SALARIO DECIMAL(10,2) NOT NULL,
  ANO_ENTRADA YEAR NOT NULL,
  CARGO VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_FUNCIONARIO))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table FORNECEDORES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS FORNECEDORES (
  ID_FORNECEDOR INT NOT NULL AUTO_INCREMENT,
  NOME_FORNECEDOR VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_FORNECEDOR))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table PRODUTOS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS PRODUTOS (
  ID_PRODUTO INT NOT NULL AUTO_INCREMENT,
  NOME_PRODUTO VARCHAR(50) NOT NULL,
  PRECO_VENDA DECIMAL(10,2) NOT NULL,
  PRECO_CUSTO DECIMAL(10,2) NOT NULL,
  ID_FORNECEDOR INT NULL,
  PRIMARY KEY (ID_PRODUTO))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table CLIENTES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CLIENTES (
  ID_CLIENTE INT NOT NULL AUTO_INCREMENT,
  NOME_CLIENTE VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_CLIENTE))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Encontro8.VENDAS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS VENDAS (
  ID_VENDA INT NOT NULL AUTO_INCREMENT,
  DATA_VENDA DATE NOT NULL,
  ID_PRODUTO INT NOT NULL,
  ID_FUNCIONARIO INT NULL,
  ID_CLIENTE INT NULL,
  QUANTIDADE_VENDIDA INT NOT NULL,
  STATUS_PGTO VARCHAR(10) NOT NULL,
  PRIMARY KEY (ID_VENDA))
ENGINE = InnoDB;



-- ----------------------------------------------------
-- INSERT FUNCIONARIOS--
-- ----------------------------------------------------
INSERT INTO FUNCIONARIOS
(NOME_FUNCIONARIO, SALARIO, ANO_ENTRADA, CARGO)
VALUES
('Adônis Grega', 1834.45, 2025,'Atendente'),
('Apolo God', 1900.03, 2024, 'Atendente'),
('Ártemis Sister', 2300.00, 2022, 'Gerente');

SELECT * FROM FUNCIONARIOS;

-- ----------------------------------
-- INSERT FORNECEDORES
-- ----------------------------------
INSERT INTO FORNECEDORES 
(NOME_FORNECEDOR)
VALUES
('Distribuidora Cevada Pura'), 
('Alambique Velho Oeste'), 
('Granja Renascer'), 
('Frigorífico Boi Gordo'), 
('Salgadaria Popular'), 
('Hortifruti do Campo'), 
('Snacks do Cerrado'), 
('Laticínios da Serra'), 
('Pescados da Costa'),
('Tabacaria Ouro Negro'); 

SELECT * FROM FORNECEDORES;
-- -------------------------
-- INSERT CLIENTES
-- -------------------------
INSERT INTO CLIENTES(NOME_CLIENTE)
VALUES
('Dona Maria'),('João do Pulo'),('Zé da Esquina'),('Sr. Wilson'),('Roberto'),('Chico Mineiro'),('Anônimo');

SELECT * FROM CLIENTES;

-- ----------------------
-- INSERT PRODUTOS
-- ----------------------
-- Fornecedor 1: Distribuidora Cevada Pura -- 
INSERT INTO PRODUTOS 
(NOME_PRODUTO, PRECO_VENDA, PRECO_CUSTO, ID_FORNECEDOR) 
VALUES 
('Cerveja', 10.00, 6.50, 1),
('Refrigerante', 5.00, 2.80, 1),
('Água tônica', 6.00, 3.10, 1);

-- Fornecedor 2: Alambique Velho Oeste -- 
INSERT INTO PRODUTOS 
(NOME_PRODUTO, PRECO_VENDA, PRECO_CUSTO, ID_FORNECEDOR) 
VALUES 
('Cachaça', 3.00, 1.20, 2),
('Conhaque', 7.00, 3.90, 2);

-- Fornecedor 3: Granja Renascer -- 
INSERT INTO PRODUTOS 
(NOME_PRODUTO, PRECO_VENDA, PRECO_CUSTO, ID_FORNECEDOR) 
VALUES 
('Ovo rosa', 2.50, 1.10, 3),
('Ovo de codorna', 1.00, 0.40, 3);

-- Fornecedor 4: Frigorífico Boi Gordo -- 
INSERT INTO PRODUTOS 
(NOME_PRODUTO, PRECO_VENDA, PRECO_CUSTO, ID_FORNECEDOR) 
VALUES 
('Espetinho', 8.00, 3.80, 4),
('Torresmo', 5.00, 1.80, 4),
('Linguiça calabresa', 25.00, 11.00, 4),
('Caldo de mocotó', 12.00, 5.50, 4),
('Dobradinha', 15.00, 6.80, 4);

-- Fornecedor 5: Salgadaria Popular -- 
INSERT INTO PRODUTOS 
(NOME_PRODUTO, PRECO_VENDA, PRECO_CUSTO, ID_FORNECEDOR) 
VALUES 
('Bolinho de carne', 6.00, 2.50, 5),
('Coxinha', 6.00, 2.50, 5),
('Risoles', 6.00, 2.50, 5),
('Quibe', 6.00, 2.50, 5),
('Empada', 5.00, 2.10, 5),
('Pão com mortadela', 8.00, 3.20, 5);

-- Fornecedor 6: Hortifruti do Campo -- 
INSERT INTO PRODUTOS 
(NOME_PRODUTO, PRECO_VENDA, PRECO_CUSTO, ID_FORNECEDOR) 
VALUES 
('Batata frita', 20.00, 8.50, 6),
('Azeitona', 10.00, 4.20, 6),
('Caldinho de feijão', 10.00, 4.10, 6),
('Café', 2.00, 0.80, 6);

-- Fornecedor 7: Snacks do Cerrado -- 
INSERT INTO PRODUTOS 
(NOME_PRODUTO, PRECO_VENDA, PRECO_CUSTO, ID_FORNECEDOR) 
VALUES 
('Amendoim', 3.00, 1.10, 7),
('Paçoca', 1.50, 0.60, 7),
('Chiclete', 0.50, 0.15, 7);

-- Fornecedor 8: Laticínios da Serra -- 
INSERT INTO PRODUTOS 
(NOME_PRODUTO, PRECO_VENDA, PRECO_CUSTO, ID_FORNECEDOR) 
VALUES 
('Queijo coalho', 7.00, 3.40, 8);

-- Fornecedor 9: Pescados da Costa -- 
INSERT INTO PRODUTOS 
(NOME_PRODUTO, PRECO_VENDA, PRECO_CUSTO, ID_FORNECEDOR) 
VALUES 
('Sardinha', 4.00, 1.70, 9);

-- Fornecedor 10: Tabacaria Ouro Negro -- 
INSERT INTO PRODUTOS 
(NOME_PRODUTO, PRECO_VENDA, PRECO_CUSTO, ID_FORNECEDOR) 
VALUES 
('Cigarro', 1.00, 0.65, 10),
('Isqueiro', 6.00, 2.90, 10),
('Fósforo', 1.00, 0.45, 10);

SELECT * FROM PRODUTOS;

-- -------------------------
-- INSERT VENDAS A VISTA
-- -------------------------
INSERT INTO VENDAS 
(DATA_VENDA, ID_PRODUTO, ID_FUNCIONARIO, ID_CLIENTE, QUANTIDADE_VENDIDA, STATUS_PGTO) 
VALUES 
-- VENDAS À VISTA -- 
-- vendas 06 de março 2026 -- 
('2026-03-06', 20, 3, 2, 6, 'Pago'),
('2026-03-06', 24, 1, 1, 10, 'Pago'),
('2026-03-06', 10, 3, 3, 5, 'Pago'),
-- vendas 07 de março 2026 -- 
('2026-03-07', 18, 1, 1, 18, 'Pago'),
('2026-03-07', 25, 2, 4, 15, 'Pago'),
('2026-03-07', 11, 3, 1, 10, 'Pago'),
-- vendas 08 de março 2026 -- 
('2026-03-08', 12, 3, 5, 8, 'Pago'),
('2026-03-08', 21, 3, 1, 15, 'Pago'),
('2026-03-08', 2, 1, 6, 30, 'Pago'),
-- vendas 09 de março 2026 -- 
('2026-03-09', 3, 2, 1, 15, 'Pago'),
('2026-03-09', 27, 1, 7, 5, 'Pago'),
('2026-03-09', 28, 1, 1, 15, 'Pago'),
-- vendas 10 de março 2026 -- 
('2026-03-10', 23, 1, 8, 20, 'Pago'),
('2026-03-10', 22, 2, 1, 80, 'Pago'),
('2026-03-10', 5, 2, 2, 12, 'Pago'),
-- vendas 11 de março 2026 -- 
('2026-03-11', 1, 3, 1, 45, 'Pago'),
('2026-03-11', 14, 1, 3, 28, 'Pago'),
('2026-03-11', 4, 2, 1, 55, 'Pago'),
-- vendas 12 de março 2026 -- 
('2026-03-12', 6, 2, 4, 22, 'Pago'),
('2026-03-12', 8, 3, 1, 20, 'Pago'),
('2026-03-12', 13, 1, 5, 15, 'Pago'),
-- vendas 13 de março 2026 -- 
('2026-03-13', 15, 1, 1, 12, 'Pago'),
('2026-03-13', 16, 1, 6, 15, 'Pago'),
('2026-03-13', 17, 3, 1, 18, 'Pago'),
-- vendas 14 de março 2026 -- 
('2026-03-14', 9, 2, 7, 30, 'Pago'),
('2026-03-14', 19, 3, 1, 10, 'Pago'),
('2026-03-14', 22, 1, 8, 25, 'Pago'),
-- vendas 15 de março 2026 -- 
('2026-03-15', 7, 2, 1, 45, 'Pago'),
('2026-03-15', 20, 3, 2, 12, 'Pago'),
('2026-03-15', 24, 1, 1, 15, 'Pago'),
-- vendas 16 de março 2026 -- 
('2026-03-16', 10, 3, 3, 8, 'Pago'),
('2026-03-16', 18, 1, 1, 20, 'Pago'),
('2026-03-16', 25, 2, 4, 22, 'Pago'),
-- vendas 17 de março 2026 -- 
('2026-03-17', 11, 3, 1, 15, 'Pago'),
('2026-03-17', 12, 3, 5, 10, 'Pago'),
('2026-03-17', 21, 3, 1, 20, 'Pago'),
-- vendas 18 de março 2026 -- 
('2026-03-18', 2, 1, 6, 35, 'Pago'),
('2026-03-18', 3, 2, 1, 18, 'Pago'),
('2026-03-18', 26, 2, 7, 75, 'Pago'),
-- vendas 19 de março 2026 -- 
('2026-03-19', 27, 1, 1, 8, 'Pago'),
('2026-03-19', 28, 1, 8, 20, 'Pago'),
('2026-03-19', 23, 1, 1, 30, 'Pago'),
-- vendas 20 de março 2026 -- 
('2026-03-20', 22, 2, 2, 110, 'Pago'),
('2026-03-20', 5, 2, 1, 15, 'Pago'),
('2026-03-20', 29, 2, 3, 40, 'Pago'),
-- vendas 21 de março 2026 -- 
('2026-03-21', 1, 3, 1, 55, 'Pago'),
('2026-03-21', 14, 1, 4, 32, 'Pago'),
('2026-03-21', 4, 2, 1, 65, 'Pago'),
-- vendas 22 de março 2026 -- 
('2026-03-22', 6, 2, 5, 28, 'Pago'),
('2026-03-22', 8, 3, 1, 22, 'Pago'),
('2026-03-22', 13, 1, 6, 18, 'Pago'),
-- vendas 23 de março 2026 -- 
('2026-03-23', 15, 1, 1, 15, 'Pago'),
('2026-03-23', 16, 1, 7, 18, 'Pago'),
('2026-03-23', 17, 3, 1, 25, 'Pago'),
-- vendas 24 de março 2026 -- 
('2026-03-24', 9, 2, 8, 35, 'Pago'),
('2026-03-24', 19, 3, 1, 12, 'Pago'),
('2026-03-24', 22, 1, 2, 30, 'Pago'),
-- vendas 25 de março 2026 -- 
('2026-03-25', 7, 2, 1, 55, 'Pago'),
('2026-03-25', 20, 3, 3, 15, 'Pago'),
('2026-03-25', 24, 1, 1, 18, 'Pago'),
-- vendas 26 de março 2026 -- 
('2026-03-26', 10, 3, 4, 10, 'Pago'),
('2026-03-26', 18, 1, 1, 25, 'Pago'),
('2026-03-26', 25, 2, 5, 30, 'Pago'),
-- vendas 27 de março 2026 -- 
('2026-03-27', 11, 3, 1, 18, 'Pago'),
('2026-03-27', 12, 3, 6, 12, 'Pago'),
('2026-03-27', 21, 3, 1, 25, 'Pago'),
-- vendas 28 de março 2026 -- 
('2026-03-28', 2, 1, 7, 40, 'Pago'),
('2026-03-28', 3, 2, 1, 20, 'Pago'),
('2026-03-28', 26, 2, 8, 80, 'Pago'),
-- vendas 29 de março 2026 -- 
('2026-03-29', 27, 1, 1, 10, 'Pago'),
('2026-03-29', 28, 1, 2, 25, 'Pago'),
('2026-03-29', 23, 1, 1, 35, 'Pago'),
-- vendas 30 de março 2026 -- 
('2026-03-30', 22, 2, 3, 120, 'Pago'),
('2026-03-30', 5, 2, 1, 18, 'Pago'),
('2026-03-30', 29, 2, 4, 45, 'Pago'),
-- vendas 31 de março 2026 -- 
('2026-03-31', 1, 3, 1, 60, 'Pago'),
('2026-03-31', 14, 1, 5, 35, 'Pago'),
('2026-03-31', 4, 2, 1, 70, 'Pago');

SELECT * FROM VENDAS;

-- -------------------------
-- INSERT VENDAS FIADO
-- -------------------------
INSERT INTO VENDAS 
(DATA_VENDA, ID_PRODUTO, ID_FUNCIONARIO, ID_CLIENTE, QUANTIDADE_VENDIDA, STATUS_PGTO) 
VALUES 
-- VENDAS FIADAS -- 
-- vendas fiadas em janeiro 2026 -- 
('2026-01-05', 4, 2, 5, 10, 'Fiado'),
('2026-01-07', 1, 3, 4, 6, 'Fiado'),
('2026-01-08', 26, 1, 3, 10, 'Fiado'),
('2026-01-10', 9, 2, 6, 5, 'Fiado'),
('2026-01-12', 5, 2, 7, 4, 'Fiado'),
('2026-01-15', 18, 1, 8, 4, 'Fiado'),
('2026-01-18', 11, 3, 2, 3, 'Fiado'),
('2026-01-20', 4, 2, 5, 8, 'Fiado'),
('2026-01-22', 1, 3, 4, 10, 'Fiado'),
('2026-01-25', 8, 1, 3, 6, 'Fiado'),
('2026-01-28', 10, 3, 7, 2, 'Fiado'),
('2026-01-30', 29, 2, 8, 10, 'Fiado'),
-- vendas fiadas em fevereiro 2026 -- 
('2026-02-02', 14, 1, 5, 6, 'Fiado'),
('2026-02-04', 1, 3, 6, 8, 'Fiado'),
('2026-02-05', 26, 2, 3, 15, 'Fiado'),
('2026-02-07', 4, 2, 4, 12, 'Fiado'),
('2026-02-10', 12, 3, 7, 3, 'Fiado'),
('2026-02-12', 13, 1, 2, 5, 'Fiado'),
('2026-02-15', 24, 1, 8, 4, 'Fiado'),
('2026-02-18', 21, 3, 5, 5, 'Fiado'),
('2026-02-20', 1, 3, 6, 12, 'Fiado'),
('2026-02-22', 5, 2, 7, 6, 'Fiado'),
('2026-02-24', 6, 2, 3, 10, 'Fiado'),
('2026-02-26', 8, 1, 4, 8, 'Fiado'),
('2026-02-28', 25, 2, 8, 10, 'Fiado'),
-- vendas fiadas em março 2026 -- 
('2026-03-02', 1, 3, 2, 5, 'Fiado'),
('2026-03-04', 26, 2, 5, 20, 'Fiado'),
('2026-03-05', 4, 2, 3, 10, 'Fiado'),
('2026-03-07', 9, 2, 6, 6, 'Fiado'),
('2026-03-09', 18, 1, 7, 5, 'Fiado'),
('2026-03-11', 11, 3, 4, 4, 'Fiado'),
('2026-03-13', 14, 1, 8, 8, 'Fiado'),
('2026-03-15', 1, 3, 5, 10, 'Fiado'),
('2026-03-17', 10, 3, 2, 3, 'Fiado'),
('2026-03-19', 22, 1, 3, 10, 'Fiado'),
('2026-03-21', 4, 2, 6, 15, 'Fiado'),
('2026-03-22', 5, 2, 4, 5, 'Fiado'),
('2026-03-24', 16, 1, 7, 6, 'Fiado'),
('2026-03-25', 19, 3, 8, 2, 'Fiado'),
('2026-03-26', 29, 2, 5, 12, 'Fiado'),
('2026-03-27', 26, 2, 2, 12, 'Fiado'),
('2026-03-28', 1, 3, 3, 8, 'Fiado'),
('2026-03-29', 23, 1, 6, 15, 'Fiado'),
('2026-03-29', 22, 2, 7, 50, 'Fiado'),
('2026-03-30', 4, 2, 4, 20, 'Fiado'),
('2026-03-30', 17, 1, 8, 10, 'Fiado'),
('2026-03-31', 21, 3, 5, 6, 'Fiado'),
('2026-03-31', 1, 3, 6, 12, 'Fiado'),
('2026-03-31', 27, 1, 3, 2, 'Fiado'),
('2026-03-31', 5, 2, 7, 4, 'Fiado');

SELECT * FROM VENDAS;

SELECT DATA_VENDA, STATUS_PGTO FROM VENDAS;




-- SET SQL_MODE=@OLD_SQL_MODE;
-- SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;