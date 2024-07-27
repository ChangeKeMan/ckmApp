-- MySQL dump 10.13  Distrib 5.6.51, for Win64 (x86_64)
--
-- Host: localhost    Database: changkeman
-- ------------------------------------------------------
-- Server version	5.6.51-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址管理',
  `menberid` varchar(255) DEFAULT NULL COMMENT '角色名',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `szdq` varchar(255) DEFAULT NULL COMMENT '所在地区',
  `xxjd` varchar(255) DEFAULT NULL COMMENT '详细街道',
  `sz` varchar(255) DEFAULT NULL COMMENT '1 默认 2不是默认',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (11,'11','王工','13478472099','辽宁省','大连市开发区','1');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员登录',
  `username` varchar(255) DEFAULT NULL COMMENT '后台账户',
  `password` varchar(255) DEFAULT NULL COMMENT '后台密码',
  `qx` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (8,'admin','e10adc3949ba59abbe56e057f20f883e','1,2,3,4,5,6,7,8,9,10,18,28'),(9,'user1','250cf8b51c773f3f8dc8b4be867a9a02','1,2,3,4,5,6,7,8,14,9,10,12,21,16,17,18,19,23,22,20,24,25,26,27,28');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'banner管理',
  `title` varchar(255) DEFAULT NULL COMMENT '角色名',
  `images` varchar(255) DEFAULT NULL COMMENT '备注',
  `url` varchar(255) DEFAULT NULL COMMENT '跳转连接地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (13,'banner1','/Uploads/images/20240720/7e358cdbeacbe22ea5ef0f2025198147.jpg','/pageA/shop/detail?id=33'),(14,'banner2','/Uploads/images/20240720/38267a3a7817c6436ac9c80b38baa7c0.jpg','/pageA/shop/detail?id=33'),(15,'banner3','/Uploads/images/20240720/f3e1f232139a4c050278ea04f0029364.jpg','/pageA/shop/detail?id=33');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品分类',
  `title` varchar(255) DEFAULT NULL COMMENT '分类',
  `navid` varchar(255) DEFAULT NULL COMMENT '导航id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (15,'正餐小吃','14'),(16,'炸鸡炸串','14'),(17,'烧烤、烤肉','14'),(18,'蛋糕、甜点','14'),(19,'咖啡店','14');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `md`
--

DROP TABLE IF EXISTS `md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `md` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '门店管理',
  `name` varchar(255) DEFAULT NULL COMMENT '门店名称',
  `tel` varchar(255) DEFAULT NULL COMMENT '门店电话',
  `nick` varchar(255) DEFAULT NULL COMMENT '昵称',
  `openid` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `times` varchar(255) DEFAULT NULL COMMENT '时间戳',
  `images` varchar(255) DEFAULT NULL COMMENT '客户头像',
  `yue` varchar(255) DEFAULT '0' COMMENT '余额',
  `xm` varchar(255) DEFAULT NULL COMMENT '法人姓名',
  `skzh` varchar(255) DEFAULT NULL COMMENT '收款账户',
  `skyh` varchar(255) DEFAULT NULL COMMENT '收款银行',
  `tjrid` varchar(255) DEFAULT NULL COMMENT '推荐人id',
  `yyzs` varchar(255) DEFAULT NULL COMMENT '营业执照',
  `sfzzm` varchar(255) DEFAULT NULL COMMENT '身份证正面',
  `sfzfm` varchar(255) DEFAULT NULL COMMENT '身份证反面',
  `zh` varchar(255) DEFAULT NULL COMMENT '账户',
  `pass` varchar(255) DEFAULT NULL COMMENT '密码',
  `yysj` varchar(255) DEFAULT NULL COMMENT '营业时间',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `jd` varchar(255) DEFAULT NULL COMMENT '经度',
  `wd` varchar(255) DEFAULT NULL COMMENT '纬度',
  `text` varchar(255) DEFAULT NULL COMMENT '门店介绍',
  `classid` varchar(255) DEFAULT NULL COMMENT '分类id',
  `type` varchar(255) DEFAULT NULL COMMENT '1 审核 2通过',
  `rmsj` varchar(255) DEFAULT '1' COMMENT '1 不是热门商家  2 热门商家',
  `rjmd` varchar(255) DEFAULT NULL COMMENT '1 推荐门店 2 不是推荐门店',
  `navid` varchar(255) DEFAULT NULL COMMENT '导航id',
  `banner` varchar(255) DEFAULT NULL COMMENT '门店baner',
  `lx` varchar(255) DEFAULT '1' COMMENT '1 管理员 2 员工',
  `xxdz` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `jsimages` varchar(255) DEFAULT NULL COMMENT '介绍图片',
  `dates` varchar(255) DEFAULT NULL COMMENT '日期',
  `frtel` varchar(255) DEFAULT NULL COMMENT '法人电话',
  `yyxkz` varchar(255) DEFAULT NULL COMMENT '营业许可证',
  `ffrsqs` varchar(255) DEFAULT NULL COMMENT '非法人授权书',
  `dpmt` varchar(255) DEFAULT NULL COMMENT '店铺门头',
  `hjzp` varchar(255) DEFAULT NULL COMMENT '环境照片',
  `wlpsjzp` varchar(255) DEFAULT NULL COMMENT '无聊普设计照片',
  `menberid` varchar(255) DEFAULT NULL COMMENT '对应的会员id',
  `yxq` varchar(255) DEFAULT NULL COMMENT '有效期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md`
