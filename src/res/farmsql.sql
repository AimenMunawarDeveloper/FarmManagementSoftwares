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
Use farm;
-- Get all table entires
SELECT * from employee;
SELECT * from animal;
-- Get a row in table
INSERT INTO employee(idemployee, firstName, salary, address, cnic, lastName, email, phone, education, designation, department, username, password)values("0", "Aimen", "50,000", "Street:45, House NO: 788, Sector: G11/2", "61234-8365276-0", "Munawar", "aimenmunawaroffical@gmail.com", "+91 333 5467876" ,"BBA", "Software Engineer", "Front-end Development","aimen404", "aimen404");
INSERT INTO animal(idanimal, name, weight, height, age, dateOfBirth, description, price, animalID, boughtFrom, careTaker, type) values("0", "Cow", "45.6", "24", "10", "04/03/2023", "", "24,2365", "2342141", "Ahmed Ali", "Ali Imran", "Mammal");
-- login get all values tghat satisfy a condiiton
SELECT * from employee where username="aimen404" and password = "aimen404";
-- Delete a row where in condiiton
Delete from employee where idemployee = "1" and username = "ayesha";
-- Update a table where condition
UPDATE employee
SET salary = 2,332,343,43', firstName="Amanchoo"
WHERE idemployee = "0";