-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmj9707
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmj9707/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmj9707/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmj9707/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusssuzhixuexi`
--

DROP TABLE IF EXISTS `discusssuzhixuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusssuzhixuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618580753563 DEFAULT CHARSET=utf8 COMMENT='素质学习评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusssuzhixuexi`
--

LOCK TABLES `discusssuzhixuexi` WRITE;
/*!40000 ALTER TABLE `discusssuzhixuexi` DISABLE KEYS */;
INSERT INTO `discusssuzhixuexi` VALUES (101,'2021-04-16 12:06:13',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-16 12:06:13',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-16 12:06:13',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-16 12:06:13',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-16 12:06:13',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-16 12:06:13',6,6,'用户名6','评论内容6','回复内容6'),(1618580753562,'2021-04-16 13:45:52',21,1618580715893,NULL,'123546',NULL);
/*!40000 ALTER TABLE `discusssuzhixuexi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618581320387 DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1618581320386,'2021-04-16 13:55:20','12',10,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618581398011 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1618581372945,'2021-04-16 13:56:12',1618581320386,'12','123','[{\"text\":\"123\",\"code\":\"A\"},{\"text\":\"456\",\"code\":\"B\"},{\"text\":\"789\",\"code\":\"C\"},{\"text\":\"102\",\"code\":\"D\"}]',10,'A','123',0,1),(1618581398010,'2021-04-16 13:56:37',1618581320386,'12','000123','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',10,'A','123',2,2);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618581531211 DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1618581504917,'2021-04-16 13:58:24',1,NULL,1618581320386,'12',1618581372945,'123','[{\"text\":\"123\",\"code\":\"A\"},{\"text\":\"456\",\"code\":\"B\"},{\"text\":\"789\",\"code\":\"C\"},{\"text\":\"102\",\"code\":\"D\"}]',10,'A','123',0,'B'),(1618581526585,'2021-04-16 13:58:46',1618581144955,NULL,1618581320386,'12',1618581372945,'123','[{\"text\":\"123\",\"code\":\"A\"},{\"text\":\"456\",\"code\":\"B\"},{\"text\":\"789\",\"code\":\"C\"},{\"text\":\"102\",\"code\":\"D\"}]',10,'A','123',10,'A'),(1618581531210,'2021-04-16 13:58:50',1618581144955,NULL,1618581320386,'12',1618581398010,'000123','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',10,'A','123',0,'B');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618581217879 DEFAULT CHARSET=utf8 COMMENT='在线论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (41,'2021-04-16 12:06:13','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(42,'2021-04-16 12:06:13','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(43,'2021-04-16 12:06:13','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(44,'2021-04-16 12:06:13','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(45,'2021-04-16 12:06:13','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(46,'2021-04-16 12:06:13','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1618580779239,'2021-04-16 13:46:19','123456','<p>4<span style=\"text-decoration: line-through; font-size: 36pt;\"><span style=\"text-decoration: underline;\"><em><strong><span style=\"color: #f1c40f; background-color: #e03e2d; text-decoration: underline;\">56</span></strong></em></span></span></p>',0,1618580715893,'01','开放'),(1618580790418,'2021-04-16 13:46:29',NULL,'123',1618580779239,1618580715893,'01',NULL),(1618581199272,'2021-04-16 13:53:18','123456','<p>12<span style=\"text-decoration: line-through; font-size: 36pt;\"><span style=\"text-decoration: underline;\"><em><strong><span style=\"color: #e03e2d; background-color: #fbeeb8; text-decoration: underline;\">3546</span></strong></em></span></span></p>',0,1618581144955,'02','开放'),(1618581217878,'2021-04-16 13:53:37',NULL,'123456',1618581199272,1618581144955,'02',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='励志文章';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-04-16 12:06:13','标题1','简介1','http://localhost:8080/jspmj9707/upload/news_picture1.jpg','内容1'),(92,'2021-04-16 12:06:13','标题2','简介2','http://localhost:8080/jspmj9707/upload/news_picture2.jpg','内容2'),(93,'2021-04-16 12:06:13','标题3','简介3','http://localhost:8080/jspmj9707/upload/news_picture3.jpg','内容3'),(94,'2021-04-16 12:06:13','标题4','简介4','http://localhost:8080/jspmj9707/upload/news_picture4.jpg','内容4'),(95,'2021-04-16 12:06:13','标题5','简介5','http://localhost:8080/jspmj9707/upload/news_picture5.jpg','内容5'),(96,'2021-04-16 12:06:13','标题6','简介6','http://localhost:8080/jspmj9707/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618581252708 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1618581252707,'2021-04-16 13:54:11',1618581144955,21,'suzhixuexi','标题1','http://localhost:8080/jspmj9707/upload/suzhixuexi_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suzhixuexi`
--

DROP TABLE IF EXISTS `suzhixuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suzhixuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='素质学习';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suzhixuexi`
--

LOCK TABLES `suzhixuexi` WRITE;
/*!40000 ALTER TABLE `suzhixuexi` DISABLE KEYS */;
INSERT INTO `suzhixuexi` VALUES (21,'2021-04-16 12:06:13','编号1','标题1','http://localhost:8080/jspmj9707/upload/suzhixuexi_tupian1.jpg','作者1','简介1','内容1',2,1),(22,'2021-04-16 12:06:13','编号2','标题2','http://localhost:8080/jspmj9707/upload/suzhixuexi_tupian2.jpg','作者2','简介2','内容2',2,2),(23,'2021-04-16 12:06:13','编号3','标题3','http://localhost:8080/jspmj9707/upload/suzhixuexi_tupian3.jpg','作者3','简介3','内容3',3,3),(24,'2021-04-16 12:06:13','编号4','标题4','http://localhost:8080/jspmj9707/upload/suzhixuexi_tupian4.jpg','作者4','简介4','内容4',4,4),(25,'2021-04-16 12:06:13','编号5','标题5','http://localhost:8080/jspmj9707/upload/suzhixuexi_tupian5.jpg','作者5','简介5','内容5',5,5),(26,'2021-04-16 12:06:13','编号6','标题6','http://localhost:8080/jspmj9707/upload/suzhixuexi_tupian6.jpg','作者6','简介6','内容6',6,6);
/*!40000 ALTER TABLE `suzhixuexi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'学生1','xuesheng','学生','ficack1wlt6xvxljf0ndj06x3vlp5vm7','2021-04-16 13:44:13','2021-04-16 14:44:13'),(2,1618580715893,'01','xuesheng','学生','d6wcuk28trxzaiw2y79blmqglqgw5akc','2021-04-16 13:45:20','2021-04-16 14:45:21'),(3,1,'abo','users','管理员','3w90sqdj0s121q0ax9vm7irscu0ne61c','2021-04-16 13:48:23','2021-04-16 14:57:59'),(4,1618581144955,'02','xuesheng','学生','0lqr5k4jlo7nghjreaj3tj7vm9a33fyy','2021-04-16 13:52:31','2021-04-16 14:52:32');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-16 12:06:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wodexuexi`
--

DROP TABLE IF EXISTS `wodexuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wodexuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618581168479 DEFAULT CHARSET=utf8 COMMENT='我的学习';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wodexuexi`
--

LOCK TABLES `wodexuexi` WRITE;
/*!40000 ALTER TABLE `wodexuexi` DISABLE KEYS */;
INSERT INTO `wodexuexi` VALUES (33,'2021-04-16 12:06:13','学号3','姓名3','编号3','标题3','2021-04-16 20:06:13'),(34,'2021-04-16 12:06:13','学号4','姓名4','编号4','标题4','2021-04-16 20:06:13'),(35,'2021-04-16 12:06:13','学号5','姓名5','编号5','标题5','2021-04-16 20:06:13'),(36,'2021-04-16 12:06:13','学号6','姓名6','编号6','标题6','2021-04-16 20:06:13'),(1618580746691,'2021-04-16 13:45:46','01','01','编号1','标题1','2021-04-16 21:45:45'),(1618581168478,'2021-04-16 13:52:47','02','02','编号1','标题1','2021-04-16 21:52:46');
/*!40000 ALTER TABLE `wodexuexi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618581144956 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-04-16 12:06:13','学生1','123456','姓名1','男',1,'院系1','13823888881','773890001@qq.com','http://localhost:8080/jspmj9707/upload/xuesheng_zhaopian1.jpg'),(12,'2021-04-16 12:06:13','学生2','123456','姓名2','男',2,'院系2','13823888882','773890002@qq.com','http://localhost:8080/jspmj9707/upload/xuesheng_zhaopian2.jpg'),(13,'2021-04-16 12:06:13','学生3','123456','姓名3','男',3,'院系3','13823888883','773890003@qq.com','http://localhost:8080/jspmj9707/upload/xuesheng_zhaopian3.jpg'),(14,'2021-04-16 12:06:13','学生4','123456','姓名4','男',4,'院系4','13823888884','773890004@qq.com','http://localhost:8080/jspmj9707/upload/xuesheng_zhaopian4.jpg'),(15,'2021-04-16 12:06:13','学生5','123456','姓名5','男',5,'院系5','13823888885','773890005@qq.com','http://localhost:8080/jspmj9707/upload/xuesheng_zhaopian5.jpg'),(16,'2021-04-16 12:06:13','学生6','123456','姓名6','男',6,'院系6','13823888886','773890006@qq.com','http://localhost:8080/jspmj9707/upload/xuesheng_zhaopian6.jpg'),(1618580715893,'2021-04-16 13:45:15','01','01','01','',NULL,'','','','http://localhost:8080/jspmj9707/upload/1618580830911.gif'),(1618581144955,'2021-04-16 13:52:24','02','02','02','男',NULL,'','','','http://localhost:8080/jspmj9707/upload/1618581242010.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-17 15:50:48
