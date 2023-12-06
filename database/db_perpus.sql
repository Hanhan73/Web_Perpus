/*
Navicat MySQL Data Transfer

Source Server         : cobain
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_perpus

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-06-16 11:28:14
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `buku`
-- ----------------------------
DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cover` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ISBN` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_terbit` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of buku
-- ----------------------------
INSERT INTO `buku` VALUES ('1', null, 'Bulan', 'Tere Liye', 'Gramedia Pustaka Utama', 'Novel', '978-602-03-1411-2', '2015', '4', 'Namanya Seli, usianya 15 tahun, kelas sepuluh, dan dia salah satu teman baikku. Dia sama seperti remaja yang lain. Menyukai hal yang sama, mendengarkan lagu-lagu yang sama, pergi ke gerai fast food, menonton serial drama, film, dan hal-hal yang disukai remaja. \r\n\r\nTetapi ada sebuah rahasia kecil Seli dan aku yang tidak pernah diketahui siapa pun. Sesuatu yang kami simpan sendiri sejak kecil. Aku bisa menghilang dan Seli bisa mengeluarkan petir. \r\n\r\nDengan kekuatan itu, kami bertualang menuju tempat-tempat yang menakjubkan.', '2022-06-15 13:53:05', '2022-06-16 00:15:45');
INSERT INTO `buku` VALUES ('6', null, 'Akuntansi Pengantar 1', 'Supardi', 'Gava Media', 'Pendidikan', '978-979-107-882-5<', '2009', '2', 'Buku ini sangat tepat digunakan oleh mahasiswa di bidang Akuntansi ataupun praktisi karena materi antarbabnya sangat komprehensif. Buku ini disertai dengan pemaparan materi terbaru yang disesuaikan dengan Pernyataan Standar Akuntansi Keuangan (PSAK) yang berlaku di Indonesia. Lebih dari itu, buku ini dilengkapi dengan latihan soal dan kasus untuk memperdalam pemahaman masing-masing bab. Untuk menambah kekayaan ilmu pengetahuan terkait dengan praktik akuntansi, dalam buku juga dibahas tentang penyusunan laporan keuangan berbasis komputer, yaitu membahas mengenai pengenalan terhadap salah satu software akuntansi yang bernama MYOB.', '2022-06-15 18:53:56', '2022-06-16 00:50:35');
INSERT INTO `buku` VALUES ('9', null, 'Tata Boga Industri : Materi Kompetensi Untuk SMK, LPK Pariwisata, & LPK Kapal Pesiar yang siap kerja', 'Bartono', 'Andi Offset', 'Ekonomi', '979-255-359-2', '2012', '2', 'Ciri buku kuliner yang baik, selain mampu menjelaskan berbagai metode memasak, dan contoh hasil masakan, juga harus membahas berbagai kekeliruan dalam pelaksanaan suatu metode. Di dalam buku ini dimuat dan dijelaskan banyak hal yang menunjukkan bahwa tak semua metode dapat berjalan baik. tanpa peringatan atas kekeliruan yang mungkin terjadi. Juga diberikan kiat-kiat menghindari kekeliruan itu. Buku Tata Boga Industri ini khusus ditulis untuk mereka yang akan bekerja di bidang kuliner baik di dalam negeri maupun luar negeri segera setelah selesai pendidikan SMK atau LPK-nya. Buku ini bukan saja memberi kejelasan tentang tata boga industri yang materi utamanya tentang masakan continental, namun juga membantu mempermudah pemahaman dan penguasaan dalam penggunaan istilah asing bidang kuliner yang dipakai di hotel-hotel besar, di kapal pesiar, dan di luar negeri.', '2022-06-15 19:03:46', '2022-06-15 20:04:25');
INSERT INTO `buku` VALUES ('10', null, 'Busines And Personal Development', 'Josua Taringan, Swenjiadi Yenawan', 'Andi Offset', 'Ekonomi', '978-979-294-016-9', '2013', '2', 'Buku ini adalah buku saya yang ketujuh. Banyak orang menginginkan kesuksesan, namun tidak banyak yang mau belajar dengan sungguh-sungguh bagaimana mencapai kesuksesan hidup. Terkadang kita ingin cepat kaya seperti layaknya membuat mi instan karena kita beranggapan bahwa ketika kaya, kita sudah menjadi orang yang sukses. Hal inilah yang membuat buku-buku yang menawarkan cara cepat kaya cukup laris pada awalnya, namun kemudian mengecewakan pembaca. Mengapa? Karena cukup banyak yang berisi isapan jempol saja—sebenarnya proses untuk kaya atau sukses tidak bisa diformulasikan dalam sebuah buku. Ada juga beberapa buku dan pembicara yang mengajarkan konsep fake it until you make it. Artinya, jika Anda ingin sukses, berpura-puralah sukses terlebih dahulu hingga Anda sukses. Tunjukkan kepada orang lain bahwa Anda adalah seorang salesman, motivator, ataupun konsultan yang sukses sehingga Anda dapat menjual diri lebih tinggi dibandingkan yang lain.', '2022-06-15 19:06:45', '2022-06-16 00:20:14');
INSERT INTO `buku` VALUES ('11', null, 'Filosofi Teras', 'Henry Manampiring', 'Kompas Penerbit Buku', 'Motivasi', '978-602-412-518-9', '2019', '3', 'Lebih dari 2.000 tahun yang lalu, sebuah mazhab filsafat menemukan akar masalah dan juga solusi dari banyak emosi negatif. Stoisisme, atau filosofi teras, adalah filsafat Yunani-Romawi kuno yang bisa membantu kita mengatasi emosi negatif dan menghasilkan mental yang tangguh dalam menghadapi naik-turunnya kehidupan. Jauh dari kesan filsafat sebagai topik berat dan mengawang-awang, filosofi teras justru bersifat praktis dan relevan dengan kehidupan generasi milenial dan gen-z masa kini.', '2022-06-15 19:10:26', '2022-06-15 19:10:26');
INSERT INTO `buku` VALUES ('12', null, 'PC Troubleshooting Plus', 'Teguh Wahyono', 'Gava Media', 'Teknologi', '979-346-945-5', '2008', '2', 'Komputer saya sering hang dan restart ulang sendiri. Proses booting komputer saya sangat lambat, butuh waktu 3 sampai 5 menit . Saya membeli Motherboard baru, tetapi setelah dipasang macet.. Komputer saya crash setelah menambah RAM 32 MB Sistem operasi komputer saya adalah Windows 98 tetapi gagal deteksi hardware .. Komputer saya tiba-tiba macet dan muncul pesan Msgr32 has Caused an error Dan lain-lain. Komentar-komentar seperti di samping, merupakan kutipan permasalahan yang sering dikeluhkan oleh para pengguna komputer. Dan untuk penyelesaiannya, mereka terkadang mengambil jalan pintas dengan segera membawa komputer ke teknisi tanpa merasa perlu untuk mengetahui apa yang sebenarnya terjadi pada komputer tersebut. Sebagian dari para pemakai komputer menganggap bahwa pekerjaan penelusuran kesalahan pada PC, terlalu rumit untuk dilakukan. Padahal sebenarnya tidaklah demikian jika kita mengetahui teknik-teknik penelusuran kesalahan tersebut dengan benar. Buku ini dirancang untuk memberikan teknik-teknik yang tepat dalam melakukan penelusuran kesalahan dengan berbagai studi kasus yang terjadi secara nyata dalam penggunaan komputer di berbagai bidang. Dilengkapi dengan berbagai tips dan trik untuk meningkatkan unjuk kerja komputer dan perlengkapannya seperti tips mengingkatkan kinerja printer, tips memilih komponen komputer yang tepat, bagaimana melakukan scan secara efektif, tips mengatur suhu komputer, mengoptimalkan sistem windows dan lain sebagainya.', '2022-06-15 19:29:07', '2022-06-15 19:29:07');
INSERT INTO `buku` VALUES ('13', null, 'Pemrograman Delphi Untuk Aplikasi Mesin Visi Menggunakan Webcam', 'Balza Achmad', 'Gava Media', 'Teknologi', '978-602-854-538-9', '2011', '2', 'Buku ini ditujukan sebagai pegangan dalam praktek kuliah Pengolahan Citra dan Mesin Visi di laboratorium komputer bagi mahasiswa berbagai program studi, misalnya Teknk Elektro, Teknik Informatika, Teknik Industri, Fisika Teknik, Ilmu Komputer, Fisika, Elektronika dan Instrumentasi, sehingga mahasiswa memperoleh gambaran yang jelas dalam mengimplementasikan teknik pemrograman untuk aplikasi Mesin Visi. Hal ini tentunya menjadi nilai tambah bagi mahasiswa daripada sekedar mempelajari teori yang terdapat dalam buku teks yang ada. Materi yang terdapat dalam buku ini meliputi teknik pengolahan citra digital menggunakan Delphi; pengaksesan webcam menggunakan komponen TVideoCap; penampilan, pengolahan, dan penyimpanan frame yang ditangkap dari webcam; serta aplikasi-aplikasi Mesin Visi, antara lain: deteksi gerakan, deteksi obyek, perekaman obyek bergerak, serta pembacaan barcode. Buku ini dilengkapi dengan CD yang memuat 23 contoh program dalam bahasa Pascal menggunakan kompiler Borland Delphi, sehingga pembaca dapat lebih mudah dalam mencoba teknik aplikasi Mesin Visi yang dibahas.', '2022-06-15 19:37:55', '2022-06-15 19:37:55');
INSERT INTO `buku` VALUES ('14', null, 'Pengembangan Aplikasi Java Berbasis Web Dengan Jbuilder', 'Firar Utdirartatmo', 'Gava Media', 'Kategori', '979-346-928-5', '2004', '3', 'JBuilder dari Inprise memberikan fasilitas Integrated Development Environment (IDE) untuk pembuatan aplikasi Java. Termasuk didalamnya web server Tomcat dan InternetBean Express. Borland JBuilder bias berjalan pada platform Solaris, Linux, dan Windows. Development tool ini memberikan kemudahan untuk membuat aplikasi secara visual (drag & drop), editor yang nyaman, serta dukungan untuk memudahkan deployment program. Sehingga pengguna lebih mudah membuat, menguji dan menerapkan suatu aplikasi web. Buku ini difokuskan sebagai tutorial untuk penggunaan Java pada lingkungan web dengan memanfaatkan fitur-fitur yang terdapat pada JBuilder. Sejumlah wizard yang tersedia akan sangat membantu pekerjaan anda. CD yang disertakan dengan buku ini diharapkan bias mempercepat proses belajar anda, sehingga dalam waktu singkat bias membuat sendiri aplikasi web dengan teknologi yangdiinginkan', '2022-06-15 19:39:20', '2022-06-15 19:39:20');
INSERT INTO `buku` VALUES ('15', null, 'Hukum Pidana Khusus', 'Ruslan Renggong', 'Prenadamedia Grup', 'Hukum', '978-602-089-545-1', '2016', '2', 'Buku Hukum Pidana Khusus (Unsur dan Sanksi Pidananya) ini merupakan buku yang menganalisis secara sistematis dan holistik tentang tindak pidana yang tersebar di luar KUHP (Kitab Undang-Undang Hukum Pidana). Tindak pidana yang tersebar di luar KUHP, seperti korupsi, narkotika, dan lainnya.', '2022-06-15 19:46:04', '2022-06-15 19:46:04');
INSERT INTO `buku` VALUES ('16', null, 'Sistem Politik Indonesia', 'Beddy Irawan Maksudi', 'Rajawali Pers', 'Politik', '978-979-769-816-4', '2015', '1', 'Buku ini menjelaskan sistem politik di Indonesia yang tidak semata-mata hanya bersifat teoretis namun juga secara empirik. Artinya dalam pembahasannya diberikan pula ulasan yang disesuaikan dengan konteks di mana sistem politik itu pernah diberlakukan di Indonesia, yakni masa Orde Lama, Orde Baru, dan Reformasi.', '2022-06-15 19:51:43', '2022-06-15 19:51:43');
INSERT INTO `buku` VALUES ('17', null, 'Komputasi Numerik', 'Suarga', 'Andi', 'Komputer', '978-979-294-443-3', '2014', '2', 'Komputasi Numerik merupakan metode numerik yang memanfaatkan program komputer untuk melakukan iterasi perhitungan numerik yang terkadang rumit. Buku ini diberi judul Komputasi Numerik: Program MATLABâ„¢ untuk Metode Numerik karena menyajikan berbagai metode numerik seperti pencarian akar persamaan, penyelesaian sistem persamaan linier dan sistem persamaan nonlinier, metoda diferensial dan integral, pencarian nilai pribadi (eigen value), serta metode penyelesaian persamaan diferensial biasa (ODE), persoalan nilai batas, dan persamaan diferensial parsial (PDE). Selanjutnya metode-metode penyelesaian numerik tersebut dilengkapi Algoritma yang menjelaskan langkah penyelesaian setiap metode, dan setiap algoritma diimplementasikan dalam bentuk program Matlab yang diuji coba dengan berbagai contoh soal. Selain itu, buku ini memuat topik yang jarang ditemukan pada buku-buku numerik yang umum, seperti metode Monte-Carlo untuk melakukan simulasi numerik probabilitas, dan Komputasi Simbolik yang merupakan metode alternatif untuk menyelesaikan berbagai persoalan komputasi. Buku ini disajikan bagi pembaca yang sedang mempelajari metode dan analisis numerik serta sedang bergelut dalam pembuatan program untuk komputasi numerik. Oleh karena itu, buku ini sangat berguna bagi mahasiswa Matematika, Fisika, Teknik Elektro, ilmu Komputer, dan Teknik Informatika.', '2022-06-15 19:56:32', '2022-06-15 19:56:32');
INSERT INTO `buku` VALUES ('18', null, 'Laut Bercerita', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', 'Fiksi-Ilmiah', '9786024246945', '2017', '2', 'Laut Bercerita, novel terbaru Leila S. Chudori, bertutur tentang kisah keluarga yang kehilangan, sekumpulan sahabat yang merasakan kekosongan di dada, sekelompok orang yang gemar menyiksa dan lancar berkhianat, sejumlah keluarga yang mencari kejelasan makam anaknya, dan tentang cinta yang tak akan luntur.', '2022-06-15 20:00:20', '2022-06-15 20:00:20');
INSERT INTO `buku` VALUES ('19', null, 'Ikhlas Paling Serius', 'Fajar Sulaiman', 'Media Kita', 'Fiksi-Ilmiah', '9789797946265', '2014', '2', 'Jika ketabahan tak cukup untuk membuatnya paham,\r\nmungkin kehilangan akan membuatnya lebih\r\nmengerti, bahwa;\r\nyang tak pernah menyerah\r\njuga punya rasa lelah, dan\r\nyang berjuang sendirian pun\r\npada akhirnya menemukan\r\nalasan untuk tidak lagi\r\nbertahan.', '2022-06-15 20:01:24', '2022-06-15 20:01:24');
INSERT INTO `buku` VALUES ('20', null, 'Keajaiban Toko Kelontong Namiya', 'Keigo Higashino', 'Gramedia Pustaka Utama', 'Fiksi-Ilmiah', '9786020648293', '2020', '3', 'Ketika tiga pemuda berandal bersembunyi di toko kelontong tak berpenghuni setelah melakukan pencurian, sepucuk surat misterius mendadak diselipkan ke dalam toko melalui lubang surat. Surat yang berisi permintaan saran. Sungguh aneh. Namun, surat aneh itu ternyata membawa mereka dalam petualangan melintasi waktu, menggantikan peran kakek pemilik toko kelontong yang menghabiskan tahun-tahun terakhirnya memberikan nasihat tulus kepada orang-orang yang meminta bantuan. Hanya untuk satu malam. Dan saat fajar menjelang, hidup ketiga sahabat itu tidak akan pernah sama lagi...', '2022-06-15 20:03:04', '2022-06-15 20:03:04');
INSERT INTO `buku` VALUES ('21', null, 'Neo Patriotisme; Etika kekuasaan dalam kebdayaan jawa', 'Nasruddin Anshoriy', 'LKiS', 'Budaya', '978-979-128-367-0', '2008', '4', 'Jika Anda berpikir menetap di suatu tempat selama beberapa tahun, mulailah bertanam padi. Jika Anda berpikir menetap untuk waktu lebih lama lagi, mulailah bertanam pohon.Tetapi, jika Anda mau menetap untuk selamanya, mulailah mendidik manusianya.', '2022-06-16 00:18:42', '2022-06-16 00:18:42');
INSERT INTO `buku` VALUES ('22', null, 'Lembaga keuangan Islam', 'Nurul Huda', 'PRENADA MEDIA GRUP', 'Ekonomi', '978-602-873-012-9', '2015', '3', 'Dalam buku ini dibahas secra lengkap tentang berbagai lembaga keuangan syariah, khususnya yang terdapat di Indonesia berikut sejarah, landasan hukum, dan perbedaannya dengan lembaga sejenis dalam sistem keuangan konvensional. Di antara lembaga yang menjadi pusat pembahasan dalam buku ini adalah: Bank, Asuransi, Pasar Modal, Pegadaian, Lembaga Zakat dan Wakaf, Dana Pensiun, BMT, Leasing, dan Modal Ventura Islam.', '2022-06-16 00:52:33', '2022-06-16 00:52:33');

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `log_peminjaman`
-- ----------------------------
DROP TABLE IF EXISTS `log_peminjaman`;
CREATE TABLE `log_peminjaman` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_peminjam` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_buku` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `buku_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of log_peminjaman
-- ----------------------------
INSERT INTO `log_peminjaman` VALUES ('11', 'Farhan Muzhaffar', 'Bulan', '2022-06-15', '2022-06-15', '1', '1', '2022-06-15 14:34:53', '2022-06-15 14:35:01');
INSERT INTO `log_peminjaman` VALUES ('12', 'Farhan Muzhaffar', 'Bulan', '2022-06-15', '2022-06-15', '1', '1', '2022-06-15 14:39:02', '2022-06-15 20:03:40');
INSERT INTO `log_peminjaman` VALUES ('13', 'Farhan Muzhaffar', 'Akuntansi Pengantar 1', '2022-06-15', '2022-06-15', '1', '6', '2022-06-15 19:14:22', '2022-06-15 19:14:26');
INSERT INTO `log_peminjaman` VALUES ('17', 'Farhan Muzhaffar', 'Neo Patriotisme; Etika kekuasaan dalam kebdayaan jawa', '2022-06-15', '2022-06-15', '1', '8', '2022-06-15 20:06:11', '2022-06-15 20:11:54');
INSERT INTO `log_peminjaman` VALUES ('19', 'Fatin Fauziyyah TP', 'Akuntansi Pengantar 1', '2022-06-15', '2022-06-15', '3', '6', '2022-06-15 20:29:49', '2022-06-15 20:47:30');
INSERT INTO `log_peminjaman` VALUES ('20', 'Fatin Fauziyyah TP', 'Bulan', '2022-06-15', '2022-06-15', '3', '1', '2022-06-15 20:31:51', '2022-06-15 20:47:33');
INSERT INTO `log_peminjaman` VALUES ('21', 'Fatin Fauziyyah TP', 'Neo Patriotisme; Etika kekuasaan dalam kebdayaan jawa', '2022-06-15', '2022-06-15', '3', '8', '2022-06-15 20:39:13', '2022-06-15 20:47:35');
INSERT INTO `log_peminjaman` VALUES ('22', 'Fatin Fauziyyah TP', 'Neo Patriotisme; Etika kekuasaan dalam kebdayaan jawa', '2022-06-15', '2022-06-15', '3', '8', '2022-06-15 20:39:43', '2022-06-15 20:47:35');
INSERT INTO `log_peminjaman` VALUES ('23', 'John Doe', 'Neo Patriotisme; Etika kekuasaan dalam kebdayaan jawa', '2022-06-16', '2022-06-16', '4', '8', '2022-06-16 00:08:01', '2022-06-16 00:08:16');
INSERT INTO `log_peminjaman` VALUES ('24', 'John Doe', 'Bulan', '2022-06-16', '2022-06-16', '4', '1', '2022-06-16 00:14:50', '2022-06-16 00:15:45');
INSERT INTO `log_peminjaman` VALUES ('25', 'Farhan Muzhaffar', 'Busines And Personal Development', '2022-06-16', null, '1', '10', '2022-06-16 00:20:14', '2022-06-16 00:20:14');
INSERT INTO `log_peminjaman` VALUES ('26', 'Testing', 'Akuntansi Pengantar 1', '2022-06-16', '2022-06-16', '5', '6', '2022-06-16 00:50:17', '2022-06-16 00:50:35');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('5', '2022_06_14_075302_create_bukus_table', '1');
INSERT INTO `migrations` VALUES ('6', '2022_06_14_175055_create_log_peminjamen_table', '1');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `personal_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Farhan Muzhaffar', 'user@farhan.com', null, '0', '$2y$10$I5JorrmqIFsV0YIeMlW9qe/puP6teaIJH7Kv8sBspnY95eUKqZVF6', null, '2022-06-15 13:52:40', '2022-06-15 13:52:40');
INSERT INTO `users` VALUES ('2', 'Farhan Muzhaffar', 'admin@farhan.com', null, '1', '$2y$10$yXF2JE9HbF0cUC6fwDijBe.7gDioTpg/LwfDCJXoYyPC9QAwpw3J6', null, '2022-06-15 14:35:52', '2022-06-15 14:35:52');
INSERT INTO `users` VALUES ('3', 'Fatin Fauziyyah TP', 'user@fatin.com', null, '0', '$2y$10$1dUaul2c94MVd9KAt2Ac8.8/58mPSyeidsmIkq8RPU86PjFw4ZSVa', null, '2022-06-15 20:04:13', '2022-06-15 20:04:13');
INSERT INTO `users` VALUES ('4', 'John Doe', 'john@user.com', null, null, '$2y$10$ryafCvSydLNEEZpr96bsJuV3TDOdffrqxlPBOgbhCJdjAjLbQkJw.', null, '2022-06-16 00:07:16', '2022-06-16 00:07:16');
INSERT INTO `users` VALUES ('5', 'Testing', 'test@gmail.com', null, null, '$2y$10$uLPhztPvKg1T4vPG8gNbEuRidfVhwP4GB7IPZxGy5QYu9jAbiDQUW', null, '2022-06-16 00:49:16', '2022-06-16 00:49:16');
