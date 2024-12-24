-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootua77e
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
-- Current Database: `springbootua77e`
--

/*!40000 DROP DATABASE IF EXISTS `springbootua77e`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootua77e` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootua77e`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhaopinxinxi`
--

DROP TABLE IF EXISTS `discusszhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='招聘信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhaopinxinxi`
--

LOCK TABLES `discusszhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `discusszhaopinxinxi` DISABLE KEYS */;
INSERT INTO `discusszhaopinxinxi` VALUES (121,'2022-05-18 06:45:04',1,1,'用户名1','评论内容1','回复内容1'),(122,'2022-05-18 06:45:04',2,2,'用户名2','评论内容2','回复内容2'),(123,'2022-05-18 06:45:04',3,3,'用户名3','评论内容3','回复内容3'),(124,'2022-05-18 06:45:04',4,4,'用户名4','评论内容4','回复内容4'),(125,'2022-05-18 06:45:04',5,5,'用户名5','评论内容5','回复内容5'),(126,'2022-05-18 06:45:04',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangwei`
--

DROP TABLE IF EXISTS `gangwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gangwei` (`gangwei`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='岗位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangwei`
--

LOCK TABLES `gangwei` WRITE;
/*!40000 ALTER TABLE `gangwei` DISABLE KEYS */;
INSERT INTO `gangwei` VALUES (41,'2022-05-18 06:45:03','岗位1'),(42,'2022-05-18 06:45:03','岗位2'),(43,'2022-05-18 06:45:03','岗位3'),(44,'2022-05-18 06:45:03','岗位4'),(45,'2022-05-18 06:45:03','岗位5'),(46,'2022-05-18 06:45:03','岗位6');
/*!40000 ALTER TABLE `gangwei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoyanxinxi`
--

DROP TABLE IF EXISTS `kaoyanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoyanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `zhengmingwenjian` varchar(200) NOT NULL COMMENT '证明文件',
  `xuexiao` varchar(200) NOT NULL COMMENT '学校',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='考研信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoyanxinxi`
--

LOCK TABLES `kaoyanxinxi` WRITE;
/*!40000 ALTER TABLE `kaoyanxinxi` DISABLE KEYS */;
INSERT INTO `kaoyanxinxi` VALUES (91,'2022-05-18 06:45:04','学生账号1','学生姓名1','2022-05-18 14:45:04','','学校1','是',''),(92,'2022-05-18 06:45:04','学生账号2','学生姓名2','2022-05-18 14:45:04','','学校2','是',''),(93,'2022-05-18 06:45:04','学生账号3','学生姓名3','2022-05-18 14:45:04','','学校3','是',''),(94,'2022-05-18 06:45:04','学生账号4','学生姓名4','2022-05-18 14:45:04','','学校4','是',''),(95,'2022-05-18 06:45:04','学生账号5','学生姓名5','2022-05-18 14:45:04','','学校5','是',''),(96,'2022-05-18 06:45:04','学生账号6','学生姓名6','2022-05-18 14:45:04','','学校6','是','');
/*!40000 ALTER TABLE `kaoyanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luyongtongzhi`
--

DROP TABLE IF EXISTS `luyongtongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luyongtongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `qiyeguimo` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxihaoma` varchar(200) DEFAULT NULL COMMENT '联系号码',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `gangwei` varchar(200) NOT NULL COMMENT '岗位',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `yanjiusheng` varchar(200) DEFAULT NULL COMMENT '研究生',
  `chufen` varchar(200) DEFAULT NULL COMMENT '处分',
  `tongzhishijian` datetime DEFAULT NULL COMMENT '通知时间',
  `zhuangtai` varchar(200) NOT NULL COMMENT '状态',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='录用通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luyongtongzhi`
--

LOCK TABLES `luyongtongzhi` WRITE;
/*!40000 ALTER TABLE `luyongtongzhi` DISABLE KEYS */;
INSERT INTO `luyongtongzhi` VALUES (101,'2022-05-18 06:45:04','企业账号1','企业名称1','企业规模1','负责人1','13823888881','企业地址1','773890001@qq.com','岗位1','薪资待遇1','学生账号1','学生姓名1','手机号码1','学历1','专业1','研究生1','处分1','2022-05-18 14:45:04','已录用',1,1),(102,'2022-05-18 06:45:04','企业账号2','企业名称2','企业规模2','负责人2','13823888882','企业地址2','773890002@qq.com','岗位2','薪资待遇2','学生账号2','学生姓名2','手机号码2','学历2','专业2','研究生2','处分2','2022-05-18 14:45:04','已录用',2,2),(103,'2022-05-18 06:45:04','企业账号3','企业名称3','企业规模3','负责人3','13823888883','企业地址3','773890003@qq.com','岗位3','薪资待遇3','学生账号3','学生姓名3','手机号码3','学历3','专业3','研究生3','处分3','2022-05-18 14:45:04','已录用',3,3),(104,'2022-05-18 06:45:04','企业账号4','企业名称4','企业规模4','负责人4','13823888884','企业地址4','773890004@qq.com','岗位4','薪资待遇4','学生账号4','学生姓名4','手机号码4','学历4','专业4','研究生4','处分4','2022-05-18 14:45:04','已录用',4,4),(105,'2022-05-18 06:45:04','企业账号5','企业名称5','企业规模5','负责人5','13823888885','企业地址5','773890005@qq.com','岗位5','薪资待遇5','学生账号5','学生姓名5','手机号码5','学历5','专业5','研究生5','处分5','2022-05-18 14:45:04','已录用',5,5),(106,'2022-05-18 06:45:04','企业账号6','企业名称6','企业规模6','负责人6','13823888886','企业地址6','773890006@qq.com','岗位6','薪资待遇6','学生账号6','学生姓名6','手机号码6','学历6','专业6','研究生6','处分6','2022-05-18 14:45:04','已录用',6,6);
/*!40000 ALTER TABLE `luyongtongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `qiyeguimo` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxihaoma` varchar(200) DEFAULT NULL COMMENT '联系号码',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (21,'2022-05-18 06:45:03','企业账号1','123456','企业名称1','企业规模1','负责人1','13823888881','企业地址1','773890001@qq.com','是',''),(22,'2022-05-18 06:45:03','企业账号2','123456','企业名称2','企业规模2','负责人2','13823888882','企业地址2','773890002@qq.com','是',''),(23,'2022-05-18 06:45:03','企业账号3','123456','企业名称3','企业规模3','负责人3','13823888883','企业地址3','773890003@qq.com','是',''),(24,'2022-05-18 06:45:03','企业账号4','123456','企业名称4','企业规模4','负责人4','13823888884','企业地址4','773890004@qq.com','是',''),(25,'2022-05-18 06:45:03','企业账号5','123456','企业名称5','企业规模5','负责人5','13823888885','企业地址5','773890005@qq.com','是',''),(26,'2022-05-18 06:45:03','企业账号6','123456','企业名称6','企业规模6','负责人6','13823888886','企业地址6','773890006@qq.com','是','');
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiyebaoming`
--

DROP TABLE IF EXISTS `qiyebaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiyebaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `canjiarenshu` int(11) NOT NULL COMMENT '参加人数',
  `jubanshijian` varchar(200) DEFAULT NULL COMMENT '举办时间',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='企业报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiyebaoming`
--

LOCK TABLES `qiyebaoming` WRITE;
/*!40000 ALTER TABLE `qiyebaoming` DISABLE KEYS */;
INSERT INTO `qiyebaoming` VALUES (81,'2022-05-18 06:45:04','标题1','upload/qiyebaoming_fengmian1.jpg',1,'举办时间1','2022-05-18 14:45:04','企业账号1','企业名称1',1,1,'是',''),(82,'2022-05-18 06:45:04','标题2','upload/qiyebaoming_fengmian2.jpg',1,'举办时间2','2022-05-18 14:45:04','企业账号2','企业名称2',2,2,'是',''),(83,'2022-05-18 06:45:04','标题3','upload/qiyebaoming_fengmian3.jpg',1,'举办时间3','2022-05-18 14:45:04','企业账号3','企业名称3',3,3,'是',''),(84,'2022-05-18 06:45:04','标题4','upload/qiyebaoming_fengmian4.jpg',1,'举办时间4','2022-05-18 14:45:04','企业账号4','企业名称4',4,4,'是',''),(85,'2022-05-18 06:45:04','标题5','upload/qiyebaoming_fengmian5.jpg',1,'举办时间5','2022-05-18 14:45:04','企业账号5','企业名称5',5,5,'是',''),(86,'2022-05-18 06:45:04','标题6','upload/qiyebaoming_fengmian6.jpg',1,'举办时间6','2022-05-18 14:45:04','企业账号6','企业名称6',6,6,'是','');
/*!40000 ALTER TABLE `qiyebaoming` ENABLE KEYS */;
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
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','snw1amjqsgmh03y51u24y3tbicfi5pxw','2022-05-18 06:48:28','2022-05-18 07:48:29');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `touzhixinxi`
--

DROP TABLE IF EXISTS `touzhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `touzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `qiyeguimo` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxihaoma` varchar(200) DEFAULT NULL COMMENT '联系号码',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `gangwei` varchar(200) NOT NULL COMMENT '岗位',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `yanjiusheng` varchar(200) DEFAULT NULL COMMENT '研究生',
  `chufen` varchar(200) DEFAULT NULL COMMENT '处分',
  `jianli` varchar(200) NOT NULL COMMENT '简历',
  `touzhishijian` datetime DEFAULT NULL COMMENT '投掷时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='投掷信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `touzhixinxi`
--

LOCK TABLES `touzhixinxi` WRITE;
/*!40000 ALTER TABLE `touzhixinxi` DISABLE KEYS */;
INSERT INTO `touzhixinxi` VALUES (51,'2022-05-18 06:45:03','企业账号1','企业名称1','企业规模1','负责人1','13823888881','企业地址1','773890001@qq.com','岗位1','薪资待遇1','学生账号1','学生姓名1','手机号码1','学历1','专业1','研究生1','处分1','','2022-05-18 14:45:03',1,1,'是',''),(52,'2022-05-18 06:45:03','企业账号2','企业名称2','企业规模2','负责人2','13823888882','企业地址2','773890002@qq.com','岗位2','薪资待遇2','学生账号2','学生姓名2','手机号码2','学历2','专业2','研究生2','处分2','','2022-05-18 14:45:03',2,2,'是',''),(53,'2022-05-18 06:45:03','企业账号3','企业名称3','企业规模3','负责人3','13823888883','企业地址3','773890003@qq.com','岗位3','薪资待遇3','学生账号3','学生姓名3','手机号码3','学历3','专业3','研究生3','处分3','','2022-05-18 14:45:03',3,3,'是',''),(54,'2022-05-18 06:45:03','企业账号4','企业名称4','企业规模4','负责人4','13823888884','企业地址4','773890004@qq.com','岗位4','薪资待遇4','学生账号4','学生姓名4','手机号码4','学历4','专业4','研究生4','处分4','','2022-05-18 14:45:03',4,4,'是',''),(55,'2022-05-18 06:45:03','企业账号5','企业名称5','企业规模5','负责人5','13823888885','企业地址5','773890005@qq.com','岗位5','薪资待遇5','学生账号5','学生姓名5','手机号码5','学历5','专业5','研究生5','处分5','','2022-05-18 14:45:03',5,5,'是',''),(56,'2022-05-18 06:45:03','企业账号6','企业名称6','企业规模6','负责人6','13823888886','企业地址6','773890006@qq.com','岗位6','薪资待遇6','学生账号6','学生姓名6','手机号码6','学历6','专业6','研究生6','处分6','','2022-05-18 14:45:03',6,6,'是','');
/*!40000 ALTER TABLE `touzhixinxi` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-05-18 06:45:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuanjianghui`
--

DROP TABLE IF EXISTS `xuanjianghui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuanjianghui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `canjiarenshu` int(11) NOT NULL COMMENT '参加人数',
  `jianghuixiangqing` longtext COMMENT '讲会详情',
  `jubanshijian` datetime DEFAULT NULL COMMENT '举办时间',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='宣讲会';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuanjianghui`
--

LOCK TABLES `xuanjianghui` WRITE;
/*!40000 ALTER TABLE `xuanjianghui` DISABLE KEYS */;
INSERT INTO `xuanjianghui` VALUES (61,'2022-05-18 06:45:03','标题1','upload/xuanjianghui_fengmian1.jpg',1,'讲会详情1','2022-05-18 14:45:03','2022-05-18 14:45:03'),(62,'2022-05-18 06:45:03','标题2','upload/xuanjianghui_fengmian2.jpg',2,'讲会详情2','2022-05-18 14:45:03','2022-05-18 14:45:03'),(63,'2022-05-18 06:45:03','标题3','upload/xuanjianghui_fengmian3.jpg',3,'讲会详情3','2022-05-18 14:45:03','2022-05-18 14:45:03'),(64,'2022-05-18 06:45:03','标题4','upload/xuanjianghui_fengmian4.jpg',4,'讲会详情4','2022-05-18 14:45:03','2022-05-18 14:45:03'),(65,'2022-05-18 06:45:03','标题5','upload/xuanjianghui_fengmian5.jpg',5,'讲会详情5','2022-05-18 14:45:03','2022-05-18 14:45:03'),(66,'2022-05-18 06:45:03','标题6','upload/xuanjianghui_fengmian6.jpg',6,'讲会详情6','2022-05-18 14:45:03','2022-05-18 14:45:03');
/*!40000 ALTER TABLE `xuanjianghui` ENABLE KEYS */;
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
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `chufen` varchar(200) DEFAULT NULL COMMENT '处分',
  `yanjiusheng` varchar(200) DEFAULT NULL COMMENT '研究生',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-05-18 06:45:03','学生账号1','学生姓名1','123456','13823888881','upload/xuesheng_touxiang1.jpg','男','专业1','大专',1,'处分1','是','是',''),(12,'2022-05-18 06:45:03','学生账号2','学生姓名2','123456','13823888882','upload/xuesheng_touxiang2.jpg','男','专业2','大专',2,'处分2','是','是',''),(13,'2022-05-18 06:45:03','学生账号3','学生姓名3','123456','13823888883','upload/xuesheng_touxiang3.jpg','男','专业3','大专',3,'处分3','是','是',''),(14,'2022-05-18 06:45:03','学生账号4','学生姓名4','123456','13823888884','upload/xuesheng_touxiang4.jpg','男','专业4','大专',4,'处分4','是','是',''),(15,'2022-05-18 06:45:03','学生账号5','学生姓名5','123456','13823888885','upload/xuesheng_touxiang5.jpg','男','专业5','大专',5,'处分5','是','是',''),(16,'2022-05-18 06:45:03','学生账号6','学生姓名6','123456','13823888886','upload/xuesheng_touxiang6.jpg','男','专业6','大专',6,'处分6','是','是','');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengbaoming`
--

DROP TABLE IF EXISTS `xueshengbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `canjiarenshu` int(11) NOT NULL COMMENT '参加人数',
  `jubanshijian` varchar(200) DEFAULT NULL COMMENT '举办时间',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='学生报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengbaoming`
--

LOCK TABLES `xueshengbaoming` WRITE;
/*!40000 ALTER TABLE `xueshengbaoming` DISABLE KEYS */;
INSERT INTO `xueshengbaoming` VALUES (71,'2022-05-18 06:45:03','标题1','upload/xueshengbaoming_fengmian1.jpg',1,'举办时间1','2022-05-18 14:45:03','学生账号1','学生姓名1',1,1),(72,'2022-05-18 06:45:03','标题2','upload/xueshengbaoming_fengmian2.jpg',1,'举办时间2','2022-05-18 14:45:03','学生账号2','学生姓名2',2,2),(73,'2022-05-18 06:45:03','标题3','upload/xueshengbaoming_fengmian3.jpg',1,'举办时间3','2022-05-18 14:45:03','学生账号3','学生姓名3',3,3),(74,'2022-05-18 06:45:03','标题4','upload/xueshengbaoming_fengmian4.jpg',1,'举办时间4','2022-05-18 14:45:03','学生账号4','学生姓名4',4,4),(75,'2022-05-18 06:45:03','标题5','upload/xueshengbaoming_fengmian5.jpg',1,'举办时间5','2022-05-18 14:45:03','学生账号5','学生姓名5',5,5),(76,'2022-05-18 06:45:03','标题6','upload/xueshengbaoming_fengmian6.jpg',1,'举办时间6','2022-05-18 14:45:03','学生账号6','学生姓名6',6,6);
/*!40000 ALTER TABLE `xueshengbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `qiyeguimo` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxihaoma` varchar(200) DEFAULT NULL COMMENT '联系号码',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `gangwei` varchar(200) NOT NULL COMMENT '岗位',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `qiyexiangqing` longtext COMMENT '企业详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (31,'2022-05-18 06:45:03','企业账号1','企业名称1','企业规模1','负责人1','13823888881','企业地址1','773890001@qq.com','upload/zhaopinxinxi_fengmian1.jpg','岗位1',1,'薪资待遇1','企业详情1','是','','2022-05-18 14:45:03',1),(32,'2022-05-18 06:45:03','企业账号2','企业名称2','企业规模2','负责人2','13823888882','企业地址2','773890002@qq.com','upload/zhaopinxinxi_fengmian2.jpg','岗位2',2,'薪资待遇2','企业详情2','是','','2022-05-18 14:45:03',2),(33,'2022-05-18 06:45:03','企业账号3','企业名称3','企业规模3','负责人3','13823888883','企业地址3','773890003@qq.com','upload/zhaopinxinxi_fengmian3.jpg','岗位3',3,'薪资待遇3','企业详情3','是','','2022-05-18 14:45:03',3),(34,'2022-05-18 06:45:03','企业账号4','企业名称4','企业规模4','负责人4','13823888884','企业地址4','773890004@qq.com','upload/zhaopinxinxi_fengmian4.jpg','岗位4',4,'薪资待遇4','企业详情4','是','','2022-05-18 14:45:03',4),(35,'2022-05-18 06:45:03','企业账号5','企业名称5','企业规模5','负责人5','13823888885','企业地址5','773890005@qq.com','upload/zhaopinxinxi_fengmian5.jpg','岗位5',5,'薪资待遇5','企业详情5','是','','2022-05-18 14:45:03',5),(36,'2022-05-18 06:45:03','企业账号6','企业名称6','企业规模6','负责人6','13823888886','企业地址6','773890006@qq.com','upload/zhaopinxinxi_fengmian6.jpg','岗位6',6,'薪资待遇6','企业详情6','是','','2022-05-18 14:45:03',6);
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-19 18:33:35
