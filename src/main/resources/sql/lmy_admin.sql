/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : lmy_admin

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-06-12 12:44:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icp` varchar(255) DEFAULT NULL COMMENT '备案号',
  `copyright` varchar(255) DEFAULT NULL COMMENT '底部版权信息',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `title` varchar(255) DEFAULT NULL COMMENT '网站名称',
  `menu_info` varchar(255) DEFAULT NULL COMMENT '菜单管理使用说明',
  `role_info` varchar(255) DEFAULT NULL COMMENT '角色管理使用说明',
  `dept_info` varchar(255) DEFAULT NULL COMMENT '组织机构管理使用说明',
  `user_info` varchar(255) DEFAULT NULL COMMENT '用户管理使用说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '暂无备案', '德州学院 李明元', '无', '无', '后台管理系统', '菜单管理使用说明', '角色管理使用说明', '组织机构使用说明', '用户使用说明');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` int(100) DEFAULT NULL,
  `parentid` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '后台', '李明元', '17853481294', null, '1', '0');
INSERT INTO `sys_dept` VALUES ('2', '办公室', '张三', '333', '无', '2', '1');
INSERT INTO `sys_dept` VALUES ('3', '技术部', '王五', '17853481294', '', '2', '1');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '资源名称',
  `type` int(255) NOT NULL COMMENT '资源类型：0->menu,1->permission,',
  `url` varchar(255) DEFAULT NULL COMMENT '访问url地址',
  `percode` varchar(255) DEFAULT NULL COMMENT '权限代码字符串',
  `parentid` int(100) DEFAULT NULL COMMENT '父结点id,如果为0表示是顶级菜单',
  `sort` int(100) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('2', '系统管理', '0', null, null, '0', '10');
INSERT INTO `sys_permission` VALUES ('3', '菜单管理', '1', 'menu/index', null, '2', '0');
INSERT INTO `sys_permission` VALUES ('4', '角色管理', '1', 'role/index', null, '2', '1');
INSERT INTO `sys_permission` VALUES ('5', '组织机构', '1', 'dept/index', null, '2', '2');
INSERT INTO `sys_permission` VALUES ('6', '用户管理', '1', 'user/index', null, '2', '3');
INSERT INTO `sys_permission` VALUES ('7', '数据分析', '1', 'system/data/index', null, '2', '4');
INSERT INTO `sys_permission` VALUES ('10', '菜单查看', '2', null, 'menu:show', '3', '0');
INSERT INTO `sys_permission` VALUES ('11', '菜单修改', '2', null, 'menu:edit', '3', '1');
INSERT INTO `sys_permission` VALUES ('12', '权限添加', '2', null, 'permission:add', '3', '4');
INSERT INTO `sys_permission` VALUES ('13', '权限修改', '2', null, 'permission:edit', '3', '5');
INSERT INTO `sys_permission` VALUES ('14', '菜单添加', '2', null, 'menu:add', '3', '2');
INSERT INTO `sys_permission` VALUES ('15', '菜单删除', '2', null, 'menu:del', '3', '3');
INSERT INTO `sys_permission` VALUES ('25', '角色权限修改', '2', null, 'permission:roleEdit', '4', '6');
INSERT INTO `sys_permission` VALUES ('26', '角色查看', '2', null, 'role:show', '4', '2');
INSERT INTO `sys_permission` VALUES ('27', '角色修改', '2', null, 'role:edit', '4', '3');
INSERT INTO `sys_permission` VALUES ('28', '角色删除', '2', null, 'role:del', '4', '4');
INSERT INTO `sys_permission` VALUES ('29', '角色添加', '2', null, 'role:add', '4', '5');
INSERT INTO `sys_permission` VALUES ('30', '查看组织', '2', null, 'dept:show', '5', '0');
INSERT INTO `sys_permission` VALUES ('31', '修改组织', '2', null, 'dept:edit', '5', '1');
INSERT INTO `sys_permission` VALUES ('32', '添加组织', '2', null, 'dept:add', '5', '2');
INSERT INTO `sys_permission` VALUES ('33', '删除组织', '2', null, 'dept:del', '5', '4');
INSERT INTO `sys_permission` VALUES ('34', '添加用户', '2', null, 'user:add', '6', '1');
INSERT INTO `sys_permission` VALUES ('35', '查看用户', '2', null, 'user:show', '6', '0');
INSERT INTO `sys_permission` VALUES ('36', '修改用户', '2', null, 'user:edit', '6', '3');
INSERT INTO `sys_permission` VALUES ('37', '删除用户', '2', null, 'user:del', '6', '4');
INSERT INTO `sys_permission` VALUES ('38', '系统设置', '0', null, null, '0', '11');
INSERT INTO `sys_permission` VALUES ('39', '基本信息', '1', 'system/info/index', null, '38', '0');
INSERT INTO `sys_permission` VALUES ('40', '基本信息修改', '2', null, 'system:info:edit', '39', '0');
INSERT INTO `sys_permission` VALUES ('41', '数据查看', '2', null, 'system:data', '7', '1');
INSERT INTO `sys_permission` VALUES ('42', '安全管理', '0', null, null, '0', '12');
INSERT INTO `sys_permission` VALUES ('43', '个人信息', '1', 'system/userinfo', null, '42', '1');
INSERT INTO `sys_permission` VALUES ('44', '个人信息修改', '2', null, 'user:info:edit', '43', '2');
INSERT INTO `sys_permission` VALUES ('58', '基本信息查看', '2', null, 'system:info:show', '39', '1');
INSERT INTO `sys_permission` VALUES ('59', '个人信息查看', '2', null, 'user:info:show', '43', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '角色名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `parentid` int(100) DEFAULT NULL COMMENT '父节点',
  `sort` int(100) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', null, '0', '0');
INSERT INTO `sys_role` VALUES ('2', '普通管理员', '33', '1', '1');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `sys_role_id` int(100) NOT NULL COMMENT '角色id',
  `sys_permission_id` int(100) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '1', '2');
