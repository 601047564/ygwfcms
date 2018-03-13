# Host: localhost  (Version: 5.5.53)
# Date: 2018-03-12 00:16:38
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "ygw_admin_menu"
#

DROP TABLE IF EXISTS `ygw_admin_menu`;
CREATE TABLE `ygw_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parent_id`),
  KEY `model` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

#
# Data for table "ygw_admin_menu"
#

INSERT INTO `ygw_admin_menu` VALUES (1,0,0,1,20,'admin','Plugin','default','','插件管理','cloud','插件管理'),(2,1,1,1,10000,'admin','Hook','index','','钩子管理','','钩子管理'),(3,2,1,0,10000,'admin','Hook','plugins','','钩子插件管理','','钩子插件管理'),(4,2,2,0,10000,'admin','Hook','pluginListOrder','','钩子插件排序','','钩子插件排序'),(5,2,1,0,10000,'admin','Hook','sync','','同步钩子','','同步钩子'),(6,0,0,1,0,'admin','Setting','default','','设置','cogs','系统设置入口'),(7,6,1,1,50,'admin','Link','index','','友情链接','','友情链接管理'),(8,7,1,0,10000,'admin','Link','add','','添加友情链接','','添加友情链接'),(9,7,2,0,10000,'admin','Link','addPost','','添加友情链接提交保存','','添加友情链接提交保存'),(10,7,1,0,10000,'admin','Link','edit','','编辑友情链接','','编辑友情链接'),(11,7,2,0,10000,'admin','Link','editPost','','编辑友情链接提交保存','','编辑友情链接提交保存'),(12,7,2,0,10000,'admin','Link','delete','','删除友情链接','','删除友情链接'),(13,7,2,0,10000,'admin','Link','listOrder','','友情链接排序','','友情链接排序'),(14,7,2,0,10000,'admin','Link','toggle','','友情链接显示隐藏','','友情链接显示隐藏'),(15,6,1,1,10,'admin','Mailer','index','','邮箱配置','','邮箱配置'),(16,15,2,0,10000,'admin','Mailer','indexPost','','邮箱配置提交保存','','邮箱配置提交保存'),(17,15,1,0,10000,'admin','Mailer','template','','邮件模板','','邮件模板'),(18,15,2,0,10000,'admin','Mailer','templatePost','','邮件模板提交','','邮件模板提交'),(19,15,1,0,10000,'admin','Mailer','test','','邮件发送测试','','邮件发送测试'),(20,6,1,0,10000,'admin','Menu','index','','后台菜单','','后台菜单管理'),(21,20,1,0,10000,'admin','Menu','lists','','所有菜单','','后台所有菜单列表'),(22,20,1,0,10000,'admin','Menu','add','','后台菜单添加','','后台菜单添加'),(23,20,2,0,10000,'admin','Menu','addPost','','后台菜单添加提交保存','','后台菜单添加提交保存'),(24,20,1,0,10000,'admin','Menu','edit','','后台菜单编辑','','后台菜单编辑'),(25,20,2,0,10000,'admin','Menu','editPost','','后台菜单编辑提交保存','','后台菜单编辑提交保存'),(26,20,2,0,10000,'admin','Menu','delete','','后台菜单删除','','后台菜单删除'),(27,20,2,0,10000,'admin','Menu','listOrder','','后台菜单排序','','后台菜单排序'),(28,20,1,0,10000,'admin','Menu','getActions','','导入新后台菜单','','导入新后台菜单'),(29,6,1,1,30,'admin','Nav','index','','导航管理','','导航管理'),(30,29,1,0,10000,'admin','Nav','add','','添加导航','','添加导航'),(31,29,2,0,10000,'admin','Nav','addPost','','添加导航提交保存','','添加导航提交保存'),(32,29,1,0,10000,'admin','Nav','edit','','编辑导航','','编辑导航'),(33,29,2,0,10000,'admin','Nav','editPost','','编辑导航提交保存','','编辑导航提交保存'),(34,29,2,0,10000,'admin','Nav','delete','','删除导航','','删除导航'),(35,29,1,0,10000,'admin','NavMenu','index','','导航菜单','','导航菜单'),(36,35,1,0,10000,'admin','NavMenu','add','','添加导航菜单','','添加导航菜单'),(37,35,2,0,10000,'admin','NavMenu','addPost','','添加导航菜单提交保存','','添加导航菜单提交保存'),(38,35,1,0,10000,'admin','NavMenu','edit','','编辑导航菜单','','编辑导航菜单'),(39,35,2,0,10000,'admin','NavMenu','editPost','','编辑导航菜单提交保存','','编辑导航菜单提交保存'),(40,35,2,0,10000,'admin','NavMenu','delete','','删除导航菜单','','删除导航菜单'),(41,35,2,0,10000,'admin','NavMenu','listOrder','','导航菜单排序','','导航菜单排序'),(42,1,1,1,10000,'admin','Plugin','index','','插件列表','','插件列表'),(43,42,2,0,10000,'admin','Plugin','toggle','','插件启用禁用','','插件启用禁用'),(44,42,1,0,10000,'admin','Plugin','setting','','插件设置','','插件设置'),(45,42,2,0,10000,'admin','Plugin','settingPost','','插件设置提交','','插件设置提交'),(46,42,2,0,10000,'admin','Plugin','install','','插件安装','','插件安装'),(47,42,2,0,10000,'admin','Plugin','update','','插件更新','','插件更新'),(48,42,2,0,10000,'admin','Plugin','uninstall','','卸载插件','','卸载插件'),(49,109,0,1,10000,'admin','User','default','','管理组','','管理组'),(50,49,1,1,10000,'admin','Rbac','index','','角色管理','','角色管理'),(51,50,1,0,10000,'admin','Rbac','roleAdd','','添加角色','','添加角色'),(52,50,2,0,10000,'admin','Rbac','roleAddPost','','添加角色提交','','添加角色提交'),(53,50,1,0,10000,'admin','Rbac','roleEdit','','编辑角色','','编辑角色'),(54,50,2,0,10000,'admin','Rbac','roleEditPost','','编辑角色提交','','编辑角色提交'),(55,50,2,0,10000,'admin','Rbac','roleDelete','','删除角色','','删除角色'),(56,50,1,0,10000,'admin','Rbac','authorize','','设置角色权限','','设置角色权限'),(57,50,2,0,10000,'admin','Rbac','authorizePost','','角色授权提交','','角色授权提交'),(58,0,1,0,10000,'admin','RecycleBin','index','','回收站','','回收站'),(59,58,2,0,10000,'admin','RecycleBin','restore','','回收站还原','','回收站还原'),(60,58,2,0,10000,'admin','RecycleBin','delete','','回收站彻底删除','','回收站彻底删除'),(61,6,1,1,10000,'admin','Route','index','','URL美化','','URL规则管理'),(62,61,1,0,10000,'admin','Route','add','','添加路由规则','','添加路由规则'),(63,61,2,0,10000,'admin','Route','addPost','','添加路由规则提交','','添加路由规则提交'),(64,61,1,0,10000,'admin','Route','edit','','路由规则编辑','','路由规则编辑'),(65,61,2,0,10000,'admin','Route','editPost','','路由规则编辑提交','','路由规则编辑提交'),(66,61,2,0,10000,'admin','Route','delete','','路由规则删除','','路由规则删除'),(67,61,2,0,10000,'admin','Route','ban','','路由规则禁用','','路由规则禁用'),(68,61,2,0,10000,'admin','Route','open','','路由规则启用','','路由规则启用'),(69,61,2,0,10000,'admin','Route','listOrder','','路由规则排序','','路由规则排序'),(70,61,1,0,10000,'admin','Route','select','','选择URL','','选择URL'),(71,6,1,1,0,'admin','Setting','site','','网站信息','','网站信息'),(72,71,2,0,10000,'admin','Setting','sitePost','','网站信息设置提交','','网站信息设置提交'),(73,6,1,0,10000,'admin','Setting','password','','密码修改','','密码修改'),(74,73,2,0,10000,'admin','Setting','passwordPost','','密码修改提交','','密码修改提交'),(75,6,1,1,10000,'admin','Setting','upload','','上传设置','','上传设置'),(76,75,2,0,10000,'admin','Setting','uploadPost','','上传设置提交','','上传设置提交'),(77,6,1,0,10000,'admin','Setting','clearCache','','清除缓存','','清除缓存'),(78,6,1,1,40,'admin','Slide','index','','幻灯片管理','','幻灯片管理'),(79,78,1,0,10000,'admin','Slide','add','','添加幻灯片','','添加幻灯片'),(80,78,2,0,10000,'admin','Slide','addPost','','添加幻灯片提交','','添加幻灯片提交'),(81,78,1,0,10000,'admin','Slide','edit','','编辑幻灯片','','编辑幻灯片'),(82,78,2,0,10000,'admin','Slide','editPost','','编辑幻灯片提交','','编辑幻灯片提交'),(83,78,2,0,10000,'admin','Slide','delete','','删除幻灯片','','删除幻灯片'),(84,78,1,0,10000,'admin','SlideItem','index','','幻灯片页面列表','','幻灯片页面列表'),(85,84,1,0,10000,'admin','SlideItem','add','','幻灯片页面添加','','幻灯片页面添加'),(86,84,2,0,10000,'admin','SlideItem','addPost','','幻灯片页面添加提交','','幻灯片页面添加提交'),(87,84,1,0,10000,'admin','SlideItem','edit','','幻灯片页面编辑','','幻灯片页面编辑'),(88,84,2,0,10000,'admin','SlideItem','editPost','','幻灯片页面编辑提交','','幻灯片页面编辑提交'),(89,84,2,0,10000,'admin','SlideItem','delete','','幻灯片页面删除','','幻灯片页面删除'),(90,84,2,0,10000,'admin','SlideItem','ban','','幻灯片页面隐藏','','幻灯片页面隐藏'),(91,84,2,0,10000,'admin','SlideItem','cancelBan','','幻灯片页面显示','','幻灯片页面显示'),(92,84,2,0,10000,'admin','SlideItem','listOrder','','幻灯片页面排序','','幻灯片页面排序'),(93,6,1,1,10000,'admin','Storage','index','','文件存储','','文件存储'),(94,93,2,0,10000,'admin','Storage','settingPost','','文件存储设置提交','','文件存储设置提交'),(95,6,1,1,20,'admin','Theme','index','','模板管理','','模板管理'),(96,95,1,0,10000,'admin','Theme','install','','安装模板','','安装模板'),(97,95,2,0,10000,'admin','Theme','uninstall','','卸载模板','','卸载模板'),(98,95,2,0,10000,'admin','Theme','installTheme','','模板安装','','模板安装'),(99,95,2,0,10000,'admin','Theme','update','','模板更新','','模板更新'),(100,95,2,0,10000,'admin','Theme','active','','启用模板','','启用模板'),(101,95,1,0,10000,'admin','Theme','files','','模板文件列表','','启用模板'),(102,95,1,0,10000,'admin','Theme','fileSetting','','模板文件设置','','模板文件设置'),(103,95,1,0,10000,'admin','Theme','fileArrayData','','模板文件数组数据列表','','模板文件数组数据列表'),(104,95,2,0,10000,'admin','Theme','fileArrayDataEdit','','模板文件数组数据添加编辑','','模板文件数组数据添加编辑'),(105,95,2,0,10000,'admin','Theme','fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存','','模板文件数组数据添加编辑提交保存'),(106,95,2,0,10000,'admin','Theme','fileArrayDataDelete','','模板文件数组数据删除','','模板文件数组数据删除'),(107,95,2,0,10000,'admin','Theme','settingPost','','模板文件编辑提交保存','','模板文件编辑提交保存'),(108,95,1,0,10000,'admin','Theme','dataSource','','模板文件设置数据源','','模板文件设置数据源'),(109,0,0,1,10,'user','AdminIndex','default','','用户管理','group','用户管理'),(110,49,1,1,10000,'admin','User','index','','管理员','','管理员管理'),(111,110,1,0,10000,'admin','User','add','','管理员添加','','管理员添加'),(112,110,2,0,10000,'admin','User','addPost','','管理员添加提交','','管理员添加提交'),(113,110,1,0,10000,'admin','User','edit','','管理员编辑','','管理员编辑'),(114,110,2,0,10000,'admin','User','editPost','','管理员编辑提交','','管理员编辑提交'),(115,110,1,0,10000,'admin','User','userInfo','','个人信息','','管理员个人信息修改'),(116,110,2,0,10000,'admin','User','userInfoPost','','管理员个人信息修改提交','','管理员个人信息修改提交'),(117,110,2,0,10000,'admin','User','delete','','管理员删除','','管理员删除'),(118,110,2,0,10000,'admin','User','ban','','停用管理员','','停用管理员'),(119,110,2,0,10000,'admin','User','cancelBan','','启用管理员','','启用管理员'),(120,0,0,1,30,'portal','AdminIndex','default','','门户管理','th','门户管理'),(121,120,1,1,10000,'portal','AdminArticle','index','','文章管理','','文章列表'),(122,121,1,0,10000,'portal','AdminArticle','add','','添加文章','','添加文章'),(123,121,2,0,10000,'portal','AdminArticle','addPost','','添加文章提交','','添加文章提交'),(124,121,1,0,10000,'portal','AdminArticle','edit','','编辑文章','','编辑文章'),(125,121,2,0,10000,'portal','AdminArticle','editPost','','编辑文章提交','','编辑文章提交'),(126,121,2,0,10000,'portal','AdminArticle','delete','','文章删除','','文章删除'),(127,121,2,0,10000,'portal','AdminArticle','publish','','文章发布','','文章发布'),(128,121,2,0,10000,'portal','AdminArticle','top','','文章置顶','','文章置顶'),(129,121,2,0,10000,'portal','AdminArticle','recommend','','文章推荐','','文章推荐'),(130,121,2,0,10000,'portal','AdminArticle','listOrder','','文章排序','','文章排序'),(131,120,1,1,10000,'portal','AdminCategory','index','','分类管理','','文章分类列表'),(132,131,1,0,10000,'portal','AdminCategory','add','','添加文章分类','','添加文章分类'),(133,131,2,0,10000,'portal','AdminCategory','addPost','','添加文章分类提交','','添加文章分类提交'),(134,131,1,0,10000,'portal','AdminCategory','edit','','编辑文章分类','','编辑文章分类'),(135,131,2,0,10000,'portal','AdminCategory','editPost','','编辑文章分类提交','','编辑文章分类提交'),(136,131,1,0,10000,'portal','AdminCategory','select','','文章分类选择对话框','','文章分类选择对话框'),(137,131,2,0,10000,'portal','AdminCategory','listOrder','','文章分类排序','','文章分类排序'),(138,131,2,0,10000,'portal','AdminCategory','delete','','删除文章分类','','删除文章分类'),(139,120,1,1,10000,'portal','AdminPage','index','','页面管理','','页面管理'),(140,139,1,0,10000,'portal','AdminPage','add','','添加页面','','添加页面'),(141,139,2,0,10000,'portal','AdminPage','addPost','','添加页面提交','','添加页面提交'),(142,139,1,0,10000,'portal','AdminPage','edit','','编辑页面','','编辑页面'),(143,139,2,0,10000,'portal','AdminPage','editPost','','编辑页面提交','','编辑页面提交'),(144,139,2,0,10000,'portal','AdminPage','delete','','删除页面','','删除页面'),(145,120,1,1,10000,'portal','AdminTag','index','','文章标签','','文章标签'),(146,145,1,0,10000,'portal','AdminTag','add','','添加文章标签','','添加文章标签'),(147,145,2,0,10000,'portal','AdminTag','addPost','','添加文章标签提交','','添加文章标签提交'),(148,145,2,0,10000,'portal','AdminTag','upStatus','','更新标签状态','','更新标签状态'),(149,145,2,0,10000,'portal','AdminTag','delete','','删除文章标签','','删除文章标签'),(150,0,1,0,10000,'user','AdminAsset','index','','资源管理','file','资源管理列表'),(151,150,2,0,10000,'user','AdminAsset','delete','','删除文件','','删除文件'),(152,109,0,1,10000,'user','AdminIndex','default1','','用户组','','用户组'),(153,152,1,1,10000,'user','AdminIndex','index','','本站用户','','本站用户'),(154,153,2,0,10000,'user','AdminIndex','ban','','本站用户拉黑','','本站用户拉黑'),(155,153,2,0,10000,'user','AdminIndex','cancelBan','','本站用户启用','','本站用户启用'),(156,152,1,1,10000,'user','AdminOauth','index','','第三方用户','','第三方用户'),(157,156,2,0,10000,'user','AdminOauth','delete','','删除第三方用户绑定','','删除第三方用户绑定'),(158,6,1,1,10000,'user','AdminUserAction','index','','用户操作管理','','用户操作管理'),(159,158,1,0,10000,'user','AdminUserAction','edit','','编辑用户操作','','编辑用户操作'),(160,158,2,0,10000,'user','AdminUserAction','editPost','','编辑用户操作提交','','编辑用户操作提交'),(161,158,1,0,10000,'user','AdminUserAction','sync','','同步用户操作','','同步用户操作');

