/*
 Navicat MySQL Data Transfer

 Source Server         : exam
 Source Server Type    : MySQL
 Source Server Version : 80100 (8.1.0)
 Source Host           : localhost:3306
 Source Schema         : workorder_db

 Target Server Type    : MySQL
 Target Server Version : 80100 (8.1.0)
 File Encoding         : 65001

 Date: 14/09/2023 21:05:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for real_alarm
-- ----------------------------
DROP TABLE IF EXISTS `real_alarm`;
CREATE TABLE `real_alarm` (
  `ALARMUNIQUEID` text COLLATE utf8mb4_unicode_ci,
  `LOCATENENAME` text COLLATE utf8mb4_unicode_ci,
  `LOCATENESTATUS` bigint DEFAULT NULL,
  `EQUIPMENTCLASS` text COLLATE utf8mb4_unicode_ci,
  `ALARMTITLE` text COLLATE utf8mb4_unicode_ci,
  `ALARMSEVERITY` bigint DEFAULT NULL,
  `DALTIME` bigint DEFAULT NULL,
  `EVENTTIME` bigint DEFAULT NULL,
  `CANCELTIME` double DEFAULT NULL,
  `SPECIALTY` bigint DEFAULT NULL,
  `SPECIALTYEX1` text COLLATE utf8mb4_unicode_ci,
  `SPECIALTYEX2` text COLLATE utf8mb4_unicode_ci,
  `ISSTANDARD` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of real_alarm
-- ----------------------------
BEGIN;
INSERT INTO `real_alarm` (`ALARMUNIQUEID`, `LOCATENENAME`, `LOCATENESTATUS`, `EQUIPMENTCLASS`, `ALARMTITLE`, `ALARMSEVERITY`, `DALTIME`, `EVENTTIME`, `CANCELTIME`, `SPECIALTY`, `SPECIALTYEX1`, `SPECIALTYEX2`, `ISSTANDARD`) VALUES ('00|559884627894', '7:10.27.21.236-1-1-2-12-7:7', 2, 'ONU', '[GPON]', 3, 1693497601, 1693497601, 1693497605, 3, 'a', 'PON', 1);
END;
