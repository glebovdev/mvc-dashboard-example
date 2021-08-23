/*
 Navicat Premium Data Transfer

 Source Server         : MVC-dashboard-local
 Source Server Type    : MariaDB
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : default

 Target Server Type    : MariaDB
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 23/08/2021 04:01:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countries
-- ----------------------------
BEGIN;
INSERT INTO `countries` VALUES (1, 'Brazil', '2021-08-21 02:17:24');
INSERT INTO `countries` VALUES (2, 'Argentina', '2021-08-20 09:37:56');
INSERT INTO `countries` VALUES (3, 'Estonia', '2021-08-18 12:31:42');
INSERT INTO `countries` VALUES (4, 'Svalbard & Jan Mayen Islands', '2021-08-18 01:23:59');
INSERT INTO `countries` VALUES (5, 'Andorra', '2021-08-19 10:07:14');
INSERT INTO `countries` VALUES (6, 'Tanzania', '2021-08-19 21:34:01');
INSERT INTO `countries` VALUES (7, 'Australia', '2021-08-18 03:40:32');
INSERT INTO `countries` VALUES (8, 'Guam', '2021-08-21 16:32:14');
INSERT INTO `countries` VALUES (9, 'Brunei Darussalam', '2021-08-21 09:32:02');
INSERT INTO `countries` VALUES (10, 'French Polynesia', '2021-08-19 08:21:41');
INSERT INTO `countries` VALUES (11, 'Ukraine', '2021-08-18 11:02:18');
INSERT INTO `countries` VALUES (12, 'Singapore', '2021-08-22 20:05:27');
INSERT INTO `countries` VALUES (13, 'Japan', '2021-08-19 04:09:13');
INSERT INTO `countries` VALUES (14, 'Belgium', '2021-08-21 03:32:31');
INSERT INTO `countries` VALUES (15, 'Saint Lucia', '2021-08-19 13:31:15');
COMMIT;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
BEGIN;
INSERT INTO `customers` VALUES (1, 'erdman.millie@yahoo.com', 'Hadley', 'Jast', '2021-06-23 11:16:39', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (2, 'pat.ruecker@yahoo.com', 'Eleanora', 'Waters', '2021-03-15 10:30:56', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (3, 'wroberts@yahoo.com', 'Brown', 'Gislason', '2021-05-23 01:54:41', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (4, 'botsford.adela@gmail.com', 'Margarita', 'Weissnat', '2021-08-14 00:16:33', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (5, 'rshields@gmail.com', 'Estella', 'Willms', '2021-05-11 17:19:26', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (6, 'rowan.lubowitz@yahoo.com', 'Elyse', 'Rempel', '2021-05-13 08:37:08', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (7, 'maryjane03@yahoo.com', 'Raquel', 'Wolff', '2021-03-01 12:27:54', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (8, 'jack77@yahoo.com', 'Victoria', 'Kuvalis', '2021-03-21 03:00:04', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (9, 'hosea07@hotmail.com', 'Randall', 'Luettgen', '2021-05-28 04:29:05', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (10, 'ericka56@gmail.com', 'Boris', 'Hirthe', '2021-08-15 15:58:39', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (11, 'leonie26@hotmail.com', 'Sam', 'Kohler', '2021-06-06 08:38:40', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (12, 'berry78@gmail.com', 'Kayleigh', 'Cremin', '2021-06-20 23:47:02', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (13, 'fhermann@hotmail.com', 'Titus', 'Blanda', '2021-02-15 05:12:24', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (14, 'yasmin09@hotmail.com', 'Kelsi', 'Ledner', '2021-06-20 10:35:25', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (15, 'santina.mcclure@yahoo.com', 'Jayme', 'Greenfelder', '2021-05-18 15:27:29', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (16, 'bayer.cade@hotmail.com', 'Jacynthe', 'Dooley', '2021-07-27 22:29:25', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (17, 'modesto61@hotmail.com', 'Holly', 'Satterfield', '2021-03-24 09:38:55', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (18, 'hegmann.constance@gmail.com', 'Rosalinda', 'Erdman', '2021-08-08 16:30:03', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (19, 'paucek.austyn@yahoo.com', 'Velda', 'Kris', '2021-06-11 21:17:18', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (20, 'olga72@yahoo.com', 'Hugh', 'O\'Connell', '2021-04-30 22:31:57', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (21, 'elva.hegmann@gmail.com', 'Carmella', 'Streich', '2021-04-18 12:24:00', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (22, 'lesley.braun@hotmail.com', 'Ryley', 'Russel', '2021-05-06 09:31:40', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (23, 'ealtenwerth@yahoo.com', 'Mya', 'Mueller', '2021-02-09 23:19:43', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (24, 'leslie40@yahoo.com', 'Alfonso', 'Braun', '2021-06-08 07:07:16', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (25, 'chandler15@hotmail.com', 'Garnett', 'Howe', '2021-07-05 10:17:28', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (26, 'nmills@hotmail.com', 'Alexa', 'Ebert', '2021-02-18 08:43:27', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (27, 'schroeder.angelina@gmail.com', 'Corrine', 'Welch', '2021-03-20 10:42:19', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (28, 'wilbert11@hotmail.com', 'Sigmund', 'Mante', '2021-03-09 01:55:05', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (29, 'raymond33@gmail.com', 'Rogers', 'Rath', '2021-04-02 14:18:06', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (30, 'margaretta87@gmail.com', 'Mohammed', 'Rempel', '2021-06-16 03:57:23', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (31, 'garrett16@hotmail.com', 'Adaline', 'Hoppe', '2021-05-04 01:15:44', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (32, 'ariane.mraz@gmail.com', 'Kenna', 'Daugherty', '2021-04-21 02:04:26', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (33, 'selena72@yahoo.com', 'Vladimir', 'Hermann', '2021-04-03 03:09:24', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (34, 'holden99@gmail.com', 'Dulce', 'Hermann', '2021-06-08 11:48:55', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (35, 'rice.brown@hotmail.com', 'Willy', 'Schultz', '2021-03-28 20:34:20', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (36, 'hkeebler@yahoo.com', 'Myrtie', 'Turner', '2021-08-19 17:44:36', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (37, 'neil.dickinson@gmail.com', 'Giuseppe', 'Wunsch', '2021-05-30 22:37:14', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (38, 'bkovacek@yahoo.com', 'Shyann', 'Lehner', '2021-06-03 14:05:21', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (39, 'crona.justine@gmail.com', 'Linwood', 'Ferry', '2021-04-16 00:00:03', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (40, 'isac.hermiston@yahoo.com', 'Beau', 'Crona', '2021-03-27 07:42:33', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (41, 'ndouglas@hotmail.com', 'Jaleel', 'Kiehn', '2021-07-03 07:30:39', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (42, 'orlo77@hotmail.com', 'Keenan', 'Daugherty', '2021-05-25 17:24:30', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (43, 'uhettinger@yahoo.com', 'Deven', 'Hodkiewicz', '2021-02-10 16:08:27', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (44, 'hhessel@hotmail.com', 'Claudine', 'Swift', '2021-06-27 16:29:16', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (45, 'samson64@gmail.com', 'Wilson', 'Corkery', '2021-06-22 11:40:52', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (46, 'jboyle@hotmail.com', 'Ryann', 'Pfeffer', '2021-03-24 08:31:39', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (47, 'nmoen@gmail.com', 'Ervin', 'Terry', '2021-02-19 17:53:40', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (48, 'wokuneva@hotmail.com', 'Lionel', 'Yost', '2021-08-06 06:56:07', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (49, 'alia.ryan@gmail.com', 'Arne', 'Bergnaum', '2021-06-05 11:40:48', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (50, 'dorothea13@hotmail.com', 'Uriel', 'Hickle', '2021-05-09 23:33:40', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (51, 'vincenza25@hotmail.com', 'Lilian', 'Koss', '2021-06-17 13:30:55', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (52, 'sebastian.brekke@hotmail.com', 'Annabel', 'Bogan', '2021-05-20 19:46:50', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (53, 'horace71@gmail.com', 'Cathryn', 'Prohaska', '2021-02-11 07:37:39', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (54, 'tanya52@gmail.com', 'Gust', 'Ryan', '2021-06-05 03:36:47', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (55, 'dare.hannah@hotmail.com', 'Callie', 'Kris', '2021-03-12 15:49:32', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (56, 'lind.winnifred@hotmail.com', 'Josiah', 'Douglas', '2021-05-16 22:00:16', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (57, 'rodrick.donnelly@gmail.com', 'Meggie', 'Veum', '2021-08-01 23:31:57', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (58, 'afton80@yahoo.com', 'Serena', 'Williamson', '2021-03-21 06:01:25', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (59, 'vmurazik@gmail.com', 'Liliane', 'Effertz', '2021-03-21 02:16:25', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (60, 'flavie28@hotmail.com', 'Cleve', 'Yundt', '2021-04-14 20:49:35', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (61, 'darien.macejkovic@hotmail.com', 'Maye', 'Schulist', '2021-03-05 03:47:09', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (62, 'ford64@yahoo.com', 'Lenora', 'Muller', '2021-02-28 13:10:04', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (63, 'pjones@hotmail.com', 'Junior', 'Abbott', '2021-06-30 02:48:50', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (64, 'bobbie.zieme@gmail.com', 'Jonathan', 'Hirthe', '2021-04-15 20:45:03', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (65, 'pbeahan@hotmail.com', 'Austen', 'Hettinger', '2021-07-30 00:15:30', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (66, 'gleichner.gerhard@hotmail.com', 'Rahsaan', 'Wolff', '2021-02-14 06:15:32', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (67, 'cartwright.kyra@yahoo.com', 'Maryam', 'Satterfield', '2021-02-21 17:22:00', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (68, 'bryce99@gmail.com', 'Nasir', 'Kuphal', '2021-06-23 02:10:01', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (69, 'ned.hauck@yahoo.com', 'Berenice', 'Anderson', '2021-05-24 10:09:25', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (70, 'dylan.nolan@hotmail.com', 'Rex', 'Dickinson', '2021-02-04 20:39:23', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (71, 'carroll.tristin@yahoo.com', 'Kory', 'Heaney', '2021-04-30 20:54:05', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (72, 'xmoore@yahoo.com', 'Jabari', 'Gerlach', '2021-05-25 12:29:34', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (73, 'lourdes97@gmail.com', 'Tamia', 'Kub', '2021-04-15 04:26:56', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (74, 'bryana76@hotmail.com', 'Ara', 'Will', '2021-06-25 04:19:44', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (75, 'sheldon.daugherty@gmail.com', 'Maryjane', 'Blanda', '2021-06-04 23:09:39', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (76, 'bwehner@gmail.com', 'Ivah', 'Boyle', '2021-03-14 03:26:09', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (77, 'little.emmalee@yahoo.com', 'Kamren', 'Turner', '2021-02-25 21:54:05', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (78, 'alize74@yahoo.com', 'Rozella', 'O\'Keefe', '2021-08-17 10:57:39', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (79, 'roderick.quigley@gmail.com', 'Jewel', 'Mohr', '2021-07-06 06:08:52', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (80, 'marley07@hotmail.com', 'Minnie', 'Wilkinson', '2021-03-15 02:44:19', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (81, 'mercedes.paucek@yahoo.com', 'Christy', 'Dibbert', '2021-03-31 18:43:22', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (82, 'sarina95@yahoo.com', 'Stephanie', 'Reichert', '2021-03-25 20:33:37', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (83, 'evangeline.will@gmail.com', 'Wilbert', 'Dach', '2021-05-29 21:11:10', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (84, 'emard.marjolaine@hotmail.com', 'Tessie', 'Treutel', '2021-04-25 20:30:32', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (85, 'kuphal.liana@gmail.com', 'Shaniya', 'Cole', '2021-08-05 00:09:37', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (86, 'dschulist@yahoo.com', 'Junius', 'O\'Reilly', '2021-03-30 17:03:17', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (87, 'weber.abdullah@yahoo.com', 'Florine', 'Wehner', '2021-02-05 14:21:18', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (88, 'hgutmann@yahoo.com', 'Pearl', 'Schmitt', '2021-08-12 17:30:49', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (89, 'fkovacek@hotmail.com', 'Mauricio', 'Eichmann', '2021-02-25 00:15:48', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (90, 'ggibson@yahoo.com', 'Diego', 'Romaguera', '2021-06-25 07:29:11', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (91, 'kessler.simone@yahoo.com', 'Karlie', 'Pacocha', '2021-05-23 14:35:19', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (92, 'jazlyn.moore@yahoo.com', 'Luis', 'Kertzmann', '2021-08-02 04:11:49', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (93, 'sherwood.collins@gmail.com', 'Porter', 'Quitzon', '2021-08-18 05:20:53', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (94, 'sthompson@yahoo.com', 'Lance', 'Emard', '2021-07-13 21:08:07', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (95, 'celine.nicolas@yahoo.com', 'Beatrice', 'Gottlieb', '2021-03-18 16:15:16', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (96, 'otilia82@gmail.com', 'Haskell', 'Lebsack', '2021-07-03 14:47:09', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (97, 'parisian.alexander@yahoo.com', 'Lila', 'Durgan', '2021-06-09 20:21:07', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (98, 'jasmin00@hotmail.com', 'Jailyn', 'Hyatt', '2021-07-21 18:57:01', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (99, 'dickens.nelda@gmail.com', 'Kali', 'Boehm', '2021-08-20 14:12:03', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (100, 'jschmitt@hotmail.com', 'Kathleen', 'Krajcik', '2021-08-03 15:32:31', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (101, 'judson55@gmail.com', 'Nova', 'Goyette', '2021-05-16 02:57:32', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (102, 'weissnat.virginia@yahoo.com', 'Jerrell', 'Crooks', '2021-08-12 13:41:48', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (103, 'yschaden@hotmail.com', 'Lolita', 'Langworth', '2021-03-11 10:52:27', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (104, 'kemmer.ervin@hotmail.com', 'Major', 'Lubowitz', '2021-05-11 20:49:46', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (105, 'ferne75@yahoo.com', 'Chelsey', 'Hane', '2021-06-11 09:05:59', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (106, 'schoen.tara@gmail.com', 'Carlos', 'Ebert', '2021-06-20 07:13:36', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (107, 'rboyle@yahoo.com', 'Crawford', 'Huels', '2021-03-19 05:03:38', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (108, 'fcollier@gmail.com', 'Claire', 'Senger', '2021-06-28 22:47:36', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (109, 'jacky86@gmail.com', 'Clark', 'Mitchell', '2021-04-23 06:45:37', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (110, 'waters.cale@gmail.com', 'Ella', 'Kemmer', '2021-06-24 08:02:26', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (111, 'ondricka.bertram@gmail.com', 'Austyn', 'Glover', '2021-05-11 21:11:30', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (112, 'lowe.bessie@gmail.com', 'Margaret', 'Reichert', '2021-05-02 21:18:20', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (113, 'luella.bins@hotmail.com', 'Consuelo', 'Bogan', '2021-05-17 17:53:51', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (114, 'rebeka.spencer@yahoo.com', 'Clementina', 'Quigley', '2021-05-22 02:25:48', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (115, 'dietrich.jasper@yahoo.com', 'Vito', 'Abernathy', '2021-03-14 00:10:53', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (116, 'schultz.gerhard@hotmail.com', 'Jena', 'Hayes', '2021-06-24 14:22:09', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (117, 'rogahn.franz@hotmail.com', 'Justen', 'Koepp', '2021-04-27 07:37:22', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (118, 'labadie.deborah@yahoo.com', 'Cesar', 'Reilly', '2021-07-14 09:17:25', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (119, 'gbashirian@yahoo.com', 'Hipolito', 'Murazik', '2021-07-10 12:50:26', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (120, 'maxwell.moore@gmail.com', 'Gia', 'Nolan', '2021-04-27 16:44:41', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (121, 'madelynn44@hotmail.com', 'Rosalee', 'Keeling', '2021-06-21 06:44:37', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (122, 'adonis92@gmail.com', 'Jamil', 'Fay', '2021-03-31 23:57:30', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (123, 'kay.gulgowski@yahoo.com', 'Euna', 'Lemke', '2021-08-10 12:22:27', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (124, 'christophe.jast@hotmail.com', 'Jettie', 'Rau', '2021-02-18 18:09:34', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (125, 'lorena24@gmail.com', 'Alexys', 'Hansen', '2021-08-04 10:06:35', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (126, 'ikuphal@hotmail.com', 'Clarabelle', 'Runolfsson', '2021-06-28 13:16:13', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (127, 'jaron.jenkins@hotmail.com', 'Eleanore', 'Veum', '2021-02-12 21:33:47', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (128, 'stehr.chris@hotmail.com', 'Wilfrid', 'Hartmann', '2021-06-20 21:21:27', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (129, 'joan64@yahoo.com', 'Kali', 'Williamson', '2021-04-26 21:00:02', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (130, 'pfeffer.arlo@yahoo.com', 'Destinee', 'Denesik', '2021-03-11 11:20:01', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (131, 'amya.durgan@yahoo.com', 'Elwyn', 'Bashirian', '2021-06-14 01:34:38', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (132, 'keebler.nayeli@hotmail.com', 'Beulah', 'Jast', '2021-07-26 23:07:38', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (133, 'uernser@gmail.com', 'Alisa', 'Bailey', '2021-04-17 21:00:35', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (134, 'elisabeth06@yahoo.com', 'Harrison', 'Towne', '2021-07-09 06:57:21', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (135, 'slueilwitz@hotmail.com', 'Jimmie', 'Fahey', '2021-04-25 22:12:36', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (136, 'flavie51@yahoo.com', 'Ilene', 'Greenfelder', '2021-05-11 12:43:48', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (137, 'onikolaus@yahoo.com', 'Makenzie', 'Larson', '2021-07-09 09:57:32', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (138, 'aharris@gmail.com', 'Antonietta', 'Hammes', '2021-05-03 10:42:25', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (139, 'ihilpert@yahoo.com', 'Iva', 'Krajcik', '2021-03-28 15:55:56', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (140, 'rbuckridge@gmail.com', 'Antone', 'Gleichner', '2021-03-03 06:35:30', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (141, 'anastasia49@yahoo.com', 'Cora', 'Okuneva', '2021-04-19 05:08:06', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (142, 'nicholas.hahn@yahoo.com', 'Eugene', 'Volkman', '2021-05-11 17:37:43', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (143, 'eschuster@yahoo.com', 'Greg', 'West', '2021-07-09 08:21:43', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (144, 'schneider.alanis@hotmail.com', 'Tommie', 'Lakin', '2021-04-23 11:33:12', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (145, 'jedidiah.medhurst@gmail.com', 'Brandi', 'Casper', '2021-03-11 15:25:23', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (146, 'magnolia15@hotmail.com', 'General', 'Schumm', '2021-04-21 23:46:03', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (147, 'jadams@yahoo.com', 'Cicero', 'Jakubowski', '2021-02-06 15:55:59', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (148, 'milford71@gmail.com', 'Emile', 'McDermott', '2021-03-16 20:57:51', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (149, 'ebony.murazik@hotmail.com', 'Dana', 'Champlin', '2021-06-03 19:14:55', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (150, 'mann.charley@gmail.com', 'Harry', 'Connelly', '2021-03-16 02:16:26', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (151, 'emmanuelle86@yahoo.com', 'Leonora', 'Kshlerin', '2021-07-09 22:38:14', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (152, 'blanche86@gmail.com', 'Katrina', 'Hintz', '2021-08-01 09:38:28', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (153, 'wdenesik@gmail.com', 'Albina', 'Block', '2021-05-03 10:56:03', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (154, 'felipe85@hotmail.com', 'Nelson', 'Rippin', '2021-05-26 04:37:39', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (155, 'ray07@gmail.com', 'Taya', 'Halvorson', '2021-02-12 04:48:54', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (156, 'fatima.bergstrom@yahoo.com', 'Nikki', 'Botsford', '2021-07-08 09:45:17', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (157, 'brandon46@yahoo.com', 'Howard', 'Lesch', '2021-05-23 08:26:36', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (158, 'ruthe.watsica@yahoo.com', 'Matteo', 'Harber', '2021-06-04 12:42:49', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (159, 'virginie.windler@yahoo.com', 'Antonia', 'Wiegand', '2021-07-02 21:17:20', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (160, 'brandyn88@yahoo.com', 'Clara', 'Maggio', '2021-07-27 06:52:50', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (161, 'collins.dahlia@hotmail.com', 'Cristal', 'Nader', '2021-03-05 19:44:54', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (162, 'geo52@yahoo.com', 'Cecil', 'Nikolaus', '2021-03-18 14:07:20', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (163, 'haylee38@hotmail.com', 'Dennis', 'McLaughlin', '2021-04-12 05:20:57', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (164, 'pamela.dare@hotmail.com', 'Aliya', 'Cronin', '2021-08-07 15:53:53', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (165, 'mina.haag@yahoo.com', 'Eliane', 'Parisian', '2021-04-13 04:18:56', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (166, 'ubruen@gmail.com', 'Alvis', 'Jones', '2021-03-15 01:51:28', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (167, 'wcasper@hotmail.com', 'Granville', 'Daugherty', '2021-02-23 06:30:47', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (168, 'joanny39@gmail.com', 'Roy', 'Carroll', '2021-07-09 10:26:03', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (169, 'queenie21@hotmail.com', 'Kali', 'Hickle', '2021-08-14 02:01:33', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (170, 'makayla.sauer@hotmail.com', 'Carmen', 'Bogan', '2021-03-29 21:16:32', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (171, 'tania.mayer@hotmail.com', 'Eunice', 'Kohler', '2021-06-22 08:34:05', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (172, 'fritsch.brayan@gmail.com', 'Lexus', 'Pfeffer', '2021-05-14 03:39:01', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (173, 'adela.carroll@gmail.com', 'Dante', 'Fritsch', '2021-02-17 16:10:07', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (174, 'gjerde@yahoo.com', 'Cesar', 'Dare', '2021-08-13 00:07:49', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (175, 'rebert@yahoo.com', 'Theresa', 'Funk', '2021-06-24 16:43:03', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (176, 'dallas.towne@gmail.com', 'Garrison', 'Stoltenberg', '2021-04-16 22:45:23', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (177, 'metz.alisha@hotmail.com', 'Rebeca', 'Gutmann', '2021-05-04 18:28:48', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (178, 'mbayer@yahoo.com', 'Quentin', 'Beer', '2021-02-28 18:21:16', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (179, 'becker.jarvis@yahoo.com', 'Brandon', 'Klein', '2021-03-20 06:23:19', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (180, 'ckuhic@hotmail.com', 'Evelyn', 'Konopelski', '2021-03-26 17:21:35', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (181, 'brenda43@hotmail.com', 'Lorenz', 'Hansen', '2021-08-10 02:30:32', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (182, 'ashlee.kling@yahoo.com', 'Quinn', 'Kessler', '2021-03-29 11:43:56', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (183, 'juwan72@hotmail.com', 'Josue', 'Mohr', '2021-06-21 17:19:57', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (184, 'fwill@gmail.com', 'Laisha', 'Rohan', '2021-04-04 20:54:16', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (185, 'wgrimes@gmail.com', 'Judy', 'Greenfelder', '2021-05-09 07:50:31', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (186, 'adonis93@gmail.com', 'Lincoln', 'Schinner', '2021-08-20 03:53:02', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (187, 'hrogahn@gmail.com', 'Vita', 'Wisozk', '2021-06-10 04:49:47', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (188, 'block.karl@yahoo.com', 'Maude', 'Breitenberg', '2021-04-27 08:30:38', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (189, 'myriam.parisian@gmail.com', 'Sandra', 'White', '2021-07-08 17:43:53', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (190, 'amir85@yahoo.com', 'Edmond', 'Hermann', '2021-05-17 20:32:05', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (191, 'pacocha.rodolfo@hotmail.com', 'Mario', 'Wolff', '2021-02-11 17:40:20', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (192, 'maybelle.kerluke@yahoo.com', 'Willard', 'Trantow', '2021-06-20 14:10:28', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (193, 'al.koch@gmail.com', 'Alek', 'Graham', '2021-04-01 20:59:01', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (194, 'mwalker@gmail.com', 'Sigurd', 'Fisher', '2021-05-23 14:45:23', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (195, 'rernser@hotmail.com', 'Ana', 'Bechtelar', '2021-04-07 13:24:25', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (196, 'lschaden@yahoo.com', 'Kaleigh', 'Reilly', '2021-06-05 05:07:02', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (197, 'ekub@hotmail.com', 'Morris', 'Mayer', '2021-03-18 14:06:02', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (198, 'derick.wilkinson@yahoo.com', 'Ella', 'Ullrich', '2021-05-01 12:00:31', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (199, 'audie.christiansen@gmail.com', 'Roel', 'Kub', '2021-07-01 11:29:30', '2021-08-23 00:42:10');
INSERT INTO `customers` VALUES (200, 'sgreen@hotmail.com', 'Jessy', 'Schroeder', '2021-04-03 13:16:26', '2021-08-23 00:42:10');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `device` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES (1, 190, 11, 'iPhone 11', '2021-08-20 23:33:09', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (2, 2, 12, 'iPhone 12', '2021-08-16 07:54:32', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (3, 103, 4, 'Macbook Pro', '2021-08-15 08:04:48', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (4, 73, 10, 'Google Pixel 5', '2021-08-21 00:21:24', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (5, 68, 3, 'Google Pixel 2', '2021-08-13 10:26:29', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (6, 87, 14, 'Google Pixel 2', '2021-08-12 00:54:38', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (7, 164, 12, 'Google Pixel 5', '2021-07-24 13:51:08', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (8, 76, 11, 'Macbook Pro', '2021-08-03 07:08:41', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (9, 88, 11, 'iPhone 11', '2021-08-12 00:20:36', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (10, 39, 7, 'Google Pixel 2', '2021-08-10 13:52:00', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (11, 47, 4, 'Macbook Pro', '2021-08-17 18:57:43', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (12, 35, 8, 'Macbook Pro', '2021-08-20 04:19:12', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (13, 34, 7, 'iPhone 12', '2021-08-15 12:30:33', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (14, 70, 3, 'Google Pixel 5', '2021-08-17 11:51:01', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (15, 38, 9, 'iPhone 12', '2021-08-15 02:34:44', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (16, 150, 12, 'iPhone 11', '2021-08-21 21:04:56', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (17, 91, 13, 'iPhone 11', '2021-08-14 14:34:45', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (18, 163, 11, 'Google Pixel 2', '2021-07-24 17:59:56', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (19, 2, 10, 'iPhone 11', '2021-08-16 15:42:28', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (20, 34, 4, 'Google Pixel 5', '2021-07-26 19:49:23', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (21, 140, 8, 'iPhone 12', '2021-08-11 15:10:14', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (22, 93, 9, 'Google Pixel 5', '2021-08-03 22:21:10', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (23, 31, 3, 'PC', '2021-08-09 06:48:58', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (24, 185, 5, 'Macbook Pro', '2021-08-22 12:04:41', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (25, 31, 13, 'Google Pixel 2', '2021-07-29 18:20:08', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (26, 23, 7, 'iPhone 11', '2021-08-14 20:35:21', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (27, 39, 9, 'iPhone 11', '2021-07-27 18:28:53', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (28, 144, 1, 'PC', '2021-07-28 17:19:56', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (29, 93, 2, 'iPhone 12', '2021-08-19 13:17:06', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (30, 185, 8, 'Google Pixel 5', '2021-08-05 18:42:16', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (31, 55, 4, 'iPhone 12', '2021-08-11 05:35:48', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (32, 1, 15, 'Macbook Pro', '2021-08-18 22:10:40', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (33, 128, 13, 'Google Pixel 5', '2021-07-25 01:15:56', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (34, 39, 15, 'Google Pixel 5', '2021-07-30 20:21:58', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (35, 44, 4, 'Macbook Pro', '2021-08-01 04:43:49', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (36, 155, 10, 'Google Pixel 5', '2021-08-05 02:28:36', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (37, 31, 11, 'Google Pixel 2', '2021-08-21 00:02:13', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (38, 68, 7, 'Google Pixel 5', '2021-08-20 22:00:05', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (39, 88, 10, 'Google Pixel 2', '2021-07-30 02:33:35', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (40, 38, 1, 'iPhone 12', '2021-07-28 06:11:37', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (41, 103, 10, 'PC', '2021-08-13 04:07:08', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (42, 69, 7, 'Macbook Pro', '2021-08-18 02:33:06', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (43, 78, 8, 'Macbook Pro', '2021-08-15 23:12:25', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (44, 35, 2, 'Google Pixel 2', '2021-07-30 17:34:39', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (45, 178, 13, 'Macbook Pro', '2021-08-17 08:14:08', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (46, 184, 8, 'iPhone 11', '2021-07-24 22:14:24', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (47, 1, 1, 'Google Pixel 2', '2021-07-29 13:15:20', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (48, 50, 13, 'iPhone 12', '2021-08-20 01:41:56', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (49, 117, 5, 'iPhone 11', '2021-08-18 11:42:26', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (50, 23, 5, 'iPhone 12', '2021-08-10 02:41:47', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (51, 59, 5, 'iPhone 11', '2021-08-21 04:58:56', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (52, 125, 15, 'iPhone 11', '2021-08-14 20:06:18', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (53, 59, 6, 'Macbook Pro', '2021-08-03 20:53:11', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (54, 34, 3, 'iPhone 11', '2021-07-31 04:56:15', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (55, 103, 3, 'iPhone 11', '2021-08-14 00:35:16', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (56, 55, 6, 'Google Pixel 2', '2021-08-15 22:54:25', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (57, 172, 4, 'Google Pixel 2', '2021-08-16 13:26:03', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (58, 47, 4, 'Macbook Pro', '2021-07-25 01:55:14', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (59, 99, 4, 'Google Pixel 5', '2021-08-18 10:11:24', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (60, 144, 3, 'iPhone 12', '2021-08-18 21:48:32', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (61, 108, 8, 'iPhone 12', '2021-07-29 05:13:44', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (62, 140, 2, 'PC', '2021-08-21 12:33:06', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (63, 10, 11, 'Google Pixel 2', '2021-08-05 03:24:27', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (64, 39, 14, 'Google Pixel 5', '2021-08-17 14:07:09', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (65, 31, 10, 'iPhone 11', '2021-08-19 23:51:08', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (66, 69, 4, 'PC', '2021-08-14 23:18:38', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (67, 178, 8, 'PC', '2021-08-09 18:24:22', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (68, 164, 7, 'Macbook Pro', '2021-08-09 20:54:33', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (69, 140, 8, 'Google Pixel 5', '2021-08-04 00:05:18', '2021-08-23 00:42:11');
INSERT INTO `orders` VALUES (70, 35, 12, 'Google Pixel 5', '2021-08-04 06:32:55', '2021-08-23 00:42:11');
COMMIT;

-- ----------------------------
-- Table structure for orders_products
-- ----------------------------
DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders_products
-- ----------------------------
BEGIN;
INSERT INTO `orders_products` VALUES (1, 24, 147, 3, 552779);
INSERT INTO `orders_products` VALUES (2, 15, 112, 6, 382762);
INSERT INTO `orders_products` VALUES (3, 5, 32, 1, 35484);
INSERT INTO `orders_products` VALUES (4, 28, 55, 8, 814753);
INSERT INTO `orders_products` VALUES (5, 26, 274, 7, 187610);
INSERT INTO `orders_products` VALUES (6, 61, 43, 5, 887192);
INSERT INTO `orders_products` VALUES (7, 32, 92, 4, 425577);
INSERT INTO `orders_products` VALUES (8, 61, 209, 8, 688047);
INSERT INTO `orders_products` VALUES (9, 25, 256, 3, 772221);
INSERT INTO `orders_products` VALUES (10, 20, 285, 6, 674947);
INSERT INTO `orders_products` VALUES (11, 58, 263, 4, 596009);
INSERT INTO `orders_products` VALUES (12, 54, 239, 3, 973610);
INSERT INTO `orders_products` VALUES (13, 27, 299, 3, 895208);
INSERT INTO `orders_products` VALUES (14, 49, 29, 9, 571576);
INSERT INTO `orders_products` VALUES (15, 28, 22, 3, 298113);
INSERT INTO `orders_products` VALUES (16, 59, 61, 1, 431986);
INSERT INTO `orders_products` VALUES (17, 8, 286, 8, 734472);
INSERT INTO `orders_products` VALUES (18, 21, 113, 3, 919899);
INSERT INTO `orders_products` VALUES (19, 38, 17, 5, 151753);
INSERT INTO `orders_products` VALUES (20, 68, 191, 9, 780352);
INSERT INTO `orders_products` VALUES (21, 29, 99, 7, 223539);
INSERT INTO `orders_products` VALUES (22, 44, 106, 4, 15327);
INSERT INTO `orders_products` VALUES (23, 42, 250, 2, 681027);
INSERT INTO `orders_products` VALUES (24, 5, 237, 7, 431986);
INSERT INTO `orders_products` VALUES (25, 51, 222, 2, 986122);
INSERT INTO `orders_products` VALUES (26, 53, 178, 2, 903198);
INSERT INTO `orders_products` VALUES (27, 56, 92, 7, 15327);
INSERT INTO `orders_products` VALUES (28, 45, 152, 1, 688047);
INSERT INTO `orders_products` VALUES (29, 43, 120, 9, 564245);
INSERT INTO `orders_products` VALUES (30, 59, 149, 8, 662578);
INSERT INTO `orders_products` VALUES (31, 54, 191, 8, 224310);
INSERT INTO `orders_products` VALUES (32, 58, 178, 9, 772845);
INSERT INTO `orders_products` VALUES (33, 60, 110, 8, 470620);
INSERT INTO `orders_products` VALUES (34, 42, 159, 1, 66314);
INSERT INTO `orders_products` VALUES (35, 2, 193, 5, 52246);
INSERT INTO `orders_products` VALUES (36, 44, 163, 3, 304562);
INSERT INTO `orders_products` VALUES (37, 21, 237, 4, 643155);
INSERT INTO `orders_products` VALUES (38, 35, 230, 2, 629487);
INSERT INTO `orders_products` VALUES (39, 41, 200, 4, 345078);
INSERT INTO `orders_products` VALUES (40, 41, 206, 3, 659138);
INSERT INTO `orders_products` VALUES (41, 23, 181, 1, 835420);
INSERT INTO `orders_products` VALUES (42, 20, 221, 6, 479812);
INSERT INTO `orders_products` VALUES (43, 38, 23, 2, 129557);
INSERT INTO `orders_products` VALUES (44, 49, 170, 6, 818193);
INSERT INTO `orders_products` VALUES (45, 58, 236, 5, 40982);
INSERT INTO `orders_products` VALUES (46, 18, 44, 2, 688633);
INSERT INTO `orders_products` VALUES (47, 52, 139, 8, 967528);
INSERT INTO `orders_products` VALUES (48, 67, 240, 8, 645946);
INSERT INTO `orders_products` VALUES (49, 45, 8, 2, 981150);
INSERT INTO `orders_products` VALUES (50, 42, 190, 8, 74545);
INSERT INTO `orders_products` VALUES (51, 8, 140, 5, 290711);
INSERT INTO `orders_products` VALUES (52, 51, 89, 7, 750971);
INSERT INTO `orders_products` VALUES (53, 60, 243, 1, 895208);
INSERT INTO `orders_products` VALUES (54, 22, 270, 3, 144942);
INSERT INTO `orders_products` VALUES (55, 29, 81, 5, 711815);
INSERT INTO `orders_products` VALUES (56, 25, 254, 7, 166017);
INSERT INTO `orders_products` VALUES (57, 39, 189, 8, 432169);
INSERT INTO `orders_products` VALUES (58, 44, 33, 9, 589167);
INSERT INTO `orders_products` VALUES (59, 43, 37, 9, 727540);
INSERT INTO `orders_products` VALUES (60, 10, 258, 6, 6856);
INSERT INTO `orders_products` VALUES (61, 1, 204, 7, 702223);
INSERT INTO `orders_products` VALUES (62, 4, 286, 6, 555323);
INSERT INTO `orders_products` VALUES (63, 25, 153, 7, 562202);
INSERT INTO `orders_products` VALUES (64, 55, 81, 8, 304562);
INSERT INTO `orders_products` VALUES (65, 26, 161, 5, 405322);
INSERT INTO `orders_products` VALUES (66, 4, 163, 8, 393767);
INSERT INTO `orders_products` VALUES (67, 39, 231, 6, 566126);
INSERT INTO `orders_products` VALUES (68, 4, 136, 9, 61831);
INSERT INTO `orders_products` VALUES (69, 11, 19, 9, 298427);
INSERT INTO `orders_products` VALUES (70, 30, 263, 8, 23469);
INSERT INTO `orders_products` VALUES (71, 52, 157, 6, 564245);
INSERT INTO `orders_products` VALUES (72, 5, 72, 9, 835420);
INSERT INTO `orders_products` VALUES (73, 35, 187, 6, 258698);
INSERT INTO `orders_products` VALUES (74, 49, 270, 6, 615465);
INSERT INTO `orders_products` VALUES (75, 22, 42, 1, 15327);
INSERT INTO `orders_products` VALUES (76, 9, 170, 9, 128511);
INSERT INTO `orders_products` VALUES (77, 68, 243, 1, 776638);
INSERT INTO `orders_products` VALUES (78, 48, 250, 9, 751999);
INSERT INTO `orders_products` VALUES (79, 15, 181, 9, 661059);
INSERT INTO `orders_products` VALUES (80, 51, 208, 5, 814753);
INSERT INTO `orders_products` VALUES (81, 15, 156, 6, 290711);
INSERT INTO `orders_products` VALUES (82, 32, 169, 5, 650195);
INSERT INTO `orders_products` VALUES (83, 45, 28, 1, 589167);
INSERT INTO `orders_products` VALUES (84, 50, 110, 1, 6628);
INSERT INTO `orders_products` VALUES (85, 12, 254, 2, 680411);
INSERT INTO `orders_products` VALUES (86, 7, 131, 3, 640744);
INSERT INTO `orders_products` VALUES (87, 3, 51, 9, 970055);
INSERT INTO `orders_products` VALUES (88, 27, 6, 4, 269868);
INSERT INTO `orders_products` VALUES (89, 1, 40, 1, 970518);
INSERT INTO `orders_products` VALUES (90, 17, 183, 8, 54012);
INSERT INTO `orders_products` VALUES (91, 56, 289, 7, 187446);
INSERT INTO `orders_products` VALUES (92, 26, 150, 2, 114796);
INSERT INTO `orders_products` VALUES (93, 4, 113, 8, 141568);
INSERT INTO `orders_products` VALUES (94, 54, 274, 2, 410301);
INSERT INTO `orders_products` VALUES (95, 51, 231, 3, 448816);
INSERT INTO `orders_products` VALUES (96, 35, 171, 7, 555323);
INSERT INTO `orders_products` VALUES (97, 66, 163, 4, 298113);
INSERT INTO `orders_products` VALUES (98, 57, 77, 5, 450704);
INSERT INTO `orders_products` VALUES (99, 10, 176, 3, 311878);
INSERT INTO `orders_products` VALUES (100, 69, 217, 8, 425577);
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ean` bigint(13) unsigned NOT NULL,
  `price` int(11) unsigned NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_ean` (`ean`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 'Voluptatum', 8802047585470, 55201, '2021-06-01 14:35:13', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (2, 'Dolores', 3456544775411, 732917, '2021-05-29 14:23:14', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (3, 'Nulla', 6908184607388, 448816, '2021-08-18 11:23:15', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (4, 'Esse', 5564828910965, 547654, '2021-05-24 06:00:36', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (5, 'Aut', 944587955790, 15327, '2021-06-29 01:40:36', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (6, 'Ex', 4644377539891, 560249, '2021-08-19 08:35:39', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (7, 'Officia', 2537165356614, 772221, '2021-07-23 08:00:52', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (8, 'Quidem', 5732311997773, 390783, '2021-08-02 23:26:13', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (9, 'Eveniet', 9455150516627, 914657, '2021-06-17 06:05:48', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (10, 'Laboriosam', 9737090114539, 225468, '2021-07-15 15:24:19', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (11, 'Ea', 8599353351577, 885709, '2021-07-25 00:10:08', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (12, 'Impedit', 1961840559099, 717397, '2021-05-25 17:17:11', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (13, 'Maxime', 5791457887478, 365964, '2021-06-28 11:55:15', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (14, 'Sunt', 8338835065119, 405322, '2021-07-09 07:35:28', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (15, 'Minus', 9574724611664, 40982, '2021-06-05 13:40:52', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (16, 'In', 6248788581630, 756038, '2021-08-09 03:00:29', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (17, 'Voluptas', 9558693266711, 508759, '2021-06-20 05:00:31', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (18, 'Sed', 7641645035953, 743041, '2021-08-10 14:59:03', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (19, 'Exercitationem', 5815976010602, 24815, '2021-06-23 05:41:54', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (20, 'Incidunt', 4396893711533, 158441, '2021-06-01 23:19:03', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (21, 'Qui', 5169379594062, 974232, '2021-07-24 15:14:58', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (22, 'Et', 6411001109915, 898941, '2021-06-11 12:05:32', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (23, 'Nemo', 5378484773808, 868016, '2021-08-04 04:47:30', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (24, 'Ipsam', 9881737770029, 102329, '2021-05-20 20:36:40', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (25, 'Non', 1647034916274, 749140, '2021-06-08 09:30:11', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (26, 'A', 1622803317988, 61831, '2021-08-17 15:18:22', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (27, 'Ut', 6513604261165, 36431, '2021-06-03 17:29:52', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (28, 'Quis', 8375049426343, 343402, '2021-07-02 02:19:15', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (29, 'Tempora', 1640384879138, 91616, '2021-07-16 19:35:33', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (30, 'Qui', 7192280485615, 960604, '2021-05-27 20:04:03', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (31, 'Ullam', 4191030167767, 923401, '2021-08-15 09:10:41', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (32, 'Molestiae', 4764761342026, 397276, '2021-08-14 08:54:27', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (33, 'Illo', 4024668272353, 483856, '2021-05-29 21:34:32', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (34, 'Distinctio', 9515772081740, 677282, '2021-08-04 15:34:45', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (35, 'Sed', 1594603029302, 187610, '2021-06-17 20:53:03', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (36, 'Et', 9602842101641, 321958, '2021-07-09 09:01:18', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (37, 'Est', 8466403410846, 664553, '2021-05-24 21:01:44', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (38, 'Delectus', 4798876153253, 633776, '2021-07-22 14:53:21', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (39, 'Molestiae', 3928810267734, 871311, '2021-07-24 00:55:09', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (40, 'Et', 5399522380215, 894023, '2021-07-28 20:20:07', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (41, 'Voluptatem', 6012955378633, 298427, '2021-08-11 04:14:43', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (42, 'Eaque', 2120905382716, 352903, '2021-08-07 20:10:41', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (43, 'Est', 7975841677816, 796476, '2021-06-10 01:20:26', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (44, 'Aut', 804767967268, 571576, '2021-07-17 19:42:39', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (45, 'Optio', 4305811634809, 283329, '2021-07-28 21:28:27', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (46, 'Odio', 9337575570333, 967528, '2021-08-16 21:05:03', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (47, 'Rem', 7982311940059, 852886, '2021-05-20 12:10:17', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (48, 'Autem', 462911562648, 298113, '2021-07-06 15:40:56', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (49, 'Quam', 7434371449374, 429492, '2021-06-27 06:44:21', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (50, 'Eos', 697119827873, 22408, '2021-08-04 14:22:49', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (51, 'Quia', 4702284271812, 751999, '2021-08-06 07:11:36', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (52, 'Similique', 5311388151419, 940564, '2021-07-21 14:29:13', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (53, 'Repellendus', 245750034985, 970518, '2021-07-16 22:31:21', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (54, 'Officiis', 8559009669906, 420354, '2021-08-19 11:13:19', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (55, 'Dolorem', 9742279111285, 758985, '2021-07-30 18:32:04', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (56, 'Molestiae', 7800261129976, 425577, '2021-05-15 04:43:17', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (57, 'Sit', 5467961416519, 707786, '2021-06-17 00:36:57', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (58, 'Et', 302577890191, 471825, '2021-07-13 23:02:31', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (59, 'Est', 6882048099802, 579190, '2021-08-21 23:41:02', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (60, 'Quo', 3187002527166, 457285, '2021-06-25 22:58:47', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (61, 'In', 2011495150246, 482336, '2021-06-21 08:28:25', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (62, 'Odit', 4982354775055, 481970, '2021-06-20 10:28:25', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (63, 'Id', 6415331240416, 813890, '2021-07-29 20:05:28', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (64, 'Velit', 9345912888560, 431986, '2021-07-28 18:16:30', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (65, 'Placeat', 719800335747, 557620, '2021-06-18 23:14:31', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (66, 'Alias', 46892228825, 894407, '2021-05-28 16:26:23', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (67, 'Neque', 6935826563887, 35443, '2021-08-20 09:04:31', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (68, 'Aut', 3123862473670, 986122, '2021-07-23 18:50:53', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (69, 'Ut', 4833447380888, 702223, '2021-06-29 11:48:56', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (70, 'Ipsum', 4022069957015, 593849, '2021-06-16 07:34:19', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (71, 'Impedit', 7939756289410, 350280, '2021-07-29 08:34:06', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (72, 'Saepe', 6653122507557, 804803, '2021-06-21 17:00:56', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (73, 'Dolor', 7860273214428, 89177, '2021-06-02 12:17:32', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (74, 'Maiores', 8469127409820, 940771, '2021-06-20 06:42:30', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (75, 'Nam', 2666918404965, 945756, '2021-06-29 15:25:24', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (76, 'Sit', 6404899551669, 584452, '2021-05-24 19:40:24', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (77, 'Aut', 745705925424, 869328, '2021-07-09 15:24:36', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (78, 'Ut', 5715119612437, 175290, '2021-05-19 03:09:52', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (79, 'Repellendus', 3874685648706, 401028, '2021-07-23 08:18:52', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (80, 'Quisquam', 4282864314745, 25943, '2021-05-27 23:38:22', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (81, 'Rerum', 8523720277634, 969691, '2021-08-07 16:45:54', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (82, 'Quia', 195597541859, 223539, '2021-05-26 17:34:53', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (83, 'Repudiandae', 4276487433082, 750971, '2021-06-16 09:51:12', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (84, 'Quae', 4884851333250, 441971, '2021-07-15 17:18:56', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (85, 'Qui', 6829856267870, 367427, '2021-06-30 05:25:52', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (86, 'Enim', 1341915559238, 115533, '2021-06-12 16:50:58', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (87, 'Alias', 6592497510550, 849497, '2021-06-12 00:25:14', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (88, 'Illum', 8931215695649, 263604, '2021-06-30 05:51:12', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (89, 'Quia', 4531895623457, 258698, '2021-08-13 07:10:40', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (90, 'Voluptas', 5558428811975, 6856, '2021-08-18 06:03:07', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (91, 'Qui', 5817850062226, 235696, '2021-05-21 20:40:00', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (92, 'Nihil', 1439166764638, 825192, '2021-06-29 22:45:05', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (93, 'Sequi', 3028970723979, 146504, '2021-07-24 03:19:24', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (94, 'Ipsum', 100824915914, 688633, '2021-05-21 00:56:23', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (95, 'Animi', 6216418050740, 141568, '2021-06-30 19:07:22', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (96, 'Assumenda', 7639522231604, 566126, '2021-07-08 11:31:54', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (97, 'Sunt', 5259932683095, 410365, '2021-06-10 01:56:12', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (98, 'Et', 3262680990829, 601785, '2021-06-13 05:28:42', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (99, 'Optio', 6414099710810, 345078, '2021-08-05 23:15:56', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (100, 'Accusantium', 6062282956219, 726655, '2021-05-27 22:50:01', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (101, 'Qui', 8320968450696, 6628, '2021-06-06 18:56:37', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (102, 'Quasi', 5605107901820, 981150, '2021-05-31 19:02:00', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (103, 'Voluptates', 9773118779731, 739862, '2021-08-04 10:08:13', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (104, 'Quaerat', 3158671360835, 688047, '2021-08-17 03:18:44', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (105, 'Molestiae', 7631577652694, 690532, '2021-06-14 20:25:52', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (106, 'Sunt', 8352647619797, 645946, '2021-07-05 21:28:06', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (107, 'Repellendus', 3300112483713, 54813, '2021-07-23 06:25:31', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (108, 'Aut', 5691964197995, 74545, '2021-07-10 17:00:26', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (109, 'Id', 6962782627278, 586844, '2021-07-17 17:19:40', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (110, 'Est', 9500472368697, 57714, '2021-05-23 16:43:25', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (111, 'Rem', 3893685027748, 774073, '2021-06-13 00:38:54', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (112, 'Veritatis', 8715403142135, 54012, '2021-07-26 11:06:37', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (113, 'Enim', 4071110405975, 643155, '2021-06-05 10:53:17', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (114, 'Quia', 3060986456267, 441111, '2021-07-26 08:05:18', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (115, 'Et', 4894310277773, 848616, '2021-07-09 02:16:37', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (116, 'Dolore', 69250361071, 891289, '2021-08-16 12:38:43', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (117, 'Qui', 7427442546133, 177947, '2021-05-24 12:47:53', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (118, 'Suscipit', 887066068690, 493067, '2021-06-03 10:34:41', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (119, 'Est', 9713388021864, 475785, '2021-06-08 05:07:32', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (120, 'Fuga', 1497539375904, 265883, '2021-07-13 05:48:46', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (121, 'Repudiandae', 4345035492212, 151753, '2021-08-04 08:30:42', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (122, 'Autem', 5934812633789, 410301, '2021-05-28 03:36:35', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (123, 'Sed', 2919816498629, 783181, '2021-05-31 07:06:11', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (124, 'Eum', 5417828248357, 198773, '2021-08-18 04:04:33', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (125, 'Velit', 7995108393976, 863464, '2021-07-06 12:38:38', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (126, 'Fugiat', 6314850556599, 301979, '2021-07-05 12:27:45', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (127, 'Perspiciatis', 7698903586726, 144942, '2021-06-29 03:39:57', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (128, 'Nostrum', 2332073414773, 640744, '2021-08-01 12:20:40', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (129, 'Aut', 8726502944445, 19322, '2021-06-17 05:03:58', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (130, 'Quas', 1063997496583, 984158, '2021-08-21 03:20:31', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (131, 'Aut', 7596604523418, 117934, '2021-05-20 02:19:20', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (132, 'Animi', 6461021025474, 937642, '2021-07-29 03:37:36', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (133, 'Saepe', 2572609915330, 368407, '2021-08-20 09:10:11', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (134, 'Enim', 3222099441497, 405584, '2021-07-08 03:27:37', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (135, 'Sunt', 5580507211482, 532166, '2021-08-04 10:33:58', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (136, 'Eum', 6234814299228, 734472, '2021-07-31 11:57:12', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (137, 'Excepturi', 4452273286869, 870357, '2021-06-09 08:09:49', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (138, 'Non', 7464871209291, 524232, '2021-06-26 15:42:26', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (139, 'Consequatur', 9282787061776, 79652, '2021-08-03 03:15:07', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (140, 'Suscipit', 7402727718658, 835420, '2021-08-10 15:32:04', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (141, 'Repudiandae', 3181957587480, 286642, '2021-05-25 07:17:57', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (142, 'Totam', 3663409255357, 645359, '2021-06-16 20:33:07', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (143, 'Accusantium', 7758225924511, 685371, '2021-07-04 16:52:51', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (144, 'Voluptates', 4921482051266, 114872, '2021-08-19 08:02:04', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (145, 'Aperiam', 2303883163922, 934246, '2021-08-09 03:54:25', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (146, 'Illum', 7695507708929, 761318, '2021-05-21 22:00:33', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (147, 'Ipsa', 113397218283, 562202, '2021-05-24 18:57:04', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (148, 'Ipsum', 746063302315, 615465, '2021-05-17 12:29:18', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (149, 'Sed', 8393650382575, 312848, '2021-05-29 14:40:16', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (150, 'Ipsa', 6475368875531, 17930, '2021-07-31 01:44:30', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (151, 'In', 1222821966382, 605994, '2021-07-01 00:01:07', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (152, 'Pariatur', 83545790650, 441649, '2021-06-24 03:11:30', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (153, 'Rerum', 6253700023402, 878184, '2021-08-23 00:01:51', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (154, 'Beatae', 7314747517336, 618932, '2021-08-03 01:36:52', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (155, 'Asperiores', 6175780157535, 31861, '2021-05-29 12:59:53', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (156, 'Debitis', 2194376772598, 680075, '2021-08-18 22:16:46', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (157, 'Incidunt', 1108687715305, 229725, '2021-08-06 16:20:56', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (158, 'Quasi', 9096052434642, 903198, '2021-08-07 10:36:48', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (159, 'Earum', 460327114987, 470620, '2021-06-17 01:49:03', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (160, 'Doloribus', 3077384830278, 268329, '2021-07-01 08:06:39', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (161, 'Id', 9332778741122, 224310, '2021-08-19 16:56:40', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (162, 'In', 4008048601476, 432169, '2021-06-23 22:16:17', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (163, 'Cumque', 7674325757418, 720799, '2021-06-05 04:20:06', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (164, 'Excepturi', 2134297329631, 129557, '2021-07-18 05:44:11', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (165, 'Iste', 6799618815277, 374276, '2021-06-20 00:54:38', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (166, 'Et', 6934892821426, 555323, '2021-07-29 14:49:19', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (167, 'Delectus', 6988559886075, 161628, '2021-07-19 12:03:34', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (168, 'Atque', 6239787025287, 898018, '2021-07-15 07:56:17', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (169, 'Fugit', 3569034493839, 943774, '2021-06-02 05:27:10', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (170, 'Excepturi', 4001056027290, 479812, '2021-06-15 02:36:24', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (171, 'Voluptatum', 7858632679902, 674947, '2021-06-05 06:31:56', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (172, 'Necessitatibus', 4690353465395, 973610, '2021-06-25 00:05:32', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (173, 'Omnis', 9862575970444, 979425, '2021-08-06 15:19:58', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (174, 'Veritatis', 9971707777353, 148650, '2021-08-21 01:31:10', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (175, 'Dolorem', 2137254450904, 882653, '2021-06-19 13:43:43', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (176, 'Quis', 4395035587869, 66415, '2021-06-23 10:49:49', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (177, 'Dolor', 190036447037, 881574, '2021-07-11 21:27:07', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (178, 'Occaecati', 9805455964294, 954032, '2021-08-19 20:46:28', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (179, 'Dolores', 2321445095443, 191499, '2021-06-30 02:41:57', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (180, 'Omnis', 4291019869719, 970055, '2021-07-21 10:19:51', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (181, 'Quibusdam', 2021327203507, 233598, '2021-06-30 02:23:18', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (182, 'Adipisci', 4423268195077, 44978, '2021-07-30 21:50:16', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (183, 'Occaecati', 672316669976, 114796, '2021-06-05 06:02:55', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (184, 'Perferendis', 1851409425807, 23469, '2021-07-21 11:21:15', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (185, 'Sit', 1196574920581, 778399, '2021-07-14 06:18:14', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (186, 'Repudiandae', 3643863092200, 552779, '2021-05-29 16:07:57', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (187, 'Et', 4779971528337, 638679, '2021-06-03 12:50:24', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (188, 'Voluptatum', 8303787303268, 876105, '2021-06-05 17:04:57', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (189, 'Odit', 6229173828608, 284004, '2021-07-11 10:29:37', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (190, 'Mollitia', 5318698626781, 629487, '2021-07-13 23:08:18', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (191, 'Qui', 2257360292554, 830525, '2021-06-10 06:54:28', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (192, 'Sint', 945685907049, 757508, '2021-06-09 00:28:52', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (193, 'Assumenda', 6280762501609, 373370, '2021-05-29 10:41:07', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (194, 'Eligendi', 2010626764758, 60458, '2021-06-16 05:49:05', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (195, 'Itaque', 4448733884171, 935323, '2021-06-25 06:15:29', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (196, 'Dolores', 3136764159313, 752186, '2021-05-22 10:37:05', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (197, 'Non', 2650916175071, 537967, '2021-08-05 19:14:11', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (198, 'Assumenda', 9120157051128, 733294, '2021-06-14 06:44:37', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (199, 'Commodi', 3647223292712, 984678, '2021-07-23 06:45:54', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (200, 'Soluta', 1883019222903, 776638, '2021-08-07 20:47:22', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (201, 'Quas', 6257743861816, 974370, '2021-08-18 18:07:26', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (202, 'Aut', 6665777880251, 298248, '2021-06-06 17:17:49', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (203, 'Deleniti', 664461975828, 775326, '2021-08-10 06:25:00', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (204, 'Non', 3272533287112, 393767, '2021-08-13 20:55:02', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (205, 'Ratione', 7179205723151, 564382, '2021-06-27 11:00:43', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (206, 'In', 6927549041629, 938327, '2021-06-08 18:50:26', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (207, 'Dolore', 4685134661370, 728192, '2021-05-29 04:16:35', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (208, 'Mollitia', 768177562416, 952263, '2021-05-27 11:13:04', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (209, 'Aut', 8721957429134, 659138, '2021-07-14 14:57:35', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (210, 'Quasi', 8683986908397, 390936, '2021-05-24 00:51:48', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (211, 'Nulla', 6802616257274, 663303, '2021-08-14 13:42:05', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (212, 'Repellat', 9065582244588, 340345, '2021-06-12 05:03:26', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (213, 'Aperiam', 5546096491629, 831631, '2021-07-18 17:40:56', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (214, 'Doloribus', 7768739907801, 331287, '2021-05-23 07:46:45', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (215, 'Est', 35471245629, 432886, '2021-06-28 22:57:26', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (216, 'Excepturi', 8543588848470, 119980, '2021-07-22 03:34:44', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (217, 'Officia', 7692011425311, 435619, '2021-07-29 08:50:53', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (218, 'Qui', 6113294580494, 452715, '2021-05-20 18:46:40', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (219, 'Ex', 1682281904858, 271303, '2021-07-06 05:55:09', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (220, 'Quia', 8559411457702, 35484, '2021-06-28 07:34:08', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (221, 'Aspernatur', 2019015057303, 304562, '2021-06-22 19:54:41', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (222, 'Quis', 315328166933, 290711, '2021-07-25 05:29:08', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (223, 'Commodi', 4544182930886, 564245, '2021-06-06 00:55:57', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (224, 'Impedit', 7801290914977, 354024, '2021-07-08 10:31:15', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (225, 'Consectetur', 9455923294684, 761772, '2021-05-28 11:14:56', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (226, 'Ad', 3082607656009, 258960, '2021-06-04 15:09:35', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (227, 'Id', 8158870746213, 943397, '2021-05-25 00:04:40', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (228, 'Exercitationem', 7427234936135, 257202, '2021-05-17 12:00:38', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (229, 'Dolorum', 4100765484292, 793937, '2021-08-08 17:12:27', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (230, 'Vero', 1655389579013, 711678, '2021-07-20 17:40:18', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (231, 'Libero', 567283569704, 166017, '2021-05-19 04:49:15', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (232, 'Odit', 6941479600787, 193554, '2021-07-16 12:28:47', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (233, 'Expedita', 7004997592787, 872267, '2021-07-16 02:57:39', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (234, 'Aliquam', 2148470081391, 311878, '2021-06-06 00:21:23', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (235, 'Earum', 5112082451337, 252337, '2021-07-04 00:46:38', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (236, 'Veritatis', 3784645700224, 456980, '2021-06-20 14:03:45', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (237, 'Dolorem', 668282212919, 661146, '2021-07-24 10:20:34', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (238, 'Rerum', 9956121127144, 818193, '2021-05-16 05:21:24', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (239, 'Non', 7516266342950, 119239, '2021-05-29 00:35:07', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (240, 'Dolores', 227258187479, 66314, '2021-07-29 00:57:54', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (241, 'Sapiente', 2575681537094, 630565, '2021-05-17 12:28:38', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (242, 'Aut', 1357688052715, 197195, '2021-08-09 06:24:02', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (243, 'Excepturi', 6303417347688, 518442, '2021-06-15 22:00:50', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (244, 'Et', 356438332177, 340360, '2021-08-21 19:34:24', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (245, 'Aut', 592089922279, 589167, '2021-06-14 10:04:25', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (246, 'Animi', 5899074930833, 562660, '2021-05-25 06:57:48', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (247, 'Beatae', 8937573554703, 240115, '2021-06-16 01:42:33', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (248, 'Consequuntur', 1016827470352, 118918, '2021-08-17 20:08:00', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (249, 'Molestiae', 6530914912921, 264495, '2021-05-24 10:24:31', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (250, 'Aperiam', 4332135504723, 317405, '2021-06-25 12:40:08', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (251, 'Facere', 845805484996, 248366, '2021-06-15 22:49:19', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (252, 'Eos', 2531101533879, 750713, '2021-05-25 19:34:23', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (253, 'Dolorum', 3101899161272, 450704, '2021-07-06 00:37:08', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (254, 'Ipsum', 407828485970, 382762, '2021-06-21 04:50:35', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (255, 'Sapiente', 1637748784764, 881129, '2021-07-20 11:55:37', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (256, 'In', 9186613871785, 6972, '2021-07-14 08:28:38', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (257, 'Eligendi', 8057853567817, 186643, '2021-07-29 04:58:51', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (258, 'Natus', 7633144754732, 884966, '2021-06-04 21:54:28', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (259, 'Non', 2391500516275, 837763, '2021-06-27 05:28:13', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (260, 'Nisi', 9375611611008, 462887, '2021-06-09 12:20:31', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (261, 'Sequi', 5837615480478, 814753, '2021-06-10 19:44:58', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (262, 'Non', 987531689426, 229146, '2021-06-18 09:27:08', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (263, 'Autem', 7929262261888, 895208, '2021-06-19 15:04:08', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (264, 'Culpa', 2932193791480, 711815, '2021-05-27 06:15:44', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (265, 'Enim', 2822373224726, 662578, '2021-06-13 01:43:43', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (266, 'Quia', 4829394499292, 887192, '2021-07-01 22:33:36', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (267, 'Et', 3453286316377, 37448, '2021-06-19 00:31:51', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (268, 'Reiciendis', 4486630097164, 661059, '2021-08-02 00:50:39', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (269, 'Earum', 9719660318196, 727540, '2021-05-17 01:04:23', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (270, 'Cum', 9061276034473, 215557, '2021-08-15 19:42:04', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (271, 'Ut', 7366453025704, 135572, '2021-06-11 02:17:54', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (272, 'Nulla', 8726436520852, 499339, '2021-05-19 07:14:12', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (273, 'Sed', 6441891617788, 643726, '2021-08-04 17:40:56', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (274, 'Harum', 8067579078948, 373136, '2021-08-13 00:41:42', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (275, 'Accusantium', 6236803313397, 890568, '2021-08-11 03:17:17', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (276, 'Suscipit', 9393511366217, 269868, '2021-08-04 23:47:59', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (277, 'Distinctio', 5312363777235, 681027, '2021-07-01 02:58:17', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (278, 'Maiores', 7123617880452, 680411, '2021-05-24 18:53:10', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (279, 'Vel', 9086624639827, 52246, '2021-08-05 02:53:43', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (280, 'Voluptas', 751293935400, 716378, '2021-08-12 04:41:26', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (281, 'Dolorem', 6003407961756, 772845, '2021-06-01 20:37:55', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (282, 'Quia', 5659749624333, 941999, '2021-08-18 15:04:10', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (283, 'Ipsam', 1456693676760, 763280, '2021-06-24 17:04:51', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (284, 'Voluptas', 1188355350502, 96690, '2021-07-16 16:28:55', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (285, 'Libero', 1425977946790, 333906, '2021-07-08 08:35:20', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (286, 'Beatae', 9810766324552, 703312, '2021-06-10 16:34:57', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (287, 'Possimus', 3177120087697, 596009, '2021-08-01 01:52:43', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (288, 'Magnam', 248102419638, 152270, '2021-05-23 08:10:42', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (289, 'Minima', 4821313799377, 765195, '2021-08-15 19:54:13', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (290, 'Deserunt', 2767105913960, 919899, '2021-06-09 09:25:56', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (291, 'Officiis', 8658970835294, 128511, '2021-08-06 03:46:44', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (292, 'Aut', 3218894722732, 132667, '2021-05-31 20:23:33', '2021-08-23 00:42:10');
INSERT INTO `products` VALUES (293, 'Asperiores', 9385050958510, 187446, '2021-08-18 06:19:31', '2021-08-23 00:42:11');
INSERT INTO `products` VALUES (294, 'Pariatur', 3283361807885, 650195, '2021-07-09 13:47:14', '2021-08-23 00:42:11');
INSERT INTO `products` VALUES (295, 'Recusandae', 7150242394146, 843989, '2021-07-20 03:52:29', '2021-08-23 00:42:11');
INSERT INTO `products` VALUES (296, 'Illum', 9783742588128, 157979, '2021-05-28 09:56:43', '2021-08-23 00:42:11');
INSERT INTO `products` VALUES (297, 'Molestias', 4303041429653, 56897, '2021-08-21 18:53:48', '2021-08-23 00:42:11');
INSERT INTO `products` VALUES (298, 'Quod', 3865008679682, 545508, '2021-06-13 04:51:31', '2021-08-23 00:42:11');
INSERT INTO `products` VALUES (299, 'Ullam', 2800282550341, 677985, '2021-08-03 08:22:28', '2021-08-23 00:42:11');
INSERT INTO `products` VALUES (300, 'Quo', 3492388491322, 780352, '2021-08-14 15:30:27', '2021-08-23 00:42:11');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
