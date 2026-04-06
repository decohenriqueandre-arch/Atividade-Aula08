-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Encontro8
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Encontro8
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS Encontro8 ;
USE Encontro8 ;

-- -----------------------------------------------------
-- Table Encontro8.FUNCIONARIOS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Encontro8.FUNCIONARIOS (
  ID_FUNCIONARIO INT NOT NULL AUTO_INCREMENT,
  NOME_FUNCIONARIO VARCHAR(50) NOT NULL,
  SALARIO DECIMAL(10,2) NOT NULL,
  ANO_ENTRADA YEAR NOT NULL,
  CARGO VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_FUNCIONARIO))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Encontro8.FORNECEDORES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Encontro8.FORNECEDORES (
  ID_FORNECEDOR INT NOT NULL AUTO_INCREMENT,
  NOME_FORNECEDOR VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_FORNECEDOR))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Encontro8.PRODUTOS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Encontro8.PRODUTOS (
  ID_PRODUTO INT NOT NULL AUTO_INCREMENT,
  NOME_PRODUTO VARCHAR(50) NOT NULL,
  PRECO_VENDA DECIMAL(10,2) NOT NULL,
  PRECO_CUSTO DECIMAL(10,2) NOT NULL,
  ID_FORNECEDOR INT NULL,
  PRIMARY KEY (ID_PRODUTO))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Encontro8.CLIENTES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Encontro8.CLIENTES (
  ID_CLIENTE INT NOT NULL AUTO_INCREMENT,
  NOME_CLIENTE VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_CLIENTE))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Encontro8.VENDAS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Encontro8.VENDAS (
  ID_VENDA INT NOT NULL AUTO_INCREMENT,
  DATA_VENDA DATE NOT NULL,
  ID_PRODUTO INT NOT NULL,
  ID_FUNCIONARIO INT NULL,
  ID_CLIENTE INT NULL,
  QUANTIDADE_VENDIDA INT NOT NULL,
  STATUS_PGTO VARCHAR(10) NOT NULL,
  PRIMARY KEY (ID_VENDA))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;