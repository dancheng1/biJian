/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.20 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `sequence` varchar(50) NOT NULL DEFAULT '' COMMENT '序列',
  `employee_name` varchar(50) NOT NULL DEFAULT '' COMMENT '员工姓名',
  `employee_qtalk` varchar(50) NOT NULL DEFAULT '' COMMENT '员工qtalk',
  `employee_staff_id` varchar(50) NOT NULL DEFAULT '' COMMENT '员工工号',
  `second_sector` varchar(50) NOT NULL DEFAULT '' COMMENT '二级部门',
  `tl` varchar(50) NOT NULL DEFAULT '' COMMENT '员工TL',
  `tlqtalk` varchar(50) NOT NULL DEFAULT '' COMMENT '员工TL QTalk',
  `need_level` varchar(50) NOT NULL DEFAULT '' COMMENT '所需评委档次',
  `no_time` varchar(255) NOT NULL DEFAULT '' COMMENT '员工冲突时间',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='员工表';

/*Data for the table `employee` */

insert  into `employee`(`id`,`sequence`,`employee_name`,`employee_qtalk`,`employee_staff_id`,`second_sector`,`tl`,`tlqtalk`,`need_level`,`no_time`,`create_time`,`update_time`) values (1,'QA','50.0','a1','Q129883','国内机票','a1','b1','3,4,5','','2019-01-18 10:19:26','2019-01-18 10:19:26'),(2,'QA','51.0','a2','Q143761','国内机票','a2','b2','3,4,5','','2019-01-18 10:19:26','2019-01-18 10:19:26'),(3,'QA','52.0','a3','Q138474','战略技术部','a3','b3','3,4,5','','2019-01-18 10:19:26','2019-01-18 10:19:26'),(4,'QA','53.0','a4','Q129877','战略技术部','a4','b4','3,4,5','','2019-01-18 10:19:26','2019-01-18 10:19:26'),(5,'QA','54.0','a5','Q125358','旅行交通','a5','b5','3,4,5','','2019-01-18 10:19:26','2019-01-18 10:19:26');

/*Table structure for table `qjudges` */

DROP TABLE IF EXISTS `qjudges`;

CREATE TABLE `qjudges` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `judges_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评委姓名',
  `judges_qtalk` varchar(50) NOT NULL DEFAULT '' COMMENT '评委qtalk',
  `judges_staff_id` varchar(50) NOT NULL DEFAULT '' COMMENT '工号',
  `sequence` varchar(50) NOT NULL DEFAULT '' COMMENT '序列',
  `second_sector` varchar(50) NOT NULL DEFAULT '' COMMENT '评委二级部门',
  `no_time` varchar(50) NOT NULL DEFAULT '' COMMENT '评委冲突时间',
  `day_num` tinyint(4) NOT NULL DEFAULT '0' COMMENT '当日可评总场次',
  `total_num` tinyint(4) NOT NULL DEFAULT '0' COMMENT '可评总场次',
  `judge_level` varchar(50) NOT NULL DEFAULT '' COMMENT '档次',
  `own_sector_num` tinyint(4) NOT NULL DEFAULT '0' COMMENT '必须评本部门次数',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='评委表';

/*Data for the table `qjudges` */

insert  into `qjudges`(`id`,`judges_name`,`judges_qtalk`,`judges_staff_id`,`sequence`,`second_sector`,`no_time`,`day_num`,`total_num`,`judge_level`,`own_sector_num`,`create_time`,`update_time`) values (1,'一','d11','C15','QA','国际机票','',6,8,'3',-1,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(2,'而','d12','C16','QA','服务平台','',6,8,'4',-1,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(3,'三','d13','C17','QA','天巡项目组','',6,8,'5',-1,'2019-01-18 10:19:26','2019-01-18 10:19:26');

/*Table structure for table `result_row` */

DROP TABLE IF EXISTS `result_row`;

CREATE TABLE `result_row` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `sequence` varchar(50) NOT NULL DEFAULT '' COMMENT '序列',
  `place` varchar(50) NOT NULL DEFAULT '' COMMENT '地点',
  `present_date` date NOT NULL DEFAULT '1970-01-01' COMMENT '答辩日期',
  `present_time` varchar(50) NOT NULL DEFAULT '' COMMENT '答辩时间段',
  `present_name` varchar(50) NOT NULL DEFAULT '' COMMENT '答辩人姓名',
  `present_qtalk` varchar(50) NOT NULL DEFAULT '' COMMENT '答辩人qtalk',
  `present_staff_id` varchar(50) NOT NULL DEFAULT '' COMMENT '答辩人工号',
  `second_sector` varchar(50) NOT NULL DEFAULT '' COMMENT '答辩人二级部门',
  `present_tlname` varchar(50) NOT NULL DEFAULT '' COMMENT '答辩人TL姓名',
  `present_tlqtalk` varchar(50) NOT NULL DEFAULT '' COMMENT '答辩人TL Qtalk',
  `judges1_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评委1姓名',
  `judges1_qtalk` varchar(50) NOT NULL DEFAULT '' COMMENT '评委1qtalk',
  `judges2_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评委2姓名',
  `judges2_qtalk` varchar(50) NOT NULL DEFAULT '' COMMENT '评委2qtalk',
  `judges3_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评委3姓名',
  `judges3_qtalk` varchar(50) NOT NULL DEFAULT '' COMMENT '评委3qtalk',
  `judges4_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评委4姓名',
  `judges4_qtalk` varchar(50) NOT NULL DEFAULT '' COMMENT '评委4qtalk',
  `judges5_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评委5姓名',
  `judges5_qtalk` varchar(50) NOT NULL DEFAULT '' COMMENT '评委5qtalk',
  `version` varchar(50) NOT NULL DEFAULT '' COMMENT '版本',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1397 DEFAULT CHARSET=utf8mb4 COMMENT='结果表';

