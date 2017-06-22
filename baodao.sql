/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.0.22-community-nt : Database - baodao_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`baodao_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `baodao_db`;

/*Table structure for table `t_all` */

DROP TABLE IF EXISTS `t_all`;

CREATE TABLE `t_all` (
  `id` int(3) NOT NULL auto_increment,
  `depart` varchar(30) default NULL COMMENT '部门或学院或专业',
  `parentid` int(3) default NULL,
  `number` int(5) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_all` */

insert  into `t_all`(`id`,`depart`,`parentid`,`number`) values (1,'教务处',0,10),(2,'校医院',0,20),(3,'财务部',0,10),(4,'餐饮部',0,10),(5,'公寓管理部',0,50),(6,'师范学院',0,500),(7,'信息工程学院',0,580),(8,'机械与材料工程学院',0,160),(9,'外国语学院',0,160),(10,'政治学院',0,120),(11,'人文学院',0,360),(12,'经济管理学院',0,170),(13,'艺术学院',0,320),(14,'生物技术与环境学院',0,280),(15,'化学工程学院',0,160),(16,'学前教育',6,150),(17,'小学教育',6,200),(18,'体育教育',6,150),(19,'软件工程',7,150),(20,'计算机科学与技术',7,150),(21,'应用数学',7,120),(22,'电子商务',7,40),(23,'物联网工程',7,40),(24,'电子信息科学与技术',7,80),(25,'机械制造及其自动化',8,120),(26,'材料工程',8,40),(27,'英语',9,120),(28,'日语',9,40),(29,'化学',15,40),(30,'应用化学',15,40),(31,'化学工程与工艺',15,80),(32,'视觉传达艺术',13,40),(33,'数字媒体艺术',13,40),(34,'美术学',13,40),(35,'音乐学',13,80),(36,'音乐表演',13,40),(37,'公共艺术',13,40),(38,'戏剧影视文学',13,40),(39,'思想政治教育',10,40),(40,'应用心理学',10,80),(41,'汉语言文学',11,160),(42,'汉语国际教育',11,40),(43,'秘书学',11,40),(44,'历史学',11,80),(45,'广告学',11,40),(46,'生物科学',14,120),(47,'地理科学',14,80),(48,'园艺',14,40),(49,'环境生态工程',14,40),(50,'会计学',12,120),(51,'旅游管理',12,80),(52,'市场营销',12,40),(53,'公共事业管理',12,40),(54,'经济与金融',12,80),(55,'管理部门',0,2);

/*Table structure for table `t_banji` */

DROP TABLE IF EXISTS `t_banji`;