--

LOCK TABLES `md` WRITE;
/*!40000 ALTER TABLE `md` DISABLE KEYS */;
INSERT INTO `md` VALUES (34,'勤省吧','2',NULL,NULL,'2024-07-20 01:40:28','1721980386','/Uploads/images/20240720/730ca17f69f81b54eca5dd177ec5c82f.png','2000','2','2','2',NULL,'http://ckm.wl66.com.cn//Uploads/images/20240720/3f6bf2b33c99fd02dd7414ec21a3c4aa.png','http://ckm.wl66.com.cn//Uploads/images/20240720/5c91c744f561d0aaaed872e30e75149f.png','http://ckm.wl66.com.cn//Uploads/images/20240720/9893026a1ed28fe32a5d6a3c60bd1b14.png','22','22','2','辽宁省大连市甘井子区汇利街78号','2','2','<p>2</p>','','2','2','1','17',NULL,'1',NULL,'http://ckm.wl66.com.cn/',NULL,'2','http://ckm.wl66.com.cn/','http://ckm.wl66.com.cn/','http://ckm.wl66.com.cn/','http://ckm.wl66.com.cn/','http://ckm.wl66.com.cn/0',NULL,'2'),(36,'xxy','13130460085',NULL,NULL,'2024-07-20 03:53:01','1721984771','/Uploads/images/20240726/173b530ab55eff41184db206271e96fe.jpg','9990','text','13','1231','','http://ckm.wl66.com.cn/http://ckm.wl66.com.cn/http://ckm.wl66.com.cn/Uploads/f20240720155248687796.jpg','http://ckm.wl66.com.cn/http://ckm.wl66.com.cn//Uploads/images/20240726/bbbb821fe2b41ff85ea8fba052f44d0a.jpg','http://ckm.wl66.com.cn/http://ckm.wl66.com.cn//Uploads/images/20240726/2dbbf74bbb7888416c2df31befaaeee3.png','123','123','8-17','鲨壳隐形车衣(鹏运街)','121.808867','39.025824','<p>阿萨德</p>','18','1','1','1','16',NULL,'1','辽宁省大连市甘井子区华东路25号','http://ckm.wl66.com.cn/http://ckm.wl66.com.cn/http://ckm.wl66.com.cn/Uploads/f20240720155227373779.jpg','2024-07-20','text','http://ckm.wl66.com.cn/http://ckm.wl66.com.cn//Uploads/images/20240726/d74d49c55d63635ae642d4334b30ed41.jpg','http://ckm.wl66.com.cn/http://ckm.wl66.com.cn//Uploads/images/20240726/070b74b0f92c20683b5bb450ff26b248.jpg','http://ckm.wl66.com.cn/http://ckm.wl66.com.cn//Uploads/images/20240726/2d8e7b730eb36840cb29a23bd6359c5f.jpg','http://ckm.wl66.com.cn/http://ckm.wl66.com.cn//Uploads/images/20240726/283763bde1038647f1c9c94a04b1f87c.jpg','http://ckm.wl66.com.cn/http://ckm.wl66.com.cn//Uploads/images/20240726/d9de586b52aa7e4700a972ed349139d4.jpg','','11223213'),(33,'常客满','1111',NULL,NULL,'2024-07-20 01:27:07','1721980680','/Uploads/images/20240720/d4dc8efd0457b9f9e5b2a4440ccf2b13.png','10000','常客满','123','123',NULL,'/Uploads/images/20240726/a7359772fa09b277306e41489558382e.jpg','/Uploads/images/20240726/4ce4e922a3d45c199aa88e1f875195aa.jpg','/Uploads/images/20240726/06dc5437258ba23f84f43c404ffcf877.jpg','11','11','1','天兴·罗斯福国际大厦','121.586499','38.912727','<p>text测试</p>','15','2','2','1','14','http://ckm.wl66.com.cn/Uploads/f20240720162200654232.jpg','1','红星美凯龙','/Uploads/images/20240726/65b424046f428b55294a384ef4ac6eaf.jpg',NULL,'1','/Uploads/images/20240726/f5a50db0d7cd8082fd75e84af1b876d6.jpg','/Uploads/images/20240726/77a3015e3ade49c68e8531ae52693e08.jpg','/Uploads/images/20240726/f7d87dfbeab4f8a30cadd95794593cc1.jpg','/Uploads/images/20240726/d1bbeba6be51c4fcbd8f64c83d53034d.jpg','/Uploads/images/20240726/013f336f1cfe4eaf933247c24672a6a6.jpg',NULL,'1');
/*!40000 ALTER TABLE `md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdclass`
--

DROP TABLE IF EXISTS `mdclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '门店分类',
  `title` varchar(255) DEFAULT NULL,
  `mdid` varchar(255) DEFAULT NULL COMMENT '门店id',
  `px` varchar(255) DEFAULT NULL COMMENT '排序',
  `dels` varchar(255) DEFAULT '1' COMMENT '1 未删除 2 已经删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdclass`
--

LOCK TABLES `mdclass` WRITE;
/*!40000 ALTER TABLE `mdclass` DISABLE KEYS */;
INSERT INTO `mdclass` VALUES (41,'海鲜','36','1','1'),(40,'222','34','2','1'),(39,'海鲜','33','1','1'),(38,'ccc','34',NULL,'1'),(37,'正餐快餐','33',NULL,'1'),(42,'主食','36','2','1');
/*!40000 ALTER TABLE `mdclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdproduct`
--

DROP TABLE IF EXISTS `mdproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '门店产品',
  `mdclassid` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL COMMENT '图片',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `ms` varchar(255) DEFAULT NULL COMMENT '描述',
  `price` varchar(255) DEFAULT NULL COMMENT '价格',
  `mdid` varchar(255) DEFAULT NULL COMMENT '菜品单位',
  `dw` varchar(255) DEFAULT NULL,
  `kc` varchar(255) DEFAULT NULL COMMENT '库存',
  `dels` varchar(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdproduct`
--

LOCK TABLES `mdproduct` WRITE;
/*!40000 ALTER TABLE `mdproduct` DISABLE KEYS */;
INSERT INTO `mdproduct` VALUES (46,'42','http://ckm.wl66.com.cn/Uploads/f20240727114910609216.jpg','大饼','好吃','5','36','个','100','1'),(45,'41','http://ckm.wl66.com.cn/Uploads/f20240727114826309124.jpg','米饭','一碗','3','36','碗','2000','1'),(44,'41','http://ckm.wl66.com.cn/Uploads/f20240727114744888598.jpg','波龙','一只','998','36','个','100','1'),(43,'39','http://ckm.wl66.com.cn/Uploads/images/20240726/2a13fba17850460c21a78174192583ee.jpg','1','1','1','33',NULL,NULL,'1'),(42,'40','http://ckm.wl66.com.cn/Uploads/images/20240726/8dfdf89837c1a43e99f1d239557b809b.jpg','text','text简介','text现价','34','份','5001','1'),(41,'39','http://ckm.wl66.com.cn/Uploads/f20240720145803312503.jpg','松叶蟹','活松叶蟹','888','33','个','50','1'),(40,'39','/Uploads/images/20240720/6df816433d8677e0243b216381a2db8a.png','清蒸帝王蟹','好歹奥','222','33','','','1'),(39,'37','/Uploads/images/20240720/a54602cb8e18e714b058da2e24fc92a3.jpg','帝王蟹','帝王蟹一只','3588','33','份','100','1');
/*!40000 ALTER TABLE `mdproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdproductggm`
--

DROP TABLE IF EXISTS `mdproductggm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdproductggm` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '门店产品规格',
  `title` varchar(255) DEFAULT NULL,
  `mdid` varchar(255) DEFAULT NULL COMMENT '门店id',
  `mdproductid` varchar(255) DEFAULT NULL COMMENT '门店产品id',
  `dels` varchar(255) DEFAULT '1' COMMENT '1 ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdproductggm`
--

LOCK TABLES `mdproductggm` WRITE;
/*!40000 ALTER TABLE `mdproductggm` DISABLE KEYS */;
INSERT INTO `mdproductggm` VALUES (47,'碗','36','45','1'),(46,'','36','44','1'),(45,'个','36','44','1'),(43,'12312312312','33','39','1'),(42,'123123','33','40','1'),(44,'1231231','33','41','1');
/*!40000 ALTER TABLE `mdproductggm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdproductvalue`
--

DROP TABLE IF EXISTS `mdproductvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdproductvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '门店产品规格值',
  `title` varchar(255) DEFAULT NULL,
  `mdid` varchar(255) DEFAULT NULL COMMENT '门店id',
  `mdproductid` varchar(255) DEFAULT NULL COMMENT '门店产品id',
  `mdproductggmid` varchar(255) DEFAULT NULL COMMENT '规格名称',
  `dels` varchar(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdproductvalue`
--

LOCK TABLES `mdproductvalue` WRITE;
/*!40000 ALTER TABLE `mdproductvalue` DISABLE KEYS */;
INSERT INTO `mdproductvalue` VALUES (41,'123123','33','41','44','1'),(39,'1-1-1-111','33','41','44','1'),(40,'123123123','33','39','43','1');
/*!40000 ALTER TABLE `mdproductvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdtg`
--

DROP TABLE IF EXISTS `mdtg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdtg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '团购门店',
  `mdid` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `ms` varchar(255) DEFAULT NULL COMMENT '描述',
  `yj` varchar(255) DEFAULT NULL COMMENT '原价',
  `xj` varchar(255) DEFAULT NULL COMMENT '现价',
  `yxq` varchar(255) DEFAULT NULL COMMENT '有效期',
  `sysj` varchar(255) DEFAULT NULL COMMENT '使用时间',
  `sygz` varchar(255) DEFAULT NULL COMMENT '使用规则',
  `sftj` varchar(255) DEFAULT '1' COMMENT '1 不推荐 2 推荐',
  `tgsl` varchar(255) DEFAULT NULL COMMENT '团购数量',
  `dels` varchar(11) DEFAULT '1',
  `rm` varchar(255) DEFAULT '2' COMMENT '1 热门 2 不是人们',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdtg`
--

LOCK TABLES `mdtg` WRITE;
/*!40000 ALTER TABLE `mdtg` DISABLE KEYS */;
INSERT INTO `mdtg` VALUES (24,'33','/Uploads/images/20240726/3773471f9467f7424052b491b570b917.jpg','帝王蟹套餐','清蒸帝王蟹+海鲜粥+菜心','3888','999','30天','2024-07-20','1.不可使用包间   2. 节假日不可用','2',NULL,'2','1'),(23,'34','/Uploads/images/20240720/ec8bc44ee39538114fe7b3ce28a98726.png','高源炒饭','米其林五星级酒店皇家御用大厨，高源，炒的饭，不吃整死你','9999','1','30天','2024-07-26','资产过千亿才可核销','2',NULL,'1','1'),(22,'33','/Uploads/images/20240726/b85ddede459af037ca6ae4222927d85d.jpg','红烧肉双拼1','红烧肉嘎嘎好吃1','6001','501','30天1','2024-07-26','红烧肉嘎嘎好吃，特别好吃，独家秘方1','1','','2','2'),(25,'36','http://ckm.wl66.com.cn/Uploads/f20240726171130397399.png','测试','测试的','120','100','30','1000','1010','1','','1','2');
/*!40000 ALTER TABLE `mdtg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdtgxq`
--

DROP TABLE IF EXISTS `mdtgxq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdtgxq` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '团购门店详情',
  `mdid` varchar(255) DEFAULT NULL COMMENT '门店id',
  `mdtgid` varchar(255) DEFAULT NULL COMMENT '门店团购id',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `ms` varchar(255) DEFAULT NULL COMMENT '描述',
  `jg` varchar(255) DEFAULT NULL COMMENT '价格',
  `fs` varchar(255) DEFAULT NULL COMMENT '份数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdtgxq`
--

LOCK TABLES `mdtgxq` WRITE;
/*!40000 ALTER TABLE `mdtgxq` DISABLE KEYS */;
INSERT INTO `mdtgxq` VALUES (35,'36','25','倒是','大撒大撒','10','1'),(33,'33','24','好吃1','和朋友一起去吃的，超值','999',NULL),(32,'34','23','好吃爱吃123123','还行','200',NULL),(34,'33','22','份1','红烧肉','900','1');
/*!40000 ALTER TABLE `mdtgxq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdyg`
--

DROP TABLE IF EXISTS `mdyg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdyg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '门店员工',
  `names` varchar(255) DEFAULT NULL COMMENT '姓名',
  `zh` varchar(255) DEFAULT NULL COMMENT '账户',
  `pass` varchar(255) DEFAULT NULL COMMENT '密码',
  `xb` varchar(255) DEFAULT NULL COMMENT '性别',
  `mdid` varchar(255) DEFAULT NULL COMMENT '门店id',
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdyg`
--

LOCK TABLES `mdyg` WRITE;
/*!40000 ALTER TABLE `mdyg` DISABLE KEYS */;
INSERT INTO `mdyg` VALUES (21,'xxy','122','122','男','34','/Uploads/images/20240720/4a1c7a920ffc064467f19fb853c66ea0.png'),(25,'text','123','123','未知','33','http://ckm.wl66.com.cn/Uploads/f20240720162041882171.jpg'),(27,'666','22','22','拿','','http://ckm.wl66.com.cn/Uploads/f20240726165209554147.png');
/*!40000 ALTER TABLE `mdyg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menber`
--

DROP TABLE IF EXISTS `menber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menber` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员管理',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `nick` varchar(255) DEFAULT NULL COMMENT '昵称',
  `openid` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `times` varchar(255) DEFAULT NULL COMMENT '时间戳',
  `yue` varchar(255) DEFAULT '0' COMMENT '余额',
  `yqrid` varchar(255) DEFAULT NULL COMMENT '邀请人id',
  `images` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '1 会员推荐会员 2 商家推荐会员',
  `dates` varchar(255) DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menber`
--

LOCK TABLES `menber` WRITE;
/*!40000 ALTER TABLE `menber` DISABLE KEYS */;
INSERT INTO `menber` VALUES (23,'3','1000','100',NULL,'2024-05-07 04:46:55','1715071615','1000','23',NULL,'1',NULL),(30,NULL,NULL,'Anjae chu','oKlu860xIR9hEOtfpGaJiLzEpS6I','2024-07-20','1721439934','0','','','1',NULL),(28,NULL,'18840896333','李小哥','oKlu868rSAZq1FgTpRQjxUEcn4Fs','2024-07-18','1721282512','989','','http://ckm.wl66.com.cn/Uploads/f20240718140148187561.jpeg','1',NULL);
/*!40000 ALTER TABLE `menber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nav`
--

DROP TABLE IF EXISTS `nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '导航连接地址',
  `images` varchar(255) DEFAULT NULL COMMENT '电话',
  `title` varchar(255) DEFAULT NULL COMMENT '直推 10%',
  `url` varchar(255) DEFAULT NULL COMMENT '连接地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nav`
--

LOCK TABLES `nav` WRITE;
/*!40000 ALTER TABLE `nav` DISABLE KEYS */;
INSERT INTO `nav` VALUES (16,'/Uploads/images/20240722/5cbe4fc73ac2b18873b1f5a99c516924.png','美业','美业'),(14,'/Uploads/images/20240722/73b944d8401b129b96090a1f2b921916.png','美食','美食'),(17,'/Uploads/images/20240722/e5510ed80db9ddc42046c3ad02ffb781.png','商品零售','商品零售'),(18,'/Uploads/images/20240722/f6448c5cd50289c5e81c7d379ff1a9e8.png','休闲娱乐','休闲娱乐'),(19,'/Uploads/images/20240722/fa6ebe46c05b41da41d64d5148446575.png','生活服务','生活服务'),(20,'/Uploads/images/20240722/56eacad1d0954757452e96798d3ecb23.png','其他更多','其他更多');
/*!40000 ALTER TABLE `nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '注册协议',
  `nums` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `menberid` varchar(255) DEFAULT NULL COMMENT '会员id',
  `mdid` varchar(255) DEFAULT NULL COMMENT '门店id',
  `lx` varchar(255) DEFAULT NULL COMMENT '1 团购订单 2 扫码下订单',
  `mdproductid` varchar(255) DEFAULT NULL COMMENT '扫码点餐id array()',
  `mdtgid` varchar(255) DEFAULT NULL COMMENT '团购id ',
  `price` varchar(255) DEFAULT NULL COMMENT '支付金额',
  `time` varchar(255) DEFAULT NULL COMMENT '下单时间',
  `times` varchar(255) DEFAULT NULL COMMENT '下单时间戳',
  `type` varchar(255) DEFAULT NULL COMMENT '1 待付款 2待取餐 3 待使用 4 已完成',
  `hx` varchar(255) DEFAULT NULL COMMENT '1 未核销 2 已核销',
  `yhjid` varchar(255) DEFAULT NULL COMMENT '优惠卷id',
  `dates` varchar(255) DEFAULT NULL COMMENT '日期',
  `yue` varchar(255) DEFAULT NULL COMMENT '本月 几月份 2024-08',
  `bz` varchar(255) DEFAULT NULL COMMENT '备注',
  `zkid` varchar(255) DEFAULT NULL COMMENT '桌卡',
  `zffs` varchar(255) DEFAULT '1' COMMENT '1 微信 2余额',
  `sl` varchar(255) DEFAULT NULL COMMENT '数量',
  `names` varchar(255) DEFAULT NULL COMMENT '姓名',
  `tels` varchar(255) DEFAULT NULL COMMENT '电话',
  `lxss` varchar(255) DEFAULT NULL COMMENT '1 堂食 2 外带',
  `ycrs` varchar(255) DEFAULT NULL COMMENT '用餐人数',
  `ggz` varchar(255) DEFAULT NULL COMMENT '规格值',
  `ggm` varchar(255) DEFAULT NULL COMMENT '规格名',
  `qch` varchar(255) DEFAULT NULL COMMENT '取餐号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (132,'ddh202407200131277580','','33','1',NULL,'22','0.01','2024-07-20 01:31:27','1721453487','1','1','','2024-07-20','07','',NULL,'1','1','徐欣原','123123',NULL,NULL,NULL,NULL,NULL),(131,'ddh202407200947035091','','28','1',NULL,'15','0.01','2024-07-20 09:47:03','1721440023','1','1','','2024-07-20','07','',NULL,'1','1','z','1234213',NULL,NULL,NULL,NULL,NULL),(130,'ddh202407200947023588','','28','1',NULL,'15','0.01','2024-07-20 09:47:02','1721440022','1','1','','2024-07-20','07','',NULL,'1','1','z','1234213',NULL,NULL,NULL,NULL,NULL),(129,'ddh202407200947011669','','28','1',NULL,'15','0.01','2024-07-20 09:47:01','1721440021','1','1','','2024-07-20','07','',NULL,'1','1','z','1234213',NULL,NULL,NULL,NULL,NULL),(128,'yeddh202407190948023001','28','28','1',NULL,'15','123','2024-07-19 09:48:02','1721396882','3','2','','2024-07-19','07','',NULL,'1','1','乔欣','18840896333',NULL,NULL,NULL,NULL,NULL),(127,'smddh202407190935223610','28','28','2','35',NULL,'60.00','2024-07-19 09:35:22','1721396122','3','1',NULL,'2024-07-19','07','','22','1','1',NULL,NULL,'1','2','33','辣','T22667'),(126,'smddh202407190935223610','28','28','2','33',NULL,'60.00','2024-07-19 09:35:22','1721396122','3','1',NULL,'2024-07-19','07','','22','1','1',NULL,NULL,'1','2',NULL,NULL,'T22667');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbjl`
--

DROP TABLE IF EXISTS `qbjl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbjl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '钱包记录',
  `lx` varchar(255) DEFAULT NULL COMMENT '1 购买消费 2 返利佣金 ',
  `menberid` varchar(255) DEFAULT NULL COMMENT '会员id',
  `jine` varchar(255) DEFAULT NULL COMMENT '金额',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `times` varchar(255) DEFAULT NULL COMMENT '时间戳',
  `type` varchar(255) DEFAULT '1' COMMENT '1 会员 2商家',
  `namesd` varchar(255) DEFAULT NULL COMMENT '钱包记录人信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbjl`
--

LOCK TABLES `qbjl` WRITE;
/*!40000 ALTER TABLE `qbjl` DISABLE KEYS */;
/*!40000 ALTER TABLE `qbjl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qx`
--

DROP TABLE IF EXISTS `qx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qx` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '注册协议',
  `title` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL COMMENT '1 、会员注册协议 2、商户注册协议 3、合作告知',
  `fontFamily` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `spread` varchar(255) DEFAULT NULL,
  `gx` varchar(255) DEFAULT NULL,
  `dj` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qx`
--

LOCK TABLES `qx` WRITE;
/*!40000 ALTER TABLE `qx` DISABLE KEYS */;
INSERT INTO `qx` VALUES (1,'控制台','pages/console1.html','layui-icon','&#xe66f;','true',NULL,'1'),(2,'banner管理','pages/banner/select.html','layui-icon','&#xe65f;','true','','1'),(3,'会员管理','pages/menber/select.html','layui-icon','&#xe64f;','true','','1'),(4,'订单管理','pages/orders/select.html','layui-icon','&#xe63f;','true',NULL,'1'),(5,'商家管理','','layui-icon','&#xe62f;','true',NULL,'1'),(6,'导航管理','pages/nav/select.html','layui-icon','&#xe61f;','true',NULL,'1'),(7,'分类管理','pages/fenlei/select.html','layui-icon','&#xe60f;','true','','1'),(8,'优惠卷管理','','layui-icon','&#xe672;','true',NULL,'1'),(14,'团购列表','pages/mdtg/select.html','layui-icon',NULL,'true','29','3'),(9,'消费记录','pages/qbjl/select.html','layui-icon','&#xe674;','true','','1'),(10,'账户列表','pages/admins/select.html','layui-icon','&#xe678;','true','','1'),(29,'团购管理',NULL,NULL,NULL,NULL,'5','2'),(12,'菜品管理','pages/mdproduct/select.html','','','true','5','2'),(21,'评价管理','pages/tgpj/select.html',NULL,NULL,'true','29','3'),(16,'员工管理','pages/yg/select.html','layui-icon',NULL,'true','5','2'),(17,'桌位管理','pages/zk/select.html','layui-icon',NULL,'true','5','2'),(18,'财务管理','pages/txgl/select.html','layui-icon','&#xe671;','true','','1'),(19,'分销中心','pages/fxzx/select.html','layui-icon',NULL,'true','5','2'),(23,'优惠卷记录','pages/yhjjl/select.html',NULL,NULL,'true','8','2'),(22,'优惠卷管理','pages/yhj/select.html',NULL,NULL,'true','8','2'),(20,'商家列表','pages/md/select.html',NULL,NULL,'true','5','2'),(24,'门店分类','pages/mdclass/select.html',NULL,NULL,'true','5','2'),(25,'菜品规格名','pages/mdproductggm/select.html',NULL,NULL,'true','5','2'),(26,'餐品规格值','pages/mdproductvalue/select.html',NULL,NULL,'true','5','2'),(27,'团购详情','pages/mdtgxq/select.html',NULL,NULL,'true','29','3'),(28,'角色管理','pages/qx/role.html','layui-icon','&#xe610;','false',NULL,'1');
/*!40000 ALTER TABLE `qx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '注册协议',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `qxid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (11,'管理员','管理员','1,2,3,4,5,6,7,8,9,10'),(14,'代理商','1','1,2,3,4,5,6,7,8,14,9,10,12,21,16,17,18,19,23,22,20,24,25,26,27,28');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tgpj`
--

DROP TABLE IF EXISTS `tgpj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tgpj` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '团购评价',
  `mdid` varchar(255) DEFAULT NULL COMMENT '门店id',
  `mdtgid` varchar(255) DEFAULT NULL,
  `menberid` varchar(11) DEFAULT NULL COMMENT '会员id',
  `time` varchar(255) DEFAULT NULL,
  `times` varchar(255) DEFAULT NULL,
  `text` text COMMENT '内容',
  `px` varchar(255) DEFAULT NULL COMMENT '评星',
  `lx` varchar(255) DEFAULT '1' COMMENT '1 会员说 2 商家说',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tgpj`
--

LOCK TABLES `tgpj` WRITE;
/*!40000 ALTER TABLE `tgpj` DISABLE KEYS */;
INSERT INTO `tgpj` VALUES (14,'28','15','11','22',NULL,'123','3',NULL),(15,'28','15','28','2024-07-19 11:00:10','1721401210','11','2','1'),(16,'28','15','28','2024-07-19 11:04:53','1721401493','undefined','5','1'),(17,'28','15','28','2024-07-19 11:05:58','1721401558','666','5','1'),(18,'28','15','28','2024-07-19 11:18:22','1721402302','dsdsd ',NULL,'2'),(19,'28','15','11','2024-07-20 12:34:54','1721450094','11',NULL,'2');
/*!40000 ALTER TABLE `tgpj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txgl`
--

DROP TABLE IF EXISTS `txgl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txgl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '提现管理',
  `lx` varchar(255) DEFAULT NULL COMMENT '1提现中  2 提现成功 3 提现失败',
  `menberid` varchar(255) DEFAULT NULL COMMENT '会员id',
  `jine` varchar(255) DEFAULT NULL COMMENT '金额',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `times` varchar(255) DEFAULT NULL COMMENT '时间戳',
  `type` varchar(255) DEFAULT '1' COMMENT '1 会员 2商家',
  `namess` varchar(255) DEFAULT NULL COMMENT '收款人姓名',
  `zh` varchar(255) DEFAULT NULL COMMENT '账户',
  `skyy` varchar(255) DEFAULT NULL COMMENT '收款银行',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txgl`
--

LOCK TABLES `txgl` WRITE;
/*!40000 ALTER TABLE `txgl` DISABLE KEYS */;
INSERT INTO `txgl` VALUES (32,'1','36','10','2024-07-26 05:08:23','1721984903','2','广泛广泛','5656564545','5454545'),(31,'1','28','10','2024-07-26 04:08:51','1721981331','1','6555','大苏打实打实','大苏打撒旦');
/*!40000 ALTER TABLE `txgl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xtsz`
--

DROP TABLE IF EXISTS `xtsz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xtsz` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统设置',
  `tel` varchar(255) DEFAULT NULL COMMENT '平台电话',
  `about` text COMMENT '关于我们',
  `bj1` varchar(255) DEFAULT NULL COMMENT '背景1',
  `bj2` varchar(255) DEFAULT NULL COMMENT '背景2',
  `bj3` varchar(255) DEFAULT NULL COMMENT '背景3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xtsz`
--

LOCK TABLES `xtsz` WRITE;
/*!40000 ALTER TABLE `xtsz` DISABLE KEYS */;
INSERT INTO `xtsz` VALUES (11,'1111','133','/Uploads/bj.jpg','/Uploads/bj.jpg','/Uploads/bj.jpg');
/*!40000 ALTER TABLE `xtsz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yhj`
--

DROP TABLE IF EXISTS `yhj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yhj` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠卷',
  `jg` varchar(255) DEFAULT NULL COMMENT '可用金额',
  `mje` varchar(255) DEFAULT NULL COMMENT '满多少钱',
  `images` varchar(255) DEFAULT NULL COMMENT '发送图片',
  `type` varchar(255) DEFAULT '2' COMMENT '1 门店优惠卷 2 平台发送优惠卷',
  `starttime` varchar(255) DEFAULT NULL COMMENT '发放开始时间',
  `endtime` varchar(255) DEFAULT NULL COMMENT '发放结束时间',
  `sl` varchar(255) DEFAULT NULL COMMENT '发送数量',
  `mdid` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `times` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `lx` varchar(255) DEFAULT '1' COMMENT '1 发行中 2 已停用',
  `mdtgid` varchar(255) DEFAULT NULL COMMENT '团购id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yhj`
--

LOCK TABLES `yhj` WRITE;
/*!40000 ALTER TABLE `yhj` DISABLE KEYS */;
INSERT INTO `yhj` VALUES (21,'5','100','/Uploads/images/20240720/704126c838b01547206f50ea9f524c55.png','2','2024-07-20','2025-07-20','200','','2024-07-26 01:32:13','1721971933','全场通用券','1',NULL),(27,'100','10','http://ckm.wl66.com.cn/Uploads/f20240726173500339062.png','1','2024-07-26','2024-10-26','10','36','2024-07-26 05:35:32','1721986532','六','1','25');
/*!40000 ALTER TABLE `yhj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yhjjl`
--

DROP TABLE IF EXISTS `yhjjl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yhjjl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠卷记录',
  `yhjid` varchar(255) DEFAULT NULL COMMENT '优惠卷id',
  `lx` varchar(255) DEFAULT NULL COMMENT '1待使用  2 已使用 3 已失效',
  `menberid` varchar(255) DEFAULT NULL,
  `sytime` varchar(255) DEFAULT NULL COMMENT '使用时间',
  `syendtime` varchar(255) DEFAULT NULL COMMENT '使用结束时间',
  `sytimes` varchar(255) DEFAULT NULL COMMENT '时间戳',
  `syendtimes` varchar(255) DEFAULT NULL COMMENT '时间戳',
  `mdid` varchar(255) DEFAULT NULL COMMENT '门店id',
  `time` varchar(255) DEFAULT NULL COMMENT '发放时间',
  `times` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yhjjl`
--

LOCK TABLES `yhjjl` WRITE;
/*!40000 ALTER TABLE `yhjjl` DISABLE KEYS */;
INSERT INTO `yhjjl` VALUES (45,'27','1','28',NULL,NULL,NULL,NULL,'36','2024-07-26 05:35:32','1721986532'),(44,'27','1',NULL,NULL,NULL,NULL,NULL,'36','2024-07-26 05:35:32','1721986532'),(43,'27','1',NULL,NULL,NULL,NULL,NULL,'36','2024-07-26 05:35:32','1721986532'),(42,'27','1',NULL,NULL,NULL,NULL,NULL,'36','2024-07-26 05:35:32','1721986532'),(41,'27','1',NULL,NULL,NULL,NULL,NULL,'36','2024-07-26 05:35:32','1721986532'),(40,'27','1',NULL,NULL,NULL,NULL,NULL,'36','2024-07-26 05:35:32','1721986532'),(46,'27','1',NULL,NULL,NULL,NULL,NULL,'36','2024-07-26 05:35:32','1721986532'),(47,'27','1',NULL,NULL,NULL,NULL,NULL,'36','2024-07-26 05:35:32','1721986532'),(48,'27','1',NULL,NULL,NULL,NULL,NULL,'36','2024-07-26 05:35:32','1721986532'),(49,'27','1',NULL,NULL,NULL,NULL,NULL,'36','2024-07-26 05:35:32','1721986532');
/*!40000 ALTER TABLE `yhjjl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zk`
--

DROP TABLE IF EXISTS `zk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zk` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '桌卡',
  `mdid` varchar(255) DEFAULT NULL COMMENT '门店id',
  `zh` varchar(255) DEFAULT NULL COMMENT '桌号',
  `zdrs` varchar(255) DEFAULT NULL COMMENT '最大人数',
  `zt` varchar(255) DEFAULT '1' COMMENT '1  未使用 2 使用中',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zk`
--

LOCK TABLES `zk` WRITE;
/*!40000 ALTER TABLE `zk` DISABLE KEYS */;
INSERT INTO `zk` VALUES (24,'34','001','1','1'),(23,'33','001','10人','1'),(25,'33','002','111','1');
/*!40000 ALTER TABLE `zk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'changkeman'
--

--
-- Dumping routines for database 'changkeman'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-27 13:45:07
