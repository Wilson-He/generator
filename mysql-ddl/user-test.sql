-- MySQL Script generated by MySQL Workbench
-- Mon Oct  8 10:09:03 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema wilson
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema wilson
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `wilson` DEFAULT CHARACTER SET utf8 ;
USE `wilson` ;

-- -----------------------------------------------------
-- Table `wilson`.`user_base`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wilson`.`user_base` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `is_delete` CHAR(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wilson`.`user_detail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wilson`.`user_detail` (
  `id` INT NOT NULL,
  `sex` CHAR(1) NULL,
  `age` TINYINT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` CHAR(1) NOT NULL DEFAULT 0,
  `user_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_user_detail_idx` (`user_id` ASC),
  CONSTRAINT `fk_user_detail`
    FOREIGN KEY (`user_id`)
    REFERENCES `wilson`.`user_base` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `wilson`.`teacher`
(
  `id`        varchar(64) null,
  `name`      varchar(60) null,
  `is_delete` char(1)        null
)ENGINE = InnoDB;;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
