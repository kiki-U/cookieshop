/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50734
Source Host           : localhost:3306
Source Database       : cookieshop

Target Server Type    : MYSQL
Target Server Version : 50734
File Encoding         : 65001

Date: 2023-06-14 21:45:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cover` varchar(200) DEFAULT NULL,
  `image1` varchar(200) DEFAULT NULL,
  `image2` varchar(200) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_id_idx` (`type_id`),
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('9', '祺祥 RTX2060', '//img14.360buyimg.com/n1/jfs/t1/19578/37/19790/51977/6375a428Ec454f17a/4fc73464f66e8113.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/179506/29/30767/42601/6375a428Ef6cba3bd/e7f5e672d48d0858.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/112851/29/33780/36165/6375a429E3f69a46e/28a8ba9399c1fb02.jpg.avif', '1899', '祺祥GTX1660s/2060s/3060/3060ti发烧游戏独立显卡4k高清台式机专业游戏显卡 ', '10', '1');
INSERT INTO `goods` VALUES ('10', '七彩虹 RTX4060Ti', '//img14.360buyimg.com/n1/jfs/t1/127479/11/32772/84939/646d791fFd29e7d6a/d20da39094ed2e51.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/84520/34/23873/97708/646d791fFd670f174/d1ef09c298f103ed.png.avif', '//img14.360buyimg.com/n1/jfs/t1/89357/30/32866/83084/646d791fF9aaa501d/8d697971f27341cc.jpg.avif', '3349', '采用波普风格设计的七彩虹iGame GeForce RTX 4060 Ti Ultra W DUO OC 8GB', '10', '3');
INSERT INTO `goods` VALUES ('11', '华硕 GeForce RTX4060TI', '//img14.360buyimg.com/n1/s450x450_jfs/t1/146082/15/33640/57703/646da8f5Ffb4c5c44/c10b0b05cb56a359.jpg.avif', '//img14.360buyimg.com/n1/s450x450_jfs/t1/105709/7/27459/60950/646da8f5Fb4b902d2/14fd5d0ea236404c.jpg.avif', '//img14.360buyimg.com/n1/s450x450_jfs/t1/53342/12/24280/61349/646da8f5F1e2b7360/09fbf3d6942eb18a.jpg.avif', '3598', '华硕GeForceRTX4060Ti系列显卡均采用高品质的SAPII超合金供电设计，其可在毫微秒的时间内轻松提供数百瓦的功率', '10', '3');
INSERT INTO `goods` VALUES ('13', '铭瑄 GTX2060TI', '//img14.360buyimg.com/n1/jfs/t1/61304/19/9110/89686/5d6f4c3aE2b048af6/9206e418da8c0a62.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/68127/19/9045/91489/5d6f4c3aE9c428f46/1fede382bd9a36ec.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/60877/39/9281/98766/5d6f4c3aEc4669c0b/c458ea877af8e06c.jpg.avif', '1499', '618硬核装备推荐 铭瑄RTX3070Ti光追独显秒杀价3399元 配置参数 详细参数>> 芯片厂商:NVIDIA(10款) 显卡芯片:GeForceRTX2060(10款)', '10', '1');
INSERT INTO `goods` VALUES ('15', '七彩虹 RTX 4080火神U', '//img11.360buyimg.com/n1/jfs/t1/202549/1/27626/62098/63f1a1a2F70ad1da5/db42fa964410c494.jpg.avif', '//img11.360buyimg.com/n1/jfs/t1/160006/12/34777/76253/63f1a1a2Fb97e989c/83fe1cc856da160e.jpg.avif', '//img11.360buyimg.com/n1/jfs/t1/166911/20/34239/63238/63f1a1a2F14d70ae5/6107016c6ea279c3.jpg.avif', '10899', '散热风扇:三风扇 是否支持PCIE5.0:不支持PCIE5.0 是否支持PCIE4.0:支持PCIE4.0 显存类型:GDDR6X 接口:HDMI,DP ', '10', '3');
INSERT INTO `goods` VALUES ('16', '祺祥 RTX2060', '//img14.360buyimg.com/n1/jfs/t1/19578/37/19790/51977/6375a428Ec454f17a/4fc73464f66e8113.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/179506/29/30767/42601/6375a428Ef6cba3bd/e7f5e672d48d0858.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/112851/29/33780/36165/6375a429E3f69a46e/28a8ba9399c1fb02.jpg.avif', '1899', '祺祥GTX1660s/2060s/3060/3060ti发烧游戏独立显卡4k高清台式机专业游戏显卡 ', '10', '1');
INSERT INTO `goods` VALUES ('18', '七彩虹 RTX 3060 ', '//img12.360buyimg.com/n1/s450x450_jfs/t1/188369/1/4984/121248/60ade248E9d61ebe0/2066c748a45095c8.jpg.avif', '//img12.360buyimg.com/n1/s450x450_jfs/t1/195477/30/4837/75738/60ade248E2a57618f/6481ba97fe998f73.jpg.avif', '//img12.360buyimg.com/n1/s450x450_jfs/t1/180179/18/5937/80832/60ade248E84dc535a/3094dd8477423d70.jpg.avif', '2299', ' 芯片厂商 NVIDIA 显卡芯片 GeForce RTX 3060 显存容量 12GB GDDR6 显存位宽 192bit 显存频率 15000MHz ', '10', '2');
INSERT INTO `goods` VALUES ('21', '影驰 GeForce RTX3060 N卡', '//img13.360buyimg.com/n1/jfs/t1/156701/27/35800/51154/640bd89fFf4855c96/cc2d2f8e63bd07c9.jpg.avif', '//img13.360buyimg.com/n1/jfs/t1/164762/20/30241/66483/640bd89eFcbe75696/9b6c8b31e70db0ff.jpg.avif', '//img13.360buyimg.com/n1/jfs/t1/159419/6/35279/54826/640bd89eFbf2a161e/ec885f925035adf0.jpg.avif', '2399', '显卡芯片:GeForce RTX 3060 核心频率:1777MHz 显存频率:15000MHz 显存容量:12GB 显存位宽:192bit 电源接口:8pin 供电模式:暂无数据 ', '10', '2');
INSERT INTO `goods` VALUES ('23', '技嘉猎鹰2080', '//img13.360buyimg.com/n1/s450x450_jfs/t1/199754/3/12909/130091/61663a82E916f17c5/210f0ca3b2f6a1c5.jpg.avif', '//img13.360buyimg.com/n1/s450x450_jfs/t1/201496/30/11341/131082/61663a82E6ca4adda/05675aa3a3f64a7a.jpg.avif', '//img13.360buyimg.com/n1/s450x450_jfs/t1/199754/1/12755/141425/61663a82Efdf5be82/210f0ca3b2f6a1c5.jpg.avif', '1999', '技嘉AORUS RTX 2080 Xtreme 显卡,属于技嘉AORUS”猎鹰”家族系列中的一员,作为板卡界的行业巨头之一,技嘉逐渐摸索出属于自己的产品定位', '10', '1');
INSERT INTO `goods` VALUES ('24', '技嘉魔鹰 GeForce RTX 3060', '//img10.360buyimg.com/n1/s450x450_jfs/t1/195806/33/5109/149267/60af13c7E60fbb22f/7114766c68a0699a.jpg.avif', '//img10.360buyimg.com/n1/s450x450_jfs/t1/120963/22/15771/151778/60af13c6Ec495ed59/dd917674e9026a78.jpg.avif', '//img10.360buyimg.com/n1/s450x450_jfs/t1/195873/19/5073/75739/60af13c7Edf3f67ba/3471bcee12b36970.jpg.avif', '2249', '技嘉魔鹰 GIGABYTE GeForce RTX 3060 GAMING OC 12G 2.0版本电竞游戏设计智能学习电脑独立显卡支持4K ', '10', '2');
INSERT INTO `goods` VALUES ('25', '影驰 GeForce RTX3060 N卡', '//img13.360buyimg.com/n1/jfs/t1/156701/27/35800/51154/640bd89fFf4855c96/cc2d2f8e63bd07c9.jpg.avif', '//img13.360buyimg.com/n1/jfs/t1/164762/20/30241/66483/640bd89eFcbe75696/9b6c8b31e70db0ff.jpg.avif', '//img13.360buyimg.com/n1/jfs/t1/159419/6/35279/54826/640bd89eFbf2a161e/ec885f925035adf0.jpg.avif', '2399', '品牌:影驰 商品名称:影驰RTX 3060 商品编号:100019895367 商品毛重:2.64kg 商品产地:中国大陆 芯片组:NVIDIA 性能:游戏 适用游戏:吃鸡游戏,DOTA2,逆战 质保期:3年 ', '10', '2');
INSERT INTO `goods` VALUES ('27', '索泰 GeForce RTX 3060 Ti', '//img10.360buyimg.com/n1/s450x450_jfs/t1/79282/13/18899/76622/63abde60F58a5b04b/1baf5756875d28ca.jpg.avif', '//img10.360buyimg.com/n1/s450x450_jfs/t1/75453/38/23265/54918/63abde60Fafa36f6f/4341e0223d2ae82c.jpg.avif', '//img10.360buyimg.com/n1/s450x450_jfs/t1/151305/2/29110/44312/63abde60F6198ee50/34267c8fa01852a6.jpg.avif', '2884', '显卡芯片:GeForce RTX 3060Ti 核心频率:基础频率:1410MHz 加速...>> 显存频率:14000MHz 显存容量:8GB 显存位宽:256bit 电源接口:8pin+8pin ', '10', '2');
INSERT INTO `goods` VALUES ('28', '华硕ATS GeForce RTX3060TI', '//img14.360buyimg.com/n1/s450x450_jfs/t1/92790/39/36621/65525/642a697fFb848f8a1/1b2e14b90b57c1a7.jpg.avif', '//img14.360buyimg.com/n1/s450x450_jfs/t1/112905/28/28782/62314/63b3b01eFd1b6ad0b/c55de277fde0b2ba.jpg.avif', '//img14.360buyimg.com/n1/s450x450_jfs/t1/110588/12/36419/46808/63b3b01eF04b26e24/2312454b08ce34d7.jpg.avif', '2899', '显卡芯片:GeForce RTX 3060 Ti 核心频率:超频模式:1740MHz 游戏...>> 显存频率:14000MHz 显存容量:8GB 显存位宽:256bit 电源接口:8pin ', '10', '2');
INSERT INTO `goods` VALUES ('29', '盈通（yeston）RTX4070TI', '//img14.360buyimg.com/n1/jfs/t1/216898/28/31063/45425/6476a32bF2c7a1d15/61896c3ae9a877b2.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/110932/33/36389/58069/6476a32aFf3f74e15/a1ab5e41e2a7286a.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/77393/10/24501/81937/6476a32aF09d1d5fe/e20329af2e97718f.jpg.avif', '7999', '显卡芯片GeForce RTX 4070 Ti 显示芯片系列NVIDIA RTX 40系列 核心频率2310-2610MHz 流处理单元7680个 显存频率21000MHz 显存类型GDDR6X 显存容量12GB 显存位宽192bit 最大分辨率7680×4320\r\n', '10', '3');
INSERT INTO `goods` VALUES ('30', '技嘉猎鹰2080', '//img13.360buyimg.com/n1/s450x450_jfs/t1/199754/3/12909/130091/61663a82E916f17c5/210f0ca3b2f6a1c5.jpg.avif', '//img13.360buyimg.com/n1/s450x450_jfs/t1/201496/30/11341/131082/61663a82E6ca4adda/05675aa3a3f64a7a.jpg.avif', '//img13.360buyimg.com/n1/s450x450_jfs/t1/199754/1/12755/141425/61663a82Efdf5be82/210f0ca3b2f6a1c5.jpg.avif', '1999', '技嘉AORUS RTX 2080 Xtreme 显卡,属于技嘉AORUS”猎鹰”家族系列中的一员,作为板卡界的行业巨头之一,技嘉逐渐摸索出属于自己的产品定位\r\n', '10', '1');
INSERT INTO `goods` VALUES ('31', '影驰 GeForce RTX3060 N卡', '//img13.360buyimg.com/n1/jfs/t1/156701/27/35800/51154/640bd89fFf4855c96/cc2d2f8e63bd07c9.jpg.avif', '//img13.360buyimg.com/n1/jfs/t1/164762/20/30241/66483/640bd89eFcbe75696/9b6c8b31e70db0ff.jpg.avif', '//img13.360buyimg.com/n1/jfs/t1/159419/6/35279/54826/640bd89eFbf2a161e/ec885f925035adf0.jpg.avif', '2399', '显卡芯片:GeForce RTX 3060 核心频率:1777MHz 显存频率:15000MHz 显存容量:12GB 显存位宽:192bit 电源接口:8pin 供电模式:暂无数据 ', '10', '2');
INSERT INTO `goods` VALUES ('32', '七彩虹 RTX4060Ti', '//img14.360buyimg.com/n1/jfs/t1/127479/11/32772/84939/646d791fFd29e7d6a/d20da39094ed2e51.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/84520/34/23873/97708/646d791fFd670f174/d1ef09c298f103ed.png.avif', '//img14.360buyimg.com/n1/jfs/t1/89357/30/32866/83084/646d791fF9aaa501d/8d697971f27341cc.jpg.avif', '3349', '采用波普风格设计的七彩虹iGame GeForce RTX 4060 Ti Ultra W DUO OC 8GB', '10', '3');
INSERT INTO `goods` VALUES ('34', '七彩虹 RTX 3060 ', '//img12.360buyimg.com/n1/s450x450_jfs/t1/188369/1/4984/121248/60ade248E9d61ebe0/2066c748a45095c8.jpg.avif', '//img12.360buyimg.com/n1/s450x450_jfs/t1/195477/30/4837/75738/60ade248E2a57618f/6481ba97fe998f73.jpg.avif', '//img12.360buyimg.com/n1/s450x450_jfs/t1/180179/18/5937/80832/60ade248E84dc535a/3094dd8477423d70.jpg.avif', '2299', ' 芯片厂商 NVIDIA 显卡芯片 GeForce RTX 3060 显存容量 12GB GDDR6 显存位宽 192bit 显存频率 15000MHz ', '10', '2');
INSERT INTO `goods` VALUES ('35', '七彩虹 GeForce RTX 2080 Ti ', '//img12.360buyimg.com/n1/s450x450_jfs/t1/195735/21/34190/96050/646c7fd2F8d419bab/f31e9d8840df44e4.jpg.avif', '//img12.360buyimg.com/n1/s450x450_jfs/t1/139271/9/36692/105110/646c7fd2Fa8448b03/78dd34c613a1679c.jpg.avif', '//img12.360buyimg.com/n1/s450x450_jfs/t1/148373/15/36845/75177/646c7fd2F99b04c79/cab24cceb8bac2d0.jpg.avif', '2099', '导出产品规格 芯片系列GeForce® RTX 2080 Ti 产品系列iGame系列 图形芯片TU102 核心工艺12nm CUDA核心4352 基础频率Base:1350Mhz;Boost:1545Mhz 一键OC核心频率/ 显存速率14Gbps ', '10', '1');
INSERT INTO `goods` VALUES ('36', '必恩威 GeForce RTX4090', '//img14.360buyimg.com/n1/s450x450_jfs/t1/202729/1/27331/50858/63436f58E43e0db3e/be011e3c81672212.jpg.avif', '//img14.360buyimg.com/n1/s450x450_jfs/t1/120040/27/26983/57705/63436f60E2421a031/803794a1ca4d4b7c.jpg.avif', '//img14.360buyimg.com/n1/s450x450_jfs/t1/197762/6/25902/49028/63436f6dE0a8ae60a/b66e1502c8e41d72.jpg.avif', '12999', '必恩威 RTX4090掌控者超频版拥有16384个CUDA内核以及24GB GDDR6X显存,基础频率为 2235MHz,核心频率2625MHz,显存位宽384 bit,16Pin供电,显卡尺寸为331.8*136.8*71.1mm', '10', '3');
INSERT INTO `goods` VALUES ('38', '技嘉魔鹰 GeForce RTX 3060', '//img10.360buyimg.com/n1/s450x450_jfs/t1/195806/33/5109/149267/60af13c7E60fbb22f/7114766c68a0699a.jpg.avif', '//img10.360buyimg.com/n1/s450x450_jfs/t1/120963/22/15771/151778/60af13c6Ec495ed59/dd917674e9026a78.jpg.avif', '//img10.360buyimg.com/n1/s450x450_jfs/t1/195873/19/5073/75739/60af13c7Edf3f67ba/3471bcee12b36970.jpg.avif', '2399', '显卡芯片:GeForce RTX 3060 核心频率:1777MHz 显存频率:15000MHz 显存容量:12GB 显存位宽:192bit 电源接口:8pin 供电模式:暂无数据 ', '10', '2');
INSERT INTO `goods` VALUES ('43', '七彩虹 RTX 4080火神U', '//img11.360buyimg.com/n1/jfs/t1/202549/1/27626/62098/63f1a1a2F70ad1da5/db42fa964410c494.jpg.avif', '//img11.360buyimg.com/n1/jfs/t1/160006/12/34777/76253/63f1a1a2Fb97e989c/83fe1cc856da160e.jpg.avif', '//img11.360buyimg.com/n1/jfs/t1/166911/20/34239/63238/63f1a1a2F14d70ae5/6107016c6ea279c3.jpg.avif', '10899', '散热风扇:三风扇 是否支持PCIE5.0:不支持PCIE5.0 是否支持PCIE4.0:支持PCIE4.0 显存类型:GDDR6X 接口:HDMI,DP ', '10', '3');
INSERT INTO `goods` VALUES ('44', '铭瑄 GTX2060TI', '//img14.360buyimg.com/n1/jfs/t1/61304/19/9110/89686/5d6f4c3aE2b048af6/9206e418da8c0a62.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/179506/29/30767/42601/6375a428Ef6cba3bd/e7f5e672d48d0858.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/112851/29/33780/36165/6375a429E3f69a46e/28a8ba9399c1fb02.jpg.avif', '1499', '618硬核装备推荐 铭瑄RTX3070Ti光追独显秒杀价3399元 配置参数 详细参数>> 芯片厂商:NVIDIA(10款) 显卡芯片:GeForceRTX2060(10款)', '10', '1');
INSERT INTO `goods` VALUES ('46', '祺祥 RTX2060', '//img14.360buyimg.com/n1/jfs/t1/19578/37/19790/51977/6375a428Ec454f17a/4fc73464f66e8113.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/179506/29/30767/42601/6375a428Ef6cba3bd/e7f5e672d48d0858.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/112851/29/33780/36165/6375a429E3f69a46e/28a8ba9399c1fb02.jpg.avif', '1899', '祺祥GTX1660s/2060s/3060/3060ti发烧游戏独立显卡4k高清台式机专业游戏显卡 ', '10', '1');
INSERT INTO `goods` VALUES ('48', '七彩虹 RTX 3060  ', '//img12.360buyimg.com/n1/s450x450_jfs/t1/188369/1/4984/121248/60ade248E9d61ebe0/2066c748a45095c8.jpg.avif', '//img12.360buyimg.com/n1/s450x450_jfs/t1/195477/30/4837/75738/60ade248E2a57618f/6481ba97fe998f73.jpg.avif', '//img12.360buyimg.com/n1/s450x450_jfs/t1/180179/18/5937/80832/60ade248E84dc535a/3094dd8477423d70.jpg.avif', '2299', ' 芯片厂商 NVIDIA 显卡芯片 GeForce RTX 3060 显存容量 12GB GDDR6 显存位宽 192bit 显存频率 15000MHz ', '10', '2');
INSERT INTO `goods` VALUES ('50', '华硕 GeForce RTX4060TI', '//img14.360buyimg.com/n1/s450x450_jfs/t1/146082/15/33640/57703/646da8f5Ffb4c5c44/c10b0b05cb56a359.jpg.avif', '//img14.360buyimg.com/n1/s450x450_jfs/t1/105709/7/27459/60950/646da8f5Fb4b902d2/14fd5d0ea236404c.jpg.avif', '//img14.360buyimg.com/n1/s450x450_jfs/t1/53342/12/24280/61349/646da8f5F1e2b7360/09fbf3d6942eb18a.jpg.avif', '3598', '华硕GeForceRTX4060Ti系列显卡均采用高品质的SAPII超合金供电设计，其可在毫微秒的时间内轻松提供数百瓦的功率', '10', '3');
INSERT INTO `goods` VALUES ('51', '铭瑄 GTX2060TI', '//img14.360buyimg.com/n1/jfs/t1/61304/19/9110/89686/5d6f4c3aE2b048af6/9206e418da8c0a62.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/68127/19/9045/91489/5d6f4c3aE9c428f46/1fede382bd9a36ec.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/60877/39/9281/98766/5d6f4c3aEc4669c0b/c458ea877af8e06c.jpg.avif', '1499', '618硬核装备推荐 铭瑄RTX3070Ti光追独显秒杀价3399元 配置参数 详细参数>> 芯片厂商:NVIDIA(10款) 显卡芯片:GeForceRTX2060(10款)', '10', '1');
INSERT INTO `goods` VALUES ('52', '七彩虹 RTX4060Ti', '//img14.360buyimg.com/n1/jfs/t1/127479/11/32772/84939/646d791fFd29e7d6a/d20da39094ed2e51.jpg.avif', '//img14.360buyimg.com/n1/jfs/t1/84520/34/23873/97708/646d791fFd670f174/d1ef09c298f103ed.png.avif', '//img14.360buyimg.com/n1/jfs/t1/89357/30/32866/83084/646d791fF9aaa501d/8d697971f27341cc.jpg.avif', '3349', '产品:iGame GeForce RTX 4060 Ti Ultra W DUO 七彩虹 显卡 七彩虹在618开创了崭新的试玩模式。在这次展览中,七彩虹联合巧正工坊推出了新产品RTX 4060 Ti显卡的免费试玩活动', '10', '3');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `amount` int(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `paytype` tinyint(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('75', '28', '1', '4', '2', '管理员', '1333333333', '中华人民共和国', '2019-10-07 12:31:07', '1');
INSERT INTO `order` VALUES ('76', '299', '1', '4', '1', '管理员', '1333333333', '中华人民共和国', '2023-06-13 10:58:06', '1');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id_idx` (`order_id`),
  KEY `fk_orderitem_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('78', '28', '1', '10', '75');
INSERT INTO `orderitem` VALUES ('79', '299', '1', '9', '76');

-- ----------------------------
-- Table structure for `recommend`
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('9', '2', '9');
INSERT INTO `recommend` VALUES ('10', '3', '10');
INSERT INTO `recommend` VALUES ('12', '3', '13');
INSERT INTO `recommend` VALUES ('14', '3', '15');
INSERT INTO `recommend` VALUES ('15', '3', '16');
INSERT INTO `recommend` VALUES ('17', '3', '18');
INSERT INTO `recommend` VALUES ('33', '2', '10');
INSERT INTO `recommend` VALUES ('34', '2', '11');
INSERT INTO `recommend` VALUES ('36', '2', '13');
INSERT INTO `recommend` VALUES ('38', '2', '15');
INSERT INTO `recommend` VALUES ('39', '2', '16');
INSERT INTO `recommend` VALUES ('40', '2', '18');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '20系列');
INSERT INTO `type` VALUES ('2', '30系列');
INSERT INTO `type` VALUES ('3', '40系列');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  `isvalidate` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin@vilicode.com', 'admin', '管理员', '1333333333', '中华人民共和国', '', '');
INSERT INTO `user` VALUES ('2', 'vili', 'vili@vilicode.com', 'vili', 'vili', '1344444444', '中华人民共和国', '', '');
