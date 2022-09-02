/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : x_mall

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 29/06/2022 17:53:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `link_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `link_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系地址',
  `link_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '所属用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收货地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '哈喽', '北京市前门大街120号', '13909768928', 21);
INSERT INTO `address` VALUES (3, '夹克', '合肥', '13099887799', 22);
INSERT INTO `address` VALUES (4, '哈哈哈', '南京', '13988776655', 21);
INSERT INTO `address` VALUES (6, '黄生', '湖南省衡阳市三塘镇新城北路小区', '18932108647', 24);
INSERT INTO `address` VALUES (7, '黄磊', '湖南省长沙市长沙县湖南工程职业技术学院', '18932108647', 24);

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片地址',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '关联url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b717c9c84e44409496e993ed6b526c05.jpg?thumb=1&w=766&h=288&f=webp&q=90', 'https://www.mi.com/index.html');
INSERT INTO `banner` VALUES (2, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3b549726ae51e189b4c3eb0f672cba36.jpg?w=2452&h=920', 'https://www.mi.com/index.html');
INSERT INTO `banner` VALUES (3, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/02248aa55d5bef10c9013297074d7795.jpg?w=2452&h=920', 'https://www.mi.com/index.html');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `goods_id` bigint(0) NULL DEFAULT NULL COMMENT '商品id',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户id',
  `count` int(0) NULL DEFAULT NULL COMMENT '商品数量',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `goods_user`(`goods_id`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (4, 4, 22, 3, '2022-06-23 20:44:02');
INSERT INTO `cart` VALUES (6, 4, 11, 1, '2022-06-23 20:44:02');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '手机 笔记本', '1001');
INSERT INTO `category` VALUES (2, '出行 穿戴', '1002');
INSERT INTO `category` VALUES (3, '家电', '1003');
INSERT INTO `category` VALUES (4, '电视', '1004');
INSERT INTO `category` VALUES (5, '其他', '1005');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `goods_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品图片',
  `goods_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品id',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户id',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (3, 'Pro 14 增强版 i5 独显-win11', '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/01d9571051a91e540e5c644fa60cc858.jpg?thumb=1&w=188&h=188&f=webp&q=90\"]', '3', '22', '2022-06-23 20:44:02');
INSERT INTO `collect` VALUES (4, 'Redmi K50 Pro', '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/18d2099cb0b05bbd23cb1915dfc9d0d6.jpg?thumb=1&w=167&h=167&f=webp&q=90\"]', '4', '11', '2022-06-23 20:44:02');
INSERT INTO `collect` VALUES (7, 'Redmi K50', '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/28c14106b688ac7ae88e761564789b37.jpg?thumb=1&w=250&h=250&f=webp&q=90\"]', '1', '24', '2022-06-23 20:44:02');
INSERT INTO `collect` VALUES (8, 'Redmi Note 11T Pro+', '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/211bb83776a8e0c8358732c3f3aa2864.png?thumb=1&w=167&h=167&f=webp&q=90\"]', '3', '24', '2022-06-23 20:44:02');
INSERT INTO `collect` VALUES (9, 'Redmi G 2021 R7/Rtx3050Ti', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/68637deb3ab9cecdc7805c7154e79683.jpg?thumb=1&w=188&h=188&f=webp&q=90', '3', '21', '2022-06-29 16:19:31');
INSERT INTO `collect` VALUES (10, 'Redmi Book Pro 15 2022', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0f8abb2bc3947c4679e3f1b2aafc28c0.jpg?thumb=1&w=188&h=188&f=webp&q=90', '1', '21', '2022-06-29 16:19:36');
INSERT INTO `collect` VALUES (11, 'Redmi K50 Pro', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/18d2099cb0b05bbd23cb1915dfc9d0d6.jpg?thumb=1&w=167&h=167&f=webp&q=90', '6', '21', '2022-06-29 16:19:41');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品描述',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品编号',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '原价',
  `discount` double(10, 2) NULL DEFAULT NULL COMMENT '折扣',
  `store` int(0) NULL DEFAULT NULL COMMENT '库存',
  `praise` int(0) NULL DEFAULT 0 COMMENT '点赞数',
  `sales` int(0) NULL DEFAULT 0 COMMENT '销量',
  `category_id` bigint(0) NULL DEFAULT NULL COMMENT '分类id',
  `imgs` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品图片',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `recommend` tinyint(1) NULL DEFAULT NULL COMMENT '是否推荐：0不推荐，1推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'Redmi Book Pro 15 2022', 'RTX™ 3050Ti光追独显与硬核锐龙芯梦幻联合，迎来游戏性能释放新境界。视野再突破，天生为赢而战，全方位为热爱进阶，Redmi G 2021 锐龙版，实力超能打。', 'g1001', 5599.00, 1.00, 979, 4, 21, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0f8abb2bc3947c4679e3f1b2aafc28c0.jpg?thumb=1&w=188&h=188&f=webp&q=90\"]', '2022-06-19 07:46:19', 1);
INSERT INTO `goods` VALUES (2, 'Apple 苹果 iPhone 11 全网通手机', 'RTX™ 3050Ti光追独显与硬核锐龙芯梦幻联合，迎来游戏性能释放新境界。视野再突破，天生为赢而战，全方位为热爱进阶，Redmi G 2021 锐龙版，实力超能打。', 'g1002', 5799.00, 1.00, 96, 0, 4, 4, '[\"http://localhost:9999/files/1656039059056\"]', '2022-06-19 07:46:30', 1);
INSERT INTO `goods` VALUES (3, 'Redmi G 2021 R7/Rtx3050Ti', 'RTX™ 3050Ti光追独显与硬核锐龙芯梦幻联合，迎来游戏性能释放新境界。视野再突破，天生为赢而战，全方位为热爱进阶，Redmi G 2021 锐龙版，实力超能打。', 'g1002', 5799.00, 1.00, 89, 0, 11, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/68637deb3ab9cecdc7805c7154e79683.jpg?thumb=1&w=188&h=188&f=webp&q=90\"]', '2022-06-19 07:46:17', 1);
INSERT INTO `goods` VALUES (4, 'Pro 14 增强版 i5 独显-win11', 'RTX™ 3050Ti光追独显与硬核锐龙芯梦幻联合，迎来游戏性能释放新境界。视野再突破，天生为赢而战，全方位为热爱进阶，Redmi G 2021 锐龙版，实力超能打。', 'g1004', 4799.00, 1.00, 995, 0, 5, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/01d9571051a91e540e5c644fa60cc858.jpg?thumb=1&w=188&h=188&f=webp&q=90\"]', '2022-06-19 07:46:32', 1);
INSERT INTO `goods` VALUES (5, 'Redmi Book Pro 14', 'RTX™ 3050Ti光追独显与硬核锐龙芯梦幻联合，迎来游戏性能释放新境界。视野再突破，天生为赢而战，全方位为热爱进阶，Redmi G 2021 锐龙版，实力超能打。', 'g1006', 5399.00, 1.00, 996, 0, 4, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e3c300330221ad788569e4fb1e6f932f.jpg?thumb=1&w=188&h=188&f=webp&q=90\"]', '2022-06-19 07:46:35', 1);
INSERT INTO `goods` VALUES (6, 'Redmi K50 Pro', '「至高享6期免息，信用卡分期支付享满减优惠」原生美肌人像2.0 | 4D光追焕颜美妆技术 | 3200万高清质感自拍 | 升级人眼追焦 | 6400万AI三摄 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 55W有线闪充 | 立体声双扬声器 | 多功能NFC', 'g9001', 2999.00, 1.00, 0, 0, 1, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/18d2099cb0b05bbd23cb1915dfc9d0d6.jpg?thumb=1&w=167&h=167&f=webp&q=90\"]', '2022-06-19 07:46:36', NULL);
INSERT INTO `goods` VALUES (7, 'Redmi K50', '「至高享6期免息，信用卡分期支付享满减优惠」原生美肌人像2.0 | 4D光追焕颜美妆技术 | 3200万高清质感自拍 | 升级人眼追焦 | 6400万AI三摄 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 55W有线闪充 | 立体声双扬声器 | 多功能NFC', 'g9001', 2399.00, 1.00, 0, 0, 1, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/28c14106b688ac7ae88e761564789b37.jpg?thumb=1&w=250&h=250&f=webp&q=90\"]', '2022-06-19 07:46:38', NULL);
INSERT INTO `goods` VALUES (8, 'Redmi Note 11T Pro+', '「至高享6期免息，信用卡分期支付享满减优惠」原生美肌人像2.0 | 4D光追焕颜美妆技术 | 3200万高清质感自拍 | 升级人眼追焦 | 6400万AI三摄 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 55W有线闪充 | 立体声双扬声器 | 多功能NFC', 'g9001', 2099.00, 1.00, 1, 0, 0, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/211bb83776a8e0c8358732c3f3aa2864.png?thumb=1&w=167&h=167&f=webp&q=90\"]', '2022-06-19 07:46:39', NULL);
INSERT INTO `goods` VALUES (9, 'Xiaomi Civi 1S', '「至高享6期免息，信用卡分期支付享满减优惠」原生美肌人像2.0 | 4D光追焕颜美妆技术 | 3200万高清质感自拍 | 升级人眼追焦 | 6400万AI三摄 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 55W有线闪充 | 立体声双扬声器 | 多功能NFC', '1', 2299.00, 1.00, 1, 0, 0, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0bcd64f412dfb5e15695fa96d21ecb23.png?thumb=1&w=250&h=250&f=webp&q=90\"]', '2022-06-19 07:46:40', NULL);
INSERT INTO `goods` VALUES (10, 'Xiaomi Civi 1S', '「至高享6期免息，信用卡分期支付享满减优惠」原生美肌人像2.0 | 4D光追焕颜美妆技术 | 3200万高清质感自拍 | 升级人眼追焦 | 6400万AI三摄 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 55W有线闪充 | 立体声双扬声器 | 多功能NFC', '1', 2299.00, 1.00, 1, 0, 0, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0bcd64f412dfb5e15695fa96d21ecb23.png?thumb=1&w=250&h=250&f=webp&q=90\"]', '2022-06-19 07:46:44', NULL);
INSERT INTO `goods` VALUES (11, 'Xiaomi Civi 1S', '「至高享6期免息，信用卡分期支付享满减优惠」原生美肌人像2.0 | 4D光追焕颜美妆技术 | 3200万高清质感自拍 | 升级人眼追焦 | 6400万AI三摄 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 55W有线闪充 | 立体声双扬声器 | 多功能NFC', '1', 2299.00, 1.00, 1, 0, 0, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0bcd64f412dfb5e15695fa96d21ecb23.png?thumb=1&w=250&h=250&f=webp&q=90\"]', '2022-06-19 07:46:45', NULL);
INSERT INTO `goods` VALUES (12, 'Xiaomi Civi 1S', '「至高享6期免息，信用卡分期支付享满减优惠」原生美肌人像2.0 | 4D光追焕颜美妆技术 | 3200万高清质感自拍 | 升级人眼追焦 | 6400万AI三摄 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 55W有线闪充 | 立体声双扬声器 | 多功能NFC', '1', 2299.00, 1.00, 1, 0, 0, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0bcd64f412dfb5e15695fa96d21ecb23.png?thumb=1&w=250&h=250&f=webp&q=90\"]', '2022-06-19 07:46:48', NULL);
INSERT INTO `goods` VALUES (13, 'Xiaomi Civi 1S', '「至高享6期免息，信用卡分期支付享满减优惠」原生美肌人像2.0 | 4D光追焕颜美妆技术 | 3200万高清质感自拍 | 升级人眼追焦 | 6400万AI三摄 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 55W有线闪充 | 立体声双扬声器 | 多功能NFC', '1', 2299.00, 1.00, 1, 0, 0, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0bcd64f412dfb5e15695fa96d21ecb23.png?thumb=1&w=250&h=250&f=webp&q=90\"]', '2022-06-19 07:46:50', NULL);
INSERT INTO `goods` VALUES (14, 'Xiaomi Civi 1S', '「至高享6期免息，信用卡分期支付享满减优惠」原生美肌人像2.0 | 4D光追焕颜美妆技术 | 3200万高清质感自拍 | 升级人眼追焦 | 6400万AI三摄 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 55W有线闪充 | 立体声双扬声器 | 多功能NFC', '1', 2299.00, 1.00, 1, 0, 0, 1, '[\"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0bcd64f412dfb5e15695fa96d21ecb23.png?thumb=1&w=250&h=250&f=webp&q=90\"]', '2022-06-19 07:47:52', NULL);

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_id` bigint(0) NULL DEFAULT NULL COMMENT '订单id',
  `goods_id` bigint(0) NULL DEFAULT NULL COMMENT '商品id',
  `count` int(0) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单商品关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES (1, 1, 1, 4);
