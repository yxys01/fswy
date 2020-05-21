/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 21/05/2020 09:41:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 公告', 7, 'add_activate');
INSERT INTO `auth_permission` VALUES (26, 'Can change 公告', 7, 'change_activate');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 公告', 7, 'delete_activate');
INSERT INTO `auth_permission` VALUES (28, 'Can view 公告', 7, 'view_activate');
INSERT INTO `auth_permission` VALUES (29, 'Can add 图片轮播', 8, 'add_carousel');
INSERT INTO `auth_permission` VALUES (30, 'Can change 图片轮播', 8, 'change_carousel');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 图片轮播', 8, 'delete_carousel');
INSERT INTO `auth_permission` VALUES (32, 'Can view 图片轮播', 8, 'view_carousel');
INSERT INTO `auth_permission` VALUES (33, 'Can add 友情链接', 9, 'add_friendlink');
INSERT INTO `auth_permission` VALUES (34, 'Can change 友情链接', 9, 'change_friendlink');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 友情链接', 9, 'delete_friendlink');
INSERT INTO `auth_permission` VALUES (36, 'Can view 友情链接', 9, 'view_friendlink');
INSERT INTO `auth_permission` VALUES (37, 'Can add 关键词', 10, 'add_keyword');
INSERT INTO `auth_permission` VALUES (38, 'Can change 关键词', 10, 'change_keyword');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 关键词', 10, 'delete_keyword');
INSERT INTO `auth_permission` VALUES (40, 'Can view 关键词', 10, 'view_keyword');
INSERT INTO `auth_permission` VALUES (41, 'Can add 标签', 11, 'add_tag');
INSERT INTO `auth_permission` VALUES (42, 'Can change 标签', 11, 'change_tag');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 标签', 11, 'delete_tag');
INSERT INTO `auth_permission` VALUES (44, 'Can view 标签', 11, 'view_tag');
INSERT INTO `auth_permission` VALUES (45, 'Can add 大分类', 12, 'add_bigcategory');
INSERT INTO `auth_permission` VALUES (46, 'Can change 大分类', 12, 'change_bigcategory');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 大分类', 12, 'delete_bigcategory');
INSERT INTO `auth_permission` VALUES (48, 'Can view 大分类', 12, 'view_bigcategory');
INSERT INTO `auth_permission` VALUES (49, 'Can add 分类', 13, 'add_category');
INSERT INTO `auth_permission` VALUES (50, 'Can change 分类', 13, 'change_category');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 分类', 13, 'delete_category');
INSERT INTO `auth_permission` VALUES (52, 'Can view 分类', 13, 'view_category');
INSERT INTO `auth_permission` VALUES (53, 'Can add 文章', 14, 'add_article');
INSERT INTO `auth_permission` VALUES (54, 'Can change 文章', 14, 'change_article');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 文章', 14, 'delete_article');
INSERT INTO `auth_permission` VALUES (56, 'Can view 文章', 14, 'view_article');
INSERT INTO `auth_permission` VALUES (57, 'Can add 用户', 15, 'add_ouser');
INSERT INTO `auth_permission` VALUES (58, 'Can change 用户', 15, 'change_ouser');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 用户', 15, 'delete_ouser');
INSERT INTO `auth_permission` VALUES (60, 'Can view 用户', 15, 'view_ouser');
INSERT INTO `auth_permission` VALUES (61, 'Can add site', 16, 'add_site');
INSERT INTO `auth_permission` VALUES (62, 'Can change site', 16, 'change_site');
INSERT INTO `auth_permission` VALUES (63, 'Can delete site', 16, 'delete_site');
INSERT INTO `auth_permission` VALUES (64, 'Can view site', 16, 'view_site');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can moderate comments', 17, 'can_moderate');
INSERT INTO `auth_permission` VALUES (70, 'Can add comment flag', 18, 'add_commentflag');
INSERT INTO `auth_permission` VALUES (71, 'Can change comment flag', 18, 'change_commentflag');
INSERT INTO `auth_permission` VALUES (72, 'Can delete comment flag', 18, 'delete_commentflag');
INSERT INTO `auth_permission` VALUES (73, 'Can view comment flag', 18, 'view_commentflag');
INSERT INTO `auth_permission` VALUES (74, 'Can add comment user', 19, 'add_commentuser');
INSERT INTO `auth_permission` VALUES (75, 'Can change comment user', 19, 'change_commentuser');
INSERT INTO `auth_permission` VALUES (76, 'Can delete comment user', 19, 'delete_commentuser');
INSERT INTO `auth_permission` VALUES (77, 'Can view comment user', 19, 'view_commentuser');
INSERT INTO `auth_permission` VALUES (78, 'Can add 给我留言', 20, 'add_messagecomment');
INSERT INTO `auth_permission` VALUES (79, 'Can change 给我留言', 20, 'change_messagecomment');
INSERT INTO `auth_permission` VALUES (80, 'Can delete 给我留言', 20, 'delete_messagecomment');
INSERT INTO `auth_permission` VALUES (81, 'Can view 给我留言', 20, 'view_messagecomment');
INSERT INTO `auth_permission` VALUES (82, 'Can add 文章评论', 21, 'add_articlecomment');
INSERT INTO `auth_permission` VALUES (83, 'Can change 文章评论', 21, 'change_articlecomment');
INSERT INTO `auth_permission` VALUES (84, 'Can delete 文章评论', 21, 'delete_articlecomment');
INSERT INTO `auth_permission` VALUES (85, 'Can view 文章评论', 21, 'view_articlecomment');
INSERT INTO `auth_permission` VALUES (86, 'Can add 关于自己评论', 22, 'add_aboutcomment');
INSERT INTO `auth_permission` VALUES (87, 'Can change 关于自己评论', 22, 'change_aboutcomment');
INSERT INTO `auth_permission` VALUES (88, 'Can delete 关于自己评论', 22, 'delete_aboutcomment');
INSERT INTO `auth_permission` VALUES (89, 'Can view 关于自己评论', 22, 'view_aboutcomment');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$180000$Ahv8IKMd5Oke$NOa3jg1b6c009cvlLUYLNr7DZ4Jp57XJNNF+A97A8xA=', '2020-05-03 10:36:05.389214', 1, 'fswy', 'fswy', 'fswy', '420393969@qq.com', 1, 1, '2020-04-28 02:04:12.329835');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_aboutcomment
-- ----------------------------
DROP TABLE IF EXISTS `comment_aboutcomment`;
CREATE TABLE `comment_aboutcomment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `rep_to_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_aboutcomment_author_id_d11e841e_fk_comment_c` (`author_id`),
  KEY `comment_aboutcomment_parent_id_a12294ac_fk_comment_a` (`parent_id`),
  KEY `comment_aboutcomment_rep_to_id_e44ab5ad_fk_comment_a` (`rep_to_id`),
  CONSTRAINT `comment_aboutcomment_author_id_d11e841e_fk_comment_c` FOREIGN KEY (`author_id`) REFERENCES `comment_commentuser` (`id`),
  CONSTRAINT `comment_aboutcomment_parent_id_a12294ac_fk_comment_a` FOREIGN KEY (`parent_id`) REFERENCES `comment_aboutcomment` (`id`),
  CONSTRAINT `comment_aboutcomment_rep_to_id_e44ab5ad_fk_comment_a` FOREIGN KEY (`rep_to_id`) REFERENCES `comment_aboutcomment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_articlecomment
-- ----------------------------
DROP TABLE IF EXISTS `comment_articlecomment`;
CREATE TABLE `comment_articlecomment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int NOT NULL,
  `belong_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `rep_to_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_articlecomme_author_id_46e6fdb8_fk_comment_c` (`author_id`),
  KEY `comment_articlecomment_belong_id_58e0232c_fk_fswy_article_id` (`belong_id`),
  KEY `comment_articlecomme_parent_id_f0ab594d_fk_comment_a` (`parent_id`),
  KEY `comment_articlecomme_rep_to_id_84dab3d5_fk_comment_a` (`rep_to_id`),
  CONSTRAINT `comment_articlecomme_author_id_46e6fdb8_fk_comment_c` FOREIGN KEY (`author_id`) REFERENCES `comment_commentuser` (`id`),
  CONSTRAINT `comment_articlecomme_parent_id_f0ab594d_fk_comment_a` FOREIGN KEY (`parent_id`) REFERENCES `comment_articlecomment` (`id`),
  CONSTRAINT `comment_articlecomme_rep_to_id_84dab3d5_fk_comment_a` FOREIGN KEY (`rep_to_id`) REFERENCES `comment_articlecomment` (`id`),
  CONSTRAINT `comment_articlecomment_belong_id_58e0232c_fk_fswy_article_id` FOREIGN KEY (`belong_id`) REFERENCES `fswy_article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_commentuser
-- ----------------------------
DROP TABLE IF EXISTS `comment_commentuser`;
CREATE TABLE `comment_commentuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_messagecomment
-- ----------------------------
DROP TABLE IF EXISTS `comment_messagecomment`;
CREATE TABLE `comment_messagecomment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `rep_to_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_messagecomme_author_id_0bb97e6c_fk_comment_c` (`author_id`),
  KEY `comment_messagecomme_parent_id_d4633983_fk_comment_m` (`parent_id`),
  KEY `comment_messagecomme_rep_to_id_029597ed_fk_comment_m` (`rep_to_id`),
  CONSTRAINT `comment_messagecomme_author_id_0bb97e6c_fk_comment_c` FOREIGN KEY (`author_id`) REFERENCES `comment_commentuser` (`id`),
  CONSTRAINT `comment_messagecomme_parent_id_d4633983_fk_comment_m` FOREIGN KEY (`parent_id`) REFERENCES `comment_messagecomment` (`id`),
  CONSTRAINT `comment_messagecomme_rep_to_id_029597ed_fk_comment_m` FOREIGN KEY (`rep_to_id`) REFERENCES `comment_messagecomment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES (7, '2020-05-07 21:01:43.425272', '5', 'Django3.0+Python3.8+', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (8, '2020-05-07 21:44:14.065754', '6', 'Python', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (9, '2020-05-07 21:48:40.126843', '6', 'Python', 2, '[{\"changed\": {\"fields\": [\"\\u6587\\u7ae0\\u5185\\u5bb9\"]}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (10, '2020-05-08 09:11:08.346123', '1', 'Django3.0+Python3.8+', 2, '[{\"changed\": {\"fields\": [\"\\u6587\\u7ae0\\u6807\\u9898\", \"\\u6587\\u7ae0\\u6458\\u8981\", \"\\u6587\\u7ae0\\u5185\\u5bb9\", \"\\u559c\\u7231\\u91cf\", \"Slug\", \"\\u6587\\u7ae0\\u5206\\u7c7b\"]}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (11, '2020-05-08 09:14:34.022979', '1', 'Django3.0+Python3.8+', 2, '[{\"changed\": {\"fields\": [\"\\u6587\\u7ae0\\u5185\\u5bb9\"]}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (12, '2020-05-08 09:19:14.359230', '2', 'Django3.0+Python3.8+', 2, '[{\"changed\": {\"fields\": [\"\\u6587\\u7ae0\\u6807\\u9898\", \"\\u6587\\u7ae0\\u6458\\u8981\", \"\\u6587\\u7ae0\\u5185\\u5bb9\", \"\\u559c\\u7231\\u91cf\", \"Slug\", \"\\u6807\\u7b7e\", \"\\u6587\\u7ae0\\u5173\\u952e\\u8bcd\"]}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (13, '2020-05-18 09:49:26.039828', '7', 'Django3.0+Python3.8+', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (14, '2020-05-18 09:51:05.702812', '8', 'Django3.0+Python3.8+', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (15, '2020-05-18 09:52:42.536621', '9', 'Django3.0+Python3.8+', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (16, '2020-05-18 10:00:45.259538', '10', 'Django3.0+Python3.8+', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (17, '2020-05-18 10:02:10.564747', '11', 'Django3.0+Python3.8+', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (18, '2020-05-18 18:30:40.658398', '12', 'Django3.0+Python3.8+', 1, '[{\"added\": {}}]', 14, 1);
COMMIT;

-- ----------------------------
-- Table structure for django_comment_flags
-- ----------------------------
DROP TABLE IF EXISTS `django_comment_flags`;
CREATE TABLE `django_comment_flags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime(6) NOT NULL,
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_comment_flags_user_id_comment_id_flag_537f77a7_uniq` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_comment_id_d8054933_fk_django_comments_id` (`comment_id`),
  KEY `django_comment_flags_flag_8b141fcb` (`flag`),
  CONSTRAINT `django_comment_flags_comment_id_d8054933_fk_django_comments_id` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
  CONSTRAINT `django_comment_flags_user_id_f3f81f0a_fk_user_ouser_id` FOREIGN KEY (`user_id`) REFERENCES `user_ouser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_comments
-- ----------------------------
DROP TABLE IF EXISTS `django_comments`;
CREATE TABLE `django_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_pk` longtext NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime(6) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `site_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_comments_content_type_id_c4afe962_fk_django_co` (`content_type_id`),
  KEY `django_comments_site_id_9dcf666e_fk_django_site_id` (`site_id`),
  KEY `django_comments_user_id_a0a440a1_fk_user_ouser_id` (`user_id`),
  KEY `django_comments_submit_date_514ed2d9` (`submit_date`),
  CONSTRAINT `django_comments_content_type_id_c4afe962_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_comments_site_id_9dcf666e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `django_comments_user_id_a0a440a1_fk_user_ouser_id` FOREIGN KEY (`user_id`) REFERENCES `user_ouser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (22, 'comment', 'aboutcomment');
INSERT INTO `django_content_type` VALUES (21, 'comment', 'articlecomment');
INSERT INTO `django_content_type` VALUES (19, 'comment', 'commentuser');
INSERT INTO `django_content_type` VALUES (20, 'comment', 'messagecomment');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (17, 'django_comments', 'comment');
INSERT INTO `django_content_type` VALUES (18, 'django_comments', 'commentflag');
INSERT INTO `django_content_type` VALUES (7, 'fswy', 'activate');
INSERT INTO `django_content_type` VALUES (14, 'fswy', 'article');
INSERT INTO `django_content_type` VALUES (12, 'fswy', 'bigcategory');
INSERT INTO `django_content_type` VALUES (8, 'fswy', 'carousel');
INSERT INTO `django_content_type` VALUES (13, 'fswy', 'category');
INSERT INTO `django_content_type` VALUES (9, 'fswy', 'friendlink');
INSERT INTO `django_content_type` VALUES (10, 'fswy', 'keyword');
INSERT INTO `django_content_type` VALUES (11, 'fswy', 'tag');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (16, 'sites', 'site');
INSERT INTO `django_content_type` VALUES (15, 'user', 'ouser');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-04-23 04:07:47.933937');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-04-23 04:07:48.130012');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-04-23 04:07:48.474214');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-04-23 04:07:48.568383');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-23 04:07:48.577713');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-04-23 04:07:48.675645');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-04-23 04:07:48.714971');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-04-23 04:07:48.779116');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-04-23 04:07:48.787916');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-04-23 04:07:48.841608');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-04-23 04:07:48.844415');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-04-23 04:07:48.853057');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-04-23 04:07:48.902521');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-04-23 04:07:48.958763');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-04-23 04:07:49.001797');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-04-23 04:07:49.011445');
INSERT INTO `django_migrations` VALUES (17, 'fswy', '0001_initial', '2020-04-23 04:07:49.015254');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2020-04-23 04:07:49.032891');
INSERT INTO `django_migrations` VALUES (19, 'user', '0001_initial', '2020-04-24 10:27:31.356978');
INSERT INTO `django_migrations` VALUES (20, 'fswy', '0002_activate_article_bigcategory_carousel_category_friendlink_keyword_tag', '2020-04-24 10:27:31.741476');
INSERT INTO `django_migrations` VALUES (21, 'fswy', '0003_auto_20200424_1819', '2020-04-24 10:27:31.940336');
INSERT INTO `django_migrations` VALUES (22, 'comment', '0001_initial', '2020-05-01 09:15:57.429080');
INSERT INTO `django_migrations` VALUES (23, 'sites', '0001_initial', '2020-05-01 09:15:57.838189');
INSERT INTO `django_migrations` VALUES (24, 'django_comments', '0001_initial', '2020-05-01 09:15:57.945030');
INSERT INTO `django_migrations` VALUES (25, 'django_comments', '0002_update_user_email_field_length', '2020-05-01 09:15:58.165607');
INSERT INTO `django_migrations` VALUES (26, 'django_comments', '0003_add_submit_date_index', '2020-05-01 09:15:58.199726');
INSERT INTO `django_migrations` VALUES (27, 'sites', '0002_alter_domain_unique', '2020-05-01 09:15:58.223571');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('l64uhkduoeh8di0uwvpi1agzrpcsbp9c', 'NGQwMDY2YTAwZGQ0YzA5ZTgwNWY1Y2Y2OTY4MGExMzdhYTlmNjVhMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2YzMDhiYjliNTUyNjc3OWNkMWQ5MWY2M2I3MjZmZGQxZjRmYzhhIn0=', '2020-05-21 20:56:28.867403');
COMMIT;

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_site
-- ----------------------------
BEGIN;
INSERT INTO `django_site` VALUES (1, 'example.com', 'example.com');
COMMIT;