#
# Structure for table "ygw_asset"
#

DROP TABLE IF EXISTS `ygw_asset`;
CREATE TABLE `ygw_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

#
# Data for table "ygw_asset"
#

INSERT INTO `ygw_asset` VALUES (1,1,32125,1517914785,1,0,'80256c7e890fb3f4f63d209d0704996bd873805aee398522495b11928089be64','QQ图片20180206183757.png','portal/20180206/b175933c317c12a40673fc19bc11d1c5.png','80256c7e890fb3f4f63d209d0704996b','e772ac5b58038a15c01af8efd01755e2b1c7f509','png',NULL),(2,1,2390769,1517970622,1,0,'4154e5bbb76c272eb002ad9f53c61be29e9baa9b051e3f958831bf165bab59c8','4154e5bbb76c272eb002ad9f53c61be2.jpg','portal/20180207/3d1468d4304cdf706a020814c91b21ae.jpg','4154e5bbb76c272eb002ad9f53c61be2','da4e1cdf725f9bbeeb431ccd2ab9d3f01aa07277','jpg',NULL),(3,1,139722,1517970646,1,0,'18b0c386f2f22bcbad9252c7a4d703c7fabcde3bc86bea07db768e4793d2f9bf','235111-14022F9410899.jpg','portal/20180207/130d57c321bf163b60d06f95d5bc2b07.jpg','18b0c386f2f22bcbad9252c7a4d703c7','c3abf958c74b3f05dca5017832d1942a7e0dc08d','jpg',NULL),(4,1,777835,1519708650,1,0,'9d377b10ce778c4938b3c7e2c63a229ae9ac65c5d7d2a9fab8d55e48b03f8304','Penguins.jpg','portal/20180227/6b1f94f4097117b79c111de13f7dc585.jpg','9d377b10ce778c4938b3c7e2c63a229a','df7be9dc4f467187783aca68c7ce98e4df2172d0','jpg',NULL),(5,1,780831,1519709594,1,0,'2b04df3ecc1d94afddff082d139c6f15eddc9ec63bb238be8f25a5ea49433b6d','Koala.jpg','portal/20180227/4f80c3bee95039c38e15d1ed5651a44c.jpg','2b04df3ecc1d94afddff082d139c6f15','9c3dcb1f9185a314ea25d51aed3b5881b32f420c','jpg',NULL),(6,1,595284,1519709997,1,0,'bdf3bf1da3405725be763540d6601144626863c89f9df456fcdad064b8608d13','Hydrangeas.jpg','portal/20180227/993e0e5cc40acdc3cf100fda3af4d42d.jpg','bdf3bf1da3405725be763540d6601144','d997e1c37edc05ad87d03603e32ad495ee2cfce1','jpg',NULL),(7,1,775702,1519711191,1,0,'5a44c7ba5bbe4ec867233d67e4806848c50ca36cfaff120fd0836e89f627a52a','Jellyfish.jpg','portal/20180227/65bc37c239bd11c59a9bf7085c1c16e0.jpg','5a44c7ba5bbe4ec867233d67e4806848','3b15be84aff20b322a93c0b9aaa62e25ad33b4b4','jpg',NULL),(8,1,12785,1520130285,1,0,'7fda9b9427457015c2c099a2e9cd924af733007b8d6be49f3c068e87dc65f506','5_White_logo_on_black_265x66.png','portal/20180304/6283dfda756261b3cb710bdefaf71cd2.png','7fda9b9427457015c2c099a2e9cd924a','066ef8cdd0845cddd733f21bcc7875ca5276aa90','png',NULL);

#
# Structure for table "ygw_auth_access"
#

DROP TABLE IF EXISTS `ygw_auth_access`;
CREATE TABLE `ygw_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

