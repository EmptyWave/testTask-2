-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb`; 
USE `mydb`; 

-- -----------------------------------------------------
-- Table `mydb`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`posts` ( 
  `id` INT NOT NULL, 
  `text` LONGTEXT NOT NULL, 
  PRIMARY KEY (`id`), 
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE) 
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4; 


-- -----------------------------------------------------
-- Table `mydb`.`authors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`authors` ( 
  `id` INT NOT NULL, 
  `name` VARCHAR(45) NOT NULL, 
  PRIMARY KEY (`id`), 
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE) 
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4; 


-- -----------------------------------------------------
-- Table `mydb`.`post_author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`post_author` ( 
  `post_id` INT NOT NULL, 
  `author_id` INT NOT NULL, 
  PRIMARY KEY (`post_id`,`author_id`), 
  KEY `post_id` (`post_id`), 
  KEY `author_id` (`author_id`), 
  CONSTRAINT `post_author_fk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE, 
  CONSTRAINT `post_author_fk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`)) 
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4; 