-- ----------------------------
-- Table structure for fswy_activate
-- ----------------------------
DROP TABLE IF EXISTS `fswy_activate`;
CREATE TABLE `fswy_activate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` longtext,
  `is_active` tinyint(1) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fswy_activate
-- ----------------------------
BEGIN;
INSERT INTO `fswy_activate` VALUES (1, '本站源码已经共享在 <a href=\"https://github.com/stormsha\" target=\"_blank\">Github</a> 欢迎 Fork、Star、提建议、发现Bug', 1, '2019-03-06 00:53:46.000000');
COMMIT;

-- ----------------------------
-- Table structure for fswy_article
-- ----------------------------
DROP TABLE IF EXISTS `fswy_article`;
CREATE TABLE `fswy_article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `summary` longtext NOT NULL,
  `body` longtext NOT NULL,
  `img_link` varchar(255) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `views` int NOT NULL,
  `loves` int NOT NULL,
  `slug` varchar(50) NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `fswy_article_author_id_4ec6bd71_fk_user_ouser_id` (`author_id`),
  KEY `fswy_article_category_id_d762c8dc_fk_fswy_category_id` (`category_id`),
  CONSTRAINT `fswy_article_author_id_4ec6bd71_fk_user_ouser_id` FOREIGN KEY (`author_id`) REFERENCES `user_ouser` (`id`),
  CONSTRAINT `fswy_article_category_id_d762c8dc_fk_fswy_category_id` FOREIGN KEY (`category_id`) REFERENCES `fswy_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fswy_article
