-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema take_notes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema take_notes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `take_notes` DEFAULT CHARACTER SET utf8 ;
USE `take_notes` ;

-- -----------------------------------------------------
-- Table `take_notes`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `take_notes`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `take_notes`.`lists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `take_notes`.`lists` (
  `list_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`list_id`),
  INDEX `fk_lists_users_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_lists_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `take_notes`.`users` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `take_notes`.`notes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `take_notes`.`notes` (
  `note_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `text` TEXT NOT NULL,
  PRIMARY KEY (`note_id`),
  INDEX `fk_notes_users1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_notes_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `take_notes`.`users` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `take_notes`.`todo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `take_notes`.`todo` (
  `todo_id` INT NOT NULL AUTO_INCREMENT,
  `users_user_id` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`todo_id`),
  INDEX `fk_todo_users1_idx` (`users_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_todo_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `take_notes`.`users` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `take_notes`.`list_items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `take_notes`.`list_items` (
  `item_id` INT NOT NULL AUTO_INCREMENT,
  `list_id` INT NOT NULL,
  `item` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`item_id`),
  INDEX `fk_items_lists1_idx` (`list_id` ASC) VISIBLE,
  CONSTRAINT `fk_items_lists1`
    FOREIGN KEY (`list_id`)
    REFERENCES `take_notes`.`lists` (`list_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `take_notes`.`todo_items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `take_notes`.`todo_items` (
  `item_id` INT NOT NULL AUTO_INCREMENT,
  `todo_id` INT NOT NULL,
  `item` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`item_id`),
  INDEX `fk_todo_items_todo1_idx` (`todo_id` ASC) VISIBLE,
  CONSTRAINT `fk_todo_items_todo1`
    FOREIGN KEY (`todo_id`)
    REFERENCES `take_notes`.`todo` (`todo_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
