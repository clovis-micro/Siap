-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 02, 2024 at 02:13 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipad_nur`
--

-- --------------------------------------------------------

--
-- Table structure for table `arsip`
--

CREATE TABLE `arsip` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_surat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_surat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_dokumen_id` bigint(20) UNSIGNED NOT NULL,
  `pengirim` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penerima` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `berkas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_berkas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ekstensi_berkas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `maksud_surat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acara` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengundang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delegasi_hadir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kantor_id` bigint(20) UNSIGNED NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arsip`
--

INSERT INTO `arsip` (`id`, `judul_surat`, `no_surat`, `jenis_dokumen_id`, `pengirim`, `penerima`, `tanggal`, `berkas`, `nama_berkas`, `ekstensi_berkas`, `keterangan`, `maksud_surat`, `acara`, `tempat`, `pengundang`, `delegasi_hadir`, `uuid`, `created_at`, `updated_at`, `kantor_id`, `disk`) VALUES
(1, 'test', 'dsasda', 1, 'dasmkasd', NULL, '2024-08-02', 'kantor_pusat@sipad.com/surat_masuk/2024-08-02/update.sql/hx25wz1WU72BGN3pt2DH8KgyWG0tQNLGAV7IKt1y.txt', 'update.sql', 'sql', NULL, 'dsadsa', NULL, NULL, NULL, NULL, '14ea20c8-c6a6-47dc-94f0-72f25aa6f9f9', '2024-08-02 13:36:04', '2024-08-02 13:36:04', 1, 'dropbox'),
(2, 'test', 'dsasda', 2, NULL, 'dklas', '2024-08-02', 'kantor_pusat@sipad.com/surat_keluar/2024-08-02/zipupdate.sh/svTcYrmRRqyZBhUZhmNQkh2uIlN7x5A659KamgMM.txt', 'zipupdate.sh', 'sh', NULL, NULL, NULL, NULL, NULL, NULL, '136e8bd5-53e9-4c01-bece-ae58c6000791', '2024-08-02 14:02:58', '2024-08-02 14:02:58', 1, 'dropbox');

-- --------------------------------------------------------

--
-- Table structure for table `contoh`
--

