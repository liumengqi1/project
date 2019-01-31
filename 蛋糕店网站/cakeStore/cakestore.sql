/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : cakestore

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-11-20 10:56:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(10) NOT NULL,
  `admin_password` varchar(10) NOT NULL,
  `admin_real_name` varchar(10) NOT NULL,
  `admin_email` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '王五', '000000', '王五', '311231000@163.com');

-- ----------------------------
-- Table structure for `cake`
-- ----------------------------
DROP TABLE IF EXISTS `cake`;
CREATE TABLE `cake` (
  `cake_id` int(11) NOT NULL AUTO_INCREMENT,
  `cake_name` varchar(20) NOT NULL,
  `cake_price` double NOT NULL,
  `cake_image_url` varchar(30) NOT NULL,
  `cake_taste` varchar(10) DEFAULT NULL,
  `cake_shape` varchar(10) DEFAULT NULL,
  `cake_tier` varchar(5) DEFAULT NULL,
  `cake_size` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`cake_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cake
-- ----------------------------
INSERT INTO `cake` VALUES ('1', '奶油蛋糕1', '100', 'images/m7.png', 'heart', 'heart', '1', '6');
INSERT INTO `cake` VALUES ('2', '巧克力蛋糕1', '100', 'images/m2.png', 'chocolate', 'circular', '3', '8');
INSERT INTO `cake` VALUES ('3', '奶油蛋糕2', '50', 'images/m2.png', 'cream', 'circular', '3', '8');
INSERT INTO `cake` VALUES ('4', '巧克力蛋糕2', '120', 'images/m1.png', 'chocolate', 'circular', '3', '8');
INSERT INTO `cake` VALUES ('5', '奶油蛋糕3', '133', 'images/m1.png', 'cream', 'circular', '3', '8');
INSERT INTO `cake` VALUES ('6', '水果蛋糕1', '80', 'images/m1.png', 'fruit', 'special', '3', '8');
INSERT INTO `cake` VALUES ('7', '水果蛋糕2', '150', 'images/m3.png', 'fruit', 'circular', '2', '8');
INSERT INTO `cake` VALUES ('8', '水果蛋糕3', '100', 'images/m7.png', 'fruit', 'heart', '1', '8');
INSERT INTO `cake` VALUES ('9', '水果蛋糕4', '60', 'images/m1.png', 'fruit', 'circular', '3', '8');
INSERT INTO `cake` VALUES ('10', '奶酪蛋糕1', '69', 'images/m2.png', 'cheese', 'circular', '3', '8');
INSERT INTO `cake` VALUES ('11', '芝士蛋糕1', '168', 'images/m3.png', 'Mousse', 'circular', '2', '8');
INSERT INTO `cake` VALUES ('12', '巧克力蛋糕3', '90', 'images/m4.png', 'chocolate', 'circular', '1', '8');
INSERT INTO `cake` VALUES ('13', '巧克力蛋糕4', '60', 'images/m6.png', 'chocolate', 'circular', '1', '8');
INSERT INTO `cake` VALUES ('14', '奶油蛋糕5', '100', 'images/m7.png', 'cream', 'heart', '1', '8');
INSERT INTO `cake` VALUES ('15', '奶油蛋糕6', '60', 'images/m8.png', 'cream', 'square', '1', '8');
INSERT INTO `cake` VALUES ('16', '奶油蛋糕7', '80', 'images/m3.png', 'cream', 'circular', '2', '8');
INSERT INTO `cake` VALUES ('17', '奶油蛋糕8', '95', 'images/m8.png', 'cream', 'square', '1', '8');
INSERT INTO `cake` VALUES ('18', '巧克力蛋糕5', '100', 'images/m2.png', 'chocolate', 'circular', '3', '8');
INSERT INTO `cake` VALUES ('19', '奶油蛋糕9', '50', 'images/m7.png', 'cream', 'heart', '1', '8');
INSERT INTO `cake` VALUES ('20', '水果蛋糕5', '100', 'images/m7.png', 'fruit', 'circular', '1', '12');

-- ----------------------------
-- Table structure for `cakedetail`
-- ----------------------------
DROP TABLE IF EXISTS `cakedetail`;
CREATE TABLE `cakedetail` (
  `cake_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `cake_id` int(11) NOT NULL,
  `cake_detail` text NOT NULL,
  PRIMARY KEY (`cake_detail_id`),
  KEY `cake_id` (`cake_id`),
  CONSTRAINT `cake_id` FOREIGN KEY (`cake_id`) REFERENCES `cake` (`cake_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cakedetail
-- ----------------------------
INSERT INTO `cakedetail` VALUES ('1', '1', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('2', '2', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('3', '3', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('4', '4', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('5', '5', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('6', '6', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('7', '7', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('8', '8', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('9', '9', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('10', '10', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('11', '11', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('12', '12', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('13', '13', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('14', '14', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('15', '15', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('16', '16', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('17', '17', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('18', '18', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('19', '19', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');
INSERT INTO `cakedetail` VALUES ('20', '20', 'Cake cutting is one of the most wonderful ways of celebrating a special moment. What better way to celebrate than with a rich and mouth watering chocochips cake');

-- ----------------------------
-- Table structure for `orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `order_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `cake_id` int(11) NOT NULL,
  `count` smallint(6) NOT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `order_id` (`order_id`),
  KEY `cake_id2` (`cake_id`),
  CONSTRAINT `cake_id2` FOREIGN KEY (`cake_id`) REFERENCES `cake` (`cake_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('2', '2', '3', '1');
INSERT INTO `orderdetail` VALUES ('5', '6', '7', '3');
INSERT INTO `orderdetail` VALUES ('9', '12', '15', '1');
INSERT INTO `orderdetail` VALUES ('10', '13', '8', '1');
INSERT INTO `orderdetail` VALUES ('11', '14', '1', '1');
INSERT INTO `orderdetail` VALUES ('12', '15', '2', '1');
INSERT INTO `orderdetail` VALUES ('21', '23', '1', '1');
INSERT INTO `orderdetail` VALUES ('32', '34', '1', '1');
INSERT INTO `orderdetail` VALUES ('34', '36', '10', '1');
INSERT INTO `orderdetail` VALUES ('35', '37', '10', '1');
INSERT INTO `orderdetail` VALUES ('40', '42', '12', '2');
INSERT INTO `orderdetail` VALUES ('41', '43', '15', '2');
INSERT INTO `orderdetail` VALUES ('43', '45', '5', '2');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_time` datetime NOT NULL,
  `order_state` varchar(10) NOT NULL,
  `remark` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2', '2', '2018-11-07 09:32:58', '未付款', '还没有付款');
INSERT INTO `orders` VALUES ('6', '2', '2018-11-10 07:48:51', '已付款', '无');
INSERT INTO `orders` VALUES ('12', '3', '2018-11-10 08:04:24', '未付款', '');
INSERT INTO `orders` VALUES ('13', '3', '2018-11-10 08:04:37', '未付款', '');
INSERT INTO `orders` VALUES ('14', '3', '2018-11-10 08:04:47', '未付款', '');
INSERT INTO `orders` VALUES ('15', '3', '2018-11-10 08:04:52', '未付款', '');
INSERT INTO `orders` VALUES ('23', '1', '2018-11-17 13:53:27', '未付款', '');
INSERT INTO `orders` VALUES ('34', '22', '2018-11-18 05:16:42', '未付款', '');
INSERT INTO `orders` VALUES ('36', '22', '2018-11-18 05:18:38', '未付款', '');
INSERT INTO `orders` VALUES ('37', '23', '2018-11-18 05:40:42', '未付款', '');
INSERT INTO `orders` VALUES ('42', '1', '2018-11-19 07:33:21', '未付款', '');
INSERT INTO `orders` VALUES ('43', '2', '2018-11-19 07:45:27', '未付款', '');
INSERT INTO `orders` VALUES ('45', '24', '2018-11-19 12:08:28', '未付款', '');

-- ----------------------------
-- Table structure for `shoppingcart`
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cake_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_user_id` (`user_id`),
  KEY `cart_cake_id` (`cake_id`),
  CONSTRAINT `cart_cake_id` FOREIGN KEY (`cake_id`) REFERENCES `cake` (`cake_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('1', '2', '2', '1');
INSERT INTO `shoppingcart` VALUES ('24', '1', '1', '1');
INSERT INTO `shoppingcart` VALUES ('25', '1', '8', '2');
INSERT INTO `shoppingcart` VALUES ('48', '22', '5', '1');
INSERT INTO `shoppingcart` VALUES ('49', '22', '15', '1');
INSERT INTO `shoppingcart` VALUES ('50', '22', '10', '2');
INSERT INTO `shoppingcart` VALUES ('53', '23', '2', '1');
INSERT INTO `shoppingcart` VALUES ('61', '1', '13', '2');
INSERT INTO `shoppingcart` VALUES ('63', '2', '15', '2');
INSERT INTO `shoppingcart` VALUES ('64', '2', '16', '3');
INSERT INTO `shoppingcart` VALUES ('67', '24', '2', '1');
INSERT INTO `shoppingcart` VALUES ('68', '24', '13', '2');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) NOT NULL,
  `user_password` varchar(10) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_address` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三', '000000', 'zhangsan@163.com', '13933200000', '河北省石家庄市');
INSERT INTO `user` VALUES ('2', '李四', '000000', 'lisi@163.com', '13833333301', '河北省石家庄市');
INSERT INTO `user` VALUES ('3', 'liu', '123456', '3112313366@qq.com', '139000000', '石家庄市灵寿县');
INSERT INTO `user` VALUES ('4', 'liu2', '123456', '3112313364@qq.com', '139000000', '石家庄市灵寿县');
INSERT INTO `user` VALUES ('6', '张三', 'qqqqqq', '3112313365@qq.com', '13930488000', '石家庄市灵寿县');
INSERT INTO `user` VALUES ('7', '张三', 'dddddd', '3112313362@qq.com', '13930488000', '石家庄市灵寿县');
INSERT INTO `user` VALUES ('8', '张三', 'dddddd', '3112313361@qq.com', '13930488000', '石家庄市灵寿县');
INSERT INTO `user` VALUES ('9', '张三', 'dddddd', '3112313367@qq.com', '13930488000', '石家庄市灵寿县');
INSERT INTO `user` VALUES ('16', '刘梦琪', '000000', '3112313368@qq.com', '13930488000', '石家庄市灵寿县');
INSERT INTO `user` VALUES ('17', '刘梦琪2', '000000', '3112313369@qq.com', '13930488001', '石家庄市灵寿县');
INSERT INTO `user` VALUES ('22', 'liumengqi', '000000', '3112313370@qq.com', '13930488000', '石家庄市灵寿县');
INSERT INTO `user` VALUES ('23', 'liumengqi2', '000000', '3112313360@qq.com', '13930488000', '石家庄市灵寿县');
INSERT INTO `user` VALUES ('24', 'liumengqi3', '000000', '3112313360@qq.com', '13930488000', '石家庄市灵寿县');
