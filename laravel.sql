-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table laravel.abouts
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.abouts: ~0 rows (approximately)
INSERT INTO `abouts` (`id`, `title`, `desc`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'SMKN 1 BUAHDUA', 'Perkembangan teknologi saat ini menuntut tersedianya tenaga kerja yang kompeten dan handal \r\ndi berbagai bidang agar sebuah negara mampu bertahan dan berperan dalam era yang penuh \r\npersaingan dan sekaligus membuka dan memanfaatkan setiap peluang. Untuk meningkatkan \r\npertumbuhan ekonomi suatu negara, strategi yang dianggap efektif adalah dengan melakukan \r\nindustrialisasi. Industrialisasi, pada derajat tertentu akan mengimplikasikan pergeseran proses \r\nproduksi dari labouring menjadi manufacturing dalam arti tenaga kerja manusia tergantikan \r\noleh hard technology. Ini berarti industrialisasi membutuhkan tenaga kerja terampil yang tidak \r\nhanya mampu mengoperasikan teknologi tersebut, melainkan juga memeliharanya. \r\nIndustrialisasi juga berpotensi menciptakan pengangguran jika pergeseran proses produksi \r\ntersebut tidak dibarengi dengan perubahan orientasi pendidikan dari akademis menjadi \r\nvokasional. Kondisi di atas menuntut dunia pendidikan dan pasar kerja dirancang secara \r\nterintegrasi dengan memperhatikan tujuan dan kebutuhan Dunia Kerja. Dengan demikian perlu \r\ndirancang salah satu bentuk penyelenggaraan pendidikan yang berorientasi Dunia Kerja.', '1728840848_SMKN1 Buahdua.png', '0', '2024-10-13 10:34:08', '2024-10-13 10:34:08');