CREATE TABLE `t_banji` (
  `id` int(3) NOT NULL auto_increment,
  `bianhao` varchar(20) default NULL,
  `xueyuan` int(30) default NULL,
  `zhuanye` int(30) default NULL,
  `deletestatus` int(11) default '0',
  `renshu` int(2) NOT NULL,
  `yiyou` int(11) NOT NULL,
  `shengyu` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `xueyuan` (`xueyuan`),
  KEY `zhuanye` (`zhuanye`),
  CONSTRAINT `t_banji_ibfk_1` FOREIGN KEY (`xueyuan`) REFERENCES `t_all` (`id`),
  CONSTRAINT `t_banji_ibfk_2` FOREIGN KEY (`zhuanye`) REFERENCES `t_all` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_banji` */

insert  into `t_banji`(`id`,`bianhao`,`xueyuan`,`zhuanye`,`deletestatus`,`renshu`,`yiyou`,`shengyu`) values (1,'1302',7,19,0,40,6,34),(2,'1301',7,19,0,40,0,40),(3,'1303',7,19,0,40,0,40),(4,'1302',7,20,0,40,3,37),(5,'1301',7,20,0,40,0,40),(6,'1303',7,20,0,40,0,40),(7,'1301',7,21,0,40,2,38),(8,'1302',7,21,0,40,0,40),(9,'1301',9,28,0,40,2,38),(10,'1301',9,27,0,40,6,34),(11,'1301',7,22,1,40,0,40),(12,'1301',7,23,0,40,0,40),(13,'1301',7,22,0,40,2,38),(14,'1301',7,23,1,40,0,40),(15,'1301',7,19,1,40,0,40),(16,'1301',7,23,1,40,0,40),(17,'1301',7,23,1,40,0,40),(18,'1301',6,16,0,30,0,30),(19,'1301',7,24,0,40,1,39),(20,'1301',6,17,0,40,0,40);

/*Table structure for table `t_dangan` */

DROP TABLE IF EXISTS `t_dangan`;

CREATE TABLE `t_dangan` (
  `id` int(11) NOT NULL auto_increment,
  `ctime` varchar(255) default NULL,
  `deletestatus` int(11) NOT NULL,
  `path` varchar(255) default NULL,
  `studentid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK2D0C53EEFB495F3F` (`studentid`),
  CONSTRAINT `FK2D0C53EEFB495F3F` FOREIGN KEY (`studentid`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_dangan` */

insert  into `t_dangan`(`id`,`ctime`,`deletestatus`,`path`,`studentid`) values (1,'2017-04-12 15:56:01',1,'20170412155601.jpg',1),(2,'2017-04-15 14:23:29',1,'20170415142329.jpg',2),(3,'2017-04-24 04:57:13',1,'20170424045713.jpg',14),(4,'2017-04-24 04:57:31',1,'20170424045731.jpg',12),(5,'2017-05-04 12:29:22',0,'20170504122922.jpg',10),(6,'2017-05-04 12:30:36',0,'20170504123036.jpg',27),(7,'2017-05-07 00:53:31',0,'20170507005331.jpg',16);

/*Table structure for table `t_fenban` */

DROP TABLE IF EXISTS `t_fenban`;

CREATE TABLE `t_fenban` (
  `id` int(11) NOT NULL auto_increment,
  `ctime` varchar(255) default NULL,
  `deletestatus` int(2) default '0',
  `stuid` int(11) default NULL,
  `banjiid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `t_fenban_ibfk_1` (`stuid`),
  KEY `FK6749644B65DC98A5` (`banjiid`),
  CONSTRAINT `FK6749644B65DC98A5` FOREIGN KEY (`banjiid`) REFERENCES `t_banji` (`id`),
  CONSTRAINT `t_fenban_ibfk_1` FOREIGN KEY (`stuid`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_fenban` */

insert  into `t_fenban`(`id`,`ctime`,`deletestatus`,`stuid`,`banjiid`) values (1,'2017-04-12 16:11:32',1,1,1),(2,'2017-04-12 16:20:48',1,2,1),(3,'2017-04-12 23:07:21',1,3,1),(4,'2017-04-13 09:40:53',1,4,1),(5,'2017-04-17 11:44:48',1,5,1),(6,'2017-04-19 16:41:37',0,8,9),(7,'2017-04-20 23:54:39',1,11,7),(8,'2017-04-20 23:54:47',0,10,10),(9,'2017-04-20 23:54:52',1,9,4),(10,'2017-04-20 23:54:58',0,7,10),(11,'2017-04-22 22:24:50',1,12,4),(12,'2017-04-24 02:02:01',1,13,9),(13,'2017-04-24 02:04:26',0,6,10),(14,'2017-04-24 02:10:47',1,14,7),(15,'2017-05-02 21:54:59',0,16,1),(16,'2017-05-02 21:58:49',0,17,4),(17,'2017-05-03 00:23:06',1,20,1),(18,'2017-05-03 00:48:10',1,18,1),(19,'2017-05-03 00:48:18',1,21,1),(20,'2017-05-03 23:23:03',0,26,10),(21,'2017-05-03 23:23:08',0,19,10),(22,'2017-05-04 11:19:01',0,25,13),(23,'2017-05-04 11:19:11',0,23,4),(24,'2017-05-04 11:19:23',0,22,13),(25,'2017-05-07 00:48:03',0,24,19),(26,'2017-05-10 14:25:49',0,28,10);

/*Table structure for table `t_jiaofei` */

DROP TABLE IF EXISTS `t_jiaofei`;

CREATE TABLE `t_jiaofei` (
  `id` int(11) NOT NULL auto_increment,
  `ctime` varchar(255) default NULL,
  `deletestatus` int(11) NOT NULL,
  `path` varchar(255) default NULL,
  `total` int(11) NOT NULL,
  `xuefen` int(11) NOT NULL,
  `zafei` int(11) NOT NULL,
  `zhusu` int(11) NOT NULL,
  `studentid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKBED6D5D2FB495F3F` (`studentid`),
  CONSTRAINT `FKBED6D5D2FB495F3F` FOREIGN KEY (`studentid`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_jiaofei` */

insert  into `t_jiaofei`(`id`,`ctime`,`deletestatus`,`path`,`total`,`xuefen`,`zafei`,`zhusu`,`studentid`) values (1,'2017-04-11 19:26:15',1,'20170411192615.jpg',6500,5000,1000,500,1),(2,'2017-04-12 16:27:08',1,'20170412162708.jpg',6500,5000,1000,500,2),(3,'2017-04-15 13:47:29',1,'20170415134729.jpg',6500,5000,1000,500,3),(4,'2017-04-19 16:26:43',1,'20170419162643.jpg',6500,5000,1000,500,9),(5,'2017-04-19 16:29:15',0,'20170419162915.jpg',6500,5000,1000,500,8),(6,'2017-04-19 18:29:43',0,'20170419182943.jpg',6500,5000,1000,500,6),(7,'2017-04-24 02:42:55',1,'20170424024255.jpg',6500,5000,1000,500,14),(8,'2017-04-24 02:53:26',1,'20170424025326.jpg',6500,5000,1000,500,13),(9,'2017-04-24 04:14:29',1,'20170424041429.jpg',6500,5000,1000,500,12),(10,'2017-04-24 05:18:42',0,'20170424051842.jpg',6500,5000,1000,500,15),(11,'2017-05-03 23:52:47',0,'20170503235247.jpg',6500,5000,1000,500,26),(12,'2017-05-03 23:52:59',0,'20170503235259.jpg',6500,5000,1000,500,25),(13,'2017-05-03 23:53:11',0,'20170503235311.jpg',6500,5000,1000,500,24),(14,'2017-05-03 23:53:21',0,'20170503235321.jpg',6500,5000,1000,500,23),(15,'2017-05-03 23:53:31',0,'20170503235331.jpg',6500,5000,1000,500,22),(16,'2017-05-04 12:27:48',0,'20170504122748.jpg',6500,5000,1000,500,10),(17,'2017-05-07 00:48:54',0,'20170507004854.jpg',6500,5000,1000,500,53);

/*Table structure for table `t_student` */

DROP TABLE IF EXISTS `t_student`;

CREATE TABLE `t_student` (
  `id` int(11) NOT NULL auto_increment,
  `xuehao` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `password` varchar(20) NOT NULL default '',
  `deletestatus` int(11) NOT NULL,
  `sex` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `sfz` varchar(255) default NULL,
  `zzmm` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `minzu` varchar(255) default NULL,
  `photo` varchar(255) default NULL,
  `xueyuan` int(255) default NULL,
  `zhuanye` int(255) default NULL,
  `banji` int(11) NOT NULL,
  `sushe` int(11) NOT NULL,
  `jiaofei` int(11) NOT NULL,
  `tijian` int(11) NOT NULL,
  `dangan` int(11) NOT NULL,
  `ykt` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `xueyuan` (`xueyuan`),
  KEY `zhuanye` (`zhuanye`),
  CONSTRAINT `t_student_ibfk_1` FOREIGN KEY (`xueyuan`) REFERENCES `t_all` (`id`),
  CONSTRAINT `t_student_ibfk_2` FOREIGN KEY (`zhuanye`) REFERENCES `t_all` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_student` */

insert  into `t_student`(`id`,`xuehao`,`name`,`password`,`deletestatus`,`sex`,`tel`,`sfz`,`zzmm`,`address`,`minzu`,`photo`,`xueyuan`,`zhuanye`,`banji`,`sushe`,`jiaofei`,`tijian`,`dangan`,`ykt`) values (1,'000001','Daisy','329431',1,'女','11111','610422199310032943','团员','qq','汉族','20170413093750.jpg',7,19,1,1,1,0,1,0),(2,'000002','王春','211943',1,'女','1666','610422199612211943','其他','西安','汉族','20170418172732.jpg',7,19,1,1,1,1,1,1),(3,'000003','杨婷','301320',1,'女','11111','610423199409301320','团员','陕西','汉族','20170412230713.jpg',7,19,1,1,1,0,0,0),(4,'000004','张希','092345',1,'女','1111','610423199504092345','团员','陕西','汉族','20170413093908.jpg',7,19,1,0,0,0,0,0),(5,'000005','张三','543213',1,'男','11111111111','123456789876543213','团员','陕西','汉族','20170417114255.jpg',7,19,1,0,0,0,0,0),(6,'000006','张子','321234',0,'男','13454326781','610234321234321288','团员','陕西西安','汉族','20170418214014.jpg',9,27,1,0,1,0,0,0),(7,'000007','赵杨','029383',0,'女','13245673212','621983748291029383','党员','陕西咸阳','汉族','20170418214418.jpg',9,27,1,1,0,0,0,0),(8,'000008','陈浩','142356',0,'男','13234546763','234565432415142356','团员','山西','汉族','20170418220916.jpg',9,28,1,1,1,0,0,0),(9,'000009','杨洋','364738',1,'男','12343212341','234567896574364738','群众','陕西西安','汉族','20170418223734.jpg',7,20,1,0,1,0,0,0),(10,'000010','张张','234567',0,'女','13245675434','543261718191234567','团员','陕西延安','汉族','20170419190905.jpg',9,27,1,1,1,1,1,0),(11,'000011','张三','536787',1,'男','13276543562','234564732142536787','团员','陕西','汉族','20170420180006.jpg',7,21,1,0,0,1,0,0),(12,'000012','朱熹','876545',1,'男','11123421231','765432456789876545','团员','','汉族','20170422205542.jpg',7,20,1,1,1,0,1,0),(13,'000013','许三','301320',1,'男','13425261722','6104231222293013209','预备党员','咸阳','汉族','20170424012017.jpg',9,28,1,1,1,1,0,0),(14,'000014','照照','231876',1,'女','','','其他','山西','','20170424021039.jpg',7,21,1,1,1,1,1,1),(15,'000015','刘鑫','912341',0,'女','13476524355','612432654378912341','预备党员','咸阳','汉族','20170424050121.jpg',6,16,0,0,1,0,0,0),(16,'000016','杨妍','211943',0,'女','14325432415','610422199612211943','团员','陕西咸阳','汉族','20170502215408.jpg',7,19,1,1,0,1,1,0),(17,'000017','张三','153627',0,'男','13212312312','622876123526153627','团员','陕西省','汉族','20170502215841.jpg',NULL,NULL,1,0,0,0,0,0),(18,'000018','李峰','301321',1,'男','13425261722','610423199409301321','团员','陕西','汉族','20170503000735.jpg',7,19,1,0,0,0,0,0),(19,'000019','王美丽','301320',0,'女','18829012993','610423199409301320','团员','湖南','汉族','20170503000949.jpg',9,27,1,0,0,0,0,0),(20,'000020','王漂亮','234561',1,'女','18829010989','543261718191234561','团员','湖北','汉族','20170503001111.jpg',7,19,1,0,0,0,0,0),(21,'000021','许荀','301320',1,'女','18829012222','610423199409301320','预备党员','陕西咸阳','汉族','20170503004751.jpg',7,19,1,0,0,0,0,0),(22,'000022','张嘻嘻','301320',0,'女','15223452312','610423199409301320','团员','陕西咸阳','汉族','20170503203056.jpg',7,22,1,0,1,0,0,1),(23,'000023','王哈哈','912341',0,'男','13246756545','612432654378912341','团员','北京','汉族','20170503203603.jpg',7,20,1,0,1,1,0,1),(24,'000024','李佳慧','301320',0,'女','13246756545','610423199409301320','团员','云南','回族','20170503220543.jpg',7,24,1,0,1,1,0,1),(25,'000025','张杰','032945',0,'男','13425261722','610422199310032945','其他','四川','汉族','20170503221900.jpg',7,22,1,0,1,1,0,1),(26,'000026','白夜','301320',0,'男','13246756545','610423199409301320','预备党员','新疆','维吾尔族','20170503230246.jpg',9,27,1,1,1,1,0,1),(27,'000027','许三多','301320',0,'男','13246756545','610423199409301320','预备党员','陕西','汉族','20170503235808.jpg',8,26,0,0,0,0,1,0),(28,'000028','张小杰','301320',0,'男','13476524355','610423199409301320','预备党员','上海','汉族','20170504225546.jpg',9,27,1,0,0,0,0,0),(29,'000029','程明','215673',0,'男','11123421231','610402199412215673','团员','咸阳','汉','20170505010153.jpg',13,33,0,0,0,0,0,0),(30,'000030','赵瑜','016783',0,'男','13935762009','610402199402016783','党员','陕西延安','汉','20170505011041.jpg',13,35,0,0,0,0,0,0),(31,'000031','程玉饶','107830',0,'女','15978356672','601423199306107830','团员','北京','汉','20170505011409.jpg',13,38,0,0,0,0,0,0),(32,'000032','张曼青','235612',0,'女','17890231145','602421199608235612','党员','陕西延安','回族','20170505011607.jpg',13,32,0,0,0,0,0,0),(33,'000033','恒远','125723',0,'男','18890231278','610502199607125723','预备党员','湖北武汉','汉','20170505011732.jpg',13,34,0,0,0,0,0,0),(34,'000034','王明','237845',0,'男','18978235677','610403199410237845','其他','南京','汉','20170505012003.jpg',13,34,0,0,0,0,0,0),(35,'000035','王俊宇','212167',0,'男','13329345678','610453199411212167','预备党员','重庆','汉','20170505012209.jpg',13,35,0,0,0,0,0,0),(36,'000036','赵云','241291',0,'男','18893476790','610223199607241291','其他','重庆','汉','20170505012323.jpg',13,33,0,0,0,0,0,0),(37,'000037','李梦','212364',0,'女','15678992367','610223199703212364','党员','成都','汉','20170505012452.jpg',13,34,0,0,0,0,0,0),(38,'000038','李若云','083354',0,'女','13978664532','610123199508083354','其他','广西','壮族','20170505012607.jpg',13,32,0,0,0,0,0,0),(39,'000039','尉迟琳嘉','047832',0,'女','18922678933','610223199603047832','预备党员','新疆','维吾尔族','20170505012902.jpg',11,43,0,0,0,0,0,0),(40,'000040','王冲','172391',0,'男','18829102322','610401199506172391','其他','上海','汉','20170505013041.jpg',11,42,0,0,0,0,0,0),(41,'000041','王宓','237891',0,'男','13289176230','600123199705237891','其他','哈尔滨','汉','20170505013223.jpg',11,41,0,0,0,0,0,0),(42,'000042','宁远','233493',0,'男','18923017856','601234199403233493','预备党员','北京','汉','20170505013357.jpg',11,44,0,0,0,0,0,0),(43,'000043','成云','238935',0,'男','18923781101','602167199507238935','团员','上海','汉','20170505013509.jpg',11,42,0,0,0,0,0,0),(44,'000044','凌暮云','127891',0,'男','18967324561','620223199405127891','其他','陕西兴平','汉','20170505014157.jpg',11,45,0,0,0,0,0,0),(45,'000045','程志','257860',0,'男','17856772390','610401199304257860','团员','苏州','汉','20170505015755.jpg',11,42,0,0,0,0,0,0),(46,'000046','苏小妹','213781',0,'女','18829304454','610403199603213781','团员','杭州','汉','20170505015922.jpg',11,42,0,0,0,0,0,0),(47,'000047','陈浩','238891',0,'男','15980347856','611234199708238891','团员','苏州','汉族','20170505020158.jpg',11,45,0,0,0,0,0,0),(48,'000048','赵姝','217855',0,'女','18867452391','611211199603217855','预备党员','广州','汉','20170505020303.jpg',11,43,0,0,0,0,0,0),(49,'000049','姚鑫','217890',0,'男','13278913467','610444199603217890','预备党员','成都','汉','20170505020610.jpg',6,16,0,0,0,0,0,0),(50,'000050','王程','238901',0,'男','13323789134','620234199604238901','团员','广州','汉','20170505020750.jpg',6,18,0,0,0,0,0,0),(51,'000051','赵晨','027890',0,'女','15567239023','620420199712027890','其他','北京','汉','20170505021135.jpg',6,17,0,0,0,0,0,0),(52,'000052','陈诚','027891',0,'男','15767821292','611231199611027891','团员','上海','汉','20170505021519.jpg',6,17,0,0,0,0,0,0),(53,'000053','刘华','218967',0,'男','18892123821','620334199304218967','党员','上海','汉','20170505021656.jpg',6,16,0,0,1,0,0,0),(54,'000054','11','032943',1,'女','13423256732','610422199310032943','党员','咸阳','汉族','20170505110946.jpg',7,23,0,0,0,0,0,0);

/*Table structure for table `t_sushe` */

DROP TABLE IF EXISTS `t_sushe`;

CREATE TABLE `t_sushe` (
  `id` int(11) NOT NULL auto_increment,
  `bianhao` varchar(255) default NULL,
  `ceng` varchar(255) default NULL,
  `deletestatus` int(11) NOT NULL,
  `leixing` varchar(255) default NULL,
  `louhao` varchar(255) default NULL,
  `renshu` int(11) NOT NULL,
  `shengyu` int(11) NOT NULL,
  `yizhu` int(11) NOT NULL,
  `banjiid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `banjiid` (`banjiid`),
  CONSTRAINT `t_sushe_ibfk_1` FOREIGN KEY (`banjiid`) REFERENCES `t_banji` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sushe` */

insert  into `t_sushe`(`id`,`bianhao`,`ceng`,`deletestatus`,`leixing`,`louhao`,`renshu`,`shengyu`,`yizhu`,`banjiid`) values (1,'5010','5',0,'女生宿舍','13',6,3,3,1),(2,'5001','5',0,'女生宿舍','13',6,5,1,2),(3,'5002','5',0,'女生宿舍','13',6,6,0,2),(5,'1001','1',0,'男生宿舍','12',8,8,0,3),(6,'1002','1',0,'男生宿舍','12',8,7,1,4),(7,'1003','1',0,'男生宿舍','12',8,8,0,5),(8,'1004','1',0,'男生宿舍','12',8,8,0,6),(9,'5003','5',0,'女生宿舍','13',6,6,0,7),(10,'5005','5',0,'女生宿舍','13',6,6,0,8),(11,'5006','5',0,'女生宿舍','13',6,6,0,9),(12,'4001','4',1,'女生宿舍','13',6,6,0,5),(13,'5025','5',0,'女生宿舍','13',6,4,2,10),(14,'3003','3',0,'男生宿舍','5',8,8,0,9),(15,'5020','5',0,'男生宿舍','12',8,8,0,3),(16,'','1',1,NULL,'',8,8,0,11),(17,'','1',1,NULL,'',8,8,0,11),(18,'','1',1,NULL,'',8,8,0,11),(19,'','1',1,NULL,'',8,8,0,11),(20,'','3',1,'女生宿舍','',6,6,0,11),(21,'','1',1,NULL,'',8,8,0,11),(22,'5013','5',0,'女生宿舍','13',6,6,0,3),(23,'3024','3',0,'女生宿舍','13',6,6,0,1),(24,'3010','3',0,'男生宿舍','5',8,7,1,10);

/*Table structure for table `t_tijian` */

DROP TABLE IF EXISTS `t_tijian`;

CREATE TABLE `t_tijian` (
  `id` int(11) NOT NULL auto_increment,
  `ctime` varchar(255) default NULL,
  `deletestatus` int(11) NOT NULL,
  `path` varchar(255) default NULL,
  `studentid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK48C8CFECFB495F3F` (`studentid`),
  CONSTRAINT `FK48C8CFECFB495F3F` FOREIGN KEY (`studentid`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_tijian` */

insert  into `t_tijian`(`id`,`ctime`,`deletestatus`,`path`,`studentid`) values (1,'2017-04-15 14:23:44',1,'20170415142344.zip',2),(2,'2017-04-21 00:39:03',1,'20170421003903.zip',11),(3,'2017-04-24 04:33:35',1,'20170424043335.zip',14),(4,'2017-04-24 04:34:30',1,'20170424043430.zip',13),(5,'2017-05-03 23:54:35',0,'20170503235435.zip',26),(6,'2017-05-03 23:54:47',0,'20170503235447.zip',25),(7,'2017-05-03 23:54:55',0,'20170503235455.zip',24),(8,'2017-05-03 23:55:04',0,'20170503235504.zip',23),(9,'2017-05-04 12:28:13',0,'20170504122813.zip',10),(10,'2017-05-07 00:51:43',0,'20170507005143.zip',16);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL auto_increment,
  `createtime` varchar(255) default NULL,
  `deletestatus` int(11) NOT NULL,
  `name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `role` int(11) NOT NULL,
  `tel` varchar(255) default NULL,
  `username` varchar(255) NOT NULL,
  `depart` int(255) default NULL,
  PRIMARY KEY  (`id`,`username`),
  KEY `depart` (`depart`),
  CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`depart`) REFERENCES `t_all` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`createtime`,`deletestatus`,`name`,`password`,`role`,`tel`,`username`,`depart`) values (1,NULL,0,NULL,'admin123',1,NULL,'admin',55),(2,'2017-04-09',0,'zhang','111111',2,'13212312321','123',7),(3,'2017-04-12',0,'张三','111111',2,'1111111111','J123',9),(4,'2017-04-18',1,'李四','111111',2,'11111111111','jiaoshi1',9),(5,'2017-04-18',0,'刘六','111111',2,'11123421231','susheManager',5),(6,'2017-04-18',0,'李彩','111111',2,'13423256732','caiwuManager',3),(7,'2017-04-18',0,'灿灿','111111',2,'13234543231','canyinManager',4),(8,'2017-04-18',0,'张毅','111111',2,'15287689876','yiyuanManager',2),(9,'2017-04-19',0,'王教务','111111',2,'12321234565','JWCManager',1),(10,'2017-04-21',1,'刘诗诗','111111',2,'12344444423','shifanManager',6),(11,'2017-05-03',0,'政治','111111',2,'13232123213','zzxy',10),(12,'2017-05-03',0,'机械','111111',2,'11123421231','jixiexy',8),(13,'2017-05-04',0,'吴莎莎','111111',2,'12321234565','shifanManager2',6),(14,'2017-05-04',0,'权志龙','111111',2,'18829012107','123jiux',3),(15,'2017-05-04',0,'东永裴','111111',2,'18740435866','jb123',13),(16,'2017-05-04',0,'汤家凤','111111',2,'18978982234','yg123',9),(17,'2017-05-04',0,'张西西','111111',2,'18829017896','rw1124',11),(18,'2017-05-04',0,'王程','111111',2,'13489902222','SF1304',6),(19,'2017-05-04',0,'赵龙','111111',2,'18899012323','SF1305',6),(20,'2017-05-04',0,'欧阳钥','111111',2,'15678224578','SF1306',6),(21,'2017-05-04',0,'冯宇','111111',2,'13377895676','HG1101',15),(22,'2017-05-04',0,'程昱','111111',2,'145567839987','SW1201',14),(23,'2017-05-05',0,'崔胜贤','111111',2,'13328914356','JJ1400',12),(25,'2017-05-05',0,'陈明','111111',2,'122823786666','WG1601',9),(26,'2017-05-05',0,'王敏','111111',2,'14522347987','ZH1201',10),(27,'2017-05-05',0,'徐汇','111111',2,'18876532107','JC1502',8),(28,'2017-05-05',0,'余默','111111',2,'12935762013','RW1802',11),(29,'2017-05-05',0,'王青','111111',2,'15678221101','SF1302',6),(30,'2017-05-05',0,'杨宇','111111',2,'15678222007','SF101',6),(31,'2017-05-05',0,'虞城','111111',2,'15678222008','SF1303',6),(32,'2017-05-05',1,'羽墨','111111',2,'15678222007','SF1307',6);

/*Table structure for table `t_ykt` */

DROP TABLE IF EXISTS `t_ykt`;

CREATE TABLE `t_ykt` (
  `id` int(11) NOT NULL auto_increment,
  `ctime` varchar(255) default NULL,
  `deletestatus` int(11) NOT NULL,
  `kahao` varchar(255) default NULL,
  `path` varchar(255) default NULL,
  `studentid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK68F3137FB495F3F` (`studentid`),
  CONSTRAINT `FK68F3137FB495F3F` FOREIGN KEY (`studentid`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_ykt` */

insert  into `t_ykt`(`id`,`ctime`,`deletestatus`,`kahao`,`path`,`studentid`) values (1,'2017-04-15 14:22:27',1,'000001','20170415142227.jpg',2),(2,'2017-04-24 04:24:02',1,'000002','20170424042402.jpg',14),(3,'2017-05-03 23:56:06',0,'000003','20170503235606.jpg',26),(4,'2017-05-03 23:56:15',0,'000004','20170503235615.jpg',25),(5,'2017-05-03 23:56:24',0,'000005','20170503235624.jpg',24),(6,'2017-05-03 23:56:40',0,'000006','20170503235640.jpg',23),(7,'2017-05-03 23:57:00',0,'000007','20170503235700.jpg',22);

/*Table structure for table `t_zhusu` */

DROP TABLE IF EXISTS `t_zhusu`;

CREATE TABLE `t_zhusu` (
  `id` int(11) NOT NULL auto_increment,
  `ctime` varchar(255) default NULL,
  `deletestatus` int(11) NOT NULL,
  `studentid` int(11) default NULL,
  `susheid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK9F948BFEC85ABA5` (`susheid`),
  KEY `FK9F948BFEFB495F3F` (`studentid`),
  CONSTRAINT `FK9F948BFEC85ABA5` FOREIGN KEY (`susheid`) REFERENCES `t_sushe` (`id`),
  CONSTRAINT `FK9F948BFEFB495F3F` FOREIGN KEY (`studentid`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_zhusu` */

insert  into `t_zhusu`(`id`,`ctime`,`deletestatus`,`studentid`,`susheid`) values (1,'2017-04-11 19:26:23',1,1,1),(2,'2017-04-12 16:26:33',1,2,2),(3,'2017-04-19 17:36:38',0,8,NULL),(4,'2017-04-24 04:41:33',1,14,NULL),(5,'2017-04-24 04:45:57',1,13,NULL),(6,'2017-04-24 04:55:14',1,12,6),(7,'2017-04-24 04:55:32',0,10,13),(8,'2017-04-24 04:55:38',0,7,13),(9,'2017-04-24 04:55:52',1,3,1),(10,'2017-05-03 23:37:19',0,26,24),(11,'2017-05-07 00:51:00',0,16,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