#
# Data for table "ygw_auth_access"
#


#
# Structure for table "ygw_auth_rule"
#

DROP TABLE IF EXISTS `ygw_auth_rule`;
CREATE TABLE `ygw_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

#
# Data for table "ygw_auth_rule"
#

INSERT INTO `ygw_auth_rule` VALUES (1,1,'admin','admin_url','admin/Hook/index','','钩子管理',''),(2,1,'admin','admin_url','admin/Hook/plugins','','钩子插件管理',''),(3,1,'admin','admin_url','admin/Hook/pluginListOrder','','钩子插件排序',''),(4,1,'admin','admin_url','admin/Hook/sync','','同步钩子',''),(5,1,'admin','admin_url','admin/Link/index','','友情链接',''),(6,1,'admin','admin_url','admin/Link/add','','添加友情链接',''),(7,1,'admin','admin_url','admin/Link/addPost','','添加友情链接提交保存',''),(8,1,'admin','admin_url','admin/Link/edit','','编辑友情链接',''),(9,1,'admin','admin_url','admin/Link/editPost','','编辑友情链接提交保存',''),(10,1,'admin','admin_url','admin/Link/delete','','删除友情链接',''),(11,1,'admin','admin_url','admin/Link/listOrder','','友情链接排序',''),(12,1,'admin','admin_url','admin/Link/toggle','','友情链接显示隐藏',''),(13,1,'admin','admin_url','admin/Mailer/index','','邮箱配置',''),(14,1,'admin','admin_url','admin/Mailer/indexPost','','邮箱配置提交保存',''),(15,1,'admin','admin_url','admin/Mailer/template','','邮件模板',''),(16,1,'admin','admin_url','admin/Mailer/templatePost','','邮件模板提交',''),(17,1,'admin','admin_url','admin/Mailer/test','','邮件发送测试',''),(18,1,'admin','admin_url','admin/Menu/index','','后台菜单',''),(19,1,'admin','admin_url','admin/Menu/lists','','所有菜单',''),(20,1,'admin','admin_url','admin/Menu/add','','后台菜单添加',''),(21,1,'admin','admin_url','admin/Menu/addPost','','后台菜单添加提交保存',''),(22,1,'admin','admin_url','admin/Menu/edit','','后台菜单编辑',''),(23,1,'admin','admin_url','admin/Menu/editPost','','后台菜单编辑提交保存',''),(24,1,'admin','admin_url','admin/Menu/delete','','后台菜单删除',''),(25,1,'admin','admin_url','admin/Menu/listOrder','','后台菜单排序',''),(26,1,'admin','admin_url','admin/Menu/getActions','','导入新后台菜单',''),(27,1,'admin','admin_url','admin/Nav/index','','导航管理',''),(28,1,'admin','admin_url','admin/Nav/add','','添加导航',''),(29,1,'admin','admin_url','admin/Nav/addPost','','添加导航提交保存',''),(30,1,'admin','admin_url','admin/Nav/edit','','编辑导航',''),(31,1,'admin','admin_url','admin/Nav/editPost','','编辑导航提交保存',''),(32,1,'admin','admin_url','admin/Nav/delete','','删除导航',''),(33,1,'admin','admin_url','admin/NavMenu/index','','导航菜单',''),(34,1,'admin','admin_url','admin/NavMenu/add','','添加导航菜单',''),(35,1,'admin','admin_url','admin/NavMenu/addPost','','添加导航菜单提交保存',''),(36,1,'admin','admin_url','admin/NavMenu/edit','','编辑导航菜单',''),(37,1,'admin','admin_url','admin/NavMenu/editPost','','编辑导航菜单提交保存',''),(38,1,'admin','admin_url','admin/NavMenu/delete','','删除导航菜单',''),(39,1,'admin','admin_url','admin/NavMenu/listOrder','','导航菜单排序',''),(40,1,'admin','admin_url','admin/Plugin/default','','插件管理',''),(41,1,'admin','admin_url','admin/Plugin/index','','插件列表',''),(42,1,'admin','admin_url','admin/Plugin/toggle','','插件启用禁用',''),(43,1,'admin','admin_url','admin/Plugin/setting','','插件设置',''),(44,1,'admin','admin_url','admin/Plugin/settingPost','','插件设置提交',''),(45,1,'admin','admin_url','admin/Plugin/install','','插件安装',''),(46,1,'admin','admin_url','admin/Plugin/update','','插件更新',''),(47,1,'admin','admin_url','admin/Plugin/uninstall','','卸载插件',''),(48,1,'admin','admin_url','admin/Rbac/index','','角色管理',''),(49,1,'admin','admin_url','admin/Rbac/roleAdd','','添加角色',''),(50,1,'admin','admin_url','admin/Rbac/roleAddPost','','添加角色提交',''),(51,1,'admin','admin_url','admin/Rbac/roleEdit','','编辑角色',''),(52,1,'admin','admin_url','admin/Rbac/roleEditPost','','编辑角色提交',''),(53,1,'admin','admin_url','admin/Rbac/roleDelete','','删除角色',''),(54,1,'admin','admin_url','admin/Rbac/authorize','','设置角色权限',''),(55,1,'admin','admin_url','admin/Rbac/authorizePost','','角色授权提交',''),(56,1,'admin','admin_url','admin/RecycleBin/index','','回收站',''),(57,1,'admin','admin_url','admin/RecycleBin/restore','','回收站还原',''),(58,1,'admin','admin_url','admin/RecycleBin/delete','','回收站彻底删除',''),(59,1,'admin','admin_url','admin/Route/index','','URL美化',''),(60,1,'admin','admin_url','admin/Route/add','','添加路由规则',''),(61,1,'admin','admin_url','admin/Route/addPost','','添加路由规则提交',''),(62,1,'admin','admin_url','admin/Route/edit','','路由规则编辑',''),(63,1,'admin','admin_url','admin/Route/editPost','','路由规则编辑提交',''),(64,1,'admin','admin_url','admin/Route/delete','','路由规则删除',''),(65,1,'admin','admin_url','admin/Route/ban','','路由规则禁用',''),(66,1,'admin','admin_url','admin/Route/open','','路由规则启用',''),(67,1,'admin','admin_url','admin/Route/listOrder','','路由规则排序',''),(68,1,'admin','admin_url','admin/Route/select','','选择URL',''),(69,1,'admin','admin_url','admin/Setting/default','','设置',''),(70,1,'admin','admin_url','admin/Setting/site','','网站信息',''),(71,1,'admin','admin_url','admin/Setting/sitePost','','网站信息设置提交',''),(72,1,'admin','admin_url','admin/Setting/password','','密码修改',''),(73,1,'admin','admin_url','admin/Setting/passwordPost','','密码修改提交',''),(74,1,'admin','admin_url','admin/Setting/upload','','上传设置',''),(75,1,'admin','admin_url','admin/Setting/uploadPost','','上传设置提交',''),(76,1,'admin','admin_url','admin/Setting/clearCache','','清除缓存',''),(77,1,'admin','admin_url','admin/Slide/index','','幻灯片管理',''),(78,1,'admin','admin_url','admin/Slide/add','','添加幻灯片',''),(79,1,'admin','admin_url','admin/Slide/addPost','','添加幻灯片提交',''),(80,1,'admin','admin_url','admin/Slide/edit','','编辑幻灯片',''),(81,1,'admin','admin_url','admin/Slide/editPost','','编辑幻灯片提交',''),(82,1,'admin','admin_url','admin/Slide/delete','','删除幻灯片',''),(83,1,'admin','admin_url','admin/SlideItem/index','','幻灯片页面列表',''),(84,1,'admin','admin_url','admin/SlideItem/add','','幻灯片页面添加',''),(85,1,'admin','admin_url','admin/SlideItem/addPost','','幻灯片页面添加提交',''),(86,1,'admin','admin_url','admin/SlideItem/edit','','幻灯片页面编辑',''),(87,1,'admin','admin_url','admin/SlideItem/editPost','','幻灯片页面编辑提交',''),(88,1,'admin','admin_url','admin/SlideItem/delete','','幻灯片页面删除',''),(89,1,'admin','admin_url','admin/SlideItem/ban','','幻灯片页面隐藏',''),(90,1,'admin','admin_url','admin/SlideItem/cancelBan','','幻灯片页面显示',''),(91,1,'admin','admin_url','admin/SlideItem/listOrder','','幻灯片页面排序',''),(92,1,'admin','admin_url','admin/Storage/index','','文件存储',''),(93,1,'admin','admin_url','admin/Storage/settingPost','','文件存储设置提交',''),(94,1,'admin','admin_url','admin/Theme/index','','模板管理',''),(95,1,'admin','admin_url','admin/Theme/install','','安装模板',''),(96,1,'admin','admin_url','admin/Theme/uninstall','','卸载模板',''),(97,1,'admin','admin_url','admin/Theme/installTheme','','模板安装',''),(98,1,'admin','admin_url','admin/Theme/update','','模板更新',''),(99,1,'admin','admin_url','admin/Theme/active','','启用模板',''),(100,1,'admin','admin_url','admin/Theme/files','','模板文件列表',''),(101,1,'admin','admin_url','admin/Theme/fileSetting','','模板文件设置',''),(102,1,'admin','admin_url','admin/Theme/fileArrayData','','模板文件数组数据列表',''),(103,1,'admin','admin_url','admin/Theme/fileArrayDataEdit','','模板文件数组数据添加编辑',''),(104,1,'admin','admin_url','admin/Theme/fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存',''),(105,1,'admin','admin_url','admin/Theme/fileArrayDataDelete','','模板文件数组数据删除',''),(106,1,'admin','admin_url','admin/Theme/settingPost','','模板文件编辑提交保存',''),(107,1,'admin','admin_url','admin/Theme/dataSource','','模板文件设置数据源',''),(108,1,'admin','admin_url','admin/User/default','','管理组',''),(109,1,'admin','admin_url','admin/User/index','','管理员',''),(110,1,'admin','admin_url','admin/User/add','','管理员添加',''),(111,1,'admin','admin_url','admin/User/addPost','','管理员添加提交',''),(112,1,'admin','admin_url','admin/User/edit','','管理员编辑',''),(113,1,'admin','admin_url','admin/User/editPost','','管理员编辑提交',''),(114,1,'admin','admin_url','admin/User/userInfo','','个人信息',''),(115,1,'admin','admin_url','admin/User/userInfoPost','','管理员个人信息修改提交',''),(116,1,'admin','admin_url','admin/User/delete','','管理员删除',''),(117,1,'admin','admin_url','admin/User/ban','','停用管理员',''),(118,1,'admin','admin_url','admin/User/cancelBan','','启用管理员',''),(119,1,'portal','admin_url','portal/AdminArticle/index','','文章管理',''),(120,1,'portal','admin_url','portal/AdminArticle/add','','添加文章',''),(121,1,'portal','admin_url','portal/AdminArticle/addPost','','添加文章提交',''),(122,1,'portal','admin_url','portal/AdminArticle/edit','','编辑文章',''),(123,1,'portal','admin_url','portal/AdminArticle/editPost','','编辑文章提交',''),(124,1,'portal','admin_url','portal/AdminArticle/delete','','文章删除',''),(125,1,'portal','admin_url','portal/AdminArticle/publish','','文章发布',''),(126,1,'portal','admin_url','portal/AdminArticle/top','','文章置顶',''),(127,1,'portal','admin_url','portal/AdminArticle/recommend','','文章推荐',''),(128,1,'portal','admin_url','portal/AdminArticle/listOrder','','文章排序',''),(129,1,'portal','admin_url','portal/AdminCategory/index','','分类管理',''),(130,1,'portal','admin_url','portal/AdminCategory/add','','添加文章分类',''),(131,1,'portal','admin_url','portal/AdminCategory/addPost','','添加文章分类提交',''),(132,1,'portal','admin_url','portal/AdminCategory/edit','','编辑文章分类',''),(133,1,'portal','admin_url','portal/AdminCategory/editPost','','编辑文章分类提交',''),(134,1,'portal','admin_url','portal/AdminCategory/select','','文章分类选择对话框',''),(135,1,'portal','admin_url','portal/AdminCategory/listOrder','','文章分类排序',''),(136,1,'portal','admin_url','portal/AdminCategory/delete','','删除文章分类',''),(137,1,'portal','admin_url','portal/AdminIndex/default','','门户管理',''),(138,1,'portal','admin_url','portal/AdminPage/index','','页面管理',''),(139,1,'portal','admin_url','portal/AdminPage/add','','添加页面',''),(140,1,'portal','admin_url','portal/AdminPage/addPost','','添加页面提交',''),(141,1,'portal','admin_url','portal/AdminPage/edit','','编辑页面',''),(142,1,'portal','admin_url','portal/AdminPage/editPost','','编辑页面提交',''),(143,1,'portal','admin_url','portal/AdminPage/delete','','删除页面',''),(144,1,'portal','admin_url','portal/AdminTag/index','','文章标签',''),(145,1,'portal','admin_url','portal/AdminTag/add','','添加文章标签',''),(146,1,'portal','admin_url','portal/AdminTag/addPost','','添加文章标签提交',''),(147,1,'portal','admin_url','portal/AdminTag/upStatus','','更新标签状态',''),(148,1,'portal','admin_url','portal/AdminTag/delete','','删除文章标签',''),(149,1,'user','admin_url','user/AdminAsset/index','','资源管理',''),(150,1,'user','admin_url','user/AdminAsset/delete','','删除文件',''),(151,1,'user','admin_url','user/AdminIndex/default','','用户管理',''),(152,1,'user','admin_url','user/AdminIndex/default1','','用户组',''),(153,1,'user','admin_url','user/AdminIndex/index','','本站用户',''),(154,1,'user','admin_url','user/AdminIndex/ban','','本站用户拉黑',''),(155,1,'user','admin_url','user/AdminIndex/cancelBan','','本站用户启用',''),(156,1,'user','admin_url','user/AdminOauth/index','','第三方用户',''),(157,1,'user','admin_url','user/AdminOauth/delete','','删除第三方用户绑定',''),(158,1,'user','admin_url','user/AdminUserAction/index','','用户操作管理',''),(159,1,'user','admin_url','user/AdminUserAction/edit','','编辑用户操作',''),(160,1,'user','admin_url','user/AdminUserAction/editPost','','编辑用户操作提交',''),(161,1,'user','admin_url','user/AdminUserAction/sync','','同步用户操作',''),(162,1,'admin','admin_url','admin/ce/ce','','测试','');

#
# Structure for table "ygw_comment"
#

DROP TABLE IF EXISTS `ygw_comment`;
CREATE TABLE `ygw_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text COMMENT '评论内容',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`object_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parent_id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `createtime` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

#
# Data for table "ygw_comment"
#


#
# Structure for table "ygw_hook"
#

DROP TABLE IF EXISTS `ygw_hook`;
CREATE TABLE `ygw_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

