SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', 'dep1');
INSERT INTO `department` VALUES ('2', 'dep2');
INSERT INTO `department` VALUES ('3', 'dep3');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(10) unsigned DEFAULT NULL,
  `chief_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '1', '1', 'Alex', '500');
INSERT INTO `employee` VALUES ('2', '1', '1', 'Vova', '600');
INSERT INTO `employee` VALUES ('3', '1', '1', 'Kolia', '700');
INSERT INTO `employee` VALUES ('4', '2', '2', 'Vasia', '800');
INSERT INTO `employee` VALUES ('5', '2', '2', 'Petia', '200');
INSERT INTO `employee` VALUES ('6', '2', '2', 'Ivan', '100');
INSERT INTO `employee` VALUES ('7', '3', '3', 'Andrey', '250');
INSERT INTO `employee` VALUES ('8', '3', '3', 'Georgiy', '450');
INSERT INTO `employee` VALUES ('9', '3', '3', 'Zurab', '650');
