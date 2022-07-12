-- Adminer 4.8.1 MySQL 8.0.29 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `smarket_data` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `smarket_data`;

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `barcode` varchar(12) NOT NULL,
  `description` varchar(500) NOT NULL,
  `owner` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `description` (`description`),
  KEY `owner` (`owner`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `item` (`id`, `name`, `price`, `barcode`, `description`, `owner`) VALUES
(1,	'iPhone13',	1200,	'951623487559',	'Fast. Powerful. Fantastic. Check out iPhone 13 Pro, iPhone 13 Pro Max, iPhone 13',	12),
(2,	'MacbookPro',	3200,	'884751629951',	'Our most powerful laptops, MacBook Pros are supercharged by M1 and M2 chips. Featuring Magic Keyboard, Touch ID',	1),
(3,	'item_1',	10,	'000000000001',	'description_1',	12),
(4,	'item_2',	12,	'000000000002',	'description_2',	NULL),
(5,	'New Item #0',	704,	'571937941339',	'description # 0',	NULL),
(6,	'New Item #1',	574,	'510124612255',	'description # 1',	NULL),
(7,	'New Item #2',	447,	'568300314181',	'description # 2',	12),
(8,	'New Item #3',	107,	'532636141248',	'description # 3',	NULL),
(9,	'New Item #4',	794,	'448285801650',	'description # 4',	NULL),
(10,	'New Item #5',	543,	'186190860882',	'description # 5',	NULL),
(11,	'New Item #6',	979,	'667406734983',	'description # 6',	12),
(12,	'New Item #7',	585,	'700598937056',	'description # 7',	12),
(13,	'New Item #8',	482,	'795792142456',	'description # 8',	NULL),
(14,	'New Item #9',	839,	'270603508136',	'description # 9',	NULL),
(17,	'New Item #11',	124,	'545027771000',	'description # 11',	12),
(18,	'New Item #12',	99,	'700667638139',	'description # 12',	NULL),
(19,	'New Item #13',	609,	'877066777064',	'description # 13',	12),
(20,	'New Item #14',	448,	'746305627114',	'description # 14',	NULL),
(21,	'New Item #15',	282,	'555236849485',	'description # 15',	12),
(22,	'New Item #16',	287,	'212586585036',	'description # 16',	NULL),
(23,	'New Item #17',	541,	'449697369328',	'description # 17',	12),
(24,	'New Item #18',	106,	'225499662186',	'description # 18',	12),
(25,	'New Item #19',	550,	'319622470527',	'description # 19',	12);

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `budget` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email_address` (`email_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user` (`id`, `username`, `email_address`, `password_hash`, `budget`) VALUES
(1,	'Iaroslav',	'osemail@gmail.com',	'123456',	1000),
(2,	'Inna',	'innag@gmail.com',	'123456',	1000),
(4,	'Iaroslav2',	'io@mail.com',	'123',	1000),
(5,	'Jimmy Page',	'jpage@gmail.com',	'123456',	1000),
(6,	'useruser',	'useruser@useruser.useruser',	'useruser',	1000),
(11,	'abcd@ef.g',	'abcd@ef.g',	'abcd@ef.g',	1000),
(12,	'userabc@email.com',	'userabc@email.com',	'$2b$12$IpPaz3VpM3EmZOCG3yKKcuTrTOMYOloAeIwZyVFbR3YKdz2v2S1We',	3812030),
(13,	'userabc2@email.com',	'userabc2@email.com',	'$2b$12$l.NM0p5H4qsz2afFMPODhuyl87qEK0o34srf/NmXPbnrR/x7VCTlW',	1000),
(14,	'userabc3@email.com',	'userabc3@email.com',	'$2b$12$aQCoee5MpkrThlvHYVdS9OK7HdgXlgjpUpGUpb/w4RO06OSkTQDtm',	1000),
(15,	'userabc5@email.com',	'userabc5@email.com',	'$2b$12$swfAISlUiOIC8NCv6qQZVet6KK/LXgF7s6FFhyN1U1HYhTtTC14z2',	1000),
(16,	'userabc8@email.com',	'userabc8@email.com',	'$2b$12$g2PJURvq/JHN2yTtWl/7x.mE.RBg35KVsKt.LVL5HUvDiaw829n7i',	1000);

-- 2022-07-12 11:25:33