#
# Data for table "ygw_hook"
#

INSERT INTO `ygw_hook` VALUES (1,1,0,'应用初始化','app_init','cmf','应用初始化'),(2,1,0,'应用开始','app_begin','cmf','应用开始'),(3,1,0,'模块初始化','module_init','cmf','模块初始化'),(4,1,0,'控制器开始','action_begin','cmf','控制器开始'),(5,1,0,'视图输出过滤','view_filter','cmf','视图输出过滤'),(6,1,0,'应用结束','app_end','cmf','应用结束'),(7,1,0,'日志write方法','log_write','cmf','日志write方法'),(8,1,0,'输出结束','response_end','cmf','输出结束'),(9,1,0,'后台控制器初始化','admin_init','cmf','后台控制器初始化'),(10,1,0,'前台控制器初始化','home_init','cmf','前台控制器初始化'),(11,1,1,'发送手机验证码','send_mobile_verification_code','cmf','发送手机验证码'),(12,3,0,'模板 body标签开始','body_start','','模板 body标签开始'),(13,3,0,'模板 head标签结束前','before_head_end','','模板 head标签结束前'),(14,3,0,'模板底部开始','footer_start','','模板底部开始'),(15,3,0,'模板底部开始之前','before_footer','','模板底部开始之前'),(16,3,0,'模板底部结束之前','before_footer_end','','模板底部结束之前'),(17,3,0,'模板 body 标签结束之前','before_body_end','','模板 body 标签结束之前'),(18,3,0,'模板左边栏开始','left_sidebar_start','','模板左边栏开始'),(19,3,0,'模板左边栏结束之前','before_left_sidebar_end','','模板左边栏结束之前'),(20,3,0,'模板右边栏开始','right_sidebar_start','','模板右边栏开始'),(21,3,0,'模板右边栏结束之前','before_right_sidebar_end','','模板右边栏结束之前'),(22,3,1,'评论区','comment','','评论区'),(23,3,1,'留言区','guestbook','','留言区'),(24,2,0,'后台首页仪表盘','admin_dashboard','admin','后台首页仪表盘'),(25,4,0,'后台模板 head标签结束前','admin_before_head_end','','后台模板 head标签结束前'),(26,4,0,'后台模板 body 标签结束之前','admin_before_body_end','','后台模板 body 标签结束之前'),(27,2,0,'后台登录页面','admin_login','admin','后台登录页面'),(28,1,1,'前台模板切换','switch_theme','cmf','前台模板切换'),(29,3,0,'主要内容之后','after_content','','主要内容之后'),(30,2,0,'文章显示之前','portal_before_assign_article','portal','文章显示之前'),(31,2,0,'后台文章保存之后','portal_admin_after_save_article','portal','后台文章保存之后');

