-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema farm
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema farm
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `farm` DEFAULT CHARACTER SET utf8 ;
USE `farm` ;

-- -----------------------------------------------------
-- Table `farm`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm`.`employee` (
  `idemployee` INT NOT NULL,
  `firstName` VARCHAR(45) NULL,
  `salary` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `cnic` VARCHAR(45) NULL,
  `lastName` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `education` VARCHAR(45) NULL,
  `designation` VARCHAR(45) NULL,
  `department` VARCHAR(45) NULL,
  PRIMARY KEY (`idemployee`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farm`.`animal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm`.`animal` (
  `idanimal` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `weight` VARCHAR(45) NULL,
  `height` VARCHAR(45) NULL,
  `age` VARCHAR(45) NULL,
  `dateOfBirth` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `price` VARCHAR(45) NULL,
  `animalID` VARCHAR(45) NULL,
  `boughtFrom` VARCHAR(45) NULL,
  `careTaker` VARCHAR(45) NULL,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`idanimal`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
