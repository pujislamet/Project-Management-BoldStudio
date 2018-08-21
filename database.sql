/*
SQLyog Professional v12.4.3 (32 bit)
MySQL - 10.1.31-MariaDB : Database - manajemen_proyek_boldstudio
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`manajemen_proyek_boldstudio` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `manajemen_proyek_boldstudio`;

/*Table structure for table `detail_apply` */

DROP TABLE IF EXISTS `detail_apply`;

CREATE TABLE `detail_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_apply` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `peran_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detail_apply` */

/*Table structure for table `history_apply` */

DROP TABLE IF EXISTS `history_apply`;

CREATE TABLE `history_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_apply` varchar(50) DEFAULT NULL,
  `status_apply` int(11) DEFAULT NULL,
  `status_pembayaran` int(11) DEFAULT NULL,
  `sudah_dijadwalkan` int(11) DEFAULT NULL,
  `file` text,
  `tanggal_apply` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `history_apply` */

/*Table structure for table `jadwal_rekaman` */

DROP TABLE IF EXISTS `jadwal_rekaman`;

CREATE TABLE `jadwal_rekaman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_apply` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jadwal_rekaman` */

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `multiple` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kategori` */

/*Table structure for table `peran` */

DROP TABLE IF EXISTS `peran`;

CREATE TABLE `peran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) DEFAULT NULL,
  `peran` varchar(50) DEFAULT NULL,
  `kode_peran` varchar(10) DEFAULT NULL,
  `usia_peran` int(11) DEFAULT NULL,
  `muncul` int(11) DEFAULT NULL,
  `suara_dibutuhkan` int(11) DEFAULT NULL,
  `estimasi_rekaman` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `peran` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `no_telp` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
