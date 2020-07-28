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
  `role` VARCHAR(100) NOT NULL,
  
  PRIMARY KEY (`id`)
  )
ENGINE=InnoDB
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS `bugtracker`.`ticket` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `ticket_title` VARCHAR(255) DEFAULT NULL,
  `ticket_description` VARCHAR(500) DEFAULT NULL,
  `assigned_developer` VARCHAR(255) DEFAULT NULL,
  `submitter` VARCHAR(255) DEFAULT NULL,
  `project_id` BIGINT(20) NOT NULL,
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
  `ticket_id` BIGINT(20) NOT NULL,
  
PRIMARY KEY (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS `bugtracker`.`project_employee`  (
	`project_id` BIGINT(20) NOT NULL,
	`employee_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    
    PRIMARY KEY (`project_id`,`employee_id`),
		KEY `fk_employee_idx` (`employee_id`),
        CONSTRAINT `fk_project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO PROJECT (PROJECT_NAME, DESCRIPTION, STAGE)
VALUES ('Game App', 'A simple game', 'Completed');

INSERT INTO PROJECT (PROJECT_NAME, DESCRIPTION, STAGE)
VALUES ('Web Browser', 'A complicated browser', 'In progress');

INSERT INTO PROJECT (PROJECT_NAME, DESCRIPTION, STAGE)
VALUES ('Music Player', 'A intermediate musica player', 'Not started');

INSERT INTO EMPLOYEE (USER_NAME, EMAIL, ROLE)
VALUES ('Marco12', 'marco12@gmail.com', 'User');

INSERT INTO EMPLOYEE (USER_NAME, EMAIL, ROLE)
VALUES ('Andrea56', 'andrea56@gmail.com', 'User');

INSERT INTO EMPLOYEE (USER_NAME, EMAIL, ROLE)
VALUES ('Opmo34', 'opmo34@gmail.com', 'User');

INSERT INTO EMPLOYEE (USER_NAME, EMAIL, ROLE)
VALUES ('Felix78', 'felix78@gmail.com', 'User');

INSERT INTO EMPLOYEE (USER_NAME, EMAIL, ROLE)
VALUES ('Baldur00', 'baldur00@gmail.com', 'User');

INSERT INTO TICKET (TICKET_TITLE, PROJECT_ID)
VALUES ('Ticket title', '1');

INSERT INTO TICKET_COMMENT (COMMENTER, MESSAGE, CREATED, TICKET_ID)
VALUES ('BossyBoss', 'A very important comment', now(), '1');

INSERT INTO PROJECT_EMPLOYEE (PROJECT_ID, EMPLOYEE_ID)
VALUES ('1', '1');



