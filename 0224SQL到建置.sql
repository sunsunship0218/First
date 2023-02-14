CREATE DATABASE `First_DataBase`;
SHOW DATABASES;
USE `First_DataBase`;
SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE`employee`(
`emo_id` INT PRIMARY KEY,
`name` VARCHAR(20),
`birth_date` DATE,
`sex` VARCHAR(1),
`salary` INT,
`branch_id` INT,
`sup_id` INT
);
CREATE TABLE `branch`(
`branch_id` INT PRIMARY KEY,
`branch_name` VARCHAR(20),
`manager_id` INT
);
CREATE TABLE `client`(
`client_id` INT PRIMARY KEY,
`client_name` VARCHAR(20),
`phone` VARCHAR(20)
);
CREATE TABLE`works_with`(
`emo_id` INT,
`client_id` INT,
`total_sales` INT,
PRIMARY KEY(`emo_id`,`client_id`),
FOREIGN KEY(`emo_id`) REFERENCES`employee` (`emo_id`) ON DELETE CASCADE,
FOREIGN KEY(`client_id`) REFERENCES`client` (`client_id`) ON DELETE CASCADE
);
ALTER TABLE`branch`
ADD FOREIGN KEY(`manager_id`) REFERENCES`employee`(`emo_id`) ON DELETE SET NULL;
ALTER TABLE `employee`
ADD FOREIGN KEY(`sup_id`) REFERENCES`employee`(`emo_id`) ON DELETE SET NULL;
ALTER TABLE`employee` ADD `branch_id` INT;
ALTER TABLE `employee`  ADD FOREIGN KEY(`branch_id`) REFERENCES`branch`(`branch_id` ) ON DELETE SET NULL;
SELECT*FROM`employee`;
INSERT INTO`branch` VALUES(1,'研發',NULL);
INSERT INTO`branch` VALUES(2,'行政',NULL);
INSERT INTO`branch` VALUES(3,'資訊',NULL);
INSERT INTO`employee` VALUES(210,'小蘭','1925-11-10','F',84000,1,207);
INSERT INTO`employee` VALUES(209,'小白','1997-01-22','F',39000,3,207);

INSERT INTO`employee` VALUES(208,'小黑','2000-12-19','M',35000,3,206);
INSERT INTO`employee` VALUES(207,'小綠','1985-09-16','M',29000,2,206);
INSERT INTO`employee` VALUES(206,'小黑','1998-10-08','F',50000,1,NULL);



