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
`major` VARCHAR(20) UNIQUE,
`ID` INT AUTO_INCREMENT,
PRIMARY KEY(`ID`)
);
INSERT INTO `student` VALUE ('A_','english',2,'pass');
INSERT INTO `student`(`name`,`major`) VALUES('D_','french');
INSERT INTO `student`(`name`,`major`) VALUES('B_','Math');
ALTER TABLE `student` ADD `pass` VARCHAR(20) DEFAULT 'not pass';
DESCRIBE `student`;
SELECT * FROM `student`;
UPDATE `student`
SET `major`='French speaking'
WHERE `major`='french';
SET SQL_SAFE_UPDATES=0;
UPDATE `student`
SET `name`='vu' 
WHERE `ID`=1;
SET SQL_SAFE_UPDATES=0;
DELETE FROM `student`
WHERE `ID`=3;

SELECT `name`,`ID` FROM `student`;