-- ----------------------------
BEGIN;
INSERT INTO `fswy_article` VALUES (1, 'Django3.0+Python3.8+MySQL8.0 个人博客搭建|前言', '一、为什么要搭建个人站点\r\n一直以来，我都有写博客的需要。', '# 一、为什么要搭建个人站点\r\n一直以来，我都有写博客的需要。\r\n一方面是好记忆不如烂笔头，把学习中知识点总结起来，方便以后查找；\r\n另一方面是在这个共享时代，想把自己遇到的各种坑写下来，方便其他读者解决问题，也算是我从其他博主那里学习后的一个反馈吧。\r\n除此之外，最近在学习Python的Django框架，结合以前学习的网页制作的知识，准备来实践一下。\r\n\r\n# 二、需求思考\r\n**需求**：制作一个可以自己随意实践所学的站点\r\n**目标**：\r\n\r\n 1. 深入学习Django知识\r\n 2. 复习前端知识\r\n 3. 复习MySQL知识 \r\n 4. 将其上传到Github\r\n 5.  制作一套开发教程 \r\n 6. 学习SEO知识，保证后期维护\r\n\r\n\r\n# 三、制作\r\n从零开始肯定很难，正好前面看到一个喜欢的博主stormasha做了一套个人博客的教程，准备根据他的教学内容，实践一下。\r\n他的博客链接：https://stormsha.com\r\n为了时间，就不去挑选主题，直接使用博主的Wordpress主题\r\n\r\n前端源码托管在Github：[HTML](https://github.com/stormsha/HTML)\r\n\r\n项目的完整代码托管在Github：[fswy](https://github.com/yxys01/fswy)\r\n\r\n\r\n\r\n# 教程目录 \r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建|前言](https://blog.csdn.net/yxys01/article/details/105704783)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建一|配置开发环境](https://blog.csdn.net/yxys01/article/details/105706040)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二|创建虚拟环境](https://blog.csdn.net/yxys01/article/details/105706305)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建三|创建博客项目](https://blog.csdn.net/yxys01/article/details/105706763)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建四|创建第一个APP](https://blog.csdn.net/yxys01/article/details/105707015)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建五|makemigrations连接MySQL数据库的坑](https://blog.csdn.net/yxys01/article/details/105707711)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建六|数据库结构设计](https://blog.csdn.net/yxys01/article/details/105737645)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建七|makemigrations创建数据库的坑（第二弹）](https://blog.csdn.net/yxys01/article/details/105738705)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建八|通过admin管理后台](https://blog.csdn.net/yxys01/article/details/105810710)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建九|博客首页开发（一）](https://blog.csdn.net/yxys01/article/details/105812403)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十|整理项目结构](https://blog.csdn.net/yxys01/article/details/105815286)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十一|博客首页开发（二）](https://blog.csdn.net/yxys01/article/details/105825729)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十二|博客首页开发（三）](https://blog.csdn.net/yxys01/article/details/105859009)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十三|博客详情页面](https://blog.csdn.net/yxys01/article/details/105875230)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十四|注册登录](https://blog.csdn.net/yxys01/article/details/105875818)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十五|评论区](https://blog.csdn.net/yxys01/article/details/105901272)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十六|网站地图](https://blog.csdn.net/yxys01/article/details/105904112)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十七|Haystack 全文搜索](https://blog.csdn.net/yxys01/article/details/105904515)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十八|功能完善](https://blog.csdn.net/yxys01/article/details/105913034)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十九|RESTful API接口](https://blog.csdn.net/yxys01/article/details/105913140)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十|RSS订阅](https://blog.csdn.net/yxys01/article/details/105913951)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十一|天坑合集](https://blog.csdn.net/yxys01/article/details/105914348)', '/static/images/summary.jpg', '2019-03-02 14:18:07.000000', '2020-05-08 09:14:33.877238', 22, 0, '0', 1, 2);
INSERT INTO `fswy_article` VALUES (2, 'Django3.0+Python3.8+MySQL8.0 个人博客搭建一|配置开发环境', '一、开发环境\r\nmacOS Catalina 10.15.3\r\nPython 3.8.0\r\nDjango 3.0.5\r\nPycharm 2019.2.3\r\nmysql 8.0.19\r\nvirtualenv', '# 一、开发环境\r\n\r\n```powershell\r\nmacOS Catalina 10.15.3\r\nPython 3.8.0\r\nDjango 3.0.5\r\nPycharm 2019.2.3\r\nmysql 8.0.19\r\nvirtualenv\r\n```\r\n\r\n基本使用的都是当前最新版本的环境，开发过程中肯定会遇到很多环境问题，让我们一起想办法解决吧。\r\n\r\n而在 linux 上部署时，一般有两种选择\r\n\r\n 1. 是对新人稍微友好的`ubuntu`系统；\r\n 2. 是`centos`，这个在公司里用的比较多，这里我准备使用`centos`。\r\n\r\n如果你不知道选择什么，就跟着来吧。\r\n\r\n建议有一个自己的服务器，没有服务器的话，可以在自己电脑上装一个虚拟机：\r\n\r\n```powershell\r\nParallels Desktop 15.1.2\r\ncentos\r\n\r\nOR\r\n\r\nVmware\r\ncentos\r\n```\r\n\r\n以上是此项目的整个开发环境，如果开发过程中遇到问题，可以在博客下面进行评论。\r\n\r\n\r\n# 教程目录\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建|前言](https://blog.csdn.net/yxys01/article/details/105704783)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建一|配置开发环境](https://blog.csdn.net/yxys01/article/details/105706040)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二|创建虚拟环境](https://blog.csdn.net/yxys01/article/details/105706305)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建三|创建博客项目](https://blog.csdn.net/yxys01/article/details/105706763)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建四|创建第一个APP](https://blog.csdn.net/yxys01/article/details/105707015)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建五|makemigrations连接MySQL数据库的坑](https://blog.csdn.net/yxys01/article/details/105707711)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建六|数据库结构设计](https://blog.csdn.net/yxys01/article/details/105737645)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建七|makemigrations创建数据库的坑（第二弹）](https://blog.csdn.net/yxys01/article/details/105738705)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建八|通过admin管理后台](https://blog.csdn.net/yxys01/article/details/105810710)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建九|博客首页开发（一）](https://blog.csdn.net/yxys01/article/details/105812403)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十|整理项目结构](https://blog.csdn.net/yxys01/article/details/105815286)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十一|博客首页开发（二）](https://blog.csdn.net/yxys01/article/details/105825729)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十二|博客首页开发（三）](https://blog.csdn.net/yxys01/article/details/105859009)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十三|博客详情页面](https://blog.csdn.net/yxys01/article/details/105875230)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十四|注册登录](https://blog.csdn.net/yxys01/article/details/105875818)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十五|评论区](https://blog.csdn.net/yxys01/article/details/105901272)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十六|网站地图](https://blog.csdn.net/yxys01/article/details/105904112)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十七|Haystack 全文搜索](https://blog.csdn.net/yxys01/article/details/105904515)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十八|功能完善](https://blog.csdn.net/yxys01/article/details/105913034)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十九|RESTful API接口](https://blog.csdn.net/yxys01/article/details/105913140)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十|RSS订阅](https://blog.csdn.net/yxys01/article/details/105913951)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十一|天坑合集](https://blog.csdn.net/yxys01/article/details/105914348)', '/static/images/summary2.jpg', '2020-04-04 14:20:01.000000', '2020-05-08 09:19:14.194431', 24, 0, '1', 1, 2);
INSERT INTO `fswy_article` VALUES (7, 'Django3.0+Python3.8+MySQL8.0 个人博客搭建二|创建虚拟环境', 'Django3.0+Python3.8+MySQL8.0 个人博客搭建二|创建虚拟环境', '# 一、安装Python3.8\r\n具体安装过程可以参考这篇文章：[Python3安装完全攻略 Mac篇](https://blog.csdn.net/yxys01/article/details/103204531)\r\n这里就不过多叙述。\r\n\r\n安装成功之后，在终端命令行窗口中输入Python3 即可进入到Python的交互环境中，如下：\r\n```powershell\r\nxxxxdeMacBook-Pro:~ xxxx$ python3\r\nPython 3.8.0 (v3.8.0:fa919fdf25, Oct 14 2019, 10:23:27) \r\n[Clang 6.0 (clang-600.0.57)] on darwin\r\nType \"help\", \"copyright\", \"credits\" or \"license\" for more information.\r\n```\r\n# 二、安装 virtualenv\r\n\r\n## Virtualenv 是什么？\r\n\r\nVirtualenv 是一个创建隔绝的 Python 环境的工具。Virtualenv 创建一个包含所有必要的可执行文件的文件夹，用来使用Python工程所需的包。\r\n\r\n可以简单的理解为我们电脑上是要开发很多项目的，每一个项目的开发环境是不同的，Virtualenv 可以创建出一个个不同的开发环境。\r\n\r\n## 安装 Virtualenv\r\n\r\n在终端命令行窗口中，我们通过`pip`命令可以很简单的实现安装：\r\n\r\n```powershell\r\nxxxxdeMacBook-Pro:~ xxxx$ pip3 install --user virtualenv\r\n```\r\n\r\n```powershell\r\nCollecting virtualenv\r\n......\r\nSuccessfully installed appdirs-1.4.3 distlib-0.3.0 filelock-3.0.12 virtualenv-20.0.18\r\n```\r\n## 创建虚拟环境\r\n\r\n安装完成之后，可以通过以下命令创建该博客的虚拟环境：\r\n```powershell\r\nxxxxdeMacBook-Pro:~ xxxx$ python3 -m venv fswy\r\n\r\n```\r\n## 激活虚拟环境\r\n\r\n```powershell\r\nxxxxdeMacBook-Pro:~ xxxx$ source fswy/bin/activate\r\n```\r\n激活成功后，命令行前面会有（fswy）字样：如下\r\n\r\n```powershell\r\n(fswy) xxxxdeMacBook-Pro:~ xxxx$\r\n```\r\n\r\n退出虚拟环境\r\n\r\n```powershell\r\n(fswy) xxxxdeMacBook-Pro:~ xxxx$ deactivate fswy\r\n```\r\n\r\n# 三、安装Parallels Desktop 15.1.2\r\n暂时还未安装\r\n\r\n\r\n## 注意\r\n如果如果这个虚拟环境不打算要了，直接进入xxxx文件夹删除 fswy文件夹即可\r\n\r\n# 教程目录\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建|前言](https://blog.csdn.net/yxys01/article/details/105704783)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建一|配置开发环境](https://blog.csdn.net/yxys01/article/details/105706040)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二|创建虚拟环境](https://blog.csdn.net/yxys01/article/details/105706305)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建三|创建博客项目](https://blog.csdn.net/yxys01/article/details/105706763)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建四|创建第一个APP](https://blog.csdn.net/yxys01/article/details/105707015)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建五|makemigrations连接MySQL数据库的坑](https://blog.csdn.net/yxys01/article/details/105707711)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建六|数据库结构设计](https://blog.csdn.net/yxys01/article/details/105737645)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建七|makemigrations创建数据库的坑（第二弹）](https://blog.csdn.net/yxys01/article/details/105738705)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建八|通过admin管理后台](https://blog.csdn.net/yxys01/article/details/105810710)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建九|博客首页开发（一）](https://blog.csdn.net/yxys01/article/details/105812403)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十|整理项目结构](https://blog.csdn.net/yxys01/article/details/105815286)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十一|博客首页开发（二）](https://blog.csdn.net/yxys01/article/details/105825729)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十二|博客首页开发（三）](https://blog.csdn.net/yxys01/article/details/105859009)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十三|博客详情页面](https://blog.csdn.net/yxys01/article/details/105875230)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十四|注册登录](https://blog.csdn.net/yxys01/article/details/105875818)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十五|评论区](https://blog.csdn.net/yxys01/article/details/105901272)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十六|网站地图](https://blog.csdn.net/yxys01/article/details/105904112)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十七|Haystack 全文搜索](https://blog.csdn.net/yxys01/article/details/105904515)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十八|功能完善](https://blog.csdn.net/yxys01/article/details/105913034)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十九|RESTful API接口](https://blog.csdn.net/yxys01/article/details/105913140)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十|RSS订阅](https://blog.csdn.net/yxys01/article/details/105913951)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十一|天坑合集](https://blog.csdn.net/yxys01/article/details/105914348)', '/static/images/summary.jpg', '2020-05-18 09:49:25.484099', '2020-05-18 09:49:25.484124', 0, 0, '2', 1, 2);
INSERT INTO `fswy_article` VALUES (8, 'Django3.0+Python3.8+MySQL8.0 个人博客搭建三|创建博客项目', 'Django3.0+Python3.8+MySQL8.0 个人博客搭建三|创建博客项目', '# 一、安装 Django\r\n\r\n在虚拟环境`fswy`中安装`django`\r\n\r\n```powershell\r\n(fswy) xxxxdeMacBook-Pro:~ xiatian$ pip3 install Django==3.0.5\r\n```\r\n\r\n安装指定版本，如果不指定版本的话，默认会装最新版\r\n\r\n安装完成后，输入如下命令，可以查看该环境目录下安装包详细信息：\r\n\r\n```powershell\r\n$ pip3 list\r\n$ pip3 freeze\r\n```\r\n\r\n# 二、创建项目\r\n\r\n## Pycharm\r\n\r\nPyCharm 是一种 Python IDE，带有一整套可以帮助用户在使用Python语言开发时提高其效率的工具，比如调试、语法高亮、Project 管理、代码跳转、智能提示、自动完成、单元测试、版本控制。此外，该IDE提供了一些高级功能，以用于支持Django框架下的专业Web开发。\r\n\r\n双击打开Pycharm，点击 `file->new profile` 新建一个项目，如下图所示：\r\n\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423141705316.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n 1. 选择左侧栏中的 `django`\r\n 2. 环境选择`Virtualenv`\r\n 3. 位置栏输入自己的项目名称，我们这里直接叫 `blog`\r\n 4. 点击`Create`即可\r\n\r\n# 三、运行效果\r\n\r\nblog 项目创建完成后，可以点击运行 run，下面提示框中提示：\r\n\r\n```python\r\nYou have 17 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.\r\nRun \'python manage.py migrate\' to apply them.\r\nApril 23, 2020 - 01:46:47\r\nDjango version 3.0.5, using settings \'blog.settings\'\r\nStarting development server at http://127.0.0.1:8000/\r\n```\r\n\r\n可以直接在浏览器中输入上述网址 `http://127.0.0.1:8000/`，便可看到熟悉的欢迎页面，Congratulations!\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423142013864.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n这里显示的英文，我们可以在 `setting.py` 文件中设置下，将语言改为中文，时区改为上海（没有北京时区）：\r\n\r\nblog -> blog -> settings.py\r\n\r\n```python\r\nLANGUAGE_CODE = \'zh-hans\'\r\n\r\nTIME_ZONE = \'Asia/Shanghai\'\r\n```\r\n\r\n然后再返回浏览器刷新下页面，即可看到中文界面！\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423142057632.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n# 四、命令行创建Django项目\r\n如果不想使用PyCharm创建，可以使用命令行创建。\r\n进入虚拟环境`fswy`\r\n\r\n```python\r\n(fswy) xxxxdeMacBook-Pro:~ xiatian$django-admin startproject blog\r\n```\r\n即可创建成功！\r\n\r\n# 教程目录\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建|前言](https://blog.csdn.net/yxys01/article/details/105704783)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建一|配置开发环境](https://blog.csdn.net/yxys01/article/details/105706040)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二|创建虚拟环境](https://blog.csdn.net/yxys01/article/details/105706305)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建三|创建博客项目](https://blog.csdn.net/yxys01/article/details/105706763)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建四|创建第一个APP](https://blog.csdn.net/yxys01/article/details/105707015)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建五|makemigrations连接MySQL数据库的坑](https://blog.csdn.net/yxys01/article/details/105707711)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建六|数据库结构设计](https://blog.csdn.net/yxys01/article/details/105737645)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建七|makemigrations创建数据库的坑（第二弹）](https://blog.csdn.net/yxys01/article/details/105738705)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建八|通过admin管理后台](https://blog.csdn.net/yxys01/article/details/105810710)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建九|博客首页开发（一）](https://blog.csdn.net/yxys01/article/details/105812403)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十|整理项目结构](https://blog.csdn.net/yxys01/article/details/105815286)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十一|博客首页开发（二）](https://blog.csdn.net/yxys01/article/details/105825729)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十二|博客首页开发（三）](https://blog.csdn.net/yxys01/article/details/105859009)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十三|博客详情页面](https://blog.csdn.net/yxys01/article/details/105875230)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十四|注册登录](https://blog.csdn.net/yxys01/article/details/105875818)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十五|评论区](https://blog.csdn.net/yxys01/article/details/105901272)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十六|网站地图](https://blog.csdn.net/yxys01/article/details/105904112)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十七|Haystack 全文搜索](https://blog.csdn.net/yxys01/article/details/105904515)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十八|功能完善](https://blog.csdn.net/yxys01/article/details/105913034)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十九|RESTful API接口](https://blog.csdn.net/yxys01/article/details/105913140)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十|RSS订阅](https://blog.csdn.net/yxys01/article/details/105913951)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十一|天坑合集](https://blog.csdn.net/yxys01/article/details/105914348)', '/static/images/summary.jpg', '2020-05-18 09:51:04.452513', '2020-05-18 09:51:04.452535', 0, 0, '3', 1, 2);
INSERT INTO `fswy_article` VALUES (9, 'Django3.0+Python3.8+MySQL8.0 个人博客搭建四|创建第一个APP', 'Django3.0+Python3.8+MySQL8.0 个人博客搭建四|创建第一个APP', '# 一、创建APP\r\n\r\n## 创建APP\r\n\r\nDjango 中的一个app就是一个小的项目，我们通过 startapp 命令即可创建, 一下提供两种方式\r\n\r\n### 1、启动虚拟环境 fswy\r\n\r\n    (fswy) xxxxdeMacBook-Pro:fswy xiatian$ cd fswy/blog\r\n    (fswy) xxxxdeMacBook-Pro:blog xiatian$ django-admin startapp fswy\r\n    (fswy) xxxxdeMacBook-Pro:blog xiatian$ cd fswy\r\n    (fswy) xxxxdeMacBook-Pro:blog xiatian$ls\r\n    |-- fs\'wy           # 博客应用\r\n    |   |-- migrations  # 数据库映射文件\r\n    |   |-- __init__.py # 声明模块，内容默认为空\r\n    |   |-- admin.py    # 该应用的后台管理系统\r\n    |   |-- apps.py     # 应用配置，Django-1.9以后自动生成\r\n    |   |-- models.py   # 数据模块，使用ORM框架\r\n    |   |-- tests.py    # 自动化测试的模块        \r\n    |   |-- views.py    # 执行响应的代码所在模块，是代码逻辑处理的主要地点，项目中大部分代码在这里编写    \r\n    \r\n### 2、Pycharm 中的 Tools -> run manage.py task 下执行命令：\r\n\r\n    startapp fswy\r\n这样就可以创建出一个名为 fswy 的 app\r\n\r\n## 目前项目完整结构\r\n\r\n    .\r\n    |-- blog\r\n    |   |-- fswy               # 博客应用\r\n    |   |   |-- migrations      # 数据库映射文件\r\n    |   |   |-- __init__.py     # 声明模块，内容默认为空\r\n    |   |   |-- admin.py        # 该应用的后台管理系统\r\n    |   |   |-- apps.py         # 应用配置，Django-1.9以后自动生成\r\n    |   |   |-- models.py       # 数据模块，使用ORM框架\r\n    |   |   |-- tests.py        # 自动化测试的模块        \r\n    |   |   |-- views.py        # 执行响应的代码所在模块，是代码逻辑处理的主要地点，项目中大部分代码在这里编写\r\n    |   |-- blog                # 项目的容器\r\n    |   |   |-- __init__.py     # 声明模块，内容默认为空\r\n    |   |   |-- settings.py     # 该 Django 项目的设置/配置。\r\n    |   |   |-- urls.py         # 该 Django 项目的 URL 声明; 一份由 Django 驱动的网站\"目录\"。\r\n    |   `-- wsgi.py             # 一个 WSGI 兼容的 Web 服务器的入口，以便运行你的项目\r\n    `-- manage.py\r\n\r\n## 注册新增APP\r\n\r\n`blog -> blog -> settings.py`\r\n\r\n    INSTALLED_APPS = [\r\n        \'django.contrib.admin\',\r\n        \'django.contrib.auth\',\r\n        \'django.contrib.contenttypes\',\r\n        \'django.contrib.sessions\',\r\n        \'django.contrib.messages\',\r\n        \'django.contrib.staticfiles\',\r\n        \'fswy\',    # 添加用户应用\r\n    ]\r\n\r\n# 二、迁移数据库\r\n\r\n推荐阅读：[mysql8.0 安装与使用](https://blog.csdn.net/yxys01/article/details/104395824)\r\n\r\n## 创建数据库\r\n\r\n使用 Mysql 创建数据库 blog ，数据库编码类型 utf-8\r\n\r\n推荐阅读：命令行创建   Navicat for MySQL创建数据库\r\n\r\n## 连接数据库\r\n\r\nDjango 中默认的数据库是 sqlite3\r\n\r\n`blog -> blog -> settings.py`\r\n\r\n    # 默认\r\n    DATABASES = {\r\n        \'default\': {\r\n            \'ENGINE\': \'django.db.backends.sqlite3\',\r\n            \'NAME\': os.path.join(BASE_DIR, \'db.sqlite3\'),\r\n        }\r\n    }\r\n将其改为：\r\n\r\n    DATABASES = {\r\n        \'default\': {\r\n            \'ENGINE\': \'django.db.backends.mysql\',\r\n            \'HOST\': \'localhost\',\r\n            \'PORT\': \'3306\',\r\n            \'USER\': \'root\',\r\n            \'PASSWORD\': \'xxxxxx\',\r\n            \'NAME\': \'blog\',\r\n            # 避免映射数据库时出现警告\r\n            \'OPTIONS\': {\r\n                \'init_command\': \"SET sql_mode=\'STRICT_TRANS_TABLES\'\",\r\n                \'charset\': \'utf8mb4\',\r\n            },\r\n        }\r\n    }\r\n\r\n## 注意：\r\n上述改变的内容里面数据库的相关信息一定要换成你自己电脑上安装的数据库的用户信息！\r\n\r\n - \'ENGINE\': \'django.db.backends.mysql\', 这句话是固定的格式连接Mysql不用更改\r\n - \'Hots\':\'127.0.0.1\', 数据库的位置，一般不会改变\r\n - \'PORT\':\'3306\', 数据库的端口号，一般不会改变\r\n - \'USER\':\'root\', 换成你的数据库的账户\r\n - \'PASSWORD\':\'xxxxxx\', 换成你的数据库的密码\r\n - \'NAME\':\'blog\', blog是数据库表的名字，这里可以随意改成自己的\r\n\r\n### Navicat连接MySQL，并新建数据库blog\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423155657655.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n### Pycharm的Database连接MySQL\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423155757305.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423155905996.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n点击`Test Connection`返回successful；\r\n\r\n点击确定；\r\n\r\nDjango 与 Mysql 关联成功。\r\n## 安装MySQL数据库python环境的驱动\r\n此时 Django 与 Mysql 关联上了，但是 Python 并没有与 Mysql 连接上，启动虚拟环境 `fswy`，安装`pymysql`\r\n\r\n```python\r\n(fswy) xxxxdeMacBook-Pro:~ xiatian$ pip3 install pymysql\r\n```\r\n\r\n```python\r\nCollecting pymysql\r\nSuccessfully installed pymysql-0.9.3\r\n```\r\n进入`blog`目录\r\n\r\n```python\r\n(fswy) xxxxdeMacBook-Pro:~ xiatian$cd fswy/blog\r\n\r\n```\r\n下面有两种迁移数据库的方法\r\n### 1、命令行\r\n\r\n```python\r\n(fswy) xxxxdeMacBook-Pro:blog xiatian$ python3 manage.py makemigrations\r\n(fswy) xxxxdeMacBook-Pro:blog xiatian$ python3 manage.py migrate\r\n```\r\n#### But\r\n在执行`python3 manage.py makemigrations`时，返回一堆错误\r\n例如：\r\n```powershell\r\ndjango.core.exceptions.ImproperlyConfigured: Error loading MySQLdb module.\r\n```\r\n大概就是python3.8中找不到MySQLdb模块，当然这个模块本身就是python2.x的，花了一个多小时查找资料终于解决了。\r\n\r\n详细解决方案见：[makemigrations连接MySQL数据库的坑](https://blog.csdn.net/yxys01/article/details/105707711)\r\n\r\n\r\n### 2、Pycharm \r\nPycharm中的`Tools -> run manage.py task` 下依次执行命令：\r\n\r\n```shell\r\n$ makemigrations\r\n$ migrate\r\n```\r\n\r\n当执行了 `makemigrations` 后，Django 在 `fswy` 应用的 `migrations\\` 目录下生成了一个 `0001_initial.py` 文件，这个文件是 Django 用来记录我们对模型做了哪些修改的文件。\r\n\r\n不过此时只是告诉了 Django 做了哪些改变，为了让 Django 真正地为我们创建数据库表，接下来执行 `migrate` 命令。\r\n\r\nDjango 通过检测应用中 `migrations\\` 目录下的文件，得知我们对数据库做了哪些操作，然后它把这些操作翻译成数据库操作语言，从而把这些操作作用于数据库。\r\n\r\n经过这两项操作后，我们打开 navicat 中的 blog 数据库，发现多了如下表单，这些表单为Django 自身还内置的很多应用，这些应用本身也是需要存储数据的。\r\n\r\n```python\r\nauth_group, \r\nauth_group_permissions, \r\nauth_permission, \r\nauth_user, \r\nauth_user_groups, \r\nauth_user_user_permissions, \r\ndjango_admin_log, \r\ndjango_content_type, \r\ndjango_migrations, \r\ndjango_session\r\n```\r\n\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423144540833.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n\r\n#### 注意\r\n这里最好把新建的 `templates` 文件，Mark 为模板文件\r\n\r\n把鼠标放在 `templates` 文件上，右击鼠标，选择 `Mark Directory as -> Template Folder`, 点击确定\r\n\r\n# 教程目录\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建|前言](https://blog.csdn.net/yxys01/article/details/105704783)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建一|配置开发环境](https://blog.csdn.net/yxys01/article/details/105706040)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二|创建虚拟环境](https://blog.csdn.net/yxys01/article/details/105706305)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建三|创建博客项目](https://blog.csdn.net/yxys01/article/details/105706763)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建四|创建第一个APP](https://blog.csdn.net/yxys01/article/details/105707015)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建五|makemigrations连接MySQL数据库的坑](https://blog.csdn.net/yxys01/article/details/105707711)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建六|数据库结构设计](https://blog.csdn.net/yxys01/article/details/105737645)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建七|makemigrations创建数据库的坑（第二弹）](https://blog.csdn.net/yxys01/article/details/105738705)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建八|通过admin管理后台](https://blog.csdn.net/yxys01/article/details/105810710)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建九|博客首页开发（一）](https://blog.csdn.net/yxys01/article/details/105812403)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十|整理项目结构](https://blog.csdn.net/yxys01/article/details/105815286)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十一|博客首页开发（二）](https://blog.csdn.net/yxys01/article/details/105825729)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十二|博客首页开发（三）](https://blog.csdn.net/yxys01/article/details/105859009)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十三|博客详情页面](https://blog.csdn.net/yxys01/article/details/105875230)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十四|注册登录](https://blog.csdn.net/yxys01/article/details/105875818)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十五|评论区](https://blog.csdn.net/yxys01/article/details/105901272)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十六|网站地图](https://blog.csdn.net/yxys01/article/details/105904112)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十七|Haystack 全文搜索](https://blog.csdn.net/yxys01/article/details/105904515)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十八|功能完善](https://blog.csdn.net/yxys01/article/details/105913034)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十九|RESTful API接口](https://blog.csdn.net/yxys01/article/details/105913140)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十|RSS订阅](https://blog.csdn.net/yxys01/article/details/105913951)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十一|天坑合集](https://blog.csdn.net/yxys01/article/details/105914348)', '/static/images/summary.jpg', '2020-05-18 09:52:42.112707', '2020-05-18 09:52:42.112728', 0, 0, '4', 1, 2);
INSERT INTO `fswy_article` VALUES (10, 'Django3.0+Python3.8+MySQL8.0 个人博客搭建五|makemigrations连接MySQL数据库的坑', 'Django3.0+Python3.8+MySQL8.0 个人博客搭建五|makemigrations连接MySQL数据库的坑', '# 一、执行makemigrations命令\r\n在让Django与MySQL关联后，要让Python也和MySQL连接上，需要在虚拟环境中执行`makemigrations`命令\r\n\r\n```powershell\r\n(fswy) xxxxdeMacBook-Pro:blog xiatian$ python3 manage.py makemigrations\r\n```\r\n# 二、报错\r\n后面报了一系列的错误，在此做个总结\r\n\r\n## 错误1：Error loading MySQLdb module.\r\n```powershell\r\nTraceback (most recent call last):\r\n  File \"/Users/xiatian/fswy/lib/python3.8/site-packages/django/db/backends/mysql/base.py\", line 16, in <module>\r\n    import MySQLdb as Database\r\nModuleNotFoundError: No module named \'MySQLdb\'\r\n......\r\ndjango.core.exceptions.ImproperlyConfigured: Error loading MySQLdb module.\r\nDid you install mysqlclient?\r\n```\r\n\r\n### 原因：\r\n在**Python2**中用的是**MySQLdb**，但在**Python3**中用的是 **mysqlclient**\r\n\r\n### 解决方案：\r\n安装**mysqlclient**\r\n\r\n```powershell\r\n(fswy) xxxxdeMacBook-Pro:blog xiatian$ pip3 install mysqlclient\r\n```\r\n\r\n```powershell\r\nCollecting mysqlclient\r\nSuccessfully installed mysqlclient-1.4.6\r\n```\r\n\r\n### 重现输入:`$ python3 manage.py makemigrations`\r\n\r\n## 错误2：Reason: image not found\r\n\r\n```powershell\r\n  File \"/Users/xiatian/fswy/lib/python3.8/site-packages/MySQLdb/__init__.py\", line 18, in <module>\r\n    from . import _mysql\r\nImportError: dlopen(/Users/xiatian/fswy/lib/python3.8/site-packages/MySQLdb/_mysql.cpython-38-darwin.so, 2): Library not loaded: @rpath/libmysqlclient.21.dylib\r\n  Referenced from: /Users/xiatian/fswy/lib/python3.8/site-packages/MySQLdb/_mysql.cpython-38-darwin.so\r\n    Reason: image not found\r\n```\r\n### 原因：未在`_ _ init_ _.py`文件伪装MySQL数据库\r\n\r\n这里死的很惨，试过各种方法\r\n\r\n安装各种模块：\r\n\r\n```powershell\r\n$ pip3 install mysql-connector-python-rf\r\n$ pip3 install mysql-python\r\n$ pip3 install MySQLdb\r\n```\r\n不过，好像都是**python2.x**的解决方案，这里都不支持**python3.8**\r\n\r\n\r\n### 解决方案：伪装mysql数据库\r\n\r\n来到App文件夹下面的 `_ _ init_ _.py`文件，在里面直接添加如下代码：\r\n\r\n```python\r\nimport pymysql\r\n\r\npymysql.install_as_MySQLdb()\r\n```\r\n\r\n效果如下：\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423150804480.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n\r\n### 重现输入:`$ python3 manage.py makemigrations`\r\n\r\n\r\n## 错误3：mysqlclient 1.3.13 or newer is required\r\n\r\n```powershell\r\ndjango.core.exceptions.ImproperlyConfigured: mysqlclient 1.3.13 or newer is required; you have 0.9.3.\r\n```\r\n\r\n### 原因：\r\n由于上面安装的pymysql版本低，但是python3又不支持高版本，所以只能靠改变设置文件来更改配置了\r\n\r\n### 解决方案：\r\n进入`/Users/xiatian/fswy/blog/venv/lib/python3.8/site-packages/django/db/backends/mysql/base.py`中将其第36、37行注释掉\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423151108144.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n\r\n### 重现输入:`$ python3 manage.py makemigrations`\r\n\r\n发现还是报错同样的错误\r\n\r\n### 解决方案：\r\n\r\n打开访达，前往：`/Users/xiatian/fswy/blog/venv/lib/python3.8/site-packages/django/db/backends/mysql/base.py`，发现`base.py`中并没有被注释掉第36、37行，这里用文本编辑打开，再次注释掉第36、37行。\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423151906393.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n\r\n### 重现输入:`$ python3 manage.py makemigrations`\r\n\r\n\r\n## 错误4： Warning: 3135\r\n\r\n```powershell\r\n/Users/xiatian/fswy/lib/python3.8/site-packages/pymysql/cursors.py:170: Warning: (3135, \"\'NO_ZERO_DATE\', \'NO_ZERO_IN_DATE\' and \'ERROR_FOR_DIVISION_BY_ZERO\' sql modes should be used with strict mode. They will be merged with strict mode in a future release.\")\r\n```\r\n### 原因：\r\n中文意思是：`警告:(3135，\"\'NO_ZERO_DATE\'， \'NO_ZERO_IN_DATE\'和\' error_for_division on_by_zero \'` sql模式应该与严格模式一起使用。它们将在未来的版本中与strict模式合并。”\r\n\r\n就是说SQL modes应该使用安全模式，即该功能将可能在未来的版本中被舍弃或者合并，这是MySQL向后兼容常见的处理方式。\r\n\r\n### 解决方案：\r\n把`settings.py`里的`options`注释掉就正常了\r\n\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423152636670.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n### 重现输入:`$ python3 manage.py makemigrations`\r\n## 错误5：No changes detected\r\n```powershell\r\nNo changes detected\r\n```\r\n### 原因：\r\n有时执行`python manage.py makemigrations`命令(也可能人比较皮，把`migrations`文件夹给删了)，会提示\"`No changes detected.`\"\r\n\r\n### 解决方案：\r\n\r\n先`python3 manage.py makemigrations --empty yourappname`生成一个空的`initial.py`\r\n\r\n```powershell\r\n(fswy) xxxxdeMacBook-Pro:blog xiatian$ python3 manage.py makemigrations --empty fswy\r\nMigrations for \'fswy\':\r\n  fswy/migrations/0001_initial.py\r\n```\r\n\r\n再`python3 manage.py migrate` 创建数据库表单\r\n\r\n```powershell\r\n(fswy) xxxxdeMacBook-Pro:blog xiatian$ python3 manage.py migrate\r\n```\r\n\r\n```powershell\r\nOperations to perform:\r\n  Apply all migrations: admin, auth, contenttypes, firstWEB, sessions\r\nRunning migrations:\r\n  Applying contenttypes.0001_initial... OK\r\n  Applying auth.0001_initial... OK\r\n  Applying admin.0001_initial... OK\r\n  Applying admin.0002_logentry_remove_auto_add... OK\r\n  Applying admin.0003_logentry_add_action_flag_choices... OK\r\n  Applying contenttypes.0002_remove_content_type_name... OK\r\n  Applying auth.0002_alter_permission_name_max_length... OK\r\n  Applying auth.0003_alter_user_email_max_length... OK\r\n  Applying auth.0004_alter_user_username_opts... OK\r\n  Applying auth.0005_alter_user_last_login_null... OK\r\n  Applying auth.0006_require_contenttypes_0002... OK\r\n  Applying auth.0007_alter_validators_add_error_messages... OK\r\n  Applying auth.0008_alter_user_username_max_length... OK\r\n  Applying auth.0009_alter_user_last_name_max_length... OK\r\n  Applying auth.0010_alter_group_name_max_length... OK\r\n  Applying auth.0011_update_proxy_permissions... OK\r\n  Applying firstWEB.0001_initial... OK\r\n  Applying sessions.0001_initial... OK\r\n\r\n```\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200423153222150.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n至此，终于将Python3.8和MySQL8.0连接。\r\n\r\n希望此文能给予大家帮助！\r\n\r\n参考网址：\r\n[Mac下python3安装mysqlclient](https://www.jianshu.com/p/6411c14ce3f1)\r\n\r\n[python3 manage.py makemigrations执行可能出现的错误](https://www.jianshu.com/p/ef7fe4fe143a)\r\n\r\n[django.core.exceptions.ImproperlyConfigured: mysqlclient 1.3.13 or newer is required; you have 0.9.2](https://blog.csdn.net/weixin_45476498/article/details/100098297?depth_1-utm_source=distribute.pc_relevant.none-task&utm_source=distribute.pc_relevant.none-task)\r\n\r\n[使用python建立一个网站：笔记5 在Django3.0中配置Mysql8 版本(win10环境)](https://blog.csdn.net/qq_44179528/article/details/104565365)\r\n\r\n[django使用mysql出现警告Warning: (3135, \"\'NO_ZERO_DATE\', \'NO_ZERO_IN_DATE\' and \'ERROR_FOR_DIVISION_BY_ZERO\'...](https://blog.csdn.net/weixin_30448685/article/details/101687397)\r\n\r\n[python manage.py makemigrations No changes detected](https://www.cnblogs.com/kaisim/p/12100228.html)\r\n\r\n# 教程目录\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建|前言](https://blog.csdn.net/yxys01/article/details/105704783)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建一|配置开发环境](https://blog.csdn.net/yxys01/article/details/105706040)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二|创建虚拟环境](https://blog.csdn.net/yxys01/article/details/105706305)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建三|创建博客项目](https://blog.csdn.net/yxys01/article/details/105706763)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建四|创建第一个APP](https://blog.csdn.net/yxys01/article/details/105707015)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建五|makemigrations连接MySQL数据库的坑](https://blog.csdn.net/yxys01/article/details/105707711)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建六|数据库结构设计](https://blog.csdn.net/yxys01/article/details/105737645)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建七|makemigrations创建数据库的坑（第二弹）](https://blog.csdn.net/yxys01/article/details/105738705)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建八|通过admin管理后台](https://blog.csdn.net/yxys01/article/details/105810710)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建九|博客首页开发（一）](https://blog.csdn.net/yxys01/article/details/105812403)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十|整理项目结构](https://blog.csdn.net/yxys01/article/details/105815286)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十一|博客首页开发（二）](https://blog.csdn.net/yxys01/article/details/105825729)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十二|博客首页开发（三）](https://blog.csdn.net/yxys01/article/details/105859009)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十三|博客详情页面](https://blog.csdn.net/yxys01/article/details/105875230)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十四|注册登录](https://blog.csdn.net/yxys01/article/details/105875818)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十五|评论区](https://blog.csdn.net/yxys01/article/details/105901272)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十六|网站地图](https://blog.csdn.net/yxys01/article/details/105904112)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十七|Haystack 全文搜索](https://blog.csdn.net/yxys01/article/details/105904515)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十八|功能完善](https://blog.csdn.net/yxys01/article/details/105913034)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十九|RESTful API接口](https://blog.csdn.net/yxys01/article/details/105913140)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十|RSS订阅](https://blog.csdn.net/yxys01/article/details/105913951)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十一|天坑合集](https://blog.csdn.net/yxys01/article/details/105914348)', '/static/images/summary.jpg', '2020-05-18 10:00:44.899391', '2020-05-18 10:00:44.899412', 0, 0, '5', 1, 2);
INSERT INTO `fswy_article` VALUES (11, 'Django3.0+Python3.8+MySQL8.0 个人博客搭建六|数据库结构设计', 'Django3.0+Python3.8+MySQL8.0 个人博客搭建六|数据库结构设计', '# 一、功能分析\r\n\r\n今天主要做数据库的设计与实现，这一块需要数据库的基础知识了，如果要讲解篇幅就大了，有兴趣的朋友看一下推荐阅读，有基础的朋友可以看下面的思维导图来分析。\r\n\r\n推荐阅读：[Mysql数据库基础知识](https://www.runoob.com/mysql/mysql-tutorial.html)         [数据库表设计](https://blog.csdn.net/sugar_map/article/details/80384780)\r\n\r\n我们直接从想学习的目标博客网站的功能上分析，看看这个博客网站需要建立哪些表，每个表中都需要什么字段。\r\n\r\n## First：博文\r\n最主要的是我们的博文表，名字可以直接叫做 `article`，这个表中，肯定要包括以下几点：\r\n\r\n - 博文的标题\r\n - 博文的内容\r\n - 博文的发表时间\r\n - 博文的修改时间\r\n - 博文的分类\r\n - 博文的阅读量\r\n - 博文喜欢量\r\n - 博文作者等\r\n\r\n## Second：分类\r\n针对博文的分类，我们可以参考csdn博客系统。\r\n\r\n一篇博文只能有一个分类，但是可以有多个标签。\r\n\r\n比如我现在写的这篇博文，可以分类到 django 下，但是它可以有多个标签：django、博客、数据库、开发……\r\n\r\n考虑到每一篇博文都只能有一个分类，而一个分类下是可以包含很多博文的，因此分类与博文是**一对多**的关系，此时应当使用**外键**来进行关联。\r\n\r\n而一篇博文可以有多个标签， 每个标签也可以包含多个博文，因此，标签与博文是**多对多**的关系。\r\n\r\n关于一对多与多对多的知识话题，这里就不再展开了，不了解的查看 Django文档 与相关资料。\r\n\r\n推荐阅读：[Django官方文档](https://docs.djangoproject.com/en/2.1/topics/db/models/)         [Django中文文档](http://djangobook.py3k.cn/2.0/chapter05/)\r\n\r\n## Third：SEO\r\n针对网站优化，那么一个网站最基本的[SEO](https://baike.baidu.com/item/%E6%90%9C%E7%B4%A2%E5%BC%95%E6%93%8E%E4%BC%98%E5%8C%96/3132?fromtitle=seo&fromid=102990&fr=aladdin)就是设置TDK\r\n\r\n    T： 网站页面 title\r\n\r\n    D： 网站页面描述\r\n\r\n    K： 网站页面Keywords，也即网站涵盖的主题\r\n    \r\n要实现SEO，则需要一个页面关键字表 `Keyword`，一个页面可能包含多个主题，一个主题可能在多个页面出现，所以应该是**多对多**的关系，称作 `Keyword`表。\r\n\r\n目标博客网站导航栏菜单存在下拉菜单，下拉菜单即是博文分类，这里的导航栏菜单也需要一个表，因为这个表就是为了给博文分类归类的，称作 `Bigcategory`表。\r\n\r\n观察目标博客导航栏下边还有一个公告栏，公告也需要一个表，它和任何表都没关系，称作 `Activate`表。\r\n\r\n公告下边是幻灯片，思考了一下，这个幻灯片应该和别的表也没啥关系，称作 `Carousel`表。\r\n\r\n右侧还有一个友情链接功能，需要一个表，友链和其它表也无关系，称作 `FriendLink`表。\r\n\r\n因此，通过上述分析，我们可以确定出这些数据表，\r\n\r\n - 博客（Article）\r\n - 分类（Category）\r\n - 标签（Tag）\r\n - 导航(Bigcategory) \r\n - 文章关键词 (Keyword) \r\n - 公告(Activate) \r\n - 幻灯片(Carousel)\r\n - 友链(FriendLink)\r\n\r\n# 二、数据库设计的思维导图\r\n![数据库思维导图](https://img-blog.csdnimg.cn/20200424191337571.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n# 三、编写 fswy 应用模型\r\n\r\n`blog -> fswy -> models.py`\r\n\r\n头文件引入模块：\r\n\r\n```python\r\nfrom django.db import models\r\nfrom django.conf import settings\r\nfrom django.shortcuts import reverse\r\n\r\nimport markdown\r\nimport re\r\n```\r\n\r\n由于 `Article` 表包含外键与**多对多关系**，因此首先应当建立另外两个表：`Category`表和`Bigcategory`表。\r\n\r\n由于 `Category` 分类表包含外键，因此首先需要创建导航菜单表 `Bigcategory`\r\n\r\n## 导航（`Bigcategory`）表的创建：\r\n```python\r\n# 网站导航菜单栏分类表\r\nclass BigCategory(models.Model):\r\n    # 导航名称\r\n    name = models.CharField(\'文章大分类\', max_length=20)\r\n    # 用作文章的访问路径，每篇文章有独一无二的标志，下同\r\n    slug = models.SlugField(unique=True)\r\n    # 分类页描述\r\n    description = models.TextField(\'描述\',\r\n                                   max_length=240,\r\n                                   default=settings.SITE_DESCRIPTION,\r\n                                   help_text=\'用来作为SEO中description,长度参考SEO标准\')\r\n    # 分类页Keywords\r\n    keywords = models.TextField(\'关键字\',\r\n                                max_length=240,\r\n                                default=settings.SITE_KEYWORDS,\r\n                                help_text=\'用来作为SEO中keywords，长度参考SEO标准\')\r\n    class Meta:\r\n        verbose_name = \'大分类\'\r\n        verbose_name_plural = verbose_name\r\n\r\n    def __str__(self):\r\n        return self.name\r\n```\r\n\r\n## 分类（`Category`）表的创建：\r\n```python\r\n# 导航栏，分类下的下拉菜单分类\r\nclass Category(models.Model):\r\n    # 分类名字\r\n    name = models.CharField(\'文章分类\', max_length=20)\r\n    # slug 用作分类路径，独一无二\r\n    slug = models.SlugField(unique=True)\r\n    # 分类栏目页描述\r\n    description = models.TextField(\'描述\',\r\n                                   max_length=240,\r\n                                   default=settings.SITE_DESCRIPTION,\r\n                                   help_text=\'用来作为SEO中description,长度参考SEO标准\')\r\n    # 对应导航菜单外键\r\n    bigcategory = models.ForeignKey(BigCategory, verbose_name=\'大分类\', on_delete=models.CASCADE)\r\n\r\n    class Meta:\r\n        verbose_name = \'分类\'\r\n        verbose_name_plural = verbose_name\r\n        ordering = [\'name\']\r\n\r\n    def __str__(self):\r\n        return self.name\r\n\r\n    def get_absolute_url(self):\r\n        return reverse(\'blog:category\',\r\n                       kwargs={\'slug\': self.slug,\r\n                               \'bigslug\': self.bigcategory.slug})\r\n\r\n    def get_article_list(self):\r\n        return Article.objects.filter(category=self)\r\n```\r\n\r\n## 标签（`Tag`）表的创建：\r\n\r\n\r\n```python\r\n# 文章标签\r\nclass Tag(models.Model):\r\n    name = models.CharField(\'文章标签\', max_length=20)\r\n    slug = models.SlugField(unique=True)\r\n    description = models.TextField(\'描述\',\r\n                                   max_length=240,\r\n                                   default=settings.SITE_DESCRIPTION,\r\n                                   help_text=\'用来作为SEO中description,长度参考SEO标准\')\r\n\r\n    class Meta:\r\n        verbose_name = \'标签\'\r\n        verbose_name_plural = verbose_name\r\n        ordering = [\'id\']\r\n\r\n    def __str__(self):\r\n        return self.name\r\n\r\n    def get_absolute_url(self):\r\n        return reverse(\'blog:tag\',\r\n                       kwargs={\'tag\': self.name})\r\n\r\n    def get_article_list(self):\r\n        \'\'\' 返回当前标签下所有发表的文章列表 \'\'\'\r\n        return Article.objects.filter(tags=self)\r\n```\r\n\r\n## 文章关键词（`Keyword`）表的创建：\r\n\r\n```python\r\n# 文章关键词，用来作为SEO中keywords\r\nclass Keyword(models.Model):\r\n    name = models.CharField(\'文章关键词\', max_length=20)\r\n\r\n    class Meta:\r\n        verbose_name = \'关键词\'\r\n        verbose_name_plural = verbose_name\r\n        ordering = [\'name\']\r\n\r\n    def __str__(self):\r\n        return self.name\r\n```\r\n\r\n## 博客（`Article`）表的创建：\r\n\r\n```python\r\n# 文章\r\nclass Article(models.Model):\r\n    # 文章默认略缩图\r\n    IMG_LINK = \'/static/images/summary.jpg\'\r\n    # 文章作者\r\n    author = models.ForeignKey(settings.AUTH_USER_MODEL, verbose_name=\"作者\", on_delete=models.CASCADE)\r\n    title = models.CharField(max_length=150, verbose_name=\'文章标题\')\r\n    summary = models.TextField(\'文章摘要\',\r\n                               max_length=230,\r\n                               default=\'文章摘要等同于网页description内容，请务必填写...\')\r\n    # 文章内容\r\n    body = models.TextField(verbose_name=\'文章内容\')\r\n    img_link = models.CharField(\'图片地址\', default=IMG_LINK, max_length=255)\r\n    create_date = models.DateTimeField(verbose_name=\'创建时间\', auto_now_add=True)\r\n    update_date = models.DateTimeField(verbose_name=\'修改时间\', auto_now=True)\r\n    views = models.IntegerField(\'阅览量\', default=0)\r\n    loves = models.IntegerField(\'喜爱量\', default=0)\r\n    # 文章唯一标识符\r\n    slug = models.SlugField(unique=True)\r\n    category = models.ForeignKey(Category, verbose_name=\'文章分类\',on_delete=models.CASCADE)\r\n    tags = models.ManyToManyField(Tag, verbose_name=\'标签\')\r\n    keywords= models.ManyToManyField(Keyword,\r\n                                     verbose_name=\'文章关键词\',\r\n                                     help_text=\'文章关键词，用来作为SEO中keywords,最好使用长尾词，3-4个足够\')\r\n\r\n    class Meta:\r\n        verbose_name = \'文章\'\r\n        verbose_name_plural = verbose_name\r\n        ordering = [\'-create_date\']\r\n\r\n    def __str__(self):\r\n        return self.title[:20]\r\n\r\n    def get_absolute_url(self):\r\n        return reverse(\'blog:article\', kwargs={\'sulg\': self.slug})\r\n\r\n    def body_to_markdown(self):\r\n        return markdown.markdown(self.body, extension=[\r\n            \'markdown.extensions.extra\',\r\n            \'markdown.extensions.codehilite\',\r\n        ])\r\n\r\n    def update_views(self):\r\n        self.views += 1\r\n        self.save(update_fields=[\'views\'])\r\n\r\n    def get_pre(self):\r\n        return Article.objects.filter(id_lt=self.id).order_by(\'-id\').first()\r\n\r\n    def get_next(self):\r\n        return Article.objects.filter(id_gt=self.id).order_by(\'id\').first()\r\n```\r\n\r\n### 为什么要用`slug`给文章起别名呢？\r\n\r\n这个可能暂且就认为只是为了提升逼格吧\r\n\r\n## 公告（`Activate`）表的创建：\r\n\r\n```python\r\n# 公告\r\nclass Activate(models.Model):\r\n    text = models.TextField(\'公告\', null=True)\r\n    is_active = models.BooleanField(\'是否开启\', default=False)\r\n    add_date = models.DateTimeField(\'提交日期\', auto_now_add=True)\r\n\r\n    class Meta:\r\n        verbose_name = \'公告\'\r\n        verbose_name_plural = verbose_name\r\n\r\n    def __str__(self):\r\n        return self.id\r\n```\r\n\r\n## 幻灯片（`Carousel`）表的创建：\r\n\r\n```python\r\n# 幻灯片\r\nclass Carousel(models.Model):\r\n    number = models.IntegerField(\'编号\', help_text=\'编号决定图片播放的顺序，图片不要多于5张\')\r\n    title = models.CharField(\'标题\',\r\n                             max_length=20,\r\n                             blank=True,\r\n                             null=True,\r\n                             help_text=\'标题可以为空\')\r\n    content = models.CharField(\'描述\', max_length=80)\r\n    img_url = models.CharField(\'图片地址\', max_length=200)\r\n    url = models.CharField(\'跳转链接\',\r\n                           max_length=200,\r\n                           default=\'#\',\r\n                           help_text=\'图片跳转的超链接，默认#表示不跳转\')\r\n\r\n    class Meta:\r\n        verbose_name = \'图片轮播\'\r\n        verbose_name_plural = verbose_name\r\n        # 编号越小越靠前，添加的时间越晚越靠前\r\n        ordering = [\'number\', \'-id\']\r\n\r\n    def __str__(self):\r\n        return self.content[:25]\r\n```\r\n\r\n## 友链（`FriendLink`）表的创建：\r\n\r\n```python\r\n# 友情链接表\r\nclass FriendLink(models.Model):\r\n    name = models.CharField(\'网站名称\', max_length=50)\r\n    description = models.CharField(\'网站描述\', max_length=100, blank=True)\r\n    link = models.URLField(\'友链地址\', help_text=\'请填写http或https开头的完整形式地址\')\r\n    logo = models.URLField(\'网站LOGO\', help_text=\'请填写http或https开头的完整形式地址\', blank=True)\r\n    create_date = models.DateTimeField(\'创建时间\', auto_now_add=True)\r\n    is_active = models.BooleanField(\'是否有效\', default=True)\r\n    is_show = models.BooleanField(\'是否首页展示\', default=False)\r\n\r\n    class Meta:\r\n        verbose_name = \'友情链接\'\r\n        verbose_name_plural = verbose_name\r\n        ordering = [\'create_date\']\r\n\r\n    def __str__(self):\r\n        return self.name\r\n\r\n    def get_home_url(self):\r\n        \'\'\'提取友链的主页\'\'\'\r\n        u = re.findall(r\'(http|https://.*?)/.*?\', self.link)\r\n        home_url = u[0] if u else self.link\r\n        return home_url\r\n\r\n    def active_to_false(self):\r\n        self.is_active = False\r\n        self.save(update_fields=[\'is_active\'])\r\n\r\n    def show_to_false(self):\r\n        self.is_show =  True\r\n        self.save(update_fields=[\'is_show\'])\r\n```\r\n\r\n## 提示：\r\n`fswy -> models.py` 中出现的 `SITE_DESCRIPTION`、`SITE_KEYWORDS`、`AUTH_USER_MODEL`，把它们当作默认字段放在 `setting.py` 中，便于管理\r\n\r\n`blog -> blog -> settings.py`\r\n\r\n```python\r\n# 网站描述，用于SEO\r\nSITE_DESCRIPTION = \"Fswy的个人网站，记录生活的瞬间，分享学习的心得\"\r\n\r\n# 网站关键词，用于SEO\r\nSITE_KEYWORDS = \"Fswy，网络，IT，技术，博客，Python，iOS\"\r\n\r\n# 作者（网站注册用户）\r\nAUTH_USER_MODEL = \'user.Ouser\'\r\n```\r\n    \r\n在文件首部 # 引入 setings.py 文件，即可使用这些字段\r\n\r\n```python\r\nfrom django.conf import settings\r\n```\r\n\r\n以上的类名代表了数据库表名，且继承了`models.Model`，类里面的字段代表数据表中的字段(name)，数据类型则由`CharField`（相当于varchar）、`DateField`（相当于datetime），`max_length` 参数限定长度。\r\n\r\n# 四、注意事项\r\n\r\n关于博客表有以下几点需要注意的：\r\n\r\n 1. 标题应当限定长度，我们设定最大值为100\r\n 2. 内容不用限定长度，因此用的是TextField字段\r\n 3. 修改时间直接设定成，`auto_now=True`，在你修改时，会自动变成当前时间。\r\n 4. 关于`ForeignKey`与`ManyToManyField`，请自行查看相关文档资料\r\n\r\n[Django官方文档](https://docs.djangoproject.com/en/2.1/topics/db/models/)       [Django中文文档](http://djangobook.py3k.cn/2.0/chapter05/)\r\n\r\n# 五、编写 user 用户应用模型\r\n\r\n另外，文章有一个作者外键：\r\n\r\n```python\r\nauthor = models.ForeignKey(settings.AUTH_USER_MODEL, verbose_name=\'作者\')\r\n```\r\n\r\n这个外键是网站注册用户，这样用户也可以有发文权限。\r\n\r\n这里创建一个用户app比较好。\r\n\r\n创建app可以参考：[Django3.0+Python3.8+MySQL8.0 个人博客搭建四|创建第一个APP](https://blog.csdn.net/yxys01/article/details/105707015)\r\n \r\n除此之外，千万不要忘了创建app后去配置文件里注册用户app，，创建好 user 应用后，编写用户模型。\r\n\r\n`blog -> user -> models.py`\r\n\r\n## 编写用户模型\r\n```python\r\nfrom django.db import models\r\nfrom django.contrib.auth.models import AbstractUser\r\nfrom imagekit.models import ProcessedImageField\r\nfrom imagekit.processors import ResizeToFill\r\n\r\n# Create your models here.\r\n# 继承AbstractUser，django自带用户类，扩展用户个人网站字段，用户头像字段\r\nclass Ouser(AbstractUser):\r\n    # 扩展用户个人网站字段\r\n    link = models.URLField(\'个人网址\',\r\n                           blank=True,\r\n                           help_text=\'提示：网址必须填写以http开头的完整形式\')\r\n    # 扩展用户头像字段\r\n    avatar = ProcessedImageField(upload_to=\'avatar/%Y/%m/%d\',\r\n                                 default=\'avatar/default.png\',\r\n                                 verbose_name=\'头像\',\r\n                                 processors=[ResizeToFill(80, 80)])\r\n\r\n    class Meta:\r\n        verbose_name = \'用户\' # 定义网站管理后台表名\r\n        verbose_name_plural = verbose_name\r\n        ordering = [\'-id\']\r\n\r\n    def __str__(self):\r\n        return self.username\r\n```\r\n\r\n### 注意：\r\n这里导入`imagekit`时，发现报错。\r\n\r\n需要先安装`pillow`：\r\n\r\n```powershell\r\n(fswy) blog xiatian$ pip3 install pillow\r\n```\r\n\r\n```powershell\r\nCollecting pillow\r\n......\r\nSuccessfully installed pillow-7.1.1\r\n```\r\n\r\n\r\n然后安装`django-imagekit`\r\n\r\n```powershell\r\n(fswy) blog xiatian$ pip3 install django-imagekit\r\n```\r\n\r\n```powershell\r\nCollecting django-appconf>=0.5 (from django-imagekit)\r\n......\r\nSuccessfully installed django-appconf-1.0.4 django-imagekit-4.0.2 pilkit-2.0 six-1.14.0\r\n```\r\n这时发现，PyCharm中`imagekit`还是在报错\r\n### 解决方案：\r\nPyCharm->Perferences ->项目：blog ->点击下方的 \"+\"号 ->搜索`pillow`和`django-imagekit`，分别`Install Package`\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200424202604894.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n最后注意：\r\n\r\n在`settings.py`中的`INSTRALLED_APPS`添加上：`\'imagekit\'`.\r\n\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200424202844847.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n# 六、Django建立数据库\r\n\r\n`Tools -> run manage.py task` 下依次执行命令：\r\n\r\n```python\r\n& makemigrations\r\n& migrate\r\n```\r\n\r\n或者在**终端**执行：\r\n\r\n```powershell\r\n(fswy) blog xiatian$ python3 manage.py makemigrations\r\n(fswy) blog xiatian$ python3 manage.py migrate\r\n```\r\n注意，一定要先进入**虚拟环境**哈！！！\r\n\r\n当然，由于版本和一些细节原因，在执行`makemigrations`时，依旧有不少的坑等着我们去填，我将其汇总到：[Django3.0+Python3.8+MySQL8.0 个人博客搭建七|makemigrations创建数据库的坑（第二弹）](https://blog.csdn.net/yxys01/article/details/105738705)\r\n中，报错的同学可以去参考一下，希望对你们的开发有所帮助。\r\n\r\n```powershell\r\n(fswy) blog xiatian$ python3 manage.py makemigrations\r\nMigrations for \'fswy\':\r\n  fswy/migrations/0002_activate_article_bigcategory_carousel_category_friendlink_keyword_tag.py\r\n    - Create model Activate\r\n    - Create model Article\r\n    - Create model BigCategory\r\n    - Create model Carousel\r\n    - Create model FriendLink\r\n    - Create model Keyword\r\n    - Create model Tag\r\n    - Create model Category\r\n  fswy/migrations/0003_auto_20200424_1819.py\r\n    - Add field author to article\r\n    - Add field category to article\r\n    - Add field keywords to article\r\n    - Add field tags to article\r\nMigrations for \'user\':\r\n  user/migrations/0001_initial.py\r\n    - Create model Ouser\r\n```\r\n\r\n```powershell\r\n(fswy) blog xiatian$ python3 manage.py migrate\r\nOperations to perform:\r\n  Apply all migrations: auth, contenttypes, fswy, sessions, user\r\nRunning migrations:\r\n  Applying user.0001_initial... OK\r\n  Applying fswy.0002_activate_article_bigcategory_carousel_category_friendlink_keyword_tag... OK\r\n  Applying fswy.0003_auto_20200424_1819... OK\r\n```\r\n在PyCharm中打开Database，刷新，可以看到如图所示：\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200424191312422.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n\r\n即已经将新建的这些表添加到我们的数据库 blog 中了。\r\n\r\n```powershell\r\nfswy_activate,         # 公告表 \r\nfswy_article,          # 新增的博文表\r\nfswy_article_keywords, # 这个是博文与关键词的多对多关系表\r\nfswy_article_tags,     # 这个是博文与标签的多对多关系表\r\nfswy_bigcategory,      # 导航菜单大分类表\r\nfswy_carousel,         # 幻灯片\r\nfswy_category,         # 新增的分类表\r\nfswy_friendlink,       # 友情链接\r\nfswy_keyword,          # 关键词表\r\nfswy_tag，              # 新增的标签表\r\nuser_ouser,             # 新增扩展用户表\r\nuser_ouser_groups,      # 自动产生\r\nuser_ouser_user_permissions # 自动产生\r\n```\r\n\r\n最后两个表示用户表继承了，Django自带的用户models产生的用户关系表\r\n\r\n需要说明的是，这里我们只给出了最开始设计时考虑到的情况，在后续开发过程中，可以随时对其进行变更。当数据表信息变动时\r\n在终端执行：\r\n\r\n```powershell\r\n(fswy) blog xiatian$ python3 manage.py makemigrations\r\n(fswy) blog xiatian$ python3 manage.py migrate\r\n```\r\n即可。\r\n\r\n\r\n# 教程目录\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建|前言](https://blog.csdn.net/yxys01/article/details/105704783)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建一|配置开发环境](https://blog.csdn.net/yxys01/article/details/105706040)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二|创建虚拟环境](https://blog.csdn.net/yxys01/article/details/105706305)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建三|创建博客项目](https://blog.csdn.net/yxys01/article/details/105706763)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建四|创建第一个APP](https://blog.csdn.net/yxys01/article/details/105707015)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建五|makemigrations连接MySQL数据库的坑](https://blog.csdn.net/yxys01/article/details/105707711)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建六|数据库结构设计](https://blog.csdn.net/yxys01/article/details/105737645)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建七|makemigrations创建数据库的坑（第二弹）](https://blog.csdn.net/yxys01/article/details/105738705)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建八|通过admin管理后台](https://blog.csdn.net/yxys01/article/details/105810710)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建九|博客首页开发（一）](https://blog.csdn.net/yxys01/article/details/105812403)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十|整理项目结构](https://blog.csdn.net/yxys01/article/details/105815286)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十一|博客首页开发（二）](https://blog.csdn.net/yxys01/article/details/105825729)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十二|博客首页开发（三）](https://blog.csdn.net/yxys01/article/details/105859009)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十三|博客详情页面](https://blog.csdn.net/yxys01/article/details/105875230)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十四|注册登录](https://blog.csdn.net/yxys01/article/details/105875818)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十五|评论区](https://blog.csdn.net/yxys01/article/details/105901272)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十六|网站地图](https://blog.csdn.net/yxys01/article/details/105904112)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十七|Haystack 全文搜索](https://blog.csdn.net/yxys01/article/details/105904515)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十八|功能完善](https://blog.csdn.net/yxys01/article/details/105913034)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十九|RESTful API接口](https://blog.csdn.net/yxys01/article/details/105913140)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十|RSS订阅](https://blog.csdn.net/yxys01/article/details/105913951)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十一|天坑合集](https://blog.csdn.net/yxys01/article/details/105914348)', '/static/images/summary.jpg', '2020-05-18 10:02:09.989692', '2020-05-18 10:02:09.989713', 0, 0, '6', 1, 2);
INSERT INTO `fswy_article` VALUES (12, 'Django3.0+Python3.8+MySQL8.0 个人博客搭建七|makemigrations创建数据库的坑（第二弹）', 'Django3.0+Python3.8+MySQL8.0 个人博客搭建七|makemigrations创建数据库的坑（第二弹）', '# 一、理解Django的`makemigrations`和`migrate`\r\n因为前面多次因为`makemigrations`命令报错，我们来系统的理解一下Django的`makemigrations`和`migrate`命令。\r\n\r\n在你改动了 model.py的内容之后执行下面的命令：\r\n\r\n```powershell\r\npython manger.py makemigrations\r\n```\r\n\r\n相当于在该app下建立 `migrations`目录，并记录下你所有的关于`modes.py`的改动，比如`0001_initial.py`， 但是这个改动还没有作用到数据库文件。\r\n\r\n你可以手动打开这个文件，看看里面是什么。当`makemigrations`之后产生了`0001_initial.py` 文件，你可以查看下该`migrations`会对应于什么样子的SQL命令，使用如下命令，\r\n\r\n```powershell\r\npython manger.py sqlmigrate theapp 0001\r\n```\r\n\r\n看到的大概是这样子的：\r\n\r\n```powershell\r\nBEGIN;\r\nCREATE TABLE \"polls_choice\" (\r\n    \"id\" serial NOT NULL PRIMARY KEY,\r\n    \"choice_text\" varchar(200) NOT NULL,\r\n    \"votes\" integer NOT NULL\r\n);\r\nCREATE TABLE \"polls_question\" (\r\n    \"id\" serial NOT NULL PRIMARY KEY,\r\n    \"question_text\" varchar(200) NOT NULL,\r\n    \"pub_date\" timestamp with time zone NOT NULL\r\n);\r\nALTER TABLE \"polls_choice\" ADD COLUMN \"question_id\" integer NOT NULL;\r\nALTER TABLE \"polls_choice\" ALTER COLUMN \"question_id\" DROP DEFAULT;\r\nCREATE INDEX \"polls_choice_7aa0f6ee\" ON \"polls_choice\" (\"question_id\");\r\nALTER TABLE \"polls_choice\"\r\n  ADD CONSTRAINT \"polls_choice_question_id_246c99a640fbbd72_fk_polls_question_id\"\r\n    FOREIGN KEY (\"question_id\")\r\n    REFERENCES \"polls_question\" (\"id\")\r\n    DEFERRABLE INITIALLY DEFERRED;\r\n \r\nCOMMIT;\r\n```\r\n\r\n在`makemigrations`之后执行命令：\r\n\r\n```powershell\r\npython manager.py migrate\r\n```\r\n\r\n将该改动作用到数据库文件，比如产生table，修改字段的类型等。\r\n\r\n# 二、报错\r\n在做完数据库设计后，在models.py中建表，然后执行`makemigrations`命令在app下建立 `migrations`目录。\r\n\r\n## 错误1：No module named \'markdown\'\r\n\r\n```powershell\r\nModuleNotFoundError: No module named \'markdown\'\r\n```\r\n### 原因：缺乏markdown模块\r\n实际上，这个错误有点懵，我明明在PyCharm中已经下载了markdown模块，如下：\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200424200210841.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n### 解决方案：\r\n尝试在虚拟环境中安装markdown模块：\r\n\r\n```powershell\r\n(fswy) blog xiatian$ pip3 install markdown\r\n```\r\n\r\n```powershell\r\nCollecting markdown\r\n......\r\nSuccessfully installed markdown-3.2.1\r\n```\r\n难道这两块是分开的？？？\r\n暂时不管吧。\r\n\r\n### 重现输入:`$ python3 manage.py makemigrations`\r\n## 错误2：required positional argument: \'on_delete\'\r\n```powershell\r\n    bigcategory = models.ForeignKey(BigCategory, verbose_name=\'大分类\')\r\nTypeError: __init__() missing 1 required positional argument: \'on_delete\'\r\n```\r\n### 原因：\r\ndjango 升级到2.0之后,表与表之间关联的时候,必须要写on_delete参数,否则会报异常。\r\n\r\n### 解决方案：\r\n定义外键的时候需要加上 `on_delete=`\r\n即：\r\n\r\n```python\r\ncontract = models.ForeignKey(Contract, on_delete=models.CASCADE)\r\n```\r\non_delete各个参数的含义如下：\r\n\r\n```powershell\r\non_delete=None,               # 删除关联表中的数据时,当前表与其关联的field的行为\r\n\r\non_delete=models.CASCADE,     # 删除关联数据,与之关联也删除\r\n\r\non_delete=models.DO_NOTHING,  # 删除关联数据,什么也不做\r\n\r\non_delete=models.PROTECT,     # 删除关联数据,引发错误ProtectedError\r\n\r\n# models.ForeignKey(\'关联表\', on_delete=models.SET_NULL, blank=True, null=True)\r\n\r\non_delete=models.SET_NULL,    # 删除关联数据,与之关联的值设置为null（前提FK字段需要设置为可空,一对一同理）\r\n\r\n# models.ForeignKey(\'关联表\', on_delete=models.SET_DEFAULT, default=\'默认值\')\r\n\r\non_delete=models.SET_DEFAULT, # 删除关联数据,与之关联的值设置为默认值（前提FK字段需要设置默认值,一对一同理）\r\n\r\non_delete=models.SET,         # 删除关联数据,\r\n \r\n a. 与之关联的值设置为指定值,设置：models.SET(值)\r\n b. 与之关联的值设置为可执行对象的返回值,设置：models.SET(可执行对象)\r\n```\r\n### 注意：\r\n由于多对多(ManyToManyField)没有 on_delete 参数,所以以上只针对外键(ForeignKey)和一对一(OneToOneField)。\r\n### 重现输入:`$ python3 manage.py makemigrations`\r\n\r\n## 错误3：AUTH_USER_MODEL must be of the form \'app_label.model_name\'\r\n\r\n```powershell\r\nraise ImproperlyConfigured(\"AUTH_USER_MODEL must be of the form \'app_label.model_name\'\")\r\ndjango.core.exceptions.ImproperlyConfigured: AUTH_USER_MODEL must be of the form \'app_label.model_name\'\r\n```\r\n### 原因：\r\n在settings.py中，`AUTH_USER_MODEL=\" \"`,但它必须是`\'app_label.model_name\'`类型\r\n\r\n### 解决方案：\r\n在settings.py中\r\n\r\n```powershell\r\n# 作者（网站注册用户）\r\nAUTH_USER_MODEL = \'user.Ouser\'\r\n```\r\n\r\n### 重现输入:`$ python3 manage.py makemigrations`\r\n\r\n```powershell\r\n(fswy) blog xiatian$ python3 manage.py makemigrations\r\nMigrations for \'fswy\':\r\n  fswy/migrations/0002_activate_article_bigcategory_carousel_category_friendlink_keyword_tag.py\r\n    - Create model Activate\r\n    - Create model Article\r\n    - Create model BigCategory\r\n    - Create model Carousel\r\n    - Create model FriendLink\r\n    - Create model Keyword\r\n    - Create model Tag\r\n    - Create model Category\r\n  fswy/migrations/0003_auto_20200424_1819.py\r\n    - Add field author to article\r\n    - Add field category to article\r\n    - Add field keywords to article\r\n    - Add field tags to article\r\nMigrations for \'user\':\r\n  user/migrations/0001_initial.py\r\n    - Create model Ouser\r\n```\r\n终于成功了，执行`migrate`命令。\r\n\r\n```powershell\r\n(fswy) blog xiatian$ python3 manage.py migrate\r\n```\r\n\r\n## 错误4：\r\n\r\n```powershell\r\ndjango.db.migrations.exceptions.InconsistentMigrationHistory: Migration admin.0001_initial is applied before its dependency user.0001_initial on database \'default\'.\r\n```\r\n### 原因：\r\n如果我们一开始使用的是django原生模型User，在后来的开发中，我们在其他app中想使用自己的User模型，在我们`makemigrations`时，就会出现以上错误。\r\n\r\n### 解决方法：\r\n\r\n#### （一）：\r\n\r\n 1. 删除除了auth_user表以外的所有数据库\r\n 2. 删除与用户有关app下的migrations文件夹\r\n 3. 重新makemigrations + migrate\r\n\r\n缺点：这个方法相当于从头到尾更新重建了我们的数据模型，需要我们备份数据库中的数据\r\n#### （二）：\r\n\r\n 1. 在setttings文件中注释掉：django.contrib.admin\r\n 2. 在urls文件中注释掉：path(\'admin/\', admin.site.urls)\r\n 3. 重新migrate\r\n 4. 将刚才注释的代码加回去\r\n 5. 重新migrate\r\n\r\n这里采取方法二\r\n\r\n```powershell\r\n(fswy)blog xiatian$ python3 manage.py migrate\r\nOperations to perform:\r\n  Apply all migrations: auth, contenttypes, fswy, sessions, user\r\nRunning migrations:\r\n  Applying user.0001_initial... OK\r\n  Applying fswy.0002_activate_article_bigcategory_carousel_category_friendlink_keyword_tag... OK\r\n  Applying fswy.0003_auto_20200424_1819... OK\r\n(fswy)blog xiatian$ python3 manage.py migrate\r\nOperations to perform:\r\n  Apply all migrations: admin, auth, contenttypes, fswy, sessions, user\r\nRunning migrations:\r\n  No migrations to apply.\r\n```\r\n在PyCharm中打开Database，刷新，可以看到如图所示：\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200424201548225.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l4eXMwMQ==,size_16,color_FFFFFF,t_70#pic_center)\r\n即已经将新建的这些表添加到我们的数据库 blog 中了。\r\n\r\n# 教程目录\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建|前言](https://blog.csdn.net/yxys01/article/details/105704783)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建一|配置开发环境](https://blog.csdn.net/yxys01/article/details/105706040)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二|创建虚拟环境](https://blog.csdn.net/yxys01/article/details/105706305)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建三|创建博客项目](https://blog.csdn.net/yxys01/article/details/105706763)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建四|创建第一个APP](https://blog.csdn.net/yxys01/article/details/105707015)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建五|makemigrations连接MySQL数据库的坑](https://blog.csdn.net/yxys01/article/details/105707711)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建六|数据库结构设计](https://blog.csdn.net/yxys01/article/details/105737645)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建七|makemigrations创建数据库的坑（第二弹）](https://blog.csdn.net/yxys01/article/details/105738705)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建八|通过admin管理后台](https://blog.csdn.net/yxys01/article/details/105810710)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建九|博客首页开发（一）](https://blog.csdn.net/yxys01/article/details/105812403)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十|整理项目结构](https://blog.csdn.net/yxys01/article/details/105815286)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十一|博客首页开发（二）](https://blog.csdn.net/yxys01/article/details/105825729)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十二|博客首页开发（三）](https://blog.csdn.net/yxys01/article/details/105859009)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十三|博客详情页面](https://blog.csdn.net/yxys01/article/details/105875230)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十四|注册登录](https://blog.csdn.net/yxys01/article/details/105875818)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十五|评论区](https://blog.csdn.net/yxys01/article/details/105901272)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十六|网站地图](https://blog.csdn.net/yxys01/article/details/105904112)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十七|Haystack 全文搜索](https://blog.csdn.net/yxys01/article/details/105904515)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十八|功能完善](https://blog.csdn.net/yxys01/article/details/105913034)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建十九|RESTful API接口](https://blog.csdn.net/yxys01/article/details/105913140)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十|RSS订阅](https://blog.csdn.net/yxys01/article/details/105913951)\r\n - [Django3.0+Python3.8+MySQL8.0 个人博客搭建二十一|天坑合集](https://blog.csdn.net/yxys01/article/details/105914348)', '/static/images/summary.jpg', '2020-05-18 18:30:40.141957', '2020-05-18 18:30:40.141980', 0, 0, '7', 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for fswy_article_keywords
-- ----------------------------
DROP TABLE IF EXISTS `fswy_article_keywords`;
CREATE TABLE `fswy_article_keywords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `keyword_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fswy_article_keywords_article_id_keyword_id_390b987e_uniq` (`article_id`,`keyword_id`),
  KEY `fswy_article_keywords_keyword_id_44bdb6c4_fk_fswy_keyword_id` (`keyword_id`),
  CONSTRAINT `fswy_article_keywords_article_id_27071260_fk_fswy_article_id` FOREIGN KEY (`article_id`) REFERENCES `fswy_article` (`id`),
  CONSTRAINT `fswy_article_keywords_keyword_id_44bdb6c4_fk_fswy_keyword_id` FOREIGN KEY (`keyword_id`) REFERENCES `fswy_keyword` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fswy_article_keywords
-- ----------------------------
BEGIN;
INSERT INTO `fswy_article_keywords` VALUES (1, 1, 1);
INSERT INTO `fswy_article_keywords` VALUES (6, 2, 1);
INSERT INTO `fswy_article_keywords` VALUES (7, 7, 1);
INSERT INTO `fswy_article_keywords` VALUES (8, 8, 1);
INSERT INTO `fswy_article_keywords` VALUES (9, 9, 1);
INSERT INTO `fswy_article_keywords` VALUES (10, 10, 1);
INSERT INTO `fswy_article_keywords` VALUES (11, 11, 1);
INSERT INTO `fswy_article_keywords` VALUES (12, 12, 1);
COMMIT;

-- ----------------------------
-- Table structure for fswy_article_tags
-- ----------------------------
DROP TABLE IF EXISTS `fswy_article_tags`;
CREATE TABLE `fswy_article_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fswy_article_tags_article_id_tag_id_0e08da07_uniq` (`article_id`,`tag_id`),
  KEY `fswy_article_tags_tag_id_5d5dbc72_fk_fswy_tag_id` (`tag_id`),
  CONSTRAINT `fswy_article_tags_article_id_2892147f_fk_fswy_article_id` FOREIGN KEY (`article_id`) REFERENCES `fswy_article` (`id`),
  CONSTRAINT `fswy_article_tags_tag_id_5d5dbc72_fk_fswy_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `fswy_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fswy_article_tags
-- ----------------------------
BEGIN;
INSERT INTO `fswy_article_tags` VALUES (1, 1, 1);
INSERT INTO `fswy_article_tags` VALUES (6, 2, 1);
INSERT INTO `fswy_article_tags` VALUES (7, 7, 1);
INSERT INTO `fswy_article_tags` VALUES (8, 8, 1);
INSERT INTO `fswy_article_tags` VALUES (9, 9, 1);
INSERT INTO `fswy_article_tags` VALUES (10, 10, 1);
INSERT INTO `fswy_article_tags` VALUES (11, 11, 1);
INSERT INTO `fswy_article_tags` VALUES (12, 12, 1);
COMMIT;

-- ----------------------------
-- Table structure for fswy_bigcategory
-- ----------------------------
DROP TABLE IF EXISTS `fswy_bigcategory`;
CREATE TABLE `fswy_bigcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `keywords` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fswy_bigcategory
-- ----------------------------
BEGIN;
INSERT INTO `fswy_bigcategory` VALUES (1, '生活笔记', 'life', '生活笔记', '生活笔记');
INSERT INTO `fswy_bigcategory` VALUES (2, '技术杂谈', 'technique', '技术杂谈', '技术杂谈');
INSERT INTO `fswy_bigcategory` VALUES (3, '福利专区', 'resources', '福利专区', '福利专区');
INSERT INTO `fswy_bigcategory` VALUES (4, '关于自己', 'about', '关于自己', '关于自己');
INSERT INTO `fswy_bigcategory` VALUES (5, '给我留言', 'message', '给我留言', '给我留言');
INSERT INTO `fswy_bigcategory` VALUES (6, '赞助作者', 'donate', '赞助作者', '赞助作者');
INSERT INTO `fswy_bigcategory` VALUES (7, '技术交流', 'exchange', '技术交流', '技术交流');
INSERT INTO `fswy_bigcategory` VALUES (8, '提问交流', 'question', '提问交流', '提问交流');
INSERT INTO `fswy_bigcategory` VALUES (9, '项目合作', 'project', '项目合作', '项目合作');
COMMIT;

-- ----------------------------
-- Table structure for fswy_carousel
-- ----------------------------
DROP TABLE IF EXISTS `fswy_carousel`;
CREATE TABLE `fswy_carousel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(80) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fswy_carousel
-- ----------------------------
BEGIN;
INSERT INTO `fswy_carousel` VALUES (1, 6, 'Python爬虫学习系列教程', 'Python爬虫学习系列教程', '/static/images/right1.jpg', 'http://127.0.0.1:8080/article/123/');
INSERT INTO `fswy_carousel` VALUES (2, 7, '小白学爬虫系列教程', '小白学爬虫系列教程', '/static/images/right2.jpg', 'http://127.0.0.1:8080/article/123/');
INSERT INTO `fswy_carousel` VALUES (3, 1, '小白学爬虫系列教程', '小白学爬虫系列教程', '/static/images/docker.jpg', 'http://127.0.0.1:8080/article/123/');
INSERT INTO `fswy_carousel` VALUES (4, 2, '小白学爬虫系列教程', '小白学爬虫系列教程', '/static/images/python-django-logo.jpg', 'http://127.0.0.1:8080/article/123/');
INSERT INTO `fswy_carousel` VALUES (5, 3, '小白学爬虫系列教程', '小白学爬虫系列教程', '/static/images/bsblog.png', 'http://127.0.0.1:8080/article/123/');
INSERT INTO `fswy_carousel` VALUES (6, 4, '小白学爬虫系列教程', '小白学爬虫系列教程', '/static/images/right3.jpg', 'http://127.0.0.1:8080/article/123/');
INSERT INTO `fswy_carousel` VALUES (7, 5, '小白学爬虫系列教程', '小白学爬虫系列教程', '/static/images/right4.jpg', 'http://127.0.0.1:8080/article/123/');
COMMIT;

-- ----------------------------
-- Table structure for fswy_category
-- ----------------------------
DROP TABLE IF EXISTS `fswy_category`;
CREATE TABLE `fswy_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `bigcategory_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `fswy_category_bigcategory_id_a7028d48_fk_fswy_bigcategory_id` (`bigcategory_id`),
  CONSTRAINT `fswy_category_bigcategory_id_a7028d48_fk_fswy_bigcategory_id` FOREIGN KEY (`bigcategory_id`) REFERENCES `fswy_bigcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fswy_category
-- ----------------------------
BEGIN;
INSERT INTO `fswy_category` VALUES (1, '个人随笔', '个人随笔', 'fswy的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', 1);
INSERT INTO `fswy_category` VALUES (2, 'Django', 'Django', 'Django', 2);
INSERT INTO `fswy_category` VALUES (3, 'Git', 'Git', 'Git', 2);
INSERT INTO `fswy_category` VALUES (4, 'Python', 'Python', 'Python', 2);
INSERT INTO `fswy_category` VALUES (5, 'MySQL', 'MySQL', 'MySQL8.0', 2);
INSERT INTO `fswy_category` VALUES (6, 'Swift', 'Swift', 'Swift', 2);
INSERT INTO `fswy_category` VALUES (7, 'Objective-C', 'Objective-C', 'Objective-C', 2);
INSERT INTO `fswy_category` VALUES (8, 'C#', 'C#', 'C#', 2);
INSERT INTO `fswy_category` VALUES (9, 'HTML+CSS', 'HTML+CSS', 'HTML+CSS', 2);
INSERT INTO `fswy_category` VALUES (10, 'Java', 'Java', 'Java', 2);
INSERT INTO `fswy_category` VALUES (11, 'Golang', 'Golang', 'Golang', 2);
INSERT INTO `fswy_category` VALUES (12, '自动化测试', '自动化测试', '自动化测试', 2);
COMMIT;

-- ----------------------------
-- Table structure for fswy_friendlink
-- ----------------------------
DROP TABLE IF EXISTS `fswy_friendlink`;
CREATE TABLE `fswy_friendlink` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fswy_keyword
-- ----------------------------
DROP TABLE IF EXISTS `fswy_keyword`;
CREATE TABLE `fswy_keyword` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fswy_keyword
-- ----------------------------
BEGIN;
INSERT INTO `fswy_keyword` VALUES (1, 'python');
COMMIT;

-- ----------------------------
-- Table structure for fswy_tag
-- ----------------------------
DROP TABLE IF EXISTS `fswy_tag`;
CREATE TABLE `fswy_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fswy_tag
-- ----------------------------
BEGIN;
INSERT INTO `fswy_tag` VALUES (1, 'python', 'python', 'StormSha的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好');
COMMIT;

-- ----------------------------
-- Table structure for user_ouser
-- ----------------------------
DROP TABLE IF EXISTS `user_ouser`;
CREATE TABLE `user_ouser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `link` varchar(200) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_ouser
-- ----------------------------
BEGIN;
INSERT INTO `user_ouser` VALUES (1, 'pbkdf2_sha256$180000$Ahv8IKMd5Oke$NOa3jg1b6c009cvlLUYLNr7DZ4Jp57XJNNF+A97A8xA=', '2020-05-07 20:56:28.862028', 1, 'fswy', '', '', '420393969@qq.com', 1, 1, '2020-04-28 02:04:12.329835', '', 'avatar/default.png');
INSERT INTO `user_ouser` VALUES (2, 'pbkdf2_sha256$180000$uA0GZgn1CCsp$yEU0vtdNUiH9P3IkBHpJBhmZwo+BFaRlfiDfCiXKTT0=', '2020-05-07 20:55:09.765107', 0, 'xiatian', '', '', 'xgq950711@126.com', 0, 1, '2020-05-07 20:55:09.489549', '', 'avatar/default.png');
COMMIT;

-- ----------------------------
-- Table structure for user_ouser_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_ouser_groups`;
CREATE TABLE `user_ouser_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ouser_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_ouser_groups_ouser_id_group_id_03bce0cb_uniq` (`ouser_id`,`group_id`),
  KEY `user_ouser_groups_group_id_12001949_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_ouser_groups_group_id_12001949_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_ouser_groups_ouser_id_ad1b57d3_fk_user_ouser_id` FOREIGN KEY (`ouser_id`) REFERENCES `user_ouser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_ouser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_ouser_user_permissions`;
CREATE TABLE `user_ouser_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ouser_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_ouser_user_permissions_ouser_id_permission_id_ef5c908e_uniq` (`ouser_id`,`permission_id`),
  KEY `user_ouser_user_perm_permission_id_da78e996_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_ouser_user_perm_permission_id_da78e996_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_ouser_user_permissions_ouser_id_a820347f_fk_user_ouser_id` FOREIGN KEY (`ouser_id`) REFERENCES `user_ouser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
