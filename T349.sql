/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t349`;
CREATE DATABASE IF NOT EXISTS `t349` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t349`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-03 06:47:06'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-03 06:47:06'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-03 06:47:06'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-03 06:47:06'),
	(5, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-03 06:47:06'),
	(6, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-03 06:47:06'),
	(7, 'saishi_types', '赛事类型', 1, '赛事类型1', NULL, NULL, '2023-04-03 06:47:06'),
	(8, 'saishi_types', '赛事类型', 2, '赛事类型2', NULL, NULL, '2023-04-03 06:47:06'),
	(9, 'saishi_types', '赛事类型', 3, '赛事类型3', NULL, NULL, '2023-04-03 06:47:06'),
	(10, 'saishi_types', '赛事类型', 4, '赛事类型4', NULL, NULL, '2023-04-03 06:47:06'),
	(11, 'saishi_yuyue_yesno_types', '报名状态', 1, '待审核', NULL, NULL, '2023-04-03 06:47:06'),
	(12, 'saishi_yuyue_yesno_types', '报名状态', 2, '同意', NULL, NULL, '2023-04-03 06:47:06'),
	(13, 'saishi_yuyue_yesno_types', '报名状态', 3, '拒绝', NULL, NULL, '2023-04-03 06:47:06'),
	(14, 'saishi_tijiao_yesno_types', '提交状态', 1, '待审批', NULL, NULL, '2023-04-03 06:47:06'),
	(15, 'saishi_tijiao_yesno_types', '提交状态', 2, '已审核', NULL, NULL, '2023-04-03 06:47:06'),
	(16, 'saishi_tijiao_yesno_types', '提交状态', 3, '未审核', NULL, NULL, '2023-04-03 06:47:06'),
	(17, 'huojiang_types', '获奖类型', 1, '获奖类型1', NULL, NULL, '2023-04-03 06:47:06'),
	(18, 'huojiang_types', '获奖类型', 2, '获奖类型2', NULL, NULL, '2023-04-03 06:47:06'),
	(19, 'huojiang_types', '获奖类型', 3, '获奖类型3', NULL, NULL, '2023-04-03 06:47:06'),
	(20, 'huojiang_types', '获奖类型', 4, '获奖类型4', NULL, NULL, '2023-04-03 06:47:06');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `laoshi_id` int DEFAULT NULL COMMENT '老师',
  `zhuanjia_id` int DEFAULT NULL COMMENT '专家',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `laoshi_id`, `zhuanjia_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, NULL, NULL, '发布内容1', 310, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(2, '帖子标题2', 2, NULL, NULL, NULL, '发布内容2', 344, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(3, '帖子标题3', 2, NULL, NULL, NULL, '发布内容3', 219, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(4, '帖子标题4', 2, NULL, NULL, NULL, '发布内容4', 248, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(5, '帖子标题5', 2, NULL, NULL, NULL, '发布内容5', 71, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(6, '帖子标题6', 1, NULL, NULL, NULL, '发布内容6', 47, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(7, '帖子标题7', 1, NULL, NULL, NULL, '发布内容7', 209, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(8, '帖子标题8', 2, NULL, NULL, NULL, '发布内容8', 479, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(9, '帖子标题9', 3, NULL, NULL, NULL, '发布内容9', 369, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(10, '帖子标题10', 3, NULL, NULL, NULL, '发布内容10', 279, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(11, '帖子标题11', 1, NULL, NULL, NULL, '发布内容11', 229, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(12, '帖子标题12', 1, NULL, NULL, NULL, '发布内容12', 124, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(13, '帖子标题13', 2, NULL, NULL, NULL, '发布内容13', 173, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(14, '帖子标题14', 1, NULL, NULL, NULL, '发布内容14', 469, 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(15, '帖子', 1, NULL, NULL, NULL, '<p>呀呀呀</p>', NULL, 1, '2023-04-03 07:39:51', NULL, '2023-04-03 07:39:51'),
	(16, '帖子', 1, NULL, NULL, NULL, '<p>呀呀呀</p>', NULL, 1, '2023-04-03 07:39:51', NULL, '2023-04-03 07:39:51'),
	(17, NULL, 1, NULL, NULL, NULL, '111', 12, 2, '2024-08-04 05:57:12', NULL, '2024-08-04 05:57:12');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='竞赛公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-04-03 06:47:29', '公告详情1', '2023-04-03 06:47:29'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-04-03 06:47:29', '公告详情2', '2023-04-03 06:47:29'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 2, '2023-04-03 06:47:29', '公告详情3', '2023-04-03 06:47:29'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-04-03 06:47:29', '公告详情4', '2023-04-03 06:47:29'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-04-03 06:47:29', '公告详情5', '2023-04-03 06:47:29'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 2, '2023-04-03 06:47:29', '公告详情6', '2023-04-03 06:47:29'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-04-03 06:47:29', '公告详情7', '2023-04-03 06:47:29'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-04-03 06:47:29', '公告详情8', '2023-04-03 06:47:29'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-04-03 06:47:29', '公告详情9', '2023-04-03 06:47:29'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-04-03 06:47:29', '公告详情10', '2023-04-03 06:47:29'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-04-03 06:47:29', '公告详情11', '2023-04-03 06:47:29'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-04-03 06:47:29', '公告详情12', '2023-04-03 06:47:29'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 2, '2023-04-03 06:47:29', '公告详情13', '2023-04-03 06:47:29'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-04-03 06:47:29', '公告详情14', '2023-04-03 06:47:29');

DROP TABLE IF EXISTS `huojiang`;
CREATE TABLE IF NOT EXISTS `huojiang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huojiang_name` varchar(200) DEFAULT NULL COMMENT '获奖名称  Search111 ',
  `huojiang_uuid_number` varchar(200) DEFAULT NULL COMMENT '获奖编号',
  `huojiang_photo` varchar(200) DEFAULT NULL COMMENT '获奖照片',
  `huojiang_types` int DEFAULT NULL COMMENT '获奖类型 Search111',
  `huojiang_xues` int DEFAULT NULL COMMENT '学生排名',
  `huojiang_content` longtext COMMENT '获奖介绍 ',
  `huojiang_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='获奖';

DELETE FROM `huojiang`;
INSERT INTO `huojiang` (`id`, `huojiang_name`, `huojiang_uuid_number`, `huojiang_photo`, `huojiang_types`, `huojiang_xues`, `huojiang_content`, `huojiang_delete`, `insert_time`, `create_time`) VALUES
	(1, '获奖名称1', '1680504449977', 'upload/huojiang1.jpg', 3, 396, '获奖介绍1', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(2, '获奖名称2', '1680504449931', 'upload/huojiang2.jpg', 4, 229, '获奖介绍2', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(3, '获奖名称3', '1680504450004', 'upload/huojiang3.jpg', 2, 346, '获奖介绍3', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(4, '获奖名称4', '1680504450005', 'upload/huojiang4.jpg', 4, 78, '获奖介绍4', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(5, '获奖名称5', '1680504449970', 'upload/huojiang5.jpg', 4, 45, '获奖介绍5', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(6, '获奖名称6', '1680504449938', 'upload/huojiang6.jpg', 3, 380, '获奖介绍6', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(7, '获奖名称7', '1680504449948', 'upload/huojiang7.jpg', 3, 35, '获奖介绍7', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(8, '获奖名称8', '1680504449926', 'upload/huojiang8.jpg', 2, 471, '获奖介绍8', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(9, '获奖名称9', '1680504449936', 'upload/huojiang9.jpg', 1, 246, '获奖介绍9', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(10, '获奖名称10', '1680504449990', 'upload/huojiang10.jpg', 1, 155, '获奖介绍10', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(11, '获奖名称11', '1680504449953', 'upload/huojiang11.jpg', 4, 277, '获奖介绍11', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(12, '获奖名称12', '1680504449986', 'upload/huojiang12.jpg', 3, 121, '获奖介绍12', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(13, '获奖名称13', '1680504449988', 'upload/huojiang13.jpg', 2, 341, '获奖介绍13', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(14, '获奖名称14', '1680504449914', 'upload/huojiang14.jpg', 4, 138, '获奖介绍14', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29');

DROP TABLE IF EXISTS `laoshi`;
CREATE TABLE IF NOT EXISTS `laoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='老师';

DELETE FROM `laoshi`;
INSERT INTO `laoshi` (`id`, `username`, `password`, `laoshi_name`, `laoshi_phone`, `laoshi_id_number`, `laoshi_photo`, `sex_types`, `laoshi_email`, `create_time`) VALUES
	(1, '老师1', '123456', '老师姓名1', '17703786901', '410224199010102001', 'upload/laoshi1.jpg', 2, '1@qq.com', '2023-04-03 06:47:29'),
	(2, '老师2', '123456', '老师姓名2', '17703786902', '410224199010102002', 'upload/laoshi2.jpg', 1, '2@qq.com', '2023-04-03 06:47:29'),
	(3, '老师3', '123456', '老师姓名3', '17703786903', '410224199010102003', 'upload/laoshi3.jpg', 1, '3@qq.com', '2023-04-03 06:47:29');

DROP TABLE IF EXISTS `pingshen`;
CREATE TABLE IF NOT EXISTS `pingshen` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pingshen_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `saishi_tijiao_id` int DEFAULT NULL COMMENT '赛事提交',
  `laoshi_id` int DEFAULT NULL COMMENT '老师',
  `pingshen_file` varchar(200) DEFAULT NULL COMMENT '参赛作品',
  `pingshen_zhidao` varchar(200) DEFAULT NULL COMMENT '指导老师',
  `pingshen_text` text COMMENT '内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '赛事提交时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='评审';

DELETE FROM `pingshen`;
INSERT INTO `pingshen` (`id`, `pingshen_uuid_number`, `saishi_tijiao_id`, `laoshi_id`, `pingshen_file`, `pingshen_zhidao`, `pingshen_text`, `insert_time`, `create_time`) VALUES
	(1, '1680504449985', 1, 2, 'upload/file.rar', '指导老师1', '内容1', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(2, '1680504449989', 2, 2, 'upload/file.rar', '指导老师2', '内容2', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(3, '1680504449993', 3, 3, 'upload/file.rar', '指导老师3', '内容3', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(4, '1680504449936', 4, 2, 'upload/file.rar', '指导老师4', '内容4', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(5, '1680504449938', 5, 1, 'upload/file.rar', '指导老师5', '内容5', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(6, '1680504449971', 6, 1, 'upload/file.rar', '指导老师6', '内容6', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(7, '1680504449917', 7, 2, 'upload/file.rar', '指导老师7', '内容7', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(8, '1680504450008', 8, 3, 'upload/file.rar', '指导老师8', '内容8', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(9, '1680504449920', 9, 2, 'upload/file.rar', '指导老师9', '内容9', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(10, '1680504450005', 10, 1, 'upload/file.rar', '指导老师10', '内容10', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(11, '1680504450002', 11, 3, 'upload/file.rar', '指导老师11', '内容11', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(12, '1680504449915', 12, 3, 'upload/file.rar', '指导老师12', '内容12', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(13, '1680504449917', 13, 1, 'upload/file.rar', '指导老师13', '内容13', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(14, '1680504449944', 14, 2, 'upload/file.rar', '指导老师14', '内容14', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(16, '1680506809391', 16, 1, '/upload/1680506814510.jpg', '465465', '26222222', '2023-04-03 07:27:00', '2023-04-03 07:27:00'),
	(17, '1680507688761', 17, 1, '/upload/1680507698075.jpg', '李老师', '亚少一点阿萨德 ', '2023-04-03 07:41:42', '2023-04-03 07:41:42');

DROP TABLE IF EXISTS `pingshen_fenpei`;
CREATE TABLE IF NOT EXISTS `pingshen_fenpei` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pingshen_fenpei_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `pingshen_id` int DEFAULT NULL COMMENT '评审',
  `zhuanjia_id` int DEFAULT NULL COMMENT '专家',
  `pingshen_fenpei_text` text COMMENT '内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '分配时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='评审分配';

DELETE FROM `pingshen_fenpei`;
INSERT INTO `pingshen_fenpei` (`id`, `pingshen_fenpei_uuid_number`, `pingshen_id`, `zhuanjia_id`, `pingshen_fenpei_text`, `insert_time`, `create_time`) VALUES
	(1, '1680504449923', 1, 2, '内容1', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(2, '1680504449962', 2, 3, '内容2', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(3, '1680504449950', 3, 1, '内容3', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(4, '1680504449967', 4, 1, '内容4', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(5, '1680504449958', 5, 3, '内容5', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(6, '1680504449954', 6, 2, '内容6', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(7, '1680504450012', 7, 1, '内容7', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(8, '1680504449947', 8, 2, '内容8', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(9, '1680504449996', 9, 3, '内容9', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(10, '1680504449982', 10, 3, '内容10', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(11, '1680504449967', 11, 3, '内容11', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(12, '1680504449973', 12, 2, '内容12', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(13, '1680504450014', 13, 3, '内容13', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(14, '1680504449981', 14, 2, '内容14', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(16, '1680506935461', 16, 1, '3333333', '2023-04-03 07:29:03', '2023-04-03 07:29:03'),
	(17, '1680507741381', 17, 1, '专家评分', '2023-04-03 07:42:30', '2023-04-03 07:42:30');

DROP TABLE IF EXISTS `pingshen_pingfen`;
CREATE TABLE IF NOT EXISTS `pingshen_pingfen` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pingshen_pingfen_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `pingshen_fenpei_id` int DEFAULT NULL COMMENT '评审分配',
  `zhuanjia_id` int DEFAULT NULL COMMENT '专家',
  `pingshen_pingfen_pingfen` int DEFAULT NULL COMMENT '打分',
  `pingshen_pingfen_text` text COMMENT '内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '分配时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='评审打分';

DELETE FROM `pingshen_pingfen`;
INSERT INTO `pingshen_pingfen` (`id`, `pingshen_pingfen_uuid_number`, `pingshen_fenpei_id`, `zhuanjia_id`, `pingshen_pingfen_pingfen`, `pingshen_pingfen_text`, `insert_time`, `create_time`) VALUES
	(1, '1680504449955', 1, 2, 93, '内容1', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(2, '1680504449976', 2, 3, 139, '内容2', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(3, '1680504449945', 3, 1, 57, '内容3', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(4, '1680504449963', 4, 1, 445, '内容4', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(5, '1680504449953', 5, 3, 196, '内容5', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(6, '1680504449969', 6, 2, 265, '内容6', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(7, '1680504449937', 7, 2, 379, '内容7', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(8, '1680504449949', 8, 1, 219, '内容8', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(9, '1680504449981', 9, 2, 405, '内容9', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(10, '1680504449997', 10, 3, 236, '内容10', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(11, '1680504450000', 11, 2, 380, '内容11', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(12, '1680504449988', 12, 1, 8, '内容12', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(13, '1680504450009', 13, 1, 468, '内容13', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(14, '1680504450012', 14, 3, 236, '内容14', '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(15, '1680507375519', 16, 1, 60, '880', '2023-04-03 07:36:23', '2023-04-03 07:36:23'),
	(16, '1680507818278', 17, 1, 80, '不错', '2023-04-03 07:43:45', '2023-04-03 07:43:45');

DROP TABLE IF EXISTS `saishi`;
CREATE TABLE IF NOT EXISTS `saishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `saishi_name` varchar(200) DEFAULT NULL COMMENT '赛事名称  Search111 ',
  `saishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '赛事编号',
  `saishi_photo` varchar(200) DEFAULT NULL COMMENT '赛事照片',
  `saishi_address` varchar(200) DEFAULT NULL COMMENT '赛事地点',
  `saishi_types` int DEFAULT NULL COMMENT '赛事类型 Search111',
  `saishi_content` longtext COMMENT '赛事介绍 ',
  `saishi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='赛事';

DELETE FROM `saishi`;
INSERT INTO `saishi` (`id`, `saishi_name`, `saishi_uuid_number`, `saishi_photo`, `saishi_address`, `saishi_types`, `saishi_content`, `saishi_delete`, `insert_time`, `create_time`) VALUES
	(1, '赛事名称1', '1680504449994', 'upload/saishi1.jpg', '赛事地点1', 1, '赛事介绍1', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(2, '赛事名称2', '1680504449991', 'upload/saishi2.jpg', '赛事地点2', 1, '赛事介绍2', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(3, '赛事名称3', '1680504449978', 'upload/saishi3.jpg', '赛事地点3', 4, '赛事介绍3', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(4, '赛事名称4', '1680504449967', 'upload/saishi4.jpg', '赛事地点4', 4, '赛事介绍4', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(5, '赛事名称5', '1680504449954', 'upload/saishi5.jpg', '赛事地点5', 4, '赛事介绍5', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(6, '赛事名称6', '1680504449958', 'upload/saishi6.jpg', '赛事地点6', 2, '赛事介绍6', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(7, '赛事名称7', '1680504449952', 'upload/saishi7.jpg', '赛事地点7', 3, '赛事介绍7', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(8, '赛事名称8', '1680504449999', 'upload/saishi8.jpg', '赛事地点8', 4, '赛事介绍8', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(9, '赛事名称9', '1680504449945', 'upload/saishi9.jpg', '赛事地点9', 2, '赛事介绍9', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(10, '赛事名称10', '1680504449943', 'upload/saishi10.jpg', '赛事地点10', 3, '赛事介绍10', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(11, '赛事名称11', '1680504449993', 'upload/saishi11.jpg', '赛事地点11', 2, '赛事介绍11', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(12, '赛事名称12', '1680504449972', 'upload/saishi12.jpg', '赛事地点12', 1, '赛事介绍12', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(13, '赛事名称13', '1680504450015', 'upload/saishi13.jpg', '赛事地点13', 2, '赛事介绍13', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(14, '赛事名称14', '1680504449946', 'upload/saishi14.jpg', '赛事地点14', 3, '赛事介绍14', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29');

DROP TABLE IF EXISTS `saishi_tijiao`;
CREATE TABLE IF NOT EXISTS `saishi_tijiao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `saishi_tijiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `saishi_id` int DEFAULT NULL COMMENT '赛事',
  `laoshi_id` int DEFAULT NULL COMMENT '老师',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `saishi_tijiao_text` text COMMENT '内容',
  `saishi_shangchuan_file` varchar(200) DEFAULT NULL COMMENT '赛事作品',
  `saishi_tijiao_yesno_types` int DEFAULT NULL COMMENT '提交状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '赛事提交时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='赛事提交';

DELETE FROM `saishi_tijiao`;
INSERT INTO `saishi_tijiao` (`id`, `saishi_tijiao_uuid_number`, `saishi_id`, `laoshi_id`, `yonghu_id`, `saishi_tijiao_text`, `saishi_shangchuan_file`, `saishi_tijiao_yesno_types`, `insert_time`, `create_time`) VALUES
	(1, '1680504449928', 1, 2, 2, '内容1', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(2, '1680504449928', 2, 3, 2, '内容2', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(3, '1680504449980', 3, 1, 1, '内容3', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(4, '1680504449978', 4, 2, 2, '内容4', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(5, '1680504450010', 5, 2, 3, '内容5', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(6, '1680504449947', 6, 1, 3, '内容6', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(7, '1680504449989', 7, 1, 1, '内容7', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(8, '1680504450018', 8, 2, 3, '内容8', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(9, '1680504449985', 9, 1, 1, '内容9', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(10, '1680504449980', 10, 2, 2, '内容10', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(11, '1680504449948', 11, 1, 3, '内容11', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(12, '1680504449964', 12, 2, 3, '内容12', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(13, '1680504449925', 13, 2, 3, '内容13', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(14, '1680504449961', 14, 2, 2, '内容14', 'upload/file.rar', 1, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(16, '1680505183963', 13, 1, 1, 'sad阿萨德撒大萨达阿萨德', 'upload/1680505193055.jpg', 2, '2023-04-03 06:59:54', '2023-04-03 06:59:54'),
	(17, '1680507650696', 13, 1, 1, '参赛作品', 'upload/1680507670124.jpg', 2, '2023-04-03 07:41:11', '2023-04-03 07:41:11');

DROP TABLE IF EXISTS `saishi_yuyue`;
CREATE TABLE IF NOT EXISTS `saishi_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `saishi_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `saishi_id` int DEFAULT NULL COMMENT '赛事',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `laoshi_id` int DEFAULT NULL COMMENT '老师',
  `saishi_yuyue_text` longtext COMMENT '报名理由',
  `saishi_yuyue_yesno_types` int DEFAULT NULL COMMENT '报名状态 Search111 ',
  `saishi_yuyue_yesno_text` longtext COMMENT '审核回复',
  `saishi_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '赛事报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='赛事报名';

DELETE FROM `saishi_yuyue`;
INSERT INTO `saishi_yuyue` (`id`, `saishi_yuyue_uuid_number`, `saishi_id`, `yonghu_id`, `laoshi_id`, `saishi_yuyue_text`, `saishi_yuyue_yesno_types`, `saishi_yuyue_yesno_text`, `saishi_yuyue_shenhe_time`, `insert_time`, `create_time`) VALUES
	(1, '1680504449934', 1, 2, 2, '报名理由1', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(2, '1680504449937', 2, 2, 1, '报名理由2', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(3, '1680504449955', 3, 1, 1, '报名理由3', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(4, '1680504449973', 4, 3, 1, '报名理由4', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(5, '1680504449951', 5, 1, 3, '报名理由5', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(6, '1680504449959', 6, 1, 2, '报名理由6', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(7, '1680504450011', 7, 3, 3, '报名理由7', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(8, '1680504449940', 8, 2, 2, '报名理由8', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(9, '1680504449951', 9, 2, 3, '报名理由9', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(10, '1680504449990', 10, 3, 1, '报名理由10', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(11, '1680504450014', 11, 3, 3, '报名理由11', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(12, '1680504449935', 12, 1, 3, '报名理由12', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(13, '1680504449954', 13, 3, 1, '报名理由13', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(14, '1680504449987', 14, 2, 1, '报名理由14', 1, NULL, NULL, '2023-04-03 06:47:29', '2023-04-03 06:47:29'),
	(15, '1680505112840', 14, 1, 1, 'sadsad手打sadsad阿萨德打算', 2, '同意', '2023-04-03 06:58:57', '2023-04-03 06:58:41', '2023-04-03 06:58:41'),
	(16, '1680507612217', 13, 1, 1, '我要报名', 2, '好的接', '2023-04-03 07:40:40', '2023-04-03 07:40:19', '2023-04-03 07:40:19');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'kp4anys2c83qknujvz1h9llqnu2k8uwi', '2023-04-03 06:48:59', '2024-08-04 06:55:25'),
	(2, 1, 'a1', 'laoshi', '老师', 'r0r1u98an46eb68qo951g7aekfgzut4k', '2023-04-03 06:52:56', '2023-04-03 08:40:30'),
	(3, 1, 'a1', 'yonghu', '用户', 'lj4k8d5e6m1ourwu1qv3kbjtg88xmqbh', '2023-04-03 06:53:48', '2024-08-04 06:57:03'),
	(4, 1, 'a1', 'zhuanjia', '专家', 'ekrvqo24fcsef8sagsdqxg1yglupja11', '2023-04-03 07:08:54', '2024-08-04 06:56:51');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-03 06:47:06');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', '2023-04-03 06:47:29'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', '2023-04-03 06:47:29'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', '2023-04-03 06:47:29');

DROP TABLE IF EXISTS `zhuanjia`;
CREATE TABLE IF NOT EXISTS `zhuanjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhuanjia_name` varchar(200) DEFAULT NULL COMMENT '专家姓名 Search111 ',
  `zhuanjia_phone` varchar(200) DEFAULT NULL COMMENT '专家手机号',
  `zhuanjia_id_number` varchar(200) DEFAULT NULL COMMENT '专家身份证号',
  `zhuanjia_photo` varchar(200) DEFAULT NULL COMMENT '专家头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `zhuanjia_email` varchar(200) DEFAULT NULL COMMENT '专家邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='专家';

DELETE FROM `zhuanjia`;
INSERT INTO `zhuanjia` (`id`, `username`, `password`, `zhuanjia_name`, `zhuanjia_phone`, `zhuanjia_id_number`, `zhuanjia_photo`, `sex_types`, `zhuanjia_email`, `create_time`) VALUES
	(1, '专家1', '123456', '专家姓名1', '17703786901', '410224199010102001', 'upload/zhuanjia1.jpg', 1, '1@qq.com', '2023-04-03 06:47:29'),
	(2, '专家2', '123456', '专家姓名2', '17703786902', '410224199010102002', 'upload/zhuanjia2.jpg', 2, '2@qq.com', '2023-04-03 06:47:29'),
	(3, '专家3', '123456', '专家姓名3', '17703786903', '410224199010102003', 'upload/zhuanjia3.jpg', 2, '3@qq.com', '2023-04-03 06:47:29');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
