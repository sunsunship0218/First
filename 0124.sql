CREATE DATABASE `First_DataBase`;
SHOW DATABASES;
USE `First_DataBase` ;
CREATE TABLE`user2`
(
 `userName`  VARCHAR(20) PRIMARY KEY,
 `password` INT,
 `email` VARCHAR(20)
);
DESCRIBE `user2`;
DROP TABLE `user`;
ALTER TABLE `user2` ADD NA DECIMAL(3,2);
ALTER TABLE  `user2` DROP COLUMN NA;
SELECT * FROM `user2`;
INSERT INTO `user2` VALUE('小白',123,'123@gmail.com');
INSERT INTO `user2` VALUE ('小黃',221,NULL);
DROP TABLE `user2`;

USE `First_DataBase` ;
CREATE TABLE `student`
(
`name` VARCHAR(20) NOT NULL,
`major` VARCHAR(20) UNIQUE
);
INSERT INTO `student` VALUE ('A_','english');
INSERT INTO `student` VALUE ('B_','chinese');
ALTER TABLE `student` ADD `pass` VARCHAR(20) DEFAULT 'not pass';
DESCRIBE `student`;
SELECT * FROM `student`;