/*
 Navicat Premium Data Transfer

 Source Server         : luna-collage-remote
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : f.xicc.cc:23315
 Source Schema         : party-platform

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 20/11/2020 21:39:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` VALUES (5, 'sys_party_info', '党员信息表', NULL, NULL, 'PartyInfo', 'crud', 'com.ruoyi.web.platform.partyInfo', 'admin', 'partyInfo', '党员信息', 'party-platform', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"党建平台\",\"treeCode\":\"\"}', 'admin', '2020-10-10 13:06:13', '', '2020-10-10 13:07:51', '');
INSERT INTO `gen_table` VALUES (6, 'sys_news_documentary', '党建纪实', NULL, NULL, 'NewsDocumentary', 'crud', 'com.ruoyi.web.platform.documentary', 'admin', 'documentary', '党建纪实', 'party-platform', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"党建平台\",\"treeCode\":\"\"}', 'admin', '2020-10-14 20:39:32', '', '2020-10-14 20:41:54', '');
INSERT INTO `gen_table` VALUES (9, 'sys_religion', '留学人员', NULL, NULL, 'Religion', 'crud', 'com.ruoyi.web.platform.religion', 'admin', 'religion', '留学人员', 'party-platform', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"党建平台\",\"treeCode\":\"\"}', 'admin', '2020-10-16 19:49:31', '', '2020-11-15 05:43:56', '');
INSERT INTO `gen_table` VALUES (12, 'sys_party_activists', '入党积极分子', NULL, NULL, 'PartyActivists', 'crud', 'com.ruoyi.web.platform.activists', 'admin', 'activists', '入党积极分子', 'party-platform', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"党建平台\",\"treeCode\":\"\"}', 'admin', '2020-10-17 13:11:30', '', '2020-10-17 13:13:09', '');
INSERT INTO `gen_table` VALUES (15, 'sys_overseas_study_member', '留学归国人员', NULL, NULL, 'OverseasStudyMember', 'crud', 'com.ruoyi.web.platform.member', 'admin', 'member', '留学归国人员', 'party-platform', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"党建平台\",\"treeCode\":\"\"}', 'admin', '2020-10-24 13:33:11', '', '2020-10-24 13:46:28', '');
INSERT INTO `gen_table` VALUES (16, 'sys_standingbook', '台账', NULL, NULL, 'Standingbook', 'crud', 'com.ruoyi.web.platform.standingbook', 'admin', 'standingbook', '台账', 'party-platform', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"党建平台\",\"treeCode\":\"\"}', 'admin', '2020-10-24 14:42:04', '', '2020-10-24 15:13:56', '');
INSERT INTO `gen_table` VALUES (19, 'sys_non_party', '无党派人士', NULL, NULL, 'NonParty', 'crud', 'com.ruoyi.web.platform.noparty', 'admin', 'noparty', '无党派人士', 'party-platform', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"党建平台\",\"treeCode\":\"\"}', 'admin', '2020-10-24 14:56:20', '', '2020-10-24 15:12:04', '');
INSERT INTO `gen_table` VALUES (20, 'sys_comments', '留言板评论互动', NULL, NULL, 'Comments', 'crud', 'com.ruoyi.web.platform.comments', 'admin', 'comments', '留言板评论互动', 'party-platform', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"党建平台\",\"treeCode\":\"\"}', 'admin', '2020-11-07 15:18:15', '', '2020-11-07 15:28:02', '');
INSERT INTO `gen_table` VALUES (22, 'sys_foreign_believers', '信宗教外教专家', NULL, NULL, 'ForeignBelievers', 'crud', 'com.ruoyi.web.platform.believers', 'admin', 'believers', '信宗教外教专家', 'party-platform', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"党建平台\",\"treeCode\":\"\"}', 'admin', '2020-11-07 18:05:55', '', '2020-11-07 18:17:39', '');
INSERT INTO `gen_table` VALUES (23, 'sys_news', '新闻发布表', NULL, NULL, 'News', 'crud', 'com.ruoyi.web.platform.news', 'admin', 'news', '新闻发布', 'party-platform', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"党建平台\",\"treeCode\":\"\"}', 'admin', '2020-11-19 17:30:26', '', '2020-11-19 17:35:43', '');
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_column` VALUES (80, '5', 'party_id', '党员编号', 'bigint(20)', 'Long', 'partyId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-10-10 13:06:13', NULL, '2020-10-10 13:07:51');
INSERT INTO `gen_table_column` VALUES (81, '5', 'party_student_number', '学号', 'int(20)', 'Long', 'partyStudentNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-10-10 13:06:13', NULL, '2020-10-10 13:07:51');
INSERT INTO `gen_table_column` VALUES (82, '5', 'party_name', '姓名', 'varchar(10)', 'String', 'partyName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-10-10 13:06:13', NULL, '2020-10-10 13:07:51');
INSERT INTO `gen_table_column` VALUES (83, '5', 'party_class', '班级', 'varchar(20)', 'String', 'partyClass', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-10-10 13:06:13', NULL, '2020-10-10 13:07:51');
INSERT INTO `gen_table_column` VALUES (84, '5', 'party_sex', '性别', 'varchar(10)', 'String', 'partySex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'sys_user_sex', 5, 'admin', '2020-10-10 13:06:13', NULL, '2020-10-10 13:07:51');
INSERT INTO `gen_table_column` VALUES (85, '5', 'party_birthday', '生日', 'date', 'Date', 'partyBirthday', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-10-10 13:06:13', NULL, '2020-10-10 13:07:51');
INSERT INTO `gen_table_column` VALUES (86, '5', 'party_native_place', '籍贯', 'varchar(20)', 'String', 'partyNativePlace', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-10-10 13:06:13', NULL, '2020-10-10 13:07:51');
INSERT INTO `gen_table_column` VALUES (87, '5', 'party_idcard', '身份证', 'varchar(20)', 'String', 'partyIdcard', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-10-10 13:06:13', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (88, '5', 'party_join_time', '入党日期', 'date', 'Date', 'partyJoinTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-10-10 13:06:13', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (89, '5', 'party_join_application', '入党志愿书', 'varchar(10)', 'String', 'partyJoinApplication', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_party_info_status', 10, 'admin', '2020-10-10 13:06:13', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (90, '5', 'party_inspect', '预备党员考察表', 'varchar(10)', 'String', 'partyInspect', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_party_info_status', 11, 'admin', '2020-10-10 13:06:13', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (91, '5', 'party_formal_application', '转正申请书', 'varchar(10)', 'String', 'partyFormalApplication', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_party_info_status', 12, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (92, '5', 'party_thought_report', '思想报告', 'varchar(10)', 'String', 'partyThoughtReport', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_party_info_status', 13, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (93, '5', 'party_student_post', '学生干部任职情况', 'varchar(20)', 'String', 'partyStudentPost', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (94, '5', 'party_rewards_punishments', '奖惩情况', 'varchar(255)', 'String', 'partyRewardsPunishments', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (95, '5', 'party_other_info', '其他', 'varchar(255)', 'String', 'partyOtherInfo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (96, '5', 'party_head_master', '班主任', 'varchar(10)', 'String', 'partyHeadMaster', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (97, '5', 'party_connect', '联系方式', 'varchar(11)', 'String', 'partyConnect', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (98, '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 19, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:52');
INSERT INTO `gen_table_column` VALUES (99, '5', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 20, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:53');
INSERT INTO `gen_table_column` VALUES (100, '5', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 21, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:53');
INSERT INTO `gen_table_column` VALUES (101, '5', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 22, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:53');
INSERT INTO `gen_table_column` VALUES (102, '5', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 23, 'admin', '2020-10-10 13:06:14', NULL, '2020-10-10 13:07:53');
INSERT INTO `gen_table_column` VALUES (103, '6', 'documentary_id', '纪实Id', 'bigint(20)', 'Long', 'documentaryId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-10-14 20:39:32', NULL, '2020-10-14 20:41:54');
INSERT INTO `gen_table_column` VALUES (104, '6', 'documentary_title', '纪实主题', 'varchar(50)', 'String', 'documentaryTitle', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-10-14 20:39:32', NULL, '2020-10-14 20:41:54');
INSERT INTO `gen_table_column` VALUES (105, '6', 'documentary_content', '纪实详情', 'varchar(15000)', 'String', 'documentaryContent', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'summernote', '', 3, 'admin', '2020-10-14 20:39:32', NULL, '2020-10-14 20:41:54');
INSERT INTO `gen_table_column` VALUES (106, '6', 'documentary_active_address', '活动地点', 'varchar(255)', 'String', 'documentaryActiveAddress', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-10-14 20:39:32', NULL, '2020-10-14 20:41:54');
INSERT INTO `gen_table_column` VALUES (107, '6', 'documentary_start_time', '起始时间', 'datetime', 'Date', 'documentaryStartTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2020-10-14 20:39:32', NULL, '2020-10-14 20:41:54');
INSERT INTO `gen_table_column` VALUES (108, '6', 'documentary_end_time', '截至时间', 'datetime', 'Date', 'documentaryEndTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-10-14 20:39:32', NULL, '2020-10-14 20:41:54');
INSERT INTO `gen_table_column` VALUES (109, '6', 'documentary_jion_people', '参与人员', 'varchar(255)', 'String', 'documentaryJionPeople', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-10-14 20:39:32', NULL, '2020-10-14 20:41:54');
INSERT INTO `gen_table_column` VALUES (110, '6', 'documentary_other_people', '其他人员', 'char(255)', 'String', 'documentaryOtherPeople', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-10-14 20:39:32', NULL, '2020-10-14 20:41:54');
INSERT INTO `gen_table_column` VALUES (111, '6', 'documentary_status', '纪实状态（0正常 1关闭）', 'char(1)', 'String', 'documentaryStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_news_status', 9, 'admin', '2020-10-14 20:39:32', NULL, '2020-10-14 20:41:54');
INSERT INTO `gen_table_column` VALUES (112, '6', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-10-14 20:39:32', NULL, '2020-10-14 20:41:54');
INSERT INTO `gen_table_column` VALUES (113, '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2020-10-14 20:39:32', NULL, '2020-10-14 20:41:55');
INSERT INTO `gen_table_column` VALUES (114, '6', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-10-14 20:39:33', NULL, '2020-10-14 20:41:55');
INSERT INTO `gen_table_column` VALUES (115, '6', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2020-10-14 20:39:33', NULL, '2020-10-14 20:41:55');
INSERT INTO `gen_table_column` VALUES (116, '6', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 14, 'admin', '2020-10-14 20:39:33', NULL, '2020-10-14 20:41:55');
INSERT INTO `gen_table_column` VALUES (153, '9', 'religion_id', '留学人员id', 'bigint(20)', 'Long', 'religionId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-10-16 19:49:31', NULL, '2020-11-15 05:43:56');
INSERT INTO `gen_table_column` VALUES (154, '9', 'religion_number', '序号', 'bigint(20)', 'Long', 'religionNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-10-16 19:49:31', NULL, '2020-11-15 05:43:56');
INSERT INTO `gen_table_column` VALUES (155, '9', 'religion_college', '学院', 'varchar(20)', 'String', 'religionCollege', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-10-16 19:49:31', NULL, '2020-11-15 05:43:56');
INSERT INTO `gen_table_column` VALUES (156, '9', 'religion_name', '姓名', 'varchar(10)', 'String', 'religionName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-10-16 19:49:31', NULL, '2020-11-15 05:43:56');
INSERT INTO `gen_table_column` VALUES (157, '9', 'religion_sex', '性别', 'varchar(10)', 'String', 'religionSex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_user_sex', 5, 'admin', '2020-10-16 19:49:31', NULL, '2020-11-15 05:43:56');
INSERT INTO `gen_table_column` VALUES (158, '9', 'religion_nation', '民族', 'varchar(10)', 'String', 'religionNation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-10-16 19:49:31', NULL, '2020-11-15 05:43:56');
INSERT INTO `gen_table_column` VALUES (159, '9', 'religion_birthday', '出生年月', 'date', 'Date', 'religionBirthday', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:56');
INSERT INTO `gen_table_column` VALUES (160, '9', 'religion_native_place', '籍贯', 'varchar(30)', 'String', 'religionNativePlace', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:56');
INSERT INTO `gen_table_column` VALUES (161, '9', 'religion_party_join_time', '入党时间', 'date', 'Date', 'religionPartyJoinTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:56');
INSERT INTO `gen_table_column` VALUES (162, '9', 'religion_type', '宗教类型', 'varchar(20)', 'String', 'religionType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:56');
INSERT INTO `gen_table_column` VALUES (163, '9', 'religious_services_facilities', '宗教活动场所', 'varchar(50)', 'String', 'religiousServicesFacilities', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 11, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:56');
INSERT INTO `gen_table_column` VALUES (164, '9', 'religion_join', '信教时间', 'date', 'Date', 'religionJoin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:57');
INSERT INTO `gen_table_column` VALUES (165, '9', 'religion_contact_information', '联系方式', 'varchar(20)', 'String', 'religionContactInformation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:57');
INSERT INTO `gen_table_column` VALUES (166, '9', 'religion_remarks', '备注', 'varchar(255)', 'String', 'religionRemarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:57');
INSERT INTO `gen_table_column` VALUES (167, '9', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:57');
INSERT INTO `gen_table_column` VALUES (168, '9', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:57');
INSERT INTO `gen_table_column` VALUES (169, '9', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:57');
INSERT INTO `gen_table_column` VALUES (170, '9', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 18, 'admin', '2020-10-16 19:49:32', NULL, '2020-11-15 05:43:57');
INSERT INTO `gen_table_column` VALUES (213, '12', 'party_activists_stu_id', '入党积极分子id', 'bigint(20)', 'Long', 'partyActivistsStuId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-10-17 13:11:30', NULL, '2020-10-17 13:13:10');
INSERT INTO `gen_table_column` VALUES (214, '12', 'party_activists_stu_num', '学号', 'bigint(20)', 'Long', 'partyActivistsStuNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-10-17 13:11:30', NULL, '2020-10-17 13:13:10');
INSERT INTO `gen_table_column` VALUES (215, '12', 'party_activists_name', '姓名', 'varchar(10)', 'String', 'partyActivistsName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:10');
INSERT INTO `gen_table_column` VALUES (216, '12', 'party_activists_class', '班级', 'varchar(20)', 'String', 'partyActivistsClass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:10');
INSERT INTO `gen_table_column` VALUES (217, '12', 'party_activists_sex', '性别', 'varchar(10)', 'String', 'partyActivistsSex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_user_sex', 5, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:10');
INSERT INTO `gen_table_column` VALUES (218, '12', 'party_activists_nation', '民族', 'varchar(10)', 'String', 'partyActivistsNation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:10');
INSERT INTO `gen_table_column` VALUES (219, '12', 'party_activists_birthday', '出生年月', 'date', 'Date', 'partyActivistsBirthday', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:10');
INSERT INTO `gen_table_column` VALUES (220, '12', 'party_activists_native_place', '籍贯', 'varchar(20)', 'String', 'partyActivistsNativePlace', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:10');
INSERT INTO `gen_table_column` VALUES (221, '12', 'party_activists_Application_for_Party_membership_time', '入党申请书时间', 'date', 'Date', 'partyActivistsApplicationForPartyMembershipTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:10');
INSERT INTO `gen_table_column` VALUES (222, '12', 'party_activists_autobiography', '自传', 'varchar(10)', 'String', 'partyActivistsAutobiography', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_party_info_status', 10, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:10');
INSERT INTO `gen_table_column` VALUES (223, '12', 'party_activists_Approval_form', '《团员推优审批表》', 'varchar(255)', 'String', 'partyActivistsApprovalForm', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_party_info_status', 11, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:11');
INSERT INTO `gen_table_column` VALUES (224, '12', 'party_activists_establishment_date', '确立积极分子日期', 'date', 'Date', 'partyActivistsEstablishmentDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:11');
INSERT INTO `gen_table_column` VALUES (225, '12', 'party_activists_closing_time', '党校结业证书日期', 'date', 'Date', 'partyActivistsClosingTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:11');
INSERT INTO `gen_table_column` VALUES (226, '12', 'party_activists_thought_report', '思想汇报', 'varchar(10)', 'String', 'partyActivistsThoughtReport', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_party_info_status', 14, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:11');
INSERT INTO `gen_table_column` VALUES (227, '12', 'party_activists_survey_table', '积极分子考察表', 'varchar(10)', 'String', 'partyActivistsSurveyTable', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_party_info_status', 15, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:11');
INSERT INTO `gen_table_column` VALUES (228, '12', 'party_activists_establishment_date_dev', '确立发展对象日期', 'date', 'Date', 'partyActivistsEstablishmentDateDev', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 16, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:11');
INSERT INTO `gen_table_column` VALUES (229, '12', 'party_activists_position_stu_cadres', '学生干部任职情况', 'varchar(20)', 'String', 'partyActivistsPositionStuCadres', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-10-17 13:11:31', NULL, '2020-10-17 13:13:11');
INSERT INTO `gen_table_column` VALUES (230, '12', 'party_activists_rewards_punishments', '奖惩情况', 'varchar(255)', 'String', 'partyActivistsRewardsPunishments', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-10-17 13:11:32', NULL, '2020-10-17 13:13:11');
INSERT INTO `gen_table_column` VALUES (231, '12', 'party_activists_headmaster', '班主任', 'varchar(10)', 'String', 'partyActivistsHeadmaster', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-10-17 13:11:32', NULL, '2020-10-17 13:13:11');
INSERT INTO `gen_table_column` VALUES (232, '12', 'party_activists_contact_information', '联系方式', 'varchar(20)', 'String', 'partyActivistsContactInformation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-10-17 13:11:32', NULL, '2020-10-17 13:13:11');
INSERT INTO `gen_table_column` VALUES (233, '12', 'party_activists_remarks', '备注', 'varchar(255)', 'String', 'partyActivistsRemarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-10-17 13:11:32', NULL, '2020-10-17 13:13:11');
INSERT INTO `gen_table_column` VALUES (267, '15', 'overseas_id', '留学id', 'bigint(20)', 'Long', 'overseasId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-10-24 13:33:11', NULL, '2020-10-24 13:46:28');
INSERT INTO `gen_table_column` VALUES (268, '15', 'overseas_number', '序号', 'bigint(20)', 'Long', 'overseasNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-10-24 13:33:11', NULL, '2020-10-24 13:46:28');
INSERT INTO `gen_table_column` VALUES (269, '15', 'overseas_college', '姓名', 'varchar(20)', 'String', 'overseasCollege', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-10-24 13:33:11', NULL, '2020-10-24 13:46:28');
INSERT INTO `gen_table_column` VALUES (270, '15', 'overseas_name', '性别', 'varchar(10)', 'String', 'overseasName', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_user_sex', 4, 'admin', '2020-10-24 13:33:12', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (271, '15', 'overseas_sex', '民族', 'varchar(10)', 'String', 'overseasSex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-10-24 13:33:12', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (272, '15', 'overseas_birthday', '出生年月', 'date', 'Date', 'overseasBirthday', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-10-24 13:33:12', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (273, '15', 'overseas_native_place', '籍贯', 'varchar(20)', 'String', 'overseasNativePlace', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-10-24 13:33:12', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (274, '15', 'overseas_Political_outlook', '政治面貌', 'varchar(20)', 'String', 'overseasPoliticalOutlook', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-10-24 13:33:12', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (275, '15', 'overseas_party_join_time', '党派及加入时间', 'varchar(100)', 'String', 'overseasPartyJoinTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-10-24 13:33:12', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (276, '15', 'overseas_academic_degree', '学历学位', 'varchar(50)', 'String', 'overseasAcademicDegree', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-10-24 13:33:12', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (277, '15', 'overseas_graduate_school_major', '毕业院校及其专业', 'varchar(50)', 'String', 'overseasGraduateSchoolMajor', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-10-24 13:33:12', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (278, '15', 'overseas_job_start_time', '参加工作时间', 'date', 'Date', 'overseasJobStartTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2020-10-24 13:33:12', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (279, '15', 'overseas_Study_begin_end', '留学起止时间', 'varchar(100)', 'String', 'overseasStudyBeginEnd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-10-24 13:33:13', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (280, '15', 'overseas_place', '留学地点', 'varchar(40)', 'String', 'overseasPlace', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-10-24 13:33:13', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (281, '15', 'non_party_remarks', '备注', 'varchar(255)', 'String', 'nonPartyRemarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-10-24 13:33:13', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (282, '15', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2020-10-24 13:33:13', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (283, '15', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2020-10-24 13:33:13', NULL, '2020-10-24 13:46:29');
INSERT INTO `gen_table_column` VALUES (284, '15', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 18, 'admin', '2020-10-24 13:33:13', NULL, '2020-10-24 13:46:30');
INSERT INTO `gen_table_column` VALUES (285, '15', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 19, 'admin', '2020-10-24 13:33:13', NULL, '2020-10-24 13:46:30');
INSERT INTO `gen_table_column` VALUES (286, '16', 'standingbook_id', '台账id', 'bigint(20)', 'Long', 'standingbookId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-10-24 14:42:04', NULL, '2020-10-24 15:13:56');
INSERT INTO `gen_table_column` VALUES (287, '16', 'standingbook_number', '序号', 'bigint(20)', 'Long', 'standingbookNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-10-24 14:42:04', NULL, '2020-10-24 15:13:56');
INSERT INTO `gen_table_column` VALUES (288, '16', 'standingbook_name', '姓名', 'varchar(10)', 'String', 'standingbookName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-10-24 14:42:04', NULL, '2020-10-24 15:13:56');
INSERT INTO `gen_table_column` VALUES (289, '16', 'standingbook_sex', '性别', 'varchar(10)', 'String', 'standingbookSex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_user_sex', 4, 'admin', '2020-10-24 14:42:04', NULL, '2020-10-24 15:13:56');
INSERT INTO `gen_table_column` VALUES (290, '16', 'standingbook_nation', '民族', 'varchar(10)', 'String', 'standingbookNation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-10-24 14:42:04', NULL, '2020-10-24 15:13:57');
INSERT INTO `gen_table_column` VALUES (291, '16', 'standingbook_birthday', '出生日期', 'date', 'Date', 'standingbookBirthday', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-10-24 14:42:05', NULL, '2020-10-24 15:13:57');
INSERT INTO `gen_table_column` VALUES (292, '16', 'standingbook_time_join_part', '入党时间', 'date', 'Date', 'standingbookTimeJoinPart', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-10-24 14:42:05', NULL, '2020-10-24 15:13:57');
INSERT INTO `gen_table_column` VALUES (293, '16', 'standingbook_branch_number', '所在支部', 'varchar(10)', 'String', 'standingbookBranchNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-10-24 14:42:05', NULL, '2020-10-24 15:13:57');
INSERT INTO `gen_table_column` VALUES (294, '16', 'standingbook_files_party_membwes', '党员档案管理', 'varchar(20)', 'String', 'standingbookFilesPartyMembwes', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 9, 'admin', '2020-10-24 14:42:05', NULL, '2020-10-24 15:13:57');
INSERT INTO `gen_table_column` VALUES (298, '16', 'standingbook_approval_date', '批准日期', 'date', 'Date', 'standingbookApprovalDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, 'admin', '2020-10-24 14:42:06', NULL, '2020-10-24 15:13:58');
INSERT INTO `gen_table_column` VALUES (299, '16', 'standingbook_revocation_date', '撤销日期', 'date', 'Date', 'standingbookRevocationDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 14, 'admin', '2020-10-24 14:42:06', NULL, '2020-10-24 15:13:58');
INSERT INTO `gen_table_column` VALUES (300, '16', 'standingbook_Inflow_unit', '流入情况', 'varchar(50)', 'String', 'standingbookInflowUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-10-24 14:42:06', NULL, '2020-10-24 15:13:58');
INSERT INTO `gen_table_column` VALUES (302, '16', 'standingbook_outflow_date', '流出日期', 'date', 'Date', 'standingbookOutflowDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 17, 'admin', '2020-10-24 14:42:06', NULL, '2020-10-24 15:13:58');
INSERT INTO `gen_table_column` VALUES (303, '16', 'standingbook_outflow_reason', '流出原因', 'varchar(255)', 'String', 'standingbookOutflowReason', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-10-24 14:42:06', NULL, '2020-10-24 15:13:58');
INSERT INTO `gen_table_column` VALUES (304, '16', 'standingbook_abroad', '出国情况', 'varchar(255)', 'String', 'standingbookAbroad', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-10-24 14:42:06', NULL, '2020-10-24 15:13:58');
INSERT INTO `gen_table_column` VALUES (305, '16', 'phone_number', '联系方式', 'varchar(20)', 'String', 'phoneNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-10-24 14:42:07', NULL, '2020-10-24 15:13:59');
INSERT INTO `gen_table_column` VALUES (306, '16', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-10-24 14:42:07', NULL, '2020-10-24 15:13:59');
INSERT INTO `gen_table_column` VALUES (307, '16', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 22, 'admin', '2020-10-24 14:42:07', NULL, '2020-10-24 15:13:59');
INSERT INTO `gen_table_column` VALUES (308, '16', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 23, 'admin', '2020-10-24 14:42:07', NULL, '2020-10-24 15:13:59');
INSERT INTO `gen_table_column` VALUES (309, '16', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 24, 'admin', '2020-10-24 14:42:07', NULL, '2020-10-24 15:13:59');
INSERT INTO `gen_table_column` VALUES (310, '16', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 25, 'admin', '2020-10-24 14:42:07', NULL, '2020-10-24 15:13:59');
INSERT INTO `gen_table_column` VALUES (345, '19', 'non_party_id', '无党派人士id', 'bigint(20)', 'Long', 'nonPartyId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-10-24 14:56:21', NULL, '2020-10-24 15:12:04');
INSERT INTO `gen_table_column` VALUES (346, '19', 'non_party_number', '序号', 'bigint(20)', 'Long', 'nonPartyNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-10-24 14:56:21', NULL, '2020-10-24 15:12:04');
INSERT INTO `gen_table_column` VALUES (347, '19', 'non_party_college', '学院', 'varchar(20)', 'String', 'nonPartyCollege', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-10-24 14:56:21', NULL, '2020-10-24 15:12:05');
INSERT INTO `gen_table_column` VALUES (348, '19', 'non_party_name', '姓名', 'varchar(20)', 'String', 'nonPartyName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-10-24 14:56:21', NULL, '2020-10-24 15:12:05');
INSERT INTO `gen_table_column` VALUES (349, '19', 'non_party_sex', '籍贯', 'varchar(10)', 'String', 'nonPartySex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-10-24 14:56:21', NULL, '2020-10-24 15:12:05');
INSERT INTO `gen_table_column` VALUES (350, '19', 'non_party_nation', '民族', 'varchar(10)', 'String', 'nonPartyNation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-10-24 14:56:21', NULL, '2020-10-24 15:12:05');
INSERT INTO `gen_table_column` VALUES (351, '19', 'non_party_birthday', '出生年月', 'date', 'Date', 'nonPartyBirthday', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-10-24 14:56:21', NULL, '2020-10-24 15:12:05');
INSERT INTO `gen_table_column` VALUES (352, '19', 'non_party_current_administrative_position', '现任行政职务', 'varchar(50)', 'String', 'nonPartyCurrentAdministrativePosition', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-10-24 14:56:21', NULL, '2020-10-24 15:12:05');
INSERT INTO `gen_table_column` VALUES (353, '19', 'non_party_title', '职称', 'varchar(20)', 'String', 'nonPartyTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-10-24 14:56:21', NULL, '2020-10-24 15:12:05');
INSERT INTO `gen_table_column` VALUES (354, '19', 'non_party_academic_degree', '学历职位', 'varchar(50)', 'String', 'nonPartyAcademicDegree', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-10-24 14:56:21', NULL, '2020-10-24 15:12:05');
INSERT INTO `gen_table_column` VALUES (355, '19', 'non_party_graduate_school_major', '毕业院校', 'varchar(50)', 'String', 'nonPartyGraduateSchoolMajor', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-10-24 14:56:22', NULL, '2020-10-24 15:12:05');
INSERT INTO `gen_table_column` VALUES (356, '19', 'non_party_contact_information', '联系方式', 'varchar(20)', 'String', 'nonPartyContactInformation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-10-24 14:56:22', NULL, '2020-10-24 15:12:05');
INSERT INTO `gen_table_column` VALUES (357, '19', 'non_party_remarks', '备注', 'varchar(255)', 'String', 'nonPartyRemarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-10-24 14:56:22', NULL, '2020-10-24 15:12:05');
INSERT INTO `gen_table_column` VALUES (358, '19', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2020-10-24 14:56:22', NULL, '2020-10-24 15:12:06');
INSERT INTO `gen_table_column` VALUES (359, '19', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2020-10-24 14:56:22', NULL, '2020-10-24 15:12:06');
INSERT INTO `gen_table_column` VALUES (360, '19', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2020-10-24 14:56:22', NULL, '2020-10-24 15:12:06');
INSERT INTO `gen_table_column` VALUES (361, '19', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2020-10-24 14:56:22', NULL, '2020-10-24 15:12:06');
INSERT INTO `gen_table_column` VALUES (362, '16', 'standingbook_r_and_p_name', '奖惩名称', 'varchar(50)', 'String', 'standingbookRAndPName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, '', '2020-10-24 15:13:25', NULL, '2020-10-24 15:13:57');
INSERT INTO `gen_table_column` VALUES (363, '16', 'standingbook_r_and_p_explain', '奖惩说明', 'varchar(255)', 'String', 'standingbookRAndPExplain', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '', '2020-10-24 15:13:25', NULL, '2020-10-24 15:13:57');
INSERT INTO `gen_table_column` VALUES (364, '16', 'standingbook_r_and_p_reason', '奖惩原因', 'varchar(255)', 'String', 'standingbookRAndPReason', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '', '2020-10-24 15:13:26', NULL, '2020-10-24 15:13:57');
INSERT INTO `gen_table_column` VALUES (365, '16', 'standingbook_I_and_C', '流入单位联系人及联系方式', 'varchar(100)', 'String', 'standingbookIAndC', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, '', '2020-10-24 15:13:26', NULL, '2020-10-24 15:13:58');
INSERT INTO `gen_table_column` VALUES (366, '20', 'comments_id', '评论内容主键', 'bigint(20)', 'Long', 'commentsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:02');
INSERT INTO `gen_table_column` VALUES (367, '20', 'comments_title', '评论标题', 'varchar(50)', 'String', 'commentsTitle', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:02');
INSERT INTO `gen_table_column` VALUES (368, '20', 'comments_type', '评论类型', 'char(1)', 'String', 'commentsType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_comments_type', 3, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:03');
INSERT INTO `gen_table_column` VALUES (369, '20', 'comments_content', '评论内容', 'varchar(255)', 'String', 'commentsContent', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'summernote', '', 4, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:03');
INSERT INTO `gen_table_column` VALUES (370, '20', 'comments_content_return', '回复评论内容', 'varchar(255)', 'String', 'commentsContentReturn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'summernote', '', 5, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:03');
INSERT INTO `gen_table_column` VALUES (371, '20', 'comments_return_id', '回复评论内容主键', 'bigint(20)', 'Long', 'commentsReturnId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:03');
INSERT INTO `gen_table_column` VALUES (372, '20', 'status', '评论状态（0正常 1关闭）', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'sys_notice_status', 7, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:03');
INSERT INTO `gen_table_column` VALUES (373, '20', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:03');
INSERT INTO `gen_table_column` VALUES (374, '20', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:04');
INSERT INTO `gen_table_column` VALUES (375, '20', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:04');
INSERT INTO `gen_table_column` VALUES (376, '20', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:04');
INSERT INTO `gen_table_column` VALUES (377, '20', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 12, 'admin', '2020-11-07 15:18:16', NULL, '2020-11-07 15:28:04');
INSERT INTO `gen_table_column` VALUES (394, '22', 'foreign_number_id', '信宗教外教专家Id', 'bigint(20)', 'Long', 'foreignNumberId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-07 18:05:55', NULL, '2020-11-07 18:17:40');
INSERT INTO `gen_table_column` VALUES (395, '22', 'foreign_number', '序号', 'bigint(20)', 'Long', 'foreignNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-07 18:05:55', NULL, '2020-11-07 18:17:40');
INSERT INTO `gen_table_column` VALUES (396, '22', 'foreign_college', '学院', 'varchar(20)', 'String', 'foreignCollege', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-11-07 18:05:55', NULL, '2020-11-07 18:17:40');
INSERT INTO `gen_table_column` VALUES (397, '22', 'foreign_name', '姓名', 'varchar(20)', 'String', 'foreignName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-11-07 18:05:56', NULL, '2020-11-07 18:17:40');
INSERT INTO `gen_table_column` VALUES (398, '22', 'foreign_sex', '性别', 'varchar(10)', 'String', 'foreignSex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', 5, 'admin', '2020-11-07 18:05:56', NULL, '2020-11-07 18:17:40');
INSERT INTO `gen_table_column` VALUES (399, '22', 'foreign_country', '国家', 'varchar(20)', 'String', 'foreignCountry', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2020-11-07 18:05:56', NULL, '2020-11-07 18:17:40');
INSERT INTO `gen_table_column` VALUES (400, '22', 'foreign_birthday', '生日', 'date', 'Date', 'foreignBirthday', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-11-07 18:05:56', NULL, '2020-11-07 18:17:40');
INSERT INTO `gen_table_column` VALUES (401, '22', 'foreign_religion', '宗教类型', 'varchar(20)', 'String', 'foreignReligion', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2020-11-07 18:05:56', NULL, '2020-11-07 18:17:40');
INSERT INTO `gen_table_column` VALUES (402, '22', 'foreign_religious_services_facilities', '宗教活动场所', 'varchar(50)', 'String', 'foreignReligiousServicesFacilities', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 9, 'admin', '2020-11-07 18:05:56', NULL, '2020-11-07 18:17:40');
INSERT INTO `gen_table_column` VALUES (403, '22', 'foreign_contact_information', '联系方式', 'varchar(20)', 'String', 'foreignContactInformation', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, 'admin', '2020-11-07 18:05:56', NULL, '2020-11-07 18:17:41');
INSERT INTO `gen_table_column` VALUES (404, '22', 'foreign_remarks', '备注', 'varchar(255)', 'String', 'foreignRemarks', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 11, 'admin', '2020-11-07 18:05:56', NULL, '2020-11-07 18:17:41');
INSERT INTO `gen_table_column` VALUES (405, '22', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2020-11-07 18:05:57', NULL, '2020-11-07 18:17:41');
INSERT INTO `gen_table_column` VALUES (406, '22', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2020-11-07 18:05:57', NULL, '2020-11-07 18:17:41');
INSERT INTO `gen_table_column` VALUES (407, '22', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2020-11-07 18:05:57', NULL, '2020-11-07 18:17:41');
INSERT INTO `gen_table_column` VALUES (408, '22', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2020-11-07 18:05:57', NULL, '2020-11-07 18:17:41');
INSERT INTO `gen_table_column` VALUES (409, '23', 'news_id', '新闻ID', 'int(4)', 'Integer', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-19 17:30:26', NULL, '2020-11-19 17:35:43');
INSERT INTO `gen_table_column` VALUES (410, '23', 'news_title', '新闻标题', 'varchar(50)', 'String', 'newsTitle', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-19 17:30:26', NULL, '2020-11-19 17:35:43');
INSERT INTO `gen_table_column` VALUES (411, '23', 'news_type', '新闻类型（1通知 2公告）', 'char(1)', 'String', 'newsType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_news_type', 3, 'admin', '2020-11-19 17:30:26', NULL, '2020-11-19 17:35:44');
INSERT INTO `gen_table_column` VALUES (412, '23', 'news_content', '新闻内容', 'varchar(2000)', 'String', 'newsContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'summernote', '', 4, 'admin', '2020-11-19 17:30:26', NULL, '2020-11-19 17:35:44');
INSERT INTO `gen_table_column` VALUES (413, '23', 'news_url', '新闻外链', 'varchar(255)', 'String', 'newsUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-11-19 17:30:26', NULL, '2020-11-19 17:35:44');
INSERT INTO `gen_table_column` VALUES (414, '23', 'status', '新闻状态（0正常 1关闭）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_notice_status', 6, 'admin', '2020-11-19 17:30:26', NULL, '2020-11-19 17:35:44');
INSERT INTO `gen_table_column` VALUES (415, '23', 'news_time', '新闻时间', 'datetime', 'Date', 'newsTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-11-19 17:30:26', NULL, '2020-11-19 17:35:44');
INSERT INTO `gen_table_column` VALUES (416, '23', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2020-11-19 17:30:26', NULL, '2020-11-19 17:35:44');
INSERT INTO `gen_table_column` VALUES (417, '23', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2020-11-19 17:30:27', NULL, '2020-11-19 17:35:44');
INSERT INTO `gen_table_column` VALUES (418, '23', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-11-19 17:30:27', NULL, '2020-11-19 17:35:44');
INSERT INTO `gen_table_column` VALUES (419, '23', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2020-11-19 17:30:27', NULL, '2020-11-19 17:35:44');
INSERT INTO `gen_table_column` VALUES (420, '23', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 12, 'admin', '2020-11-19 17:30:27', NULL, '2020-11-19 17:35:44');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);
COMMIT;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'WIN-3LK9TLQT0D51605878754612', 1605879587026, 15000);
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1605878760000, -1, 5, 'PAUSED', 'CRON', 1605878755000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1605878760000, -1, 5, 'PAUSED', 'CRON', 1605878755000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1605878760000, -1, 5, 'PAUSED', 'CRON', 1605878755000, 0, NULL, 2, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_comments
-- ----------------------------
DROP TABLE IF EXISTS `sys_comments`;
CREATE TABLE `sys_comments` (
  `comments_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论内容主键',
  `comments_title` varchar(50) CHARACTER SET utf8mb4 NOT NULL COMMENT '评论标题',
  `comments_type` char(1) CHARACTER SET utf8mb4 NOT NULL COMMENT '评论类型',
  `comments_content` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '评论内容',
  `comments_content_return` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '回复评论内容',
  `comments_return_id` bigint(20) DEFAULT NULL COMMENT '回复评论内容主键',
  `status` char(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '评论状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`comments_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='留言板评论互动\n';

-- ----------------------------
-- Records of sys_comments
-- ----------------------------
BEGIN;
INSERT INTO `sys_comments` VALUES (1, '食堂问题情况反馈', '1', '<p>食堂问题</p>', '', NULL, '0', 'admin', '2020-11-07 15:31:02', 'admin', '2020-11-07 15:31:02', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-24 20:37:58', '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数组和特殊字符（密码必须包含字母，数字，特殊字符-_）');
INSERT INTO `sys_config` VALUES (6, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (7, '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '是否开启底部页脚显示（true显示，false隐藏）');
COMMIT;

-- ----------------------------
-- Table structure for sys_democratic_parties
-- ----------------------------
DROP TABLE IF EXISTS `sys_democratic_parties`;
CREATE TABLE `sys_democratic_parties` (
  `democratic_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '民主党派id',
  `democratic_number` bigint(20) DEFAULT NULL COMMENT '序号',
  `democratic_college` varchar(20) DEFAULT NULL COMMENT '学院',
  `democratic_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `democratic_sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `democratic_nation` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `democratic_birthday` date DEFAULT NULL COMMENT '民族',
  `democratic_pary_join_time` date DEFAULT NULL COMMENT '党派及加入时间',
  `democratic_job_part` varchar(50) DEFAULT NULL COMMENT '党派职务',
  `democratic_current_administrative_position` varchar(50) DEFAULT NULL COMMENT '现任行政职务',
  `democratic_title` varchar(50) DEFAULT NULL COMMENT '职称',
  `democratic_social_job` varchar(50) DEFAULT NULL COMMENT '任职情况',
  `democratic_academic_degree` varchar(50) DEFAULT NULL COMMENT '学历学位',
  `democratic_graduate_school&major` varchar(50) DEFAULT NULL COMMENT '毕业院校和专业',
  `democratic_contact information` bigint(20) DEFAULT NULL COMMENT '联系方式',
  `democratic_remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  PRIMARY KEY (`democratic_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='民主党派';

-- ----------------------------
-- Records of sys_democratic_parties
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1091 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (1000, 0, '0', '盐城师范学院', 0, 'admin', '15888888888', 'luna_nov@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:46:04');
INSERT INTO `sys_dept` VALUES (1010, 1000, '0,1000', '信息工程学院党总支', 1, 'admin_ie', '15888888888', 'admin_ie@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:45:20');
INSERT INTO `sys_dept` VALUES (1020, 1000, '0,1000', '教育科学学院党总支', 2, 'admin_tea', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:46:04');
INSERT INTO `sys_dept` VALUES (1030, 1010, '0,1000,1010', '第一支部', 1, 'admin_ie_one', '15888888888', 'admin_ie_one@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:44:35');
INSERT INTO `sys_dept` VALUES (1040, 1010, '0,1000,1010', '第二支部', 2, 'admin_ie_second', '15888888888', 'admin_ie_second@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:45:04');
INSERT INTO `sys_dept` VALUES (1050, 1010, '0,1000,1010', '第三支部', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:45:13');
INSERT INTO `sys_dept` VALUES (1060, 1010, '0,1000,1010', '第四支部', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:45:19');
INSERT INTO `sys_dept` VALUES (1070, 1010, '0,1000,1010', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (1080, 1020, '0,1000,1020', '第一支部', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:45:58');
INSERT INTO `sys_dept` VALUES (1090, 1020, '0,1000,1020', '第二支部', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:46:04');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (101, 3, '四会一课', '1', 'sys_news_type', '', 'danger', 'Y', '0', 'luna', '2020-09-25 11:32:38', 'admin', '2020-11-20 20:40:36', '新闻类型：四会一课');
INSERT INTO `sys_dict_data` VALUES (102, 1, '开启', '1', 'sys_news_status', NULL, 'success', 'Y', '0', 'luna', '2020-09-25 11:35:32', '', NULL, '开启新闻显示');
INSERT INTO `sys_dict_data` VALUES (103, 2, '关闭', '0', 'sys_news_status', NULL, 'danger', 'Y', '0', 'luna', '2020-09-25 11:35:57', '', NULL, '关闭新闻通知');
INSERT INTO `sys_dict_data` VALUES (104, 1, '已提交', '1', 'sys_party_info_status', NULL, 'success', 'Y', '0', 'admin', '2020-10-09 22:37:39', '', NULL, '材料已经提交');
INSERT INTO `sys_dict_data` VALUES (105, 1, '未提交', '0', 'sys_party_info_status', '', 'danger', 'Y', '0', 'admin', '2020-10-09 22:38:20', 'admin', '2020-10-09 22:38:38', '材料还未提交');
INSERT INTO `sys_dict_data` VALUES (106, 0, '已婚', '0', 'sys_is_married', NULL, 'success', 'Y', '0', 'admin', '2020-10-16 15:04:52', '', NULL, '已婚');
INSERT INTO `sys_dict_data` VALUES (107, 1, '未婚', '1', 'sys_is_married', NULL, 'warning', 'Y', '0', 'admin', '2020-10-16 15:05:06', '', NULL, '未婚');
INSERT INTO `sys_dict_data` VALUES (108, 2, 'xxx活动', '2', 'sys_news_type', NULL, 'info', 'Y', '0', 'admin', '2020-10-25 17:21:00', '', NULL, 'xxx活动');
INSERT INTO `sys_dict_data` VALUES (109, 1, '情况反馈', '1', 'sys_comments_type', NULL, 'success', 'Y', '0', 'admin', '2020-11-07 15:19:58', '', NULL, '情况反馈留言板块');
INSERT INTO `sys_dict_data` VALUES (110, 2, '三会一课', '2', 'sys_news_type', NULL, 'primary', 'Y', '0', 'admin', '2020-11-20 20:40:27', '', NULL, '新闻类型：三会一课');
INSERT INTO `sys_dict_data` VALUES (111, 4, '五会一课', '4', 'sys_news_type', NULL, 'info', 'Y', '0', 'admin', '2020-11-20 20:41:03', '', NULL, '新闻类型：五会一课');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '新闻类型', 'sys_news_type', '0', 'luna', '2020-09-25 11:31:50', 'luna', '2020-09-25 11:33:50', '新闻类型列表');
INSERT INTO `sys_dict_type` VALUES (101, '新闻状态', 'sys_news_status', '0', 'luna', '2020-09-25 11:34:22', 'luna', '2020-09-25 11:34:42', '新闻状态列表');
INSERT INTO `sys_dict_type` VALUES (102, '材料状态', 'sys_party_info_status', '0', 'admin', '2020-10-09 22:37:04', '', NULL, '材料是否提交状态');
INSERT INTO `sys_dict_type` VALUES (103, '婚姻状况', 'sys_is_married', '0', 'admin', '2020-10-16 15:04:26', '', NULL, '婚姻状况');
INSERT INTO `sys_dict_type` VALUES (104, '留言类型', 'sys_comments_type', '0', 'admin', '2020-11-07 15:19:28', '', NULL, '留言类型');
COMMIT;

-- ----------------------------
-- Table structure for sys_faculty_summary
-- ----------------------------
DROP TABLE IF EXISTS `sys_faculty_summary`;
CREATE TABLE `sys_faculty_summary` (
  `faculty_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '教职工总表id',
  `faculty_num` bigint(20) DEFAULT NULL COMMENT '序号',
  `faculty_name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `faculty_sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `faculty_nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `faculty_birthday` date DEFAULT NULL COMMENT '出生年月',
  `faculty_time_join_part` date DEFAULT NULL COMMENT '入党时间',
  `faculty_branch_number` varchar(10) DEFAULT NULL COMMENT '所在支部',
  `faculty_pay` double(20,2) DEFAULT NULL COMMENT '月交纳党费金额',
  `faculty_native_place` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `faculty_current_administrative_position` varchar(20) DEFAULT NULL COMMENT '现任行政职务',
  `faculty_title` varchar(20) DEFAULT NULL COMMENT '职称',
  `faculty_social_service` varchar(20) DEFAULT NULL COMMENT '社会任职情况',
  `faculty_academic_degree` varchar(20) DEFAULT NULL COMMENT '学历  学位',
  `faculty_graduate_school_and_major` varchar(50) DEFAULT NULL COMMENT '毕业院校及专业',
  `faculty_time_work` date DEFAULT NULL COMMENT '参加工作时间',
  `faculty_oversea_study_begin_and_end` varchar(50) DEFAULT NULL COMMENT '留学开始时间',
  `faculty_id_card` varchar(20) DEFAULT NULL COMMENT '身份证',
  `faculty_branch_position` varchar(20) DEFAULT NULL COMMENT '支委会职务',
  `faculty_marital_status` varchar(10) DEFAULT NULL COMMENT '婚姻状况',
  `faculty_phone_number` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `faculty_remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  PRIMARY KEY (`faculty_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='教职工汇总表';

-- ----------------------------
-- Records of sys_faculty_summary
-- ----------------------------
BEGIN;
INSERT INTO `sys_faculty_summary` VALUES (1, 1, 'xxx1', '0', '汉', '2020-10-08', '2020-10-08', '第四党支部', 200.00, '江苏盐城', '无', '无', '无', '本科', '盐城师范学院', '2020-10-08', '无', '123156321654646', '无', '0', '111', '无', '2020-10-16 14:59:18', '2020-10-16 15:10:07', 'admin', 'admin');
INSERT INTO `sys_faculty_summary` VALUES (2, 1, 'xxx2', '0', '汉', '2020-10-08', '2020-10-08', '第四党支部', 200.00, '江苏盐城', '无', '无', '无', '本科', '盐城师范学院', '2020-10-08', '无', '123156321654646', '无', '0', '111', '无', '2020-10-16 15:02:03', '2020-10-16 15:10:24', 'admin', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for sys_foreign_believers
-- ----------------------------
DROP TABLE IF EXISTS `sys_foreign_believers`;
CREATE TABLE `sys_foreign_believers` (
  `foreign_number_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '信宗教外教专家Id',
  `foreign_number` bigint(20) DEFAULT NULL COMMENT '序号',
  `foreign_college` varchar(20) DEFAULT NULL COMMENT '学院',
  `foreign_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `foreign_sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `foreign_country` varchar(20) DEFAULT NULL COMMENT '国家',
  `foreign_birthday` date DEFAULT NULL COMMENT '生日',
  `foreign_religion` varchar(20) DEFAULT NULL COMMENT '宗教类型',
  `foreign_religious_services_facilities` varchar(50) DEFAULT NULL COMMENT '宗教活动场所',
  `foreign_contact_information` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `foreign_remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  PRIMARY KEY (`foreign_number_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='信宗教外教专家';

-- ----------------------------
-- Records of sys_foreign_believers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-21 13:00:55');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-09-23 16:23:17');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-09-23 16:23:45');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-23 16:24:23');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-09-24 20:11:02');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-09-24 20:24:49');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-09-24 20:35:55');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-24 20:36:01');
INSERT INTO `sys_logininfor` VALUES (108, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '注册成功', '2020-09-24 20:38:57');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-24 20:39:10');
INSERT INTO `sys_logininfor` VALUES (110, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-09-24 20:39:21');
INSERT INTO `sys_logininfor` VALUES (111, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-24 20:39:23');
INSERT INTO `sys_logininfor` VALUES (112, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-09-24 20:39:38');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-25 10:20:25');
INSERT INTO `sys_logininfor` VALUES (114, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-25 10:27:00');
INSERT INTO `sys_logininfor` VALUES (115, 'luna', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-09-25 12:27:27');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-25 12:27:32');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-09-25 12:33:53');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-09-25 12:34:06');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-09-25 12:34:10');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-25 12:34:16');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-09-25 12:35:33');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-09-25 12:35:44');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-25 12:35:49');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-09-25 12:35:59');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-25 12:42:51');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-09-25 12:48:24');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-09-25 12:48:35');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-25 12:48:38');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-26 13:32:53');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-26 13:37:47');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-26 14:00:54');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-09-26 14:10:39');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-26 14:12:23');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '192.168.31.17', '内网IP', 'Safari', 'Mac OS X', '0', '登录成功', '2020-09-26 14:12:36');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-09-26 15:13:59');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-27 14:00:39');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-09-28 20:10:25');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-09-28 20:34:48');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-09-28 20:34:54');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-28 20:51:06');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-04 14:37:46');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-10-09 12:29:47');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-10-09 12:29:50');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-09 12:29:53');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-09 22:34:43');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-09 23:54:40');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-10-10 12:47:44');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 12:47:49');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 12:53:26');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 13:00:22');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-10-10 13:11:11');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 13:11:16');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 14:12:49');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 14:19:49');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-10-10 14:46:15');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-10-10 14:46:20');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 14:46:23');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 14:52:45');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 14:55:01');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-10-10 15:04:29');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 15:04:33');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 15:20:04');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 15:22:06');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 16:32:25');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-10-10 16:34:50');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-10-10 16:34:53');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 16:34:57');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-10-10 16:55:44');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-10-10 16:55:47');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 16:55:50');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-10 17:01:41');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-11 15:48:30');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-12 19:23:14');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-14 17:26:19');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-14 23:58:08');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-15 00:27:52');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-16 19:45:40');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-16 19:52:12');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-16 19:54:58');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-16 22:47:16');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-16 23:18:11');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-17 00:08:46');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-17 00:42:26');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-17 00:42:31');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-17 00:42:43');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-17 00:49:33');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-17 13:31:26');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-17 13:56:40');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-17 14:08:20');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-17 19:12:06');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-18 15:18:28');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-10-18 15:19:34');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-22 22:50:19');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-23 14:16:46');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-10-23 19:01:26');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-10-24 13:16:06');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-24 14:38:03');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-24 15:22:04');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-24 16:24:46');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-25 12:12:48');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Mac OS X (iPad)', '0', '登录成功', '2020-10-25 12:45:29');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-10-25 16:16:27');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-10-27 14:43:27');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-10-28 14:53:52');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-10-31 16:01:01');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-31 16:05:54');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-07 15:14:58');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 17:49:05');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 18:24:46');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 21:13:42');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-09 09:41:48');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-11-12 22:50:59');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-12 23:10:25');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-12 23:17:02');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-12 23:42:49');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:07:17');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:13:04');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:14:04');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:16:56');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:18:21');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:21:24');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:28:39');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:30:53');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:32:02');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:33:08');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:39:33');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:41:21');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:50:25');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 00:52:45');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 01:07:09');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 02:07:08');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 02:08:30');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 02:17:41');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 08:03:16');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-13 10:30:59');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-13 14:30:21');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 8.1', '0', '登录成功', '2020-11-13 14:34:27');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 8.1', '0', '退出成功', '2020-11-13 14:34:38');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-13 14:56:21');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-13 14:56:53');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-11-13 15:02:36');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-11-13 15:03:09');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-14 11:17:19');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-14 11:44:27');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-15 05:40:58');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-15 06:21:49');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-11-18 16:30:34');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-18 16:35:23');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-19 16:44:01');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-19 18:53:58');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 08:14:46');
INSERT INTO `sys_logininfor` VALUES (252, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 20:20:18');
INSERT INTO `sys_logininfor` VALUES (253, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2020-11-20 20:34:55');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 20:34:59');
INSERT INTO `sys_logininfor` VALUES (255, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 20:41:42');
INSERT INTO `sys_logininfor` VALUES (256, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2020-11-20 20:43:20');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 20:43:22');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2020-11-20 20:44:40');
INSERT INTO `sys_logininfor` VALUES (259, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 20:44:43');
INSERT INTO `sys_logininfor` VALUES (260, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2020-11-20 20:46:13');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 20:46:15');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2020-11-20 20:47:32');
INSERT INTO `sys_logininfor` VALUES (263, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 20:47:36');
INSERT INTO `sys_logininfor` VALUES (264, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2020-11-20 20:48:31');
INSERT INTO `sys_logininfor` VALUES (265, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 20:49:45');
INSERT INTO `sys_logininfor` VALUES (266, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 20:56:54');
INSERT INTO `sys_logininfor` VALUES (267, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2020-11-20 20:58:53');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 20:58:57');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2020-11-20 21:00:54');
INSERT INTO `sys_logininfor` VALUES (270, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 21:00:57');
INSERT INTO `sys_logininfor` VALUES (271, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2020-11-20 21:01:29');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 21:01:33');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2020-11-20 21:02:43');
INSERT INTO `sys_logininfor` VALUES (274, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-11-20 21:02:46');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 8.1', '0', '登录成功', '2020-11-20 21:22:52');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 8.1', '0', '退出成功', '2020-11-20 21:23:31');
INSERT INTO `sys_logininfor` VALUES (277, 'luna_first', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 8.1', '0', '登录成功', '2020-11-20 21:23:43');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2087 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', 'fa fa-user-o', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', 'fa fa-user-secret', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', 'fa fa-th-list', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', 'fa fa-outdent', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', 'fa fa-address-card-o', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', 'fa fa-sun-o', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', 'fa fa-pencil-square-o', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', 'fa fa-tasks', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', 'fa fa-bug', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', 'fa fa-server', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', 'fa fa-wpforms', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', 'fa fa-code', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', 'fa fa-gg', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2000, '新闻展示', 2077, 1, '/admin/news', 'menuItem', 'C', '0', 'admin:news:view', 'fa fa-bars', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-20 19:32:30', '新闻展示菜单');
INSERT INTO `sys_menu` VALUES (2001, '新闻展示查询', 2000, 1, '#', 'menuItem', 'F', '0', '', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-09-25 12:48:13', '');
INSERT INTO `sys_menu` VALUES (2002, '新闻展示新增', 2000, 2, '#', '', 'F', '0', 'admin:news:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2003, '新闻展示修改', 2000, 3, '#', '', 'F', '0', 'admin:news:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2004, '新闻展示删除', 2000, 4, '#', '', 'F', '0', 'admin:news:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2005, '新闻展示导出', 2000, 5, '#', '', 'F', '0', 'admin:news:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2006, '党建平台', 0, 4, '#', 'menuItem', 'M', '0', NULL, 'fa fa-bank', 'admin', '2020-09-25 12:28:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '学生党员信息管理', 2074, 1, '/admin/partyInfo', 'menuItem', 'C', '0', 'admin:partyInfo:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-20 19:34:08', '党员信息菜单');
INSERT INTO `sys_menu` VALUES (2008, '党员信息查询', 2007, 1, '#', '', 'F', '0', 'admin:partyInfo:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2009, '党员信息新增', 2007, 2, '#', '', 'F', '0', 'admin:partyInfo:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2010, '党员信息修改', 2007, 3, '#', '', 'F', '0', 'admin:partyInfo:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2011, '党员信息删除', 2007, 4, '#', '', 'F', '0', 'admin:partyInfo:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2012, '党员信息导出', 2007, 5, '#', '', 'F', '0', 'admin:partyInfo:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2019, '党员信息导入', 2007, 6, '#', 'menuItem', 'F', '0', 'admin:partyInfo:import', '#', 'admin', '2020-10-10 13:53:41', 'admin', '2020-10-10 13:53:51', '');
INSERT INTO `sys_menu` VALUES (2020, '党建纪实', 2006, 1, '/admin/documentary', '', 'C', '0', 'admin:documentary:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '党建纪实菜单');
INSERT INTO `sys_menu` VALUES (2021, '党建纪实查询', 2020, 1, '#', '', 'F', '0', 'admin:documentary:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2022, '党建纪实新增', 2020, 2, '#', '', 'F', '0', 'admin:documentary:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2023, '党建纪实修改', 2020, 3, '#', '', 'F', '0', 'admin:documentary:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2024, '党建纪实删除', 2020, 4, '#', '', 'F', '0', 'admin:documentary:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2025, '党建纪实导出', 2020, 5, '#', '', 'F', '0', 'admin:documentary:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2026, '留学人员', 2074, 1, '/admin/religion', '', 'C', '0', 'admin:religion:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '留学人员菜单');
INSERT INTO `sys_menu` VALUES (2027, '留学人员查询', 2026, 1, '#', '', 'F', '0', 'admin:religion:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2028, '留学人员新增', 2026, 2, '#', '', 'F', '0', 'admin:religion:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2029, '留学人员修改', 2026, 3, '#', '', 'F', '0', 'admin:religion:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2030, '留学人员删除', 2026, 4, '#', '', 'F', '0', 'admin:religion:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2031, '留学人员导出', 2026, 5, '#', '', 'F', '0', 'admin:religion:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2032, '入党积极分子', 2074, 1, '/admin/activists', '', 'C', '0', 'admin:activists:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '入党积极分子菜单');
INSERT INTO `sys_menu` VALUES (2033, '入党积极分子查询', 2032, 1, '#', '', 'F', '0', 'admin:activists:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2034, '入党积极分子新增', 2032, 2, '#', '', 'F', '0', 'admin:activists:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2035, '入党积极分子修改', 2032, 3, '#', '', 'F', '0', 'admin:activists:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2036, '入党积极分子删除', 2032, 4, '#', '', 'F', '0', 'admin:activists:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2037, '入党积极分子导出', 2032, 5, '#', '', 'F', '0', 'admin:activists:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2038, '教职工汇总', 2074, 1, '/admin/facultySummary', '', 'C', '0', 'admin:facultySummary:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '教职工汇总菜单');
INSERT INTO `sys_menu` VALUES (2039, '教职工汇总查询', 2038, 1, '#', '', 'F', '0', 'admin:facultySummary:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2040, '教职工汇总新增', 2038, 2, '#', '', 'F', '0', 'admin:facultySummary:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2041, '教职工汇总修改', 2038, 3, '#', '', 'F', '0', 'admin:facultySummary:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2042, '教职工汇总删除', 2038, 4, '#', '', 'F', '0', 'admin:facultySummary:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2043, '教职工汇总导出', 2038, 5, '#', '', 'F', '0', 'admin:facultySummary:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2044, '留学归国人员', 2074, 1, '/admin/member', '', 'C', '0', 'admin:member:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '留学归国人员菜单');
INSERT INTO `sys_menu` VALUES (2045, '留学归国人员查询', 2044, 1, '#', '', 'F', '0', 'admin:member:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2046, '留学归国人员新增', 2044, 2, '#', '', 'F', '0', 'admin:member:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2047, '留学归国人员修改', 2044, 3, '#', '', 'F', '0', 'admin:member:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2048, '留学归国人员删除', 2044, 4, '#', '', 'F', '0', 'admin:member:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2049, '留学归国人员导出', 2044, 5, '#', '', 'F', '0', 'admin:member:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2056, '无党派人士', 2074, 1, '/admin/noparty', '', 'C', '0', 'admin:noparty:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '无党派人士菜单');
INSERT INTO `sys_menu` VALUES (2057, '无党派人士查询', 2056, 1, '#', '', 'F', '0', 'admin:noparty:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2058, '无党派人士新增', 2056, 2, '#', '', 'F', '0', 'admin:noparty:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2059, '无党派人士修改', 2056, 3, '#', '', 'F', '0', 'admin:noparty:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2060, '无党派人士删除', 2056, 4, '#', '', 'F', '0', 'admin:noparty:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2061, '无党派人士导出', 2056, 5, '#', '', 'F', '0', 'admin:noparty:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2062, '留言板评论互动', 2079, 1, '/admin/comments', 'menuItem', 'C', '0', 'admin:comments:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-20 19:31:49', '留言板评论互动菜单');
INSERT INTO `sys_menu` VALUES (2063, '留言板评论互动查询', 2062, 1, '#', '', 'F', '0', 'admin:comments:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2064, '留言板评论互动新增', 2062, 2, '#', '', 'F', '0', 'admin:comments:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2065, '留言板评论互动修改', 2062, 3, '#', '', 'F', '0', 'admin:comments:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2066, '留言板评论互动删除', 2062, 4, '#', '', 'F', '0', 'admin:comments:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2067, '留言板评论互动导出', 2062, 5, '#', '', 'F', '0', 'admin:comments:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2074, '日常管理', 0, 5, '#', 'menuItem', 'M', '0', '', 'fa fa-bar-chart', 'admin', '2020-11-19 16:47:13', 'admin', '2020-11-20 19:34:26', '');
INSERT INTO `sys_menu` VALUES (2075, '新闻类别设置', 2077, 1, 'system/dict/detail/100', 'menuItem', 'C', '0', '', 'fa fa-arrows-h', 'admin', '2020-11-19 17:00:37', 'admin', '2020-11-20 19:32:10', '');
INSERT INTO `sys_menu` VALUES (2077, '宣传教育', 0, 6, '#', 'menuItem', 'M', '0', NULL, 'fa fa-child', 'admin', '2020-11-20 19:30:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2079, '党群互动', 0, 7, '#', 'menuItem', 'M', '0', NULL, 'fa fa-exchange', 'admin', '2020-11-20 19:31:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2080, '监督保障', 0, 8, '#', 'menuItem', 'M', '0', NULL, 'fa fa-handshake-o', 'admin', '2020-11-20 19:31:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2081, '台账', 2074, 1, '/admin/standingbook', 'menuItem', 'C', '0', 'admin:standingbook:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-20 19:58:56', '台账菜单');
INSERT INTO `sys_menu` VALUES (2082, '台账查询', 2081, 1, '#', '', 'F', '0', 'admin:standingbook:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2083, '台账新增', 2081, 2, '#', '', 'F', '0', 'admin:standingbook:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2084, '台账修改', 2081, 3, '#', '', 'F', '0', 'admin:standingbook:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2085, '台账删除', 2081, 4, '#', '', 'F', '0', 'admin:standingbook:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2086, '台账导出', 2081, 5, '#', '', 'F', '0', 'admin:standingbook:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news` (
  `news_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '新闻ID',
  `news_title` varchar(50) NOT NULL COMMENT '新闻标题',
  `news_type` char(1) NOT NULL COMMENT '新闻类型（1通知 2公告）',
  `news_content` varchar(2000) DEFAULT NULL COMMENT '新闻内容',
  `news_url` varchar(255) DEFAULT NULL COMMENT '新闻外链',
  `status` char(1) DEFAULT '0' COMMENT '新闻状态（0正常 1关闭）',
  `news_time` datetime DEFAULT NULL COMMENT '新闻时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`news_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='新闻发布表';

-- ----------------------------
-- Records of sys_news
-- ----------------------------
BEGIN;
INSERT INTO `sys_news` VALUES (1, '三会一课开课啦', '1', '新版本内容', NULL, '1', '2018-03-16 11:33:00', 'admin', NULL, 'ry', '2020-09-25 12:30:57', '管理员');
INSERT INTO `sys_news` VALUES (2, '三会一课第二课开课啦', '1', '维护内容', NULL, '1', '2018-03-16 11:33:00', 'admin', NULL, 'ry', '2020-09-25 12:31:11', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_news_documentary
-- ----------------------------
DROP TABLE IF EXISTS `sys_news_documentary`;
CREATE TABLE `sys_news_documentary` (
  `documentary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '纪实Id',
  `documentary_title` varchar(50) DEFAULT NULL COMMENT '纪实主题',
  `documentary_content` varchar(15000) DEFAULT NULL COMMENT '纪实详情',
  `documentary_active_address` varchar(255) DEFAULT NULL COMMENT '活动地点',
  `documentary_start_time` datetime DEFAULT NULL COMMENT '起始时间',
  `documentary_end_time` datetime DEFAULT NULL COMMENT '截至时间',
  `documentary_jion_people` varchar(255) DEFAULT NULL COMMENT '参与人员',
  `documentary_other_people` char(255) DEFAULT NULL COMMENT '其他人员',
  `documentary_status` char(1) DEFAULT '0' COMMENT '纪实状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`documentary_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='党建纪实';

-- ----------------------------
-- Records of sys_news_documentary
-- ----------------------------
BEGIN;
INSERT INTO `sys_news_documentary` VALUES (1, '党建纪实', '<h1 style=\"font-size: 2em; margin-bottom: 16px; font-weight: 600; line-height: 1.25; padding-bottom: 0.3em; border-bottom: 1px solid var(--color-border-secondary); color: rgb(36, 41, 46); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;; margin-top: 0px !important;\">luna-ideaSync-mac</h1><p style=\"color: rgb(36, 41, 46); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;; font-size: 16px; margin-bottom: 0px !important;\">mac-idea 配置备份</p>', '主楼B403', '2020-10-14 00:00:00', '2020-10-14 00:00:00', '[1, 101, 102, 103, 104, 105, 106, 1, 101, 102, 103, 104, 105, 106, 2, 2, 100, 100]', '乔伟,陈章月', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2020-10-25 17:18:19', '管理员');
INSERT INTO `sys_news_documentary` VALUES (2, '党建纪实', '<p>党建纪实</p>', '主楼B403', '2020-10-14 00:00:00', '2020-10-14 00:00:00', '[101, 102, 103, 104, 105, 106, 1, 101, 102, 103, 104, 105, 106, 2, 2, 100, 100]', '乔伟,陈章月', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2020-10-14 23:03:25', '管理员');
INSERT INTO `sys_news_documentary` VALUES (10, '测试党建及时', '<p>顶顶顶顶</p>', '', '2020-10-28 00:00:00', '2020-11-04 00:00:00', '徐华平', '测试', '1', '', '2020-11-14 11:19:03', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_non_party
-- ----------------------------
DROP TABLE IF EXISTS `sys_non_party`;
CREATE TABLE `sys_non_party` (
  `non_party_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '无党派人士id',
  `non_party_number` bigint(20) DEFAULT NULL COMMENT '序号',
  `non_party_college` varchar(20) DEFAULT NULL COMMENT '学院',
  `non_party_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `non_party_sex` varchar(10) DEFAULT NULL COMMENT '籍贯',
  `non_party_nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `non_party_birthday` date DEFAULT NULL COMMENT '出生年月',
  `non_party_current_administrative_position` varchar(50) DEFAULT NULL COMMENT '现任行政职务',
  `non_party_title` varchar(20) DEFAULT NULL COMMENT '职称',
  `non_party_academic_degree` varchar(50) DEFAULT NULL COMMENT '学历职位',
  `non_party_graduate_school_major` varchar(50) DEFAULT NULL COMMENT '毕业院校',
  `non_party_contact_information` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `non_party_remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  PRIMARY KEY (`non_party_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='无党派人士';

-- ----------------------------
-- Records of sys_non_party
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '<p>新版本内容<img src=\"http://localhost:8080/party-platform/profile/upload/2020/09/25/6348b446-1f02-4c15-b60e-f464a09108ee.JPG\" data-filename=\"/profile/upload/2020/09/25/6348b446-1f02-4c15-b60e-f464a09108ee.JPG\" style=\"width: 1020px;\"></p>', '0', 'admin', '2018-03-16 11:33:00', 'luna', '2020-09-25 10:32:49', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_oper_log` VALUES (100, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/config/edit', '127.0.0.1', '内网IP', '{\"configId\":[\"4\"],\"configName\":[\"账号自助-是否开启用户注册功能\"],\"configKey\":[\"sys.account.registerUser\"],\"configValue\":[\"true\"],\"configType\":[\"Y\"],\"remark\":[\"是否开启注册用户功能（true开启，false关闭）\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-24 20:37:58');
INSERT INTO `sys_oper_log` VALUES (101, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"三会一课\"],\"dictValue\":[\"3\"],\"dictType\":[\"sys_notice_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"三会一课\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 10:24:38');
INSERT INTO `sys_oper_log` VALUES (102, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"100\"],\"dictLabel\":[\"三会一课\"],\"dictValue\":[\"3\"],\"dictType\":[\"sys_notice_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"三会一课\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 10:24:54');
INSERT INTO `sys_oper_log` VALUES (103, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"100\"],\"dictLabel\":[\"三会一课\"],\"dictValue\":[\"3\"],\"dictType\":[\"sys_notice_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"三会一课\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 10:25:03');
INSERT INTO `sys_oper_log` VALUES (104, '用户管理', 4, 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"roleIds\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 10:25:59');
INSERT INTO `sys_oper_log` VALUES (105, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,107,1035,1036,1037,1038\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 10:26:31');
INSERT INTO `sys_oper_log` VALUES (106, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 10:26:39');
INSERT INTO `sys_oper_log` VALUES (107, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.editSave()', 'POST', 1, 'luna', NULL, '/party-platform/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"1\"],\"noticeTitle\":[\"温馨提醒：2018-07-01 若依新版本发布啦\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"<p>新版本内容<img src=\\\"http://localhost:8080/party-platform/profile/upload/2020/09/25/6348b446-1f02-4c15-b60e-f464a09108ee.JPG\\\" data-filename=\\\"/profile/upload/2020/09/25/6348b446-1f02-4c15-b60e-f464a09108ee.JPG\\\" style=\\\"width: 1020px;\\\"></p>\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 10:32:49');
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'luna', NULL, '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_news\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 10:55:29');
INSERT INTO `sys_oper_log` VALUES (109, '字典数据', 3, 'com.ruoyi.web.controller.system.SysDictDataController.remove()', 'POST', 1, 'luna', NULL, '/party-platform/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"100\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 11:31:19');
INSERT INTO `sys_oper_log` VALUES (110, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'luna', NULL, '/party-platform/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"新闻类型\"],\"dictType\":[\"sys_news_type\"],\"status\":[\"0\"],\"remark\":[\"新闻类型\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 11:31:50');
INSERT INTO `sys_oper_log` VALUES (111, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'luna', NULL, '/party-platform/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"三会一课\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_news_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"三会一课\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 11:32:38');
INSERT INTO `sys_oper_log` VALUES (112, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'luna', NULL, '/party-platform/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"100\"],\"dictName\":[\"新闻类型\"],\"dictType\":[\"sys_news_type\"],\"status\":[\"0\"],\"remark\":[\"新闻类型列表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 11:33:52');
INSERT INTO `sys_oper_log` VALUES (113, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'luna', NULL, '/party-platform/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"新闻状态\"],\"dictType\":[\"sys_news_status\"],\"status\":[\"0\"],\"remark\":[\"新闻状态\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 11:34:22');
INSERT INTO `sys_oper_log` VALUES (114, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'luna', NULL, '/party-platform/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"101\"],\"dictName\":[\"新闻状态列表\"],\"dictType\":[\"sys_news_status\"],\"status\":[\"0\"],\"remark\":[\"新闻状态\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 11:34:33');
INSERT INTO `sys_oper_log` VALUES (115, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'luna', NULL, '/party-platform/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"101\"],\"dictName\":[\"新闻状态\"],\"dictType\":[\"sys_news_status\"],\"status\":[\"0\"],\"remark\":[\"新闻状态列表\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 11:34:43');
INSERT INTO `sys_oper_log` VALUES (116, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'luna', NULL, '/party-platform/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"开启\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_news_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"开启新闻显示\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 11:35:32');
INSERT INTO `sys_oper_log` VALUES (117, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'luna', NULL, '/party-platform/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"关闭\"],\"dictValue\":[\"0\"],\"dictType\":[\"sys_news_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"关闭新闻通知\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 11:35:57');
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'luna', NULL, '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"sys_news\"],\"tableComment\":[\"新闻发表表\"],\"className\":[\"News\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"新闻ID\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"newsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"新闻标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"newsTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"新闻类型（1通知 2公告）\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"newsType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_news_type\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"新闻内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"newsContent\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"summernote\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"新闻状态（0正常 1关闭）\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"status\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_news_status\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 11:38:56');
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'luna', NULL, '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"sys_news\"],\"tableComment\":[\"新闻发表表\"],\"className\":[\"News\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"新闻ID\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"newsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"新闻标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"newsTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"新闻类型（1通知 2公告）\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"newsType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_news_type\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"新闻内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"newsContent\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"summernote\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"新闻状态（0正常 1关闭）\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"status\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_news_status\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:06:26');
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'luna', NULL, '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-09-25 12:06:30');
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'luna', NULL, '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-09-25 12:06:32');
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'luna', NULL, '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"sys_news\"],\"tableComment\":[\"新闻发表表\"],\"className\":[\"News\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"新闻ID\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"newsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"新闻标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"newsTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"新闻类型（1通知 2公告）\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"newsType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_news_type\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"新闻内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"newsContent\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"summernote\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"新闻状态（0正常 1关闭）\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"status\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_news_status\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:12:49');
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'luna', NULL, '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-09-25 12:12:52');
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'luna', NULL, '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-09-25 12:12:53');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'luna', NULL, '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-09-25 12:13:12');
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'luna', NULL, '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-09-25 12:13:13');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'luna', NULL, '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-09-25 12:20:12');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'luna', NULL, '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-09-25 12:20:12');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'luna', NULL, '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"sys_news\"],\"tableComment\":[\"新闻发表表\"],\"className\":[\"News\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"新闻ID\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"newsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"新闻标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"newsTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"新闻类型（1通知 2公告）\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"newsType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_news_type\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"新闻内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"newsContent\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"summernote\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"新闻状态（0正常 1关闭）\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"status\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_news_status\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:21:07');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'luna', NULL, '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-09-25 12:21:10');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'luna', NULL, '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-09-25 12:21:10');
INSERT INTO `sys_oper_log` VALUES (132, '新闻展示', 2, 'com.ruoyi.web.platform.news.controller.NewsController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/admin/news/edit', '127.0.0.1', '内网IP', '{\"newsId\":[\"1\"],\"newsTitle\":[\"温馨提醒：2018-07-01 若依新版本发布啦\"],\"newsType\":[\"1\"],\"newsContent\":[\"新版本内容\"],\"status\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:27:53');
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"党建平台\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-bank\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:28:57');
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"新闻展示\"],\"url\":[\"/admin/news\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:news:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:29:30');
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"新闻展示\"],\"url\":[\"/admin/news\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:news:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:29:44');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/party-platform/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2020-09-25 12:29:53');
INSERT INTO `sys_oper_log` VALUES (137, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:30:08');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/party-platform/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:30:16');
INSERT INTO `sys_oper_log` VALUES (139, '新闻展示', 2, 'com.ruoyi.web.platform.news.controller.NewsController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/admin/news/edit', '127.0.0.1', '内网IP', '{\"newsId\":[\"1\"],\"newsTitle\":[\"三会一课开课啦\"],\"newsType\":[\"1\"],\"newsContent\":[\"新版本内容\"],\"status\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:30:54');
INSERT INTO `sys_oper_log` VALUES (140, '新闻展示', 2, 'com.ruoyi.web.platform.news.controller.NewsController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/admin/news/edit', '127.0.0.1', '内网IP', '{\"newsId\":[\"2\"],\"newsTitle\":[\"三会一课第二课开课啦\"],\"newsType\":[\"1\"],\"newsContent\":[\"维护内容\"],\"status\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:31:09');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"新闻展示查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-25 12:48:13');
INSERT INTO `sys_oper_log` VALUES (142, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"党建平台\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"luna_nov@163.com\"],\"sex\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:38:47');
INSERT INTO `sys_oper_log` VALUES (143, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"盐城师范学院\"],\"orderNum\":[\"0\"],\"leader\":[\"admin\"],\"phone\":[\"15888888888\"],\"email\":[\"luna_nov@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:41:06');
INSERT INTO `sys_oper_log` VALUES (144, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"盐城师范学院\"],\"deptName\":[\"信息工程学院\"],\"orderNum\":[\"1\"],\"leader\":[\"admin_ie\"],\"phone\":[\"15888888888\"],\"email\":[\"admin_ie@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:42:46');
INSERT INTO `sys_oper_log` VALUES (145, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"盐城师范学院\"],\"deptName\":[\"信息工程学院党总支\"],\"orderNum\":[\"1\"],\"leader\":[\"admin_ie\"],\"phone\":[\"15888888888\"],\"email\":[\"admin_ie@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:43:58');
INSERT INTO `sys_oper_log` VALUES (146, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"信息工程学院党总支\"],\"deptName\":[\"第一支部\"],\"orderNum\":[\"1\"],\"leader\":[\"admin_ie_one\"],\"phone\":[\"15888888888\"],\"email\":[\"admin_ie_one@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:44:35');
INSERT INTO `sys_oper_log` VALUES (147, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"104\"],\"parentId\":[\"101\"],\"parentName\":[\"信息工程学院党总支\"],\"deptName\":[\"第二支部\"],\"orderNum\":[\"2\"],\"leader\":[\"admin_ie_second\"],\"phone\":[\"15888888888\"],\"email\":[\"admin_ie_second@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:45:04');
INSERT INTO `sys_oper_log` VALUES (148, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"105\"],\"parentId\":[\"101\"],\"parentName\":[\"信息工程学院党总支\"],\"deptName\":[\"第三支部\"],\"orderNum\":[\"3\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:45:13');
INSERT INTO `sys_oper_log` VALUES (149, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"106\"],\"parentId\":[\"101\"],\"parentName\":[\"信息工程学院党总支\"],\"deptName\":[\"第四支部\"],\"orderNum\":[\"4\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:45:20');
INSERT INTO `sys_oper_log` VALUES (150, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"102\"],\"parentId\":[\"100\"],\"parentName\":[\"盐城师范学院\"],\"deptName\":[\"教育科学学院党总支\"],\"orderNum\":[\"2\"],\"leader\":[\"admin_tea\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:45:48');
INSERT INTO `sys_oper_log` VALUES (151, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/party-platform/system/dept/remove/107', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:45:52');
INSERT INTO `sys_oper_log` VALUES (152, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"108\"],\"parentId\":[\"102\"],\"parentName\":[\"教育科学学院党总支\"],\"deptName\":[\"第一支部\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:45:58');
INSERT INTO `sys_oper_log` VALUES (153, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"109\"],\"parentId\":[\"102\"],\"parentName\":[\"教育科学学院党总支\"],\"deptName\":[\"第二支部\"],\"orderNum\":[\"2\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:46:04');
INSERT INTO `sys_oper_log` VALUES (154, '岗位管理', 1, 'com.ruoyi.web.controller.system.SysPostController.addSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"党总支（党委）书记 \"],\"postCode\":[\"pps\"],\"postSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:47:22');
INSERT INTO `sys_oper_log` VALUES (155, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"5\"],\"postName\":[\"信息工程学院党总支（党委）书记\"],\"postCode\":[\"pps\"],\"postSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:48:54');
INSERT INTO `sys_oper_log` VALUES (156, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"5\"],\"postName\":[\"信息工程学院党总支（党委）书记\"],\"postCode\":[\"soiepps\"],\"postSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:50:02');
INSERT INTO `sys_oper_log` VALUES (157, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"4\"],\"postName\":[\"普通用户\"],\"postCode\":[\"user\"],\"postSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:50:13');
INSERT INTO `sys_oper_log` VALUES (158, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"2\"],\"postName\":[\"党支部书记\"],\"postCode\":[\"pbs\"],\"postSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:50:53');
INSERT INTO `sys_oper_log` VALUES (159, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"5\"],\"postName\":[\"党总支（党委）书记\"],\"postCode\":[\"pps\"],\"postSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:50:59');
INSERT INTO `sys_oper_log` VALUES (160, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"3\"],\"postName\":[\"支部委员\"],\"postCode\":[\"pbm\"],\"postSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:51:39');
INSERT INTO `sys_oper_log` VALUES (161, '岗位管理', 3, 'com.ruoyi.web.controller.system.SysPostController.remove()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"董事长已分配,不能删除\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-09-26 13:51:58');
INSERT INTO `sys_oper_log` VALUES (162, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"106\"],\"userName\":[\"luna\"],\"dept.deptName\":[\"第四支部\"],\"phonenumber\":[\"15696756582\"],\"email\":[\"Iszychen@gmail.com\"],\"loginName\":[\"luna\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:52:53');
INSERT INTO `sys_oper_log` VALUES (163, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"101\"],\"userName\":[\"党建平台\"],\"dept.deptName\":[\"信息工程学院党总支\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"luna_nov@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"5\"]}', 'null', 1, '不允许操作超级管理员用户', '2020-09-26 13:53:11');
INSERT INTO `sys_oper_log` VALUES (164, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"党建平台\"],\"dept.deptName\":[\"第一支部\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"luna_nov@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', 'null', 1, '不允许操作超级管理员用户', '2020-09-26 13:53:29');
INSERT INTO `sys_oper_log` VALUES (165, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"党建平台\"],\"dept.deptName\":[\"第一支部\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"luna_nov@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', 'null', 1, '不允许操作超级管理员用户', '2020-09-26 13:53:31');
INSERT INTO `sys_oper_log` VALUES (166, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"100\"],\"userName\":[\"党建平台\"],\"dept.deptName\":[\"盐城师范学院\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"luna_nov@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 'null', 1, '不允许操作超级管理员用户', '2020-09-26 13:54:00');
INSERT INTO `sys_oper_log` VALUES (167, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"100\"],\"userName\":[\"党建平台\"],\"dept.deptName\":[\"盐城师范学院\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"luna_nov@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\",\"2\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1,2\"],\"postIds\":[\"1\"]}', 'null', 1, '不允许操作超级管理员用户', '2020-09-26 13:54:03');
INSERT INTO `sys_oper_log` VALUES (168, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"党建平台\"],\"dept.deptName\":[\"第一支部\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"luna_nov@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"1\"]}', 'null', 1, '不允许操作超级管理员用户', '2020-09-26 13:54:15');
INSERT INTO `sys_oper_log` VALUES (169, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"党委书记\"],\"postCode\":[\"ceo\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:55:02');
INSERT INTO `sys_oper_log` VALUES (170, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"党委书记\"],\"postCode\":[\"ps\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:55:28');
INSERT INTO `sys_oper_log` VALUES (171, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"测试人员\"],\"dept.deptName\":[\"第三支部\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:55:48');
INSERT INTO `sys_oper_log` VALUES (172, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"admin\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"luna_nov@163.com\"],\"sex\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-09-26 13:56:32');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_party_info\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-09 22:34:55');
INSERT INTO `sys_oper_log` VALUES (174, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"材料状态\"],\"dictType\":[\"sys_party_info_status\"],\"status\":[\"0\"],\"remark\":[\"材料是否提交状态\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-09 22:37:04');
INSERT INTO `sys_oper_log` VALUES (175, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已提交\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_party_info_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"材料已经提交\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-09 22:37:39');
INSERT INTO `sys_oper_log` VALUES (176, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已提交\"],\"dictValue\":[\"0\"],\"dictType\":[\"sys_party_info_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"材料已经提交\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-09 22:38:20');
INSERT INTO `sys_oper_log` VALUES (177, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"105\"],\"dictLabel\":[\"未提交\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_party_info_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"材料还未提交\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-09 22:38:38');
INSERT INTO `sys_oper_log` VALUES (178, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"sys_party_info\"],\"tableComment\":[\"党员信息表\"],\"className\":[\"PartyInfo\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"党员编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"partyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"partyStudentNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"partyName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"班级编号\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"partyClassId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"15\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"partySex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"16\"],\"colum', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-09 22:41:30');
INSERT INTO `sys_oper_log` VALUES (179, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-09 22:43:52');
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_party_info\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-09 22:43:58');
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"sys_party_info\"],\"tableComment\":[\"党员信息表\"],\"className\":[\"PartyInfo\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"党员编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"partyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"partyStudentNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"partyName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"班级\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"partyClass\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"38\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"partySex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"39\"],\"columns', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-09 22:45:39');
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-09 22:46:32');
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-09 22:46:32');
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"sys_party_info\"],\"tableComment\":[\"党员信息表\"],\"className\":[\"PartyInfo\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"党员编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"partyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"partyStudentNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"partyName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"班级\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"partyClass\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"38\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"partySex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"39\"],\"columns', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 12:48:54');
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-10 12:48:57');
INSERT INTO `sys_oper_log` VALUES (186, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-10 12:48:58');
INSERT INTO `sys_oper_log` VALUES (187, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-10 12:49:14');
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-10 12:49:14');
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-10 12:50:47');
INSERT INTO `sys_oper_log` VALUES (190, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-10 12:50:48');
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"sys_party_info\"],\"tableComment\":[\"党员信息表\"],\"className\":[\"PartyInfo\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"党员编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"partyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"Integer\"],\"columns[1].javaField\":[\"partyStudentNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"partyName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"班级\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"partyClass\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"38\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"partySex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 13:02:27');
INSERT INTO `sys_oper_log` VALUES (192, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 13:03:43');
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_party_info\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 13:03:49');
INSERT INTO `sys_oper_log` VALUES (194, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 13:06:09');
INSERT INTO `sys_oper_log` VALUES (195, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_party_info\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 13:06:15');
INSERT INTO `sys_oper_log` VALUES (196, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"sys_party_info\"],\"tableComment\":[\"党员信息表\"],\"className\":[\"PartyInfo\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"80\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"党员编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"partyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"81\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"partyStudentNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"82\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"partyName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"83\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"班级\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"partyClass\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"84\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"partySex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"85', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 13:07:53');
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-10 13:08:03');
INSERT INTO `sys_oper_log` VALUES (198, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-10 13:08:03');
INSERT INTO `sys_oper_log` VALUES (199, '党员信息', 1, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/add', '127.0.0.1', '内网IP', '{\"partyStudentNumber\":[\"1812630730\"],\"partyName\":[\"罗杰\"],\"partyClass\":[\"软件187\"],\"partySex\":[\"0\"],\"partyBirthday\":[\"2020-10-10\"],\"partyNativePlace\":[\"江苏盐城\"],\"partyIdcard\":[\"500385202010101125\"],\"partyJoinTime\":[\"2020-10-10\"],\"partyJoinApplication\":[\"1\"],\"partyInspect\":[\"1\"],\"partyFormalApplication\":[\"1\"],\"partyThoughtReport\":[\"1\"],\"partyStudentPost\":[\"无\"],\"partyRewardsPunishments\":[\"无\"],\"partyOtherInfo\":[\"无\"],\"partyHeadMaster\":[\"季方方\"],\"partyConnect\":[\"15696756582\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 13:16:15');
INSERT INTO `sys_oper_log` VALUES (200, '党员信息', 5, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/export', '127.0.0.1', '内网IP', '{\"partyStudentNumber\":[\"\"],\"partyName\":[\"\"],\"partyClass\":[\"\"],\"partySex\":[\"\"],\"params[beginPartyBirthday]\":[\"\"],\"params[endPartyBirthday]\":[\"\"],\"partyNativePlace\":[\"\"],\"partyIdcard\":[\"\"],\"params[beginPartyJoinTime]\":[\"\"],\"params[endPartyJoinTime]\":[\"\"],\"partyJoinApplication\":[\"\"],\"partyInspect\":[\"\"],\"partyFormalApplication\":[\"\"],\"partyThoughtReport\":[\"\"],\"partyStudentPost\":[\"\"],\"partyRewardsPunishments\":[\"\"],\"partyOtherInfo\":[\"\"],\"partyHeadMaster\":[\"\"],\"partyConnect\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"18c43771-cba3-40d8-9535-a59e17d360d9_partyInfo.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 13:17:25');
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2007\"],\"menuType\":[\"F\"],\"menuName\":[\"党员信息导入\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:partyInfo:import\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 13:53:41');
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2019\"],\"parentId\":[\"2007\"],\"menuType\":[\"F\"],\"menuName\":[\"党员信息导入\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:partyInfo:import\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 13:53:51');
INSERT INTO `sys_oper_log` VALUES (203, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 28 条数据格式不正确，错误如下：<br/>1、账号 罗杰1 导入失败：null<br/>2、账号 罗杰2 导入失败：null<br/>3、账号 罗杰3 导入失败：null<br/>4、账号 罗杰4 导入失败：null<br/>5、账号 罗杰5 导入失败：null<br/>6、账号 罗杰6 导入失败：null<br/>7、账号 罗杰7 导入失败：null<br/>8、账号 罗杰8 导入失败：null<br/>9、账号 罗杰9 导入失败：null<br/>10、账号 罗杰10 导入失败：null<br/>11、账号 罗杰11 导入失败：null<br/>12、账号 罗杰12 导入失败：null<br/>13、账号 罗杰13 导入失败：null<br/>14、账号 罗杰14 导入失败：null<br/>15、账号 罗杰15 导入失败：null<br/>16、账号 罗杰16 导入失败：null<br/>17、账号 罗杰17 导入失败：null<br/>18、账号 罗杰18 导入失败：null<br/>19、账号 罗杰19 导入失败：null<br/>20、账号 罗杰20 导入失败：null<br/>21、账号 罗杰21 导入失败：null<br/>22、账号 罗杰22 导入失败：null<br/>23、账号 罗杰23 导入失败：null<br/>24、账号 罗杰24 导入失败：null<br/>25、账号 罗杰25 导入失败：null<br/>26、账号 罗杰26 导入失败：null<br/>27、账号 罗杰27 导入失败：null<br/>28、账号 罗杰28 导入失败：null', '2020-10-10 13:56:28');
INSERT INTO `sys_oper_log` VALUES (204, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 24 条数据格式不正确，错误如下：<br/>1、账号 罗杰1 导入失败：null<br/>2、账号 罗杰2 导入失败：null<br/>3、账号 罗杰3 导入失败：null<br/>4、账号 罗杰4 导入失败：null<br/>5、账号 罗杰5 导入失败：null<br/>6、账号 罗杰6 导入失败：null<br/>7、账号 罗杰7 导入失败：null<br/>8、账号 罗杰8 导入失败：null<br/>9、账号 罗杰9 导入失败：null<br/>10、账号 罗杰10 导入失败：null<br/>11、账号 罗杰11 导入失败：null<br/>12、账号 罗杰12 导入失败：null<br/>13、账号 罗杰13 导入失败：null<br/>14、账号 罗杰14 导入失败：null<br/>15、账号 罗杰15 导入失败：null<br/>16、账号 罗杰16 导入失败：null<br/>17、账号 罗杰17 导入失败：null<br/>18、账号 罗杰18 导入失败：null<br/>19、账号 罗杰19 导入失败：null<br/>20、账号 罗杰20 导入失败：null<br/>21、账号 罗杰21 导入失败：null<br/>22、账号 罗杰22 导入失败：null<br/>23、账号 罗杰23 导入失败：null<br/>24、账号 罗杰24 导入失败：null', '2020-10-10 14:07:37');
INSERT INTO `sys_oper_log` VALUES (205, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 24 条数据格式不正确，错误如下：<br/>1、账号 罗杰1 导入失败：null<br/>2、账号 罗杰2 导入失败：null<br/>3、账号 罗杰3 导入失败：null<br/>4、账号 罗杰4 导入失败：null<br/>5、账号 罗杰5 导入失败：null<br/>6、账号 罗杰6 导入失败：null<br/>7、账号 罗杰7 导入失败：null<br/>8、账号 罗杰8 导入失败：null<br/>9、账号 罗杰9 导入失败：null<br/>10、账号 罗杰10 导入失败：null<br/>11、账号 罗杰11 导入失败：null<br/>12、账号 罗杰12 导入失败：null<br/>13、账号 罗杰13 导入失败：null<br/>14、账号 罗杰14 导入失败：null<br/>15、账号 罗杰15 导入失败：null<br/>16、账号 罗杰16 导入失败：null<br/>17、账号 罗杰17 导入失败：null<br/>18、账号 罗杰18 导入失败：null<br/>19、账号 罗杰19 导入失败：null<br/>20、账号 罗杰20 导入失败：null<br/>21、账号 罗杰21 导入失败：null<br/>22、账号 罗杰22 导入失败：null<br/>23、账号 罗杰23 导入失败：null<br/>24、账号 罗杰24 导入失败：null', '2020-10-10 14:09:00');
INSERT INTO `sys_oper_log` VALUES (206, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 24 条数据格式不正确，错误如下：<br/>1、账号 罗杰1 导入失败：null<br/>2、账号 罗杰2 导入失败：null<br/>3、账号 罗杰3 导入失败：null<br/>4、账号 罗杰4 导入失败：null<br/>5、账号 罗杰5 导入失败：null<br/>6、账号 罗杰6 导入失败：null<br/>7、账号 罗杰7 导入失败：null<br/>8、账号 罗杰8 导入失败：null<br/>9、账号 罗杰9 导入失败：null<br/>10、账号 罗杰10 导入失败：null<br/>11、账号 罗杰11 导入失败：null<br/>12、账号 罗杰12 导入失败：null<br/>13、账号 罗杰13 导入失败：null<br/>14、账号 罗杰14 导入失败：null<br/>15、账号 罗杰15 导入失败：null<br/>16、账号 罗杰16 导入失败：null<br/>17、账号 罗杰17 导入失败：null<br/>18、账号 罗杰18 导入失败：null<br/>19、账号 罗杰19 导入失败：null<br/>20、账号 罗杰20 导入失败：null<br/>21、账号 罗杰21 导入失败：null<br/>22、账号 罗杰22 导入失败：null<br/>23、账号 罗杰23 导入失败：null<br/>24、账号 罗杰24 导入失败：null', '2020-10-10 14:11:08');
INSERT INTO `sys_oper_log` VALUES (207, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 24 条数据格式不正确，错误如下：<br/>1、账号 罗杰1 导入失败：null<br/>2、账号  导入失败：null<br/>3、账号  导入失败：null<br/>4、账号  导入失败：null<br/>5、账号  导入失败：null<br/>6、账号  导入失败：null<br/>7、账号  导入失败：null<br/>8、账号  导入失败：null<br/>9、账号  导入失败：null<br/>10、账号  导入失败：null<br/>11、账号  导入失败：null<br/>12、账号  导入失败：null<br/>13、账号  导入失败：null<br/>14、账号  导入失败：null<br/>15、账号  导入失败：null<br/>16、账号  导入失败：null<br/>17、账号  导入失败：null<br/>18、账号  导入失败：null<br/>19、账号  导入失败：null<br/>20、账号  导入失败：null<br/>21、账号  导入失败：null<br/>22、账号  导入失败：null<br/>23、账号  导入失败：null<br/>24、账号  导入失败：null', '2020-10-10 14:13:00');
INSERT INTO `sys_oper_log` VALUES (208, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 24 条数据格式不正确，错误如下：<br/>1、账号 罗杰1 导入失败：null<br/>2、账号  导入失败：null<br/>3、账号  导入失败：null<br/>4、账号  导入失败：null<br/>5、账号  导入失败：null<br/>6、账号  导入失败：null<br/>7、账号  导入失败：null<br/>8、账号  导入失败：null<br/>9、账号  导入失败：null<br/>10、账号  导入失败：null<br/>11、账号  导入失败：null<br/>12、账号  导入失败：null<br/>13、账号  导入失败：null<br/>14、账号  导入失败：null<br/>15、账号  导入失败：null<br/>16、账号  导入失败：null<br/>17、账号  导入失败：null<br/>18、账号  导入失败：null<br/>19、账号  导入失败：null<br/>20、账号  导入失败：null<br/>21、账号  导入失败：null<br/>22、账号  导入失败：null<br/>23、账号  导入失败：null<br/>24、账号  导入失败：null', '2020-10-10 14:13:43');
INSERT INTO `sys_oper_log` VALUES (209, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 24 条数据格式不正确，错误如下：<br/>1、账号 罗杰1 导入失败：null<br/>2、账号  导入失败：null<br/>3、账号  导入失败：null<br/>4、账号  导入失败：null<br/>5、账号  导入失败：null<br/>6、账号  导入失败：null<br/>7、账号  导入失败：null<br/>8、账号  导入失败：null<br/>9、账号  导入失败：null<br/>10、账号  导入失败：null<br/>11、账号  导入失败：null<br/>12、账号  导入失败：null<br/>13、账号  导入失败：null<br/>14、账号  导入失败：null<br/>15、账号  导入失败：null<br/>16、账号  导入失败：null<br/>17、账号  导入失败：null<br/>18、账号  导入失败：null<br/>19、账号  导入失败：null<br/>20、账号  导入失败：null<br/>21、账号  导入失败：null<br/>22、账号  导入失败：null<br/>23、账号  导入失败：null<br/>24、账号  导入失败：null', '2020-10-10 14:15:06');
INSERT INTO `sys_oper_log` VALUES (210, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 罗杰1 导入失败：null', '2020-10-10 14:17:17');
INSERT INTO `sys_oper_log` VALUES (211, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 罗杰1 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 14:19:57');
INSERT INTO `sys_oper_log` VALUES (212, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"学生党员信息管理\"],\"url\":[\"/admin/partyInfo\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:partyInfo:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 14:24:47');
INSERT INTO `sys_oper_log` VALUES (213, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 罗杰1 已存在', '2020-10-10 14:46:34');
INSERT INTO `sys_oper_log` VALUES (214, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 罗杰1 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 14:46:38');
INSERT INTO `sys_oper_log` VALUES (215, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 导入成功<br/>3、账号 罗杰3 导入成功<br/>4、账号 罗杰4 导入成功<br/>5、账号 罗杰5 导入成功<br/>6、账号 罗杰6 导入成功<br/>7、账号 罗杰7 导入成功<br/>8、账号 罗杰8 导入成功<br/>9、账号 罗杰9 导入成功<br/>10、账号 罗杰10 导入成功<br/>11、账号 罗杰11 导入成功<br/>12、账号 罗杰12 导入成功<br/>13、账号 罗杰13 导入成功<br/>14、账号 罗杰14 导入成功<br/>15、账号 罗杰15 导入成功<br/>16、账号 罗杰16 导入成功<br/>17、账号 罗杰17 导入成功<br/>18、账号 罗杰18 导入成功<br/>19、账号 罗杰19 导入成功<br/>20、账号 罗杰20 导入成功<br/>21、账号 罗杰21 导入成功<br/>22、账号 罗杰22 导入成功<br/>23、账号 罗杰23 导入成功<br/>24、账号 罗杰24 导入成功<br/>25、账号 罗杰25 导入成功<br/>26、账号 罗杰26 导入成功<br/>27、账号 罗杰27 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 14:46:50');
INSERT INTO `sys_oper_log` VALUES (216, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 更新成功<br/>3、账号 罗杰3 更新成功<br/>4、账号 罗杰4 更新成功<br/>5、账号 罗杰5 更新成功<br/>6、账号 罗杰6 更新成功<br/>7、账号 罗杰7 更新成功<br/>8、账号 罗杰8 更新成功<br/>9、账号 罗杰9 更新成功<br/>10、账号 罗杰10 更新成功<br/>11、账号 罗杰11 更新成功<br/>12、账号 罗杰12 更新成功<br/>13、账号 罗杰13 更新成功<br/>14、账号 罗杰14 更新成功<br/>15、账号 罗杰15 更新成功<br/>16、账号 罗杰16 更新成功<br/>17、账号 罗杰17 更新成功<br/>18、账号 罗杰18 更新成功<br/>19、账号 罗杰19 更新成功<br/>20、账号 罗杰20 更新成功<br/>21、账号 罗杰21 更新成功<br/>22、账号 罗杰22 更新成功<br/>23、账号 罗杰23 更新成功<br/>24、账号 罗杰24 更新成功<br/>25、账号 罗杰25 更新成功<br/>26、账号 罗杰26 更新成功<br/>27、账号 罗杰27 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 14:47:51');
INSERT INTO `sys_oper_log` VALUES (217, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 更新成功<br/>3、账号 罗杰3 更新成功<br/>4、账号 罗杰4 更新成功<br/>5、账号 罗杰5 更新成功<br/>6、账号 罗杰6 更新成功<br/>7、账号 罗杰7 更新成功<br/>8、账号 罗杰8 更新成功<br/>9、账号 罗杰9 更新成功<br/>10、账号 罗杰10 更新成功<br/>11、账号 罗杰11 更新成功<br/>12、账号 罗杰12 更新成功<br/>13、账号 罗杰13 更新成功<br/>14、账号 罗杰14 更新成功<br/>15、账号 罗杰15 更新成功<br/>16、账号 罗杰16 更新成功<br/>17、账号 罗杰17 更新成功<br/>18、账号 罗杰18 更新成功<br/>19、账号 罗杰19 更新成功<br/>20、账号 罗杰20 更新成功<br/>21、账号 罗杰21 更新成功<br/>22、账号 罗杰22 更新成功<br/>23、账号 罗杰23 更新成功<br/>24、账号 罗杰24 更新成功<br/>25、账号 罗杰25 更新成功<br/>26、账号 罗杰26 更新成功<br/>27、账号 罗杰27 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 14:53:07');
INSERT INTO `sys_oper_log` VALUES (218, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 更新成功<br/>3、账号 罗杰3 更新成功<br/>4、账号 罗杰4 更新成功<br/>5、账号 罗杰5 更新成功<br/>6、账号 罗杰6 更新成功<br/>7、账号 罗杰7 更新成功<br/>8、账号 罗杰8 更新成功<br/>9、账号 罗杰9 更新成功<br/>10、账号 罗杰10 更新成功<br/>11、账号 罗杰11 更新成功<br/>12、账号 罗杰12 更新成功<br/>13、账号 罗杰13 更新成功<br/>14、账号 罗杰14 更新成功<br/>15、账号 罗杰15 更新成功<br/>16、账号 罗杰16 更新成功<br/>17、账号 罗杰17 更新成功<br/>18、账号 罗杰18 更新成功<br/>19、账号 罗杰19 更新成功<br/>20、账号 罗杰20 更新成功<br/>21、账号 罗杰21 更新成功<br/>22、账号 罗杰22 更新成功<br/>23、账号 罗杰23 更新成功<br/>24、账号 罗杰24 更新成功<br/>25、账号 罗杰25 更新成功<br/>26、账号 罗杰26 更新成功<br/>27、账号 罗杰27 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 14:58:32');
INSERT INTO `sys_oper_log` VALUES (219, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 更新成功<br/>3、账号 罗杰3 更新成功<br/>4、账号 罗杰4 更新成功<br/>5、账号 罗杰5 更新成功<br/>6、账号 罗杰6 更新成功<br/>7、账号 罗杰7 更新成功<br/>8、账号 罗杰8 更新成功<br/>9、账号 罗杰9 更新成功<br/>10、账号 罗杰10 更新成功<br/>11、账号 罗杰11 更新成功<br/>12、账号 罗杰12 更新成功<br/>13、账号 罗杰13 更新成功<br/>14、账号 罗杰14 更新成功<br/>15、账号 罗杰15 更新成功<br/>16、账号 罗杰16 更新成功<br/>17、账号 罗杰17 更新成功<br/>18、账号 罗杰18 更新成功<br/>19、账号 罗杰19 更新成功<br/>20、账号 罗杰20 更新成功<br/>21、账号 罗杰21 更新成功<br/>22、账号 罗杰22 更新成功<br/>23、账号 罗杰23 更新成功<br/>24、账号 罗杰24 更新成功<br/>25、账号 罗杰25 更新成功<br/>26、账号 罗杰26 更新成功<br/>27、账号 罗杰27 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:04:46');
INSERT INTO `sys_oper_log` VALUES (220, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 更新成功<br/>3、账号 罗杰3 更新成功<br/>4、账号 罗杰4 更新成功<br/>5、账号 罗杰5 更新成功<br/>6、账号 罗杰6 更新成功<br/>7、账号 罗杰7 更新成功<br/>8、账号 罗杰8 更新成功<br/>9、账号 罗杰9 更新成功<br/>10、账号 罗杰10 更新成功<br/>11、账号 罗杰11 更新成功<br/>12、账号 罗杰12 更新成功<br/>13、账号 罗杰13 更新成功<br/>14、账号 罗杰14 更新成功<br/>15、账号 罗杰15 更新成功<br/>16、账号 罗杰16 更新成功<br/>17、账号 罗杰17 更新成功<br/>18、账号 罗杰18 更新成功<br/>19、账号 罗杰19 更新成功<br/>20、账号 罗杰20 更新成功<br/>21、账号 罗杰21 更新成功<br/>22、账号 罗杰22 更新成功<br/>23、账号 罗杰23 更新成功<br/>24、账号 罗杰24 更新成功<br/>25、账号 罗杰25 更新成功<br/>26、账号 罗杰26 更新成功<br/>27、账号 罗杰27 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:05:26');
INSERT INTO `sys_oper_log` VALUES (221, '党员信息', 2, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/edit', '127.0.0.1', '内网IP', '{\"partyId\":[\"5\"],\"partyStudentNumber\":[\"1812630733\"],\"partyName\":[\"罗杰4\"],\"partyClass\":[\"软件190\"],\"partySex\":[\"2\"],\"partyBirthday\":[\"2020-10-13\"],\"partyNativePlace\":[\"江苏盐城\"],\"partyIdcard\":[\"500385202010101000\"],\"partyJoinTime\":[\"2020-10-13\"],\"partyJoinApplication\":[\"0\"],\"partyInspect\":[\"0\"],\"partyFormalApplication\":[\"0\"],\"partyThoughtReport\":[\"0\"],\"partyStudentPost\":[\"无\"],\"partyRewardsPunishments\":[\"无\"],\"partyOtherInfo\":[\"无\"],\"partyHeadMaster\":[\"季芳芳\"],\"partyConnect\":[\"15696756585\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:07:01');
INSERT INTO `sys_oper_log` VALUES (222, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 更新成功<br/>3、账号 罗杰3 更新成功<br/>4、账号 罗杰4 更新成功<br/>5、账号 罗杰5 更新成功<br/>6、账号 罗杰6 更新成功<br/>7、账号 罗杰7 更新成功<br/>8、账号 罗杰8 更新成功<br/>9、账号 罗杰9 更新成功<br/>10、账号 罗杰10 更新成功<br/>11、账号 罗杰11 更新成功<br/>12、账号 罗杰12 更新成功<br/>13、账号 罗杰13 更新成功<br/>14、账号 罗杰14 更新成功<br/>15、账号 罗杰15 更新成功<br/>16、账号 罗杰16 更新成功<br/>17、账号 罗杰17 更新成功<br/>18、账号 罗杰18 更新成功<br/>19、账号 罗杰19 更新成功<br/>20、账号 罗杰20 更新成功<br/>21、账号 罗杰21 更新成功<br/>22、账号 罗杰22 更新成功<br/>23、账号 罗杰23 更新成功<br/>24、账号 罗杰24 更新成功<br/>25、账号 罗杰25 更新成功<br/>26、账号 罗杰26 更新成功<br/>27、账号 罗杰27 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:08:06');
INSERT INTO `sys_oper_log` VALUES (223, '党员信息', 2, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/edit', '127.0.0.1', '内网IP', '{\"partyId\":[\"3\"],\"partyStudentNumber\":[\"1812630731\"],\"partyName\":[\"罗杰2\"],\"partyClass\":[\"软件188\"],\"partySex\":[\"2\"],\"partyBirthday\":[\"2020-10-11\"],\"partyNativePlace\":[\"江苏盐城\"],\"partyIdcard\":[\"500385202010101000\"],\"partyJoinTime\":[\"2020-10-11\"],\"partyJoinApplication\":[\"0\"],\"partyInspect\":[\"0\"],\"partyFormalApplication\":[\"0\"],\"partyThoughtReport\":[\"0\"],\"partyStudentPost\":[\"无\"],\"partyRewardsPunishments\":[\"无\"],\"partyOtherInfo\":[\"无\"],\"partyHeadMaster\":[\"季芳芳\"],\"partyConnect\":[\"15696756583\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:11:51');
INSERT INTO `sys_oper_log` VALUES (224, '党员信息', 2, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/edit', '127.0.0.1', '内网IP', '{\"partyId\":[\"2\"],\"partyStudentNumber\":[\"1812630730\"],\"partyName\":[\"罗杰1\"],\"partyClass\":[\"软件187\"],\"partySex\":[\"0\"],\"partyBirthday\":[\"2020-10-10\"],\"partyNativePlace\":[\"江苏盐城\"],\"partyIdcard\":[\"500385202010100990\"],\"partyJoinTime\":[\"2020-10-10\"],\"partyJoinApplication\":[\"0\"],\"partyInspect\":[\"0\"],\"partyFormalApplication\":[\"0\"],\"partyThoughtReport\":[\"0\"],\"partyStudentPost\":[\"无\"],\"partyRewardsPunishments\":[\"无\"],\"partyOtherInfo\":[\"无\"],\"partyHeadMaster\":[\"季芳芳\"],\"partyConnect\":[\"15696756582\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:12:19');
INSERT INTO `sys_oper_log` VALUES (225, '党员信息', 2, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/edit', '127.0.0.1', '内网IP', '{\"partyId\":[\"1\"],\"partyStudentNumber\":[\"1812630730\"],\"partyName\":[\"罗杰\"],\"partyClass\":[\"软件187\"],\"partySex\":[\"0\"],\"partyBirthday\":[\"2020-10-10\"],\"partyNativePlace\":[\"江苏盐城\"],\"partyIdcard\":[\"500385202010101125\"],\"partyJoinTime\":[\"2020-10-10\"],\"partyJoinApplication\":[\"0\"],\"partyInspect\":[\"0\"],\"partyFormalApplication\":[\"0\"],\"partyThoughtReport\":[\"0\"],\"partyStudentPost\":[\"无\"],\"partyRewardsPunishments\":[\"无\"],\"partyOtherInfo\":[\"无\"],\"partyHeadMaster\":[\"季方方\"],\"partyConnect\":[\"15696756582\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:13:43');
INSERT INTO `sys_oper_log` VALUES (226, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 更新成功<br/>3、账号 罗杰3 更新成功<br/>4、账号 罗杰4 更新成功<br/>5、账号 罗杰5 更新成功<br/>6、账号 罗杰6 更新成功<br/>7、账号 罗杰7 更新成功<br/>8、账号 罗杰8 更新成功<br/>9、账号 罗杰9 更新成功<br/>10、账号 罗杰10 更新成功<br/>11、账号 罗杰11 更新成功<br/>12、账号 罗杰12 更新成功<br/>13、账号 罗杰13 更新成功<br/>14、账号 罗杰14 更新成功<br/>15、账号 罗杰15 更新成功<br/>16、账号 罗杰16 更新成功<br/>17、账号 罗杰17 更新成功<br/>18、账号 罗杰18 更新成功<br/>19、账号 罗杰19 更新成功<br/>20、账号 罗杰20 更新成功<br/>21、账号 罗杰21 更新成功<br/>22、账号 罗杰22 更新成功<br/>23、账号 罗杰23 更新成功<br/>24、账号 罗杰24 更新成功<br/>25、账号 罗杰25 更新成功<br/>26、账号 罗杰26 更新成功<br/>27、账号 罗杰27 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:14:19');
INSERT INTO `sys_oper_log` VALUES (227, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 更新成功<br/>3、账号 罗杰3 更新成功<br/>4、账号 罗杰4 更新成功<br/>5、账号 罗杰5 更新成功<br/>6、账号 罗杰6 更新成功<br/>7、账号 罗杰7 更新成功<br/>8、账号 罗杰8 更新成功<br/>9、账号 罗杰9 更新成功<br/>10、账号 罗杰10 更新成功<br/>11、账号 罗杰11 更新成功<br/>12、账号 罗杰12 更新成功<br/>13、账号 罗杰13 更新成功<br/>14、账号 罗杰14 更新成功<br/>15、账号 罗杰15 更新成功<br/>16、账号 罗杰16 更新成功<br/>17、账号 罗杰17 更新成功<br/>18、账号 罗杰18 更新成功<br/>19、账号 罗杰19 更新成功<br/>20、账号 罗杰20 更新成功<br/>21、账号 罗杰21 更新成功<br/>22、账号 罗杰22 更新成功<br/>23、账号 罗杰23 更新成功<br/>24、账号 罗杰24 更新成功<br/>25、账号 罗杰25 更新成功<br/>26、账号 罗杰26 更新成功<br/>27、账号 罗杰27 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:17:06');
INSERT INTO `sys_oper_log` VALUES (228, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 更新成功<br/>3、账号 罗杰3 更新成功<br/>4、账号 罗杰4 更新成功<br/>5、账号 罗杰5 更新成功<br/>6、账号 罗杰6 更新成功<br/>7、账号 罗杰7 更新成功<br/>8、账号 罗杰8 更新成功<br/>9、账号 罗杰9 更新成功<br/>10、账号 罗杰10 更新成功<br/>11、账号 罗杰11 更新成功<br/>12、账号 罗杰12 更新成功<br/>13、账号 罗杰13 更新成功<br/>14、账号 罗杰14 更新成功<br/>15、账号 罗杰15 更新成功<br/>16、账号 罗杰16 更新成功<br/>17、账号 罗杰17 更新成功<br/>18、账号 罗杰18 更新成功<br/>19、账号 罗杰19 更新成功<br/>20、账号 罗杰20 更新成功<br/>21、账号 罗杰21 更新成功<br/>22、账号 罗杰22 更新成功<br/>23、账号 罗杰23 更新成功<br/>24、账号 罗杰24 更新成功<br/>25、账号 罗杰25 更新成功<br/>26、账号 罗杰26 更新成功<br/>27、账号 罗杰27 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:20:19');
INSERT INTO `sys_oper_log` VALUES (229, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 更新成功<br/>3、账号 罗杰3 更新成功<br/>4、账号 罗杰4 更新成功<br/>5、账号 罗杰5 更新成功<br/>6、账号 罗杰6 更新成功<br/>7、账号 罗杰7 更新成功<br/>8、账号 罗杰8 更新成功<br/>9、账号 罗杰9 更新成功<br/>10、账号 罗杰10 更新成功<br/>11、账号 罗杰11 更新成功<br/>12、账号 罗杰12 更新成功<br/>13、账号 罗杰13 更新成功<br/>14、账号 罗杰14 更新成功<br/>15、账号 罗杰15 更新成功<br/>16、账号 罗杰16 更新成功<br/>17、账号 罗杰17 更新成功<br/>18、账号 罗杰18 更新成功<br/>19、账号 罗杰19 更新成功<br/>20、账号 罗杰20 更新成功<br/>21、账号 罗杰21 更新成功<br/>22、账号 罗杰22 更新成功<br/>23、账号 罗杰23 更新成功<br/>24、账号 罗杰24 更新成功<br/>25、账号 罗杰25 更新成功<br/>26、账号 罗杰26 更新成功<br/>27、账号 罗杰27 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:22:20');
INSERT INTO `sys_oper_log` VALUES (230, '党员信息', 2, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/edit', '127.0.0.1', '内网IP', '{\"partyId\":[\"4\"],\"partyStudentNumber\":[\"1812630732\"],\"partyName\":[\"罗杰3\"],\"partyClass\":[\"软件189\"],\"partySex\":[\"2\"],\"partyBirthday\":[\"2020-10-12\"],\"partyNativePlace\":[\"江苏盐城\"],\"partyIdcard\":[\"500385202010101000\"],\"partyJoinTime\":[\"2020-10-12\"],\"partyJoinApplication\":[\"1\"],\"partyInspect\":[\"0\"],\"partyFormalApplication\":[\"0\"],\"partyThoughtReport\":[\"0\"],\"partyStudentPost\":[\"无\"],\"partyRewardsPunishments\":[\"无\"],\"partyOtherInfo\":[\"无\"],\"partyHeadMaster\":[\"季芳芳\"],\"partyConnect\":[\"15696756584\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 15:23:08');
INSERT INTO `sys_oper_log` VALUES (231, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 27 条，数据如下：<br/>1、账号 罗杰1 更新成功<br/>2、账号 罗杰2 更新成功<br/>3、账号 罗杰3 更新成功<br/>4、账号 罗杰4 更新成功<br/>5、账号 罗杰5 更新成功<br/>6、账号 罗杰6 更新成功<br/>7、账号 罗杰7 更新成功<br/>8、账号 罗杰8 更新成功<br/>9、账号 罗杰9 更新成功<br/>10、账号 罗杰10 更新成功<br/>11、账号 罗杰11 更新成功<br/>12、账号 罗杰12 更新成功<br/>13、账号 罗杰13 更新成功<br/>14、账号 罗杰14 更新成功<br/>15、账号 罗杰15 更新成功<br/>16、账号 罗杰16 更新成功<br/>17、账号 罗杰17 更新成功<br/>18、账号 罗杰18 更新成功<br/>19、账号 罗杰19 更新成功<br/>20、账号 罗杰20 更新成功<br/>21、账号 罗杰21 更新成功<br/>22、账号 罗杰22 更新成功<br/>23、账号 罗杰23 更新成功<br/>24、账号 罗杰24 更新成功<br/>25、账号 罗杰25 更新成功<br/>26、账号 罗杰26 更新成功<br/>27、账号 罗杰27 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:35:10');
INSERT INTO `sys_oper_log` VALUES (232, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 罗杰1 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:37:12');
INSERT INTO `sys_oper_log` VALUES (233, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 罗杰1 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:38:47');
INSERT INTO `sys_oper_log` VALUES (234, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 罗杰1 已存在', '2020-10-10 16:39:35');
INSERT INTO `sys_oper_log` VALUES (235, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 罗杰1 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:39:40');
INSERT INTO `sys_oper_log` VALUES (236, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 罗杰1 已存在', '2020-10-10 16:43:58');
INSERT INTO `sys_oper_log` VALUES (237, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 陈章月 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:44:36');
INSERT INTO `sys_oper_log` VALUES (238, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 陈章月 已存在', '2020-10-10 16:45:08');
INSERT INTO `sys_oper_log` VALUES (239, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:45:19');
INSERT INTO `sys_oper_log` VALUES (240, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 陈章月 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:47:06');
INSERT INTO `sys_oper_log` VALUES (241, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:47:45');
INSERT INTO `sys_oper_log` VALUES (242, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:50:40');
INSERT INTO `sys_oper_log` VALUES (243, '党员信息', 2, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/edit', '127.0.0.1', '内网IP', '{\"partyId\":[\"30\"],\"partyStudentNumber\":[\"1812630756\"],\"partyName\":[\"陈章月\"],\"partyClass\":[\"软件187\"],\"partySex\":[\"0\"],\"partyBirthday\":[\"2020-10-10\"],\"partyNativePlace\":[\"江苏盐城\"],\"partyIdcard\":[\"500385202010101000\"],\"partyJoinTime\":[\"2020-10-10\"],\"partyJoinApplication\":[\"1\"],\"partyInspect\":[\"1\"],\"partyFormalApplication\":[\"0\"],\"partyThoughtReport\":[\"0\"],\"partyStudentPost\":[\"无\"],\"partyRewardsPunishments\":[\"无\"],\"partyOtherInfo\":[\"无\"],\"partyHeadMaster\":[\"季芳芳\"],\"partyConnect\":[\"15696756582\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:52:45');
INSERT INTO `sys_oper_log` VALUES (244, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:53:49');
INSERT INTO `sys_oper_log` VALUES (245, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:56:22');
INSERT INTO `sys_oper_log` VALUES (246, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 21 条，数据如下：<br/>1、账号 陈章月 更新成功<br/>2、账号 陈章月 更新成功<br/>3、账号 陈章月 更新成功<br/>4、账号 陈章月 更新成功<br/>5、账号 陈章月 更新成功<br/>6、账号 陈章月 更新成功<br/>7、账号 陈章月 更新成功<br/>8、账号 陈章月 更新成功<br/>9、账号 陈章月 更新成功<br/>10、账号 陈章月 更新成功<br/>11、账号 陈章月 更新成功<br/>12、账号 陈章月 更新成功<br/>13、账号 陈章月 更新成功<br/>14、账号 陈章月 更新成功<br/>15、账号 陈章月 更新成功<br/>16、账号 陈章月 更新成功<br/>17、账号 陈章月 更新成功<br/>18、账号 陈章月 更新成功<br/>19、账号 陈章月 更新成功<br/>20、账号 陈章月 更新成功<br/>21、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:58:57');
INSERT INTO `sys_oper_log` VALUES (247, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 21 条，数据如下：<br/>1、账号 陈章月 更新成功<br/>2、账号 陈章月 更新成功<br/>3、账号 陈章月 更新成功<br/>4、账号 陈章月 更新成功<br/>5、账号 陈章月 更新成功<br/>6、账号 陈章月 更新成功<br/>7、账号 陈章月 更新成功<br/>8、账号 陈章月 更新成功<br/>9、账号 陈章月 更新成功<br/>10、账号 陈章月 更新成功<br/>11、账号 陈章月 更新成功<br/>12、账号 陈章月 更新成功<br/>13、账号 陈章月 更新成功<br/>14、账号 陈章月 更新成功<br/>15、账号 陈章月 更新成功<br/>16、账号 陈章月 更新成功<br/>17、账号 陈章月 更新成功<br/>18、账号 陈章月 更新成功<br/>19、账号 陈章月 更新成功<br/>20、账号 陈章月 更新成功<br/>21、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 16:59:46');
INSERT INTO `sys_oper_log` VALUES (248, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 21 条数据格式不正确，错误如下：<br/>1、账号 陈章月 已存在<br/>2、账号 陈章月 已存在<br/>3、账号 陈章月 已存在<br/>4、账号 陈章月 已存在<br/>5、账号 陈章月 已存在<br/>6、账号 陈章月 已存在<br/>7、账号 陈章月 已存在<br/>8、账号 陈章月 已存在<br/>9、账号 陈章月 已存在<br/>10、账号 陈章月 已存在<br/>11、账号 陈章月 已存在<br/>12、账号 陈章月 已存在<br/>13、账号 陈章月 已存在<br/>14、账号 陈章月 已存在<br/>15、账号 陈章月 已存在<br/>16、账号 陈章月 已存在<br/>17、账号 陈章月 已存在<br/>18、账号 陈章月 已存在<br/>19、账号 陈章月 已存在<br/>20、账号 陈章月 已存在<br/>21、账号 陈章月 已存在', '2020-10-10 17:00:13');
INSERT INTO `sys_oper_log` VALUES (249, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 21 条，数据如下：<br/>1、账号 陈章月 更新成功<br/>2、账号 陈章月 更新成功<br/>3、账号 陈章月 更新成功<br/>4、账号 陈章月 更新成功<br/>5、账号 陈章月 更新成功<br/>6、账号 陈章月 更新成功<br/>7、账号 陈章月 更新成功<br/>8、账号 陈章月 更新成功<br/>9、账号 陈章月 更新成功<br/>10、账号 陈章月 更新成功<br/>11、账号 陈章月 更新成功<br/>12、账号 陈章月 更新成功<br/>13、账号 陈章月 更新成功<br/>14、账号 陈章月 更新成功<br/>15、账号 陈章月 更新成功<br/>16、账号 陈章月 更新成功<br/>17、账号 陈章月 更新成功<br/>18、账号 陈章月 更新成功<br/>19、账号 陈章月 更新成功<br/>20、账号 陈章月 更新成功<br/>21、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 17:00:21');
INSERT INTO `sys_oper_log` VALUES (250, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 21 条，数据如下：<br/>1、账号 陈章月 更新成功<br/>2、账号 陈章月 更新成功<br/>3、账号 陈章月 更新成功<br/>4、账号 陈章月 更新成功<br/>5、账号 陈章月 更新成功<br/>6、账号 陈章月 更新成功<br/>7、账号 陈章月 更新成功<br/>8、账号 陈章月 更新成功<br/>9、账号 陈章月 更新成功<br/>10、账号 陈章月 更新成功<br/>11、账号 陈章月 更新成功<br/>12、账号 陈章月 更新成功<br/>13、账号 陈章月 更新成功<br/>14、账号 陈章月 更新成功<br/>15、账号 陈章月 更新成功<br/>16、账号 陈章月 更新成功<br/>17、账号 陈章月 更新成功<br/>18、账号 陈章月 更新成功<br/>19、账号 陈章月 更新成功<br/>20、账号 陈章月 更新成功<br/>21、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 17:01:58');
INSERT INTO `sys_oper_log` VALUES (251, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 21 条，数据如下：<br/>1、账号 陈章月 更新成功<br/>2、账号 陈章月 更新成功<br/>3、账号 陈章月 更新成功<br/>4、账号 陈章月 更新成功<br/>5、账号 陈章月 更新成功<br/>6、账号 陈章月 更新成功<br/>7、账号 陈章月 更新成功<br/>8、账号 陈章月 更新成功<br/>9、账号 陈章月 更新成功<br/>10、账号 陈章月 更新成功<br/>11、账号 陈章月 更新成功<br/>12、账号 陈章月 更新成功<br/>13、账号 陈章月 更新成功<br/>14、账号 陈章月 更新成功<br/>15、账号 陈章月 更新成功<br/>16、账号 陈章月 更新成功<br/>17、账号 陈章月 更新成功<br/>18、账号 陈章月 更新成功<br/>19、账号 陈章月 更新成功<br/>20、账号 陈章月 更新成功<br/>21、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 17:04:20');
INSERT INTO `sys_oper_log` VALUES (252, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 21 条，数据如下：<br/>1、账号 陈章月 更新成功<br/>2、账号 陈章月 更新成功<br/>3、账号 陈章月 更新成功<br/>4、账号 陈章月 更新成功<br/>5、账号 陈章月 更新成功<br/>6、账号 陈章月 更新成功<br/>7、账号 陈章月 更新成功<br/>8、账号 陈章月 更新成功<br/>9、账号 陈章月 更新成功<br/>10、账号 陈章月 更新成功<br/>11、账号 陈章月 更新成功<br/>12、账号 陈章月 更新成功<br/>13、账号 陈章月 更新成功<br/>14、账号 陈章月 更新成功<br/>15、账号 陈章月 更新成功<br/>16、账号 陈章月 更新成功<br/>17、账号 陈章月 更新成功<br/>18、账号 陈章月 更新成功<br/>19、账号 陈章月 更新成功<br/>20、账号 陈章月 更新成功<br/>21、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 17:09:54');
INSERT INTO `sys_oper_log` VALUES (253, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 21 条，数据如下：<br/>1、账号 陈章月1 导入成功<br/>2、账号 陈章月2 导入成功<br/>3、账号 陈章月3 导入成功<br/>4、账号 陈章月4 导入成功<br/>5、账号 陈章月5 导入成功<br/>6、账号 陈章月6 导入成功<br/>7、账号 陈章月7 导入成功<br/>8、账号 陈章月8 导入成功<br/>9、账号 陈章月9 导入成功<br/>10、账号 陈章月10 导入成功<br/>11、账号 陈章月11 导入成功<br/>12、账号 陈章月12 导入成功<br/>13、账号 陈章月13 导入成功<br/>14、账号 陈章月14 导入成功<br/>15、账号 陈章月15 导入成功<br/>16、账号 陈章月16 导入成功<br/>17、账号 陈章月17 导入成功<br/>18、账号 陈章月18 导入成功<br/>19、账号 陈章月19 导入成功<br/>20、账号 陈章月20 导入成功<br/>21、账号 陈章月21 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 17:10:16');
INSERT INTO `sys_oper_log` VALUES (254, '党员信息管理', 6, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 21 条，数据如下：<br/>1、账号 陈章月1 更新成功<br/>2、账号 陈章月2 更新成功<br/>3、账号 陈章月3 更新成功<br/>4、账号 陈章月4 更新成功<br/>5、账号 陈章月5 更新成功<br/>6、账号 陈章月6 更新成功<br/>7、账号 陈章月7 更新成功<br/>8、账号 陈章月8 更新成功<br/>9、账号 陈章月9 更新成功<br/>10、账号 陈章月10 更新成功<br/>11、账号 陈章月11 更新成功<br/>12、账号 陈章月12 更新成功<br/>13、账号 陈章月13 更新成功<br/>14、账号 陈章月14 更新成功<br/>15、账号 陈章月15 更新成功<br/>16、账号 陈章月16 更新成功<br/>17、账号 陈章月17 更新成功<br/>18、账号 陈章月18 更新成功<br/>19、账号 陈章月19 更新成功<br/>20、账号 陈章月20 更新成功<br/>21、账号 陈章月21 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-10 17:10:45');
INSERT INTO `sys_oper_log` VALUES (255, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"106\"],\"userName\":[\"luna\"],\"dept.deptName\":[\"第四支部\"],\"phonenumber\":[\"15696756582\"],\"email\":[\"Iszychen@gmail.com\"],\"loginName\":[\"luna\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 19:25:52');
INSERT INTO `sys_oper_log` VALUES (256, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"106\"],\"userName\":[\"luna\"],\"dept.deptName\":[\"第四支部\"],\"phonenumber\":[\"15696756582\"],\"email\":[\"Iszychen@gmail.com\"],\"loginName\":[\"luna\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 19:26:10');
INSERT INTO `sys_oper_log` VALUES (257, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"106\"],\"userName\":[\"luna\"],\"dept.deptName\":[\"第四支部\"],\"phonenumber\":[\"15696756582\"],\"email\":[\"Iszychen@gmail.com\"],\"loginName\":[\"luna\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 19:27:00');
INSERT INTO `sys_oper_log` VALUES (258, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"106\"],\"userName\":[\"luna\"],\"dept.deptName\":[\"第四支部\"],\"phonenumber\":[\"15696756582\"],\"email\":[\"Iszychen@gmail.com\"],\"loginName\":[\"luna\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 19:32:23');
INSERT INTO `sys_oper_log` VALUES (259, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_news_documentary\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 20:39:33');
INSERT INTO `sys_oper_log` VALUES (260, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"sys_news_documentary\"],\"tableComment\":[\"党建纪实\"],\"className\":[\"NewsDocumentary\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"103\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"纪实Id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"documentaryId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"104\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"纪实主题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"documentaryTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"105\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"纪实详情\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"documentaryContent\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"summernote\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"106\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"活动地点\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"documentaryActiveAddress\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"107\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"起始时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"documentaryStartTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"108\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 20:41:55');
INSERT INTO `sys_oper_log` VALUES (261, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_news_documentary', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-14 20:42:00');
INSERT INTO `sys_oper_log` VALUES (262, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_news_documentary', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-14 20:42:01');
INSERT INTO `sys_oper_log` VALUES (263, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p><img src=\\\"http://localhost:8080/party-platform/profile/upload/2020/10/14/39d18d64-660a-4345-b6ce-491c08e81924.jpg\\\" style=\\\"width: 50%;\\\">新版本内容</p>\"],\"documentaryActiveAddress\":[\"\"],\"documentaryStartTime\":[\"\"],\"documentaryEndTime\":[\"\"],\"documentaryJionPeople\":[\"\"],\"documentaryOtherPeople\":[\"1\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 20:48:50');
INSERT INTO `sys_oper_log` VALUES (264, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"\"],\"documentaryStartTime\":[\"\"],\"documentaryEndTime\":[\"\"],\"documentaryJionPeople\":[\"\"],\"documentaryOtherPeople\":[\"1\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 20:49:09');
INSERT INTO `sys_oper_log` VALUES (265, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,104,105,106,102,108,109\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 21:21:46');
INSERT INTO `sys_oper_log` VALUES (266, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,104,105,106,102,108,109\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 21:22:24');
INSERT INTO `sys_oper_log` VALUES (267, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,104,105,106,102,108,109\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 21:24:28');
INSERT INTO `sys_oper_log` VALUES (268, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"\"],\"documentaryStartTime\":[\"\"],\"documentaryEndTime\":[\"\"],\"documentaryStatus\":[\"1\"],\"documentaryOtherPeople\":[\"1\"],\"remark\":[\"管理员\"],\"menuIds\":[\"100,101,103,1,104,105,2,106,100,102,108,109\"]}', '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-10-14 21:48:57');
INSERT INTO `sys_oper_log` VALUES (269, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"123123\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-06\"],\"documentaryStatus\":[\"1\"],\"documentaryOtherPeople\":[\"1\"],\"remark\":[\"管理员\"],\"menuIds\":[\"100,101,103,1,104,105,2,106,100,102,108,109\"]}', '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-10-14 21:49:56');
INSERT INTO `sys_oper_log` VALUES (270, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"主楼B403\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-14\"],\"documentaryStatus\":[\"1\"],\"documentaryOtherPeople\":[\"1\"],\"remark\":[\"管理员\"],\"menuIds\":[\"100,101,103,1,104,105,2,106,100,102,108,109\"]}', '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-10-14 21:53:39');
INSERT INTO `sys_oper_log` VALUES (271, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"menuIds\":[\"100,101,103,1,104,105,2,106,100,102,108,109\"],\"documentaryId\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 21:59:24');
INSERT INTO `sys_oper_log` VALUES (272, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-10-14 22:06:44');
INSERT INTO `sys_oper_log` VALUES (273, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-10-14 22:06:53');
INSERT INTO `sys_oper_log` VALUES (274, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-10-14 22:07:42');
INSERT INTO `sys_oper_log` VALUES (275, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-10-14 22:07:59');
INSERT INTO `sys_oper_log` VALUES (276, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"主楼B403\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-14\"],\"documentaryOtherPeople\":[\"1213123\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 22:08:31');
INSERT INTO `sys_oper_log` VALUES (277, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"主楼B403\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-14\"],\"documentaryOtherPeople\":[\"12131234\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 22:10:25');
INSERT INTO `sys_oper_log` VALUES (278, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"主楼B403\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-14\"],\"documentaryOtherPeople\":[\"1213\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 22:12:43');
INSERT INTO `sys_oper_log` VALUES (279, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"主楼B403\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-14\"],\"documentaryOtherPeople\":[\"12134\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 22:13:37');
INSERT INTO `sys_oper_log` VALUES (280, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"主楼B403\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-14\"],\"documentaryOtherPeople\":[\"12134\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 22:24:50');
INSERT INTO `sys_oper_log` VALUES (281, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"主楼B403\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-14\"],\"documentaryOtherPeople\":[\"12134\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 22:26:48');
INSERT INTO `sys_oper_log` VALUES (282, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"主楼B403\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-14\"],\"documentaryOtherPeople\":[\"12134\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 22:28:15');
INSERT INTO `sys_oper_log` VALUES (283, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"小明\"],\"deptName\":[\"第一支部\"],\"phonenumber\":[\"15696756583\"],\"email\":[\"15696756583@163.com\"],\"loginName\":[\"luna1\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 22:49:23');
INSERT INTO `sys_oper_log` VALUES (284, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"三会一课开课啦\"],\"documentaryContent\":[\"<p>新版本内容</p>\"],\"documentaryActiveAddress\":[\"主楼B403\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-14\"],\"documentaryOtherPeople\":[\"12134\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 23:02:23');
INSERT INTO `sys_oper_log` VALUES (285, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"党建纪实\"],\"documentaryContent\":[\"<p>党建纪实</p>\"],\"documentaryActiveAddress\":[\"主楼B403\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-14\"],\"documentaryOtherPeople\":[\"乔伟,陈章月\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 23:03:14');
INSERT INTO `sys_oper_log` VALUES (286, '党建纪实', 5, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/export', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"\"],\"documentaryActiveAddress\":[\"\"],\"params[beginDocumentaryStartTime]\":[\"\"],\"params[endDocumentaryStartTime]\":[\"\"],\"params[beginDocumentaryEndTime]\":[\"\"],\"params[endDocumentaryEndTime]\":[\"\"],\"documentaryJionPeople\":[\"\"],\"documentaryOtherPeople\":[\"\"],\"documentaryStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"0662d184-38f6-4058-9ce3-5cbf5dabfe0b_documentary.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 23:03:28');
INSERT INTO `sys_oper_log` VALUES (287, '党建纪实', 5, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/export', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"\"],\"documentaryActiveAddress\":[\"\"],\"params[beginDocumentaryStartTime]\":[\"\"],\"params[endDocumentaryStartTime]\":[\"\"],\"params[beginDocumentaryEndTime]\":[\"\"],\"params[endDocumentaryEndTime]\":[\"\"],\"documentaryJionPeople\":[\"\"],\"documentaryOtherPeople\":[\"\"],\"documentaryStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"6d1b9b79-59b4-42a3-bf47-83735b77ed20_documentary.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 23:13:36');
INSERT INTO `sys_oper_log` VALUES (288, '党建纪实', 5, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/export', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"\"],\"documentaryActiveAddress\":[\"\"],\"params[beginDocumentaryStartTime]\":[\"\"],\"params[endDocumentaryStartTime]\":[\"\"],\"params[beginDocumentaryEndTime]\":[\"\"],\"params[endDocumentaryEndTime]\":[\"\"],\"documentaryJionPeople\":[\"\"],\"documentaryOtherPeople\":[\"\"],\"documentaryStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"e0e58bbc-e5f8-4124-9037-27cbc9697f2c_documentary.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 23:19:13');
INSERT INTO `sys_oper_log` VALUES (289, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_religion\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-14 23:58:47');
INSERT INTO `sys_oper_log` VALUES (290, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"sys_religion\"],\"tableComment\":[\"留学人员\"],\"className\":[\"Religion\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"117\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"留学人员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"religionId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"118\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"religionNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"119\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"religionCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"120\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"religionName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"121\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"religionSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"122\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-15 00:01:06');
INSERT INTO `sys_oper_log` VALUES (291, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-15 00:01:11');
INSERT INTO `sys_oper_log` VALUES (292, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-15 00:28:31');
INSERT INTO `sys_oper_log` VALUES (293, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"sys_religion\"],\"tableComment\":[\"留学人员\"],\"className\":[\"Religion\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"117\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"留学人员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"religionId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"118\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"religionNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"119\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"religionCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"120\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"religionName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"121\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"religionSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"122\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-15 00:28:43');
INSERT INTO `sys_oper_log` VALUES (294, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-15 00:28:50');
INSERT INTO `sys_oper_log` VALUES (295, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_news_documentary', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-16 14:40:26');
INSERT INTO `sys_oper_log` VALUES (296, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_news_documentary', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-16 14:40:26');
INSERT INTO `sys_oper_log` VALUES (297, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-16 19:47:58');
INSERT INTO `sys_oper_log` VALUES (298, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_religion\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-16 19:48:06');
INSERT INTO `sys_oper_log` VALUES (299, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-16 19:49:26');
INSERT INTO `sys_oper_log` VALUES (300, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_religion\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-16 19:49:32');
INSERT INTO `sys_oper_log` VALUES (301, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"sys_religion\"],\"tableComment\":[\"留学人员\"],\"className\":[\"Religion\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"153\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"留学人员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"religionId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"154\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"religionNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"155\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"religionCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"156\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"religionName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"157\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"religionSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"158\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].javaType\":[\"String\"],\"columns[5].', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-16 19:51:13');
INSERT INTO `sys_oper_log` VALUES (302, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-16 19:51:20');
INSERT INTO `sys_oper_log` VALUES (303, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"sys_religion\"],\"tableComment\":[\"留学人员\"],\"className\":[\"Religion\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"153\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"留学人员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"religionId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"154\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"religionNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"155\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"religionCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"156\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"religionName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"157\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"religionSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"158\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].jav', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-16 22:48:37');
INSERT INTO `sys_oper_log` VALUES (304, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-16 22:48:42');
INSERT INTO `sys_oper_log` VALUES (305, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-16 22:49:04');
INSERT INTO `sys_oper_log` VALUES (306, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-16 22:49:10');
INSERT INTO `sys_oper_log` VALUES (307, '党员信息', 1, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/add', '127.0.0.1', '内网IP', '{\"partyStudentNumber\":[\"1812630715\"],\"partyName\":[\"陈章月\"],\"partyClass\":[\"软件187\"],\"partySex\":[\"0\"],\"partyBirthday\":[\"2020-10-17\"],\"partyNativePlace\":[\"重庆\"],\"partyIdcard\":[\"50038619911062141\"],\"partyJoinTime\":[\"2020-10-01\"],\"partyJoinApplication\":[\"1\"],\"partyInspect\":[\"1\"],\"partyFormalApplication\":[\"1\"],\"partyThoughtReport\":[\"1\"],\"partyStudentPost\":[\"无\"],\"partyRewardsPunishments\":[\"无\"],\"partyOtherInfo\":[\"\"],\"partyHeadMaster\":[\"季芳芳\"],\"partyConnect\":[\"13897654876\"],\"remark\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'party_class\' in \'field list\'\r\n### The error may involve com.ruoyi.web.platform.partyInfo.mapper.PartyInfoMapper.insertPartyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_party_info          ( party_student_number,             party_name,             party_class,             party_sex,             party_birthday,             party_native_place,             party_idcard,             party_join_time,             party_join_application,             party_inspect,             party_formal_application,             party_thought_report,             party_student_post,             party_rewards_punishments,             party_other_info,             party_head_master,             party_connect,             create_time,                                                    remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'party_class\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'party_class\' in \'field list\'', '2020-10-17 12:22:34');
INSERT INTO `sys_oper_log` VALUES (308, '党员信息', 1, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/add', '127.0.0.1', '内网IP', '{\"partyStudentNumber\":[\"1812630715\"],\"partyName\":[\"陈章月\"],\"partyClass\":[\"软件187\"],\"partySex\":[\"0\"],\"partyBirthday\":[\"2020-10-17\"],\"partyNativePlace\":[\"重庆\"],\"partyIdcard\":[\"50038619911062141\"],\"partyJoinTime\":[\"2020-10-01\"],\"partyJoinApplication\":[\"1\"],\"partyInspect\":[\"1\"],\"partyFormalApplication\":[\"1\"],\"partyThoughtReport\":[\"1\"],\"partyStudentPost\":[\"无\"],\"partyRewardsPunishments\":[\"无\"],\"partyOtherInfo\":[\"\"],\"partyHeadMaster\":[\"季芳芳\"],\"partyConnect\":[\"13897654876\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 12:23:29');
INSERT INTO `sys_oper_log` VALUES (309, '党员信息', 5, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/export', '127.0.0.1', '内网IP', '{\"partyStudentNumber\":[\"\"],\"partyName\":[\"\"],\"partyClass\":[\"\"],\"partySex\":[\"\"],\"params[beginPartyBirthday]\":[\"\"],\"params[endPartyBirthday]\":[\"\"],\"partyNativePlace\":[\"\"],\"partyIdcard\":[\"\"],\"params[beginPartyJoinTime]\":[\"\"],\"params[endPartyJoinTime]\":[\"\"],\"partyJoinApplication\":[\"\"],\"partyInspect\":[\"\"],\"partyFormalApplication\":[\"\"],\"partyThoughtReport\":[\"\"],\"partyStudentPost\":[\"\"],\"partyRewardsPunishments\":[\"\"],\"partyOtherInfo\":[\"\"],\"partyHeadMaster\":[\"\"],\"partyConnect\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"a457ca01-c85b-48a7-b816-b2ad2157bb39_partyInfo.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 12:23:55');
INSERT INTO `sys_oper_log` VALUES (310, '党员信息', 5, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/export', '127.0.0.1', '内网IP', '{\"partyStudentNumber\":[\"\"],\"partyName\":[\"\"],\"partyClass\":[\"\"],\"partySex\":[\"\"],\"params[beginPartyBirthday]\":[\"\"],\"params[endPartyBirthday]\":[\"\"],\"partyNativePlace\":[\"\"],\"partyIdcard\":[\"\"],\"params[beginPartyJoinTime]\":[\"\"],\"params[endPartyJoinTime]\":[\"\"],\"partyJoinApplication\":[\"\"],\"partyInspect\":[\"\"],\"partyFormalApplication\":[\"\"],\"partyThoughtReport\":[\"\"],\"partyStudentPost\":[\"\"],\"partyRewardsPunishments\":[\"\"],\"partyOtherInfo\":[\"\"],\"partyHeadMaster\":[\"\"],\"partyConnect\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"a4e9179f-6b80-40d2-864b-91f7572639b1_partyInfo.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 12:36:21');
INSERT INTO `sys_oper_log` VALUES (311, '党员信息', 5, 'com.ruoyi.web.platform.partyInfo.controller.PartyInfoController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/partyInfo/export', '127.0.0.1', '内网IP', '{\"partyStudentNumber\":[\"\"],\"partyName\":[\"\"],\"partyClass\":[\"\"],\"partySex\":[\"\"],\"params[beginPartyBirthday]\":[\"\"],\"params[endPartyBirthday]\":[\"\"],\"partyNativePlace\":[\"\"],\"partyIdcard\":[\"\"],\"params[beginPartyJoinTime]\":[\"\"],\"params[endPartyJoinTime]\":[\"\"],\"partyJoinApplication\":[\"\"],\"partyInspect\":[\"\"],\"partyFormalApplication\":[\"\"],\"partyThoughtReport\":[\"\"],\"partyStudentPost\":[\"\"],\"partyRewardsPunishments\":[\"\"],\"partyOtherInfo\":[\"\"],\"partyHeadMaster\":[\"\"],\"partyConnect\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"216e84df-97c6-4236-80f0-d4f1baf78f2a_partyInfo.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:00:37');
INSERT INTO `sys_oper_log` VALUES (312, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_party_activists\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:03:51');
INSERT INTO `sys_oper_log` VALUES (313, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"10\"],\"tableName\":[\"sys_party_activists\"],\"tableComment\":[\"入党积极分子\"],\"className\":[\"PartyActivists\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"171\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"入党积极分子id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"partyActivistsStuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"172\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"partyActivistsStuNum\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"173\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"partyActivistsName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"174\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"班级\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"partyActivistsClass\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"175\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"partyActivistsSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"176\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:06:08');
INSERT INTO `sys_oper_log` VALUES (314, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_activists', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-17 13:06:13');
INSERT INTO `sys_oper_log` VALUES (315, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_activists', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-17 13:06:14');
INSERT INTO `sys_oper_log` VALUES (316, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:08:43');
INSERT INTO `sys_oper_log` VALUES (317, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_party_activists\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:08:48');
INSERT INTO `sys_oper_log` VALUES (318, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"sys_party_activists\"],\"tableComment\":[\"入党积极分子\"],\"className\":[\"PartyActivists\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"192\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"入党积极分子id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"partyActivistsStuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"193\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"partyActivistsStuNum\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"194\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"partyActivistsName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"195\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"班级\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"partyActivistsClass\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"196\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"partyActivistsSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"197\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:10:17');
INSERT INTO `sys_oper_log` VALUES (319, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_activists', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-17 13:10:19');
INSERT INTO `sys_oper_log` VALUES (320, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_activists', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-17 13:10:20');
INSERT INTO `sys_oper_log` VALUES (321, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:11:16');
INSERT INTO `sys_oper_log` VALUES (322, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_party_activists\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:11:32');
INSERT INTO `sys_oper_log` VALUES (323, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"12\"],\"tableName\":[\"sys_party_activists\"],\"tableComment\":[\"入党积极分子\"],\"className\":[\"PartyActivists\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"213\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"入党积极分子id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"partyActivistsStuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"214\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"partyActivistsStuNum\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"215\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"partyActivistsName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"216\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"班级\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"partyActivistsClass\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"217\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"partyActivistsSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"218\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:12:19');
INSERT INTO `sys_oper_log` VALUES (324, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_activists', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-17 13:12:24');
INSERT INTO `sys_oper_log` VALUES (325, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_activists', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-17 13:12:24');
INSERT INTO `sys_oper_log` VALUES (326, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"12\"],\"tableName\":[\"sys_party_activists\"],\"tableComment\":[\"入党积极分子\"],\"className\":[\"PartyActivists\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"213\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"入党积极分子id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"partyActivistsStuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"214\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"partyActivistsStuNum\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"215\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"partyActivistsName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"216\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"班级\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"partyActivistsClass\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"217\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"partyActivistsSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"218\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:13:11');
INSERT INTO `sys_oper_log` VALUES (327, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_activists', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-17 13:13:13');
INSERT INTO `sys_oper_log` VALUES (328, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_party_activists', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-17 13:13:14');
INSERT INTO `sys_oper_log` VALUES (329, '入党积极分子', 1, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/add', '127.0.0.1', '内网IP', '{\"partyActivistsStuNum\":[\"1812630715\"],\"partyActivistsName\":[\"陈章月\"],\"partyActivistsClass\":[\"软件187\"],\"partyActivistsSex\":[\"0\"],\"partyActivistsNation\":[\"汉\"],\"partyActivistsBirthday\":[\"2020-10-17\"],\"partyActivistsNativePlace\":[\"重庆\"],\"partyActivistsApplicationForPartyMembershipTime\":[\"2020-10-02\"],\"partyActivistsAutobiography\":[\"1\"],\"partyActivistsApprovalForm\":[\"1\"],\"partyActivistsEstablishmentDate\":[\"2020-10-05\"],\"partyActivistsClosingTime\":[\"2020-09-28\"],\"partyActivistsThoughtReport\":[\"1\"],\"partyActivistsSurveyTable\":[\"1\"],\"partyActivistsEstablishmentDateDev\":[\"2020-10-27\"],\"partyActivistsPositionStuCadres\":[\"无\"],\"partyActivistsRewardsPunishments\":[\"无\"],\"partyActivistsHeadmaster\":[\"无\"],\"partyActivistsContactInformation\":[\"16787656782\"],\"partyActivistsRemarks\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:21:42');
INSERT INTO `sys_oper_log` VALUES (330, '入党积极分子', 5, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/export', '127.0.0.1', '内网IP', '{\"partyActivistsStuNum\":[\"\"],\"partyActivistsName\":[\"\"],\"partyActivistsClass\":[\"\"],\"partyActivistsSex\":[\"\"],\"partyActivistsNation\":[\"\"],\"params[beginPartyActivistsBirthday]\":[\"\"],\"params[endPartyActivistsBirthday]\":[\"\"],\"partyActivistsNativePlace\":[\"\"],\"params[beginPartyActivistsApplicationForPartyMembershipTime]\":[\"\"],\"params[endPartyActivistsApplicationForPartyMembershipTime]\":[\"\"],\"partyActivistsAutobiography\":[\"\"],\"partyActivistsApprovalForm\":[\"\"],\"params[beginPartyActivistsEstablishmentDate]\":[\"\"],\"params[endPartyActivistsEstablishmentDate]\":[\"\"],\"params[beginPartyActivistsClosingTime]\":[\"\"],\"params[endPartyActivistsClosingTime]\":[\"\"],\"partyActivistsThoughtReport\":[\"\"],\"partyActivistsSurveyTable\":[\"\"],\"params[beginPartyActivistsEstablishmentDateDev]\":[\"\"],\"params[endPartyActivistsEstablishmentDateDev]\":[\"\"],\"partyActivistsPositionStuCadres\":[\"\"],\"partyActivistsRewardsPunishments\":[\"\"],\"partyActivistsHeadmaster\":[\"\"],\"partyActivistsContactInformation\":[\"\"],\"partyActivistsRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"f28406e2-36f0-413c-b951-a024834f41b8_activists.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 13:22:49');
INSERT INTO `sys_oper_log` VALUES (331, '入党积极分子', 5, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/export', '127.0.0.1', '内网IP', '{\"partyActivistsStuNum\":[\"\"],\"partyActivistsName\":[\"\"],\"partyActivistsClass\":[\"\"],\"partyActivistsSex\":[\"\"],\"partyActivistsNation\":[\"\"],\"params[beginPartyActivistsBirthday]\":[\"\"],\"params[endPartyActivistsBirthday]\":[\"\"],\"partyActivistsNativePlace\":[\"\"],\"params[beginPartyActivistsApplicationForPartyMembershipTime]\":[\"\"],\"params[endPartyActivistsApplicationForPartyMembershipTime]\":[\"\"],\"partyActivistsAutobiography\":[\"\"],\"partyActivistsApprovalForm\":[\"\"],\"params[beginPartyActivistsEstablishmentDate]\":[\"\"],\"params[endPartyActivistsEstablishmentDate]\":[\"\"],\"params[beginPartyActivistsClosingTime]\":[\"\"],\"params[endPartyActivistsClosingTime]\":[\"\"],\"partyActivistsThoughtReport\":[\"\"],\"partyActivistsSurveyTable\":[\"\"],\"params[beginPartyActivistsEstablishmentDateDev]\":[\"\"],\"params[endPartyActivistsEstablishmentDateDev]\":[\"\"],\"partyActivistsPositionStuCadres\":[\"\"],\"partyActivistsRewardsPunishments\":[\"\"],\"partyActivistsHeadmaster\":[\"\"],\"partyActivistsContactInformation\":[\"\"],\"partyActivistsRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"1fb42cb5-4c07-4583-b0da-d8cadd59061a_activists.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 14:31:21');
INSERT INTO `sys_oper_log` VALUES (332, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', 'null', 1, '', '2020-10-17 14:33:55');
INSERT INTO `sys_oper_log` VALUES (333, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', 'null', 1, '', '2020-10-17 14:34:13');
INSERT INTO `sys_oper_log` VALUES (334, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', 'null', 1, '', '2020-10-17 14:35:04');
INSERT INTO `sys_oper_log` VALUES (335, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', 'null', 1, '', '2020-10-17 14:36:50');
INSERT INTO `sys_oper_log` VALUES (336, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', 'null', 1, '', '2020-10-17 14:38:26');
INSERT INTO `sys_oper_log` VALUES (337, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', 'null', 1, '', '2020-10-17 14:40:46');
INSERT INTO `sys_oper_log` VALUES (338, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', 'null', 1, '', '2020-10-17 14:42:08');
INSERT INTO `sys_oper_log` VALUES (339, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', 'null', 1, '', '2020-10-17 14:44:05');
INSERT INTO `sys_oper_log` VALUES (340, '入党积极分子', 5, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/export', '127.0.0.1', '内网IP', '{\"partyActivistsStuNum\":[\"\"],\"partyActivistsName\":[\"\"],\"partyActivistsClass\":[\"\"],\"partyActivistsSex\":[\"\"],\"partyActivistsNation\":[\"\"],\"params[beginPartyActivistsBirthday]\":[\"\"],\"params[endPartyActivistsBirthday]\":[\"\"],\"partyActivistsNativePlace\":[\"\"],\"params[beginPartyActivistsApplicationForPartyMembershipTime]\":[\"\"],\"params[endPartyActivistsApplicationForPartyMembershipTime]\":[\"\"],\"partyActivistsAutobiography\":[\"\"],\"partyActivistsApprovalForm\":[\"\"],\"params[beginPartyActivistsEstablishmentDate]\":[\"\"],\"params[endPartyActivistsEstablishmentDate]\":[\"\"],\"params[beginPartyActivistsClosingTime]\":[\"\"],\"params[endPartyActivistsClosingTime]\":[\"\"],\"partyActivistsThoughtReport\":[\"\"],\"partyActivistsSurveyTable\":[\"\"],\"params[beginPartyActivistsEstablishmentDateDev]\":[\"\"],\"params[endPartyActivistsEstablishmentDateDev]\":[\"\"],\"partyActivistsPositionStuCadres\":[\"\"],\"partyActivistsRewardsPunishments\":[\"\"],\"partyActivistsHeadmaster\":[\"\"],\"partyActivistsContactInformation\":[\"\"],\"partyActivistsRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"9b5c5e4c-fa54-4a41-9466-fd1348755a4f_activists.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 14:44:46');
INSERT INTO `sys_oper_log` VALUES (341, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 14:45:33');
INSERT INTO `sys_oper_log` VALUES (342, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 14:46:07');
INSERT INTO `sys_oper_log` VALUES (343, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 14:46:36');
INSERT INTO `sys_oper_log` VALUES (344, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 陈章月 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 14:50:35');
INSERT INTO `sys_oper_log` VALUES (345, '入党积极分子', 2, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/edit', '127.0.0.1', '内网IP', '{\"partyActivistsStuId\":[\"1\"],\"partyActivistsStuNum\":[\"1812630715\"],\"partyActivistsName\":[\"陈章月\"],\"partyActivistsClass\":[\"软件187\"],\"partyActivistsSex\":[\"0\"],\"partyActivistsNation\":[\"汉\"],\"partyActivistsBirthday\":[\"2020-10-17\"],\"partyActivistsNativePlace\":[\"重庆\"],\"partyActivistsApplicationForPartyMembershipTime\":[\"2020-10-02\"],\"partyActivistsAutobiography\":[\"1\"],\"partyActivistsApprovalForm\":[\"1\"],\"partyActivistsEstablishmentDate\":[\"2020-10-05\"],\"partyActivistsClosingTime\":[\"2020-09-28\"],\"partyActivistsThoughtReport\":[\"1\"],\"partyActivistsSurveyTable\":[\"1\"],\"partyActivistsEstablishmentDateDev\":[\"2020-10-27\"],\"partyActivistsPositionStuCadres\":[\"无\"],\"partyActivistsRewardsPunishments\":[\"无\"],\"partyActivistsHeadmaster\":[\"无\"],\"partyActivistsContactInformation\":[\"16787656782\"],\"partyActivistsRemarks\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 14:52:53');
INSERT INTO `sys_oper_log` VALUES (346, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', 'null', 1, '很抱歉，导入失败！共 2 条数据格式不正确，错误如下：<br/>1、账号 陈章月1 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.web.platform.activists.mapper.PartyActivistsMapper.insertPartyActivists-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_party_activists\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1<br/>2、账号 陈章月2 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.web.platform.activists.mapper.PartyActivistsMapper.insertPartyActivists-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_party_activists\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2020-10-17 14:54:15');
INSERT INTO `sys_oper_log` VALUES (347, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', 'null', 1, '很抱歉，导入失败！共 2 条数据格式不正确，错误如下：<br/>1、账号 陈章月1 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.web.platform.activists.mapper.PartyActivistsMapper.insertPartyActivists-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_party_activists\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1<br/>2、账号 陈章月2 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.web.platform.activists.mapper.PartyActivistsMapper.insertPartyActivists-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_party_activists\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2020-10-17 14:56:22');
INSERT INTO `sys_oper_log` VALUES (348, '入党积极分子', 5, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/export', '127.0.0.1', '内网IP', '{\"partyActivistsStuNum\":[\"\"],\"partyActivistsName\":[\"\"],\"partyActivistsClass\":[\"\"],\"partyActivistsSex\":[\"\"],\"partyActivistsNation\":[\"\"],\"params[beginPartyActivistsBirthday]\":[\"\"],\"params[endPartyActivistsBirthday]\":[\"\"],\"partyActivistsNativePlace\":[\"\"],\"params[beginPartyActivistsApplicationForPartyMembershipTime]\":[\"\"],\"params[endPartyActivistsApplicationForPartyMembershipTime]\":[\"\"],\"partyActivistsAutobiography\":[\"\"],\"partyActivistsApprovalForm\":[\"\"],\"params[beginPartyActivistsEstablishmentDate]\":[\"\"],\"params[endPartyActivistsEstablishmentDate]\":[\"\"],\"params[beginPartyActivistsClosingTime]\":[\"\"],\"params[endPartyActivistsClosingTime]\":[\"\"],\"partyActivistsThoughtReport\":[\"\"],\"partyActivistsSurveyTable\":[\"\"],\"params[beginPartyActivistsEstablishmentDateDev]\":[\"\"],\"params[endPartyActivistsEstablishmentDateDev]\":[\"\"],\"partyActivistsPositionStuCadres\":[\"\"],\"partyActivistsRewardsPunishments\":[\"\"],\"partyActivistsHeadmaster\":[\"\"],\"partyActivistsContactInformation\":[\"\"],\"partyActivistsRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"83a2a4f4-7adf-4842-8f82-e11bf463254d_activists.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 14:57:35');
INSERT INTO `sys_oper_log` VALUES (349, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', 'null', 1, '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 乔伟 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.web.platform.activists.mapper.PartyActivistsMapper.insertPartyActivists-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_party_activists\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2020-10-17 14:58:00');
INSERT INTO `sys_oper_log` VALUES (350, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 乔伟 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 14:59:25');
INSERT INTO `sys_oper_log` VALUES (351, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 罗杰 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 15:01:18');
INSERT INTO `sys_oper_log` VALUES (352, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 小红 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 15:02:10');
INSERT INTO `sys_oper_log` VALUES (353, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 小张 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 15:05:17');
INSERT INTO `sys_oper_log` VALUES (354, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 小明 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 15:07:34');
INSERT INTO `sys_oper_log` VALUES (355, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 小明 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 15:08:14');
INSERT INTO `sys_oper_log` VALUES (356, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 小明 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 15:08:35');
INSERT INTO `sys_oper_log` VALUES (357, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 小明 更新成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 15:17:48');
INSERT INTO `sys_oper_log` VALUES (358, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 小华 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 15:18:17');
INSERT INTO `sys_oper_log` VALUES (359, '积极分子管理', 6, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/importData', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 小李 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 15:19:06');
INSERT INTO `sys_oper_log` VALUES (360, '入党积极分子', 5, 'com.ruoyi.web.platform.activists.controller.PartyActivistsController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/activists/export', '127.0.0.1', '内网IP', '{\"partyActivistsStuNum\":[\"\"],\"partyActivistsName\":[\"\"],\"partyActivistsClass\":[\"\"],\"partyActivistsSex\":[\"\"],\"partyActivistsNation\":[\"\"],\"params[beginPartyActivistsBirthday]\":[\"\"],\"params[endPartyActivistsBirthday]\":[\"\"],\"partyActivistsNativePlace\":[\"\"],\"params[beginPartyActivistsApplicationForPartyMembershipTime]\":[\"\"],\"params[endPartyActivistsApplicationForPartyMembershipTime]\":[\"\"],\"partyActivistsAutobiography\":[\"\"],\"partyActivistsApprovalForm\":[\"\"],\"params[beginPartyActivistsEstablishmentDate]\":[\"\"],\"params[endPartyActivistsEstablishmentDate]\":[\"\"],\"params[beginPartyActivistsClosingTime]\":[\"\"],\"params[endPartyActivistsClosingTime]\":[\"\"],\"partyActivistsThoughtReport\":[\"\"],\"partyActivistsSurveyTable\":[\"\"],\"params[beginPartyActivistsEstablishmentDateDev]\":[\"\"],\"params[endPartyActivistsEstablishmentDateDev]\":[\"\"],\"partyActivistsPositionStuCadres\":[\"\"],\"partyActivistsRewardsPunishments\":[\"\"],\"partyActivistsHeadmaster\":[\"\"],\"partyActivistsContactInformation\":[\"\"],\"partyActivistsRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"30cd411b-ea7b-4d0f-9059-87bea2233ca2_partyInfo.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-17 15:31:20');
INSERT INTO `sys_oper_log` VALUES (361, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_overseas_study_member\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 13:26:53');
INSERT INTO `sys_oper_log` VALUES (362, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 13:28:43');
INSERT INTO `sys_oper_log` VALUES (363, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_overseas_study_member\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 13:28:49');
INSERT INTO `sys_oper_log` VALUES (364, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"14\"],\"tableName\":[\"sys_overseas_study_member\"],\"tableComment\":[\"留学归国人员\"],\"className\":[\"OverseasStudyMember\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"248\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"留学id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"overseasId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"249\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"overseasNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"250\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"overseasCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"251\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"overseasName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"sys_user_sex\"],\"columns[4].columnId\":[\"252\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"民族\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"overseasSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"253\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"出生年月\"],\"columns[5].javaT', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 13:31:39');
INSERT INTO `sys_oper_log` VALUES (365, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_overseas_study_member', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 13:31:43');
INSERT INTO `sys_oper_log` VALUES (366, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 13:33:07');
INSERT INTO `sys_oper_log` VALUES (367, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_overseas_study_member\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 13:33:13');
INSERT INTO `sys_oper_log` VALUES (368, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"15\"],\"tableName\":[\"sys_overseas_study_member\"],\"tableComment\":[\"留学归国人员\"],\"className\":[\"OverseasStudyMember\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"267\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"留学id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"overseasId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"268\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"overseasNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"269\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"overseasCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"270\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"overseasName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"sys_user_sex\"],\"columns[4].columnId\":[\"271\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"民族\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"overseasSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"272\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"出生年月\"],\"columns[5].javaT', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 13:34:00');
INSERT INTO `sys_oper_log` VALUES (369, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_overseas_study_member', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 13:34:04');
INSERT INTO `sys_oper_log` VALUES (370, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"15\"],\"tableName\":[\"sys_overseas_study_member\"],\"tableComment\":[\"留学归国人员\"],\"className\":[\"OverseasStudyMember\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"267\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"留学id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"overseasId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"268\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"overseasNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"269\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"overseasCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"270\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"overseasName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"sys_user_sex\"],\"columns[4].columnId\":[\"271\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"民族\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"overseasSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"272\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"出生年月\"],\"columns[5].javaTy', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 13:46:30');
INSERT INTO `sys_oper_log` VALUES (371, '留学归国人员', 1, 'com.ruoyi.web.platform.member.controller.OverseasStudyMemberController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/member/add', '127.0.0.1', '内网IP', '{\"overseasNumber\":[\"1\"],\"overseasCollege\":[\"罗杰\"],\"overseasName\":[\"0\"],\"overseasSex\":[\"\"],\"overseasBirthday\":[\"2020-09-30\"],\"overseasNativePlace\":[\"江苏盐城\"],\"overseasPoliticalOutlook\":[\"共青团员\"],\"overseasPartyJoinTime\":[\"无\"],\"overseasAcademicDegree\":[\"本科\"],\"overseasGraduateSchoolMajor\":[\"\"],\"overseasJobStartTime\":[\"2020-10-07\"],\"overseasStudyBeginEnd\":[\"\"],\"overseasPlace\":[\"\"],\"nonPartyRemarks\":[\"\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 14:09:17');
INSERT INTO `sys_oper_log` VALUES (372, '留学归国人员', 2, 'com.ruoyi.web.platform.member.controller.OverseasStudyMemberController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/member/edit', '127.0.0.1', '内网IP', '{\"overseasId\":[\"1\"],\"overseasNumber\":[\"1\"],\"overseasCollege\":[\"罗杰\"],\"overseasName\":[\"0\"],\"overseasSex\":[\"汉\"],\"overseasBirthday\":[\"2020-09-30\"],\"overseasNativePlace\":[\"江苏盐城\"],\"overseasPoliticalOutlook\":[\"共青团员\"],\"overseasPartyJoinTime\":[\"无\"],\"overseasAcademicDegree\":[\"本科\"],\"overseasGraduateSchoolMajor\":[\"\"],\"overseasJobStartTime\":[\"2020-10-07\"],\"overseasStudyBeginEnd\":[\"\"],\"overseasPlace\":[\"\"],\"nonPartyRemarks\":[\"\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 14:22:21');
INSERT INTO `sys_oper_log` VALUES (373, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_standingbook\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-24 14:42:08');
INSERT INTO `sys_oper_log` VALUES (374, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_non_party\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 14:47:27');
INSERT INTO `sys_oper_log` VALUES (375, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"17\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 14:48:48');
INSERT INTO `sys_oper_log` VALUES (376, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_non_party\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 14:48:53');
INSERT INTO `sys_oper_log` VALUES (377, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"sys_standingbook\"],\"tableComment\":[\"台账\"],\"className\":[\"Standingbook\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"286\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"台账id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"standingbookId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"287\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"standingbookNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"288\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"standingbookName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"289\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"standingbookSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"sys_user_sex\"],\"columns[4].columnId\":[\"290\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"民族\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"standingbookNation\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"291\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"出生日期\"],\"columns[5].javaTyp', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-24 14:52:46');
INSERT INTO `sys_oper_log` VALUES (378, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_standingbook', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 14:53:27');
INSERT INTO `sys_oper_log` VALUES (379, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_standingbook', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 14:53:36');
INSERT INTO `sys_oper_log` VALUES (380, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"sys_non_party\"],\"tableComment\":[\"无党派人士\"],\"className\":[\"NonParty\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"328\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"无党派人士id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"nonPartyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"329\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"nonPartyNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"330\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nonPartyCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"331\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"nonPartyName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"332\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"籍贯\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"nonPartySex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"333\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaFie', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 14:53:50');
INSERT INTO `sys_oper_log` VALUES (381, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_non_party', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 14:54:09');
INSERT INTO `sys_oper_log` VALUES (382, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"18\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 14:56:16');
INSERT INTO `sys_oper_log` VALUES (383, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_non_party\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 14:56:22');
INSERT INTO `sys_oper_log` VALUES (384, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"sys_non_party\"],\"tableComment\":[\"无党派人士\"],\"className\":[\"NonParty\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"345\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"无党派人士id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"nonPartyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"346\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"nonPartyNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"347\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nonPartyCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"348\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"nonPartyName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"349\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"籍贯\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"nonPartySex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"350\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaFie', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 14:57:03');
INSERT INTO `sys_oper_log` VALUES (385, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_non_party', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 14:57:10');
INSERT INTO `sys_oper_log` VALUES (386, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"sys_non_party\"],\"tableComment\":[\"无党派人士\"],\"className\":[\"NonParty\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"345\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"无党派人士id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"nonPartyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"346\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"nonPartyNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"347\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nonPartyCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"348\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"nonPartyName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"349\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"籍贯\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"nonPartySex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"350\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaFiel', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 15:07:24');
INSERT INTO `sys_oper_log` VALUES (387, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_non_party', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 15:07:26');
INSERT INTO `sys_oper_log` VALUES (388, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"sys_non_party\"],\"tableComment\":[\"无党派人士\"],\"className\":[\"NonParty\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"345\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"无党派人士id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"nonPartyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"346\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"nonPartyNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"347\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nonPartyCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"348\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"nonPartyName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"349\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"籍贯\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"nonPartySex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"350\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaFiel', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-24 15:12:06');
INSERT INTO `sys_oper_log` VALUES (389, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_non_party', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 15:12:08');
INSERT INTO `sys_oper_log` VALUES (390, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/synchDb/sys_standingbook', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-24 15:13:26');
INSERT INTO `sys_oper_log` VALUES (391, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"sys_standingbook\"],\"tableComment\":[\"台账\"],\"className\":[\"Standingbook\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"286\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"台账id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"standingbookId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"287\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"standingbookNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"288\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"standingbookName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"289\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"standingbookSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"sys_user_sex\"],\"columns[4].columnId\":[\"290\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"民族\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"standingbookNation\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"291\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"出生日期\"],\"columns[5].javaTyp', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-24 15:14:00');
INSERT INTO `sys_oper_log` VALUES (392, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_standingbook', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 15:14:09');
INSERT INTO `sys_oper_log` VALUES (393, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_standingbook', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 15:14:15');
INSERT INTO `sys_oper_log` VALUES (394, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_standingbook', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 15:18:03');
INSERT INTO `sys_oper_log` VALUES (395, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_standingbook', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-10-24 15:18:06');
INSERT INTO `sys_oper_log` VALUES (396, '台账', 1, 'com.ruoyi.web.platform.standingbook.controller.StandingbookController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/standingbook/add', '127.0.0.1', '内网IP', '{\"standingbookNumber\":[\"1\"],\"standingbookName\":[\"xcg\"],\"standingbookSex\":[\"0\"],\"standingbookNation\":[\"汉族\"],\"standingbookBirthday\":[\"2000-03-02\"],\"standingbookTimeJoinPart\":[\"2020-10-10\"],\"standingbookBranchNumber\":[\"第四支部\"],\"standingbookFilesPartyMembwes\":[\"材料齐全\"],\"standingbookRAndPName\":[\"无\"],\"standingbookRAndPExplain\":[\"无\"],\"standingbookRAndPReason\":[\"无\"],\"standingbookApprovalDate\":[\"2020-10-24\"],\"standingbookRevocationDate\":[\"2020-10-24\"],\"standingbookInflowUnit\":[\"正常\"],\"standingbookIAndC\":[\"17849198551\"],\"standingbookOutflowDate\":[\"2020-10-24\"],\"standingbookOutflowReason\":[\"无\"],\"standingbookAbroad\":[\"无\"],\"phoneNumber\":[\"17849198551\"],\"remarks\":[\"无\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-10-24 17:05:08');
INSERT INTO `sys_oper_log` VALUES (397, '党建纪实', 2, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/edit', '127.0.0.1', '内网IP', '{\"documentaryId\":[\"1\"],\"documentaryTitle\":[\"党建纪实\"],\"documentaryContent\":[\"<h1 style=\\\"font-size: 2em; margin-bottom: 16px; font-weight: 600; line-height: 1.25; padding-bottom: 0.3em; border-bottom: 1px solid var(--color-border-secondary); color: rgb(36, 41, 46); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;; margin-top: 0px !important;\\\">luna-ideaSync-mac</h1><p style=\\\"color: rgb(36, 41, 46); font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;; font-size: 16px; margin-bottom: 0px !important;\\\">mac-idea 配置备份</p>\"],\"documentaryActiveAddress\":[\"主楼B403\"],\"documentaryStartTime\":[\"2020-10-14\"],\"documentaryEndTime\":[\"2020-10-14\"],\"documentaryOtherPeople\":[\"乔伟,陈章月\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"管理员\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-25 17:18:19');
INSERT INTO `sys_oper_log` VALUES (398, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"xxx活动\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_news_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"xxx活动\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-10-25 17:21:00');
INSERT INTO `sys_oper_log` VALUES (399, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_comments\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-07 15:18:17');
INSERT INTO `sys_oper_log` VALUES (400, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"留言类型\"],\"dictType\":[\"sys_comments_type\"],\"status\":[\"0\"],\"remark\":[\"留言类型\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-07 15:19:28');
INSERT INTO `sys_oper_log` VALUES (401, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"情况反馈\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_comments_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"情况反馈留言板块\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-07 15:19:58');
INSERT INTO `sys_oper_log` VALUES (402, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"sys_comments\"],\"tableComment\":[\"留言板评论互动\"],\"className\":[\"Comments\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"366\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"评论内容主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"commentsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"367\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"评论标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"commentsTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"368\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"评论类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"commentsType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_comments_type\"],\"columns[3].columnId\":[\"369\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"评论内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"commentsContent\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"summernote\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"370\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"回复评论内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"commentsContentReturn\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"summernote\"],\"columns[4].dictType\":[\"\"],\"col', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-07 15:21:20');
INSERT INTO `sys_oper_log` VALUES (403, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_comments', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-07 15:21:23');
INSERT INTO `sys_oper_log` VALUES (404, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"sys_comments\"],\"tableComment\":[\"留言板评论互动\"],\"className\":[\"Comments\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"366\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"评论内容主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"commentsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"367\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"评论标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"commentsTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"368\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"评论类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"commentsType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_comments_type\"],\"columns[3].columnId\":[\"369\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"评论内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"commentsContent\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"summernote\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"370\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"回复评论内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"commentsContentReturn\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"summernote\"],\"columns[4].dictType\":[\"\"],\"col', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-07 15:28:04');
INSERT INTO `sys_oper_log` VALUES (405, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_comments', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-07 15:28:08');
INSERT INTO `sys_oper_log` VALUES (406, '留言板评论互动', 1, 'com.ruoyi.web.platform.comments.controller.CommentsController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/comments/add', '127.0.0.1', '内网IP', '{\"commentsTitle\":[\"食堂问题情况反馈\"],\"commentsType\":[\"1\"],\"commentsContent\":[\"<p>食堂问题</p>\"],\"commentsContentReturn\":[\"\"],\"commentsReturnId\":[\"\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-07 15:31:02');
INSERT INTO `sys_oper_log` VALUES (407, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_foreign_believers\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-07 17:54:33');
INSERT INTO `sys_oper_log` VALUES (408, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/synchDb/sys_foreign_believers', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-07 18:03:12');
INSERT INTO `sys_oper_log` VALUES (409, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/synchDb/sys_foreign_believers', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-07 18:04:31');
INSERT INTO `sys_oper_log` VALUES (410, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/synchDb/sys_foreign_believers', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-07 18:04:53');
INSERT INTO `sys_oper_log` VALUES (411, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/synchDb/sys_foreign_believers', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-07 18:05:23');
INSERT INTO `sys_oper_log` VALUES (412, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"21\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-07 18:05:48');
INSERT INTO `sys_oper_log` VALUES (413, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_foreign_believers\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-07 18:05:57');
INSERT INTO `sys_oper_log` VALUES (414, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"sys_foreign_believers\"],\"tableComment\":[\"信宗教外教专家\"],\"className\":[\"ForeignBelievers\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"378\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"信宗教外教专家Id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"foreignNumberId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"379\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"foreignNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"380\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"foreignCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"381\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"foreignName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"382\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"foreignSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"383\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"国家\"],\"columns[5].javaType\":[\"String\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-07 18:07:14');
INSERT INTO `sys_oper_log` VALUES (415, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"22\"],\"tableName\":[\"sys_foreign_believers\"],\"tableComment\":[\"信宗教外教专家\"],\"className\":[\"ForeignBelievers\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"394\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"信宗教外教专家Id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"foreignNumberId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"395\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"foreignNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"396\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"foreignCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"397\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"foreignName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"398\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"foreignSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"399\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"国家\"],\"columns[5].javaType\":[\"Strin', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-07 18:10:02');
INSERT INTO `sys_oper_log` VALUES (416, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_foreign_believers', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-07 18:10:07');
INSERT INTO `sys_oper_log` VALUES (417, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"22\"],\"tableName\":[\"sys_foreign_believers\"],\"tableComment\":[\"信宗教外教专家\"],\"className\":[\"ForeignBelievers\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"394\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"信宗教外教专家Id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"foreignNumberId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"395\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"foreignNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"396\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"foreignCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"397\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"foreignName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"398\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"foreignSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"399\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"国家\"],\"columns[5].javaT', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-07 18:17:41');
INSERT INTO `sys_oper_log` VALUES (418, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_foreign_believers', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-07 18:17:45');
INSERT INTO `sys_oper_log` VALUES (419, '留学人员', 5, 'com.ruoyi.web.platform.religion.controller.ReligionController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/religion/export', '127.0.0.1', '内网IP', '{\"religionNumber\":[\"\"],\"religionCollege\":[\"\"],\"religionName\":[\"\"],\"religionSex\":[\"\"],\"religionNation\":[\"\"],\"params[beginReligionBirthday]\":[\"\"],\"params[endReligionBirthday]\":[\"\"],\"religionNativePlace\":[\"\"],\"params[beginReligionPartyJoinTime]\":[\"\"],\"params[endReligionPartyJoinTime]\":[\"\"],\"religionType\":[\"\"],\"religiousServicesFacilities\":[\"\"],\"params[beginReligionJoin]\":[\"\"],\"params[endReligionJoin]\":[\"\"],\"religionContactInformation\":[\"\"],\"religionRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"80ba7b59-0b77-4053-9431-9eaf204945ba_religion.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-12 23:10:46');
INSERT INTO `sys_oper_log` VALUES (420, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-12 23:37:03');
INSERT INTO `sys_oper_log` VALUES (421, '留学人员', 5, 'com.ruoyi.web.platform.religion.controller.ReligionController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/religion/export', '127.0.0.1', '内网IP', '{\"religionNumber\":[\"\"],\"religionCollege\":[\"\"],\"religionName\":[\"\"],\"religionSex\":[\"\"],\"religionNation\":[\"\"],\"params[beginReligionBirthday]\":[\"\"],\"params[endReligionBirthday]\":[\"\"],\"religionNativePlace\":[\"\"],\"params[beginReligionPartyJoinTime]\":[\"\"],\"params[endReligionPartyJoinTime]\":[\"\"],\"religionType\":[\"\"],\"religiousServicesFacilities\":[\"\"],\"params[beginReligionJoin]\":[\"\"],\"params[endReligionJoin]\":[\"\"],\"religionContactInformation\":[\"\"],\"religionRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"0ec6c34f-c635-4ca2-90b1-4d5f9d11e961_religion.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-12 23:44:59');
INSERT INTO `sys_oper_log` VALUES (422, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"sys_religion\"],\"tableComment\":[\"留学人员\"],\"className\":[\"Religion\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"153\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"留学人员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"religionId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"154\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"religionNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"155\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"religionCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"156\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"religionName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"157\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"religionSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"158\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].jav', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-12 23:47:35');
INSERT INTO `sys_oper_log` VALUES (423, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"sys_religion\"],\"tableComment\":[\"留学人员\"],\"className\":[\"Religion\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"153\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"留学人员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"religionId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"154\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"religionNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"155\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"religionCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"156\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"religionName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"157\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"religionSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"158\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].jav', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-12 23:48:46');
INSERT INTO `sys_oper_log` VALUES (424, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-12 23:48:55');
INSERT INTO `sys_oper_log` VALUES (425, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"sys_religion\"],\"tableComment\":[\"留学人员\"],\"className\":[\"Religion\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"153\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"留学人员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"religionId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"154\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"religionNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"155\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"religionCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"156\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"religionName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"157\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"religionSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"158\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].jav', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 00:07:51');
INSERT INTO `sys_oper_log` VALUES (426, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-13 00:07:57');
INSERT INTO `sys_oper_log` VALUES (427, '留学人员', 5, 'com.ruoyi.web.platform.religion.controller.ReligionController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/religion/export', '127.0.0.1', '内网IP', '{\"religionNumber\":[\"\"],\"religionCollege\":[\"\"],\"religionName\":[\"\"],\"religionSex\":[\"\"],\"religionNation\":[\"\"],\"params[beginReligionBirthday]\":[\"\"],\"params[endReligionBirthday]\":[\"\"],\"religionNativePlace\":[\"\"],\"params[beginReligionPartyJoinTime]\":[\"\"],\"params[endReligionPartyJoinTime]\":[\"\"],\"religionType\":[\"\"],\"religiousServicesFacilities\":[\"\"],\"params[beginReligionJoin]\":[\"\"],\"params[endReligionJoin]\":[\"\"],\"religionContactInformation\":[\"\"],\"religionRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"a71c61d0-bfdf-40f8-8d35-db7e34b7a23a_religion.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 02:08:53');
INSERT INTO `sys_oper_log` VALUES (428, '留学人员', 1, 'com.ruoyi.web.platform.religion.controller.ReligionController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/religion/add', '127.0.0.1', '内网IP', '{\"religionNumber\":[\"1\"],\"religionCollege\":[\"信息工程学院\"],\"religionName\":[\"罗杰\"],\"religionSex\":[\"0\"],\"religionNation\":[\"汉\"],\"religionBirthday\":[\"2020-11-13\"],\"religionNativePlace\":[\"江苏盐城\"],\"religionPartyJoinTime\":[\"2020-11-13\"],\"religionType\":[\"佛教\"],\"religiousServicesFacilities\":[\"雷音寺\"],\"religionJoin\":[\"2020-11-13\"],\"religionContactInformation\":[\"16141766578\"],\"religionRemarks\":[\"无\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 02:19:39');
INSERT INTO `sys_oper_log` VALUES (429, '留学人员', 5, 'com.ruoyi.web.platform.religion.controller.ReligionController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/religion/export', '127.0.0.1', '内网IP', '{\"religionNumber\":[\"\"],\"religionCollege\":[\"\"],\"religionName\":[\"\"],\"religionSex\":[\"\"],\"religionNation\":[\"\"],\"params[beginReligionBirthday]\":[\"\"],\"params[endReligionBirthday]\":[\"\"],\"religionNativePlace\":[\"\"],\"params[beginReligionPartyJoinTime]\":[\"\"],\"params[endReligionPartyJoinTime]\":[\"\"],\"religionType\":[\"\"],\"religiousServicesFacilities\":[\"\"],\"params[beginReligionJoin]\":[\"\"],\"params[endReligionJoin]\":[\"\"],\"religionContactInformation\":[\"\"],\"religionRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"87067713-5f7c-46f8-85d3-5f095b003c0c_religion.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 02:19:45');
INSERT INTO `sys_oper_log` VALUES (430, '留学人员', 5, 'com.ruoyi.web.platform.religion.controller.ReligionController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/religion/export', '127.0.0.1', '内网IP', '{\"religionNumber\":[\"\"],\"religionCollege\":[\"\"],\"religionName\":[\"\"],\"religionSex\":[\"\"],\"religionNation\":[\"\"],\"params[beginReligionBirthday]\":[\"\"],\"params[endReligionBirthday]\":[\"\"],\"religionNativePlace\":[\"\"],\"params[beginReligionPartyJoinTime]\":[\"\"],\"params[endReligionPartyJoinTime]\":[\"\"],\"religionType\":[\"\"],\"religiousServicesFacilities\":[\"\"],\"params[beginReligionJoin]\":[\"\"],\"params[endReligionJoin]\":[\"\"],\"religionContactInformation\":[\"\"],\"religionRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"40c1f8c5-4e07-427c-b014-a254a328ca9b_religion.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-13 08:03:24');
INSERT INTO `sys_oper_log` VALUES (431, '党建纪实', 1, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/add', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"测试党建及时\"],\"documentaryContent\":[\"<p>顶顶顶顶</p>\"],\"documentaryActiveAddress\":[\"\"],\"documentaryStartTime\":[\"2020-10-28\"],\"documentaryEndTime\":[\"2020-11-04\"],\"documentaryJionPeople\":[\"徐华平\"],\"documentaryOtherPeople\":[\"测试\"],\"documentaryStatus\":[\"1\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-14 11:19:03');
INSERT INTO `sys_oper_log` VALUES (432, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"sys_religion\"],\"tableComment\":[\"留学人员\"],\"className\":[\"Religion\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"153\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"留学人员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"religionId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"154\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"序号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"religionNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"155\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学院\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"religionCollege\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"156\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"religionName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"157\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"religionSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"158\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"民族\"],\"columns[5].javaType\":[\"String\"],\"columns[5].', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-15 05:43:57');
INSERT INTO `sys_oper_log` VALUES (433, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-15 05:44:56');
INSERT INTO `sys_oper_log` VALUES (434, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_religion', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-15 05:44:56');
INSERT INTO `sys_oper_log` VALUES (435, '留学人员', 5, 'com.ruoyi.web.platform.religion.controller.ReligionController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/religion/export', '127.0.0.1', '内网IP', '{\"religionNumber\":[\"\"],\"religionCollege\":[\"\"],\"religionName\":[\"\"],\"religionSex\":[\"\"],\"religionNation\":[\"\"],\"params[beginReligionBirthday]\":[\"\"],\"params[endReligionBirthday]\":[\"\"],\"religionNativePlace\":[\"\"],\"params[beginReligionPartyJoinTime]\":[\"\"],\"params[endReligionPartyJoinTime]\":[\"\"],\"religionType\":[\"\"],\"religiousServicesFacilities\":[\"\"],\"params[beginReligionJoin]\":[\"\"],\"params[endReligionJoin]\":[\"\"],\"religionContactInformation\":[\"\"],\"religionRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\n  \"msg\" : \"b3d0d9b1-95d3-464d-bc3b-48a99a82181f_religion.xlsx\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-15 06:24:07');
INSERT INTO `sys_oper_log` VALUES (436, '留学人员信息管理', 6, 'com.ruoyi.web.platform.religion.controller.ReligionController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/religion/importData', '127.0.0.1', '内网IP', NULL, 'null', 1, '很抱歉，导入失败！共 7 条数据格式不正确，错误如下：<br/>1、账号 罗杰 已存在<br/>2、账号  已存在<br/>3、账号  已存在<br/>4、账号  已存在<br/>5、账号  已存在<br/>6、账号  已存在<br/>7、账号  已存在', '2020-11-15 06:26:11');
INSERT INTO `sys_oper_log` VALUES (437, '留学人员信息管理', 6, 'com.ruoyi.web.platform.religion.controller.ReligionController.importData()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/religion/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"on\"]}', '{\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 9 条，数据如下：<br/>1、账号 罗杰 更新成功<br/>2、账号 乔伟 更新成功<br/>3、账号  更新成功<br/>4、账号  更新成功<br/>5、账号  更新成功<br/>6、账号  更新成功<br/>7、账号  更新成功<br/>8、账号  更新成功<br/>9、账号  更新成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-15 06:26:22');
INSERT INTO `sys_oper_log` VALUES (438, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"数据管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-bar-chart\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 16:47:13');
INSERT INTO `sys_oper_log` VALUES (439, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2074\"],\"menuType\":[\"C\"],\"menuName\":[\"学生党员信息管理\"],\"url\":[\"/admin/partyInfo\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:partyInfo:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 16:47:35');
INSERT INTO `sys_oper_log` VALUES (440, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"新闻类别设置\"],\"url\":[\"system/dict/detail/100\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-arrows-h\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 17:00:38');
INSERT INTO `sys_oper_log` VALUES (441, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 17:30:07');
INSERT INTO `sys_oper_log` VALUES (442, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_news\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 17:30:27');
INSERT INTO `sys_oper_log` VALUES (443, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"23\"],\"tableName\":[\"sys_news\"],\"tableComment\":[\"新闻发布表\"],\"className\":[\"News\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"409\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"新闻ID\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"newsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"410\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"新闻标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"newsTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"411\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"新闻类型（1通知 2公告）\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"newsType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_news_type\"],\"columns[3].columnId\":[\"412\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"新闻内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"newsContent\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"summernote\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"413\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"新闻外链\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"newsUrl\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"414\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnCom', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 17:30:59');
INSERT INTO `sys_oper_log` VALUES (444, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"23\"],\"tableName\":[\"sys_news\"],\"tableComment\":[\"新闻发布表\"],\"className\":[\"News\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"409\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"新闻ID\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"newsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"410\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"新闻标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"newsTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"411\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"新闻类型（1通知 2公告）\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"newsType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_news_type\"],\"columns[3].columnId\":[\"412\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"新闻内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"newsContent\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"summernote\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"413\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"新闻外链\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"newsUrl\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"414\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnCom', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 17:31:37');
INSERT INTO `sys_oper_log` VALUES (445, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-19 17:31:42');
INSERT INTO `sys_oper_log` VALUES (446, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-19 17:31:44');
INSERT INTO `sys_oper_log` VALUES (447, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"23\"],\"tableName\":[\"sys_news\"],\"tableComment\":[\"新闻发布表\"],\"className\":[\"News\"],\"functionAuthor\":[\"party-platform\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"409\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"新闻ID\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"newsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"410\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"新闻标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"newsTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"411\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"新闻类型（1通知 2公告）\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"newsType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_news_type\"],\"columns[3].columnId\":[\"412\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"新闻内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"newsContent\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"summernote\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"413\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"新闻外链\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"newsUrl\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"414\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnCom', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 17:35:44');
INSERT INTO `sys_oper_log` VALUES (448, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-19 17:35:47');
INSERT INTO `sys_oper_log` VALUES (449, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-19 17:35:48');
INSERT INTO `sys_oper_log` VALUES (450, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2068', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"存在子菜单,不允许删除\",\n  \"code\" : 301\n}', 0, NULL, '2020-11-19 18:47:42');
INSERT INTO `sys_oper_log` VALUES (451, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2069', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 18:47:54');
INSERT INTO `sys_oper_log` VALUES (452, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2070', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 18:48:09');
INSERT INTO `sys_oper_log` VALUES (453, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2071', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 18:48:40');
INSERT INTO `sys_oper_log` VALUES (454, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2072', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 18:48:50');
INSERT INTO `sys_oper_log` VALUES (455, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2073', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 18:49:03');
INSERT INTO `sys_oper_log` VALUES (456, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2068', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 18:49:09');
INSERT INTO `sys_oper_log` VALUES (457, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"学习教育\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-user\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 18:50:15');
INSERT INTO `sys_oper_log` VALUES (458, '党建纪实', 5, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/export', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"\"],\"documentaryActiveAddress\":[\"\"],\"params[beginDocumentaryStartTime]\":[\"\"],\"params[endDocumentaryStartTime]\":[\"\"],\"params[beginDocumentaryEndTime]\":[\"\"],\"params[endDocumentaryEndTime]\":[\"\"],\"documentaryJionPeople\":[\"\"],\"documentaryOtherPeople\":[\"\"],\"documentaryStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\n  \"msg\" : \"6e6880cb-ff0e-4fa3-8ca9-5734428486d0_documentary.xlsx\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 18:51:20');
INSERT INTO `sys_oper_log` VALUES (459, '党建纪实', 5, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/export', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"\"],\"documentaryActiveAddress\":[\"\"],\"params[beginDocumentaryStartTime]\":[\"\"],\"params[endDocumentaryStartTime]\":[\"\"],\"params[beginDocumentaryEndTime]\":[\"\"],\"params[endDocumentaryEndTime]\":[\"\"],\"documentaryJionPeople\":[\"\"],\"documentaryOtherPeople\":[\"\"],\"documentaryStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\n  \"msg\" : \"1f86db9c-d0aa-4aa6-bcb5-1ac6f141c311_documentary.xlsx\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 18:51:41');
INSERT INTO `sys_oper_log` VALUES (460, '党建纪实', 5, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/export', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"\"],\"documentaryActiveAddress\":[\"\"],\"params[beginDocumentaryStartTime]\":[\"\"],\"params[endDocumentaryStartTime]\":[\"\"],\"params[beginDocumentaryEndTime]\":[\"\"],\"params[endDocumentaryEndTime]\":[\"\"],\"documentaryJionPeople\":[\"\"],\"documentaryOtherPeople\":[\"\"],\"documentaryStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\n  \"msg\" : \"f939ad31-ebf5-4c14-8533-52d7496d8252_documentary.xlsx\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-19 18:52:21');
INSERT INTO `sys_oper_log` VALUES (461, '党建纪实', 5, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/export', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"\"],\"documentaryActiveAddress\":[\"\"],\"params[beginDocumentaryStartTime]\":[\"\"],\"params[endDocumentaryStartTime]\":[\"\"],\"params[beginDocumentaryEndTime]\":[\"\"],\"params[endDocumentaryEndTime]\":[\"\"],\"documentaryJionPeople\":[\"\"],\"documentaryOtherPeople\":[\"\"],\"documentaryStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"b5438f41-b409-4e5f-a51a-ca2b96d838e4_documentary.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 18:54:38');
INSERT INTO `sys_oper_log` VALUES (462, '党建纪实', 5, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/export', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"\"],\"documentaryActiveAddress\":[\"\"],\"params[beginDocumentaryStartTime]\":[\"\"],\"params[endDocumentaryStartTime]\":[\"\"],\"params[beginDocumentaryEndTime]\":[\"\"],\"params[endDocumentaryEndTime]\":[\"\"],\"documentaryJionPeople\":[\"\"],\"documentaryOtherPeople\":[\"\"],\"documentaryStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"1cb1b96b-e432-4573-b05a-0419978632af_documentary.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 18:54:59');
INSERT INTO `sys_oper_log` VALUES (463, '党建纪实', 5, 'com.ruoyi.web.platform.documentary.controller.NewsDocumentaryController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/documentary/export', '127.0.0.1', '内网IP', '{\"documentaryTitle\":[\"\"],\"documentaryActiveAddress\":[\"\"],\"params[beginDocumentaryStartTime]\":[\"\"],\"params[endDocumentaryStartTime]\":[\"\"],\"params[beginDocumentaryEndTime]\":[\"\"],\"params[endDocumentaryEndTime]\":[\"\"],\"documentaryJionPeople\":[\"\"],\"documentaryOtherPeople\":[\"\"],\"documentaryStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"ba246f9a-c842-4de7-bb10-4cd53579789a_documentary.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 18:56:14');
INSERT INTO `sys_oper_log` VALUES (464, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"宣传教育\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-child\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:30:22');
INSERT INTO `sys_oper_log` VALUES (465, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"日常管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-sun-o\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:30:51');
INSERT INTO `sys_oper_log` VALUES (466, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"党群互动\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-exchange\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:31:08');
INSERT INTO `sys_oper_log` VALUES (467, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"监督保障\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-handshake-o\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:31:27');
INSERT INTO `sys_oper_log` VALUES (468, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2062\"],\"parentId\":[\"2079\"],\"menuType\":[\"C\"],\"menuName\":[\"留言板评论互动\"],\"url\":[\"/admin/comments\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:comments:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:31:49');
INSERT INTO `sys_oper_log` VALUES (469, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2075\"],\"parentId\":[\"2077\"],\"menuType\":[\"C\"],\"menuName\":[\"新闻类别设置\"],\"url\":[\"system/dict/detail/100\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-arrows-h\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:32:10');
INSERT INTO `sys_oper_log` VALUES (470, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"2077\"],\"menuType\":[\"C\"],\"menuName\":[\"新闻展示\"],\"url\":[\"/admin/news\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:news:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:32:30');
INSERT INTO `sys_oper_log` VALUES (471, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2078\"],\"menuType\":[\"C\"],\"menuName\":[\"学生党员信息管理\"],\"url\":[\"/admin/partyInfo\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:partyInfo:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:33:24');
INSERT INTO `sys_oper_log` VALUES (472, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2074\"],\"menuType\":[\"C\"],\"menuName\":[\"学生党员信息管理\"],\"url\":[\"/admin/partyInfo\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:partyInfo:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:34:08');
INSERT INTO `sys_oper_log` VALUES (473, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2078', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:34:18');
INSERT INTO `sys_oper_log` VALUES (474, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2074\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"日常管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-bar-chart\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:34:26');
INSERT INTO `sys_oper_log` VALUES (475, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2076', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:34:42');
INSERT INTO `sys_oper_log` VALUES (476, '教职工汇总', 5, 'com.ruoyi.web.platform.facultySummary.controller.FacultySummaryController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/facultySummary/export', '127.0.0.1', '内网IP', '{\"facultyNum\":[\"\"],\"facultyName\":[\"\"],\"facultySex\":[\"\"],\"facultyNation\":[\"\"],\"params[beginFacultyBirthday]\":[\"\"],\"params[endFacultyBirthday]\":[\"\"],\"params[beginFacultyTimeJoinPart]\":[\"\"],\"params[endFacultyTimeJoinPart]\":[\"\"],\"facultyBranchNumber\":[\"\"],\"facultyPay\":[\"\"],\"facultyNativePlace\":[\"\"],\"facultyCurrentAdministrativePosition\":[\"\"],\"facultyTitle\":[\"\"],\"facultySocialService\":[\"\"],\"facultyAcademicDegree\":[\"\"],\"facultyGraduateSchoolAndMajor\":[\"\"],\"params[beginFacultyTimeWork]\":[\"\"],\"params[endFacultyTimeWork]\":[\"\"],\"facultyOverseaStudyBeginAndEnd\":[\"\"],\"facultyIdCard\":[\"\"],\"facultyBranchPosition\":[\"\"],\"facultyMaritalStatus\":[\"\"],\"facultyPhoneNumber\":[\"\"],\"facultyRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\n  \"msg\" : \"23e9d1a0-32ea-4949-b36d-7a1f54caa63c_facultySummary.xlsx\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:43:26');
INSERT INTO `sys_oper_log` VALUES (477, '教职工汇总', 5, 'com.ruoyi.web.platform.facultySummary.controller.FacultySummaryController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/facultySummary/export', '127.0.0.1', '内网IP', '{\"facultyNum\":[\"\"],\"facultyName\":[\"\"],\"facultySex\":[\"\"],\"facultyNation\":[\"\"],\"params[beginFacultyBirthday]\":[\"\"],\"params[endFacultyBirthday]\":[\"\"],\"params[beginFacultyTimeJoinPart]\":[\"\"],\"params[endFacultyTimeJoinPart]\":[\"\"],\"facultyBranchNumber\":[\"\"],\"facultyPay\":[\"\"],\"facultyNativePlace\":[\"\"],\"facultyCurrentAdministrativePosition\":[\"\"],\"facultyTitle\":[\"\"],\"facultySocialService\":[\"\"],\"facultyAcademicDegree\":[\"\"],\"facultyGraduateSchoolAndMajor\":[\"\"],\"params[beginFacultyTimeWork]\":[\"\"],\"params[endFacultyTimeWork]\":[\"\"],\"facultyOverseaStudyBeginAndEnd\":[\"\"],\"facultyIdCard\":[\"\"],\"facultyBranchPosition\":[\"\"],\"facultyMaritalStatus\":[\"\"],\"facultyPhoneNumber\":[\"\"],\"facultyRemarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\n  \"msg\" : \"9c01881e-d39a-4308-b43d-3554e5ebc4dd_facultySummary.xlsx\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:46:39');
INSERT INTO `sys_oper_log` VALUES (478, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '第一支部', '/party-platform/tool/gen/download/sys_standingbook', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-20 19:53:18');
INSERT INTO `sys_oper_log` VALUES (479, '台账', 5, 'com.ruoyi.web.platform.standingbook.controller.StandingbookController.export()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/standingbook/export', '127.0.0.1', '内网IP', '{\"standingbookNumber\":[\"\"],\"standingbookName\":[\"\"],\"standingbookSex\":[\"\"],\"standingbookNation\":[\"\"],\"params[beginStandingbookBirthday]\":[\"\"],\"params[endStandingbookBirthday]\":[\"\"],\"params[beginStandingbookTimeJoinPart]\":[\"\"],\"params[endStandingbookTimeJoinPart]\":[\"\"],\"standingbookBranchNumber\":[\"\"],\"standingbookFilesPartyMembwes\":[\"\"],\"standingbookRAndPName\":[\"\"],\"standingbookRAndPExplain\":[\"\"],\"standingbookRAndPReason\":[\"\"],\"params[beginStandingbookApprovalDate]\":[\"\"],\"params[endStandingbookApprovalDate]\":[\"\"],\"params[beginStandingbookRevocationDate]\":[\"\"],\"params[endStandingbookRevocationDate]\":[\"\"],\"standingbookInflowUnit\":[\"\"],\"standingbookIAndC\":[\"\"],\"params[beginStandingbookOutflowDate]\":[\"\"],\"params[endStandingbookOutflowDate]\":[\"\"],\"standingbookOutflowReason\":[\"\"],\"standingbookAbroad\":[\"\"],\"phoneNumber\":[\"\"],\"remarks\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\n  \"msg\" : \"d9f5483f-e1c2-4705-9b5c-fffb4c8ef243_standingbook.xlsx\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:54:27');
INSERT INTO `sys_oper_log` VALUES (480, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2050', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"存在子菜单,不允许删除\",\n  \"code\" : 301\n}', 0, NULL, '2020-11-20 19:55:07');
INSERT INTO `sys_oper_log` VALUES (481, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2052', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:55:19');
INSERT INTO `sys_oper_log` VALUES (482, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2051', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:55:35');
INSERT INTO `sys_oper_log` VALUES (483, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2053', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:55:39');
INSERT INTO `sys_oper_log` VALUES (484, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2054', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:55:43');
INSERT INTO `sys_oper_log` VALUES (485, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2050', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"存在子菜单,不允许删除\",\n  \"code\" : 301\n}', 0, NULL, '2020-11-20 19:55:46');
INSERT INTO `sys_oper_log` VALUES (486, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2055', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:55:53');
INSERT INTO `sys_oper_log` VALUES (487, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '第一支部', '/party-platform/system/menu/remove/2050', '127.0.0.1', '内网IP', NULL, '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:55:58');
INSERT INTO `sys_oper_log` VALUES (488, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2081\"],\"parentId\":[\"2081\"],\"menuType\":[\"C\"],\"menuName\":[\"台账\"],\"url\":[\"/admin/standingbook\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:standingbook:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:56:24');
INSERT INTO `sys_oper_log` VALUES (489, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2081\"],\"parentId\":[\"2074\"],\"menuType\":[\"C\"],\"menuName\":[\"台账\"],\"url\":[\"/admin/standingbook\"],\"target\":[\"menuItem\"],\"perms\":[\"admin:standingbook:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 19:58:56');
INSERT INTO `sys_oper_log` VALUES (490, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"第一支部管理员\"],\"roleKey\":[\"yctc:first\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"第一支部管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,2006,2020,2021,2022,2023,2024,2025,2074,2056,2057,2058,2059,2060,2061,2081,2082,2083,2084,2085,2086,2007,2008,2009,2010,2011,2012,2019,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2077,2075,2000,2001,2002,2003,2004,2005,2079,2062,2063,2064,2065,2066,2067,2080\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 20:04:20');
INSERT INTO `sys_oper_log` VALUES (491, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"第一支部管理员\"],\"roleKey\":[\"yctc:first\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"第一支部管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,2006,2020,2021,2022,2023,2024,2025,2074,2056,2057,2058,2059,2060,2061,2081,2082,2083,2084,2085,2086,2007,2008,2009,2010,2011,2012,2019,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2077,2075,2000,2001,2002,2003,2004,2005,2079,2062,2063,2064,2065,2066,2067,2080\"]}', '{\n  \"msg\" : \"新增角色\'第一支部管理员\'失败，角色名称已存在\",\n  \"code\" : 500\n}', 0, NULL, '2020-11-20 20:04:20');
INSERT INTO `sys_oper_log` VALUES (492, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"第一支部管理员\"],\"roleKey\":[\"yctc_first\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"第一支部管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,2006,2020,2021,2022,2023,2024,2025,2074,2056,2057,2058,2059,2060,2061,2081,2082,2083,2084,2085,2086,2007,2008,2009,2010,2011,2012,2019,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2077,2075,2000,2001,2002,2003,2004,2005,2079,2062,2063,2064,2065,2066,2067,2080\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 20:04:33');
INSERT INTO `sys_oper_log` VALUES (493, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"luna_first\"],\"deptName\":[\"第一支部\"],\"phonenumber\":[\"15696756551\"],\"email\":[\"luna_first@163.com\"],\"loginName\":[\"luna_first\"],\"sex\":[\"0\"],\"role\":[\"100\"],\"remark\":[\"第一支部管理员\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"postIds\":[\"3\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 20:19:56');
INSERT INTO `sys_oper_log` VALUES (494, '台账', 2, 'com.ruoyi.web.platform.standingbook.controller.StandingbookController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/admin/standingbook/edit', '127.0.0.1', '内网IP', '{\"standingbookId\":[\"1\"],\"standingbookNumber\":[\"1\"],\"standingbookName\":[\"xcg\"],\"standingbookSex\":[\"0\"],\"standingbookNation\":[\"汉族\"],\"standingbookBirthday\":[\"2000-03-02\"],\"standingbookTimeJoinPart\":[\"2020-10-10\"],\"standingbookBranchNumber\":[\"第二支部\"],\"standingbookFilesPartyMembwes\":[\"材料齐全\"],\"standingbookRAndPName\":[\"无\"],\"standingbookRAndPExplain\":[\"无\"],\"standingbookRAndPReason\":[\"无\"],\"standingbookApprovalDate\":[\"2020-10-24\"],\"standingbookRevocationDate\":[\"2020-10-24\"],\"standingbookInflowUnit\":[\"正常\"],\"standingbookIAndC\":[\"17849198551\"],\"standingbookOutflowDate\":[\"2020-10-24\"],\"standingbookOutflowReason\":[\"无\"],\"standingbookAbroad\":[\"无\"],\"phoneNumber\":[\"17849198551\"],\"remarks\":[\"无\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 20:36:32');
INSERT INTO `sys_oper_log` VALUES (495, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"101\"],\"dictLabel\":[\"四会一课\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_news_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"三会一课\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 20:39:59');
INSERT INTO `sys_oper_log` VALUES (496, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"三会一课\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_news_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"新闻类型：三会一课\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 20:40:27');
INSERT INTO `sys_oper_log` VALUES (497, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"101\"],\"dictLabel\":[\"四会一课\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_news_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"新闻类型：四会一课\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 20:40:36');
INSERT INTO `sys_oper_log` VALUES (498, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"五会一课\"],\"dictValue\":[\"4\"],\"dictType\":[\"sys_news_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"新闻类型：五会一课\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 20:41:03');
INSERT INTO `sys_oper_log` VALUES (499, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"第一支部管理员\"],\"roleKey\":[\"yctc_first\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 20:43:43');
INSERT INTO `sys_oper_log` VALUES (500, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"第一支部管理员\"],\"roleKey\":[\"yctc_first\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"第一支部管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,2006,2020,2021,2022,2023,2024,2025,2074,2056,2057,2058,2059,2060,2061,2081,2082,2083,2084,2085,2086,2007,2008,2009,2010,2011,2012,2019,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2077,2075,2000,2001,2002,2003,2004,2005,2079,2062,2063,2064,2065,2066,2067,2080\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 20:47:26');
INSERT INTO `sys_oper_log` VALUES (501, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"第一支部管理员\"],\"roleKey\":[\"yctc_first\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"第一支部管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,105,1025,1026,1027,1028,1029,2006,2020,2021,2022,2023,2024,2025,2074,2056,2057,2058,2059,2060,2061,2081,2082,2083,2084,2085,2086,2007,2008,2009,2010,2011,2012,2019,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2077,2075,2000,2001,2002,2003,2004,2005,2079,2062,2063,2064,2065,2066,2067,2080\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 21:00:38');
INSERT INTO `sys_oper_log` VALUES (502, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '第一支部', '/party-platform/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"第一支部管理员\"],\"roleKey\":[\"yctc_first\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"第一支部管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,1025,1026,1027,1028,1029,2006,2020,2021,2022,2023,2024,2025,2074,2056,2057,2058,2059,2060,2061,2081,2082,2083,2084,2085,2086,2007,2008,2009,2010,2011,2012,2019,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2077,2075,2000,2001,2002,2003,2004,2005,2079,2062,2063,2064,2065,2066,2067,2080\"]}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-11-20 21:02:40');
COMMIT;

-- ----------------------------
-- Table structure for sys_overseas_study_member
-- ----------------------------
DROP TABLE IF EXISTS `sys_overseas_study_member`;
CREATE TABLE `sys_overseas_study_member` (
  `overseas_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '留学id',
  `overseas_number` bigint(20) DEFAULT NULL COMMENT '序号',
  `overseas_college` varchar(20) DEFAULT NULL COMMENT '姓名',
  `overseas_name` varchar(10) DEFAULT NULL COMMENT '性别',
  `overseas_sex` varchar(10) DEFAULT NULL COMMENT '民族',
  `overseas_birthday` date DEFAULT NULL COMMENT '出生年月',
  `overseas_native_place` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `overseas_Political_outlook` varchar(20) DEFAULT NULL COMMENT '政治面貌',
  `overseas_party_join_time` varchar(100) DEFAULT NULL COMMENT '党派及加入时间',
  `overseas_academic_degree` varchar(50) DEFAULT NULL COMMENT '学历学位',
  `overseas_graduate_school_major` varchar(50) DEFAULT NULL COMMENT '毕业院校及其专业',
  `overseas_job_start_time` date DEFAULT NULL COMMENT '参加工作时间',
  `overseas_Study_begin_end` varchar(100) DEFAULT NULL COMMENT '留学起止时间',
  `overseas_place` varchar(40) DEFAULT NULL COMMENT '留学地点',
  `non_party_remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  PRIMARY KEY (`overseas_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='留学归国人员';

-- ----------------------------
-- Records of sys_overseas_study_member
-- ----------------------------
BEGIN;
INSERT INTO `sys_overseas_study_member` VALUES (1, 1, '罗杰', '0', '汉', '2020-09-30', '江苏盐城', '共青团员', '无', '本科', '', '2020-10-07', '', '', '', '2020-10-24 14:09:17', '2020-10-24 14:22:21', '', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_party_activists
-- ----------------------------
DROP TABLE IF EXISTS `sys_party_activists`;
CREATE TABLE `sys_party_activists` (
  `party_activists_stu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '入党积极分子id',
  `party_activists_stu_num` bigint(20) DEFAULT NULL COMMENT '学号',
  `party_activists_name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `party_activists_class` varchar(20) DEFAULT NULL COMMENT '班级',
  `party_activists_sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `party_activists_nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `party_activists_birthday` date DEFAULT NULL COMMENT '出生年月',
  `party_activists_native_place` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `party_activists_Application_for_Party_membership_time` date DEFAULT NULL COMMENT '入党申请书时间',
  `party_activists_autobiography` varchar(10) DEFAULT NULL COMMENT '自传',
  `party_activists_Approval_form` varchar(255) DEFAULT NULL COMMENT '《团员推优审批表》',
  `party_activists_establishment_date` date DEFAULT NULL COMMENT '确立积极分子日期',
  `party_activists_closing_time` date DEFAULT NULL COMMENT '党校结业证书日期',
  `party_activists_thought_report` varchar(10) DEFAULT NULL COMMENT '思想汇报',
  `party_activists_survey_table` varchar(10) DEFAULT NULL COMMENT '积极分子考察表',
  `party_activists_establishment_date_dev` date DEFAULT NULL COMMENT '确立发展对象日期',
  `party_activists_position_stu_cadres` varchar(20) DEFAULT NULL COMMENT '学生干部任职情况',
  `party_activists_rewards_punishments` varchar(255) DEFAULT NULL COMMENT '奖惩情况',
  `party_activists_headmaster` varchar(10) DEFAULT NULL COMMENT '班主任',
  `party_activists_contact_information` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `party_activists_remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`party_activists_stu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='入党积极分子';

-- ----------------------------
-- Records of sys_party_activists
-- ----------------------------
BEGIN;
INSERT INTO `sys_party_activists` VALUES (1, 1812630715, '陈章月', '软件187', '0', '汉', '2020-10-17', '重庆', '2020-10-02', '1', '1', '2020-10-05', '2020-09-28', '1', '1', '2020-10-27', '无', '无', '无', '16787656782', '');
INSERT INTO `sys_party_activists` VALUES (2, 1812630715, '乔伟', '软件187', '0', '汉', '2020-10-17', '重庆', '2020-10-02', '0', '1', '2020-10-05', '2020-09-28', '0', '0', '2020-10-27', '无', '无', '无', '16787656782', '');
INSERT INTO `sys_party_activists` VALUES (3, 1812630715, '罗杰', '软件187', '0', '汉', '2020-10-17', '重庆', '2020-10-02', '0', '0', '2020-10-05', '2020-09-28', '0', '0', '2020-10-27', '无', '无', '无', '16787656782', '');
INSERT INTO `sys_party_activists` VALUES (4, 1812630715, '小红', '软件187', '1', '汉', '2020-10-17', '重庆', '2020-10-02', '0', '1', '2020-10-05', '2020-09-28', '0', '0', '2020-10-27', '无', '无', '无', '16787656782', '');
INSERT INTO `sys_party_activists` VALUES (5, 1812630715, '小张', '软件187', '1', '汉', '2020-10-17', '重庆', '2020-10-02', '0', '0', '2020-10-05', '2020-09-28', '0', '0', '2020-10-27', '无', '无', '无', '16787656782', '');
INSERT INTO `sys_party_activists` VALUES (6, 1812630715, '小明', '软件187', '0', '汉', '2020-10-17', '重庆', '2020-10-02', '1', '1', '2020-10-05', '2020-09-28', '1', '1', '2020-10-27', '无', '无', '无', '16787656782', '');
INSERT INTO `sys_party_activists` VALUES (7, 1812630715, '小华', '软件187', '0', '汉', '2020-10-17', '重庆', '2020-10-02', '1', '1', '2020-10-05', '2020-09-28', '1', '1', '2020-10-27', '无', '无', '无', '16787656782', '');
INSERT INTO `sys_party_activists` VALUES (8, 1812630715, '小李', '软件187', '0', '汉', '2020-10-17', '重庆', '2020-10-02', '0', '0', '2020-10-05', '2020-09-28', '0', '0', '2020-10-27', '无', '无', '无', '16787656782', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_party_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_party_info`;
CREATE TABLE `sys_party_info` (
  `party_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '党员编号',
  `party_student_number` bigint(20) NOT NULL COMMENT '学号',
  `party_name` varchar(10) NOT NULL COMMENT '姓名',
  `party_class` varchar(20) NOT NULL COMMENT '班级',
  `party_sex` varchar(10) NOT NULL COMMENT '性别',
  `party_birthday` date NOT NULL COMMENT '生日',
  `party_native_place` varchar(20) NOT NULL COMMENT '籍贯',
  `party_idcard` bigint(11) NOT NULL COMMENT '身份证',
  `party_join_time` date DEFAULT NULL COMMENT '入党日期',
  `party_join_application` varchar(10) DEFAULT NULL COMMENT '入党志愿书',
  `party_inspect` varchar(10) DEFAULT NULL COMMENT '预备党员考察表',
  `party_formal_application` varchar(10) DEFAULT NULL COMMENT '转正申请书',
  `party_thought_report` varchar(10) DEFAULT NULL COMMENT '思想报告',
  `party_student_post` varchar(20) DEFAULT NULL COMMENT '学生干部任职情况',
  `party_rewards_punishments` varchar(255) DEFAULT NULL COMMENT '奖惩情况',
  `party_other_info` varchar(255) DEFAULT NULL COMMENT '其他',
  `party_head_master` varchar(10) DEFAULT NULL COMMENT '班主任',
  `party_connect` bigint(20) DEFAULT NULL COMMENT '联系方式',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`party_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学生党员总表';

-- ----------------------------
-- Records of sys_party_info
-- ----------------------------
BEGIN;
INSERT INTO `sys_party_info` VALUES (1, 1812630715, '陈章月', '软件187', '0', '2020-10-17', '重庆', 50038619911062141, '2020-10-01', '1', '1', '1', '1', '无', '无', '', '季芳芳', 13897654876, '2020-10-17 12:23:41', NULL, '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` VALUES (1, 'ps', '党委书记', 1, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:55:28', '');
INSERT INTO `sys_post` VALUES (2, 'pbs', '党支部书记', 2, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:50:53', '');
INSERT INTO `sys_post` VALUES (3, 'pbm', '支部委员', 3, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:51:39', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通用户', 4, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:50:12', '');
INSERT INTO `sys_post` VALUES (5, 'pps', '党总支（党委）书记', 5, '0', 'admin', '2020-09-26 13:47:22', 'admin', '2020-09-26 13:50:59', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_religion
-- ----------------------------
DROP TABLE IF EXISTS `sys_religion`;
CREATE TABLE `sys_religion` (
  `religion_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '留学人员id',
  `religion_number` bigint(20) DEFAULT NULL COMMENT '序号',
  `religion_college` varchar(20) DEFAULT NULL COMMENT '学院',
  `religion_name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `religion_sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `religion_nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `religion_birthday` date DEFAULT NULL COMMENT '出生年月',
  `religion_native_place` varchar(30) DEFAULT NULL COMMENT '籍贯',
  `religion_party_join_time` date DEFAULT NULL COMMENT '入党时间',
  `religion_type` varchar(20) DEFAULT NULL COMMENT '宗教类型',
  `religious_services_facilities` varchar(50) DEFAULT NULL COMMENT '宗教活动场所',
  `religion_join` date DEFAULT NULL COMMENT '信教时间',
  `religion_contact_information` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `religion_remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  PRIMARY KEY (`religion_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='留学人员';

-- ----------------------------
-- Records of sys_religion
-- ----------------------------
BEGIN;
INSERT INTO `sys_religion` VALUES (1, 1, '信息工程学院', '罗杰', '0', '汉', '2020-11-13', '江苏盐城', '2020-11-13', '佛教', '雷音寺', '2020-11-13', '16141766578', '无', '2020-11-13 02:19:39', '2020-11-15 13:34:22', 'admin', 'admin');
INSERT INTO `sys_religion` VALUES (2, 2, '信息工程学院', '乔伟', '1', '汉', '2020-11-13', '江苏盐城', '2020-11-13', '佛教', '雷音寺', '2020-11-13', '16141766578', '无', '2020-11-15 13:34:11', '2020-11-15 13:34:22', 'admin', 'admin');
INSERT INTO `sys_religion` VALUES (3, NULL, '', '', '', '', NULL, '', NULL, '', '', NULL, '', '', '2020-11-15 13:34:12', '2020-11-15 13:34:23', 'admin', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for sys_religion_student
-- ----------------------------
DROP TABLE IF EXISTS `sys_religion_student`;
CREATE TABLE `sys_religion_student` (
  `religion_student_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '宗教id',
  `religion_student_number` bigint(20) DEFAULT NULL COMMENT '序号',
  `religion_student_college` varchar(20) DEFAULT NULL COMMENT '学院',
  `religion_student_class` bigint(20) DEFAULT NULL COMMENT '班级',
  `religion_student_stu_num` bigint(20) DEFAULT NULL COMMENT '学号',
  `religion_student_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `religion_student_sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `religion_student_nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `religion_student_birthday` date DEFAULT NULL COMMENT '出生年月',
  `religion_student_native_place` varchar(30) DEFAULT NULL COMMENT '籍贯',
  `religion_student_Political_outlook` varchar(20) NOT NULL COMMENT '政治面貌',
  `religion_student_religiontype` varchar(20) DEFAULT NULL COMMENT '宗教类型',
  `religion_student_activitylocaltion` varchar(50) NOT NULL COMMENT '宗教活动场所',
  `religion_student_join` date DEFAULT NULL COMMENT '信教时间',
  `religion_student_reason` varchar(255) DEFAULT NULL COMMENT '信教原因',
  `religion_student_contact_information` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `religion_student_remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  PRIMARY KEY (`religion_student_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='留学生';

-- ----------------------------
-- Records of sys_religion_student
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-10-14 21:24:27', '普通角色');
INSERT INTO `sys_role` VALUES (100, '第一支部管理员', 'yctc_first', 3, '4', '0', '0', 'admin', '2020-11-20 20:04:19', 'admin', '2020-11-20 21:02:39', '第一支部管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 102);
INSERT INTO `sys_role_dept` VALUES (2, 103);
INSERT INTO `sys_role_dept` VALUES (2, 104);
INSERT INTO `sys_role_dept` VALUES (2, 105);
INSERT INTO `sys_role_dept` VALUES (2, 106);
INSERT INTO `sys_role_dept` VALUES (2, 108);
INSERT INTO `sys_role_dept` VALUES (2, 109);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 1000);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1025);
INSERT INTO `sys_role_menu` VALUES (100, 1026);
INSERT INTO `sys_role_menu` VALUES (100, 1027);
INSERT INTO `sys_role_menu` VALUES (100, 1028);
INSERT INTO `sys_role_menu` VALUES (100, 1029);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2005);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2010);
INSERT INTO `sys_role_menu` VALUES (100, 2011);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2021);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2026);
INSERT INTO `sys_role_menu` VALUES (100, 2027);
INSERT INTO `sys_role_menu` VALUES (100, 2028);
INSERT INTO `sys_role_menu` VALUES (100, 2029);
INSERT INTO `sys_role_menu` VALUES (100, 2030);
INSERT INTO `sys_role_menu` VALUES (100, 2031);
INSERT INTO `sys_role_menu` VALUES (100, 2032);
INSERT INTO `sys_role_menu` VALUES (100, 2033);
INSERT INTO `sys_role_menu` VALUES (100, 2034);
INSERT INTO `sys_role_menu` VALUES (100, 2035);
INSERT INTO `sys_role_menu` VALUES (100, 2036);
INSERT INTO `sys_role_menu` VALUES (100, 2037);
INSERT INTO `sys_role_menu` VALUES (100, 2038);
INSERT INTO `sys_role_menu` VALUES (100, 2039);
INSERT INTO `sys_role_menu` VALUES (100, 2040);
INSERT INTO `sys_role_menu` VALUES (100, 2041);
INSERT INTO `sys_role_menu` VALUES (100, 2042);
INSERT INTO `sys_role_menu` VALUES (100, 2043);
INSERT INTO `sys_role_menu` VALUES (100, 2044);
INSERT INTO `sys_role_menu` VALUES (100, 2045);
INSERT INTO `sys_role_menu` VALUES (100, 2046);
INSERT INTO `sys_role_menu` VALUES (100, 2047);
INSERT INTO `sys_role_menu` VALUES (100, 2048);
INSERT INTO `sys_role_menu` VALUES (100, 2049);
INSERT INTO `sys_role_menu` VALUES (100, 2056);
INSERT INTO `sys_role_menu` VALUES (100, 2057);
INSERT INTO `sys_role_menu` VALUES (100, 2058);
INSERT INTO `sys_role_menu` VALUES (100, 2059);
INSERT INTO `sys_role_menu` VALUES (100, 2060);
INSERT INTO `sys_role_menu` VALUES (100, 2061);
INSERT INTO `sys_role_menu` VALUES (100, 2062);
INSERT INTO `sys_role_menu` VALUES (100, 2063);
INSERT INTO `sys_role_menu` VALUES (100, 2064);
INSERT INTO `sys_role_menu` VALUES (100, 2065);
INSERT INTO `sys_role_menu` VALUES (100, 2066);
INSERT INTO `sys_role_menu` VALUES (100, 2067);
INSERT INTO `sys_role_menu` VALUES (100, 2074);
INSERT INTO `sys_role_menu` VALUES (100, 2075);
INSERT INTO `sys_role_menu` VALUES (100, 2077);
INSERT INTO `sys_role_menu` VALUES (100, 2079);
INSERT INTO `sys_role_menu` VALUES (100, 2080);
INSERT INTO `sys_role_menu` VALUES (100, 2081);
INSERT INTO `sys_role_menu` VALUES (100, 2082);
INSERT INTO `sys_role_menu` VALUES (100, 2083);
INSERT INTO `sys_role_menu` VALUES (100, 2084);
INSERT INTO `sys_role_menu` VALUES (100, 2085);
INSERT INTO `sys_role_menu` VALUES (100, 2086);
COMMIT;

-- ----------------------------
-- Table structure for sys_standingbook
-- ----------------------------
DROP TABLE IF EXISTS `sys_standingbook`;
CREATE TABLE `sys_standingbook` (
  `standingbook_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '台账id',
  `standingbook_number` bigint(20) DEFAULT NULL COMMENT '序号',
  `standingbook_name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `standingbook_sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `standingbook_nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `standingbook_birthday` date DEFAULT NULL COMMENT '出生日期',
  `standingbook_time_join_part` date DEFAULT NULL COMMENT '入党时间',
  `standingbook_branch_number` varchar(10) DEFAULT NULL COMMENT '所在支部',
  `standingbook_files_party_membwes` varchar(20) DEFAULT NULL COMMENT '党员档案管理',
  `standingbook_r_and_p_name` varchar(50) DEFAULT NULL COMMENT '奖惩名称',
  `standingbook_r_and_p_explain` varchar(255) DEFAULT NULL COMMENT '奖惩说明',
  `standingbook_r_and_p_reason` varchar(255) DEFAULT NULL COMMENT '奖惩原因',
  `standingbook_approval_date` date DEFAULT NULL COMMENT '批准日期',
  `standingbook_revocation_date` date DEFAULT NULL COMMENT '撤销日期',
  `standingbook_Inflow_unit` varchar(50) DEFAULT NULL COMMENT '流入情况',
  `standingbook_I_and_C` varchar(100) DEFAULT NULL COMMENT '流入单位联系人及联系方式',
  `standingbook_outflow_date` date DEFAULT NULL COMMENT '流出日期',
  `standingbook_outflow_reason` varchar(255) DEFAULT NULL COMMENT '流出原因',
  `standingbook_abroad` varchar(255) DEFAULT NULL COMMENT '出国情况',
  `phone_number` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  PRIMARY KEY (`standingbook_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='台账';

-- ----------------------------
-- Records of sys_standingbook
-- ----------------------------
BEGIN;
INSERT INTO `sys_standingbook` VALUES (1, 1, 'xcg', '0', '汉族', '2000-03-02', '2020-10-10', '第二支部', '材料齐全', '无', '无', '无', '2020-10-24', '2020-10-24', '正常', '17849198551', '2020-10-24', '无', '无', '17849198551', '无', '2020-10-24 17:05:08', '2020-11-20 20:36:27', '', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 1030, 'admin', 'admin', '00', 'luna_nov@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-11-20 21:22:52', 'admin', '2018-03-16 11:33:00', 'ry', '2020-11-20 21:22:52', '管理员');
INSERT INTO `sys_user` VALUES (2, 1050, 'ry', '测试人员', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'admin', '2020-09-26 13:55:48', '测试员');
INSERT INTO `sys_user` VALUES (100, 1060, 'luna', 'luna', '01', 'Iszychen@gmail.com', '15696756582', '0', '', '908a9c13bed1733af5f87cc85b0cba0c', 'e72ef5', '0', '0', '127.0.0.1', '2020-09-25 10:27:03', '', '2020-09-24 20:38:57', 'admin', '2020-10-14 19:32:23', '');
INSERT INTO `sys_user` VALUES (101, 1030, 'luna1', '小明', '00', '15696756583@163.com', '15696756583', '0', '', 'ad7b9ead63dd70a63e8beab7f745877d', 'e7c035', '0', '0', '', NULL, 'admin', '2020-10-14 22:49:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (102, 1030, 'luna2', '小明', '00', '15696756584@163.com', '15696756584', '0', '', 'ad7b9ead63dd70a63e8beab7f745877d', 'e7c035', '0', '0', '', NULL, 'admin', '2020-10-14 22:49:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (103, 1030, 'luna3', '小明', '00', '15696756585@163.com', '15696756585', '0', '', 'ad7b9ead63dd70a63e8beab7f745877d', 'e7c035', '0', '0', '', NULL, 'admin', '2020-10-14 22:49:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (104, 1030, 'luna4', '小明', '00', '15696756586@163.com', '15696756586', '0', '', 'ad7b9ead63dd70a63e8beab7f745877d', 'e7c035', '0', '0', '', NULL, 'admin', '2020-10-14 22:49:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (105, 1030, 'luna5', '小明', '00', '15696756587@163.com', '15696756587', '0', '', 'ad7b9ead63dd70a63e8beab7f745877d', 'e7c035', '0', '0', '', NULL, 'admin', '2020-10-14 22:49:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (106, 1030, 'luna6', '小明', '00', '15696756588@163.com', '15696756588', '0', '', 'ad7b9ead63dd70a63e8beab7f745877d', 'e7c035', '0', '0', '', NULL, 'admin', '2020-10-14 22:49:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (107, 1030, 'luna_first', 'luna_first', '00', 'luna_first@163.com', '15696756551', '0', '', '5a464487576fe9d010e31b8ee535f78d', '649a78', '0', '0', '127.0.0.1', '2020-11-20 21:23:44', 'admin', '2020-11-20 20:19:55', '', '2020-11-20 21:23:43', '第一支部管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_online` VALUES ('22298faa-ead3-4b17-9ca9-891716c7a8f1', 'luna_first', '第一支部', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 8.1', 'on_line', '2020-11-20 21:23:32', '2020-11-20 21:26:02', 1800000);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 4);
INSERT INTO `sys_user_post` VALUES (101, 4);
INSERT INTO `sys_user_post` VALUES (107, 3);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 2);
INSERT INTO `sys_user_role` VALUES (101, 2);
INSERT INTO `sys_user_role` VALUES (107, 100);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