CREATE TABLE `contoh` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `ini_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ini_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ini_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ini_datepicker` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ini_gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ini_excel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ini_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ini_textarea` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ini_select` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ini_select2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ini_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contoh`
--

INSERT INTO `contoh` (`id`, `ini_text`, `ini_number`, `ini_email`, `ini_datepicker`, `ini_gambar`, `ini_excel`, `ini_file`, `ini_textarea`, `ini_select`, `ini_select2`, `ini_password`) VALUES
(1, 'O6Qvg', '9', 'setiawan.jaya@kurniawan.co.id', '1972-09-29', 'public/ini_gambar/0c6JiVkE7UdfeDyPzmDJ.jpg', 'public/ini_excel/DE9Ldi6F5GWnINVtsuMi.xlsx', 'public/ini_file/EtPtVom4RSVm8IF8wEHK.pdf', 'Velit quia ut aut temporibus. Enim nulla hic sapiente repudiandae. Eos quas molestias a quos maxime non quos. Suscipit ducimus incidunt quia animi. A temporibus vel repellendus aut.', 'Option 2', 'Option 1', '$2y$10$hHrQmpAZ7WPF479wCxj23euzTDb1CKuyQnNb9Ml61mLPy3qVTMWoS'),
(2, 'QzTXC', '8', 'gabriella.marbun@hastuti.co', '2000-03-17', 'public/ini_gambar/zdGpvIMBtsHvScUWGmeH.jpg', 'public/ini_excel/Wt6OAN9AUeOrXhTbMz6v.xlsx', 'public/ini_file/VtyDRLsRoQnXMdqOuEJG.pdf', 'Omnis hic odit repellendus minima. Similique omnis molestiae veritatis provident. A omnis sit ea molestiae est ratione nulla quos. Porro fugiat dicta officiis accusantium.', 'Option 2', 'Option 2', '$2y$10$xBIt/.qheWn8zO52RSEtZ.39B1enXnwm2w.Guwn5tE6LsZRDAcloG'),
(3, 'RQ3TM', '0', 'winda17@yuliarti.biz.id', '2012-01-20', 'public/ini_gambar/hJ9sdJAJCpQfmJJe0H2R.jpg', 'public/ini_excel/IfAmV3xzHWvfgZQB9qD5.xlsx', 'public/ini_file/o8Sbh2hAnOrQNA5ZeidL.pdf', 'Sit adipisci ipsam temporibus illum totam. Odio et atque vel possimus quaerat corrupti et. Neque exercitationem corporis eum temporibus. Animi commodi exercitationem in commodi.', 'Option 1', 'Option 2', '$2y$10$c2qgEL2e0pTEK6f8nwZwAe4dnFr4xWG3ZMtTIK9o8gBft7FZidZvm'),
(4, 'TrxdK', '0', 'owahyuni@haryanti.name', '2008-04-17', 'public/ini_gambar/4ZRo2tav4apdi7e7DecT.jpg', 'public/ini_excel/qcrQHyzfVBqO9AMZqLih.xlsx', 'public/ini_file/xMn3yomhgQYAx6rL1SUh.pdf', 'Consequatur dolor quo autem sit maiores. Distinctio rerum explicabo dolorem velit vel. Nam vitae dolorem ipsum omnis sed eveniet et.', 'Option 1', 'Option 2', '$2y$10$8SuU47myAB3HJiZOPJArwOCJ.hn1lutv3Oqu7CZKsAdv3OZUZa1vG'),
(5, '19ahl', '6', 'wibowo.bala@dongoran.asia', '2001-07-15', 'public/ini_gambar/iODWaqbWQdRvEMqqCtkc.jpg', 'public/ini_excel/x08lMDCZcCaYkj3Mhj8P.xlsx', 'public/ini_file/ZUnldNupX1zIckjiVYy1.pdf', 'Autem iusto adipisci quod illo et accusamus. Consequatur mollitia necessitatibus veniam quisquam perferendis quisquam officiis. Explicabo inventore rerum at et et explicabo autem.', 'Option 1', 'Option 2', '$2y$10$yxvVrcqEcQdw9NOg5ksBeuzpzVAfaCyMSFQRZCA15Lygrzbh2b.zu'),
(6, 'jvw6i', '9', 'cager.sihombing@firmansyah.name', '2018-05-15', 'public/ini_gambar/LyFi6ZCxDIIl9z3pkNrc.jpg', 'public/ini_excel/wFr80zbrhmGaHwKrYox9.xlsx', 'public/ini_file/1pPdkKnFa9Sb6I8gGZtA.pdf', 'Aut possimus non suscipit deleniti sit aut omnis. Ducimus minus possimus dolore alias vero nam nihil. Cupiditate cum consectetur sunt maiores repellat maiores ab.', 'Option 1', 'Option 2', '$2y$10$Yff0W1fPgMheiDziZxef0emykSSyDsdz93ptMe8xYvLzPpkes2yly'),
(7, 'lpMN9', '0', 'wastuti.wirda@gmail.co.id', '2012-04-19', 'public/ini_gambar/T38kk4h1DLMyBKziY2BX.jpg', 'public/ini_excel/czfMhOJnG8PRL28yEDBK.xlsx', 'public/ini_file/BCpkFSBqBYdt9mDlveol.pdf', 'Consequatur voluptatibus ratione dolores quia non recusandae vel. Neque incidunt saepe omnis. Deleniti est corrupti rerum amet fugit.', 'Option 1', 'Option 1', '$2y$10$Y5EqIVmuNHQLeBP9b5nBcOoJimJZ8dsOuMH1/DMuiBV5YV/Xzjv2i'),
(8, 'QbkAU', '0', 'banawi.pangestu@sitompul.in', '2015-09-14', 'public/ini_gambar/Ry0FOMccSBXJxPF7Rmud.jpg', 'public/ini_excel/oKCtG4tJuVwEdQNhmKCd.xlsx', 'public/ini_file/uuYuhCQAuyq0qhN04jk2.pdf', 'Officiis voluptatibus ab est itaque. Enim hic ea similique. Alias praesentium voluptas optio animi dolores quas at voluptas. Velit doloremque minima suscipit sed est sapiente quia nulla.', 'Option 1', 'Option 1', '$2y$10$Dm21PPxm4AHbyt7epTwwKORn5W5Hppe3GJk6fF3cCvgGwdI5g/j7.'),
(9, 'uCsO3', '1', 'yani.nasyiah@yahoo.co.id', '1974-11-26', 'public/ini_gambar/RDGE2EoqLNOybghPQNQq.jpg', 'public/ini_excel/bc3EEoEyLNMWUJWeFFfj.xlsx', 'public/ini_file/djZ2BqMTNsKCnF8MOri0.pdf', 'Sed in nemo et quo consequuntur et exercitationem. Et est voluptates omnis est ut quidem. Rem repudiandae sed dolorem dolor consequatur blanditiis. Voluptas porro voluptate eaque et nemo at ab aut.', 'Option 2', 'Option 2', '$2y$10$fb56nzQJpMoaB97CObdzFOyXiIBqMaU6Uyfi6E5VT4NlTQg/83E5W'),
(10, 'vDtxJ', '4', 'ewastuti@yahoo.com', '1991-09-24', 'public/ini_gambar/yeFQ5yQeaSfveBiwNQOO.jpg', 'public/ini_excel/s1ThpzDcem5szI70tY6d.xlsx', 'public/ini_file/h54V2OdBVGXgL4APenJn.pdf', 'Natus suscipit qui illum odit sit illo magni. Fugiat culpa excepturi ut molestiae. Saepe magni ut nihil omnis at commodi numquam. Nisi corrupti optio incidunt at non.', 'Option 1', 'Option 2', '$2y$10$MwwfkhcmUlnWN/wP9XlMFOes/XaVa/iF4mXpP10bOVdRS6uQ/ShNy');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_dokumen`
--

