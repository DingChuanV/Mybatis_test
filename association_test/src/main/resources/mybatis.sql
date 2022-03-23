/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : mybatis

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 23/03/2022 15:20:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` tinyint DEFAULT NULL,
  `cardId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_ibfk_1` (`cardId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`cardId`) REFERENCES `studentcard` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES (1, 'uin1', 1, 1);
INSERT INTO `student` VALUES (2, 'uin2', 1, 2);
INSERT INTO `student` VALUES (3, 'uin3', 0, 3);
INSERT INTO `student` VALUES (4, 'uin4', 1, 4);
INSERT INTO `student` VALUES (5, 'uin5', 0, 5);
INSERT INTO `student` VALUES (6, 'uin6', 0, 6);
COMMIT;

-- ----------------------------
-- Table structure for studentcard
-- ----------------------------
DROP TABLE IF EXISTS `studentcard`;
CREATE TABLE `studentcard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentId` int DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studentId` (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of studentcard
-- ----------------------------
BEGIN;
INSERT INTO `studentcard` VALUES (1, 201901, '2022-03-23', '2022-03-23');
INSERT INTO `studentcard` VALUES (2, 201902, '2022-03-23', '2022-03-23');
INSERT INTO `studentcard` VALUES (3, 201903, '2022-03-23', '2022-03-23');
INSERT INTO `studentcard` VALUES (4, 201904, '2022-03-23', '2022-03-23');
INSERT INTO `studentcard` VALUES (5, 201905, '2022-03-23', '2022-03-23');
INSERT INTO `studentcard` VALUES (6, 201906, '2022-03-23', '2022-03-23');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
