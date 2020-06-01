/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.1.35-MariaDB : Database - emut
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`emut` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `emut`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `last_login` int(11) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `admin` */

/*Table structure for table `mutasi` */

DROP TABLE IF EXISTS `mutasi`;

CREATE TABLE `mutasi` (
  `id_mutasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `no_surat` int(20) NOT NULL,
  `nama_siswa` varchar(300) NOT NULL,
  `nis` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `asal_sekolah` varchar(300) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `orangtua` varchar(300) NOT NULL,
  `kelurahan` varchar(300) NOT NULL,
  `kecamatan` varchar(300) NOT NULL,
  `kabupaten` varchar(300) NOT NULL,
  `alamat_lengkap` varchar(300) NOT NULL,
  `pindah_lanjut` varchar(20) NOT NULL,
  `tujuan_sekolah` varchar(300) NOT NULL,
  `tujuan_kabupaten` varchar(300) NOT NULL,
  `tujuan_provinsi` varchar(300) NOT NULL,
  `alasan` varchar(300) NOT NULL,
  `upload_surat_mutasi` varchar(3000) NOT NULL,
  `upload_akte_kk` varchar(3000) NOT NULL,
  `upload_surat_dapodik` varchar(3000) NOT NULL,
  `status` varchar(300) NOT NULL,
  `status_jawaban` varchar(20) NOT NULL,
  `ttd` varchar(20) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  PRIMARY KEY (`id_mutasi`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `mutasi` */

insert  into `mutasi`(`id_mutasi`,`id_user`,`no_surat`,`nama_siswa`,`nis`,`nisn`,`jenis_kelamin`,`tempat_lahir`,`tgl_lahir`,`asal_sekolah`,`kelas`,`orangtua`,`kelurahan`,`kecamatan`,`kabupaten`,`alamat_lengkap`,`pindah_lanjut`,`tujuan_sekolah`,`tujuan_kabupaten`,`tujuan_provinsi`,`alasan`,`upload_surat_mutasi`,`upload_akte_kk`,`upload_surat_dapodik`,`status`,`status_jawaban`,`ttd`,`tgl_pengajuan`) values 
(6,2,0,'Jamet Kuproy',2123,12313,'Laki - Laki','Cilacap','2020-05-11','Budut','11','Sutejo','Mertasinga','Cilacap Utara','Cilacap','ewdawd','Pindah','Sutomo','Magelang','Jawa Tengah','wdwd','mamunur.pdf','mamunur2.pdf','mamunur1.pdf','Diproses','','','2020-05-28'),
(10,2,0,'Jamet anjas',31232,231,'Laki - Laki','dwad','2020-05-23','dwad','awdaw','awdawd','dawd','dwadawda','wdawdw','dawda','awdaw','awdwa','wdaawd','wdaw','awdawda','mamunur12.pdf','mamunur14.pdf','mamunur13.pdf','Diproses','','','2020-05-28');

/*Table structure for table `tandatangan` */

DROP TABLE IF EXISTS `tandatangan`;

CREATE TABLE `tandatangan` (
  `id_ttd` int(11) NOT NULL AUTO_INCREMENT,
  `ket` varchar(300) NOT NULL,
  `jabatan` varchar(300) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `nip` varchar(300) NOT NULL,
  PRIMARY KEY (`id_ttd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tandatangan` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `npsn` int(20) NOT NULL,
  `password` varchar(300) NOT NULL,
  `sekolah` varchar(300) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `jabatan` varchar(300) NOT NULL,
  `no_tlp` int(15) NOT NULL,
  `surat_tugas` varchar(300) DEFAULT NULL,
  `verifikasi` varchar(300) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `tgl_daftar` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id`,`npsn`,`password`,`sekolah`,`nama`,`jabatan`,`no_tlp`,`surat_tugas`,`verifikasi`,`role`,`tgl_daftar`) values 
(1,12345,'21232f297a57a5a743894a0e4a801fc3','ADMINISTRATOR','Farras Ammar I','Staff',8972772,NULL,'','admin','2020-03-24'),
(2,11111,'ee11cbb19052e40b07aac0ca060c23ee','TEST USER','USER','STAFF',83838,NULL,'','user','2020-03-24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