#
# Structure for table "ygw_hook_plugin"
#

DROP TABLE IF EXISTS `ygw_hook_plugin`;
CREATE TABLE `ygw_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(30) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

#
# Data for table "ygw_hook_plugin"
#

INSERT INTO `ygw_hook_plugin` VALUES (1,10000,1,'admin_dashboard','SystemInfo'),(2,10000,1,'footer_start','MouseAttract');

#
# Structure for table "ygw_link"
#

DROP TABLE IF EXISTS `ygw_link`;
CREATE TABLE `ygw_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `link_visible` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

#
# Data for table "ygw_link"
#

INSERT INTO `ygw_link` VALUES (1,1,1,8,'YGWCMS官网','http://www.yangblogs.com','YGWCMS','','_blank','');

#
# Structure for table "ygw_liuyan"
#

DROP TABLE IF EXISTS `ygw_liuyan`;
CREATE TABLE `ygw_liuyan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `pid` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `add_time` int(30) NOT NULL,
  `author` varchar(100) NOT NULL DEFAULT '',
  `isShow` int(1) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `support` varchar(255) NOT NULL DEFAULT '0',
  `opposition` varchar(255) NOT NULL DEFAULT '0',
  `report` varchar(255) NOT NULL,
  `isreport` varchar(500) NOT NULL,
  `avatar` varchar(255) DEFAULT 'liuyan.jpg' COMMENT '用户头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

#
# Data for table "ygw_liuyan"
#

INSERT INTO `ygw_liuyan` VALUES (1,'路过，路过',0,'',0,'隔壁老王',0,'','2','12','','',NULL),(2,'暂停一下',0,'',0,'兔斯基',0,'','6','4','','',NULL),(13,'11111',1,'',1519810182,'1',0,'0.0.0.0','6','1','','',NULL),(29,'1111',2,'',1520075605,'155****2426',0,'0.0.0.0','4','1','','',NULL),(30,'11111',0,'',1520075732,'155****2426',0,'0.0.0.0','4','3','','',NULL),(53,'222',0,'',1520083880,'182****5525',0,'0.0.0.0','2','0','飞 反  -啊 规  222-反 规  333-飞 反  333-飞 反  333-飞 反  333-飞 反  333-飞 反  333-飞 反  333-飞 反  333-飞 反  333-飞 反  333-飞 反  333-啊 反  123','-15569932426-15569932426-15569932426：WEB',NULL),(54,'3333',53,'',1520083886,'182****5525',0,'0.0.0.0','7','2','','',NULL),(55,'123456',0,'',1520231881,'WEB',0,'0.0.0.0','8','5','反  ','',NULL),(56,'1122332',0,'',1520239879,'来自【0.0.0.0】的游客',0,'0.0.0.0','26','4','反 规  -飞 反  111-飞 反 规  第三个','15569932426-15569932426：WEB',NULL),(57,'1',0,'',1520484608,'WEB',0,'0.0.0.0','94','5','啊 飞  111-啊 反  1-反  1-啊 反  1-反  萨芬-反  第三个-飞 反 规  第三个-啊 反  ','15569932426-15569932426：WEB-15569932426：WEB-15569932426：WEB-15569932426：WEB-15569932426：WEB-15569932426：WEB-15569932426：WEB',NULL),(58,'2',57,'',1520607881,'WEB',0,'0.0.0.0','3','0','','',NULL),(59,'666',54,'',1520608546,'WEB',0,'0.0.0.0','0','0','','',NULL),(60,'111',0,'',1520742520,'WEB5',0,'0.0.0.0','0','0','','',NULL),(61,'333',0,'',1520743145,'WEB5',0,'0.0.0.0','0','0','','','20180311\\bed62c010f9c190723bbe7120cea7236.jpg'),(62,'111',0,'',1520743606,'来自【0.0.0.0】的游客',0,'0.0.0.0','0','0','','','/themes/blogs/public/images/liuyan.jpg'),(63,'sf',0,'',1520743859,'来自【0.0.0.0】的游客',0,'0.0.0.0','0','0','','','/themes/blogs/public/images/liuyan.jpg'),(64,'df',0,'',1520744060,'WEB5',0,'0.0.0.0','0','0','','','20180311\\bed62c010f9c190723bbe7120cea7236.jpg'),(65,'111',0,'',1520744779,'WEB5',0,'0.0.0.0','0','0','','','20180311\\bed62c010f9c190723bbe7120cea7236.jpg'),(66,'我是',0,'',1520747199,'WEB5',0,'0.0.0.0','0','0','','','20180311\\bed62c010f9c190723bbe7120cea7236.jpg'),(67,'111',0,'',1520748342,'来自【0.0.0.0】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(68,'123',0,'',1520748815,'来自【0.0.0.0】的游客',0,'0.0.0.0','0','0','','','/themes/blogs/public/images/liuyan.jpg'),(69,'123',0,'',1520748925,'来自【0.0.0.0】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(70,'234',0,'',1520748946,'WEB5',0,'0.0.0.0','0','0','','','20180311\\bed62c010f9c190723bbe7120cea7236.jpg'),(71,'345',69,'',1520748954,'WEB5',0,'0.0.0.0','0','0','','','liuyan.jpg'),(72,'222',69,'',1520750064,'WEB5',0,'0.0.0.0','0','0','','','liuyan.jpg'),(73,'111111',69,'',1520750439,'WEB5',0,'0.0.0.0','0','0','','','liuyan.jpg'),(74,'111',0,'',1520751538,'WEB5',0,'0.0.0.0','0','0','','','20180311\\bed62c010f9c190723bbe7120cea7236.jpg'),(75,'321',69,'',1520751550,'WEB5',0,'0.0.0.0','0','0','','','liuyan.jpg'),(76,'11',69,'',1520751654,'WEB5',0,'0.0.0.0','0','0','','','liuyan.jpg'),(77,'211',69,'',1520751725,'WEB5',0,'0.0.0.0','0','0','','','liuyan.jpg'),(78,'速度',69,'',1520752269,'WEB5',0,'0.0.0.0','0','0','','','20180311/bed62c010f9c190723bbe7120cea7236.jpg'),(79,'111',0,'',1520758742,'WEB5',0,'0.0.0.0','0','0','','','20180311/22c17eda558db7da70044282d8786bc5.jpg'),(80,'的说法',69,'',1520758759,'WEB5',0,'0.0.0.0','0','0','','','20180311/22c17eda558db7da70044282d8786bc5.jpg'),(81,'的方式的',59,'',1520758773,'WEB5',0,'0.0.0.0','0','0','','','20180311/22c17eda558db7da70044282d8786bc5.jpg'),(82,'222',0,'',1520758827,'182****5525',0,'0.0.0.0','0','0','','','20180311/5fc7c3b9438eab4bffe3b7241dcfa665.jpg'),(83,'地方',79,'',1520758836,'182****5525',0,'0.0.0.0','0','0','','','20180311/5fc7c3b9438eab4bffe3b7241dcfa665.jpg'),(84,'士大夫',81,'',1520758849,'182****5525',0,'0.0.0.0','0','0','','','20180311/5fc7c3b9438eab4bffe3b7241dcfa665.jpg'),(85,'多个',0,'',1520759104,'来自【0.0.0.0】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(86,'是德国',83,'',1520759112,'来自【0.0.0.0】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(87,'222',0,'',1520765251,'来自湖南省长沙市的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(88,'222',0,'',1520765306,'来自【湖南省长沙市】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(89,'2',0,'',1520765322,'来自【湖南省长沙市】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(90,'萨芬',0,'',1520765466,'来自【局域网】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(91,'是',0,'',1520765501,'来自【IANA】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(92,'地方',0,'',1520766008,'来自【】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(93,'萨芬',0,'',1520766034,'来自【】的游客',0,'0.0.0.0','1','0','','','liuyan.jpg'),(94,'速度',0,'',1520769581,'1',0,'0.0.0.0','0','0','','','liuyan.jpg'),(95,'而微软',0,'',1520770858,'来自【{:plugins\\tc_ip\\service\\TcI',0,'0.0.0.0','0','0','','','liuyan.jpg'),(96,'而微软',0,'',1520770986,'来自【{:plugins\\tc_ip\\service\\TcI',0,'0.0.0.0','0','0','','','liuyan.jpg'),(97,'的说法',0,'',1520771003,'来自【{:plugins\\tc_ip\\service\\TcI',0,'0.0.0.0','0','0','','','liuyan.jpg'),(98,'萨芬',0,'',1520771031,'来自【{:plugins\\tc_ip\\service\\TcI',0,'0.0.0.0','0','0','','','liuyan.jpg'),(99,'大师傅',0,'',1520771264,'来自【{:plugins\\tc_ip\\service\\TcI',0,'0.0.0.0','0','0','','','liuyan.jpg'),(100,'法大 ',0,'',1520771319,'来自【{:plugins\\tc_ip\\service\\TcI',0,'0.0.0.0','0','0','','','liuyan.jpg'),(101,'的说法',0,'',1520771576,'来自【{:plugins\\\\tc_ip\\\\service\\\\',0,'0.0.0.0','0','0','','','liuyan.jpg'),(102,'sf ',0,'',1520772028,'1',0,'0.0.0.0','0','0','','','liuyan.jpg'),(103,'ds',0,'',1520772070,'来自【{:plugins\\\\tc_ip\\\\service\\\\',0,'0.0.0.0','0','0','','','liuyan.jpg'),(104,'2132',0,'',1520772582,'来自【IANA】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(105,'萨芬',0,'',1520774825,'来自【{:plugins\\\\tc_ip\\\\service\\\\',0,'0.0.0.0','0','0','','','liuyan.jpg'),(106,'士大夫',0,'',1520779126,'来自【{:plugins\\\\tc_ip\\\\service\\\\',0,'0.0.0.0','0','0','','','liuyan.jpg'),(107,'的说法',0,'',1520779619,'来自【{:plugins\\\\tc_ip\\\\service\\\\',0,'0.0.0.0','1','0','','','liuyan.jpg'),(108,'从法国 ',0,'',1520780543,'来自【{:plugins\\\\tc_ip\\\\service\\\\',0,'0.0.0.0','0','0','','','liuyan.jpg'),(109,'速度投',0,'',1520780656,'来自【{:plugins\\\\tc_ip\\\\service\\\\',0,'0.0.0.0','0','0','','','liuyan.jpg'),(110,'规范化',109,'',1520780713,'192.168.1.1',0,'0.0.0.0','0','0','','','liuyan.jpg'),(111,'sf',0,'',1520782239,'来自【{:plugins\\\\tc_ip\\\\service\\\\',0,'0.0.0.0','0','0','','','liuyan.jpg'),(112,'fdg',0,'',1520782298,'来自【{:plugins\\\\tc_ip\\\\service\\\\TcIp::ip(\'0.0.0.0\')}】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(113,'111',0,'',1520782353,'来自【IANA】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(114,'sdg',0,'',1520782383,'来自【{:plugins\\\\tc_ip\\\\service\\\\TcIp::ip(\'0.0.0.0\')}】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(115,'sdaf',0,'',1520782427,'来自【{:plugins\\\\tc_ip\\\\service\\\\TcIp::ip(\'0.0.0.0\')}】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(116,'dsg',0,'',1520782505,'',0,'0.0.0.0','0','0','','','liuyan.jpg'),(117,'wf',0,'',1520782651,'来自【{:plugins\\\\tc_ip\\\\service\\\\TcIp::ip(',0,'0.0.0.0','0','0','','','liuyan.jpg'),(118,'sdfgsdgdsgdg',0,'',1520782726,'来自【{:plugins\\\\tc_ip\\\\service\\\\TcIp::ip(',0,'0.0.0.0','0','0','','','liuyan.jpg'),(119,'saf',0,'',1520782747,'来自【{:plugins\\\\tc_ip\\\\service\\\\TcIp::ip(\'0.0.0.0\')}】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(121,'gt ',0,'',1520784310,'输入',0,'0.0.0.0','0','0','','','liuyan.jpg'),(122,'saf',0,'',1520784331,'来自【{:plugins\\\\tc_ip\\\\service\\\\TcIp::ip(\'0.0.0.0\')}】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(123,'dsf',0,'',1520784664,'来自【$ip[\'ip\']】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(124,'sdg',0,'',1520784741,'来自【0.0.0.0】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(125,'saf',0,'',1520784779,'来自【0.0.0.0】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(126,'sa',125,'',1520784784,'来自【0.0.0.0】的游客',0,'0.0.0.0','0','0','','','liuyan.jpg'),(127,'asff',125,'',1520784804,'WEB5',0,'0.0.0.0','0','0','','','20180311/22c17eda558db7da70044282d8786bc5.jpg'),(128,'dsgdh',126,'',1520784868,'WEB5',0,'0.0.0.0','0','0','','','20180311/22c17eda558db7da70044282d8786bc5.jpg');

#
# Structure for table "ygw_nav"
#

DROP TABLE IF EXISTS `ygw_nav`;
CREATE TABLE `ygw_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