/*Data for the table `result_row` */

insert  into `result_row`(`id`,`sequence`,`place`,`present_date`,`present_time`,`present_name`,`present_qtalk`,`present_staff_id`,`second_sector`,`present_tlname`,`present_tlqtalk`,`judges1_name`,`judges1_qtalk`,`judges2_name`,`judges2_qtalk`,`judges3_name`,`judges3_qtalk`,`judges4_name`,`judges4_qtalk`,`judges5_name`,`judges5_qtalk`,`version`,`create_time`,`update_time`) values (360,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','lirong.liu','','','','','2019-01-17','2019-01-17 12:45:47','2019-01-17 12:53:51'),(363,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','llirong.liu','','','','','2019-01-17','2019-01-17 14:19:13','2019-01-17 14:21:22'),(364,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','llirong.liu','','','','','2019-01-17','2019-01-17 14:23:19','2019-01-17 14:23:49'),(365,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','llirong.liu','','','','','2019-01-17','2019-01-17 14:35:19','2019-01-17 14:35:32'),(391,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','llirong.liu','','','','','2019-01-17 15:40:50','2019-01-17 15:40:42','2019-01-17 15:40:50'),(404,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','llirong.liu','','','','','2019-01-17 16:51:50','2019-01-17 16:50:59','2019-01-17 16:51:50'),(405,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','llirong.liu','','','','','2019-01-17 17:06:30','2019-01-17 16:51:59','2019-01-17 17:06:30'),(431,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','llirong.liu','','','','','2019-01-17 17:12:45','2019-01-17 17:12:34','2019-01-17 17:12:45'),(446,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','llirong.liu','','','','','2019-01-17 17:21:20','2019-01-17 17:21:09','2019-01-17 17:21:20'),(447,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','llirong.liu','','','','','2019-01-17 17:23:02','2019-01-17 17:22:55','2019-01-17 17:23:02'),(448,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','llirong.liu','','','','','2019-01-17 17:23:26','2019-01-17 17:23:10','2019-01-17 17:23:26'),(450,'DEV','枫丹白露','2018-12-25','10:20-11:20','王帅','shuaiw.wang','Q164544','战略发展部','王帅','sihui.zhang','人塞隆','sailong.ren','夜宵风','xiaofeng.ye','琉璃荣','llirong.liu','','','','','2019-01-17 17:31:47','2019-01-17 17:31:21','2019-01-17 17:31:47'),(1298,'JAVA','枫丹白露','2018-12-25','10:20-11:20','55.0','a6','Q143503','旅行交通','a6','b6','朱仕智','d25','曲风富','d23','邱文明','d31','','','','','2019-01-18 17:31:47','2019-01-18 09:58:05','2019-01-18 10:00:16'),(1299,'JAVA','枫丹白露','2018-12-25','11:20-12:20','68.0','a19','Q129863','国际机票','a19','b19','朱仕智','d25','曲风富','d23','邱文明','d31','','','','','2019-01-18 17:31:50','2019-01-18 09:58:05','2019-01-18 10:01:23'),(1392,'QA','培一','2018-12-27','10:00-11:00','50.0','a1','Q129883','国内机票','a1','b1','一','d11','而','d12','三','d13','','','','','0','2019-01-18 10:19:27','2019-01-18 10:19:27'),(1393,'QA','培一','2018-12-27','11:00-12:00','54.0','a5','Q125358','旅行交通','a5','b5','一','d11','而','d12','三','d13','','','','','0','2019-01-18 10:19:27','2019-01-18 10:19:27'),(1394,'QA','培一','2018-12-27','14:00-15:00','53.0','a4','Q129877','战略技术部','a4','b4','一','d11','而','d12','三','d13','','','','','0','2019-01-18 10:19:27','2019-01-18 10:19:27'),(1395,'QA','培一','2018-12-27','15:00-16:00','51.0','a2','Q143761','国内机票','a2','b2','一','d11','而','d12','三','d13','','','','','0','2019-01-18 10:19:27','2019-01-18 10:19:27'),(1396,'QA','培一','2018-12-27','16:00-17:00','52.0','a3','Q138474','战略技术部','a3','b3','一','d11','而','d12','三','d13','','','','','0','2019-01-18 10:19:27','2019-01-18 10:19:27');

/*Table structure for table `scene` */

DROP TABLE IF EXISTS `scene`;

CREATE TABLE `scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `sequence` varchar(50) NOT NULL DEFAULT '' COMMENT '序列',
  `present_date` date NOT NULL DEFAULT '1970-01-01' COMMENT '答辩日期',
  `present_time` varchar(50) NOT NULL DEFAULT '' COMMENT '时间段',
  `place` varchar(50) NOT NULL DEFAULT '' COMMENT '地点',
  `flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已用，1已用，0未用',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_sequence_date_time_place` (`sequence`,`present_date`,`present_time`,`place`)
) ENGINE=InnoDB AUTO_INCREMENT=23977 DEFAULT CHARSET=utf8mb4 COMMENT='场景表';

