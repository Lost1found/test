/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : java

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 29/12/2018 01:19:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `Username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员工号为6位，由系统指定',
  `password` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员密码统一为123456',
  PRIMARY KEY (`Username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('000001', '123456');
INSERT INTO `admin` VALUES ('000002', '123456');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `questionId` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `questionContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `questionClass` int(11) NULL DEFAULT NULL,
  `questionAnswer` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`questionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('01001', ' ????????', 0, 'correct');
INSERT INTO `questions` VALUES ('01002', ' ??', 0, 'correct');
INSERT INTO `questions` VALUES ('10010', '拜托中文不要出问题了！', 0, 'correct');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `学号` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `姓名` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `性别` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `年龄` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `出生日期` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `联系电话` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `所属班级` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `所属专业` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `所属学院` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`学号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('010', '7878', '女', '10', '2014-12-13', '11111111', '0000001', 'jisuanji', '计算机学院');
INSERT INTO `student` VALUES ('020', '234852', '男', '53', NULL, NULL, '0000001', 'jisuanji', '计算机学院');
INSERT INTO `student` VALUES ('030', NULL, '男', '21', '2014-12-13 00:00:00', '1', '0000001', 'jisuanji', '计算机学院');
INSERT INTO `student` VALUES ('040', '091', '男', '10', '2014-12-13', '1', '0000001', 'jisuanji', '计算机学院');
INSERT INTO `student` VALUES ('050', '050', '男', '5', '1993-01-02', '11111111', '0000002', '建筑工程专业', '建筑工程学院');
INSERT INTO `student` VALUES ('060', '刘德华', '男', '25', '1993-12-13', '000000187', '0000002', 'jisuanji', '计算机学院');
INSERT INTO `student` VALUES ('070', '002', '女', '20', '1998-12-14', '00000001', '001', 'jisuanji', '计算机学院');
INSERT INTO `student` VALUES ('111', 'lili', '女', '25', '2018-12-04', '000000187', '0000002', 'jisuanji', '计算机学院');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `Username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('105032016082', '135755127', '123', 'w');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('zhangsan', '1234', '0');
INSERT INTO `users` VALUES ('xiaohong', '1234', '0');
INSERT INTO `users` VALUES ('zhang', '1234', '0');
INSERT INTO `users` VALUES ('zhangz', '1234', '0');
INSERT INTO `users` VALUES ('刘德华', '1234', '0');
INSERT INTO `users` VALUES ('000001', '123456', '1');

SET FOREIGN_KEY_CHECKS = 1;