#
# Data for table "ygw_nav"
#

INSERT INTO `ygw_nav` VALUES (1,1,'主导航','主导航'),(2,0,'底部导航','');

#
# Structure for table "ygw_nav_menu"
#

DROP TABLE IF EXISTS `ygw_nav_menu`;
CREATE TABLE `ygw_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

#
# Data for table "ygw_nav_menu"
#

INSERT INTO `ygw_nav_menu` VALUES (1,1,0,1,0,'首页','','home','','0-1');

#
# Structure for table "ygw_option"
#

DROP TABLE IF EXISTS `ygw_option`;
CREATE TABLE `ygw_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

#
# Data for table "ygw_option"
#

INSERT INTO `ygw_option` VALUES (7,1,'site_info','{\"site_name\":\"YGWCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_title\":\"ygwcms\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_keywords\":\"ygwcms,php,\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6,cms,\\u7b80\\u7ea6\\u98ce, simplewind,framework\",\"site_seo_description\":\"ygwcms\\u662f\\u7b80\\u7ea6\\u98ce\\u7f51\\u7edc\\u79d1\\u6280\\u53d1\\u5e03\\u7684\\u4e00\\u6b3e\\u7528\\u4e8e\\u5feb\\u901f\\u5f00\\u53d1\\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_icp\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\",\"urlmode\":\"1\",\"html_suffix\":\"\"}'),(8,1,'smtp_setting','{\"from_name\":\"601047564@qq.com\",\"from\":\"601047564@qq.com\",\"host\":\"smtp.qq.com\",\"smtp_secure\":\"ssl\",\"port\":\"465\",\"username\":\"601047564@qq.com\",\"password\":\"ztbitqqevzwjbbgj\"}'),(9,1,'cmf_settings','{\"open_registration\":\"0\",\"banned_usernames\":\"\"}'),(10,1,'cdn_settings','{\"cdn_static_root\":\"\"}'),(11,1,'admin_settings','{\"admin_password\":\"\",\"admin_style\":\"flatadmin\"}'),(12,1,'admin_dashboard_widgets','[{\"name\":\"CmfHub\",\"is_system\":1},{\"name\":\"MainContributors\",\"is_system\":1},{\"name\":\"Custom1\",\"is_system\":1},{\"name\":\"Contributors\",\"is_system\":1},{\"name\":\"Custom2\",\"is_system\":1},{\"name\":\"Custom3\",\"is_system\":1},{\"name\":\"Custom4\",\"is_system\":1},{\"name\":\"Custom5\",\"is_system\":1}]');