-- Dumping structure for table laravel.authors
CREATE TABLE IF NOT EXISTS `authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authors_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.authors: ~0 rows (approximately)

-- Dumping structure for table laravel.banks
CREATE TABLE IF NOT EXISTS `banks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sandi_bank` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.banks: ~146 rows (approximately)
INSERT INTO `banks` (`id`, `sandi_bank`, `nama_bank`) VALUES
	(1, '002', 'Bank BRI'),
	(2, '008', 'Bank Mandiri'),
	(3, '009', 'Bank BNI'),
	(4, '427', 'Bank Syariah Indonesia (Eks. BNI Syariah)'),
	(5, '451', 'Bank Syariah Indonesia (Eks. Bank Syariah Mandiri, BSM)'),
	(6, '422', 'Bank Syariah Indonesia (Eks. BRI Syariah)'),
	(7, '200', 'Bank BTN'),
	(8, '022', 'Bank CIMB'),
	(9, '022', 'Bank CIMB Niaga Syariah'),
	(10, '147', 'Bank Muamalat'),
	(11, '213', 'Bank BTPN'),
	(12, '547', 'Bank BTPN Syariah'),
	(13, '213', 'Bank Jenius'),
	(14, '013', 'Bank Permata'),
	(15, '013', 'Bank Permata Syariah'),
	(16, '046', 'Bank DBS Indonesia'),
	(17, '046', 'Digibank'),
	(18, '011', 'BANK DANAMON'),
	(19, '016', 'BANK MAYBANK (BII)'),
	(20, '426', 'BANK MEGA'),
	(21, '153', 'BANK SINARMAS'),
	(22, '950', 'BANK COMMONWEALTH'),
	(23, '028', 'BANK OCBC NISP'),
	(24, '441', 'BANK BUKOPIN'),
	(25, '521', 'BANK BUKOPIN SYARIAH'),
	(26, '536', 'BANK BCA SYARIAH'),
	(27, '026', 'BANK LIPPO'),
	(28, '031', 'CITIBANK'),
	(29, '789', 'INDOSAT DOMPETKU'),
	(30, '911', 'LINKAJA'),
	(31, '023', 'Bank UOB Indonesia'),
	(32, '023', 'TMRW by UOB Indonesia'),
	(33, '542', 'Bank Jago (Bank Artos Indonesia)'),
	(34, '490', 'Bank NEO Commerce (Akulaku)'),
	(35, '110', 'BANK JABAR BJB (JAWA BARAT)'),
	(36, '425', 'BANK JABAR BJB SYARIAH (JAWA BARAT)'),
	(37, '111', 'BANK DKI JAKARTA'),
	(38, '112', 'BPD DIY (YOGYAKARTA)'),
	(39, '113', 'BANK JATENG (JAWA TENGAH)'),
	(40, '114', 'BANK JATIM (JAWA TIMUR)'),
	(41, '115', 'BANK JAMBI'),
	(42, '116', 'BANK ACEH'),
	(43, '116', 'BANK ACEH SYARIAH'),
	(44, '117', 'BANK SUMUT'),
	(45, '118', 'BANK NAGARI (BANK SUMBAR)'),
	(46, '119', 'BANK RIAU KEPRI'),
	(47, '120', 'BANK SUMSEL BABEL (SUMATERA SELATAN BANGKA BELITUNG)'),
	(48, '121', 'BANK LAMPUNG'),
	(49, '122', 'BANK KALSEL (BANK KALIMANTAN SELATAN)'),
	(50, '123', 'BANK KALBAR (BANK KALIMANTAN BARAT)'),
	(51, '124', 'BANK KALTIMTARA (BANK KALIMANTAN TIMUR DAN UTARA)'),
	(52, '125', 'BANK KALTENG (BANK KALIMANTAN TENGAH)'),
	(53, '126', 'BANK SULSELBAR (BANK SULAWESI SELATAN DAN BARAT)'),
	(54, '127', 'BANK SULUTGO (BANK SULAWESI UTARA DAN GORONTALO)'),
	(55, '128', 'BANK NTB'),
	(56, '128', 'BANK NTB SYARIAH'),
	(57, '129', 'BANK BPD BALI'),
	(58, '130', 'BANK NTT'),
	(59, '131', 'BANK MALUKU MALUT'),
	(60, '132', 'BANK PAPUA'),
	(61, '133', 'BANK BENGKULU'),
	(62, '134', 'BANK SULTENG (BANK SULAWESI TENGAH)'),
	(63, '135', 'BANK SULTRA (BANK SULAWESI TENGGARA)'),
	(64, '137', 'BANK BANTEN'),
	(65, '003', 'BANK EKSPOR INDONESIA'),
	(66, '019', 'BANK PANIN'),
	(67, '517', 'BANK PANIN DUBAI SYARIAH'),
	(68, '020', 'BANK ARTA NIAGA KENCANA'),
	(69, '030', 'AMERICAN EXPRESS BANK LTD'),
	(70, '031', 'CITIBANK'),
	(71, '032', 'JP. MORGAN CHASE BANK, N.A.'),
	(72, '033', 'BANK OF AMERICA, N.A'),
	(73, '034', 'ING INDONESIA BANK'),
	(74, '036', 'BANK CCB INDONESIA'),
	(75, '037', 'BANK ARTHA GRAHA INTERNASIONAL'),
	(76, '039', 'BANK CREDIT AGRICOLE INDOSUEZ'),
	(77, '040', 'THE BANGKOK BANK COMP. LTD'),
	(78, '042', 'MUFG BANK'),
	(79, '045', 'BANK SUMITOMO MITSUI INDONESIA'),
	(80, '047', 'BANK RESONA PERDANIA'),
	(81, '048', 'BANK MIZUHO INDONESIA'),
	(82, '050', 'STANDARD CHARTERED BANK'),
	(83, '052', 'BANK ABN AMRO'),
	(84, '053', 'BANK KEPPEL TATLEE BUANA'),
	(85, '054', 'BANK CAPITAL INDONESIA'),
	(86, '057', 'BANK BNP PARIBAS INDONESIA'),
	(87, '059', 'KOREA EXCHANGE BANK DANAMON'),
	(88, '060', 'RABOBANK INTERNASIONAL INDONESIA'),
	(89, '061', 'BANK ANZ INDONESIA'),
	(90, '069', 'BANK OF CHINA'),
	(91, '076', 'BANK BUMI ARTA'),
	(92, '087', 'BANK HSBC INDONESIA'),
	(93, '087', 'BANK EKONOMI (Lebur dengan Bank HSBC)'),
	(94, '088', 'BANK ANTARDAERAH'),
	(95, '089', 'BANK HAGA'),
	(96, '093', 'BANK IFI'),
	(97, '095', 'BANK J TRUST INDONESIA'),
	(98, '097', 'BANK MAYAPADA'),
	(99, '145', 'BANK NUSANTARA PARAHYANGAN'),
	(100, '146', 'BANK SWADESI (BANK OF INDIA INDONESIA)'),
	(101, '151', 'BANK MESTIKA'),
	(102, '152', 'BANK SHINHAN INDONESIA (BANK METRO EXPRESS)'),
	(103, '157', 'BANK MASPION INDONESIA'),
	(104, '159', 'BANK HAGAKITA'),
	(105, '161', 'BANK GANESHA'),
	(106, '162', 'BANK WINDU KENTJANA'),
	(107, '164', 'BANK ICBC INDONESIA (HALIM INDONESIA BANK)'),
	(108, '166', 'BANK HARMONI INTERNATIONAL'),
	(109, '167', 'BANK QNB INDONESIA'),
	(110, '212', 'BANK WOORI SAUDARA'),
	(111, '405', 'BANK VICTORIA SYARIAH'),
	(112, '459', 'BANK BISNIS INTERNASIONAL'),
	(113, '466', 'BANK SRI PARTHA'),
	(114, '472', 'BANK JASA JAKARTA'),
	(115, '484', 'BANK HANA (KEB HANA BANK)'),
	(116, '485', 'BANK MNC'),
	(117, '490', 'BANK YUDHA BHAKTI'),
	(118, '491', 'BANK MITRANIAGA'),
	(119, '494', 'BANK BRI AGRO'),
	(120, '498', 'BANK SBI INDONESIA (BANK INDOMONEX)'),
	(121, '501', 'BANK DIGITAL BCA (BCA DIGITAL)'),
	(122, '503', 'BANK NATIONAL NOBU (BANK ALFINDO)'),
	(123, '506', 'BANK MEGA SYARIAH'),
	(124, '513', 'BANK INA PERDANA'),
	(125, '517', 'BANK PANIN DUBAI SYARIAH'),
	(126, '520', 'PRIMA MASTER BANK'),
	(127, '521', 'BANK PERSYARIKATAN INDONESIA'),
	(128, '525', 'BANK AKITA'),
	(129, '526', 'BANK DINAR INDONESIA'),
	(130, '531', 'ANGLOMAS INTERNASIONAL BANK'),
	(131, '523', 'BANK SAHABAT SAMPEORNA (BANK DIPO INTERNATIONAL)'),
	(132, '535', 'BANK KESEJAHTERAAN EKONOMI'),
	(133, '548', 'BANK MULTIARTA SENTOSA'),
	(134, '553', 'BANK MAYORA INDONESIA'),
	(135, '555', 'BANK INDEX SELINDO'),
	(136, '558', 'BANK EKSEKUTIF'),
	(137, '559', 'CENTRATAMA NASIONAL BANK'),
	(138, '562', 'BANK FAMA INTERNASIONAL'),
	(139, '564', 'BANK MANDIRI TASPEN POS (BANK SINAR HARAPAN BALI)'),
	(140, '566', 'BANK VICTORIA INTERNATIONAL'),
	(141, '567', 'BANK HARDA INTERNASIONAL'),
	(142, '945', 'IBK BANK INDONESIA'),
	(143, '946', 'BANK MERINCORP'),
	(144, '947', 'BANK MAYBANK INDOCORP'),
	(145, '949', 'BANK CTBC INDONESIA (CHINA TRUST)'),
	(146, '688', 'BPR KS (KARYAJATNIKA SEDAYA)');

-- Dumping structure for table laravel.bank_accounts
CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `account_number` bigint unsigned NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bank_accounts_user_id_foreign` (`user_id`),
  CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.bank_accounts: ~0 rows (approximately)

