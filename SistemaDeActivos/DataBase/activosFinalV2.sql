-- MySQL Script generated by MySQL Workbench
-- Sat May 25 00:17:29 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema inventario
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema inventario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `inventario` DEFAULT CHARACTER SET utf8 ;
USE `inventario` ;

-- -----------------------------------------------------
-- Table `inventario`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario`.`Funcionario` (
  `id` VARCHAR(10) NOT NULL,
  `nombre` VARCHAR(30) NULL DEFAULT NULL,
  `dependencia` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Funcionario_Dependencia1_idx` (`dependencia` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionario_Dependencia1`
    FOREIGN KEY (`dependencia`)
    REFERENCES `inventario`.`Dependencia` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventario`.`Dependencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario`.`Dependencia` (
  `codigo` INT NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `administrador` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_Dependencia_Funcionario_idx` (`administrador` ASC) VISIBLE,
  UNIQUE INDEX `administrador_UNIQUE` (`administrador` ASC) VISIBLE,
  CONSTRAINT `fk_Dependencia_Funcionario`
    FOREIGN KEY (`administrador`)
    REFERENCES `inventario`.`Funcionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventario`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario`.`Usuario` (
  `funcionario` VARCHAR(10) NOT NULL,
  `id` VARCHAR(20) NOT NULL,
  `clave` VARCHAR(20) NULL DEFAULT NULL,
  `rol` VARCHAR(20) NULL DEFAULT NULL,
  INDEX `fk_Usuario_Funcionario1_idx` (`funcionario` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Usuario_Funcionario1`
    FOREIGN KEY (`funcionario`)
    REFERENCES `inventario`.`Funcionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventario`.`Solicitud`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario`.`Solicitud` (
  `numero` INT NOT NULL AUTO_INCREMENT,
  `comprobante` VARCHAR(10) NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `tipo` VARCHAR(20) NULL DEFAULT NULL,
  `estado` VARCHAR(30) NULL DEFAULT NULL,
  `registrador` VARCHAR(10) NULL DEFAULT NULL,
  `dependencia` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_Solicitud_Funcionario1_idx` (`registrador` ASC) VISIBLE,
  INDEX `fk_Solicitud_Dependencia1_idx` (`dependencia` ASC) VISIBLE,
  CONSTRAINT `fk_Solicitud_Funcionario1`
    FOREIGN KEY (`registrador`)
    REFERENCES `inventario`.`Funcionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Solicitud_Dependencia1`
    FOREIGN KEY (`dependencia`)
    REFERENCES `inventario`.`Dependencia` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventario`.`Bien`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario`.`Bien` (
  `numero` INT NOT NULL,
  `descripcion` VARCHAR(30) NULL DEFAULT NULL,
  `marca` VARCHAR(30) NULL DEFAULT NULL,
  `modelo` VARCHAR(30) NULL DEFAULT NULL,
  `precio` FLOAT NULL DEFAULT NULL,
  `cantidad` INT NULL DEFAULT NULL,
  `solicitud` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_Bien_Solicitud1_idx` (`solicitud` ASC) VISIBLE,
  CONSTRAINT `fk_Bien_Solicitud1`
    FOREIGN KEY (`solicitud`)
    REFERENCES `inventario`.`Solicitud` (`numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventario`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario`.`Categoria` (
  `categoria` INT NOT NULL,
  `descripcion` VARCHAR(30) NOT NULL,
  `consecutivo` INT NULL DEFAULT NULL,
  PRIMARY KEY (`categoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventario`.`Activo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario`.`Activo` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `bien` INT NOT NULL,
  `categoria` INT NOT NULL,
  `funcionario` VARCHAR(10) NULL,
  `dependencia` INT NULL,
  `puesto` VARCHAR(30) NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_Activo_Bien1_idx` (`bien` ASC) VISIBLE,
  INDEX `fk_Activo_Categoria1_idx` (`categoria` ASC) VISIBLE,
  INDEX `fk_Activo_Funcionario1_idx` (`funcionario` ASC) VISIBLE,
  INDEX `fk_Activo_Dependencia1_idx` (`dependencia` ASC) VISIBLE,
  CONSTRAINT `fk_Activo_Bien1`
    FOREIGN KEY (`bien`)
    REFERENCES `inventario`.`Bien` (`numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Activo_Categoria1`
    FOREIGN KEY (`categoria`)
    REFERENCES `inventario`.`Categoria` (`categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Activo_Funcionario1`
    FOREIGN KEY (`funcionario`)
    REFERENCES `inventario`.`Funcionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Activo_Dependencia1`
    FOREIGN KEY (`dependencia`)
    REFERENCES `inventario`.`Dependencia` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventario`.`Grupo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario`.`Grupo` (
  `grupo` VARCHAR(20) NOT NULL,
  `id` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`grupo`, `id`),
  INDEX `fk_Grupo_Usuario1_idx` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_Grupo_Usuario1`
    FOREIGN KEY (`id`)
    REFERENCES `inventario`.`Usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