#
# Structure for table "ygw_plugin"
#

DROP TABLE IF EXISTS `ygw_plugin`;
CREATE TABLE `ygw_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

#
# Data for table "ygw_plugin"
#

INSERT INTO `ygw_plugin` VALUES (1,1,0,1,0,'SystemInfo','系统信息','','','YGWCMS','','1.0','系统信息','[]'),(2,1,0,1,0,'MouseAttract','鼠标吸附效果','http://demo.thinkcmf.com','','ThinkCMF','http://www.thinkcmf.com','1.0','鼠标吸附效果','{\"mouse\":\"260\",\"color\":\"255,255,255\"}'),(3,1,0,1,0,'TcIp','显示ip物理地址','http://www.songzhenjiang.cn','','Tangchao','http://www.songzhenjiang.cn','1.0','显示ip物理地址','[]');

#
# Structure for table "ygw_portal_category"
#

DROP TABLE IF EXISTS `ygw_portal_category`;
CREATE TABLE `ygw_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

#
# Data for table "ygw_portal_category"
#

INSERT INTO `ygw_portal_category` VALUES (1,0,0,1,0,10000,'测试分类','','0-1','','','','',''),(4,0,0,1,0,10000,'JS','','0-4','','','','',''),(5,0,0,1,0,10000,'css','','0-5','','','','','');

#
# Structure for table "ygw_portal_category_post"
#

DROP TABLE IF EXISTS `ygw_portal_category_post`;
CREATE TABLE `ygw_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

#
# Data for table "ygw_portal_category_post"
#

INSERT INTO `ygw_portal_category_post` VALUES (1,1,1,10000,1),(7,8,5,10000,1),(8,9,4,10000,1),(9,10,5,10000,1),(10,11,4,10000,1),(11,12,1,10000,1);

#
# Structure for table "ygw_portal_post"
#

DROP TABLE IF EXISTS `ygw_portal_post`;
CREATE TABLE `ygw_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `post_parent` (`parent_id`),
  KEY `post_author` (`user_id`),
  KEY `post_date` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

#
# Data for table "ygw_portal_post"
#

INSERT INTO `ygw_portal_post` VALUES (1,0,1,1,1,1,1,0,0,0,0,0,1517913439,1520213923,1517913300,0,'测试标题','测试关键词','一共是四个页面，首页，图文列表，图片列表，文字内容。此模板风格为中国古典风格，山水画墨迹成就一幅江南墨卷。页面首页设计较为简单，突出文章重点。二级栏目导航菜单。图文列表显示，可用作相册展示...','测试文章','\n&lt;h2 data-line=&quot;0&quot; style=&quot;white-space: normal;&quot;&gt;通过前台找回密码&lt;/h2&gt;\n&lt;p style=&quot;white-space: normal;&quot;&gt;如果你配置了邮箱，那么请到前台忘记密码页面，用邮箱找回你的密码&lt;/p&gt;\n&lt;h2 data-line=&quot;4&quot; style=&quot;white-space: normal;&quot;&gt;\n&lt;a id=&quot;_4&quot; href=&quot;https://demo5.thinkcmf.com/upload/&quot;&gt;&lt;/a&gt;密码重置&lt;/h2&gt;\n&lt;p style=&quot;white-space: normal;&quot;&gt;这需要你有数据库访问权限。这里主要说一下密码的生成步骤。&lt;/p&gt;\n&lt;p style=&quot;white-space: normal;&quot;&gt;1.在 portal应用下创建一个 TestController,文件路径 app/portal/controller/TestController.php&lt;/p&gt;\n&lt;pre style=&quot;background-color: rgb(34, 26, 189);\r\npadding: 10px;\r\nborder: 1px dotted rgb(119, 136, 85);\r\nword-wrap: break-word;&quot;&gt;&amp;lt;?phpnamespace app\\portal\\controller;use cmf\\controller\\HomeBaseController;class TestController extends HomeBaseController{    public function index()\r\n    {        return cmf_password(\'666666\');\r\n    }\r\n}&lt;/pre&gt;\n&lt;p&gt;2.访问上面创建的方法&lt;/p&gt;\n&lt;p style=&quot;white-space: normal;background-color: rgb(34, 26, 189);padding: 10px;\r\nborder: 1px dotted rgb(119, 136, 85);word-wrap: break-word;&quot;&gt;&lt;br style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0.2em; padding: 0px; display: block;&quot;&gt;地址是：你的服务器地址/portal/test/index&lt;br style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0.2em; padding: 0px; display: block;&quot;&gt;看到一串很长的字符串后复制它。&lt;/p&gt;\n&lt;p style=&quot;white-space: normal;&quot;&gt;3.打开数据库管理工具，在 cmf_user表(注意如果你的表前缀)，找到用户 id 为1的那一行把 user_pass 更改为上一步的字符串，登录密码就是666666，登录成功后自己再修改吧&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n',NULL,'{\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20180206\\/b175933c317c12a40673fc19bc11d1c5.png\",\"name\":\"QQ图片20180206183757.png\"}]}'),(8,0,1,1,1,1,1,0,0,0,0,0,1519708654,1519708654,1519708613,0,'css标题','','','','&lt;p&gt;css&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20180227\\/6b1f94f4097117b79c111de13f7dc585.jpg\",\"name\":\"Penguins.jpg\"}]}'),(9,0,1,1,1,1,1,0,0,0,0,0,1519709597,1519709597,1519709579,0,'JS','','','',NULL,NULL,'{\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20180227\\/4f80c3bee95039c38e15d1ed5651a44c.jpg\",\"name\":\"Koala.jpg\"}]}'),(10,0,1,1,1,1,1,0,0,0,0,0,1519709999,1519709999,1519709983,0,'11111111','','','',NULL,NULL,'{\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20180227\\/993e0e5cc40acdc3cf100fda3af4d42d.jpg\",\"name\":\"Hydrangeas.jpg\"}]}'),(11,0,1,1,1,1,1,0,0,0,0,0,1519710188,1519710188,1519710172,0,'ewtsg','','','','&lt;p&gt;dasgdxgdgsd&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20180227\\/4f80c3bee95039c38e15d1ed5651a44c.jpg\",\"name\":\"Koala.jpg\"}]}'),(12,0,1,1,1,1,1,0,0,0,0,0,1519711193,1519711193,1519711173,0,'陈燕松','','','',NULL,NULL,'{\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20180227\\/65bc37c239bd11c59a9bf7085c1c16e0.jpg\",\"name\":\"Jellyfish.jpg\"}]}'),(13,0,2,1,1,1,1,0,0,0,0,0,1520130124,1520130289,1520130060,0,'测试页面标题','测试页面关键词','测试页面摘要','','&lt;p&gt;测试页面内容&lt;/p&gt;',NULL,'{\"thumbnail\":\"portal\\/20180304\\/6283dfda756261b3cb710bdefaf71cd2.png\",\"template\":\"\"}');

