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

 Date: 12/04/2022 09:41:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ordernum` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_ibfk_1` (`userId`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` VALUES (1, 201901, 1);
INSERT INTO `order` VALUES (2, 201902, 1);
INSERT INTO `order` VALUES (3, 201903, 1);
INSERT INTO `order` VALUES (4, 201904, 2);
INSERT INTO `order` VALUES (5, 201905, 2);
INSERT INTO `order` VALUES (6, 201906, 2);
INSERT INTO `order` VALUES (7, 201907, 3);
INSERT INTO `order` VALUES (8, 201908, 3);
INSERT INTO `order` VALUES (9, 201909, 3);
INSERT INTO `order` VALUES (10, 201910, 4);
INSERT INTO `order` VALUES (11, 201911, 4);
INSERT INTO `order` VALUES (12, 201912, 4);
INSERT INTO `order` VALUES (13, 201913, 5);
INSERT INTO `order` VALUES (14, 201914, 5);
INSERT INTO `order` VALUES (15, 201915, 5);
INSERT INTO `order` VALUES (16, 201916, 6);
INSERT INTO `order` VALUES (17, 201917, 6);
COMMIT;

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

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'uin1', '123');
INSERT INTO `user` VALUES (2, 'uin2', '456');
INSERT INTO `user` VALUES (3, 'uin3', '123');
INSERT INTO `user` VALUES (4, 'uin4', '345');
INSERT INTO `user` VALUES (5, 'uin5', '123');
INSERT INTO `user` VALUES (6, 'uin6', '789');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
