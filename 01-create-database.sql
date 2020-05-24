-- -----------------------------------------------------
-- Schema bugtracker
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `bugtracker`;

CREATE SCHEMA `bugtracker`;
USE `bugtracker` ;

-- -----------------------------------------------------
-- Table `bugtracker`.`project`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `bugtracker`.`project` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `project_name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(500) DEFAULT NULL,
  `stage` VARCHAR(255) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `bugtracker`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bugtracker`.`employee` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `role_id` int(10) NOT NULL,
  `project_id` BIGINT(20) NOT NULL,
  
  PRIMARY KEY (`id`),
	KEY `fk_project` (`project_id`),
	CONSTRAINT `fk_project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
  )
ENGINE=InnoDB
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS `bugtracker`.`ticket` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `ticket_title` VARCHAR(255) DEFAULT NULL,
  `ticket_description` VARCHAR(500) DEFAULT NULL,
  `assigned_developer` VARCHAR(255) DEFAULT NULL,
  `submitter` VARCHAR(255) DEFAULT NULL,
  `project` VARCHAR(255) DEFAULT NULL,
  `ticket_priority` VARCHAR(255) DEFAULT NULL,
  `ticket_status` VARCHAR(255) DEFAULT NULL,
  `ticket_type` VARCHAR(255) DEFAULT NULL,
  `created` TIMESTAMP DEFAULT NULL,
  `updated` TIMESTAMP DEFAULT NULL,
  
PRIMARY KEY (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS `bugtracker`.`ticket_comment` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `commenter` VARCHAR(255) DEFAULT NULL,
  `message` VARCHAR(500) DEFAULT NULL,
  `created` TIMESTAMP DEFAULT NULL,
  
PRIMARY KEY (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO EMPLOYEE (USER_NAME, EMAIL, ROLE_ID, PROJECT_ID)
VALUES ('Marco', 'marco@gmail.com', '1', '1');

INSERT INTO PROJECT (PROJECT_NAME, DESCRIPTION, STAGE)
VALUES ('GameApp', 'A simple game', 'Completed');