#
# Structure for table "ygw_portal_tag"
#

DROP TABLE IF EXISTS `ygw_portal_tag`;
CREATE TABLE `ygw_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

#
# Data for table "ygw_portal_tag"
#

INSERT INTO `ygw_portal_tag` VALUES (1,1,0,0,'测试关键词');

#
# Structure for table "ygw_portal_tag_post"
#

DROP TABLE IF EXISTS `ygw_portal_tag_post`;
CREATE TABLE `ygw_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

#
# Data for table "ygw_portal_tag_post"
#

INSERT INTO `ygw_portal_tag_post` VALUES (1,1,1,1);

#
# Structure for table "ygw_recycle_bin"
#

DROP TABLE IF EXISTS `ygw_recycle_bin`;
CREATE TABLE `ygw_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

#
# Data for table "ygw_recycle_bin"
#


#
# Structure for table "ygw_role"
#

DROP TABLE IF EXISTS `ygw_role`;
CREATE TABLE `ygw_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

#
# Data for table "ygw_role"
#

INSERT INTO `ygw_role` VALUES (1,0,1,1329633709,1329633709,0,'超级管理员','拥有网站最高管理员权限！');

#
# Structure for table "ygw_role_user"
#

DROP TABLE IF EXISTS `ygw_role_user`;
CREATE TABLE `ygw_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

#
# Data for table "ygw_role_user"
#


#
# Structure for table "ygw_route"
#

DROP TABLE IF EXISTS `ygw_route`;
CREATE TABLE `ygw_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

#
# Data for table "ygw_route"
#

INSERT INTO `ygw_route` VALUES (1,10000,1,1,'http://localhost/blog/about/about.html','http://localhost/about.html');

#
# Structure for table "ygw_slide"
#

DROP TABLE IF EXISTS `ygw_slide`;
CREATE TABLE `ygw_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

#
# Data for table "ygw_slide"
#


#
# Structure for table "ygw_slide_item"
#

DROP TABLE IF EXISTS `ygw_slide_item`;
CREATE TABLE `ygw_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`),
  KEY `slide_cid` (`slide_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

#
# Data for table "ygw_slide_item"
#


#
# Structure for table "ygw_theme"
#

DROP TABLE IF EXISTS `ygw_theme`;
CREATE TABLE `ygw_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

#
# Data for table "ygw_theme"
#

/*!40000 ALTER TABLE `ygw_theme` DISABLE KEYS */;
INSERT INTO `ygw_theme` VALUES (19,0,0,0,0,'simpleboot3','simpleboot3','1.0.2','http://demo.thinkcmf.com','','ThinkCMF','http://www.thinkcmf.com','zh-cn','ThinkCMF模板','ThinkCMF默认模板');
/*!40000 ALTER TABLE `ygw_theme` ENABLE KEYS */;

#
# Structure for table "ygw_theme_file"
#

DROP TABLE IF EXISTS `ygw_theme_file`;
CREATE TABLE `ygw_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

#
# Data for table "ygw_theme_file"
#

/*!40000 ALTER TABLE `ygw_theme_file` DISABLE KEYS */;
INSERT INTO `ygw_theme_file` VALUES (105,0,10,'simpleboot3','文章页','portal/Article/index','portal/article','文章页模板文件','{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}','{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}',NULL),(106,0,10,'simpleboot3','联系我们页','portal/Page/index','portal/contact','联系我们页模板文件','{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"101.123212,38.797652\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\\u7518\\u8083\\u7701\\u5f20\\u6396\\u5e02\\u5c71\\u4e39\\u53bf\"},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u7518\\u8083\\u7701\\u5f20\\u6396\\u5e02\\u5c71\\u4e39\\u53bf\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"Gansu city of Zhangye province Shandan County\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"601047564@qq.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"15569932426\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"15569932426\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"601047564\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}','{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}',NULL),(107,0,5,'simpleboot3','首页','portal/Index/index','portal/index','首页模板文件','{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3YGWCMS\",\"display\":1,\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the YGWCMS\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":0,\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true},\"valueText\":\"\"}}}}}','{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(108,0,10,'simpleboot3','文章列表页','portal/List/index','portal/list','文章列表模板文件','{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}','{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(109,0,10,'simpleboot3','单页面','portal/Page/index','portal/page','单页面模板文件','{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}','{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(110,0,10,'simpleboot3','搜索页面','portal/search/index','portal/search','搜索模板文件','{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}','{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}',NULL),(111,1,0,'simpleboot3','模板全局配置','public/Config','public/config','模板全局配置文件','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}',NULL),(112,1,1,'simpleboot3','导航条','public/Nav','public/nav','导航条模板文件','{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"YGWCMS\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}','{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}',NULL);
/*!40000 ALTER TABLE `ygw_theme_file` ENABLE KEYS */;

#
# Structure for table "ygw_third_party_user"
#

DROP TABLE IF EXISTS `ygw_third_party_user`;
CREATE TABLE `ygw_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

#
# Data for table "ygw_third_party_user"
#


#
# Structure for table "ygw_user"
#

DROP TABLE IF EXISTS `ygw_user`;
CREATE TABLE `ygw_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) DEFAULT 'liuyan.jpg' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

#
# Data for table "ygw_user"
#

INSERT INTO `ygw_user` VALUES (1,1,0,0,1520781497,0,0,1516754741,1,'admin','###1bf6478375744488a63d89823cd1f791','admin','601047564@qq.com','','/themes/blogs/public/images/liuyan.jpg','','0.0.0.0','','',NULL),(4,1,0,0,1520784796,0,0,1520038621,1,'','25d55ad283aa400af464c76d713c07ad','WEB5','','','20180311/22c17eda558db7da70044282d8786bc5.jpg','','0.0.0.0','','15569932426',NULL),(5,1,0,0,1520758806,0,0,1520079753,1,'','25d55ad283aa400af464c76d713c07ad','182****5525','','','20180311/5fc7c3b9438eab4bffe3b7241dcfa665.jpg','','0.0.0.0','','18286755525',NULL);

#
# Structure for table "ygw_user_action"
#

DROP TABLE IF EXISTS `ygw_user_action`;
CREATE TABLE `ygw_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';

#
# Data for table "ygw_user_action"
#

INSERT INTO `ygw_user_action` VALUES (1,1,0,1,1,1,'用户登录','login','user','');

#
# Structure for table "ygw_user_action_log"
#

DROP TABLE IF EXISTS `ygw_user_action_log`;
CREATE TABLE `ygw_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

#
# Data for table "ygw_user_action_log"
#


#
# Structure for table "ygw_user_favorite"
#

DROP TABLE IF EXISTS `ygw_user_favorite`;
CREATE TABLE `ygw_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

#
# Data for table "ygw_user_favorite"
#


#
# Structure for table "ygw_user_login_attempt"
#

DROP TABLE IF EXISTS `ygw_user_login_attempt`;
CREATE TABLE `ygw_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

#
# Data for table "ygw_user_login_attempt"
#


#
# Structure for table "ygw_user_score_log"
#

DROP TABLE IF EXISTS `ygw_user_score_log`;
CREATE TABLE `ygw_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';

#
# Data for table "ygw_user_score_log"
#


#
# Structure for table "ygw_user_token"
#

DROP TABLE IF EXISTS `ygw_user_token`;
CREATE TABLE `ygw_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

#
# Data for table "ygw_user_token"
#

INSERT INTO `ygw_user_token` VALUES (3,1,1536333497,1520781497,'1a73bdd1a902d1a3d2d982102d85383360b2463929dfaffea72c380f743eebfb','web');

#
# Structure for table "ygw_verification_code"
#

DROP TABLE IF EXISTS `ygw_verification_code`;
CREATE TABLE `ygw_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

#
# Data for table "ygw_verification_code"
#

