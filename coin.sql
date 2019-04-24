/*
 Navicat Premium Data Transfer

 Source Server         : OK
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : coin

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 24/04/2019 16:19:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for locker
-- ----------------------------
DROP TABLE IF EXISTS `locker`;
CREATE TABLE `locker`  (
  `Coin_locker_number` int(5) NOT NULL,
  `Coin_locker_status` int(2) NOT NULL,
  `Coin_locker_price` int(5) NOT NULL,
  `Coin_locker_pass_unlock` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`Coin_locker_number`) USING BTREE,
  INDEX `Coin_locker_price`(`Coin_locker_price`) USING BTREE,
  CONSTRAINT `price` FOREIGN KEY (`Coin_locker_price`) REFERENCES `price` (`Coin_locker_price_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of locker
-- ----------------------------
INSERT INTO `locker` VALUES (1, 1, 1, NULL);
INSERT INTO `locker` VALUES (2, 1, 2, NULL);
INSERT INTO `locker` VALUES (3, 1, 3, NULL);
INSERT INTO `locker` VALUES (4, 1, 1, NULL);
INSERT INTO `locker` VALUES (5, 1, 2, NULL);
INSERT INTO `locker` VALUES (6, 1, 3, NULL);
INSERT INTO `locker` VALUES (7, 1, 1, NULL);
INSERT INTO `locker` VALUES (8, 1, 2, NULL);
INSERT INTO `locker` VALUES (9, 1, 3, NULL);
INSERT INTO `locker` VALUES (10, 1, 1, NULL);
INSERT INTO `locker` VALUES (11, 1, 2, NULL);
INSERT INTO `locker` VALUES (12, 1, 3, NULL);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `Coin_locker_using_id` int(5) NOT NULL AUTO_INCREMENT,
  `Coin_locker_pass_unlock` int(5) NOT NULL,
  `Coin_locker_number` int(5) NOT NULL,
  `Coin_locker_status_use` int(2) NOT NULL,
  `Coin_locker_time_start` datetime(0) NOT NULL,
  `Coin_locker_time_end` datetime(0) NULL DEFAULT NULL,
  `Coin_locker_timeuse` time(0) NULL DEFAULT NULL,
  `Coin_locker_price` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`Coin_locker_using_id`) USING BTREE,
  INDEX `locker`(`Coin_locker_number`) USING BTREE,
  CONSTRAINT `locker` FOREIGN KEY (`Coin_locker_number`) REFERENCES `locker` (`Coin_locker_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (30, 1111, 1, 1, '2019-04-24 14:38:45', '2019-04-24 14:38:50', '00:00:05', 50);
INSERT INTO `log` VALUES (31, 1111, 2, 1, '2019-04-24 14:40:12', '2019-04-24 14:40:16', '00:00:04', 100);
INSERT INTO `log` VALUES (32, 1111, 1, 1, '2019-04-24 14:42:17', '2019-04-24 14:43:05', '00:00:48', 50);
INSERT INTO `log` VALUES (33, 1111, 2, 1, '2019-04-24 14:43:16', '2019-04-24 14:43:24', '00:00:08', 100);
INSERT INTO `log` VALUES (34, 1111, 1, 1, '2019-04-24 15:43:08', '2019-04-24 15:43:56', '00:00:48', 50);
INSERT INTO `log` VALUES (35, 1111, 1, 1, '2019-04-24 15:54:57', '2019-04-24 15:58:51', '00:03:54', 50);
INSERT INTO `log` VALUES (36, 1111, 1, 1, '2019-04-24 16:00:32', '2019-04-24 16:01:16', '00:00:44', 50);
INSERT INTO `log` VALUES (37, 1111, 1, 1, '2019-04-24 16:00:33', '2019-04-24 16:14:26', '00:13:53', 50);
INSERT INTO `log` VALUES (38, 1111, 1, 1, '2019-04-24 16:01:26', '2019-04-24 16:16:00', '00:14:34', 50);
INSERT INTO `log` VALUES (39, 1111, 1, 1, '2019-04-24 16:01:36', '2019-04-24 16:16:28', '00:14:52', 50);
INSERT INTO `log` VALUES (40, 1111, 1, 1, '2019-04-24 16:01:55', '2019-04-24 16:18:26', '00:16:31', 50);
INSERT INTO `log` VALUES (41, 1111, 1, 2, '2019-04-24 16:02:22', NULL, NULL, NULL);
INSERT INTO `log` VALUES (42, 1111, 1, 2, '2019-04-24 16:02:44', NULL, NULL, NULL);
INSERT INTO `log` VALUES (43, 1111, 1, 2, '2019-04-24 16:03:36', NULL, NULL, NULL);
INSERT INTO `log` VALUES (44, 1111, 1, 2, '2019-04-24 16:03:50', NULL, NULL, NULL);
INSERT INTO `log` VALUES (45, 1111, 1, 2, '2019-04-24 16:03:55', NULL, NULL, NULL);
INSERT INTO `log` VALUES (46, 1111, 1, 2, '2019-04-24 16:04:51', NULL, NULL, NULL);
INSERT INTO `log` VALUES (47, 1111, 1, 2, '2019-04-24 16:06:41', NULL, NULL, NULL);
INSERT INTO `log` VALUES (48, 1111, 1, 2, '2019-04-24 16:07:22', NULL, NULL, NULL);
INSERT INTO `log` VALUES (49, 1111, 1, 2, '2019-04-24 16:08:00', NULL, NULL, NULL);
INSERT INTO `log` VALUES (50, 1111, 1, 2, '2019-04-24 16:08:31', NULL, NULL, NULL);
INSERT INTO `log` VALUES (51, 1111, 1, 2, '2019-04-24 16:09:52', NULL, NULL, NULL);
INSERT INTO `log` VALUES (52, 1111, 1, 2, '2019-04-24 16:10:13', NULL, NULL, NULL);
INSERT INTO `log` VALUES (53, 1111, 1, 2, '2019-04-24 16:10:35', NULL, NULL, NULL);
INSERT INTO `log` VALUES (54, 1111, 1, 2, '2019-04-24 16:11:12', NULL, NULL, NULL);
INSERT INTO `log` VALUES (55, 1111, 1, 2, '2019-04-24 16:12:17', NULL, NULL, NULL);
INSERT INTO `log` VALUES (56, 1111, 1, 2, '2019-04-24 16:13:11', NULL, NULL, NULL);
INSERT INTO `log` VALUES (57, 1111, 1, 2, '2019-04-24 16:14:05', NULL, NULL, NULL);
INSERT INTO `log` VALUES (58, 1111, 1, 2, '2019-04-24 16:14:22', NULL, NULL, NULL);
INSERT INTO `log` VALUES (59, 1111, 1, 2, '2019-04-24 16:15:55', NULL, NULL, NULL);
INSERT INTO `log` VALUES (60, 1111, 1, 2, '2019-04-24 16:16:22', NULL, NULL, NULL);
INSERT INTO `log` VALUES (61, 1111, 1, 2, '2019-04-24 16:18:20', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price`  (
  `Coin_locker_price_id` int(5) NOT NULL,
  `Coin_locker_hour_first` int(5) NOT NULL,
  `Coin_locker_hour_next` int(5) NOT NULL,
  `Coin_locker_size` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Coin_locker_price_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO `price` VALUES (1, 50, 25, 'S');
INSERT INTO `price` VALUES (2, 100, 50, 'M');
INSERT INTO `price` VALUES (3, 200, 100, 'L');

SET FOREIGN_KEY_CHECKS = 1;
