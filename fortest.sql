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
INSERT INTO `employee` VALUES ('1', '1', '10', 'Alex', '500');
INSERT INTO `employee` VALUES ('2', '1', '10', 'Vova', '600');
INSERT INTO `employee` VALUES ('3', '1', '10', 'Kolia', '700');
INSERT INTO `employee` VALUES ('4', '2', '11', 'Vasia', '800');
INSERT INTO `employee` VALUES ('5', '2', '11', 'Petia', '200');
INSERT INTO `employee` VALUES ('6', '2', '11', 'Ivan', '100');
INSERT INTO `employee` VALUES ('7', '3', '12', 'Andrey', '250');
INSERT INTO `employee` VALUES ('8', '3', '12', 'Georgiy', '450');
INSERT INTO `employee` VALUES ('9', '3', '12', 'Zurab', '650');
INSERT INTO `employee` VALUES ('10', '1', null, 'Director Dep1', '550');
INSERT INTO `employee` VALUES ('11', '2', null, 'Director Dep2', '250');
INSERT INTO `employee` VALUES ('12', '3', null, 'Director Dep3', '350');
