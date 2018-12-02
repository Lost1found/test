/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : lost_and_found

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 02/12/2018 15:08:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for card_founding
-- ----------------------------
DROP TABLE IF EXISTS `card_founding`;
CREATE TABLE `card_founding`  (
  `pickerUser` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pickerPhone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pickerName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pickLocation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pickTime` date NOT NULL,
  `cardID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ownerName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ownerSchool` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cardID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of card_founding
-- ----------------------------
INSERT INTO `card_founding` VALUES ('wangwu', '11199877712', '王五', '仓山万达1号楼', '2017-08-08', '102032016087', '王五', '福州大学');
INSERT INTO `card_founding` VALUES ('lisa', '19823711976', '李林', '福州大学', '2018-08-06', '105032016116', '林龙', '福建师范大学');
INSERT INTO `card_founding` VALUES ('lili', '15859433890', '李丽', '福建师范大学', '2018-08-08', '105032017110', '李四', '福建师范大学');
INSERT INTO `card_founding` VALUES ('zz123', '19822389713', '张明', '闽江学院', '2018-12-02', '112382017098', '李莉', '福建农林大学');
INSERT INTO `card_founding` VALUES ('zzzss', '18309811731', '林木', '福建闽侯', '2018-08-29', '123822018092', '林森', '江夏学院');
INSERT INTO `card_founding` VALUES ('lss', '18305998761', '林珊', '福建农林大学', '2018-09-10', '129872018099', '张铭', '福建中医药大学');

-- ----------------------------
-- Table structure for card_hunting
-- ----------------------------
DROP TABLE IF EXISTS `card_hunting`;
CREATE TABLE `card_hunting`  (
  `OwnerName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CardID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OwnerPhone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `School` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`CardID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of card_hunting
-- ----------------------------
INSERT INTO `card_hunting` VALUES ('zz123', '105032016099', '15859436781', '张正', '闽江学院');
INSERT INTO `card_hunting` VALUES ('zhangsan', '105032016189', '18279018266', '张三', '福师大');
INSERT INTO `card_hunting` VALUES ('u2', '105092016891', '18305926631', '张敏', '福师大');
INSERT INTO `card_hunting` VALUES ('lili', '120972017998', '18305926631', '李四', '福师大');
INSERT INTO `card_hunting` VALUES ('zhang', '121512017009', '12345678909', '汪玲', '福州大学');
INSERT INTO `card_hunting` VALUES ('zz', '189226719623', '16798754467', '林珊', '福建农林大学');

SET FOREIGN_KEY_CHECKS = 1;