-- Dumping structure for table laravel.beritas
CREATE TABLE IF NOT EXISTS `beritas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `beritas_title_unique` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.beritas: ~0 rows (approximately)

-- Dumping structure for table laravel.berkas_murids
CREATE TABLE IF NOT EXISTS `berkas_murids` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `kartu_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akte_kelahiran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surat_kelakuan_baik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surat_sehat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surat_tidak_buta_warna` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rapor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ijazah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.berkas_murids: ~0 rows (approximately)

-- Dumping structure for table laravel.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `book_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `publisher_id` bigint unsigned NOT NULL,
  `publication_year` year NOT NULL,
  `isbn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `books_book_code_unique` (`book_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.books: ~0 rows (approximately)

-- Dumping structure for table laravel.borrowings
CREATE TABLE IF NOT EXISTS `borrowings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `borrow_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` bigint unsigned NOT NULL,
  `book_id` bigint unsigned NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `lateness` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `borrowings_borrow_code_unique` (`borrow_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.borrowings: ~0 rows (approximately)

-- Dumping structure for table laravel.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.categories: ~0 rows (approximately)

-- Dumping structure for table laravel.data_jurusans
CREATE TABLE IF NOT EXISTS `data_jurusans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `jurusan_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `data_jurusans_jurusan_id_foreign` (`jurusan_id`),
  CONSTRAINT `data_jurusans_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.data_jurusans: ~1 rows (approximately)
INSERT INTO `data_jurusans` (`id`, `jurusan_id`, `image`, `content`, `created_at`, `updated_at`) VALUES
	(1, 1, '1728837354_tkro.png', 'Program Keahlian Teknik Otomotif di SMKN 1 BUAHDUA lebih terkonsentrasi ke perawatan Kendaraan Ringan Otomotif dan Ototronik, sarana prasana sudah cukup lengkap serta Tenaga Pendidik sudah Magang Industri. Kerja sama Industri dengan PT. Astra Daihatsu Motor dan PT. Nusantara Jaya Sentosa (Main Dealer Suzuki Jawa Barat).Program unggulan Servis Point yang dilaksanakan dengan 2 Industri tersebut, magang peserta didik.', '2024-10-13 09:35:54', '2024-10-13 09:35:54'),
	(2, 2, '1728840499_tot.png', 'Tujuan Kompetensi keahlian Teknik Ototronik SMKN 1 Buahdua yaitu membekali \r\npeserta didik dengan pengetahuan, sikap, prilaku dan keterampilan agar kompeten dalam \r\n: \r\na) Bidang kompetensi keahlian Teknik Ototronik yang diberikan, sehingga mampu \r\nmengembangkan dan mengaplikasikan dalam pekerjaanya secara mandiri dan dapat \r\nmengisi lowongan pekerjaan yang ada di dunia usaha dan dunia industry sebagai \r\ntenaga kerja tingkat menengah yang handal. \r\nb) Memiliki karakter, mampu berkompetisi dan mengembangkan sikap professional \r\ndalam kompetensi keahlian Teknik Ototronik.', '2024-10-13 10:28:19', '2024-10-13 10:28:19'),
	(3, 3, '1728840572_tkj.png', 'Program Keahlian Teknik Jaringan Komputer dan Telekomunikasi termasuk program keahlian yang sangat diminati oleh masyarakat. Program Keahlian Teknik Jaringan \r\nKomputer dan Telekomunikasi di SMKN 1 BUAHDUA lebih terkonsentrasi Komputer jaringan, sarana prasarana lengkap (program keahlian unggulan SMK PK), Tenaga \r\nPendidik sudah magang industri. Kerja sama industri dengan PT. CGI (Cakrawala Global Informatika) dan PT.Urban Akses. Program unggulan mini ISP serta magang peserta didik.', '2024-10-13 10:29:32', '2024-10-13 10:29:32'),
	(4, 4, '1728840611_AKL.png', 'Program Keahlian Akuntansi dan Keuangan Lembaga termasuk program keahlian yang  cukup diminati oleh masyarakat. Program keahlian Akuntansi dan Keuangan Lembaga di SMKN 1 BUAHDUA lebih terkonsentasi Akuntansi Keuangan, fasilitas sarana prasarana cukup lengkap, Tenaga Pendidik 85 % sudah magang industri. Kerja sama industri dengan PT. Indah Karya (Persero).', '2024-10-13 10:30:11', '2024-10-13 10:30:11'),
	(5, 5, '1728840647_BDPM.png', 'Program Keahlian Pemasaran termasuk program keahlian yang cukup diminati oleh masyarakat. Program Keahlian Pemasaran di SMKN 1 BUAHDUA lebih terkonsentrasi ke \r\nBisnis Daring dan Pemasaran, fasilitas sarana prasarana cukup lengkap. Tenaga Pendidik 90 % sudah magang industri. Kerja sama industri dengan Grya Sumedang, program \r\nunggulan magang peserta didik.', '2024-10-13 10:30:47', '2024-10-13 10:30:47');

-- Dumping structure for table laravel.data_murids
CREATE TABLE IF NOT EXISTS `data_murids` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `nis` bigint DEFAULT NULL,
  `nisn` bigint DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` enum('Islam','Kristen Katolik','Kristen Protestan','Hindu','Budha','Konghucu') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `asal_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proses` enum('Pendaftaran','Berkas','Murid','Ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pendaftaran',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.data_murids: ~0 rows (approximately)

-- Dumping structure for table laravel.data_orang_tuas
CREATE TABLE IF NOT EXISTS `data_orang_tuas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `nama_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_ayah` enum('SD','SMP','SMA/SMK','S1','S2','S3') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_ayah` enum('Wiraswasta','Wirausaha','ASN','Buruh') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_ibu` enum('SD','SMP','SMA/SMK','S1','S2','S3') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_ibu` enum('Ibu Rumah Tangga','Wiraswasta','Wirausaha','ASN','Buruh') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.data_orang_tuas: ~0 rows (approximately)

-- Dumping structure for table laravel.detail_payment_spps
CREATE TABLE IF NOT EXISTS `detail_payment_spps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint NOT NULL,
  `status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_file` date DEFAULT NULL,
  `approve_by` bigint unsigned DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detail_payment_spps_user_id_foreign` (`user_id`),
  KEY `detail_payment_spps_payment_id_foreign` (`payment_id`),
  CONSTRAINT `detail_payment_spps_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payment_spps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detail_payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.detail_payment_spps: ~0 rows (approximately)

-- Dumping structure for table laravel.events
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acara` datetime NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `events_title_unique` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.events: ~0 rows (approximately)

-- Dumping structure for table laravel.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table laravel.footers
CREATE TABLE IF NOT EXISTS `footers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.footers: ~1 rows (approximately)
INSERT INTO `footers` (`id`, `facebook`, `instagram`, `twitter`, `youtube`, `logo`, `telp`, `whatsapp`, `email`, `desc`, `created_at`, `updated_at`) VALUES
	(1, 'smknegeribuahdua/', 'sabda_smkn1buahdua/', '-', '@smkn1buahdua302', '1728837193_1728831928_logo-dark.png.png', '0000', '000', 'smkn1buahdua@gmail.com', 'abcde', '2024-10-13 09:33:13', '2024-10-13 09:33:13');

-- Dumping structure for table laravel.image_sliders
CREATE TABLE IF NOT EXISTS `image_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urutan` int NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.image_sliders: ~3 rows (approximately)
INSERT INTO `image_sliders` (`id`, `image`, `title`, `desc`, `urutan`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, '1728837849_sliderr.png', 'VISI SMKN 1 BUAHDUA', 'Satu Buahdua Jujur , Unggul , Amanah , Ramah , Agamis', 0, '0', '2024-10-13 09:40:33', '2024-10-13 09:44:09'),
	(2, '1728838003_slider2.jpg', 'MISI SMKN 1 BUAHDUA.', 'Mewujudkan Sumber Daya Manusia yang Profesional, Dedikasi tinggi, berkarakter Unggul, Kreatif, dan Inovatif, mandiri, serta berakhlak mulia, peduli terhadap lingkungan, dan berakar pada budaya bangsa;', 1, '0', '2024-10-13 09:46:43', '2024-10-13 09:46:43'),
	(3, '1728838123_slider3.jpg', 'MISI SMKN 1 BUAHDUA', 'Mewujudkan kemitraan yang bermakna dengan Dunia Kerja , Melaksanakan pembelajaran berbasis kompetensi dunia kerja dan berkebhinekaan global , Mewujudkan sarana prasarana standar industri 4.0', 2, '0', '2024-10-13 09:48:43', '2024-10-13 09:49:37');

-- Dumping structure for table laravel.jurusans
CREATE TABLE IF NOT EXISTS `jurusans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jurusans_nama_unique` (`nama`),
  UNIQUE KEY `jurusans_slug_unique` (`slug`),
  UNIQUE KEY `jurusans_singkatan_unique` (`singkatan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.jurusans: ~1 rows (approximately)
INSERT INTO `jurusans` (`id`, `nama`, `singkatan`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Program Keahlian Teknik Otomotif', 'TKRO', 'program-keahlian-teknik-otomotif', '0', '2024-10-13 09:35:54', '2024-10-13 09:35:54'),
	(2, 'Teknik Ototronik', 'TOT', 'teknik-ototronik', '0', '2024-10-13 10:28:19', '2024-10-13 10:28:19'),
	(3, 'Program Keahlian Teknik Jaringan Komputer dan Telekomunikasi', 'TKJT', 'program-keahlian-teknik-jaringan-komputer-dan-telekomunikasi', '0', '2024-10-13 10:29:32', '2024-10-13 10:29:32'),
	(4, 'Program Keahlian Akuntansi dan Keuangan Lembaga.', 'AKL', 'program-keahlian-akuntansi-dan-keuangan-lembaga', '0', '2024-10-13 10:30:11', '2024-10-13 10:30:11'),
	(5, 'Program Keahlian Pemasaran', 'PM', 'program-keahlian-pemasaran', '0', '2024-10-13 10:30:47', '2024-10-13 10:30:47');

-- Dumping structure for table laravel.kategori_beritas
CREATE TABLE IF NOT EXISTS `kategori_beritas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kategori_beritas_nama_unique` (`nama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.kategori_beritas: ~0 rows (approximately)

-- Dumping structure for table laravel.kegiatans
CREATE TABLE IF NOT EXISTS `kegiatans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kegiatans_nama_unique` (`nama`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.kegiatans: ~0 rows (approximately)
INSERT INTO `kegiatans` (`id`, `nama`, `slug`, `image`, `imagas`, `content`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'TKJ', 'tkj', '1728844434_SMKN1 Buahdua.png', NULL, 'jhh', '0', '2024-10-13 11:33:54', '2024-10-13 11:33:54');

-- Dumping structure for table laravel.members
CREATE TABLE IF NOT EXISTS `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_member_code_unique` (`member_code`),
  UNIQUE KEY `members_user_id_unique` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.members: ~0 rows (approximately)

-- Dumping structure for table laravel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2021_08_08_100000_create_banks_tables', 1),
	(6, '2022_03_20_132856_create_jurusans_table', 1),
	(7, '2022_03_20_133244_create_data_jurusans_table', 1),
	(8, '2022_03_22_182953_create_kegiatans_table', 1),
	(9, '2022_03_23_040838_create_image_sliders_table', 1),
	(10, '2022_03_23_052723_add_field_to_image_sliders_table', 1),
	(11, '2022_03_23_065335_create_abouts_table', 1),
	(12, '2022_03_23_074809_create_videos_table', 1),
	(13, '2022_03_24_075737_create_kategori_beritas_table', 1),
	(14, '2022_03_24_075900_create_beritas_table', 1),
	(15, '2022_03_24_105758_create_events_table', 1),
	(16, '2022_03_24_201826_add_field_to_events_table', 1),
	(17, '2022_03_24_204322_create_footers_table', 1),
	(18, '2022_03_25_102915_create_permission_tables', 1),
	(19, '2022_03_27_074151_create_users_details_table', 1),
	(20, '2022_03_27_094236_create_data_murids_table', 1),
	(21, '2022_03_28_154339_create_profile_sekolahs_table', 1),
	(22, '2022_03_28_161701_create_visimisis_table', 1),
	(23, '2022_03_30_084531_create_data_orang_tuas_table', 1),
	(24, '2022_03_30_172737_add_value_role_in_users_table', 1),
	(25, '2022_03_30_194727_add_value_role_in_users_details_table', 1),
	(26, '2022_04_01_190600_add_field_to_data_murids', 1),
	(27, '2022_04_01_191038_create_berkas_murids_table', 1),
	(28, '2022_05_20_062053_create_authors_table', 1),
	(29, '2022_05_20_062103_create_publishers_table', 1),
	(30, '2022_05_20_062130_create_categories_table', 1),
	(31, '2022_05_20_062140_create_books_table', 1),
	(32, '2022_05_20_062219_create_members_table', 1),
	(33, '2022_05_20_062236_create_borrowings_table', 1),
	(34, '2022_07_16_094123_create_bank_accounts_table', 1),
	(35, '2022_07_16_094821_create_payment_spps_table', 1),
	(36, '2022_07_16_100447_create_detail_payment_spps_table', 1),
	(37, '2022_07_16_145332_add_value_role_bendahara_in_users_table', 1),
	(38, '2022_07_16_145418_add_value_role_bendahara_in_users_details_table', 1),
	(39, '2022_07_29_072220_add_column_account_name_in_bank_accounts_table', 1),
	(40, '2022_07_29_081354_add_column_in_detail_payment_spps_table', 1);

-- Dumping structure for table laravel.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.model_has_permissions: ~0 rows (approximately)

-- Dumping structure for table laravel.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.model_has_roles: ~0 rows (approximately)
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 2);

-- Dumping structure for table laravel.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.password_resets: ~0 rows (approximately)

-- Dumping structure for table laravel.payment_spps
CREATE TABLE IF NOT EXISTS `payment_spps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `year` bigint NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `January` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `February` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `March` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `April` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `May` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `June` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `July` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `August` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `September` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `October` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `November` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `December` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_spps_user_id_foreign` (`user_id`),
  CONSTRAINT `payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.payment_spps: ~0 rows (approximately)

-- Dumping structure for table laravel.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.permissions: ~0 rows (approximately)

-- Dumping structure for table laravel.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table laravel.profile_sekolahs
CREATE TABLE IF NOT EXISTS `profile_sekolahs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.profile_sekolahs: ~1 rows (approximately)
INSERT INTO `profile_sekolahs` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'SMKN 1 BUAHDUA', 'Perkembangan teknologi saat ini menuntut tersedianya tenaga kerja yang kompeten dan handal di berbagai bidang agar sebuah negara mampu bertahan dan berperan dalam era yang penuh persaingan dan sekaligus membuka dan memanfaatkan setiap peluang. Untuk meningkatkan pertumbuhan ekonomi suatu negara, strategi yang dianggap efektif adalah dengan melakukan industrialisasi. Industrialisasi, pada derajat tertentu akan mengimplikasikan pergeseran proses produksi dari labouring menjadi manufacturing dalam arti tenaga kerja manusia tergantikan oleh hard technology. Ini berarti industrialisasi membutuhkan tenaga kerja terampil yang tidak hanya mampumengoperasikan teknologi tersebut, melainkan juga memeliharanya. Industrialisasi juga berpotensi menciptakan pengangguran jika pergeseran proses produksi \r\ntersebut tidak dibarengi dengan perubahan orientasi pendidikan dari akademis menjadi vokasional. Kondisi di atas menuntut dunia pendidikan dan pasar kerja dirancang secara terintegrasi dengan memperhatikan tujuan dan kebutuhan Dunia Kerja. Dengan demikian perlu dirancang salah satu bentuk penyelenggaraan pendidikan yang berorientasi Dunia Kerja.', '1728838521_1686633398217812-0.jpg', '2024-10-13 09:52:45', '2024-10-13 09:55:21');

-- Dumping structure for table laravel.publishers
CREATE TABLE IF NOT EXISTS `publishers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publishers_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.publishers: ~0 rows (approximately)

-- Dumping structure for table laravel.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.roles: ~10 rows (approximately)
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'web', '2024-10-13 09:28:57', '2024-10-13 09:28:57'),
	(2, 'Guru', 'web', '2024-10-13 09:28:57', '2024-10-13 09:28:57'),
	(3, 'Staf', 'web', '2024-10-13 09:28:57', '2024-10-13 09:28:57'),
	(4, 'Murid', 'web', '2024-10-13 09:28:57', '2024-10-13 09:28:57'),
	(5, 'Orang Tua', 'web', '2024-10-13 09:28:57', '2024-10-13 09:28:57'),
	(6, 'Alumni', 'web', '2024-10-13 09:28:57', '2024-10-13 09:28:57'),
	(7, 'Guest', 'web', '2024-10-13 09:28:57', '2024-10-13 09:28:57'),
	(8, 'Perpustakaan', 'web', '2024-10-13 09:28:57', '2024-10-13 09:28:57'),
	(9, 'PPDB', 'web', '2024-10-13 09:28:57', '2024-10-13 09:28:57'),
	(10, 'Bendahara', 'web', '2024-10-13 09:28:57', '2024-10-13 09:28:57');

-- Dumping structure for table laravel.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.role_has_permissions: ~0 rows (approximately)

-- Dumping structure for table laravel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.users: ~0 rows (approximately)
INSERT INTO `users` (`id`, `name`, `username`, `email`, `role`, `status`, `foto_profile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Dev_Web', 'dendi', 'dendi.suhada@gmail.com', 'Admin', 'Aktif', '1728838262_Gambar WhatsApp 2024-06-18 pukul 18.50.57_edf1b9fb.jpg', NULL, '$2y$10$PlTqlOK8C9VxirokwklaCePvR7MQgQThJFca4XeDkTC1j.ZU3JvEi', NULL, '2024-10-13 09:28:57', '2024-10-13 09:51:02'),
	(2, 'TKJ', 'tkj', 'tkj@smkn1buahdua.sch.id', 'Admin', 'Aktif', '1728844961_tkj.png', NULL, '$2y$10$/CUpZKHaeXSsmiAC/3GU8utpz1gcpLHr8BDq0i5U4jDccr7vzNgJO', NULL, '2024-10-13 09:28:57', '2024-10-13 11:42:56');

-- Dumping structure for table laravel.users_details
CREATE TABLE IF NOT EXISTS `users_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mengajar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` bigint DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkidln` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.users_details: ~0 rows (approximately)
INSERT INTO `users_details` (`id`, `user_id`, `role`, `mengajar`, `nip`, `email`, `linkidln`, `instagram`, `twitter`, `facebook`, `youtube`, `website`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 2, 'Guru', 'Kepala Sekolah', 0, 'kepala@smkn1buahdua.sch.id', NULL, '-', '-', '-', '-', '-', '0', '2024-10-13 10:07:35', '2024-10-13 10:26:16');

-- Dumping structure for table laravel.videos
CREATE TABLE IF NOT EXISTS `videos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.videos: ~0 rows (approximately)
INSERT INTO `videos` (`id`, `title`, `desc`, `url`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'SMKN 1 BUAHDUA', 'SMKN 1 BUAHDUA adalah salah satu satuan pendidikan dengan jenjang SMK di Bojongloa, Kec. Buahdua, Kab. Sumedang, Jawa Barat.\r\nVisi\r\nMenghasilkan lulusan yang Jujur, Unggul, Amanah, Ramah, Agamis (JUARA).\r\nMisi\r\nMewujudkan Sumber Daya Manusia yang Profesional, Dedikasi tinggi, berkarakter Unggul, Kreatif, dan Inovatif, mandiri, serta berakhlak mulia, peduli terhadap lingkungan, dan berakar pada budaya bangsa.\r\nMewujudkan kemitraan yang bermakna dengan Dunia Kerja.\r\nMelaksanakan pembelajaran berbasis kompetensi dunia kerja dan berkebhinekaan global.\r\nMewujudkan sarana prasarana standar industri 4.0.\r\nMewujudkan manajemen sekolah yang mandiri dalam melakukan pelayanan prima.', 'https://www.youtube.com/watch?v=_ZCEjY_8hSI&ab_channel=SMKN1BUAHDUA', '0', '2024-10-13 10:35:47', '2024-10-13 10:36:25');

-- Dumping structure for table laravel.visimisis
CREATE TABLE IF NOT EXISTS `visimisis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `visi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.visimisis: ~1 rows (approximately)
INSERT INTO `visimisis` (`id`, `visi`, `misi`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Menghasilkan lulusan yang Jujur, Unggul, Amanah, Ramah, Agamis (JUARA)', 'Mewujudkan Sumber Daya Manusia yang Profesional, Dedikasi tinggi, berkarakter Unggul, Kreatif, dan Inovatif, mandiri, serta berakhlak mulia, peduli terhadap lingkungan, dan berakar pada budaya bangsa; \r\nMewujudkan kemitraan yang bermakna dengan Dunia Kerja; \r\nMelaksanakan pembelajaran berbasis kompetensi dunia kerja dan berkebhinekaan global;Mewujudkan sarana prasarana standar industri 4.0; \r\nMewujudkan manajemen sekolah yang mandiri dalam melakukan pelayanan prima.', '1728838606_SMKN1 Buahdua.png', '2024-10-13 09:56:34', '2024-10-13 09:59:04');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
