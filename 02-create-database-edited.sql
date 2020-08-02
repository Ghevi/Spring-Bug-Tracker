DROP SCHEMA IF EXISTS `bugtracker`;

CREATE SCHEMA `bugtracker`;
USE `bugtracker` ;

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) NOT NULL,
  `stage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `project_employee`;
CREATE TABLE `project_employee` (
  `project_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  PRIMARY KEY (`employee_id`,`project_id`),
  KEY `FK1907nkisp2dlsswuycpnakiv8` (`project_id`),
  CONSTRAINT `FK1907nkisp2dlsswuycpnakiv8` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `FKn5yqs0xm3rmsg62n84ccyk4k0` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
);

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) DEFAULT NULL,
  `submitter` varchar(255) DEFAULT NULL,
  `ticket_description` varchar(255) DEFAULT NULL,
  `ticket_priority` varchar(255) DEFAULT NULL,
  `ticket_status` varchar(255) DEFAULT NULL,
  `ticket_title` varchar(255) DEFAULT NULL,
  `ticket_type` varchar(255) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa78dsu86la2dni050sh6gap19` (`employee_id`),
  KEY `FKon3g4edms44nvfti4skwns3vn` (`project_id`),
  CONSTRAINT `FKa78dsu86la2dni050sh6gap19` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FKon3g4edms44nvfti4skwns3vn` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ;

DROP TABLE IF EXISTS `ticket_comment`;
CREATE TABLE `ticket_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commenter` varchar(255) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `ticket_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcf0twfu7b4acgtu1audfbem60` (`ticket_id`),
  CONSTRAINT `FKcf0twfu7b4acgtu1audfbem60` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`id`)
)