INSERT INTO `sys_role_permission` VALUES ('69', '1', '3');
INSERT INTO `sys_role_permission` VALUES ('70', '1', '4');
INSERT INTO `sys_role_permission` VALUES ('71', '1', '5');
INSERT INTO `sys_role_permission` VALUES ('72', '1', '6');
INSERT INTO `sys_role_permission` VALUES ('73', '1', '7');
INSERT INTO `sys_role_permission` VALUES ('74', '1', '10');
INSERT INTO `sys_role_permission` VALUES ('75', '1', '11');
INSERT INTO `sys_role_permission` VALUES ('76', '1', '12');
INSERT INTO `sys_role_permission` VALUES ('77', '1', '13');
INSERT INTO `sys_role_permission` VALUES ('78', '1', '14');
INSERT INTO `sys_role_permission` VALUES ('79', '1', '15');
INSERT INTO `sys_role_permission` VALUES ('80', '1', '25');
INSERT INTO `sys_role_permission` VALUES ('81', '1', '26');
INSERT INTO `sys_role_permission` VALUES ('82', '1', '27');
INSERT INTO `sys_role_permission` VALUES ('83', '1', '28');
INSERT INTO `sys_role_permission` VALUES ('84', '1', '29');
INSERT INTO `sys_role_permission` VALUES ('99', '1', '30');
INSERT INTO `sys_role_permission` VALUES ('100', '1', '31');
INSERT INTO `sys_role_permission` VALUES ('101', '1', '32');
INSERT INTO `sys_role_permission` VALUES ('102', '1', '33');
INSERT INTO `sys_role_permission` VALUES ('109', '1', '34');
INSERT INTO `sys_role_permission` VALUES ('110', '1', '35');
INSERT INTO `sys_role_permission` VALUES ('111', '1', '36');
INSERT INTO `sys_role_permission` VALUES ('112', '1', '37');
INSERT INTO `sys_role_permission` VALUES ('151', '1', '38');
INSERT INTO `sys_role_permission` VALUES ('152', '1', '39');
INSERT INTO `sys_role_permission` VALUES ('153', '1', '40');
INSERT INTO `sys_role_permission` VALUES ('172', '1', '41');
INSERT INTO `sys_role_permission` VALUES ('184', '2', '2');
INSERT INTO `sys_role_permission` VALUES ('185', '2', '3');
INSERT INTO `sys_role_permission` VALUES ('186', '2', '10');
INSERT INTO `sys_role_permission` VALUES ('187', '2', '4');
INSERT INTO `sys_role_permission` VALUES ('188', '2', '26');
INSERT INTO `sys_role_permission` VALUES ('189', '2', '5');
INSERT INTO `sys_role_permission` VALUES ('190', '2', '30');
INSERT INTO `sys_role_permission` VALUES ('191', '2', '6');
INSERT INTO `sys_role_permission` VALUES ('192', '2', '35');
INSERT INTO `sys_role_permission` VALUES ('193', '1', '42');
INSERT INTO `sys_role_permission` VALUES ('194', '1', '43');
INSERT INTO `sys_role_permission` VALUES ('195', '1', '44');
INSERT INTO `sys_role_permission` VALUES ('209', '1', '58');
INSERT INTO `sys_role_permission` VALUES ('210', '1', '59');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `usercode` varchar(255) NOT NULL COMMENT '账号',
  `username` varchar(255) NOT NULL COMMENT '姓名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `salt` varchar(255) DEFAULT NULL COMMENT '盐',
  `locked` int(100) DEFAULT NULL COMMENT '账号是否锁定，1：锁定，0未锁定',
  `sort` int(100) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `idcard` varchar(255) DEFAULT NULL COMMENT '身份证号码',
  `tel` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', 'a19c0b9aa33d0b282492a93c790a1bc3', 'dfsdfdsf', null, '0', '男', '371122', '17853481294', '超级管理员');
INSERT INTO `sys_user` VALUES ('3', 'lmy1', 'lmy1', 'bd716388b0bcb23831426612aae10a7e', 'dfsdfdsf', null, '1', '男', '123', '123', '123');
INSERT INTO `sys_user` VALUES ('5', '22222', 'sss', 'a4d666c7bea1930de590f37c9a6ef604', '40e34304edd9ae4a61a7873059b43378', null, '2', '女', '111', 'ss', 'ss');
INSERT INTO `sys_user` VALUES ('6', '123', '123', '00d1588d1a7ac0dff022d2187de322ed', '7271073b51b44721d1b96ee4b26b914e', null, '1', '男', '123', '123', '123');

-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept`;
CREATE TABLE `sys_user_dept` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `sys_user_id` int(100) NOT NULL,
  `sys_dept_id` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
INSERT INTO `sys_user_dept` VALUES ('1', '1', '1');
INSERT INTO `sys_user_dept` VALUES ('3', '3', '2');
INSERT INTO `sys_user_dept` VALUES ('5', '5', '2');
INSERT INTO `sys_user_dept` VALUES ('6', '6', '3');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `sys_user_id` int(100) NOT NULL,
  `sys_role_id` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '3', '1');
INSERT INTO `sys_user_role` VALUES ('4', '5', '2');
INSERT INTO `sys_user_role` VALUES ('5', '6', '2');
SET FOREIGN_KEY_CHECKS=1;
