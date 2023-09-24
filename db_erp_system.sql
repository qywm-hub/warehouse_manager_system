/*
 Navicat Premium Data Transfer

 Source Server         : article
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : db_erp_system

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 22/05/2023 16:25:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hw
-- ----------------------------
DROP TABLE IF EXISTS `hw`;
CREATE TABLE `hw`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `number` int(0) NULL DEFAULT NULL,
  `money` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `gy` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `sj` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sh` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `zrr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `t5` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `t6` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hw
-- ----------------------------
INSERT INTO `hw` VALUES (1, '手机 ', 7, '6500 ', '华为 ', '6666 ', '2023-05-22 07:00:00', '1', '1', 'admin', NULL, NULL);
INSERT INTO `hw` VALUES (3, '苹果', 15, '13000', 'iOS', '111', '2023-05-22 07:00:00', '1', '1', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for sh
-- ----------------------------
DROP TABLE IF EXISTS `sh`;
CREATE TABLE `sh`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `hw` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `money` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `jg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `lr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sh` int(0) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `sl` int(0) NULL DEFAULT NULL,
  `zrr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sh
-- ----------------------------
INSERT INTO `sh` VALUES (1, '手机', 'hw', '6500', '7000', '1500.0', '123456', 1, '2023-05-22 07:19:41', 3, 'admin');
INSERT INTO `sh` VALUES (3, '手机 ', 'hw', '6500 ', '7000', '1500.0', '123456', 1, '2023-05-22 07:21:03', 3, 'admin');
INSERT INTO `sh` VALUES (4, '苹果', '苹果', '13000', '13500', '5000.0', '123456', 1, '2023-05-22 07:30:05', 10, 'admin');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` int(0) NULL DEFAULT NULL,
  `year` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `t1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `t2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `t3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `t4` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '0', 111, '22', '2023-05-17 00:00:00', '0', '0', NULL, NULL);
INSERT INTO `user` VALUES (2, 're', '123', '1', 6684727, '21', '2023-05-17 00:00:00', '3', '0', NULL, NULL);
INSERT INTO `user` VALUES (4, 'xs', 'xs', '0', 1234567890, '22', '2023-05-22 00:00:00', '2', '0', NULL, NULL);
INSERT INTO `user` VALUES (5, 'jl', 'jl', '1', 333, '23', '2023-05-22 00:00:00', '1', '0', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