CREATE TABLE `jenis_dokumen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_dokumen`
--

INSERT INTO `jenis_dokumen` (`id`, `nama`, `route`, `created_at`, `updated_at`) VALUES
(1, 'Surat Masuk', 'surat_masuk', NULL, NULL),
(2, 'Surat Keluar', 'surat_keluar', NULL, NULL),
(3, 'Pegawai', 'pegawai', NULL, NULL),
(4, 'Organisasi', 'organisasi', NULL, NULL),
(5, 'Undangan', 'undangan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kantor`
--

CREATE TABLE `kantor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kantor`
--

INSERT INTO `kantor` (`id`, `nama`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'KANTOR PUSAT', 2, NULL, NULL),
(2, 'CABANG UTAMA', 3, NULL, NULL),
(3, 'CABANG AYAH', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ikon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_blank` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama`, `route`, `url`, `ikon`, `is_blank`, `parent_id`, `roles`) VALUES
(1, 'Dashboard', 'dashboard', NULL, 'fas fa-fire', NULL, NULL, '[\"superadmin\",\"admin\"]'),
(2, 'Surat Masuk', NULL, 'arsip/surat_masuk', 'fas fa-envelope-open', NULL, NULL, '[\"superadmin\",\"admin\"]'),
(3, 'Surat Keluar', NULL, 'arsip/surat_keluar', 'fas fa-envelope', NULL, NULL, '[\"superadmin\",\"admin\"]'),
(4, 'Pegawai', NULL, 'arsip/pegawai', 'fas fa-user-friends', NULL, NULL, '[\"superadmin\",\"admin\"]'),
(5, 'Organisasi', NULL, 'arsip/organisasi', 'fas fa-users', NULL, NULL, '[\"superadmin\",\"admin\"]'),
(6, 'Undangan', NULL, 'arsip/undangan', 'fas fa-envelope-open-text', NULL, NULL, '[\"superadmin\",\"admin\"]'),
(7, 'Kantor', 'kantor.index', NULL, 'fas fa-university', NULL, NULL, '[\"superadmin\"]'),
(8, 'Profil', 'profil', NULL, 'fas fa-user', NULL, NULL, '[\"superadmin\",\"admin\"]'),
(9, 'Pengaturan', 'pengaturan', NULL, 'fas fa-cogs', NULL, NULL, '[\"superadmin\"]'),
(10, 'Keluar', 'keluar', NULL, 'fas fa-sign-out-alt', NULL, NULL, '[\"superadmin\",\"admin\"]');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2022_09_26_025222_create_settings_table', 1),
(15, '2014_10_12_000000_create_users_table', 2),
(16, '2014_10_12_100000_create_password_resets_table', 2),
(17, '2019_08_19_000000_create_failed_jobs_table', 2),
(18, '2019_12_18_172154_create_pengaturans_table', 2),
(19, '2019_12_18_172249_create_menus_table', 2),
(20, '2019_12_18_172249_create_moduls_table', 2),
(21, '2019_12_19_172249_create_contoh_table', 2),
(22, '2020_01_18_184209_create_jenis_dokumens_table', 2),
(23, '2020_01_18_185244_create_arsips_table', 2),
(24, '2020_01_19_094739_create_kantors_table', 2),
(25, '2020_01_19_110155_add_kantor_id_di_tabel_arsip', 2),
(26, '2020_01_20_132846_tambah_disk_di_arsip', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ikon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id`, `nama`, `ikon`, `label`) VALUES
(1, 'dashboard', 'fa fa-fire', 'Dashboard'),
(2, 'profil', 'fa fa-user', 'Profil'),
(3, 'contoh', 'fa fa-atom', 'Contoh'),
(4, 'surat_masuk', 'fa fa-envelope-open', 'Surat Masuk'),
(5, 'surat_keluar', 'fa fa-envelope', 'Surat Keluar'),
(6, 'pegawai', 'fa fa-user-friends', 'Pegawai'),
(7, 'organisasi', 'fa fa-users', 'Organisasi'),
(8, 'undangan', 'fa fa-envelope-open-text', 'Undangan'),
(9, 'kantor', 'fa fa-university', 'Kantor'),
(10, 'pengaturan', 'fa fa-cogs', 'Pengaturan'),
(11, 'keluar', 'fa fa-sign-out', 'Keluar');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `grup` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pengaturan_umum',
  `grup_label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pengaturan Umum',
  `ikon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fas fa-cog',
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pengaturan apa hayo',
  `pilihan` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `key`, `value`, `form_type`, `grup`, `grup_label`, `ikon`, `label`, `pilihan`) VALUES
(1, 'tahun', '2020', 'text', 'pengaturan_umum', 'Pengaturan Umum', 'fas fa-calendar', 'Tahun', NULL),
(2, 'nama_perusahaan', 'Nama Perusahaan', 'text', 'pengaturan_umum', 'Pengaturan Umum', 'fas fa-building', 'Nama Perusahaan', NULL),
(3, 'kota', 'Jember', 'text', 'pengaturan_umum', 'Pengaturan Umum', 'fas fa-city', 'Kota', NULL),
(4, 'negara', 'Indonesia', 'text', 'pengaturan_umum', 'Pengaturan Umum', 'fas fa-flag', 'Negara', NULL),
(5, 'logo', 'http://127.0.0.1:8000/stisla/assets/img/stisla-fill.png', 'image', 'pengaturan_umum', 'Pengaturan Umum', 'fas fa-atom', 'Logo', NULL),
(6, 'favicon', 'http://127.0.0.1:8000/stisla/assets/img/favicon.ico', 'image', 'pengaturan_umum', 'Pengaturan Umum', 'fas fa-heart', 'Favicon', NULL),
(7, 'background_masuk', 'http://127.0.0.1:8000/stisla/assets/img/pantai.jpg', 'image', 'pengaturan_umum', 'Pengaturan Umum', 'fas fa-image', 'Background Masuk', NULL),
(8, 'sidebar_mini', 'false', 'select', 'pengaturan_umum', 'Pengaturan Umum', 'fas fa-cog', 'Sidebar Mini', '{\"true\":\"true\",\"false\":\"false\"}'),
(9, 'ukuran_kertas', 'A4', 'select', 'pengaturan_laporan', 'Pengaturan Laporan', 'fas fa-paper', 'Ukuran Kertas', '{\"A4\":\"A4\",\"A3\":\"A3\",\"F4\":\"F4\",\"Legal\":\"Legal\"}'),
(10, 'layouts', 'landscape', 'select', 'pengaturan_laporan', 'Pengaturan Laporan', 'fas fa-paper', 'Layouts', '{\"landscape\":\"landscape\",\"portrait\":\"portrait\"}'),
(11, 'meta_description', 'Nama Perusahaan', 'text', 'pengaturan_meta', 'Pengaturan Meta', 'fas fa-globe', 'Meta Description', NULL),
(12, 'meta_keywords', 'Sistem Informasi, Pemrograman, Github, PHP, Laravel, Stisla, Heroku, Koperasi, Nururrohmah', 'text', 'pengaturan_meta', 'Pengaturan Meta', 'fas fa-globe', 'Meta Keywords', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'superadmin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `avatar`, `role`, `remember_token`) VALUES
(1, 'Hairul Anam', 'superadmin@sipad.com', '$2y$10$ax/WzPSiQzlhHOBZPqQVb.Ub22Ykz8QhT/sMpw3i6IHPIQzQCcceu', 'http://127.0.0.1:8000/stisla/assets/img/avatar/avatar-1.png', 'superadmin', NULL),
(2, 'ADMIN KANTOR PUSAT', 'kantor_pusat@sipad.com', '$2y$10$qs7gprpCaOqJSkA86va1ZOIp7KvFMuQlIpWOsRSuds2GQ8ggZuOkq', 'http://127.0.0.1:8000/stisla/assets/img/avatar/avatar-1.png', 'admin', NULL),
(3, 'ADMIN CABANG UTAMA', 'cabang_utama@sipad.com', '$2y$10$A35t46be59qRSvIvsRKoF.QBBbKoB0yE3EoqX9CFYsqTlAVbf4YEq', 'http://127.0.0.1:8000/stisla/assets/img/avatar/avatar-1.png', 'admin', NULL),
(4, 'ADMIN CABANG AYAH', 'cabang_ayah@sipad.com', '$2y$10$PrsW2y4uGPhiUbGJcyUAIesVQPkXrPK8Q0uvvZcgV/vPISnkJZoFG', 'http://127.0.0.1:8000/stisla/assets/img/avatar/avatar-1.png', 'admin', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `arsip_uuid_unique` (`uuid`),
  ADD KEY `arsip_jenis_dokumen_id_foreign` (`jenis_dokumen_id`),
  ADD KEY `arsip_kantor_id_foreign` (`kantor_id`);

--
-- Indexes for table `contoh`
--
ALTER TABLE `contoh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_dokumen`
--
ALTER TABLE `jenis_dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kantor`
--
ALTER TABLE `kantor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kantor_user_id_foreign` (`user_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arsip`
--
ALTER TABLE `arsip`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contoh`
--
ALTER TABLE `contoh`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_dokumen`
--
ALTER TABLE `jenis_dokumen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kantor`
--
ALTER TABLE `kantor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arsip`
--
ALTER TABLE `arsip`
  ADD CONSTRAINT `arsip_jenis_dokumen_id_foreign` FOREIGN KEY (`jenis_dokumen_id`) REFERENCES `jenis_dokumen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arsip_kantor_id_foreign` FOREIGN KEY (`kantor_id`) REFERENCES `kantor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kantor`
--
ALTER TABLE `kantor`
  ADD CONSTRAINT `kantor_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
