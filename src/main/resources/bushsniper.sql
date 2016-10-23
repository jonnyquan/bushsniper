/*
Navicat MySQL Data Transfer

Source Server         : 阿里云
Source Server Version : 50173
Source Host           : 120.27.92.201:3306
Source Database       : bushsniper

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-01-01 23:01:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `order_flow`
-- ----------------------------
DROP TABLE IF EXISTS `order_flow`;
CREATE TABLE `order_flow` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '订单id',
  `order_type` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0:入金出金；1:交易',
  `user_id` bigint(32) DEFAULT NULL COMMENT '用户id',
  `variety` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易品种',
  `side` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交易方向',
  `volume` float(8,2) DEFAULT NULL COMMENT '交易手数',
  `stop_loss` float(8,2) DEFAULT NULL COMMENT '止损',
  `stop_profit` float(8,2) DEFAULT NULL COMMENT '止盈',
  `gain` float(8,2) DEFAULT NULL COMMENT '盈亏',
  `tech_line` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考技术主线',
  `predict_side` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '预测方向',
  `actual_side` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '实际方向',
  `operate_score` int(4) DEFAULT NULL COMMENT '操作自评分',
  `open_time` datetime DEFAULT NULL COMMENT '开仓时间',
  `close_time` datetime DEFAULT NULL COMMENT '平仓时间',
  `plan` text COLLATE utf8_unicode_ci COMMENT '交易计划',
  `operate_detail` text COLLATE utf8_unicode_ci COMMENT '操作详情',
  `introspection` text COLLATE utf8_unicode_ci COMMENT '操作总结',
  `m15_pic` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m30_pic` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `h1_pic` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `h4_pic` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d1_pic` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order_flow
-- ----------------------------
INSERT INTO `order_flow` VALUES ('1', '0', '1', null, null, null, null, null, '100.48', null, null, null, null, '2015-10-01 00:00:00', '2015-10-01 00:00:00', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` enum('guest','admin') COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'qics', '875881559@qq.com', null, '123456', null, null);
