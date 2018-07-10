/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-05-22 17:26:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_um_bss_contact
-- ----------------------------
DROP TABLE IF EXISTS `mb_um_bss_contact`;
CREATE TABLE `mb_um_bss_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(128) DEFAULT NULL,
  `company_add` varchar(128) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_um_bss_contact
-- ----------------------------

-- ----------------------------
-- Table structure for mb_um_comment_detaills
-- ----------------------------
DROP TABLE IF EXISTS `mb_um_comment_detaills`;
CREATE TABLE `mb_um_comment_detaills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataCbId` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cettime` datetime DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `type` varchar(0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_um_comment_detaills
-- ----------------------------

-- ----------------------------
-- Table structure for mb_um_data_list
-- ----------------------------
DROP TABLE IF EXISTS `mb_um_data_list`;
CREATE TABLE `mb_um_data_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cb_key_word` varchar(64) DEFAULT NULL,
  `cb_state` varchar(8) DEFAULT NULL,
  `cb_title` varchar(64) DEFAULT NULL,
  `cb_task_user` varchar(20) DEFAULT NULL,
  `cb_ending` datetime DEFAULT NULL,
  `cb_task_type` varchar(16) DEFAULT NULL,
  `cb_picname` varchar(64) DEFAULT NULL,
  `cb_reward` varchar(64) DEFAULT NULL,
  `cb_state_str` varchar(120) DEFAULT NULL,
  `dataCbId` int(11) DEFAULT NULL,
  `participantNum` varchar(20) DEFAULT NULL,
  `typeNo` varchar(20) DEFAULT NULL,
  `typeStr` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_um_data_list
-- ----------------------------
INSERT INTO `mb_um_data_list` VALUES ('1', '你好', '2', '是什么', 'BackAdmin', '2018-05-16 17:36:03', '采集', null, null, null, '142', '2', null, null);
INSERT INTO `mb_um_data_list` VALUES ('2', '不是', '6', '膳食纤维', 'BackAdmin', '2018-05-16 17:36:08', '标注', null, null, null, '143', '3', null, null);
INSERT INTO `mb_um_data_list` VALUES ('3', '啥子', '3', '委屈二', 'BackAdmin', '2018-05-16 17:36:19', '珠宝', null, null, null, '144', '8', null, null);
INSERT INTO `mb_um_data_list` VALUES ('11', 'dqwss阿达', null, '切切', 'BackAdmin', '2018-05-17 21:58:35', '标注', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for mb_um_file_path
-- ----------------------------
DROP TABLE IF EXISTS `mb_um_file_path`;
CREATE TABLE `mb_um_file_path` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uploadpath` varchar(128) DEFAULT NULL,
  `uploadauth` varchar(20) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `uploadtime` datetime DEFAULT NULL,
  `filetype` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_um_file_path
-- ----------------------------

-- ----------------------------
-- Table structure for mb_um_task_info
-- ----------------------------
DROP TABLE IF EXISTS `mb_um_task_info`;
CREATE TABLE `mb_um_task_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cb_circle_days` varchar(8) DEFAULT NULL,
  `cb_end_date` datetime DEFAULT NULL,
  `cb_illustrate` varchar(64) DEFAULT NULL,
  `cb_introduction` varchar(64) DEFAULT NULL,
  `cb_key_words` varchar(64) DEFAULT NULL,
  `cb_min_faith` varchar(128) DEFAULT NULL,
  `cb_model_name` varchar(128) DEFAULT NULL,
  `cb_requirement` varchar(128) DEFAULT NULL,
  `cb_reward` varchar(128) DEFAULT NULL,
  `cb_start_date` datetime DEFAULT NULL,
  `cb_studycontent` varchar(64) DEFAULT NULL,
  `cb_task_id` int(11) DEFAULT NULL,
  `cb_title` varchar(128) DEFAULT NULL,
  `cb_total_num` varchar(255) DEFAULT NULL,
  `hasStudied` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_um_task_info
-- ----------------------------

-- ----------------------------
-- Table structure for mb_um_team_audit
-- ----------------------------
DROP TABLE IF EXISTS `mb_um_team_audit`;
CREATE TABLE `mb_um_team_audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` varchar(128) DEFAULT NULL,
  `teamname` varchar(64) DEFAULT NULL,
  `teamtype` varchar(64) DEFAULT NULL,
  `teamtime` datetime DEFAULT NULL,
  `introduce` varchar(128) DEFAULT NULL,
  `principle` varchar(128) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `Audit_state` varchar(12) DEFAULT NULL,
  `Invitecode` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_um_team_audit
-- ----------------------------
INSERT INTO `mb_um_team_audit` VALUES ('1', 'BackAdmin', '任务task', '1', '2018-05-16 19:48:05', 'sdadada', 'dadadad', '18144340172', '等待审核', 'PQMvRZLe');

-- ----------------------------
-- Table structure for mb_um_team_leaguer
-- ----------------------------
DROP TABLE IF EXISTS `mb_um_team_leaguer`;
CREATE TABLE `mb_um_team_leaguer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leaguer` varchar(64) DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `integral` varchar(128) DEFAULT NULL,
  `jointime` datetime DEFAULT NULL,
  `teamname` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_um_team_leaguer
-- ----------------------------

-- ----------------------------
-- Table structure for mb_um_user_login
-- ----------------------------
DROP TABLE IF EXISTS `mb_um_user_login`;
CREATE TABLE `mb_um_user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `uage` varchar(20) DEFAULT NULL,
  `usex` varchar(2) DEFAULT NULL,
  `synopsis` varchar(8) DEFAULT NULL,
  `usertype` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_um_user_login
-- ----------------------------
INSERT INTO `mb_um_user_login` VALUES ('1', 'BackAdmin', '13681377469101', 'Aa@12345', 'BackAdmin', '26', '男', '汉族', '0');

-- ----------------------------
-- Table structure for mb_un_task_name
-- ----------------------------
DROP TABLE IF EXISTS `mb_un_task_name`;
CREATE TABLE `mb_un_task_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) DEFAULT NULL,
  `loginname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mb_un_task_name
-- ----------------------------