INSERT INTO `order_goods` VALUES (2, 1, 3, 2);
INSERT INTO `order_goods` VALUES (3, 2, 1, 4);
INSERT INTO `order_goods` VALUES (4, 2, 3, 2);
INSERT INTO `order_goods` VALUES (5, 4, 2, 5);
INSERT INTO `order_goods` VALUES (6, 5, 1, 1);
INSERT INTO `order_goods` VALUES (7, 6, 2, 1);
INSERT INTO `order_goods` VALUES (8, 7, 4, 4);
INSERT INTO `order_goods` VALUES (9, 7, 5, 2);
INSERT INTO `order_goods` VALUES (10, 8, 2, 2);
INSERT INTO `order_goods` VALUES (11, 8, 3, 2);
INSERT INTO `order_goods` VALUES (12, 8, 4, 1);
INSERT INTO `order_goods` VALUES (13, 9, 1, 1);
INSERT INTO `order_goods` VALUES (14, 10, 3, 1);
INSERT INTO `order_goods` VALUES (15, 10, 7, 1);
INSERT INTO `order_goods` VALUES (16, 11, 3, 1);
INSERT INTO `order_goods` VALUES (17, 12, 1, 1);
INSERT INTO `order_goods` VALUES (18, 13, 1, 1);
INSERT INTO `order_goods` VALUES (19, 14, 3, 1);
INSERT INTO `order_goods` VALUES (20, 15, 3, 1);
INSERT INTO `order_goods` VALUES (21, 15, 2, 1);
INSERT INTO `order_goods` VALUES (22, 16, 1, 1);
INSERT INTO `order_goods` VALUES (23, 17, 1, 1);
INSERT INTO `order_goods` VALUES (24, 18, 1, 1);
INSERT INTO `order_goods` VALUES (25, 19, 1, 1);
INSERT INTO `order_goods` VALUES (26, 20, 1, 2);
INSERT INTO `order_goods` VALUES (27, 20, 3, 1);
INSERT INTO `order_goods` VALUES (28, 20, 5, 1);
INSERT INTO `order_goods` VALUES (29, 21, 3, 1);
INSERT INTO `order_goods` VALUES (30, 22, 1, 1);
INSERT INTO `order_goods` VALUES (31, 23, 6, 1);
INSERT INTO `order_goods` VALUES (32, 24, 1, 2);
INSERT INTO `order_goods` VALUES (33, 25, 1, 1);
INSERT INTO `order_goods` VALUES (34, 26, 3, 2);
INSERT INTO `order_goods` VALUES (35, 26, 5, 1);
INSERT INTO `order_goods` VALUES (36, 27, 1, 1);
INSERT INTO `order_goods` VALUES (37, 28, 1, 1);
INSERT INTO `order_goods` VALUES (38, 29, 1, 1);
INSERT INTO `order_goods` VALUES (39, 30, 1, 1);
INSERT INTO `order_goods` VALUES (40, 31, 1, 1);
INSERT INTO `order_goods` VALUES (41, 32, 1, 1);
INSERT INTO `order_goods` VALUES (42, 33, 1, 1);
INSERT INTO `order_goods` VALUES (43, 33, 3, 1);

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 553 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (6, '用户 hello 登录系统', '2021-05-13 23:39:25', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (7, '用户 hello 登录系统', '2021-05-13 23:49:54', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (8, '用户 hello 登录系统', '2021-05-13 23:50:01', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (9, '用户 hello 登录系统', '2021-05-13 23:50:27', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (10, '更新用户：hello ', '2021-05-14 00:00:41', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (11, '更新角色：超级管理员', '2021-05-14 12:54:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (12, '更新角色：超级管理员', '2021-05-14 12:55:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (13, '更新角色：超级管理员', '2021-05-14 12:55:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (14, '更新角色：普通用户', '2021-05-14 12:55:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (15, '更新角色：普通用户', '2021-05-14 12:55:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (16, '更新角色：超级管理员', '2021-05-14 12:58:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (17, '更新角色：超级管理员', '2021-05-14 12:59:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (18, '更新角色：超级管理员', '2021-05-14 12:59:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (19, '更新角色：超级管理员', '2021-05-14 13:01:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (20, '更新角色：超级管理员', '2021-05-14 13:01:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (21, '更新角色：超级管理员', '2021-05-14 13:01:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (22, '更新角色：超级管理员', '2021-05-14 13:01:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (23, '更新角色：超级管理员', '2021-05-14 13:08:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (24, '更新角色：超级管理员', '2021-05-14 13:09:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (25, '更新角色：超级管理员', '2021-05-14 13:09:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (26, '更新角色：超级管理员', '2021-05-14 13:09:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (27, '更新角色：超级管理员', '2021-05-14 13:09:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (28, '更新角色：超级管理员', '2021-05-14 13:09:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (29, '更新角色：超级管理员', '2021-05-14 13:09:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (30, '更新角色：超级管理员', '2021-05-14 13:15:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (31, '更新角色：超级管理员', '2021-05-14 13:30:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (32, '更新角色：超级管理员', '2021-05-14 13:30:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (33, '更新角色：超级管理员', '2021-05-14 13:31:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (34, '更新角色：超级管理员', '2021-05-14 13:31:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (35, '删除权限菜单：日志管理', '2021-05-14 13:33:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (36, '用户 admin 登录系统', '2021-05-14 13:39:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (37, '用户 admin 登录系统', '2021-05-14 13:40:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (38, '用户 admin 登录系统', '2021-05-14 14:38:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (39, '用户 admin 登录系统', '2021-05-14 14:38:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (40, '用户 admin 登录系统', '2021-05-14 14:38:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (41, '用户 admin 登录系统', '2021-05-14 14:39:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (42, '用户 admin 登录系统', '2021-05-14 14:41:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (43, '用户 admin 登录系统', '2021-05-14 14:43:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (44, '用户 admin 登录系统', '2021-05-14 14:43:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (45, '用户 admin 登录系统', '2021-05-14 14:44:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (46, '用户 admin 登录系统', '2021-05-14 14:45:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (47, '用户 admin 登录系统', '2021-05-14 14:47:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (48, '用户 admin 登录系统', '2021-05-14 14:47:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (49, '用户 admin 登录系统', '2021-05-14 14:53:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (50, '用户 admin 登录系统', '2021-05-14 14:53:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (51, '用户 admin 登录系统', '2021-05-14 14:54:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (52, '用户 admin 登录系统', '2021-05-14 14:55:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (53, '用户 admin 登录系统', '2021-05-14 14:56:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (54, '用户 admin 登录系统', '2021-05-14 14:58:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (55, '用户 admin 登录系统', '2021-05-14 15:02:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (56, '用户 admin 登录系统', '2021-05-14 15:03:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (57, '用户 admin 登录系统', '2021-05-14 15:03:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (58, '用户 admin 登录系统', '2021-05-14 15:06:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (59, '用户 admin 登录系统', '2021-05-14 15:06:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (60, '用户 admin 登录系统', '2021-05-14 15:07:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (61, '用户 admin 登录系统', '2021-05-14 15:07:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (62, '用户 admin 登录系统', '2021-05-14 15:08:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (63, '用户 admin 登录系统', '2021-05-14 15:09:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (64, '用户 admin 登录系统', '2021-05-14 15:10:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (65, '用户 admin 登录系统', '2021-05-14 16:16:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (66, '用户 admin 登录系统', '2021-05-14 16:27:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (67, '用户 admin 登录系统', '2021-05-14 16:27:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (68, '用户 admin 登录系统', '2021-05-14 16:27:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (69, '用户 admin 登录系统', '2021-05-14 16:28:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (70, '用户 admin 登录系统', '2021-05-14 16:28:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (71, '用户 admin 登录系统', '2021-05-14 16:29:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (72, '用户 admin 登录系统', '2021-05-14 16:33:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (73, '用户 admin 登录系统', '2021-05-14 16:36:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (74, '用户 admin 登录系统', '2021-05-14 16:36:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (75, '用户 admin 登录系统', '2021-05-14 16:37:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (76, '用户 admin 登录系统', '2021-05-14 16:38:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (77, '用户 admin 登录系统', '2021-05-14 16:38:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (78, '用户 admin 登录系统', '2021-05-14 16:38:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (79, '用户 admin 登录系统', '2021-05-14 16:44:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (80, '用户 admin 登录系统', '2021-05-14 16:44:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (81, '用户 admin 登录系统', '2021-05-14 16:44:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (82, '用户 admin 登录系统', '2021-05-14 16:49:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (83, '用户 admin 登录系统', '2021-05-14 16:49:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (84, '用户 admin 登录系统', '2021-05-14 16:52:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (85, '用户 admin 登录系统', '2021-05-14 16:52:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (86, '用户 admin 登录系统', '2021-05-14 17:05:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (87, '用户 admin 登录系统', '2021-05-14 17:12:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (88, '更新角色：超级管理员', '2021-05-14 17:15:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (89, '更新角色：超级管理员', '2021-05-14 17:15:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (90, '更新角色：超级管理员', '2021-05-14 17:15:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (91, '更新角色：超级管理员', '2021-05-14 17:15:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (92, '更新角色：超级管理员', '2021-05-14 17:16:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (93, '更新角色：超级管理员', '2021-05-14 17:16:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (94, '更新角色：超级管理员', '2021-05-14 17:16:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (95, '更新角色：超级管理员', '2021-05-14 17:16:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (96, '更新角色：超级管理员', '2021-05-14 17:16:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (97, '更新角色：超级管理员', '2021-05-14 17:16:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (98, '更新角色：超级管理员', '2021-05-14 17:16:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (99, '更新角色：超级管理员', '2021-05-14 17:16:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (100, '用户 admin 登录系统', '2021-05-14 17:17:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (101, '用户 admin 登录系统', '2021-05-14 17:17:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (102, '用户 admin 登录系统', '2021-05-14 17:17:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (103, '用户 admin 登录系统', '2021-05-14 17:17:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (104, '删除权限菜单：日志管理', '2021-05-14 17:20:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (105, '新增权限菜单：1', '2021-05-14 17:21:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (106, '更新角色：超级管理员', '2021-05-14 17:21:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (107, '更新角色：超级管理员', '2021-05-14 17:21:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (108, '更新角色：超级管理员', '2021-05-14 17:21:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (109, '更新角色：超级管理员', '2021-05-14 17:25:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (110, '更新角色：超级管理员', '2021-05-14 17:25:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (111, '更新角色：超级管理员', '2021-05-14 17:25:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (112, '用户 admin 登录系统', '2021-05-14 17:42:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (113, '用户 admin 登录系统', '2021-05-14 17:43:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (114, '更新角色：超级管理员', '2021-05-14 17:43:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (115, '用户 admin 登录系统', '2021-05-14 17:43:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (116, '更新角色：超级管理员', '2021-05-14 17:45:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (117, '更新角色：超级管理员', '2021-05-14 17:45:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (118, '更新角色：超级管理员', '2021-05-14 17:46:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (119, '更新角色：超级管理员', '2021-05-14 17:46:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (120, '更新角色：超级管理员', '2021-05-14 17:46:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (121, '更新角色：超级管理员', '2021-05-14 17:46:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (122, '更新角色：超级管理员', '2021-05-14 18:02:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (123, '用户 admin 登录系统', '2021-05-14 18:06:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (124, '用户 admin 登录系统', '2021-05-14 18:11:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (125, '用户 admin 登录系统', '2021-05-14 18:13:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (126, '用户 admin 登录系统', '2021-05-14 18:13:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (127, '用户 admin 登录系统', '2021-05-14 18:15:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (128, '用户 admin 登录系统', '2021-05-14 18:17:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (129, '用户 admin 登录系统', '2021-05-14 18:18:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (130, '更新角色：超级管理员', '2021-05-14 18:18:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (131, '更新角色：超级管理员', '2021-05-14 18:18:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (132, '更新角色：超级管理员', '2021-05-14 18:18:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (133, '用户 admin 登录系统', '2021-05-14 18:31:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (134, '用户 admin 登录系统', '2021-05-14 18:33:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (135, '用户 admin 登录系统', '2021-05-14 18:33:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (136, '用户 admin 登录系统', '2021-05-14 18:34:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (137, '用户 admin 登录系统', '2021-05-14 18:34:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (138, '用户 admin 登录系统', '2021-05-14 18:37:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (139, '更新角色：超级管理员', '2021-05-14 18:38:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (140, '更新角色：超级管理员', '2021-05-14 18:38:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (141, '更新角色：超级管理员', '2021-05-14 18:38:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (142, '用户 admin 登录系统', '2021-05-14 18:47:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (143, '更新角色：超级管理员', '2021-05-14 18:47:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (144, '用户 admin 登录系统', '2021-05-14 19:13:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (145, '用户 admin 登录系统', '2021-05-14 19:19:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (146, '用户 admin 登录系统', '2021-05-14 19:19:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (147, '用户 admin 登录系统', '2021-05-14 19:48:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (148, '更新角色：超级管理员', '2021-05-14 19:48:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (149, '用户 admin 登录系统', '2021-05-14 19:56:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (150, '更新角色：超级管理员', '2021-05-14 20:00:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (151, '更新角色：超级管理员', '2021-05-14 20:00:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (152, '更新角色：超级管理员', '2021-05-14 20:00:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (153, '更新角色：超级管理员', '2021-05-14 20:02:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (154, '删除权限菜单：1', '2021-05-14 20:02:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (155, '新增权限菜单：1', '2021-05-14 20:05:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (156, '更新角色：超级管理员', '2021-05-14 20:05:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (157, '更新角色：超级管理员', '2021-05-14 20:05:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (158, '删除权限菜单：1', '2021-05-14 20:05:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (159, '更新角色：超级管理员', '2021-05-14 20:05:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (160, '新增权限菜单：1', '2021-05-14 20:06:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (161, '更新角色：超级管理员', '2021-05-14 20:06:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (162, '删除权限菜单：1', '2021-05-14 20:06:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (163, '新增权限菜单：2', '2021-05-14 20:41:09', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (164, '更新角色：超级管理员', '2021-05-14 20:41:12', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (165, '更新角色：超级管理员', '2021-05-14 20:41:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (166, '删除权限菜单：2', '2021-05-14 20:41:20', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (167, '新增权限菜单：2', '2021-05-14 20:42:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (168, '删除权限菜单：2', '2021-05-14 20:42:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (169, '删除权限菜单：2', '2021-05-14 20:43:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (170, '新增权限菜单：1', '2021-05-14 20:44:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (171, '更新角色：超级管理员', '2021-05-14 20:45:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (172, '删除权限菜单：1', '2021-05-14 20:45:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (173, '新增权限菜单：1', '2021-05-14 22:03:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (174, '更新角色：超级管理员', '2021-05-14 22:03:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (175, '删除权限菜单：1', '2021-05-14 22:03:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (176, '用户 admin 登录系统', '2021-05-14 22:05:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (177, '用户 admin 登录系统', '2021-05-14 22:06:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (178, '新增权限菜单：1', '2021-05-14 22:06:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (179, '更新角色：超级管理员', '2021-05-14 22:07:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (180, '删除权限菜单：1', '2021-05-14 22:07:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (181, '新增权限菜单：22', '2021-05-14 22:11:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (182, '更新角色：超级管理员', '2021-05-14 22:11:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (183, '更新角色：超级管理员', '2021-05-14 22:11:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (184, '删除权限菜单：22', '2021-05-14 22:11:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (185, '用户 admin 登录系统', '2021-05-15 23:18:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (186, '更新用户：admin ', '2021-05-15 23:22:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (187, '用户 admin 登录系统', '2021-05-15 23:37:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (188, '用户 admin 登录系统', '2021-05-17 19:35:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (189, '用户 admin 登录系统', '2021-05-17 19:36:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (190, '用户 admin 登录系统', '2021-05-17 19:37:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (191, '用户 admin 登录系统', '2021-05-17 19:42:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (192, '用户 admin 登录系统', '2021-05-17 20:00:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (193, '用户 admin 登录系统', '2021-05-24 17:37:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (194, '用户 admin 登录系统', '2021-05-24 17:55:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (195, '更新用户：jerry ', '2021-05-24 17:57:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (196, '更新用户：jack ', '2021-05-24 17:57:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (197, '用户 admin 登录系统', '2021-05-24 18:02:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (198, '用户 hello 登录系统', '2021-05-24 18:15:41', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (199, '更新用户：hello ', '2021-05-24 18:17:40', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (200, '用户 admin 登录系统', '2021-05-24 22:58:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (201, '用户 admin 登录系统', '2021-05-24 23:17:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (202, '更新角色：超级管理员', '2021-05-24 23:25:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (203, '更新角色：超级管理员', '2021-05-24 23:40:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (204, '更新角色：超级管理员', '2021-05-25 00:00:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (205, '用户 admin 登录系统', '2021-05-25 22:26:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (206, '更新角色：超级管理员', '2021-05-25 22:27:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (207, '更新角色：超级管理员', '2021-05-25 22:27:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (208, '用户 admin 登录系统', '2021-05-25 22:46:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (209, '用户 admin 登录系统', '2021-05-27 09:26:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (210, '更新权限菜单：商品管理', '2021-05-27 14:32:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (211, '用户 admin 登录系统', '2021-05-27 15:57:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (212, '更新用户：admin ', '2021-05-27 15:58:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (213, '用户 admin 登录系统', '2021-05-28 10:15:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (214, '用户 hello 登录系统', '2021-05-28 10:54:38', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (215, '更新角色：超级管理员', '2021-05-28 16:03:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (216, '用户 hello 登录系统', '2021-06-02 10:05:23', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (217, '更新用户：hello ', '2021-06-02 10:42:39', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (218, '用户 hello 登录系统', '2021-06-02 10:44:19', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (219, '更新用户账户：hello ', '2021-06-02 15:52:29', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (220, '更新用户账户：hello ', '2021-06-02 15:52:41', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (221, '更新用户账户：hello ', '2021-06-02 15:58:21', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (222, '用户 admin 登录系统', '2021-06-02 16:44:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (223, '用户 hello 登录系统', '2021-06-02 16:45:35', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (224, '用户 hello 登录系统', '2021-06-06 11:17:26', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (225, '更新用户账户：hello ', '2021-06-06 11:34:46', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (226, '更新用户账户：hello ', '2021-06-06 11:34:52', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (227, '更新用户：hello ', '2021-06-06 11:38:35', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (228, '用户 admin 登录系统', '2021-06-06 11:39:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (229, '用户 hello 登录系统', '2021-06-06 11:47:41', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (230, '用户 admin 登录系统', '2021-06-06 12:12:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (231, '用户 hello 登录系统', '2021-06-06 12:13:24', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (232, '用户 admin 登录系统', '2021-06-06 12:44:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (233, '用户 hello 登录系统', '2021-06-06 14:22:01', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (234, '用户 admin 登录系统', '2021-06-06 14:22:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (235, '用户 hello 登录系统', '2021-06-06 14:22:37', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (236, '用户 admin 登录系统', '2021-06-06 14:23:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (237, '用户 hello 登录系统', '2021-06-06 14:23:20', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (238, '用户 admin 登录系统', '2021-06-06 14:23:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (239, '更新权限菜单：轮播图管理', '2021-06-06 14:24:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (240, '更新权限菜单：商品分类管理', '2021-06-06 14:25:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (241, '用户 hello 登录系统', '2021-06-06 14:26:11', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (242, '用户 hello 登录系统', '2021-06-06 14:26:37', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (243, '用户 hello 登录系统', '2021-06-06 22:26:21', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (244, '更新用户账户：hello ', '2021-06-06 22:31:15', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (245, '用户 admin 登录系统', '2021-06-06 22:32:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (246, '用户 hello 登录系统', '2021-06-06 22:32:17', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (247, '用户 admin 登录系统', '2021-06-06 22:33:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (248, '用户 hello 登录系统', '2021-06-06 22:40:33', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (249, '用户 admin 登录系统', '2021-06-06 22:40:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (250, '用户 hello 登录系统', '2021-06-06 22:41:19', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (251, '用户 admin 登录系统', '2021-06-06 23:15:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (252, '用户 admin 登录系统', '2021-06-08 11:00:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (253, '用户 hello 登录系统', '2021-06-08 11:00:19', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (254, '用户 admin 登录系统', '2021-06-26 11:11:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (255, '用户 hello 登录系统', '2021-06-26 11:21:49', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (256, '用户 hello 登录系统', '2021-06-26 11:23:38', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (257, '用户 admin 登录系统', '2021-06-26 11:23:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (258, '用户 admin 登录系统', '2021-06-26 20:34:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (259, '用户 admin 登录系统', '2021-06-27 09:33:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (260, '用户 admin 登录系统', '2021-07-14 11:11:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (261, '用户 hello 登录系统', '2021-10-11 21:47:40', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (262, '用户 admin 登录系统', '2021-10-11 21:47:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (263, '用户 hello 登录系统', '2021-10-11 22:03:17', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (264, '用户 admin 登录系统', '2021-10-18 20:03:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (265, '更新角色：超级管理员', '2021-10-18 20:03:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (266, '更新角色：超级管理员', '2021-10-18 20:03:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (267, '用户 admin 登录系统', '2021-10-18 20:03:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (268, '用户 admin 登录系统', '2021-10-18 21:15:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (269, '用户 admin 登录系统', '2021-10-18 21:17:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (270, '用户 hello 登录系统', '2021-10-18 21:18:02', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (271, '用户 admin 登录系统', '2021-10-18 21:18:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (272, '删除权限菜单：收藏管理', '2021-10-18 21:20:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (273, '用户 admin 登录系统', '2021-10-23 20:57:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (274, '用户 hello 登录系统', '2021-10-23 21:15:02', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (275, '用户 admin 登录系统', '2022-01-21 22:51:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (276, '用户 hello 登录系统', '2022-01-21 22:51:41', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (277, '更新用户账户：hello ', '2022-01-21 22:52:37', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (278, '更新用户：hello ', '2022-01-21 22:52:42', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (279, '用户 admin 登录系统', '2022-02-16 20:39:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (280, '用户 jack 登录系统', '2022-02-16 20:39:30', 'jack', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (281, '用户 hello 登录系统', '2022-02-16 20:44:36', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (282, '用户 jack 登录系统', '2022-02-16 20:44:56', 'jack', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (283, '用户 hello 登录系统', '2022-02-16 20:46:49', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (284, '用户 jack 登录系统', '2022-02-16 20:54:54', 'jack', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (285, '用户 hello 登录系统', '2022-02-16 20:55:05', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (286, '用户 jack 登录系统', '2022-02-16 20:55:14', 'jack', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (287, '用户 admin 登录系统', '2022-02-16 20:55:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (288, '用户 hello 登录系统', '2022-02-16 20:55:35', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (289, '用户 jack 登录系统', '2022-02-16 20:59:22', 'jack', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (290, '用户 jack 登录系统', '2022-02-16 21:03:10', 'jack', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (291, '用户 hello 登录系统', '2022-02-16 21:04:14', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (292, '用户 admin 登录系统', '2022-02-16 21:05:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (293, '用户 hello 登录系统', '2022-02-16 21:05:18', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (294, '用户 呼呼 注册账号成功', '2022-02-16 21:06:12', '呼呼', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (295, '用户 hu 登录系统', '2022-02-16 21:07:14', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (296, '更新用户：hu ', '2022-02-16 21:07:22', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (297, '用户 hello 登录系统', '2022-03-04 22:07:54', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (298, '用户 tom 登录系统', '2022-03-04 22:08:21', 'tom', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (299, '用户 hello 登录系统', '2022-03-04 22:09:08', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (300, '用户 tom 登录系统', '2022-03-04 22:09:29', 'tom', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (301, '用户 admin 登录系统', '2022-06-15 15:21:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (302, '用户 admin 登录系统', '2022-06-15 15:23:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (303, '用户 admin 登录系统', '2022-06-15 15:26:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (304, '用户 admin 登录系统', '2022-06-15 15:27:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (305, '用户 admin 登录系统', '2022-06-15 15:28:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (306, '用户 admin 登录系统', '2022-06-15 15:29:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (307, '用户 admin 登录系统', '2022-06-15 15:31:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (308, '用户 admin 登录系统', '2022-06-15 15:42:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (309, '用户 admin 登录系统', '2022-06-15 15:55:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (310, '用户 admin 登录系统', '2022-06-15 15:55:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (311, '用户 admin 登录系统', '2022-06-15 19:49:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (312, '用户 hu 登录系统', '2022-06-15 19:56:48', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (313, '用户 admin 登录系统', '2022-06-15 19:57:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (314, '用户 admin 登录系统', '2022-06-15 20:16:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (315, '用户 hu 登录系统', '2022-06-15 20:20:36', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (316, '用户 hu 登录系统', '2022-06-17 23:26:06', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (317, '用户 hu 登录系统', '2022-06-18 00:51:53', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (318, '用户 hu 登录系统', '2022-06-18 15:36:56', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (319, '用户 hu 登录系统', '2022-06-18 15:42:34', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (320, '用户 hu 登录系统', '2022-06-18 15:43:38', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (321, '用户 hu 登录系统', '2022-06-18 16:14:13', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (322, '用户 hu 登录系统', '2022-06-18 16:51:24', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (323, '用户 hu 登录系统', '2022-06-18 17:06:23', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (324, '更新用户：hu ', '2022-06-18 17:08:05', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (325, '更新用户账户：hu ', '2022-06-18 17:08:11', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (326, '用户 hu 登录系统', '2022-06-18 17:19:08', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (327, '用户 admin 登录系统', '2022-06-18 17:21:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (328, '用户 admin 登录系统', '2022-06-18 22:32:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (329, '用户 hu 登录系统', '2022-06-18 22:32:53', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (330, '用户 hu 登录系统', '2022-06-20 15:07:11', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (331, '用户 hu 登录系统', '2022-06-20 16:18:26', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (332, '用户 hu 登录系统', '2022-06-21 10:50:07', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (333, '用户 hu 登录系统', '2022-06-22 01:37:22', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (334, '用户 hu 登录系统', '2022-06-22 17:31:09', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (335, '用户 hu 登录系统', '2022-06-22 21:51:16', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (336, '用户 hu 登录系统', '2022-06-22 23:20:29', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (337, '更新用户账户：hu ', '2022-06-23 00:05:34', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (338, '用户 hu 登录系统', '2022-06-23 00:37:04', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (339, '用户 hu 登录系统', '2022-06-23 00:44:02', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (340, '用户 hu 登录系统', '2022-06-23 00:44:25', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (341, '用户 hello 登录系统', '2022-06-23 00:47:51', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (342, '更新用户：hello ', '2022-06-23 00:48:53', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (343, '更新用户：hello ', '2022-06-23 00:49:07', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (344, '更新用户账户：hu ', '2022-06-23 01:10:41', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (345, '用户 admin 登录系统', '2022-06-23 01:16:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (346, '用户 hu 登录系统', '2022-06-23 01:16:54', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (347, '用户 hu 登录系统', '2022-06-23 01:54:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (348, '用户 hu 登录系统', '2022-06-23 01:54:42', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (349, '更新用户：hu ', '2022-06-23 01:55:13', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (350, '用户 hu 登录系统', '2022-06-23 02:02:43', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (351, '用户 hu 登录系统', '2022-06-23 02:19:39', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (352, '用户 hu 登录系统', '2022-06-23 10:25:20', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (353, '用户 hu 登录系统', '2022-06-23 10:27:00', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (354, '用户 hu 登录系统', '2022-06-23 12:11:54', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (355, '用户 hu 登录系统', '2022-06-23 15:47:52', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (356, '用户 hu 登录系统', '2022-06-23 15:48:09', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (357, '用户 admin 登录系统', '2022-06-23 15:48:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (358, '更新角色：超级管理员', '2022-06-23 15:48:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (359, '更新角色：超级管理员', '2022-06-23 15:48:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (360, '用户 hu 登录系统', '2022-06-23 20:40:24', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (361, '用户 hu 登录系统', '2022-06-23 20:40:37', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (362, '用户 hu 登录系统', '2022-06-23 20:43:19', 'hu', '127.0.0.1');
INSERT INTO `t_log` VALUES (363, '用户 hu 登录系统', '2022-06-23 20:43:37', 'hu', '127.0.0.1');
INSERT INTO `t_log` VALUES (364, '用户 admin 登录系统', '2022-06-23 20:44:22', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (365, '用户 hu 登录系统', '2022-06-24 10:46:27', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (366, '用户 admin 登录系统', '2022-06-24 10:46:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (367, '用户 hu 登录系统', '2022-06-24 10:47:33', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (368, '用户 admin 登录系统', '2022-06-24 10:48:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (369, '用户 hu 登录系统', '2022-06-24 10:49:12', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (370, '用户 hu 登录系统', '2022-06-24 10:50:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (371, '用户 admin 登录系统', '2022-06-24 10:50:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (372, '用户 hu 登录系统', '2022-06-24 10:52:07', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (373, '用户 hu 登录系统', '2022-06-24 11:03:38', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (374, '用户 hu 登录系统', '2022-06-24 11:39:24', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (375, '用户 hu 登录系统', '2022-06-24 11:40:21', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (376, '用户 hu 登录系统', '2022-06-24 11:50:34', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (377, '用户 hu 登录系统', '2022-06-24 12:34:30', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (378, '用户 hu 登录系统', '2022-06-24 12:47:23', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (379, '用户 hu 登录系统', '2022-06-24 13:14:37', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (380, '用户 hu 登录系统', '2022-06-24 15:55:45', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (381, '用户 admin 登录系统', '2022-06-24 15:57:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (382, '用户 hu 登录系统', '2022-06-24 16:04:49', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (383, '用户 admin 登录系统', '2022-06-26 11:19:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (384, '用户 admin 登录系统', '2022-06-27 15:05:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (385, '用户 hu 登录系统', '2022-06-27 15:05:54', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (386, '用户 hu 登录系统', '2022-06-27 17:33:40', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (387, '用户 hu 登录系统', '2022-06-28 01:02:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (388, '用户 hu 登录系统', '2022-06-28 10:47:18', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (389, '用户 hu 登录系统', '2022-06-28 10:51:10', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (390, '用户 hu 登录系统', '2022-06-28 10:51:34', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (391, '用户 hu 登录系统', '2022-06-28 10:53:41', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (392, '用户 hu 登录系统', '2022-06-28 10:53:50', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (393, '用户 hu 登录系统', '2022-06-28 10:53:51', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (394, '用户 hu 登录系统', '2022-06-28 10:54:00', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (395, '用户 hu 登录系统', '2022-06-28 10:54:00', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (396, '用户 hu 登录系统', '2022-06-28 10:54:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (397, '用户 hu 登录系统', '2022-06-28 10:54:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (398, '用户 hu 登录系统', '2022-06-28 10:54:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (399, '用户 hu 登录系统', '2022-06-28 10:54:59', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (400, '用户 hu 登录系统', '2022-06-28 10:55:00', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (401, '用户 hu 登录系统', '2022-06-28 10:55:00', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (402, '用户 hu 登录系统', '2022-06-28 10:55:00', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (403, '用户 hu 登录系统', '2022-06-28 10:55:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (404, '用户 hu 登录系统', '2022-06-28 10:55:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (405, '用户 hu 登录系统', '2022-06-28 10:55:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (406, '用户 hu 登录系统', '2022-06-28 10:55:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (407, '用户 hu 登录系统', '2022-06-28 10:55:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (408, '用户 hu 登录系统', '2022-06-28 10:55:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (409, '用户 hu 登录系统', '2022-06-28 10:55:02', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (410, '用户 hu 登录系统', '2022-06-28 10:55:02', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (411, '用户 hu 登录系统', '2022-06-28 10:55:02', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (412, '用户 hu 登录系统', '2022-06-28 10:55:02', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (413, '用户 hu 登录系统', '2022-06-28 10:55:02', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (414, '用户 hu 登录系统', '2022-06-28 10:55:02', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (415, '用户 hu 登录系统', '2022-06-28 10:55:02', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (416, '用户 hu 登录系统', '2022-06-28 10:55:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (417, '用户 hu 登录系统', '2022-06-28 10:55:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (418, '用户 hu 登录系统', '2022-06-28 10:55:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (419, '用户 hu 登录系统', '2022-06-28 10:55:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (420, '用户 hu 登录系统', '2022-06-28 10:55:04', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (421, '用户 hu 登录系统', '2022-06-28 10:55:04', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (422, '用户 hu 登录系统', '2022-06-28 10:55:04', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (423, '用户 hu 登录系统', '2022-06-28 10:55:04', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (424, '用户 hu 登录系统', '2022-06-28 10:58:08', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (425, '用户 hu 登录系统', '2022-06-28 10:58:10', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (426, '用户 hu 登录系统', '2022-06-28 10:58:10', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (427, '用户 hu 登录系统', '2022-06-28 10:58:11', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (428, '用户 hu 登录系统', '2022-06-28 10:58:11', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (429, '用户 hu 登录系统', '2022-06-28 10:58:11', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (430, '用户 hu 登录系统', '2022-06-28 10:58:11', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (431, '用户 hu 登录系统', '2022-06-28 11:02:25', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (432, '用户 hu 登录系统', '2022-06-28 11:02:29', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (433, '用户 hu 登录系统', '2022-06-28 11:02:39', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (434, '用户 hu 登录系统', '2022-06-28 11:02:41', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (435, '用户 hu 登录系统', '2022-06-28 11:02:54', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (436, '用户 hu 登录系统', '2022-06-28 11:03:50', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (437, '用户 hu 登录系统', '2022-06-28 11:08:29', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (438, '用户 hu 登录系统', '2022-06-28 11:10:08', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (439, '用户 hu 登录系统', '2022-06-28 11:11:47', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (440, '用户 hu 登录系统', '2022-06-28 11:14:55', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (441, '用户 hu 登录系统', '2022-06-28 11:17:26', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (442, '用户 hu 登录系统', '2022-06-28 11:18:00', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (443, '用户 hu 登录系统', '2022-06-28 11:20:51', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (444, '用户 hu 登录系统', '2022-06-28 11:20:51', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (445, '用户 hu 登录系统', '2022-06-28 11:20:51', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (446, '用户 hu 登录系统', '2022-06-28 11:20:51', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (447, '用户 hu 登录系统', '2022-06-28 11:26:12', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (448, '用户 hu 登录系统', '2022-06-28 11:26:33', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (449, '用户 hu 登录系统', '2022-06-28 11:26:54', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (450, '用户 hu 登录系统', '2022-06-28 11:26:55', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (451, '用户 hu 登录系统', '2022-06-28 11:26:55', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (452, '用户 hu 登录系统', '2022-06-28 11:26:55', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (453, '用户 hu 登录系统', '2022-06-28 11:26:56', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (454, '用户 hu 登录系统', '2022-06-28 11:32:13', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (455, '用户 hu 登录系统', '2022-06-28 11:35:48', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (456, '用户 hu 登录系统', '2022-06-28 11:35:54', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (457, '用户 hu 登录系统', '2022-06-28 11:35:55', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (458, '用户 hu 登录系统', '2022-06-28 11:35:56', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (459, '用户 hu 登录系统', '2022-06-28 11:35:57', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (460, '用户 hu 登录系统', '2022-06-28 11:35:58', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (461, '用户 hu 登录系统', '2022-06-28 11:35:58', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (462, '用户 hu 登录系统', '2022-06-28 11:35:58', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (463, '用户 hu 登录系统', '2022-06-28 11:36:29', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (464, '用户 hu 登录系统', '2022-06-28 11:36:46', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (465, '用户 hu 登录系统', '2022-06-28 11:37:23', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (466, '用户 hu 登录系统', '2022-06-28 11:37:25', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (467, '用户 hu 登录系统', '2022-06-28 11:37:25', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (468, '用户 hu 登录系统', '2022-06-28 11:37:26', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (469, '用户 hu 登录系统', '2022-06-28 11:39:02', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (470, '用户 hu 登录系统', '2022-06-28 11:39:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (471, '用户 hu 登录系统', '2022-06-28 11:39:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (472, '用户 hu 登录系统', '2022-06-28 11:39:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (473, '用户 hu 登录系统', '2022-06-28 11:39:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (474, '用户 hu 登录系统', '2022-06-28 11:39:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (475, '用户 hu 登录系统', '2022-06-28 11:39:04', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (476, '用户 hu 登录系统', '2022-06-28 11:39:06', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (477, '用户 hu 登录系统', '2022-06-28 11:39:06', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (478, '用户 hu 登录系统', '2022-06-28 11:39:07', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (479, '用户 hu 登录系统', '2022-06-28 11:39:07', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (480, '用户 hu 登录系统', '2022-06-28 11:39:07', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (481, '用户 hu 登录系统', '2022-06-28 11:39:07', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (482, '用户 hu 登录系统', '2022-06-28 11:39:07', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (483, '用户 hu 登录系统', '2022-06-28 11:39:07', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (484, '用户 hu 登录系统', '2022-06-28 11:39:07', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (485, '用户 hu 登录系统', '2022-06-28 11:39:08', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (486, '用户 hu 登录系统', '2022-06-28 11:39:08', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (487, '用户 hu 登录系统', '2022-06-28 11:39:08', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (488, '用户 hu 登录系统', '2022-06-28 11:39:08', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (489, '用户 hu 登录系统', '2022-06-28 11:39:09', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (490, '用户 hu 登录系统', '2022-06-28 11:39:09', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (491, '用户 hu 登录系统', '2022-06-28 11:39:09', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (492, '用户 hu 登录系统', '2022-06-28 11:39:10', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (493, '用户 hu 登录系统', '2022-06-28 11:39:10', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (494, '用户 hu 登录系统', '2022-06-28 11:39:10', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (495, '用户 hu 登录系统', '2022-06-28 11:39:10', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (496, '用户 hu 登录系统', '2022-06-28 11:39:10', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (497, '用户 hu 登录系统', '2022-06-28 11:39:10', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (498, '用户 hu 登录系统', '2022-06-28 11:39:11', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (499, '用户 hu 登录系统', '2022-06-28 11:39:43', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (500, '用户 hu 登录系统', '2022-06-28 11:40:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (501, '用户 hu 登录系统', '2022-06-28 11:40:32', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (502, '用户 hu 登录系统', '2022-06-28 11:40:48', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (503, '用户 hu 登录系统', '2022-06-28 11:40:49', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (504, '用户 hu 登录系统', '2022-06-28 11:40:49', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (505, '用户 hu 登录系统', '2022-06-28 11:40:50', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (506, '用户 hu 登录系统', '2022-06-28 11:41:35', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (507, '用户 hu 登录系统', '2022-06-28 11:41:36', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (508, '用户 hu 登录系统', '2022-06-28 11:42:49', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (509, '用户 hu 登录系统', '2022-06-28 11:43:27', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (510, '用户 hu 登录系统', '2022-06-28 11:44:41', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (511, '用户 hu 登录系统', '2022-06-28 11:45:33', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (512, '用户 hu 登录系统', '2022-06-28 12:59:47', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (513, '用户 hu 登录系统', '2022-06-28 13:01:48', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (514, '用户 hu 登录系统', '2022-06-28 13:14:57', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (515, '用户 hu 登录系统', '2022-06-28 13:27:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (516, '用户 hu 登录系统', '2022-06-28 13:49:17', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (517, '用户 hu 登录系统', '2022-06-28 13:49:25', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (518, '用户 hu 登录系统', '2022-06-28 14:34:56', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (519, '用户 hu 登录系统', '2022-06-28 14:39:36', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (520, '用户 hu 登录系统', '2022-06-28 14:42:55', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (521, '用户 hu 登录系统', '2022-06-28 15:06:46', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (522, '用户 hu 登录系统', '2022-06-28 17:07:33', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (523, '用户 hu 登录系统', '2022-06-28 17:09:17', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (524, '用户 hu 登录系统', '2022-06-28 17:10:52', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (525, '用户 hu 登录系统', '2022-06-28 17:12:16', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (526, '用户 hu 登录系统', '2022-06-28 17:14:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (527, '用户 hu 登录系统', '2022-06-28 17:16:36', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (528, '用户 hu 登录系统', '2022-06-28 17:56:24', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (529, '用户 hu 登录系统', '2022-06-28 22:08:53', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (530, '用户 hu 登录系统', '2022-06-28 22:34:47', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (531, '用户 hu 登录系统', '2022-06-28 22:34:47', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (532, '用户 hu 登录系统', '2022-06-28 22:34:47', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (533, '用户 hu 登录系统', '2022-06-28 22:34:47', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (534, '用户 hu 登录系统', '2022-06-28 22:35:07', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (535, '用户 admin 登录系统', '2022-06-28 22:36:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (536, '用户 hu 登录系统', '2022-06-28 22:37:20', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (537, '用户 hu 登录系统', '2022-06-29 14:25:55', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (538, '用户 hu 登录系统', '2022-06-29 14:35:16', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (539, '用户 hu 登录系统', '2022-06-29 16:05:48', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (540, '更新用户账户：hu ', '2022-06-29 16:07:01', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (541, '用户 admin 登录系统', '2022-06-29 16:07:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (542, '用户 hu 登录系统', '2022-06-29 16:07:23', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (543, '用户 hu 登录系统', '2022-06-29 16:08:16', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (544, '更新用户：hu ', '2022-06-29 16:11:03', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (545, '用户 hu 登录系统', '2022-06-29 16:11:34', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (546, '用户 hello 登录系统', '2022-06-29 16:12:09', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (547, '用户 hello 登录系统', '2022-06-29 16:47:13', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (548, '用户 hu 登录系统', '2022-06-29 16:47:44', 'hu', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (549, '用户 hello 登录系统', '2022-06-29 16:54:13', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (550, '用户 admin 登录系统', '2022-06-29 16:55:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (551, '用户 hello 登录系统', '2022-06-29 16:55:29', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (552, '用户 hu 登录系统', '2022-06-29 16:56:34', 'hu', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论时间',
  `parent_id` bigint(0) NULL DEFAULT NULL COMMENT '父ID',
  `foreign_id` bigint(0) NULL DEFAULT 0 COMMENT '关联id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '留言表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES (20, '哈哈哈', 'admin', '2021-05-22 10:48:55', NULL, 1);
INSERT INTO `t_message` VALUES (21, '哦豁', 'admin', '2021-05-22 10:49:48', NULL, 1);
INSERT INTO `t_message` VALUES (23, '哈哈哈', 'hello', '2021-05-24 17:13:45', 22, 1);
INSERT INTO `t_message` VALUES (25, '好', 'hello', '2021-06-06 12:41:30', NULL, 2);
INSERT INTO `t_message` VALUES (26, '非常好', 'hello', '2021-06-06 22:32:45', NULL, 4);
INSERT INTO `t_message` VALUES (27, '6666666', 'hu', '2022-06-28 22:37:52', NULL, 1);
INSERT INTO `t_message` VALUES (28, '666', 'hu', '2022-06-29 16:07:36', NULL, 1);
INSERT INTO `t_message` VALUES (29, '66666666666', 'hello', '2022-06-29 16:55:42', NULL, 1);

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES (1, 'springboot', 'hs', '2022-06-23 20:44:02');
INSERT INTO `t_notice` VALUES (2, 'springboot', 'h', '2022-06-23 20:44:02');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '下单人id',
  `link_user` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `link_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `link_address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '送货地址',
  `state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '待付款' COMMENT '状态',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (1, '20210602115530120326', 175.00, 21, '张三', '13909768928', '北京市前门大街120号', '待收货', '2022-06-23 20:44:02');
INSERT INTO `t_order` VALUES (4, '20210606113132315324', 22845.00, 21, '张三', '13909768928', '北京市前门大街120号', '已完成', '2022-06-23 20:44:02');
INSERT INTO `t_order` VALUES (5, '20210606142208712260', 31.50, 21, '张三', '13909768928', '北京市前门大街120号', '已完成', '2022-06-23 20:44:02');
INSERT INTO `t_order` VALUES (6, '20210606142338521670', 4569.00, 21, '张三', '13909768928', '北京市前门大街120号', '待发货', '2022-06-23 20:44:02');
INSERT INTO `t_order` VALUES (7, '20210606223033775406', 217.40, 21, '张三', '13909768928', '北京市前门大街120号', '已完成', '2022-06-23 20:44:02');
INSERT INTO `t_order` VALUES (8, '20220121225225592406', 9222.55, 21, '张三', '13909768928', '北京市前门大街120号', '待发货', '2022-06-23 20:44:02');
INSERT INTO `t_order` VALUES (9, '20220216210337905723', 31.50, 22, '夹克', '13099887799', '合肥', '待付款', '2022-06-23 20:44:02');
INSERT INTO `t_order` VALUES (10, '20220216210447949603', 25.50, 21, '哈哈哈', '13988776655', '南京', '待付款', '2022-06-23 20:44:02');
INSERT INTO `t_order` VALUES (11, '20220615202125536464', 24.50, 24, 'hs', 'ssss', 'dsada', '待付款', '2022-06-15 20:21:25');
INSERT INTO `t_order` VALUES (12, '20220618010214149494', 31.50, 24, 'hs', 'ssss', 'dsada', '待付款', '2022-06-18 01:02:14');
INSERT INTO `t_order` VALUES (13, '20220618010214092935', 31.50, 24, 'hs', 'ssss', 'dsada', '待付款', '2022-06-18 01:02:14');
INSERT INTO `t_order` VALUES (14, '20220618160918021306', 24.50, 24, 'hs', 'ssss', 'dsada', '待发货', '2022-06-18 16:09:18');
INSERT INTO `t_order` VALUES (15, '20220618170721640545', 4593.50, 24, 'hs', 'ssss', 'dsada', '待付款', '2022-06-18 17:07:21');
INSERT INTO `t_order` VALUES (16, '20220618171924897994', 31.50, 24, 'hs', 'ssss', 'dsada', '待收货', '2022-06-18 17:19:24');
INSERT INTO `t_order` VALUES (17, '20220620154522455329', 31.50, 24, 'hs', 'ssss', 'dsada', '已取消', '2022-06-20 15:45:22');
INSERT INTO `t_order` VALUES (18, '20220622173148761001', 31.50, 24, 'hs', 'ssss', 'dsada', '待收货', '2022-06-22 17:31:48');
INSERT INTO `t_order` VALUES (19, '20220622173241036702', 31.50, 24, 'hs', 'ssss', 'dsada', '待收货', '2022-06-22 17:32:41');
INSERT INTO `t_order` VALUES (20, '20220623004513361659', 125.10, 24, '黄磊', '18932108647', '湖南省长沙市长沙县湖南工程职业技术学院', '待收货', '2022-06-23 00:45:13');
INSERT INTO `t_order` VALUES (22, '20220623004841205968', 31.50, 21, '哈喽', '13909768928', '北京市前门大街120号', '待付款', '2022-06-23 00:48:41');
INSERT INTO `t_order` VALUES (23, '20220623011025390591', 3999.00, 24, '黄磊', '18932108647', '湖南省长沙市长沙县湖南工程职业技术学院', '已完成', '2022-06-23 01:10:25');
INSERT INTO `t_order` VALUES (24, '20220623014424170007', 10078.20, 24, '黄磊', '18932108647', '湖南省长沙市长沙县湖南工程职业技术学院', '已完成', '2022-06-23 01:44:24');
INSERT INTO `t_order` VALUES (25, '20220623112826736898', 5039.10, 24, '黄磊', '18932108647', '湖南省长沙市长沙县湖南工程职业技术学院', '已完成', '2022-06-23 11:28:26');
INSERT INTO `t_order` VALUES (26, '20220623204402020852', 8336.53, 24, '黄生', '18932108647', '湖南省衡阳市三塘镇新城北路小区', '已完成', '2022-06-23 20:44:02');
INSERT INTO `t_order` VALUES (27, '20220624111909258430', 5599.00, 24, '黄生', '18932108647', '湖南省衡阳市三塘镇新城北路小区', '待发货', '2022-06-24 11:19:09');
INSERT INTO `t_order` VALUES (28, '20220624112044007561', 5599.00, 24, '黄生', '18932108647', '湖南省衡阳市三塘镇新城北路小区', '待付款', '2022-06-24 11:20:44');
INSERT INTO `t_order` VALUES (29, '20220627150600285991', 5599.00, 24, '黄生', '18932108647', '湖南省衡阳市三塘镇新城北路小区', '待发货', '2022-06-27 15:06:00');
INSERT INTO `t_order` VALUES (30, '20220628011505068733', 5599.00, 24, '黄生', '18932108647', '湖南省衡阳市三塘镇新城北路小区', '待发货', '2022-06-28 01:15:05');
INSERT INTO `t_order` VALUES (31, '20220628223638064746', 5599.00, 24, '黄生', '18932108647', '湖南省衡阳市三塘镇新城北路小区', '已完成', '2022-06-28 22:36:38');
INSERT INTO `t_order` VALUES (32, '20220629160635294021', 5599.00, 24, '黄生', '18932108647', '湖南省衡阳市三塘镇新城北路小区', '已完成', '2022-06-29 16:06:35');
INSERT INTO `t_order` VALUES (33, '20220629165453187336', 11398.00, 21, '哈哈哈', '13988776655', '南京', '已完成', '2022-06-29 16:54:53');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 's-data' COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, '首页', '首页', '/home', 's-home');
INSERT INTO `t_permission` VALUES (2, '用户管理', '用户管理', '/user', 'user-solid');
INSERT INTO `t_permission` VALUES (3, '角色管理', '角色管理', '/role', 's-cooperation');
INSERT INTO `t_permission` VALUES (4, '菜单管理', '菜单管理', '/permission', 'menu');
INSERT INTO `t_permission` VALUES (5, '公告管理', '公告管理', '/notice', 'data-board');
INSERT INTO `t_permission` VALUES (6, '日志管理', '日志管理', '/log', 'notebook-2');
INSERT INTO `t_permission` VALUES (8, '轮播图管理', '轮播图管理', '/banner', 'picture');
INSERT INTO `t_permission` VALUES (9, '商品分类管理', '商品分类管理', '/category', 'tickets');
INSERT INTO `t_permission` VALUES (11, '商品管理', '商品管理', '/goods', 's-goods');
INSERT INTO `t_permission` VALUES (12, '订单管理', '订单管理', '/order', 's-data');
INSERT INTO `t_permission` VALUES (13, '收货地址管理', '收货地址管理', '/address', 's-data');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `permission` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '超级管理员', '所有权限', '[1,3,4,5,6,8,9,11,12,13,2]');
INSERT INTO `t_role` VALUES (2, '普通用户', '部分权限', '[]');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `account` decimal(10, 2) NULL COMMENT '账户余额',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`, `nick_name`, `email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', '管理员', '111124444', '13978786565', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/28c14106b688ac7ae88e761564789b37.jpg?thumb=1&w=250&h=250&f=webp&q=90', '[1]', '北京', NULL, 0.00);
INSERT INTO `t_user` VALUES (11, 'tom', '123456', '汤姆', 'tom@qq.com', '13685249632', '1616271650817', '[2]', '上海', 20, 0.00);
INSERT INTO `t_user` VALUES (21, 'hello', '123456', '哈喽1', 'hello@qq.com', '13695285413', '1655916547504', '[2]', '北京', 25, 101102.00);
INSERT INTO `t_user` VALUES (22, 'jack', '123456', '杰克', 'jack@qq.com', '13878549623', '\r\nhttps://cdn.cnbj1.fds.api.mi-img.com/mi-mall/01d9571051a91e540e5c644fa60cc858.jpg?thumb=1&w=188&h=188&f=webp&q=90', '[2]', '合肥', 30, 0.00);
INSERT INTO `t_user` VALUES (23, 'jerry', '123456', '杰瑞', 'jerry@163.com', '13696965656', '\r\nhttps://cdn.cnbj1.fds.api.mi-img.com/mi-mall/01d9571051a91e540e5c644fa60cc858.jpg?thumb=1&w=188&h=188&f=webp&q=90', '[2]', '北京', 21, 0.00);
INSERT INTO `t_user` VALUES (24, 'hu', '123456', NULL, NULL, '呼呼', '1656490263661', '[2]', NULL, NULL, 954907.07);

SET FOREIGN_KEY_CHECKS = 1;