/*Data for the table `scene` */

insert  into `scene`(`id`,`sequence`,`present_date`,`present_time`,`place`,`flag`,`create_time`,`update_time`) values (23869,'QA','2018-12-27','10:00-11:00','培一',0,'2019-01-18 10:19:26','2019-01-18 10:19:27'),(23870,'QA','2018-12-27','11:00-12:00','塞班岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23871,'JAVA','2018-12-25','11:20-12:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23872,'JAVA','2018-12-27','11:20-12:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23873,'JAVA','2018-12-28','11:20-12:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23874,'JAVA','2018-12-25','14:40-15:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23875,'JAVA','2018-12-26','14:40-15:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23876,'JAVA','2018-12-27','14:40-15:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23877,'JAVA','2018-12-28','14:40-15:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23878,'QA','2018-12-27','14:00-15:00','塞班岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23879,'DATA','2018-12-31','14:40-15:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23880,'QA','2018-12-27','17:00-18:00','塞班岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23881,'QA','2018-12-27','16:00-17:00','培一',0,'2019-01-18 10:19:26','2019-01-18 10:19:27'),(23882,'DATA','2018-12-31','17:20-18:00','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23883,'FE','2018-12-26','15:20-16:00','关岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23884,'JAVA','2018-12-27','15:20-16:00','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23885,'JAVA','2018-12-25','11:20-12:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23886,'JAVA','2018-12-28','15:20-16:00','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23887,'JAVA','2018-12-27','11:20-12:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23888,'JAVA','2018-12-27','17:20-18:00','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23889,'JAVA','2018-12-28','17:20-18:00','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23890,'JAVA','2018-12-25','15:20-16:00','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23891,'JAVA','2018-12-28','11:20-12:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23892,'JAVA','2018-12-26','15:20-16:00','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23893,'JAVA','2018-12-25','17:20-18:00','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23894,'JAVA','2018-12-26','17:20-18:00','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23895,'QA','2018-12-27','14:00-15:00','培一',0,'2019-01-18 10:19:26','2019-01-18 10:19:27'),(23896,'DATA','2018-12-31','15:20-16:00','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23897,'JAVA','2018-12-28','15:20-16:00','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23898,'JAVA','2018-12-25','15:20-16:00','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23899,'JAVA','2018-12-27','15:20-16:00','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23900,'JAVA','2018-12-26','15:20-16:00','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23901,'FE','2018-12-26','14:00-14:40','关岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23902,'QA','2018-12-27','11:00-12:00','培一',0,'2019-01-18 10:19:26','2019-01-18 10:19:27'),(23903,'DATA','2018-12-31','16:00-16:40','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23904,'JAVA','2018-12-25','15:20-16:00','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23905,'JAVA','2018-12-27','15:20-16:00','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23906,'JAVA','2018-12-28','15:20-16:00','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23907,'FE','2018-12-26','14:40-15:20','关岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23908,'JAVA','2018-12-26','14:00-14:40','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23909,'JAVA','2018-12-25','14:00-14:40','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23910,'JAVA','2018-12-28','16:00-16:40','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23911,'JAVA','2018-12-27','16:00-16:40','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23912,'JAVA','2018-12-26','16:00-16:40','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23913,'JAVA','2018-12-25','16:00-16:40','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23914,'QA','2018-12-27','15:00-16:00','培一',0,'2019-01-18 10:19:26','2019-01-18 10:19:27'),(23915,'DATA','2018-12-31','16:40-17:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23916,'JAVA','2018-12-27','14:00-14:40','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23917,'JAVA','2018-12-28','14:00-14:40','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23918,'JAVA','2018-12-25','14:40-15:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23919,'JAVA','2018-12-25','16:40-17:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23920,'JAVA','2018-12-27','14:40-15:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23921,'JAVA','2018-12-26','16:40-17:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23922,'JAVA','2018-12-27','16:40-17:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23923,'JAVA','2018-12-28','14:40-15:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23924,'JAVA','2018-12-28','16:40-17:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23925,'JAVA','2018-12-25','14:40-15:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23926,'JAVA','2018-12-26','14:40-15:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23927,'FE','2018-12-26','17:20-18:00','关岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23928,'JAVA','2018-12-27','14:40-15:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23929,'JAVA','2018-12-28','14:40-15:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23930,'JAVA','2018-12-27','17:20-18:00','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23931,'JAVA','2018-12-26','17:20-18:00','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23932,'JAVA','2018-12-28','17:20-18:00','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23933,'JAVA','2018-12-25','17:20-18:00','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23934,'JAVA','2018-12-28','14:00-14:40','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23935,'JAVA','2018-12-27','14:00-14:40','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23936,'JAVA','2018-12-25','14:00-14:40','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23937,'JAVA','2018-12-28','16:00-16:40','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23938,'JAVA','2018-12-27','16:00-16:40','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23939,'JAVA','2018-12-25','16:00-16:40','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23940,'QA','2018-12-27','10:00-11:00','塞班岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23941,'JAVA','2018-12-25','10:20-11:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23942,'JAVA','2018-12-27','10:20-11:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23943,'JAVA','2018-12-28','10:20-11:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23944,'QA','2018-12-27','15:00-16:00','塞班岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23945,'JAVA','2018-12-28','10:20-11:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23946,'JAVA','2018-12-25','10:20-11:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23947,'JAVA','2018-12-27','10:20-11:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23948,'JAVA','2018-12-27','16:40-17:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23949,'JAVA','2018-12-28','16:00-16:40','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23950,'JAVA','2018-12-28','16:40-17:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23951,'JAVA','2018-12-27','16:00-16:40','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23952,'JAVA','2018-12-25','16:00-16:40','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23953,'JAVA','2018-12-26','16:00-16:40','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23954,'JAVA','2018-12-25','16:40-17:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23955,'FE','2018-12-26','16:00-16:40','关岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23956,'QA','2018-12-27','17:00-18:00','培一',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23957,'JAVA','2018-12-28','10:20-11:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23958,'JAVA','2018-12-25','10:20-11:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23959,'JAVA','2018-12-27','10:20-11:20','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23960,'JAVA','2018-12-27','14:00-14:40','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23961,'JAVA','2018-12-25','14:00-14:40','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23962,'JAVA','2018-12-25','16:40-17:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23963,'JAVA','2018-12-26','14:00-14:40','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23964,'JAVA','2018-12-27','16:40-17:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23965,'JAVA','2018-12-26','16:40-17:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23966,'JAVA','2018-12-28','16:40-17:20','阿拉斯加',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23967,'JAVA','2018-12-28','14:00-14:40','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23968,'JAVA','2018-12-25','11:20-12:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23969,'FE','2018-12-26','16:40-17:20','关岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23970,'JAVA','2018-12-27','11:20-12:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23971,'JAVA','2018-12-27','17:20-18:00','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23972,'JAVA','2018-12-28','17:20-18:00','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23973,'DATA','2018-12-31','14:00-14:40','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23974,'JAVA','2018-12-28','11:20-12:20','枫丹白露',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23975,'JAVA','2018-12-25','17:20-18:00','洛根山',0,'2019-01-18 10:19:26','2019-01-18 10:19:26'),(23976,'QA','2018-12-27','16:00-17:00','塞班岛',0,'2019-01-18 10:19:26','2019-01-18 10:19:26');

/*Table structure for table `university` */

DROP TABLE IF EXISTS `university`;

CREATE TABLE `university` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT '""' COMMENT '大学名称',
  `picLink` varchar(255) DEFAULT '""' COMMENT '图片存储链接',
  `picClickLink` varchar(255) DEFAULT '""' COMMENT '点击图片跳转链接',
  `registrationTime` varchar(255) DEFAULT '""' COMMENT '报名时间',
  `registrationConditionLink` varchar(255) DEFAULT '""' COMMENT '报名条件链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `university` */

insert  into `university`(`id`,`name`,`picLink`,`picClickLink`,`registrationTime`,`registrationConditionLink`) values (1,'北京大学','http://www.baidu.com','http://www.baidu.com','\"\"','http://www.baidu.com'),(2,'南京大学','http://www.baidu.com','http://www.baidu.com','2019-1-2','http://www.baidu.com'),(3,'吉林大学','http://www.baidu.com','http://www.baidu.com','2019-03-04','http://www.baidu.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
