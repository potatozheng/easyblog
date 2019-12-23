/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50550
Source Host           : localhost:3306
Source Database       : easyblog

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2019-12-23 20:21:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adv
-- ----------------------------
DROP TABLE IF EXISTS `adv`;
CREATE TABLE `adv` (
  `adid` int(20) NOT NULL AUTO_INCREMENT,
  `adtitle` varchar(20) NOT NULL,
  `addescribe` varchar(255) NOT NULL,
  `adaddress` varchar(255) NOT NULL,
  `adurl` varchar(255) NOT NULL,
  `fbtime` datetime NOT NULL,
  `online` varchar(255) NOT NULL,
  PRIMARY KEY (`adid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adv
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `aid` int(20) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(50) NOT NULL,
  `describe` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `liulan` int(20) NOT NULL,
  `dianzan` int(20) NOT NULL,
  `fbtime` datetime NOT NULL,
  `sortname` varchar(50) NOT NULL,
  `biaoqian` varchar(255) NOT NULL,
  `apaixu` varchar(255) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `cid` int(20) NOT NULL AUTO_INCREMENT,
  `ctitle` varchar(50) NOT NULL,
  `cabstract` varchar(255) NOT NULL,
  `imgpath` varchar(255) NOT NULL,
  `cpaixu` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carousel
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `cid` int(20) NOT NULL AUTO_INCREMENT,
  `ccontent` varchar(255) NOT NULL,
  `ctime` datetime NOT NULL,
  `cnickname` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `lid` int(20) NOT NULL AUTO_INCREMENT,
  `lname` varchar(50) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label
-- ----------------------------

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `lid` int(20) NOT NULL AUTO_INCREMENT,
  `ltitle` varchar(50) NOT NULL,
  `ldescribe` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ltime` datetime NOT NULL,
  `lpaixu` varchar(255) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mid` int(20) NOT NULL AUTO_INCREMENT,
  `mnickname` varchar(50) NOT NULL,
  `memail` varchar(20) NOT NULL,
  `mcontent` varchar(255) NOT NULL,
  `mlike` varchar(255) NOT NULL,
  `mip` varchar(20) NOT NULL,
  `mtine` datetime NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `pid` int(20) NOT NULL AUTO_INCREMENT,
  `lujing` varchar(255) NOT NULL,
  `aid` int(20) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------

-- ----------------------------
-- Table structure for sort
-- ----------------------------
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort` (
  `sid` int(20) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) NOT NULL,
  `spaixu` varchar(255) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sort
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(20) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `wechat` varchar(50) NOT NULL,
  `lasttime` datetime NOT NULL,
  `logintime` datetime NOT NULL,
  `lastip` varchar(20) NOT NULL,
  `loginip` varchar(20) NOT NULL,
  `loginnum` int(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
