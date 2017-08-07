-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for essentialmode
CREATE DATABASE IF NOT EXISTS `essentialmode` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `essentialmode`;

-- Dumping structure for table essentialmode.fx_customs_cars
CREATE TABLE IF NOT EXISTS `fx_customs_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steamid` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_group` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `vehicle_class` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `model` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `bike` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `veh_state` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `plate_index` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `primary_color` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `secondary_color` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `pearl_color` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `wheel_color` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `wheeltype` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `neon_left` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `neon_right` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `neon_front` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `neon_back` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `neon_r` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `neon_g` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `neon_b` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `smoke_r` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `smoke_g` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `smoke_b` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `spoilers` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `front_bumper` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `rear_bumper` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `side_skirt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `exhaust` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `frame` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `grille` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `hood` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `fender` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `right_fender` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `roof` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `engine` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `brakes` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `transmission` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `horn` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `suspension` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `armor` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `turbo` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tire_smoke` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `xeon` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `front_wheel` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `back_wheel` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `windowtint` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bulletproof` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
