-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.17 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for productcatalog
CREATE DATABASE IF NOT EXISTS `productcatalog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `productcatalog`;


-- Dumping structure for table productcatalog.product
CREATE TABLE IF NOT EXISTS `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `COMMENT` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table productcatalog.product: ~2 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`ID`, `NAME`, `EMAIL`, `COMMENT`) VALUES
	(1, 'NEXUS5', 'usha.dewasi@gmail.com', 'Google Nexus 5'),
	(2, 'Nexus6', 'usha.dewasi@gmail.com', 'Nexus6 a new version in nexus family'),
	(3, 'MotoG', 'ud@gmail.com', 'MotoG from motorola'),
	(4, 'John Doe', 'john.doe@email', ''),
	(5, 'John Doe', 'john.doe@email', ''),
	(6, 'John Doe', 'john.doe@email', ''),
	(7, 'John Doe', 'john.doe@email', ''),
	(8, 'John Doe', 'john.doe@email', ''),
	(9, 'John Doe', 'john.doe@email', ''),
	(10, 'John Doe', 'john.doe@email', ''),
	(11, 'abc', 't@r.com', 'dvdsv');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
