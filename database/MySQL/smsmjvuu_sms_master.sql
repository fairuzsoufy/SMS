-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2018 at 03:08 PM
-- Server version: 10.1.36-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smsmjvuu_sms_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/applicants/default.png',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `student_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `name`, `avatar`, `email`, `phone`, `faculty_id`, `committee_id`, `student_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mostafa Hamad', 'users/applicants/_avatar1538952203.jpg', '1500342@miuegypt.edu.eg', '012', 1, 1, '1500342', '2018-10-08 02:41:13', '2018-10-08 20:34:21', '2018-10-08 20:34:21'),
(2, 'Khaled Mohsen', 'users/applicants/_avatar1538990167.jpg', 'Khaled1812345@miuegypt.edu.eg', '1211499667', 3, 5, '1812345', '2018-10-08 13:16:07', '2018-10-08 20:32:12', '2018-10-08 20:32:12'),
(3, 'Test Test', 'users/applicants/default.png', 'david1555@miuegypt.edu.eg', '123345678§', 1, 1, '1500330', '2018-10-08 13:43:13', '2018-10-08 20:33:22', '2018-10-08 20:33:22'),
(4, 'Mariam Tamer', 'users/applicants/default.png', 'Mariam1807292@miuegypt.edu.eg', '1285820487', 4, 2, '1807292', '2018-10-08 13:57:14', '2018-10-08 13:57:14', NULL),
(5, 'Fatma ElFakharany', 'users/applicants/default.png', 'Fatma1705405@miuegypt.edu.eg', '1093434603', 3, 2, '1705405', '2018-10-08 13:58:57', '2018-10-08 13:58:57', NULL),
(6, 'Salma Abdullwahab', 'users/applicants/default.png', 'salma1808514@miuegypt.edu.eg', '1091190175', 4, 2, '1808514', '2018-10-08 14:00:06', '2018-10-08 14:00:06', NULL),
(7, 'Youssef Ehab', 'users/applicants/default.png', 'Youssef1702736@miuegypt.edu.eg', '1222566665', 4, 2, '1702736', '2018-10-08 14:00:11', '2018-10-08 14:00:11', NULL),
(8, 'Joseph Ihab', 'users/applicants/default.png', 'Joseph1800395@miuegypt.edu.eg', '1551084964', 4, 5, '1800395', '2018-10-08 14:01:46', '2018-10-08 14:01:46', NULL),
(9, 'Shady Gamal', 'users/applicants/default.png', 'Shady1600099@miuegypt.edu.eg', '1145983079', 4, 4, '1600099', '2018-10-08 14:04:39', '2018-10-08 14:04:39', NULL),
(10, 'Mohamed Amr', 'users/applicants/_avatar1539004537.jpg', 'Mohamed1803702@miuegypt.edu.eg', '1118851466', 4, 5, '1803702', '2018-10-08 14:05:44', '2018-10-08 17:15:37', NULL),
(11, 'Mohamed Alaa', 'users/applicants/default.png', 'mohamed1601524@miuegypt.edu.eg', '1030233432', 4, 4, '1601524', '2018-10-08 14:06:43', '2018-10-08 14:06:43', NULL),
(12, 'Omar Ahmed', 'users/applicants/default.png', 'Omar1609365@miuegypt.edu.eg', '1100709326', 4, 2, '1609365', '2018-10-08 14:07:02', '2018-10-08 14:07:02', NULL),
(13, 'Nourhan Nasser', 'users/applicants/default.png', 'nourhan1602897@miuegypt.edu.eg', '1120664432', 3, 2, '1602897', '2018-10-08 14:10:31', '2018-10-08 14:10:31', NULL),
(14, 'May Amr', 'users/applicants/default.png', 'May1701106@miuegypt.edu.eg', '1095463610', 4, 2, '1701106', '2018-10-08 14:11:22', '2018-10-11 12:07:17', NULL),
(15, 'Salma Eldin', 'users/applicants/default.png', 'salma1802740@miuegypt.edu.eg', '1147666917', 4, 2, '1802740', '2018-10-08 14:12:23', '2018-10-08 14:12:23', NULL),
(16, 'Ahmed Baher', 'users/applicants/default.png', 'Ahmed1601823@miuegypt.edu.eg', '1004608491', 4, 4, '1601823', '2018-10-08 14:14:10', '2018-10-08 14:14:10', NULL),
(17, 'Islam Khaled', 'users/applicants/default.png', 'islam1700187@miuegypt.edu.eg', '1121165510', 6, 2, '1700187', '2018-10-08 14:15:18', '2018-10-08 14:15:18', NULL),
(18, 'Adham Rabee', 'users/applicants/default.png', 'Adham1801218@miuegypt.edu.eg', '1116635822', 8, 2, '1801218', '2018-10-08 14:16:10', '2018-10-08 14:16:10', NULL),
(19, 'Abdelrahman Gad', 'users/applicants/default.png', 'abdelrahman1503277@miuegypt.edu.eg', '1008408860', 4, 2, '1503277', '2018-10-08 14:17:17', '2018-10-08 14:17:17', NULL),
(20, 'Mohamed Mostafa', 'users/applicants/default.png', 'Mohamed1804560@miuegypt.edu.eg', '1068827574', 4, 3, '1804560', '2018-10-08 14:18:01', '2018-10-08 14:18:01', NULL),
(21, 'Farida Adel', 'users/applicants/default.png', 'Farida1801492@miuegypt.edu.eg', '1211151420', 4, 2, '1801492', '2018-10-08 14:19:36', '2018-10-08 14:19:36', NULL),
(22, 'Monira Radwan', 'users/applicants/default.png', 'monira1800415@miuegypt.edu.eg', '1005230044', 3, 2, '1800415', '2018-10-08 14:20:04', '2018-10-08 14:20:04', NULL),
(23, 'Ali Essam', 'users/applicants/default.png', 'Ali1800104@miuegypt.edu.eg', '1226899199', 4, 2, '1800104', '2018-10-08 14:20:26', '2018-10-08 14:20:26', NULL),
(24, 'Nariman Elhadidy', 'users/applicants/default.png', 'nariman1800038@miuegypt.edu.eg', '1148460408', 3, 5, '180038', '2018-10-08 14:21:36', '2018-10-08 14:21:36', NULL),
(25, 'Mohamed Sameh', 'users/applicants/default.png', 'Mohamed1805646@miuegypt.edu.eg', '1030970150', 7, 5, '1805646', '2018-10-08 14:24:10', '2018-10-08 14:24:10', NULL),
(26, 'Hana Hatem', 'users/applicants/default.png', 'Hana1800562@miuegypt.edu.eg', '1023255880', 4, 5, '1800562', '2018-10-08 14:25:14', '2018-10-08 14:25:14', NULL),
(27, 'Jackline Abdo', 'users/applicants/default.png', 'jackline1601555@miuegypt.edu.eg', '1212777274', 4, 4, '1601555', '2018-10-08 14:25:17', '2018-10-08 14:25:17', NULL),
(28, 'Donia Khaled', 'users/applicants/default.png', 'Donia1700238@miuegypt.edu.eg', '1141663622', 3, 2, '1700238', '2018-10-08 14:26:58', '2018-10-08 14:26:58', NULL),
(29, 'Maria Maher', 'users/applicants/default.png', 'maria1700107@miuegypt.edu.eg', '1000501413', 4, 2, '1700107', '2018-10-08 14:28:03', '2018-10-08 14:28:03', NULL),
(30, 'Hanya Khaled', 'users/applicants/default.png', 'Hanya1501000@miuegypt.edu.eg', '1152200050', 4, 3, '1501000', '2018-10-08 14:28:20', '2018-10-08 14:28:20', NULL),
(31, 'Hana Magdi', 'users/applicants/default.png', 'Hana1503617@miuegypt.edu.eg', '1282440298', 4, 3, '1503617', '2018-10-08 14:29:08', '2018-10-08 14:29:08', NULL),
(32, 'Nadine Tahoun', 'users/applicants/default.png', 'Nadine1500597@miuegypt.edu.eg', '1115611529', 4, 3, '1500597', '2018-10-08 14:30:28', '2018-10-08 14:30:28', NULL),
(33, 'Andrew George', 'users/applicants/default.png', 'george1800929@miuegypt.edu.eg', '1020331863', 7, 3, '1800929', '2018-10-08 14:33:38', '2018-10-08 18:05:21', NULL),
(34, 'Amr Abdelkader', 'users/applicants/default.png', 'amr1816419@miuegypt.edu.eg', '1006252926', 5, 2, '1816419', '2018-10-08 14:36:55', '2018-10-08 14:36:55', NULL),
(35, 'Chris Joseph', 'users/applicants/default.png', 'Chris1601649@miuegypt.edu.eg', '1222261911', 3, 2, '1601649', '2018-10-08 14:37:04', '2018-10-08 14:37:04', NULL),
(36, 'Omar Ahmed', 'users/applicants/default.png', 'Omar1704920@miuegypt.edu.eg', '1116647765', 4, 2, '1704920', '2018-10-08 14:38:19', '2018-10-08 14:38:19', NULL),
(37, 'Ahmed Soliman', 'users/applicants/default.png', 'ahmed1807522@miuegypt.edu.eg', '1009006292', 4, 5, '1807522', '2018-10-08 14:39:45', '2018-10-10 13:56:46', NULL),
(38, 'Mustafa Tarek', 'users/applicants/default.png', 'Mustafa1804110@miuegypt.edu.eg', '1129982203', 4, 3, '1804110', '2018-10-08 14:40:25', '2018-10-08 14:40:25', NULL),
(39, 'Omar Youssef', 'users/applicants/default.png', 'omar1812648@miuegypt.edu.eg', '1013556591', 5, 2, '1812648', '2018-10-08 14:41:49', '2018-10-08 14:41:49', NULL),
(40, 'Ahmed Essam', 'users/applicants/default.png', 'Ahmed1604918@miuegypt.edu.eg', '1001105527', 4, 2, '1604918', '2018-10-08 14:41:59', '2018-10-08 14:41:59', NULL),
(41, 'Mohamed Zoeir', 'users/applicants/default.png', 'mohamed1803599@miuegypt.edu.eg', '1065830031', 5, 2, '1803599', '2018-10-08 14:43:32', '2018-10-08 14:43:32', NULL),
(42, 'Yara Khaled', 'users/applicants/default.png', 'Yara1700115@miuegypt.edu.eg', '1111577746', 4, 2, '1700115', '2018-10-08 14:44:08', '2018-10-08 14:44:08', NULL),
(43, 'Hadeer Mahmoud', 'users/applicants/default.png', 'hadeer1805605@miuegypt.edu.eg', '1090866332', 5, 2, '1805605', '2018-10-08 14:44:51', '2018-10-08 14:44:51', NULL),
(44, 'Seif Elsawy', 'users/applicants/default.png', '1700248@miuegypt.edu.eg', '1222483902', 4, 2, '1700248', '2018-10-08 14:44:59', '2018-10-09 16:35:55', NULL),
(45, 'Caren Ashraf', 'users/applicants/default.png', 'Caren1700309@miuegypt.edu.eg', '1210918887', 4, 2, '1700309', '2018-10-08 14:46:01', '2018-10-08 14:46:01', NULL),
(46, 'Mariam Eltoukhy', 'users/applicants/default.png', 'mariam1702839@miuegypt.edu.eg', '1092095234', 4, 2, '1702839', '2018-10-08 14:47:17', '2018-10-08 14:47:17', NULL),
(47, 'Sarah Hussein', 'users/applicants/default.png', 'Sarah1703715@miuegypt.edu.eg', '1153347550', 4, 2, '1703715', '2018-10-08 14:47:18', '2018-10-08 14:47:18', NULL),
(48, 'Nada Soliman', 'users/applicants/default.png', 'nada1700851@miuegypt.edu.eg', '1111070706', 4, 1, '1700851', '2018-10-08 14:48:43', '2018-10-08 14:48:43', NULL),
(49, 'Hagar Hatem', 'users/applicants/default.png', 'Hagar1801568@miuegypt.edu.eg', '1271553343', 3, 2, '1801568', '2018-10-08 14:48:57', '2018-10-08 14:48:57', NULL),
(50, 'Dana Mostafa', 'users/applicants/default.png', 'Dana1800206@miuegypt.edu.eg', '1022334113', 4, 2, '1800206', '2018-10-08 14:49:55', '2018-10-08 14:49:55', NULL),
(51, 'Darin Ahmed', 'users/applicants/default.png', 'darin1800879@miuegypt.edu.eg', '1112077744', 4, 2, '1800879', '2018-10-08 14:50:26', '2018-10-08 14:50:26', NULL),
(52, 'Radwa Ahmed', 'users/applicants/default.png', 'Radwa1801215@miuegypt.edu.eg', '1210857964', 3, 2, '1801215', '2018-10-08 14:51:10', '2018-10-08 14:51:10', NULL),
(53, 'Ahmed Mohamed', 'users/applicants/default.png', 'Ahmed1412750@miuegypt.edu.eg', '1099833398', 5, 2, '1412750', '2018-10-08 14:52:11', '2018-10-08 14:52:11', NULL),
(54, 'Sherly Raaof', 'users/applicants/default.png', 'sherly1810548@miuegypt.edu.eg', '1021216126', 4, 2, '1810548', '2018-10-08 14:52:54', '2018-10-08 14:52:54', NULL),
(55, 'Andrew Amir', 'users/applicants/default.png', 'Andrew1607028@miuegypt.edu.eg', '1228401615', 4, 2, '1607028', '2018-10-08 14:54:10', '2018-10-08 14:54:10', NULL),
(56, 'Jessica Amgad', 'users/applicants/default.png', 'jessica1800962@miuegypt.edu.eg', '1117271627', 4, 2, '1800962', '2018-10-08 14:55:31', '2018-10-08 14:55:31', NULL),
(57, 'Mariam Hesham', 'users/applicants/default.png', 'Mariam1713743@miuegypt.edu.eg', '1067610556', 2, 2, '1713743', '2018-10-08 14:57:46', '2018-10-08 14:57:46', NULL),
(58, 'Habiba Ismail', 'users/applicants/default.png', 'habiba1801128@miuegypt.edu.eg', '1094486697', 3, 2, '1801128', '2018-10-08 14:57:57', '2018-10-08 14:57:57', NULL),
(59, 'Omar Tarek', 'users/applicants/default.png', 'omar1406307@miuegypt.edu.eg', '1091350805', 4, 2, '1406307', '2018-10-08 14:59:50', '2018-10-08 14:59:50', NULL),
(60, 'Kamel Mohamed', 'users/applicants/default.png', 'kamel1600897@miuegypt.edu.eg', '1060093533', 4, 4, '1600897', '2018-10-08 15:01:24', '2018-10-08 15:01:24', NULL),
(61, 'Rania Riad', 'users/applicants/default.png', 'rania1809362@miuegypt.edu.eg', '1026570218', 4, 3, '18009362', '2018-10-08 15:02:48', '2018-10-08 15:02:48', NULL),
(62, 'Gina Emad', 'users/applicants/default.png', 'gina1702376@miuegypt.edu.eg', '1203880887', 4, 3, '1702376', '2018-10-08 15:04:28', '2018-10-08 15:04:28', NULL),
(63, 'Alaa Mohamed', 'users/applicants/default.png', 'alaa135443@miuegypt.edu.eg', '1020852022', 5, 3, '135443', '2018-10-08 15:05:15', '2018-10-08 15:05:15', NULL),
(64, 'Sara Essam', 'users/applicants/default.png', 'sara1704796@miuegypt.edu.eg', '1010527972', 4, 3, '1704796', '2018-10-08 15:05:24', '2018-10-08 15:05:24', NULL),
(65, 'Maryam Ashraf', 'users/applicants/default.png', 'maryam1800674@miuegypt.edu.eg', '1115699855', 4, 2, '1800674', '2018-10-08 15:09:03', '2018-10-08 15:09:03', NULL),
(66, 'Sarah Abdallah', 'users/applicants/default.png', 'Sarah1800881@miuegypt.edu.eg', '1006459822', 3, 5, '1800881', '2018-10-08 15:17:00', '2018-10-08 15:17:00', NULL),
(67, 'Omar Emad', 'users/applicants/default.png', 'omar1700421@miuegypt.edu.eg', '1222105983', 4, 2, '1700421', '2018-10-08 15:19:56', '2018-10-08 15:19:56', NULL),
(68, 'Hamsa Wagih', 'users/applicants/default.png', 'hamsa1604177@miuegypt.edu.eg', '1125997739', 4, 2, '1604177', '2018-10-08 15:23:37', '2018-10-08 15:23:37', NULL),
(69, 'Mariam Hassan', 'users/applicants/default.png', 'mariam1601989@miuegypt.edu.eg', '1002275809', 4, 2, '1601989', '2018-10-08 15:24:21', '2018-10-08 15:24:21', NULL),
(70, 'Hania Hossam', 'users/applicants/default.png', 'hania1801586@miuegypt.edu.eg', '1225807202', 4, 2, '18011586', '2018-10-08 15:29:20', '2018-10-08 15:29:20', NULL),
(71, 'Ammar Mohammed', 'users/applicants/default.png', 'ammar1800800@miuegypt.edu.eg', '1113785889', 4, 2, '1800800', '2018-10-08 15:31:54', '2018-10-08 15:31:54', NULL),
(72, 'Marwan Mostafa', 'users/applicants/default.png', 'marwan1803408@miuegypt.edu.eg', '1141469591', 4, 5, '1803408', '2018-10-08 15:35:50', '2018-10-08 15:35:50', NULL),
(73, 'Malik Essam', 'users/applicants/default.png', 'Malik1800266@miuegypt.edu.eg', '1095562515', 4, 5, '1800266', '2018-10-08 15:37:45', '2018-10-08 15:37:45', NULL),
(74, 'Hussin Wael', 'users/applicants/default.png', 'Hussin1802343@miuegypt.edu.eg', '1128882306', 4, 2, '1802343', '2018-10-08 15:39:07', '2018-10-08 15:39:07', NULL),
(75, 'Mahmoud Abd El Fatah', 'users/applicants/default.png', 'Mahmoud1601237@miuegypt.edu.eg', '1011086637', 4, 3, '1601237', '2018-10-08 15:40:38', '2018-10-08 15:40:38', NULL),
(76, 'Amro Khalid', 'users/applicants/default.png', 'amro1701270@miuegypt.edu.eg', '1021243524', 4, 4, '1701270', '2018-10-08 15:43:43', '2018-10-08 15:43:43', NULL),
(77, 'Tia Mohamed', 'users/applicants/default.png', 'Tia1700912@miuegypt.edu.eg', '1206604491', 4, 2, '1700912', '2018-10-08 15:45:55', '2018-10-08 15:45:55', NULL),
(78, 'Alaa Mostafa', 'users/applicants/default.png', 'alaa1712960@miuegypt.edu.eg', '0100909137', 4, 2, '1712960', '2018-10-08 15:47:42', '2018-10-08 15:47:42', NULL),
(79, 'Yehia Howaidy', 'users/applicants/default.png', 'yehia@miuegypt.edu.eg', '1006667797', 4, 2, '1711928', '2018-10-08 15:52:28', '2018-10-08 15:52:28', NULL),
(80, 'Alaa Youssef', 'users/applicants/default.png', 'alaa1800764@miuegypt.edu.eg', '1113699372', 4, 2, '1800764', '2018-10-08 15:54:31', '2018-10-08 15:54:31', NULL),
(81, 'Mohamed Mahmoud', 'users/applicants/default.png', 'mohamed1808310@miuegypt.edu.eg', '1149109563', 4, 2, '1808310', '2018-10-08 15:56:23', '2018-10-08 15:56:23', NULL),
(82, 'Menatallah Gamil', 'users/applicants/default.png', 'menatallah181240@miuegypt.edu.eg', '1123950082', 4, 2, '1801240', '2018-10-08 15:57:56', '2018-10-08 15:57:56', NULL),
(83, 'Omar Safan', 'users/applicants/default.png', 'omar1801510@miuegypt.edu.eg', '1129157786', 4, 2, '1801510', '2018-10-08 15:59:57', '2018-10-08 15:59:57', NULL),
(84, 'Ahmed Abougoud', 'users/applicants/default.png', 'ahmed1805179@miuegypt.edu.eg', '1015553507', 4, 2, '1805179', '2018-10-08 16:01:54', '2018-10-08 16:01:54', NULL),
(85, 'Noha Ahmed', 'users/applicants/default.png', 'noha1703175@miuegypt.edu.eg', '1113985789', 2, 3, '1703175', '2018-10-08 16:04:20', '2018-10-08 16:04:20', NULL),
(86, 'Reem Nagy', 'users/applicants/default.png', 'reem1704812@miuegypt.edu.eg', '1026040160', 2, 3, '1704812', '2018-10-08 16:05:54', '2018-10-08 16:05:54', NULL),
(87, 'Gihan Shafik', 'users/applicants/default.png', 'gihan1705323@miuegypt.edu.eg', '1098091941', 2, 3, '1705323', '2018-10-08 16:07:18', '2018-10-08 16:07:18', NULL),
(88, 'Amal Mohamed', 'users/applicants/default.png', 'amal1804993@miuegypt.edu.eg', '1125727646', 4, 2, '1804993', '2018-10-08 16:11:04', '2018-10-08 16:11:04', NULL),
(89, 'Karim Bahaa', 'users/applicants/default.png', 'karim1506124@miuegypt.edu.eg', '1157006756', 7, 4, '1506124', '2018-10-08 16:14:22', '2018-10-08 16:14:22', NULL),
(90, 'Mirna Mostafa', 'users/applicants/default.png', 'mirna1808850@miuegypt.edu.eg', '1157770178', 2, 2, '1808850', '2018-10-08 16:24:41', '2018-10-08 16:24:41', NULL),
(91, 'Rana Elsayed', 'users/applicants/default.png', 'rana1600962@miuegypt.edu.eg', '1148713300', 4, 2, '2016 00962', '2018-10-08 16:30:07', '2018-10-08 16:30:07', NULL),
(92, 'Adham Abdel latif', 'users/applicants/default.png', 'adham1800022@miuegypt.edu.eg', '1069886745', 4, 3, '2018 00022', '2018-10-08 16:35:24', '2018-10-08 16:35:24', NULL),
(93, 'Andrew Youssef', 'users/applicants/default.png', 'andrew1600258@miuegypt.edu.eg', '1122958111', 4, 2, '2016 00258', '2018-10-08 16:37:14', '2018-10-08 16:37:14', NULL),
(94, 'Mohy Mahmoud', 'users/applicants/default.png', 'mohi1501707@miuegypt.edu.eg', '1156350514', 4, 2, '2015 01707', '2018-10-08 16:39:08', '2018-10-08 16:39:08', NULL),
(95, 'Kareem Hussein', 'users/applicants/default.png', 'karim1506120@miuegypt.edu.eg', '1007003981', 4, 2, '2015 06120', '2018-10-08 16:40:33', '2018-10-08 16:40:33', NULL),
(96, 'Mina Fawzy', 'users/applicants/default.png', 'mina1601812@miuegypt.edu.eg', '1272693484', 4, 2, '2016 03673', '2018-10-08 16:43:53', '2018-10-08 16:47:26', NULL),
(97, 'Julie Zakria', 'users/applicants/default.png', 'julie1709467@miuegypt.edu.eg', '1211003636', 4, 2, '2017 09467', '2018-10-08 16:49:02', '2018-10-08 16:49:02', NULL),
(98, 'Logaine Hamed', 'users/applicants/default.png', 'logaine1702933@miuegypt.edu.eg', '1007442477', 4, 2, '2017 02933', '2018-10-08 16:50:28', '2018-10-08 16:50:28', NULL),
(99, 'Ali Badr', 'users/applicants/default.png', 'ali1503643@miuegypt.edu.eg', '1001006581', 4, 2, '2015 03643', '2018-10-08 16:52:20', '2018-10-08 16:52:20', NULL),
(100, 'Sarah Eldegwy', 'users/applicants/default.png', 'sarah1500122@miuegypt.edu.eg', '1009340989', 4, 2, '2015 00122', '2018-10-08 16:53:51', '2018-10-08 16:53:51', NULL),
(101, 'Nada Kandil', 'users/applicants/default.png', 'nada1704089@miuegypt.edu.eg', '1116467895', 3, 2, '2017 04089', '2018-10-08 16:57:44', '2018-10-08 16:57:44', NULL),
(102, 'Salma Zayed', 'users/applicants/default.png', 'salma1601639@miuegypt.edu.eg', '1117323288', 4, 3, '2016 01639', '2018-10-08 17:00:34', '2018-10-08 17:00:34', NULL),
(103, 'Fady Samy', 'users/applicants/default.png', 'fady1701193@miuegypt.edu.eg', '1116657968', 4, 2, '1701193', '2018-10-08 17:17:07', '2018-10-08 17:17:07', NULL),
(104, 'Noureen Magdy', 'users/applicants/default.png', 'nourean1809522@miuegypt.edu.eg', '1111529062', 2, 3, '1809522', '2018-10-08 17:38:24', '2018-10-08 17:38:24', NULL),
(105, 'Raghda Mahmoud', 'users/applicants/default.png', 'raghda1814750@miuegypt.edu.eg', '1113074291', 2, 2, '1814750', '2018-10-08 17:39:42', '2018-10-08 17:39:42', NULL),
(106, 'Ghassan Shorrab', 'users/applicants/default.png', 'ghassan@miuegypt.edu.eg', '1207336631', 4, 2, '1602708', '2018-10-08 17:57:09', '2018-10-08 17:57:09', NULL),
(107, 'Marwan Tarek', 'users/applicants/default.png', 'marwan1611865@miuegypt.edu.eg', '1122081144', 4, 2, '1611865', '2018-10-08 18:01:57', '2018-10-08 18:01:57', NULL),
(108, 'Alia Wael', 'users/applicants/default.png', 'alia1800338@miuegypt.edu.eg', '1011980511', 4, 3, '1800338', '2018-10-09 12:04:15', '2018-10-09 15:25:41', NULL),
(109, 'Ahmed Sayed', 'users/applicants/default.png', 'ahmed1813498@miuegypt.edu.eg', '1028755680', 5, 3, '18131498', '2018-10-09 12:29:00', '2018-10-09 12:29:00', NULL),
(110, 'Habiba Hany', 'users/applicants/default.png', 'Habiba1804189@miuegypt.edu.eg', '1223992249', 4, 2, '1804189', '2018-10-09 12:29:16', '2018-10-09 12:29:16', NULL),
(111, 'Seif Nagy', 'users/applicants/default.png', 'seif1610872@miuegypt.edu.eg', '1004882919', 5, 3, '1610872', '2018-10-09 12:30:48', '2018-10-09 12:30:48', NULL),
(112, 'Janna Nader', 'users/applicants/default.png', 'jana1804183@miuegypt.edu.eg', '1144773388', 3, 2, '1804183', '2018-10-09 12:32:47', '2018-10-09 12:32:47', NULL),
(113, 'Hanine Walid', 'users/applicants/default.png', 'hanine1804070@miuegypt.edu.eg', '1001164070', 8, 2, '1804070', '2018-10-09 12:44:08', '2018-10-09 12:44:08', NULL),
(114, 'Passant Ahmed', 'users/applicants/default.png', 'bassant1707098@miuegypt.edu.eg', '1064255422', 4, 3, '1707098', '2018-10-09 12:46:12', '2018-10-09 12:48:23', NULL),
(115, 'Passant Hesham', 'users/applicants/default.png', 'passant1700884@miuegypt.edu.eg', '1008529737', 7, 3, '1700884', '2018-10-09 12:49:29', '2018-10-09 12:49:29', NULL),
(116, 'Mohamed Nael', 'users/applicants/default.png', 'mohamed1707013@miuegypt.edu.eg', '1156668601', 4, 3, '1707013', '2018-10-09 12:50:43', '2018-10-09 12:50:43', NULL),
(117, 'Fadl Youssef', 'users/applicants/default.png', 'fadk1711236@miuegypt.edu.eg', '1156403536', 4, 2, '1711236', '2018-10-09 12:52:20', '2018-10-09 12:52:20', NULL),
(118, 'Mirna Mourad', 'users/applicants/default.png', 'mirna1601003@miuegypt.edu.eg', '1289520200', 3, 2, '1601003', '2018-10-09 12:54:14', '2018-10-09 12:54:14', NULL),
(119, 'Rana Abdelfattah', 'users/applicants/default.png', 'rana1604074@miuegypt.edu.eg', '1001445413', 4, 4, '1604074', '2018-10-09 13:00:57', '2018-10-09 13:00:57', NULL),
(120, 'Nada Hatem', 'users/applicants/default.png', 'nada1611343@miuegypt.edu.eg', '1030098763', 3, 2, '1611343', '2018-10-09 13:02:36', '2018-10-09 13:02:36', NULL),
(121, 'Habiba Yasser', 'users/applicants/default.png', 'habiba1800360@miuegypt.edu.eg', '1211300663', 3, 2, '1800360', '2018-10-09 13:04:08', '2018-10-09 13:04:08', NULL),
(122, 'Salma Adel', 'users/applicants/default.png', 'salma1814723@miuegypt.edu.eg', '1099634700', 2, 2, '1814723', '2018-10-09 13:05:15', '2018-10-09 13:05:15', NULL),
(123, 'Rania Abdoulhassan', 'users/applicants/default.png', 'rania1604427@miuegypt.edu.eg', '1276780505', 4, 2, '1604427', '2018-10-09 13:06:43', '2018-10-09 13:06:43', NULL),
(124, 'Rawab Atef', 'users/applicants/default.png', 'rawan1607955@miuegypt.edu.eg', '1287595753', 4, 2, '1607955', '2018-10-09 13:07:52', '2018-10-09 13:07:52', NULL),
(125, 'Tarek Essam', 'users/applicants/default.png', 'tarek1601203@miuegypt.edu.eg', '1147274447', 3, 2, '1601203', '2018-10-09 13:10:39', '2018-10-09 13:10:39', NULL),
(126, 'Mariam Ayman', 'users/applicants/default.png', 'mariam1704959@miuegypt.edu.eg', '1221105330', 4, 3, '1704959', '2018-10-09 13:11:50', '2018-10-09 13:11:50', NULL),
(127, 'Habiba Hatem', 'users/applicants/default.png', 'habiba1711490@miuegypt.edu.eg', '1156528885', 4, 2, '1711490', '2018-10-09 13:14:22', '2018-10-09 13:14:22', NULL),
(128, 'Omar Abdelsamee', 'users/applicants/default.png', 'omar1504223@miuegypt.edu.eg', '1008020442', 4, 4, '1504223', '2018-10-09 13:17:22', '2018-10-09 13:17:22', NULL),
(129, 'Mariam Hesham', 'users/applicants/default.png', 'mariam1703888@miuegypt.edu.eg', '1223895982', 4, 3, '1703888', '2018-10-09 13:18:52', '2018-10-09 13:18:52', NULL),
(130, 'Ahmed Hesham', 'users/applicants/default.png', 'ahmed1611742@miuegypt.edu.eg', '1283532216', 4, 3, '1611742', '2018-10-09 13:20:09', '2018-10-09 13:20:09', NULL),
(131, 'Aya MoatazBellah', 'users/applicants/default.png', 'aya1800210@miuegypt.edu.eg', '1091800699', 4, 2, '1800210', '2018-10-09 13:21:52', '2018-10-09 13:21:52', NULL),
(132, 'Roaa Loai', 'users/applicants/default.png', 'roaa1800233@miuegypt.edu.eg', '1277545533', 4, 2, '1800233', '2018-10-09 13:23:18', '2018-10-09 13:23:18', NULL),
(133, 'Maram Hatem', 'users/applicants/default.png', 'maram05710@miuegypt.edu.eg', '1157733920', 3, 5, '201705710', '2018-10-09 13:26:00', '2018-10-09 13:26:00', NULL),
(134, 'Roushan Khaled', 'users/applicants/default.png', 'roushan1813173@miuegypt.edu.eg', '1003171010', 3, 2, '201813173', '2018-10-09 13:30:40', '2018-10-09 13:30:40', NULL),
(135, 'Rogeh Nashed', 'users/applicants/default.png', 'rogeh1501912@miuegypt.edu.eg', '1228828240', 4, 3, '1501912', '2018-10-09 13:33:19', '2018-10-09 13:33:19', NULL),
(136, 'Mohamed Fathy', 'users/applicants/default.png', 'mohamed1503965@miuegypt.edu.eg', '1024021700', 4, 4, '201503965', '2018-10-09 13:41:23', '2018-10-09 13:41:23', NULL),
(137, 'Omar Tawfik', 'users/applicants/default.png', 'Omar00008@miuegypt.edu.eg', '1111230609', 4, 3, '1500008', '2018-10-09 13:48:01', '2018-10-09 13:48:01', NULL),
(138, 'Abderlrahman Khalifa', 'users/applicants/default.png', 'Abdelrahman1700402@miuegypt.edu.eg', '1099134451', 7, 2, '1700402', '2018-10-09 13:49:56', '2018-10-09 13:49:56', NULL),
(139, 'Ziad Ahmed', 'users/applicants/default.png', 'ziad1609113@miuegypt.edu.eg', '1282496982', 6, 4, '1609113', '2018-10-09 13:52:39', '2018-10-09 13:52:39', NULL),
(140, 'Suzan Mahmoud', 'users/applicants/default.png', 'suzan1401629@miuegypt.edu.eg', '1062041766', 3, 2, '1401629', '2018-10-09 13:54:40', '2018-10-09 13:54:40', NULL),
(141, 'Nadine Mohamed', 'users/applicants/default.png', 'Nadine1801875@miuegypt.edu.eg', '1140059933', 4, 3, '1801875', '2018-10-09 13:55:43', '2018-10-09 13:55:43', NULL),
(142, 'Nour Mohamed', 'users/applicants/default.png', 'Nour1802959@miuegypt.edu.eg', '1067888750', 4, 3, '1802959', '2018-10-09 13:57:26', '2018-10-09 13:57:26', NULL),
(143, 'Hayam Gad', 'users/applicants/default.png', 'hayam1800547@miuegypt.edu.eg', '1069664222', 3, 3, '1800547', '2018-10-09 13:57:50', '2018-10-09 13:57:50', NULL),
(144, 'Pakinam Nabil', 'users/applicants/default.png', 'pakinam1800528@miuegypt.edu.eg', '1206659995', 3, 4, '1800528', '2018-10-09 14:04:27', '2018-10-09 14:04:27', NULL),
(145, 'Merna Saleh', 'users/applicants/default.png', 'merna1500360@miuegypt.edu.eg', '1143221797', 6, 4, '1500360', '2018-10-09 14:12:38', '2018-10-10 00:18:53', NULL),
(146, 'Mohamed Fayed', 'users/applicants/default.png', 'mohamed1810585@miuegypt.edu.eg', '1000243345', 5, 3, '1810585', '2018-10-09 14:26:08', '2018-10-09 14:26:08', NULL),
(147, 'Nadine Mohamed', 'users/applicants/default.png', 'nadine1601410@miuegypt.edu.eg', '1205353337', 7, 2, '1601410', '2018-10-09 14:28:00', '2018-10-09 14:28:00', NULL),
(148, 'Youssef Wael', 'users/applicants/default.png', 'Youssef1504227@miuegypt.edu.eg', '115132933', 4, 2, '1504227', '2018-10-09 14:38:55', '2018-10-09 14:38:55', NULL),
(149, 'Nada Hossam', 'users/applicants/default.png', 'Nada1800097@miuegypt.edu.eg', '1145870059', 7, 2, '1800097', '2018-10-09 14:42:44', '2018-10-09 14:42:44', NULL),
(150, 'Nour Mourad', 'users/applicants/default.png', 'Nour1800375@miuegypt.edu.eg', '1008777400', 3, 5, '1800375', '2018-10-09 14:48:07', '2018-10-09 14:48:07', NULL),
(151, 'Salma Taha', 'users/applicants/default.png', 'salma1800271@miuegypt.edu.eg', '1119922278', 3, 3, '1800271', '2018-10-09 14:51:31', '2018-10-09 14:51:31', NULL),
(152, 'Lana Elgharib', 'users/applicants/default.png', 'lana1800185@miuegypt.edu.eg', '1001454854', 3, 3, '1800185', '2018-10-09 14:53:05', '2018-10-09 14:53:05', NULL),
(153, 'Salma Bittar', 'users/applicants/default.png', 'salma1800179@miuegypt.edu.eg', '1277222944', 3, 3, '1800179', '2018-10-09 14:54:50', '2018-10-09 14:54:50', NULL),
(154, 'Bodour El', 'users/applicants/default.png', 'bodour1804158@miuegypt.edu.eg', '1128855161', 6, 2, '1804158', '2018-10-09 14:57:27', '2018-10-09 15:54:09', NULL),
(155, 'Fady Francis', 'users/applicants/default.png', 'fady1709504@miuegypt.edu.eg', '1229926694', 4, 2, '1709504', '2018-10-09 14:59:37', '2018-10-09 14:59:37', NULL),
(156, 'Menna Ihab', 'users/applicants/default.png', 'menna1700689@miuegypt.edu.eg', '1003962243', 3, 3, '1700689', '2018-10-09 15:02:23', '2018-10-09 15:02:23', NULL),
(157, 'Youssef Amer', 'users/applicants/default.png', 'youssef1806249@miuegypt.edu.eg', '1095586645', 4, 3, '1806249', '2018-10-09 15:09:04', '2018-10-09 15:09:04', NULL),
(158, 'Omar Haytham', 'users/applicants/default.png', 'omar1810385@miuegypt.edu.eg', '1148077808', 4, 2, '1810385', '2018-10-09 15:12:12', '2018-10-09 15:12:12', NULL),
(159, 'Amina Mohamed', 'users/applicants/default.png', 'amina1802628@miuegypt.edu.eg', '1224069389', 3, 2, '1802628', '2018-10-09 15:16:49', '2018-10-09 15:16:49', NULL),
(160, 'Chantalle Hany', 'users/applicants/default.png', 'chantalle1700068@miuegypt.edu.eg', '1228830822', 4, 4, '1700068', '2018-10-09 15:17:06', '2018-10-10 00:30:06', NULL),
(161, 'Fateema Ahmed', 'users/applicants/default.png', 'fateema1805230@miuegypt.edu.eg', '1066673151', 3, 2, '1805230', '2018-10-09 15:17:29', '2018-10-09 15:17:29', NULL),
(162, 'Marwan Ihab', 'users/applicants/default.png', 'marwan1708014@miuegypt.edu.eg', '1068498049', 4, 2, '1708014', '2018-10-09 15:18:35', '2018-10-09 15:18:35', NULL),
(163, 'Farah Mohamed', 'users/applicants/default.png', 'farah1801802@miuegypt.edu.eg', '1000210537', 3, 2, '1801802', '2018-10-09 15:19:16', '2018-10-09 15:19:16', NULL),
(164, 'Rawan Hany', 'users/applicants/default.png', 'rawan1801186@miuegypt.edu.eg', '1116583690', 3, 2, '1801186', '2018-10-09 15:20:54', '2018-10-09 15:20:54', NULL),
(165, 'Ahmed Hany', 'users/applicants/default.png', 'ahmed1703000@miuegypt.edu.eg', '1060319995', 4, 2, '1703000', '2018-10-09 15:20:58', '2018-10-09 15:20:58', NULL),
(166, 'Omar Ayman', 'users/applicants/default.png', 'amar1709436@miuegypt.edu.eg', '1068650621', 4, 2, '1709436', '2018-10-09 15:22:11', '2018-10-09 15:22:11', NULL),
(167, 'Nada Basil', 'users/applicants/default.png', 'nada1802053@miuegypt.edu.eg', '124200600', 3, 2, '1802053', '2018-10-09 15:22:20', '2018-10-09 15:22:20', NULL),
(168, 'Halla Samy', 'users/applicants/default.png', 'halla1702850@miuegypt.edu.eg', '1119906622', 4, 2, '1702850', '2018-10-09 15:23:15', '2018-10-09 15:23:15', NULL),
(169, 'Nayera Salah', 'users/applicants/default.png', 'nayera1800634@miuegypt.edu.eg', '1009093280', 4, 3, '1800634', '2018-10-09 15:24:52', '2018-10-09 15:24:52', NULL),
(170, 'Akram Ahmed', 'users/applicants/default.png', 'akram1505936@miuegypt.edu.eg', '1110630017', 5, 3, '1505936', '2018-10-09 15:26:47', '2018-10-09 15:29:37', NULL),
(171, 'Amr Nazeh', 'users/applicants/default.png', 'amr1406892@miuegypt.edu.eg', '1119974098', 7, 5, '1406892', '2018-10-09 15:28:05', '2018-10-09 15:28:05', NULL),
(172, 'Malak Rashed', 'users/applicants/default.png', 'malak1800173@miuegypt.edu.eg', '1113700117', 4, 3, '1800173', '2018-10-09 15:28:30', '2018-10-09 15:28:30', NULL),
(173, 'Ziad Ahmed', 'users/applicants/default.png', 'ziad1810088@miuegypt.edu.eg', '1275411118', 4, 2, '1810088', '2018-10-09 15:31:17', '2018-10-09 15:31:17', NULL),
(174, 'Menna Amr', 'users/applicants/default.png', 'menna1803223@miuegypt.edu.eg', '1228666395', 3, 2, '1803223', '2018-10-09 15:32:46', '2018-10-09 15:32:46', NULL),
(175, 'Farah Mohamed', 'users/applicants/default.png', 'farah1700915@miuegypt.edu.eg', '1060499490', 3, 3, '1700915', '2018-10-09 15:33:56', '2018-10-09 15:33:56', NULL),
(176, 'Ali Mohamed', 'users/applicants/default.png', 'Ali1704269@miuegypt.edu.eg', '1066010107', 4, 3, '1704269', '2018-10-09 15:34:25', '2018-10-09 15:34:25', NULL),
(177, 'Sheery Wael', 'users/applicants/default.png', 'sherry1700043@miuegypt.edu.eg', '1288369685', 3, 3, '1700043', '2018-10-09 15:35:06', '2018-10-09 15:35:06', NULL),
(178, 'Nancy Emad', 'users/applicants/default.png', 'nancy1700810@miuegypt.edu.eg', '1227605342', 3, 2, '1700810', '2018-10-09 15:36:13', '2018-10-09 15:36:13', NULL),
(179, 'Fares Amr', 'users/applicants/default.png', 'Fares1713815@miuegypt.edu.eg', '1227945771', 4, 3, '1713815', '2018-10-09 15:37:18', '2018-10-09 15:37:18', NULL),
(180, 'Amany Mohamed', 'users/applicants/default.png', 'amany1705470@miuegypt.edu.eg', '111888662', 3, 2, '1705470', '2018-10-09 15:37:47', '2018-10-09 15:37:47', NULL),
(181, 'Abdelaziz Mahmoud', 'users/applicants/default.png', 'Abdelaziz1701059@miuegypt.edu.eg', '1119928384', 4, 3, '1701059', '2018-10-09 15:39:56', '2018-10-09 15:39:56', NULL),
(182, 'Ali Hassan', 'users/applicants/default.png', 'Ali1606429@miuegypt.edu.eg', '1281272829', 5, 2, '1606429', '2018-10-09 15:43:09', '2018-10-09 15:43:09', NULL),
(183, 'Yosssef Saied', 'users/applicants/default.png', 'youssef1502562@miuegypt.edu.eg', '111218044', 4, 4, '1502562', '2018-10-09 16:00:26', '2018-10-09 16:00:26', NULL),
(184, 'Lina Suzanna', 'users/applicants/default.png', 'linasuzanna1506278@miegypt.edu.eg@miuegypt.edu.eg', '1000485252', 4, 4, '1506278', '2018-10-09 16:04:34', '2018-10-09 16:04:34', NULL),
(185, 'Mariam George', 'users/applicants/default.png', 'mariam1500444@miuegypt.edu.eg', '1115469588', 4, 2, '1500444', '2018-10-09 16:06:07', '2018-10-09 16:06:07', NULL),
(186, 'Ahmed Elsayed', 'users/applicants/default.png', 'Ahmed1809825@miuegypt.edu.eg', '1212310273', 6, 3, '1809825', '2018-10-09 16:13:49', '2018-10-09 16:13:49', NULL),
(187, 'Karim Ashraf', 'users/applicants/default.png', 'karim1603101@miuegypt.edu.eg', '1224477077', 4, 2, '1603101', '2018-10-09 16:14:13', '2018-10-09 16:14:13', NULL),
(188, 'Sara Habib', 'users/applicants/default.png', 'sara1800031@miuegypt.edu.eg', '1273050812', 6, 2, '1800031', '2018-10-09 16:17:25', '2018-10-09 16:17:25', NULL),
(189, 'Jasmine Ahmed', 'users/applicants/default.png', 'Jasmine1510861@miuegypt.edu.eg', '1100353969', 4, 4, '1510861', '2018-10-09 16:17:44', '2018-10-09 16:17:44', NULL),
(190, 'Nouran Khaled', 'users/applicants/default.png', 'Nouran1704202@miuegypt.edu.eg', '1115058884', 6, 3, '1704202', '2018-10-09 16:22:02', '2018-10-09 16:22:02', NULL),
(191, 'Farah Ahmed', 'users/applicants/default.png', 'farah1800146@miuegypt.edu.eg', '1020318676', 6, 3, '1800146', '2018-10-09 16:22:49', '2018-10-09 16:22:49', NULL),
(192, 'Mostafa Tawfik', 'users/applicants/default.png', 'mostafa1702178@miuegypt.edu.eg', '1015846881', 4, 2, '1702178', '2018-10-09 16:38:05', '2018-10-09 16:38:05', NULL),
(193, 'Mahmoud Awed', 'users/applicants/default.png', 'mahmoud1702181@miuegypt.edu.eg', '1001744277', 4, 2, '1702181', '2018-10-09 16:39:41', '2018-10-09 16:39:41', NULL),
(194, 'Mohamed Hesham', 'users/applicants/default.png', 'mohamed1702978@miuegypt.edu.eg', '1149108815', 4, 2, '1702978', '2018-10-09 16:42:38', '2018-10-09 16:42:38', NULL),
(195, 'Habeba Hussen', 'users/applicants/default.png', 'habeba1812710@miuegypt.edu.eg', '1288823098', 4, 3, '1812710', '2018-10-09 16:45:01', '2018-10-09 16:45:01', NULL),
(196, 'John Mounir', 'users/applicants/default.png', 'John1500463@miuegypt.edu.eg', '1273390723', 1, 1, '1500463', '2018-10-09 16:46:10', '2018-10-09 16:46:10', NULL),
(197, 'Nadeen Essam', 'users/applicants/default.png', 'nadeen1600449@miuegypt.edu.eg', '1005755592', 4, 3, '1600449', '2018-10-09 16:48:22', '2018-10-09 16:48:22', NULL),
(198, 'Hala Zidan', 'users/applicants/default.png', 'hala1802277@miuegypt.edu.eg', '1115895316', 4, 2, '1802277', '2018-10-09 16:55:42', '2018-10-09 16:55:42', NULL),
(199, 'Toqa Hazem', 'users/applicants/default.png', 'toqa1800135@miuegypt.edu.eg', '1024624241', 4, 2, '1800135', '2018-10-09 16:57:38', '2018-10-09 16:57:38', NULL),
(200, 'Omar Khaled', 'users/applicants/default.png', 'omar1704276@miuegypt.edu.eg', '1117003040', 4, 2, '1704276', '2018-10-09 17:00:24', '2018-10-09 17:00:24', NULL),
(201, 'Omar Hanafy', 'users/applicants/default.png', 'omar1704230@miuegypt.edu.eg', '1206080609', 4, 3, '1704230', '2018-10-09 17:03:36', '2018-10-09 17:03:36', NULL),
(202, 'Mohamed Metwalli', 'users/applicants/default.png', 'mohamed1605254@miuegypt.edu.eg', '1142349491', 4, 3, '1605254', '2018-10-09 17:05:25', '2018-10-09 17:05:25', NULL),
(203, 'Janna Hisham', 'users/applicants/default.png', 'janna1712353@miuegypt.edu.eg', '1129482015', 4, 2, '1712353', '2018-10-09 17:07:09', '2018-10-09 17:07:09', NULL),
(204, 'Haya Ayman', 'users/applicants/default.png', 'haya1701413@miuegypt.edu.eg', '1113138105', 4, 2, '1701413', '2018-10-09 17:08:02', '2018-10-09 17:08:02', NULL),
(205, 'Farah Tamer', 'users/applicants/default.png', 'farah1700268@miuegypt.edu.eg', '1272209998', 4, 2, '1700268', '2018-10-09 17:09:15', '2018-10-09 17:09:15', NULL),
(206, 'Safeya Aladin', 'users/applicants/default.png', 'safeya1810393@miuegypt.edu.eg', '1102151779', 2, 2, '1810393', '2018-10-09 17:10:08', '2018-10-09 17:10:08', NULL),
(207, 'Ahmed Magdy', 'users/applicants/default.png', 'ahmed1503436@miuegypt.edu.eg', '1101190193', 6, 2, '1503436', '2018-10-09 17:11:09', '2018-10-09 17:11:09', NULL),
(208, 'Nadine Raef', 'users/applicants/default.png', 'nadine1800468@miuegypt.edu.eg', '1272261277', 2, 3, '1800468', '2018-10-09 17:12:52', '2018-10-09 17:15:55', NULL),
(209, 'Mariam Sameh', 'users/applicants/default.png', 'mariam180024@miuegypt.edu.eg', '1273004427', 4, 3, '20180024', '2018-10-09 17:16:18', '2018-10-09 17:16:18', NULL),
(210, 'Zeyad Hafez', 'users/applicants/default.png', 'zeyad1508116@miuegypt.edu.eg', '1021607710', 4, 5, '1508116', '2018-10-09 17:18:20', '2018-10-09 17:18:20', NULL),
(211, 'Mariam Wael', 'users/applicants/default.png', 'mariam2800828@miuegypt.edu.eg', '1032782579', 6, 2, '201800828', '2018-10-09 17:25:32', '2018-10-09 17:25:32', NULL),
(212, 'Wessam Ahmed', 'users/applicants/default.png', 'Wessam1512779@miuegypt.edu.eg', '1150763800', 2, 1, '1512779', '2018-10-09 23:11:34', '2018-10-10 02:04:54', NULL),
(213, 'Maria Ashraf', 'users/applicants/default.png', 'Maria1600633@miuegypt.edu.eg', '1205788357', 4, 2, '1600633', '2018-10-10 11:19:36', '2018-10-10 11:19:36', NULL),
(214, 'Nura mostafa helmy Helmy', 'users/applicants/default.png', 'nura mostafa helmy1703338@miuegypt.edu.eg', '1143048100', 1, 3, '1703338', '2018-10-10 11:34:57', '2018-10-10 11:34:57', NULL),
(215, 'Mahmoud Haitham', 'users/applicants/default.png', 'mahmoud haitham1811822@miuegypt.edu.eg', '1069873860', 4, 2, '1811822', '2018-10-10 11:36:44', '2018-10-10 14:01:28', NULL),
(216, 'Karim Aboutaleb', 'users/applicants/default.png', 'Karim1806615@miuegypt.edu.eg', '1017088028', 6, 3, '1806615', '2018-10-10 11:54:53', '2018-10-10 11:54:53', NULL),
(217, 'Omar Ahmed', 'users/applicants/default.png', 'Omar1807309@miuegypt.edu.eg', '1015805005', 6, 3, '1807309', '2018-10-10 11:59:46', '2018-10-10 11:59:46', NULL),
(218, 'Mariam Ahmed', 'users/applicants/default.png', 'Mariam1702072@miuegypt.edu.eg', '1284441055', 3, 2, '1702072', '2018-10-10 12:04:20', '2018-10-10 12:04:20', NULL),
(219, 'Haya Amr', 'users/applicants/default.png', 'Haya1802040@miuegypt.edu.eg', '1001030008', 3, 2, '1802040', '2018-10-10 12:06:31', '2018-10-10 12:06:31', NULL),
(220, 'Yousseg Boghdady', 'users/applicants/default.png', 'Yousseg1701718@miuegypt.edu.eg', '1210330000', 4, 2, '1701718', '2018-10-10 12:08:33', '2018-10-10 12:08:33', NULL),
(221, 'Alya Loaman', 'users/applicants/default.png', 'Alya1813176@miuegypt.edu.eg', '1000550203', 3, 3, '1813176', '2018-10-10 12:13:24', '2018-10-10 12:13:24', NULL),
(222, 'Bassem Hany', 'users/applicants/default.png', 'Bassem1605511@miuegypt.edu.eg', '1222109355', 4, 3, '1605511', '2018-10-10 12:15:34', '2018-10-10 12:15:34', NULL),
(223, 'Nouran Hany', 'users/applicants/default.png', 'Nouran1803711@miuegypt.edu.eg', '1001651105', 3, 2, '1803711', '2018-10-10 12:17:45', '2018-10-10 12:17:45', NULL),
(224, 'Nour Ahmed', 'users/applicants/default.png', 'Nour1804944@miuegypt.edu.eg', '1288881633', 3, 2, '1804944', '2018-10-10 12:18:54', '2018-10-10 12:18:54', NULL),
(225, 'Kirollos Amir', 'users/applicants/default.png', 'Kirollos1608522@miuegypt.edu.eg', '1226244169', 1, 1, '1608522', '2018-10-10 12:25:26', '2018-10-10 12:25:26', NULL),
(226, 'Nabila Ami', 'users/applicants/default.png', 'nabila201803362@miuegypt.edu.eg', '1288451990', 4, 2, '201803362', '2018-10-10 12:43:27', '2018-10-10 12:43:27', NULL),
(227, 'Alia Fayez', 'users/applicants/default.png', 'alia1709261@miuegypt.edu.eg', '1112838632', 4, 2, '1709261', '2018-10-10 13:02:49', '2018-10-10 13:02:49', NULL),
(228, 'Dina Alaa', 'users/applicants/default.png', 'dina1700923@miuegypt.edu.eg', '1144696686', 3, 3, '1700923', '2018-10-10 13:10:30', '2018-10-10 13:10:30', NULL),
(229, 'Youssef Khaled', 'users/applicants/default.png', 'youssef1711209@miuegypt.edu.eg', '1066625846', 1, 1, '1711209', '2018-10-10 13:19:06', '2018-10-10 13:19:06', NULL),
(230, 'Manar Ahmed', 'users/applicants/default.png', 'manar1703803@miuegypt.edu.eg', '1140088809', 4, 2, '1703803', '2018-10-10 13:30:23', '2018-10-10 13:30:23', NULL),
(231, 'Muhammed Tawfik', 'users/applicants/default.png', 'muhammed1702285@miuegypt.edu.eg', '1095344255', 4, 2, '1702285', '2018-10-10 13:32:15', '2018-10-10 13:32:15', NULL),
(232, 'Fady Ashraf', 'users/applicants/default.png', 'fady1603149@miuegypt.edu.eg', '1118466492', 4, 4, '1603149', '2018-10-10 13:39:17', '2018-10-10 13:39:17', NULL),
(233, 'Katie Zaky', 'users/applicants/default.png', 'katie1700089@miuegypt.edu.eg', '1118111921', 3, 2, '1700089', '2018-10-10 13:45:24', '2018-10-10 13:45:24', NULL),
(234, 'Farida Mohamed', 'users/applicants/default.png', 'farida1700294@miuegypt.edu.eg', '1017494449', 3, 2, '1700294', '2018-10-10 13:47:21', '2018-10-10 13:47:21', NULL),
(235, 'Joulie Arnest', 'users/applicants/default.png', 'joulie1601542@miuegypt.edu.eg', '1222929152', 4, 5, '1601542', '2018-10-10 13:55:47', '2018-10-10 13:55:47', NULL),
(236, 'Mohamed Elabyad', 'users/applicants/default.png', 'mohamed 1606230@miuegypt.edu.eg', '1021441410', 4, 3, '1606230', '2018-10-10 13:58:02', '2018-10-10 13:58:02', NULL),
(237, 'Rawan Ahmed', 'users/applicants/default.png', 'Rawan1805885@miuegypt.edu.eg', '1095948333', 4, 3, '1805885', '2018-10-10 13:59:10', '2018-10-10 13:59:10', NULL),
(238, 'Madonna Khashram', 'users/applicants/default.png', 'madonna 1604050@miuegypt.edu.eg', '1227921964', 4, 2, '1604050', '2018-10-10 14:00:36', '2018-10-10 14:00:36', NULL),
(239, 'Nouran Khairy', 'users/applicants/default.png', 'Nouran1601182@miuegypt.edu.eg', '1019640524', 1, 1, '1601182', '2018-10-10 14:02:21', '2018-10-10 14:02:21', NULL),
(240, 'Farida Saif el din', 'users/applicants/default.png', 'farida1802127@miuegypt.edu.eg', '1141434349', 8, 2, '1802127', '2018-10-10 14:04:41', '2018-10-10 14:04:41', NULL),
(241, 'Maya Khaled', 'users/applicants/default.png', 'maya1803846@miuegypt.edu.eg', '1200772766', 8, 2, '1803846', '2018-10-10 14:05:16', '2018-10-10 14:05:16', NULL),
(242, 'Farida Elrashidy', 'users/applicants/default.png', 'farida1705130@miuegypt.edu.eg', '1066333835', 3, 5, '1705130', '2018-10-10 14:08:14', '2018-10-10 14:08:14', NULL),
(243, 'Amira Shams', 'users/applicants/default.png', 'Amira1713354@miuegypt.edu.eg', '1272953339', 4, 3, '1713354', '2018-10-10 14:13:05', '2018-10-10 14:13:05', NULL),
(244, 'Lina Bassiouny', 'users/applicants/default.png', 'lina 1701283@miuegypt.edu.eg', '1098883997', 4, 2, '1701283', '2018-10-10 14:24:27', '2018-10-10 14:24:27', NULL),
(245, 'Habiba Makhlouf', 'users/applicants/default.png', 'habiba1700123@miuegypt.edu.eg', '1115461999', 4, 2, '1700123', '2018-10-10 14:25:32', '2018-10-10 14:25:32', NULL),
(246, 'Phoebe Alber', 'users/applicants/default.png', 'phoebe1700028@miuegypt.edu.eg', '1157687171', 4, 2, '1700028', '2018-10-10 14:28:55', '2018-10-10 14:28:55', NULL),
(247, 'Sherif Abdelkhalek', 'users/applicants/default.png', 'sherif1611233@miuegypt.edu.eg', '1060512256', 1, 1, '1611233', '2018-10-10 14:31:37', '2018-10-10 14:31:37', NULL),
(248, 'Ziad Elhady', 'users/applicants/default.png', 'ziad1606740@miuegypt.edu.eg', '1142022136', 4, 2, '1606740', '2018-10-10 14:34:02', '2018-10-10 14:34:02', NULL),
(249, 'Noura Nader', 'users/applicants/default.png', 'noura1802419@miuegypt.edu.eg', '1117299634', 4, 3, '1802419', '2018-10-10 14:36:16', '2018-10-10 14:36:16', NULL),
(250, 'Rana Sherif', 'users/applicants/default.png', 'rana1501279@miuegypt.edu.eg', '1018004330', 3, 5, '1501279', '2018-10-10 14:38:36', '2018-10-10 14:38:36', NULL),
(251, 'Maryam El Ghonemy', 'users/applicants/default.png', 'Maryam1500854@miuegypt.edu.eg', '106552376', 4, 3, '1500854', '2018-10-10 14:40:03', '2018-10-10 14:40:03', NULL),
(252, 'Mohamed Ayman', 'users/applicants/default.png', 'Mohamed1606720@miuegypt.edu.eg', '1068894297', 1, 1, '1606720', '2018-10-10 14:50:52', '2018-10-10 14:50:52', NULL),
(253, 'Omar Mohamed', 'users/applicants/default.png', 'Omar1700292@miuegypt.edu.eg', '1026100556', 4, 2, '1700292', '2018-10-10 14:54:57', '2018-10-10 14:54:57', NULL),
(254, 'Shehab Mohsen', 'users/applicants/default.png', 'Shehab1603611@miuegypt.edu.eg', '1119675198', 1, 1, '1603611', '2018-10-10 15:00:11', '2018-10-10 15:00:11', NULL),
(255, 'Omar Gad', 'users/applicants/default.png', 'omar1603243@miuegypt.edu.eg', '1118031760', 4, 2, '1603243', '2018-10-10 15:11:04', '2018-10-10 15:11:04', NULL),
(256, 'Nermeen Hagag', 'users/applicants/default.png', 'Nermeen1610156@miuegypt.edu.eg', '1016621355', 1, 1, '1610156', '2018-10-10 15:15:04', '2018-10-10 15:15:04', NULL),
(257, 'Rana Esmat', 'users/applicants/default.png', 'rana1802307@miuegypt.edu.eg', '1111821333', 4, 2, '1802307', '2018-10-10 15:15:05', '2018-10-10 15:15:05', NULL),
(258, 'Fady Bassem', 'users/applicants/default.png', 'Fady1700486@miuegypt.edu.eg', '1277550068', 4, 2, '1700486', '2018-10-10 15:20:45', '2018-10-10 15:20:45', NULL),
(259, 'Mina Ehab', 'users/applicants/default.png', 'mina 1603397@miuegypt.edu.eg', '1220339701', 4, 2, '1603397', '2018-10-10 15:20:50', '2018-10-10 15:20:50', NULL),
(260, 'Mina Rizk', 'users/applicants/default.png', 'mina1600794@miuegypt.edu.eg', '1158830078', 4, 2, '1600794', '2018-10-10 15:22:02', '2018-10-10 15:22:02', NULL),
(261, 'Omar Hassan', 'users/applicants/default.png', 'omar 1808129@miuegypt.edu.eg', '1122551153', 6, 3, '1808129', '2018-10-10 15:24:31', '2018-10-10 15:24:31', NULL),
(262, 'Ali Eraky', 'users/applicants/default.png', 'ali1806750@miuegypt.edu.eg', '1143676651', 6, 3, '1806750', '2018-10-10 15:27:18', '2018-10-10 15:27:18', NULL),
(263, 'Tebra Afifi', 'users/applicants/default.png', 'tebra1701831@miuegypt.edu.eg', '1207807775', 4, 3, '1701831', '2018-10-10 15:29:24', '2018-10-10 15:29:24', NULL),
(264, 'Farha Gasser', 'users/applicants/default.png', 'farha 1707920@miuegypt.edu.eg', '1095223899', 4, 3, '1707920', '2018-10-10 15:32:58', '2018-10-10 15:32:58', NULL),
(265, 'Aly Tawfik', 'users/applicants/default.png', 'aly1602643@miuegypt.edu.eg', '1000393383', 1, 1, '1602643', '2018-10-10 15:37:08', '2018-10-10 15:37:08', NULL),
(266, 'Zeyad Kotb', 'users/applicants/default.png', 'zeyad1703724@miuegypt.edu.eg', '1284602233', 4, 3, '1703724', '2018-10-10 15:42:14', '2018-10-10 15:42:14', NULL),
(267, 'Hany Karram', 'users/applicants/default.png', 'hany1603404@miuegypt.edu.eg', '1113361810', 4, 3, '1603404', '2018-10-10 15:44:13', '2018-10-10 15:44:13', NULL),
(268, 'Mario Maher', 'users/applicants/default.png', 'Mario1600307@miuegypt.edu.eg', '1277221885', 4, 4, '1600307', '2018-10-10 16:22:48', '2018-10-10 16:22:48', NULL),
(269, 'Ahmed Shamroukh', 'users/applicants/default.png', 'ahmed1603029@miuegypt.edu.eg', '1019613518', 4, 4, '1603029', '2018-10-10 16:45:43', '2018-10-10 16:45:43', NULL),
(270, 'Hala Mowafak', 'users/applicants/default.png', 'hala1603075@miuegypt.edu.eg', '1158744401', 4, 2, '1603075', '2018-10-10 16:57:06', '2018-10-10 16:57:06', NULL),
(271, 'Ahmed Ossama', 'users/applicants/default.png', 'ahmed 1803760@miuegypt.edu.eg', '1145566934', 1, 1, '1803760', '2018-10-10 17:02:15', '2018-10-10 17:02:15', NULL),
(272, 'Omar Yasser', 'users/applicants/default.png', 'omar1403257@miuegypt.edu.eg', '1117727335', 4, 4, '1403257', '2018-10-10 17:11:04', '2018-10-10 17:11:04', NULL),
(273, 'Farida Khaled', 'users/applicants/default.png', 'farida1700038@miuegypt.edu.eg', '1008511071', 3, 5, '1700038', '2018-10-10 17:14:24', '2018-10-10 17:14:24', NULL),
(274, 'Irene Alarja', 'users/applicants/default.png', 'irene1802195@miuegypt.edu.eg', '1281883331', 6, 2, '1802195', '2018-10-10 17:17:46', '2018-10-10 17:17:46', NULL),
(275, 'Karin Hamawy', 'users/applicants/default.png', 'karin1700323@miuegypt.edu.eg', '101463939', 3, 3, '1700323', '2018-10-10 17:21:14', '2018-10-10 17:21:14', NULL),
(276, 'Sherif Ali', 'users/applicants/default.png', 'sherif 1709787@miuegypt.edu.eg', '1111180975', 4, 2, '1709787', '2018-10-10 17:30:08', '2018-10-10 17:33:23', NULL),
(277, 'Ahmed Farahat', 'users/applicants/default.png', 'ahmed1702187@miuegypt.edu.eg', '111638027', 4, 2, '1702187', '2018-10-10 17:31:32', '2018-10-10 17:31:32', NULL),
(278, 'Youssef Khaled', 'users/applicants/default.png', 'youssef 183308@miuegypt.edu.eg', '1023918075', 4, 3, '183308', '2018-10-10 17:47:25', '2018-10-10 17:47:25', NULL),
(279, 'Youssef Khaled', 'users/applicants/default.png', 'youssef 183308@miuegypt.edu.eg', '1023918075', 4, 3, '183308', '2018-10-10 17:47:25', '2018-10-10 17:47:25', NULL),
(280, 'Amr Atef', 'users/applicants/default.png', 'amr1805997@miuegypt.edu.eg', '1069018035', 4, 3, '1805997', '2018-10-10 17:48:50', '2018-10-10 17:48:50', NULL),
(281, 'Nour Magdi', 'users/applicants/default.png', 'nour1606816@miuegypt.edu.eg', '1113786999', 4, 3, '1606816', '2018-10-10 17:52:37', '2018-10-10 17:52:37', NULL),
(282, 'Ahmed Habib', 'users/applicants/default.png', 'ahmed 1811716@miuegypt.edu.eg', '1064105267', 6, 3, '1811716', '2018-10-10 17:57:34', '2018-10-10 17:57:34', NULL),
(283, 'Ahmed Fawzy', 'users/applicants/default.png', 'ahmed1801147@miuegypt.edu.eg', '1277700006', 4, 3, '1801147', '2018-10-10 17:59:14', '2018-10-10 17:59:14', NULL),
(284, 'Ahmed Mosutafa', 'users/applicants/default.png', 'Ahmed1701913@miuegypt.edu.eg', '1000405583', 6, 2, '1701913', '2018-10-10 18:27:25', '2018-10-10 18:27:25', NULL),
(285, 'Youssif Hossam', 'users/applicants/default.png', 'Youssif1703400@miuegypt.edu.eg', '1022050706', 6, 2, '1703400', '2018-10-10 18:28:59', '2018-10-10 18:28:59', NULL),
(286, 'Mirna Ayman', 'users/applicants/default.png', 'Mirna1800606@miuegypt.edu.eg', '1208558004', 6, 3, '1800606', '2018-10-11 11:06:03', '2018-10-11 11:06:03', NULL),
(287, 'Hossam Nasser', 'users/applicants/default.png', 'Hossam1608513@miuegypt.edu.eg', '1001170207', 4, 3, '1608513', '2018-10-11 11:57:10', '2018-10-11 11:57:10', NULL),
(288, 'Serine Al-Shazly', 'users/applicants/default.png', 'Serine1806996@miuegypt.edu.eg', '1148089322', 8, 2, '1806996', '2018-10-11 12:02:18', '2018-10-11 12:02:18', NULL),
(289, 'Merna Aly', 'users/applicants/default.png', 'Merna1711561@miuegypt.edu.eg', '1117201797', 4, 2, '1711561', '2018-10-11 12:13:46', '2018-10-11 12:13:46', NULL),
(290, 'Renad Ehab', 'users/applicants/default.png', 'Renad1503491@miuegypt.edu.eg', '1273128883', 4, 2, '1503491', '2018-10-11 12:15:42', '2018-10-11 12:15:42', NULL),
(291, 'Sandra Wael', 'users/applicants/default.png', 'Sandra1512481@miuegypt.edu.eg', '1006318582', 4, 2, '1512481', '2018-10-11 12:16:43', '2018-10-11 12:16:43', NULL),
(292, 'Youmna Khaled', 'users/applicants/default.png', 'Youmna1702353@miuegypt.edu.eg', '1141663713', 4, 2, '1702353', '2018-10-11 12:37:23', '2018-10-11 12:37:23', NULL),
(293, 'Sherwat Sayed', 'users/applicants/default.png', 'Sherwat1803666@miuegypt.edu.eg', '1155211180', 4, 2, '1803666', '2018-10-11 13:15:11', '2018-10-11 13:15:11', NULL),
(294, 'Eric Labat', 'users/applicants/default.png', 'Eric1706441@miuegypt.edu.eg', '1276999957', 4, 2, '1706441', '2018-10-11 13:30:47', '2018-10-11 13:30:47', NULL),
(295, 'Nathalie Edward', 'users/applicants/default.png', 'Nathalie1600322@miuegypt.edu.eg', '1000499089', 3, 2, '1600322', '2018-10-11 13:44:13', '2018-10-11 13:44:13', NULL);
INSERT INTO `applicants` (`id`, `name`, `avatar`, `email`, `phone`, `faculty_id`, `committee_id`, `student_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(296, 'Emanwella Salah', 'users/applicants/default.png', 'Emanwella1709062@miuegypt.edu.eg', '1270104812', 4, 2, '1709062', '2018-10-11 13:52:23', '2018-10-11 13:52:23', NULL),
(297, 'Manuella Samir', 'users/applicants/default.png', 'Manuella1708880@miuegypt.edu.eg', '1282220008', 4, 2, '1708880', '2018-10-11 13:53:43', '2018-10-11 13:53:43', NULL),
(298, 'Michael George', 'users/applicants/default.png', 'Michael1700896@miuegypt.edu.eg', '1090924489', 4, 2, '1700896', '2018-10-11 13:54:52', '2018-10-11 13:54:52', NULL),
(299, 'Youssef Fekry', 'users/applicants/default.png', 'Youssef1707919@miuegypt.edu.eg', '1551521057', 4, 2, '1707919', '2018-10-11 14:00:28', '2018-10-11 14:00:28', NULL),
(300, 'Mohamed Akram', 'users/applicants/default.png', 'mohamed1700772@miuegypt.edu.eg', '1122452121', 1, 5, '1700772', '2018-10-11 14:17:49', '2018-10-11 14:17:49', NULL),
(301, 'Salma Arafa', 'users/applicants/default.png', 'Salma1803455@miuegypt.edu.eg', '1009451149', 3, 2, '1803455', '2018-10-11 14:26:30', '2018-10-11 14:26:30', NULL),
(302, 'Sarah Khaier', 'users/applicants/default.png', 'Sarah1600673@miuegypt.edu.eg', '1276244448', 7, 3, '1600673', '2018-10-11 14:44:31', '2018-10-11 14:44:31', NULL),
(303, 'Poula Moheb', 'users/applicants/default.png', 'Poula1500398@miuegypt.edu.eg', '1112710029', 1, 5, '1500398', '2018-10-11 15:15:58', '2018-10-11 15:15:58', NULL),
(304, 'Aly Ahmed', 'users/applicants/default.png', 'Aly1504579@miuegypt.edu.eg', '1115504456', 3, 2, '1504579', '2018-10-11 16:00:35', '2018-10-11 16:00:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applicant_statuses`
--

CREATE TABLE `applicant_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicant_statuses`
--

INSERT INTO `applicant_statuses` (`id`, `applicant_id`, `status`, `score`, `feedback`, `created_at`, `updated_at`) VALUES
(4, 4, 2, 0, NULL, NULL, '2018-10-12 16:47:14'),
(5, 5, 2, 77, 'Head f utpoia', NULL, '2018-10-12 16:52:52'),
(6, 6, 2, 0, NULL, NULL, '2018-10-12 17:29:12'),
(7, 7, 1, 100, 'Qualified, perfect answers, loyal , refused multimedia last year , coordination this year.', NULL, '2018-10-12 17:28:11'),
(8, 8, 1, 100, NULL, NULL, '2018-10-12 20:15:38'),
(9, 9, 0, 0, NULL, NULL, NULL),
(10, 10, 2, 0, 'mesh 3awzo !', NULL, '2018-10-13 11:52:19'),
(11, 11, 0, 0, NULL, NULL, NULL),
(12, 12, 2, 0, NULL, NULL, '2018-10-12 17:16:03'),
(13, 13, 2, 0, NULL, NULL, '2018-10-12 17:16:01'),
(14, 14, 2, 0, NULL, NULL, '2018-10-12 16:47:27'),
(15, 15, 2, 40, NULL, NULL, '2018-10-12 17:29:25'),
(16, 16, 2, 0, NULL, NULL, '2018-10-12 16:41:43'),
(17, 17, 2, 74, NULL, NULL, '2018-10-12 17:31:20'),
(18, 18, 2, 60, NULL, NULL, '2018-10-12 17:27:18'),
(19, 19, 1, 86, NULL, NULL, '2018-10-12 17:07:06'),
(20, 20, 2, 0, NULL, NULL, '2018-10-12 12:27:46'),
(21, 21, 2, 0, NULL, NULL, '2018-10-12 16:43:59'),
(22, 22, 2, 0, NULL, NULL, '2018-10-12 16:48:23'),
(23, 23, 2, 0, NULL, NULL, '2018-10-12 16:41:53'),
(24, 24, 2, 60, '6.5/10', NULL, '2018-10-13 21:15:29'),
(25, 25, 2, 0, NULL, NULL, '2018-10-13 21:15:26'),
(26, 26, 2, 60, 'Freshman \r\n Ourooba (IG)\r\n\r\nBusiness-\r\nPhotographer\r\nSemi-pro Camera (Fujifilm)\r\n(9/10)\r\nCommitted !\r\n\r\nMesh battal, mmkn tesa3ed mark!', NULL, '2018-10-13 21:10:51'),
(27, 27, 0, 0, NULL, NULL, NULL),
(28, 28, 2, 0, NULL, NULL, '2018-10-12 16:43:33'),
(29, 29, 2, 100, 'She’s flexible with time and she can draw anything infront of her and she’s very creative', NULL, '2018-10-12 17:52:50'),
(30, 30, 2, 73, NULL, NULL, '2018-10-12 12:32:05'),
(31, 31, 2, 0, NULL, NULL, '2018-10-12 12:34:41'),
(32, 32, 2, 71, 'pending', NULL, '2018-10-14 23:50:43'),
(33, 33, 2, 60, NULL, NULL, '2018-10-12 12:25:26'),
(34, 34, 2, 0, NULL, NULL, '2018-10-12 16:42:32'),
(35, 35, 1, 94, NULL, NULL, '2018-10-12 17:14:03'),
(36, 36, 1, 100, NULL, NULL, '2018-10-12 18:00:44'),
(37, 37, 1, 100, 'FILM MAKING', NULL, '2018-10-12 20:15:12'),
(38, 38, 1, 80, NULL, NULL, '2018-10-12 12:27:39'),
(39, 39, 2, 0, NULL, NULL, '2018-10-12 17:52:56'),
(40, 40, 2, 63, 'No', NULL, '2018-10-12 17:27:18'),
(41, 41, 2, 20, 'Unqualified', NULL, '2018-10-12 16:48:37'),
(42, 42, 2, 51, NULL, NULL, '2018-10-12 16:54:11'),
(43, 43, 2, 20, 'freshman\r\nmanaret el qahera (thaweya 3aamma) \r\n\r\nhandasa\r\nwokaholic \r\nno drawing skills\r\nNOT A MAterial !', NULL, '2018-10-12 16:44:25'),
(44, 44, 2, 0, NULL, NULL, '2018-10-12 16:54:38'),
(45, 45, 2, 53, 'Disqualified', NULL, '2018-10-12 16:43:24'),
(46, 46, 2, 0, NULL, NULL, '2018-10-12 17:10:30'),
(47, 47, 2, 34, NULL, NULL, '2018-10-12 17:28:54'),
(48, 48, 1, 68, 'Good candidate. Weak background. Willing to learn. Can adapt to unfamiliar environment', NULL, '2018-10-12 18:18:10'),
(49, 49, 2, 80, 'Accepted mknnnn', NULL, '2018-10-12 16:45:07'),
(50, 50, 2, 40, 'She can draw\r\nShe is veeerrrryyyy shy', NULL, '2018-10-12 17:27:36'),
(51, 51, 2, 0, NULL, NULL, '2018-10-12 16:43:31'),
(52, 52, 2, 20, NULL, NULL, '2018-10-12 17:29:43'),
(53, 53, 2, 60, NULL, NULL, '2018-10-12 17:27:25'),
(54, 54, 2, 0, NULL, NULL, '2018-10-12 16:54:34'),
(55, 55, 2, 48, NULL, NULL, '2018-10-12 17:27:35'),
(56, 56, 2, 0, NULL, NULL, '2018-10-12 16:45:42'),
(57, 57, 2, 0, NULL, NULL, '2018-10-12 16:47:11'),
(58, 58, 1, 77, NULL, NULL, '2018-10-12 16:52:40'),
(59, 59, 2, 0, NULL, NULL, '2018-10-12 17:52:57'),
(60, 60, 0, 0, NULL, NULL, NULL),
(61, 61, 2, 0, NULL, NULL, '2018-10-12 12:28:50'),
(62, 62, 2, 53, NULL, NULL, '2018-10-12 12:26:03'),
(63, 63, 2, 0, NULL, NULL, '2018-10-12 12:24:11'),
(64, 64, 2, 53, NULL, NULL, '2018-10-12 12:29:49'),
(65, 65, 2, 0, NULL, NULL, '2018-10-12 16:47:24'),
(66, 66, 1, 100, 'Masscom freshman \r\nteeba (IG)\r\npassionate\r\nphotographer/ videographer\r\nRecommended !!', NULL, '2018-10-12 20:16:11'),
(67, 67, 2, 0, NULL, NULL, '2018-10-12 17:41:14'),
(68, 68, 2, 80, '3 bus, finance,  kanet fl mini event, loyal aktr, wana rating 8', NULL, '2018-10-12 16:45:16'),
(69, 69, 2, 91, 'Member hr f tedex, committed, loyal ,  t3raf t2led l rasm, already delegate abl kda,, sheraton heliopolis', NULL, '2018-10-12 17:10:38'),
(70, 70, 2, 83, 'She can draw (pending)', NULL, '2018-10-12 17:27:53'),
(71, 71, 2, 0, NULL, NULL, '2018-10-12 16:42:32'),
(72, 72, 2, 0, NULL, NULL, '2018-10-13 21:11:14'),
(73, 73, 2, 20, 'Balooshi', NULL, '2018-10-12 20:15:48'),
(74, 74, 2, 0, NULL, NULL, '2018-10-12 16:45:25'),
(75, 75, 2, 87, NULL, NULL, '2018-10-12 12:27:04'),
(76, 76, 0, 0, NULL, NULL, NULL),
(77, 77, 2, 60, NULL, NULL, '2018-10-12 16:54:06'),
(78, 78, 2, 46, NULL, NULL, '2018-10-12 16:42:23'),
(79, 79, 1, 100, 'Theme : done', NULL, '2018-10-12 16:49:30'),
(80, 80, 2, 20, NULL, NULL, '2018-10-12 16:42:20'),
(81, 81, 2, 40, NULL, NULL, '2018-10-12 16:48:42'),
(82, 82, 2, 40, NULL, NULL, '2018-10-12 16:47:35'),
(83, 83, 2, 0, NULL, NULL, '2018-10-12 17:52:59'),
(84, 84, 2, 100, NULL, NULL, '2018-10-12 17:07:40'),
(85, 85, 2, 20, NULL, NULL, '2018-10-12 12:28:32'),
(86, 86, 2, 71, 'Pending', NULL, '2018-10-12 12:28:45'),
(87, 87, 2, 25, 'not accepted', NULL, '2018-10-12 12:26:07'),
(88, 88, 2, 60, NULL, NULL, '2018-10-12 17:27:31'),
(89, 89, 0, 0, NULL, NULL, NULL),
(90, 90, 2, 0, NULL, NULL, '2018-10-12 16:48:56'),
(91, 91, 2, 60, NULL, NULL, '2018-10-12 17:29:38'),
(92, 92, 2, 89, 'Confident', NULL, '2018-10-12 12:24:41'),
(93, 93, 2, 0, NULL, NULL, '2018-10-12 16:43:02'),
(94, 94, 2, 0, NULL, NULL, '2018-10-12 16:48:32'),
(95, 95, 2, 20, NULL, NULL, '2018-10-12 16:45:49'),
(96, 96, 2, 0, NULL, NULL, '2018-10-12 16:47:46'),
(97, 97, 2, 69, 'Colors kowayes \r\nHigh potential \r\nSociable', NULL, '2018-10-12 17:31:20'),
(98, 98, 2, 0, NULL, NULL, '2018-10-12 16:46:13'),
(99, 99, 2, 80, NULL, NULL, '2018-10-12 17:27:27'),
(100, 100, 2, 80, 'Creative and can draw and flexible with timings 4th year', NULL, '2018-10-12 17:29:05'),
(101, 101, 2, 0, NULL, NULL, '2018-10-12 16:48:03'),
(102, 102, 2, 0, NULL, NULL, '2018-10-12 12:29:53'),
(103, 103, 2, 100, 'Ytbahdel 3adyyyy', NULL, '2018-10-12 17:27:45'),
(104, 104, 2, 0, NULL, NULL, '2018-10-12 12:28:08'),
(105, 105, 2, 0, NULL, NULL, '2018-10-12 17:29:43'),
(106, 106, 2, 40, 'Laa2', NULL, '2018-10-12 16:44:12'),
(107, 107, 2, 0, NULL, NULL, '2018-10-12 16:47:20'),
(108, 108, 2, 40, 'pending', NULL, '2018-10-12 12:25:37'),
(109, 109, 2, 0, NULL, NULL, '2018-10-12 12:24:06'),
(110, 110, 1, 0, NULL, NULL, '2018-10-12 17:40:45'),
(111, 111, 2, 0, NULL, NULL, '2018-10-12 12:29:43'),
(112, 112, 1, 80, 'Mascom, kanet f senior committee leeha 3elaka b cordination, very creative bt3raf trsem fashkh w tlawen, accepted fashkh', NULL, '2018-10-12 17:10:14'),
(113, 113, 2, 0, NULL, NULL, '2018-10-12 16:45:19'),
(114, 114, 2, 80, NULL, NULL, '2018-10-12 12:31:31'),
(115, 115, 2, 0, NULL, NULL, '2018-10-12 12:28:51'),
(116, 116, 1, 87, NULL, NULL, '2018-10-12 12:27:43'),
(117, 117, 2, 20, NULL, NULL, '2018-10-12 16:43:38'),
(118, 118, 2, 80, 'Make up artist', NULL, '2018-10-12 17:10:59'),
(119, 119, 0, 0, NULL, NULL, NULL),
(120, 120, 2, 0, NULL, NULL, '2018-10-12 16:48:03'),
(121, 121, 2, 69, NULL, NULL, '2018-10-12 17:40:57'),
(122, 122, 2, 40, NULL, NULL, '2018-10-12 17:29:11'),
(123, 123, 2, 69, 'Utopia, liked to paint and design , ushering cairo film festival', NULL, '2018-10-12 17:29:33'),
(124, 124, 2, 0, NULL, NULL, '2018-10-12 17:29:33'),
(125, 125, 2, 60, 'M2dem ashan spirit , kan f clubs kteer,', NULL, '2018-10-12 17:29:02'),
(126, 126, 2, 80, NULL, NULL, '2018-10-12 12:26:55'),
(127, 127, 2, 0, NULL, NULL, '2018-10-12 17:40:57'),
(128, 128, 0, 0, NULL, NULL, NULL),
(129, 129, 2, 33, NULL, NULL, '2018-10-12 12:26:50'),
(130, 130, 1, 89, 'Pending', NULL, '2018-10-13 18:57:54'),
(131, 131, 2, 0, NULL, NULL, '2018-10-12 16:43:05'),
(132, 132, 2, 0, NULL, NULL, '2018-10-12 17:29:25'),
(133, 133, 2, 20, '2 mascom\r\nNotre dame\r\n\r\nComitted person\r\n\r\nPhotography and videography', NULL, '2018-10-12 20:15:50'),
(134, 134, 2, 0, NULL, NULL, '2018-10-12 17:29:25'),
(135, 135, 2, 0, NULL, NULL, '2018-10-12 12:28:42'),
(136, 136, 0, 0, NULL, NULL, NULL),
(137, 137, 2, 0, NULL, NULL, '2018-10-12 12:28:56'),
(138, 138, 2, 0, NULL, NULL, '2018-10-12 16:41:21'),
(139, 139, 0, 0, NULL, NULL, NULL),
(140, 140, 2, 20, NULL, NULL, '2018-10-12 16:49:37'),
(141, 141, 2, 0, NULL, NULL, '2018-10-12 12:27:26'),
(142, 142, 2, 0, NULL, NULL, '2018-10-12 12:28:28'),
(143, 143, 2, 0, NULL, NULL, '2018-10-12 12:25:52'),
(144, 144, 0, 0, NULL, NULL, NULL),
(145, 145, 0, 0, NULL, NULL, NULL),
(146, 146, 2, 0, NULL, NULL, '2018-10-12 12:27:53'),
(147, 147, 2, 100, NULL, NULL, '2018-10-12 17:15:54'),
(148, 148, 2, 0, NULL, NULL, '2018-10-12 16:49:22'),
(149, 149, 2, 80, 'Pending', NULL, '2018-10-12 17:15:51'),
(150, 150, 1, 0, NULL, NULL, '2018-10-13 11:52:06'),
(151, 151, 1, 86, 'pending', NULL, '2018-10-12 12:29:55'),
(152, 152, 2, 0, NULL, NULL, '2018-10-12 12:27:06'),
(153, 153, 2, 57, 'pending', NULL, '2018-10-12 12:28:40'),
(154, 154, 2, 0, NULL, NULL, '2018-10-12 16:43:10'),
(155, 155, 2, 0, NULL, NULL, '2018-10-12 16:43:49'),
(156, 156, 1, 86, 'pending', NULL, '2018-10-12 12:26:30'),
(157, 157, 2, 0, NULL, NULL, '2018-10-12 12:29:33'),
(158, 158, 2, 0, NULL, NULL, '2018-10-12 17:54:21'),
(159, 159, 2, 91, 'Pending', NULL, '2018-10-12 17:27:33'),
(160, 160, 0, 80, 'Pending', NULL, '2018-10-12 13:10:44'),
(161, 161, 2, 0, NULL, NULL, '2018-10-12 16:44:04'),
(162, 162, 2, 51, 'Weak personality but hard worker', NULL, '2018-10-12 16:47:30'),
(163, 163, 2, 63, 'Mun oc', NULL, '2018-10-12 16:52:53'),
(164, 164, 2, 0, NULL, NULL, '2018-10-12 17:29:33'),
(165, 165, 2, 0, NULL, NULL, '2018-10-12 16:41:42'),
(166, 166, 2, 51, NULL, NULL, '2018-10-14 23:50:03'),
(167, 167, 2, 0, NULL, NULL, '2018-10-12 16:48:09'),
(168, 168, 2, 60, 'She has potential but she is not coordination material', NULL, '2018-10-12 16:45:14'),
(169, 169, 2, 40, 'need work on persuasion skills', NULL, '2018-10-12 12:28:35'),
(170, 170, 2, 0, NULL, NULL, '2018-10-12 12:24:01'),
(171, 171, 1, 0, NULL, NULL, '2018-10-12 20:16:44'),
(172, 172, 2, 0, NULL, NULL, '2018-10-12 12:26:59'),
(173, 173, 2, 0, NULL, NULL, '2018-10-12 16:54:14'),
(174, 174, 2, 0, NULL, NULL, '2018-10-12 16:47:39'),
(175, 175, 2, 100, 'Accepted', NULL, '2018-10-12 12:25:09'),
(176, 176, 2, 60, 'Ocd assal', NULL, '2018-10-12 12:25:45'),
(177, 177, 1, 0, NULL, NULL, '2018-10-12 12:29:39'),
(178, 178, 1, 100, 'Bt3raf trsem , w flexible fl mwa3eed, w tmam, w koisaaaa', NULL, '2018-10-12 17:31:33'),
(179, 179, 1, 77, 'Alot of strength points', NULL, '2018-10-12 12:31:12'),
(180, 180, 2, 20, 'No', NULL, '2018-10-12 16:42:27'),
(181, 181, 2, 0, NULL, NULL, '2018-10-12 12:24:36'),
(182, 182, 2, 20, 'Weak', NULL, '2018-10-12 16:41:56'),
(183, 183, 0, 0, NULL, NULL, NULL),
(184, 184, 0, 0, NULL, NULL, NULL),
(185, 185, 2, 42, NULL, NULL, '2018-10-12 17:10:34'),
(186, 186, 2, 40, 'need more work  on communication skills', NULL, '2018-10-12 12:24:44'),
(187, 187, 2, 0, NULL, NULL, '2018-10-12 18:00:50'),
(188, 188, 2, 0, NULL, NULL, '2018-10-12 17:29:06'),
(189, 189, 0, 0, NULL, NULL, NULL),
(190, 190, 2, 74, 'Good candidate. Very sociable.', NULL, '2018-10-12 12:28:19'),
(191, 191, 2, 54, 'freshmen', NULL, '2018-10-12 12:25:13'),
(192, 192, 2, 0, NULL, NULL, '2018-10-12 16:48:22'),
(193, 193, 2, 0, NULL, NULL, '2018-10-12 16:46:19'),
(194, 194, 2, 20, NULL, NULL, '2018-10-12 16:48:45'),
(195, 195, 2, 31, 'Not up to capabilities', NULL, '2018-10-12 12:26:22'),
(196, 196, 1, 67, 'Good candidate and can handle responsibility. Some time management issues considering he\'s a senior.', NULL, '2018-10-25 02:06:59'),
(197, 197, 2, 0, NULL, NULL, '2018-10-12 12:27:39'),
(198, 198, 2, 43, NULL, NULL, '2018-10-12 16:45:10'),
(199, 199, 2, 53, NULL, NULL, '2018-10-12 16:54:05'),
(200, 200, 2, 71, NULL, NULL, '2018-10-12 17:54:17'),
(201, 201, 2, 54, 'pending', NULL, '2018-10-12 12:29:05'),
(202, 202, 2, 100, NULL, NULL, '2018-10-12 12:27:50'),
(203, 203, 2, 51, NULL, NULL, '2018-10-12 17:10:11'),
(204, 204, 2, 0, NULL, NULL, '2018-10-12 16:45:23'),
(205, 205, 2, 0, NULL, NULL, '2018-10-12 16:43:57'),
(206, 206, 2, 40, NULL, NULL, '2018-10-12 17:29:26'),
(207, 207, 2, 0, NULL, NULL, '2018-10-12 16:41:42'),
(208, 208, 2, 40, 'pending', NULL, '2018-10-12 12:27:22'),
(209, 209, 2, 57, 'pending', NULL, '2018-10-12 12:26:47'),
(210, 210, 1, 0, NULL, NULL, '2018-10-13 12:06:01'),
(211, 211, 2, 0, NULL, NULL, '2018-10-12 16:47:13'),
(212, 212, 2, 0, NULL, NULL, '2018-10-11 19:06:44'),
(213, 213, 2, 73, 'Time management , glitter people, crafting , kanet maaya fl mdrasa, 3 bus, arts and design fl mdrasa', NULL, '2018-10-12 17:15:41'),
(214, 214, 2, 0, NULL, NULL, '2018-10-12 12:28:06'),
(215, 215, 1, 94, 'Accepted', NULL, '2018-10-12 16:51:18'),
(216, 216, 2, 40, 'needs work on her communication skills', NULL, '2018-10-12 12:27:14'),
(217, 217, 2, 46, 'doesnt have a strong communication skills', NULL, '2018-10-12 12:28:02'),
(218, 218, 2, 40, NULL, NULL, '2018-10-12 17:10:31'),
(219, 219, 2, 74, 'She’s creative (pending)', NULL, '2018-10-12 17:27:56'),
(220, 220, 1, 0, NULL, NULL, '2018-10-12 17:28:58'),
(221, 221, 1, 83, 'pending', NULL, '2018-10-12 12:25:33'),
(222, 222, 2, 54, 'pending', NULL, '2018-10-12 12:25:24'),
(223, 223, 2, 54, 'Noooo', NULL, '2018-10-12 17:39:14'),
(224, 224, 2, 44, 'English school nzelt ushering fl mdrasa', NULL, '2018-10-12 17:15:58'),
(225, 225, 2, 52, 'Not entirely eligible. Wants to learn. Not dependable', NULL, '2018-10-12 18:22:35'),
(226, 226, 2, 52, 'Bat3rf talwan aktar ma l rasm', NULL, '2018-10-12 17:15:49'),
(227, 227, 2, 66, NULL, NULL, '2018-10-12 17:27:29'),
(228, 228, 2, 0, NULL, NULL, '2018-10-12 12:25:22'),
(229, 229, 1, 80, 'Good candidate. Some commitment issues', NULL, '2018-10-12 18:18:20'),
(230, 230, 2, 0, NULL, NULL, '2018-10-12 16:46:26'),
(231, 231, 2, 0, NULL, NULL, '2018-10-12 16:48:21'),
(232, 232, 1, 0, NULL, NULL, '2018-10-15 13:44:16'),
(233, 233, 2, 0, NULL, NULL, '2018-10-12 16:46:05'),
(234, 234, 2, 0, NULL, NULL, '2018-10-12 16:44:00'),
(235, 235, 2, 0, NULL, NULL, '2018-10-12 20:16:34'),
(236, 236, 2, 57, 'Didnt have alot of contacts', NULL, '2018-10-12 12:27:55'),
(237, 237, 2, 0, NULL, NULL, '2018-10-12 12:28:47'),
(238, 238, 2, 43, 'Kashafa , gom3a unavailable', NULL, '2018-10-12 16:46:16'),
(239, 239, 1, 73, 'Good candidate. Very sociable.', NULL, '2018-10-12 18:18:15'),
(240, 240, 2, 0, NULL, NULL, '2018-10-12 16:44:02'),
(241, 241, 2, 74, NULL, NULL, '2018-10-12 17:10:49'),
(242, 242, 2, 0, NULL, NULL, '2018-10-13 11:54:56'),
(243, 243, 2, 63, 'pending', NULL, '2018-10-12 12:25:30'),
(244, 244, 2, 0, NULL, NULL, '2018-10-12 16:46:05'),
(245, 245, 2, 0, NULL, NULL, '2018-10-12 17:41:00'),
(246, 246, 2, 0, NULL, NULL, '2018-10-12 17:29:47'),
(247, 247, 1, 68, 'Good candidate', NULL, '2018-10-12 18:18:17'),
(248, 248, 2, 0, NULL, NULL, '2018-10-12 16:54:17'),
(249, 249, 2, 0, NULL, NULL, '2018-10-12 12:28:22'),
(250, 250, 1, 0, NULL, NULL, '2018-10-13 21:10:32'),
(251, 251, 1, 80, 'Pending', NULL, '2018-10-12 12:26:34'),
(252, 252, 2, 60, '-lessa beyet3alem web, mashtaghalsh fih abl keda, mashtaghalsh bara abl kefa 5ales, gpa 2.3,  db kowais, wa5ed time managmenent as a challenge benesbalo', NULL, '2018-10-12 18:22:44'),
(253, 253, 2, 23, NULL, NULL, '2018-10-12 17:54:15'),
(254, 254, 2, 68, 'Good candidate. Unsure about commitment', NULL, '2018-10-12 18:22:46'),
(255, 255, 2, 40, NULL, NULL, '2018-10-12 17:41:14'),
(256, 256, 1, 84, 'Good candidate. Some commitment issues', NULL, '2018-10-12 18:18:13'),
(257, 257, 2, 0, NULL, NULL, '2018-10-12 17:29:39'),
(258, 258, 2, 37, NULL, NULL, '2018-10-12 16:43:46'),
(259, 259, 2, 63, 'Not accepted', NULL, '2018-10-12 17:15:45'),
(260, 260, 2, 40, NULL, NULL, '2018-10-12 17:15:48'),
(261, 261, 2, 0, NULL, NULL, '2018-10-12 12:29:02'),
(262, 262, 2, 0, NULL, NULL, '2018-10-12 12:24:14'),
(263, 263, 2, 63, 'pending', NULL, '2018-10-12 12:29:58'),
(264, 264, 2, 0, NULL, NULL, '2018-10-12 12:26:12'),
(265, 265, 2, 0, NULL, NULL, '2018-10-11 19:06:49'),
(266, 266, 2, 0, NULL, NULL, '2018-10-12 12:30:06'),
(267, 267, 2, 0, NULL, NULL, '2018-10-12 12:25:54'),
(268, 268, 0, 0, NULL, NULL, NULL),
(269, 269, 2, 0, NULL, NULL, '2018-10-12 16:41:48'),
(270, 270, 2, 0, NULL, NULL, '2018-10-12 16:44:39'),
(271, 271, 2, 36, '-mainly da5el sms 3ashan yet3alem 3an el stocks mesh IT, priority lel gam3a', NULL, '2018-10-12 16:42:10'),
(272, 272, 0, 0, NULL, NULL, NULL),
(273, 273, 2, 0, NULL, NULL, '2018-10-13 21:10:43'),
(274, 274, 2, 0, NULL, NULL, '2018-10-12 16:45:28'),
(275, 275, 1, 91, 'pending', NULL, '2018-10-12 12:27:09'),
(276, 276, 2, 0, NULL, NULL, '2018-10-12 16:54:35'),
(277, 277, 2, 43, 'No', NULL, '2018-10-12 16:42:06'),
(278, 279, 2, 0, NULL, NULL, '2018-10-12 12:29:30'),
(279, 278, 2, 0, NULL, NULL, '2018-10-12 12:29:28'),
(280, 280, 2, 66, 'pending', NULL, '2018-10-12 12:25:28'),
(281, 281, 2, 0, NULL, NULL, '2018-10-12 12:28:30'),
(282, 282, 2, 0, NULL, NULL, '2018-10-12 12:24:51'),
(283, 283, 2, 0, NULL, NULL, '2018-10-12 12:24:48'),
(284, 284, 2, 0, NULL, NULL, '2018-10-12 16:41:45'),
(285, 285, 2, 0, NULL, NULL, '2018-10-12 16:54:21'),
(286, 286, 2, 0, NULL, NULL, '2018-10-12 12:27:57'),
(287, 287, 1, 100, 'Pending', NULL, '2018-10-14 23:50:22'),
(288, 288, 2, 0, NULL, NULL, '2018-10-12 16:54:38'),
(289, 289, 2, 0, NULL, NULL, '2018-10-12 16:47:40'),
(290, 290, 2, 0, NULL, NULL, '2018-10-12 17:29:33'),
(291, 291, 2, 63, 'Strong and confident person', NULL, '2018-10-12 17:29:24'),
(292, 292, 2, 0, NULL, NULL, '2018-10-12 16:54:10'),
(293, 293, 2, 40, NULL, NULL, '2018-10-12 16:54:29'),
(294, 294, 1, 0, NULL, NULL, '2018-10-12 18:00:48'),
(295, 295, 1, 97, NULL, NULL, '2018-10-12 17:15:56'),
(296, 296, 2, 0, NULL, NULL, '2018-10-12 16:43:35'),
(297, 297, 2, 29, NULL, NULL, '2018-10-12 16:46:44'),
(298, 298, 2, 43, NULL, NULL, '2018-10-12 17:15:43'),
(299, 299, 2, 0, NULL, NULL, '2018-10-12 16:49:24'),
(300, 300, 2, 0, NULL, NULL, '2018-10-13 21:15:24'),
(301, 301, 2, 0, NULL, NULL, '2018-10-12 17:29:13'),
(302, 302, 1, 94, 'pending', NULL, '2018-10-12 12:29:46'),
(303, 303, 1, 0, NULL, NULL, '2018-10-13 21:15:19'),
(304, 304, 2, 0, NULL, NULL, '2018-10-12 16:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `committees`
--

CREATE TABLE `committees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `committees`
--

INSERT INTO `committees` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'IT', '2018-10-05 14:42:08', '2018-10-05 14:42:08'),
(2, 'Coordination', '2018-10-05 14:42:23', '2018-10-05 14:42:23'),
(3, 'Public Relations', '2018-10-05 14:42:32', '2018-10-05 14:42:32'),
(4, 'Academic Committee', '2018-10-05 14:42:44', '2018-10-05 14:42:44'),
(5, 'Multimedia', '2018-10-07 22:26:40', '2018-10-07 22:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(62, 11, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(63, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(64, 12, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(65, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(66, 12, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 4),
(67, 12, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, NULL, 5),
(68, 12, 'faculty_id', 'text', 'Faculty Id', 1, 1, 1, 1, 1, 1, NULL, 6),
(69, 12, 'student_id', 'text', 'Student Id', 1, 1, 1, 1, 1, 1, NULL, 8),
(70, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 9),
(71, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(72, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 11),
(73, 12, 'applicant_belongsto_faculty_relationship', 'relationship', 'faculties', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Faculty\",\"table\":\"faculties\",\"type\":\"belongsTo\",\"column\":\"faculty_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(75, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(76, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(77, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(78, 13, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(79, 13, 'start_time', 'text', 'Start Time', 1, 1, 1, 1, 1, 1, NULL, 3),
(81, 13, 'date', 'text', 'Date', 1, 1, 1, 1, 1, 1, NULL, 4),
(82, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 6),
(83, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 7),
(84, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(97, 16, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(98, 16, 'applicant_id', 'text', 'Applicant Id', 1, 1, 1, 1, 1, 1, NULL, 3),
(99, 16, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, NULL, 2),
(100, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(101, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(102, 16, 'applicant_status_belongsto_applicant_relationship', 'relationship', 'applicants', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Applicant\",\"table\":\"applicants\",\"type\":\"belongsTo\",\"column\":\"applicant_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicant_statuses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(104, 17, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(105, 17, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(106, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(107, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(108, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(109, 19, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(110, 19, 'committee_id', 'text', 'Committee Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(111, 19, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(112, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(113, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 6),
(114, 19, 'user_committee_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicant_statuses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(115, 19, 'user_committee_belongsto_committee_relationship', 'relationship', 'committees', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Committee\",\"table\":\"committees\",\"type\":\"belongsTo\",\"column\":\"committee_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicant_statuses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(121, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(122, 21, 'applicant_id', 'text', 'Applicant Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(123, 21, 'interview_time_id', 'text', 'Interview Time Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(124, 21, 'interview_detail_belongsto_applicant_relationship', 'relationship', 'applicants', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Applicant\",\"table\":\"applicants\",\"type\":\"belongsTo\",\"column\":\"applicant_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicant_statuses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(125, 21, 'interview_detail_belongsto_interview_time_relationship', 'relationship', 'interview_times', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\InterviewTime\",\"table\":\"interview_times\",\"type\":\"belongsTo\",\"column\":\"interview_time_id\",\"key\":\"id\",\"label\":\"start_time\",\"pivot_table\":\"applicant_statuses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(126, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(127, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(128, 13, 'interview_time_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicant_statuses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(130, 12, 'applicant_belongsto_committee_relationship', 'relationship', 'committees', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Committee\",\"table\":\"committees\",\"type\":\"belongsTo\",\"column\":\"committee_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicant_statuses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(131, 12, 'committee_id', 'text', 'Committee Id', 0, 1, 1, 1, 1, 1, NULL, 7),
(132, 16, 'score', 'text', 'Score', 1, 1, 1, 1, 1, 1, NULL, 4),
(133, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(134, 22, 'committee_id', 'text', 'Committee Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(135, 22, 'text', 'text', 'Text', 1, 1, 1, 1, 1, 1, NULL, 3),
(151, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(152, 28, 'committee_id', 'text', 'Committee Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(153, 28, 'text', 'text', 'Text', 0, 1, 1, 1, 1, 1, NULL, 3),
(154, 28, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(155, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(156, 28, 'interview_question_belongsto_committee_relationship', 'relationship', 'committees', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Committee\",\"table\":\"committees\",\"type\":\"belongsTo\",\"column\":\"committee_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicant_statuses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(157, 16, 'feedback', 'text', 'Feedback', 0, 1, 1, 1, 1, 1, NULL, 5),
(158, 12, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-10-02 18:04:08', '2018-10-02 18:04:08'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(11, 'faculties', 'faculties', 'Faculty', 'Faculties', 'voyager-shop', 'App\\Faculty', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\"}', '2018-10-05 11:38:29', '2018-10-05 15:16:11'),
(12, 'applicants', 'applicants', 'Applicant', 'Applicants', 'voyager-people', 'App\\Applicant', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\"}', '2018-10-05 11:41:14', '2018-10-05 11:41:14'),
(13, 'interview_times', 'interview-times', 'Interview Time', 'Interview Times', 'voyager-alarm-clock', 'App\\InterviewTime', NULL, NULL, 'This table holds details for interviewers\' schedule.', 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-05 11:57:53', '2018-10-05 11:57:53'),
(16, 'applicant_statuses', 'applicant-statuses', 'Applicant Status', 'Applicant Statuses', 'voyager-check', 'App\\ApplicantStatus', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-05 12:55:56', '2018-10-05 12:55:56'),
(17, 'committees', 'committees', 'Committee', 'Committees', 'voyager-documentation', 'App\\Committee', NULL, NULL, 'This table holds information for all committees.', 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-05 14:41:56', '2018-10-05 14:41:56'),
(18, 'user_committee', 'user-committee', 'User Committee', 'User Committees', NULL, 'App\\UserCommittee', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-05 14:44:55', '2018-10-05 14:44:55'),
(19, 'user_committees', 'user-committees', 'User Committee', 'User Committees', 'voyager-credit-card', 'App\\UserCommittee', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-05 14:46:11', '2018-10-05 14:46:11'),
(21, 'interview_details', 'interview-details', 'Interview Detail', 'Interview Details', 'voyager-list', 'App\\InterviewDetail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-05 14:59:16', '2018-10-05 14:59:16'),
(22, 'questions', 'questions', 'Question', 'Questions', NULL, 'App\\Question', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-06 08:02:00', '2018-10-06 08:02:00'),
(28, 'interview_questions', 'interview-questions', 'Interview Question', 'Interview Questions', 'voyager-question', 'App\\InterviewQuestion', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-06 08:56:47', '2018-10-06 08:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CSC', '2018-10-05 11:39:37', '2018-10-05 11:39:37'),
(2, 'ALS', '2018-10-05 11:49:53', '2018-10-05 11:49:53'),
(3, 'MCM', '2018-10-05 11:52:20', '2018-10-05 11:52:20'),
(4, 'BUS', '2018-10-05 11:52:36', '2018-10-05 11:52:36'),
(5, 'ECE', '2018-10-05 11:52:48', '2018-10-05 11:52:48'),
(6, 'DNT', '2018-10-05 11:53:01', '2018-10-05 11:53:01'),
(7, 'PHR', '2018-10-05 11:53:10', '2018-10-05 11:53:10'),
(8, 'ARC', '2018-10-05 11:53:18', '2018-10-05 11:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `interview_details`
--

CREATE TABLE `interview_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `interview_time_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interview_details`
--

INSERT INTO `interview_details` (`id`, `applicant_id`, `interview_time_id`, `created_at`, `updated_at`) VALUES
(4, 4, 424, NULL, NULL),
(5, 5, 415, NULL, NULL),
(6, 6, 425, NULL, NULL),
(7, 7, 352, NULL, NULL),
(8, 8, 235, NULL, NULL),
(9, 9, 194, NULL, NULL),
(10, 10, 620, NULL, NULL),
(11, 11, 195, NULL, NULL),
(12, 12, 451, NULL, NULL),
(13, 13, 211, NULL, NULL),
(14, 14, 753, NULL, NULL),
(15, 15, 206, NULL, NULL),
(16, 16, 183, NULL, NULL),
(17, 17, 404, NULL, NULL),
(18, 18, 212, NULL, NULL),
(19, 19, 356, NULL, NULL),
(20, 20, 556, NULL, NULL),
(21, 21, 385, NULL, NULL),
(22, 22, 358, NULL, NULL),
(23, 23, 386, NULL, NULL),
(24, 24, 275, NULL, NULL),
(25, 25, 306, NULL, NULL),
(26, 26, 262, NULL, NULL),
(27, 27, 171, NULL, NULL),
(28, 28, 423, NULL, NULL),
(29, 29, 351, NULL, NULL),
(30, 30, 520, NULL, NULL),
(31, 31, 521, NULL, NULL),
(32, 32, 553, NULL, NULL),
(33, 33, 501, NULL, NULL),
(34, 34, 353, NULL, NULL),
(35, 35, 403, NULL, NULL),
(36, 36, 201, NULL, NULL),
(37, 37, 300, NULL, NULL),
(38, 38, 512, NULL, NULL),
(39, 39, 369, NULL, NULL),
(40, 40, 402, NULL, NULL),
(41, 41, 349, NULL, NULL),
(42, 42, 448, NULL, NULL),
(43, 43, 350, NULL, NULL),
(44, 44, 443, NULL, NULL),
(45, 45, 450, NULL, NULL),
(46, 46, 452, NULL, NULL),
(47, 47, 452, NULL, NULL),
(48, 48, 153, NULL, NULL),
(49, 49, 207, NULL, NULL),
(50, 50, 202, NULL, NULL),
(51, 51, 380, NULL, NULL),
(52, 52, 208, NULL, NULL),
(53, 53, 203, NULL, NULL),
(54, 54, 379, NULL, NULL),
(55, 55, 405, NULL, NULL),
(56, 56, 407, NULL, NULL),
(57, 57, 359, NULL, NULL),
(58, 58, 453, NULL, NULL),
(59, 59, 210, NULL, NULL),
(60, 60, 193, NULL, NULL),
(61, 61, 577, NULL, NULL),
(62, 62, 490, NULL, NULL),
(63, 63, 574, NULL, NULL),
(64, 64, 491, NULL, NULL),
(65, 65, 439, NULL, NULL),
(66, 66, 242, NULL, NULL),
(67, 67, 422, NULL, NULL),
(68, 68, 412, NULL, NULL),
(69, 69, 400, NULL, NULL),
(70, 70, 383, NULL, NULL),
(71, 71, 381, NULL, NULL),
(72, 72, 272, NULL, NULL),
(73, 73, 273, NULL, NULL),
(74, 74, 362, NULL, NULL),
(75, 75, 505, NULL, NULL),
(76, 76, 176, NULL, NULL),
(77, 77, 454, NULL, NULL),
(78, 78, 455, NULL, NULL),
(79, 79, 209, NULL, NULL),
(80, 80, 361, NULL, NULL),
(81, 81, 363, NULL, NULL),
(82, 82, 364, NULL, NULL),
(83, 83, 365, NULL, NULL),
(84, 84, 366, NULL, NULL),
(85, 85, 557, NULL, NULL),
(86, 86, 558, NULL, NULL),
(87, 87, 559, NULL, NULL),
(88, 88, 382, NULL, NULL),
(89, 89, 186, NULL, NULL),
(90, 90, 377, NULL, NULL),
(91, 91, 357, NULL, NULL),
(92, 92, 575, NULL, NULL),
(93, 93, 355, NULL, NULL),
(94, 94, 213, NULL, NULL),
(95, 95, 214, NULL, NULL),
(96, 96, 457, NULL, NULL),
(97, 97, 458, NULL, NULL),
(98, 98, 459, NULL, NULL),
(99, 99, 215, NULL, NULL),
(100, 100, 360, NULL, NULL),
(101, 101, 446, NULL, NULL),
(102, 102, 504, NULL, NULL),
(103, 103, 378, NULL, NULL),
(104, 104, 560, NULL, NULL),
(105, 105, 410, NULL, NULL),
(106, 106, 370, NULL, NULL),
(107, 107, 371, NULL, NULL),
(108, 108, 530, NULL, NULL),
(109, 109, 517, NULL, NULL),
(110, 110, 409, NULL, NULL),
(111, 111, 526, NULL, NULL),
(112, 112, 456, NULL, NULL),
(113, 113, 408, NULL, NULL),
(114, 114, 508, NULL, NULL),
(115, 115, 576, NULL, NULL),
(116, 116, 522, NULL, NULL),
(117, 117, 368, NULL, NULL),
(118, 118, 372, NULL, NULL),
(119, 119, 191, NULL, NULL),
(120, 120, 440, NULL, NULL),
(121, 121, 411, NULL, NULL),
(122, 122, 387, NULL, NULL),
(123, 123, 463, NULL, NULL),
(124, 124, 464, NULL, NULL),
(125, 125, 373, NULL, NULL),
(126, 126, 510, NULL, NULL),
(127, 127, 468, NULL, NULL),
(128, 128, 164, NULL, NULL),
(129, 129, 523, NULL, NULL),
(130, 130, 561, NULL, NULL),
(131, 131, 426, NULL, NULL),
(132, 132, 427, NULL, NULL),
(133, 133, 269, NULL, NULL),
(134, 134, 413, NULL, NULL),
(135, 135, 525, NULL, NULL),
(136, 136, 199, NULL, NULL),
(137, 137, 562, NULL, NULL),
(138, 138, 367, NULL, NULL),
(139, 139, 340, NULL, NULL),
(140, 140, 374, NULL, NULL),
(141, 141, 538, NULL, NULL),
(142, 142, 539, NULL, NULL),
(143, 143, 573, NULL, NULL),
(144, 144, 190, NULL, NULL),
(145, 145, 180, NULL, NULL),
(146, 146, 519, NULL, NULL),
(147, 147, 376, NULL, NULL),
(148, 148, 421, NULL, NULL),
(149, 149, 414, NULL, NULL),
(150, 150, 277, NULL, NULL),
(151, 151, 572, NULL, NULL),
(152, 152, 571, NULL, NULL),
(153, 153, 554, NULL, NULL),
(154, 154, 465, NULL, NULL),
(155, 155, 442, NULL, NULL),
(156, 156, 524, NULL, NULL),
(157, 157, 544, NULL, NULL),
(158, 158, 420, NULL, NULL),
(159, 159, 416, NULL, NULL),
(160, 160, 192, NULL, NULL),
(161, 161, 417, NULL, NULL),
(162, 162, 396, NULL, NULL),
(163, 163, 467, NULL, NULL),
(164, 164, 428, NULL, NULL),
(165, 165, 429, NULL, NULL),
(166, 166, 430, NULL, NULL),
(167, 167, 466, NULL, NULL),
(168, 168, 441, NULL, NULL),
(169, 169, 529, NULL, NULL),
(170, 170, 578, NULL, NULL),
(171, 171, 281, NULL, NULL),
(172, 172, 528, NULL, NULL),
(173, 173, 418, NULL, NULL),
(174, 174, 431, NULL, NULL),
(175, 175, 564, NULL, NULL),
(176, 176, 578, NULL, NULL),
(177, 177, 565, NULL, NULL),
(178, 178, 354, NULL, NULL),
(179, 179, 566, NULL, NULL),
(180, 180, 375, NULL, NULL),
(181, 181, 547, NULL, NULL),
(182, 182, 447, NULL, NULL),
(183, 183, 187, NULL, NULL),
(184, 184, 197, NULL, NULL),
(185, 185, 389, NULL, NULL),
(186, 186, 527, NULL, NULL),
(187, 187, 419, NULL, NULL),
(188, 188, 436, NULL, NULL),
(189, 189, 184, NULL, NULL),
(190, 190, 545, NULL, NULL),
(191, 191, 579, NULL, NULL),
(192, 192, 449, NULL, NULL),
(193, 193, 460, NULL, NULL),
(194, 194, 384, NULL, NULL),
(195, 195, 570, NULL, NULL),
(196, 196, 39, NULL, NULL),
(197, 197, 569, NULL, NULL),
(198, 198, 394, NULL, NULL),
(199, 199, 397, NULL, NULL),
(200, 200, 437, NULL, NULL),
(201, 201, 546, NULL, NULL),
(202, 202, 568, NULL, NULL),
(203, 203, 393, NULL, NULL),
(204, 204, 735, NULL, NULL),
(205, 205, 736, NULL, NULL),
(206, 206, 470, NULL, NULL),
(207, 207, 445, NULL, NULL),
(208, 208, 532, NULL, NULL),
(209, 209, 533, NULL, NULL),
(210, 210, 291, NULL, NULL),
(211, 211, 444, NULL, NULL),
(212, 212, 123, NULL, NULL),
(213, 213, 392, NULL, NULL),
(214, 214, 540, NULL, NULL),
(215, 215, 395, NULL, NULL),
(216, 216, 555, NULL, NULL),
(217, 217, 496, NULL, NULL),
(218, 218, 399, NULL, NULL),
(219, 219, 401, NULL, NULL),
(220, 220, 398, NULL, NULL),
(221, 221, 563, NULL, NULL),
(222, 222, 535, NULL, NULL),
(223, 223, 391, NULL, NULL),
(224, 224, 390, NULL, NULL),
(225, 225, 138, NULL, NULL),
(226, 226, 433, NULL, NULL),
(227, 227, 438, NULL, NULL),
(228, 228, 534, NULL, NULL),
(229, 229, 84, NULL, NULL),
(230, 230, 471, NULL, NULL),
(231, 231, 461, NULL, NULL),
(232, 232, 339, NULL, NULL),
(233, 233, 462, NULL, NULL),
(234, 234, 472, NULL, NULL),
(235, 235, 305, NULL, NULL),
(236, 236, 567, NULL, NULL),
(237, 237, 531, NULL, NULL),
(238, 238, 406, NULL, NULL),
(239, 239, 135, NULL, NULL),
(240, 240, 388, NULL, NULL),
(241, 241, 432, NULL, NULL),
(242, 242, 301, NULL, NULL),
(243, 243, 550, NULL, NULL),
(244, 244, 434, NULL, NULL),
(245, 245, 435, NULL, NULL),
(246, 246, 477, NULL, NULL),
(247, 247, 139, NULL, NULL),
(248, 248, 473, NULL, NULL),
(249, 249, 551, NULL, NULL),
(250, 250, 299, NULL, NULL),
(251, 251, 536, NULL, NULL),
(252, 252, 88, NULL, NULL),
(253, 253, 474, NULL, NULL),
(254, 254, 142, NULL, NULL),
(255, 255, 475, NULL, NULL),
(256, 256, 85, NULL, NULL),
(257, 257, 476, NULL, NULL),
(258, 258, 343, NULL, NULL),
(259, 259, 343, NULL, NULL),
(260, 260, 344, NULL, NULL),
(261, 261, 537, NULL, NULL),
(262, 262, 543, NULL, NULL),
(263, 263, 541, NULL, NULL),
(264, 264, 542, NULL, NULL),
(265, 265, 56, NULL, NULL),
(266, 266, 548, NULL, NULL),
(267, 267, 497, NULL, NULL),
(268, 268, 341, NULL, NULL),
(269, 269, 342, NULL, NULL),
(270, 270, 347, NULL, NULL),
(271, 271, 156, NULL, NULL),
(272, 272, 338, NULL, NULL),
(273, 273, 323, NULL, NULL),
(274, 274, 345, NULL, NULL),
(275, 275, 549, NULL, NULL),
(276, 276, 348, NULL, NULL),
(277, 277, 346, NULL, NULL),
(278, 279, 552, NULL, NULL),
(279, 278, 552, NULL, NULL),
(280, 280, 498, NULL, NULL),
(281, 281, 499, NULL, NULL),
(282, 282, 502, NULL, NULL),
(283, 283, 500, NULL, NULL),
(284, 284, 200, NULL, NULL),
(285, 285, 218, NULL, NULL),
(286, 286, 509, NULL, NULL),
(287, 287, 513, NULL, NULL),
(288, 288, 724, NULL, NULL),
(289, 289, 725, NULL, NULL),
(290, 290, 726, NULL, NULL),
(291, 291, 727, NULL, NULL),
(292, 292, 733, NULL, NULL),
(293, 293, 729, NULL, NULL),
(294, 294, 734, NULL, NULL),
(295, 295, 732, NULL, NULL),
(296, 296, 739, NULL, NULL),
(297, 297, 737, NULL, NULL),
(298, 298, 741, NULL, NULL),
(299, 299, 747, NULL, NULL),
(300, 300, 324, NULL, NULL),
(301, 301, 728, NULL, NULL),
(302, 302, 518, NULL, NULL),
(303, 303, 330, NULL, NULL),
(304, 304, 746, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interview_questions`
--

CREATE TABLE `interview_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interview_questions`
--

INSERT INTO `interview_questions` (`id`, `committee_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'What do you know about Stock Market Simulation (SMS MIU)?', '2018-10-06 09:15:02', '2018-10-06 09:15:02'),
(2, 3, 'What do you know about Stock Market Simulation (SMS MIU)?', '2018-10-06 09:18:50', '2018-10-06 09:18:50'),
(3, 3, 'Communication skills', '2018-10-06 09:24:49', '2018-10-06 09:24:49'),
(4, 5, 'Overall assessment', '2018-10-08 15:39:31', '2018-10-08 15:39:31'),
(10, 1, 'Background', '2018-10-09 09:48:48', '2018-10-09 09:48:48'),
(12, 1, 'Technical knowledge', '2018-10-09 09:49:07', '2018-10-09 09:49:07'),
(14, 1, 'Experience', '2018-10-09 09:49:20', '2018-10-09 09:49:20'),
(16, 1, 'Time management', '2018-10-09 11:25:19', '2018-10-10 01:16:47'),
(17, 4, 'Creativity', '2018-10-10 01:10:48', '2018-10-10 01:10:48'),
(19, 4, 'Commitment', '2018-10-10 01:10:56', '2018-10-10 01:10:56'),
(20, 4, 'Knowledge', '2018-10-10 01:11:07', '2018-10-10 01:11:07'),
(21, 4, 'Overall performance', '2018-10-10 01:11:40', '2018-10-10 01:11:40'),
(22, 3, 'Database knowledge', '2018-10-10 01:12:41', '2018-10-10 01:12:41'),
(23, 3, 'Presentation skills', '2018-10-10 01:12:55', '2018-10-10 01:12:55'),
(24, 3, 'Persuasion skills', '2018-10-10 01:13:10', '2018-10-10 01:13:10'),
(25, 3, 'Teamwork', '2018-10-10 01:13:29', '2018-10-10 01:13:29'),
(26, 3, 'Field experience', '2018-10-10 01:13:41', '2018-10-10 01:13:41'),
(27, 2, 'Leh SMS', '2018-10-10 01:14:04', '2018-10-10 01:14:04'),
(28, 2, 'Flexibility fel mawa3eed', '2018-10-10 01:14:22', '2018-10-10 01:14:28'),
(29, 2, 'Added value (leh a5dak)', '2018-10-10 01:14:49', '2018-10-10 01:14:49'),
(30, 2, 'Booth ideas', '2018-10-10 01:15:02', '2018-10-10 01:15:02'),
(31, 2, 'Ushering experience', '2018-10-10 01:15:16', '2018-10-10 01:15:16'),
(32, 2, 'Ersem 7aga', '2018-10-10 01:16:13', '2018-10-10 01:16:13'),
(33, 2, 'Rate yourself', '2018-10-10 01:16:23', '2018-10-10 01:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `interview_times`
--

CREATE TABLE `interview_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `date` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interview_times`
--

INSERT INTO `interview_times` (`id`, `user_id`, `start_time`, `date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, '12:00:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(2, 2, '12:10:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(3, 2, '12:20:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(4, 2, '12:30:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(5, 2, '12:40:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(6, 2, '12:50:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(7, 2, '13:00:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(8, 2, '13:10:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(9, 2, '13:20:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(10, 2, '13:30:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(11, 2, '13:40:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(12, 2, '13:50:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(13, 2, '14:00:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(14, 2, '14:10:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(15, 2, '14:20:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(16, 2, '14:30:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(17, 2, '14:40:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(18, 2, '14:50:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(19, 2, '15:00:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(20, 2, '15:10:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(21, 2, '15:20:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(22, 2, '15:30:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(23, 2, '15:40:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(24, 2, '15:50:00', '2018-10-08', NULL, '2018-10-08 00:36:02', '2018-10-08 00:36:02'),
(25, 2, '12:30:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(26, 2, '12:40:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(27, 2, '12:50:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(28, 2, '13:00:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(29, 2, '13:10:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(30, 2, '13:20:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(31, 2, '13:30:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(32, 2, '13:40:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(33, 2, '13:50:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(34, 2, '14:00:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(35, 2, '14:10:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(36, 2, '14:20:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(37, 2, '14:30:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(38, 2, '14:40:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(39, 2, '14:50:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(40, 2, '15:00:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(41, 2, '15:10:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(42, 2, '15:20:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(43, 2, '15:30:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(44, 2, '15:40:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(45, 2, '15:50:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(46, 2, '16:00:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(47, 2, '16:10:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(48, 2, '16:20:00', '2018-10-09', NULL, '2018-10-08 01:09:51', '2018-10-08 01:09:51'),
(49, 2, '12:30:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(50, 2, '12:40:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(51, 2, '12:50:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(52, 2, '13:00:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(53, 2, '13:10:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(54, 2, '13:20:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(55, 2, '13:30:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(56, 2, '13:40:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(57, 2, '13:50:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(58, 2, '14:00:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(59, 2, '14:10:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(60, 2, '14:20:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(61, 2, '14:30:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(62, 2, '14:40:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(63, 2, '14:50:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(64, 2, '15:00:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(65, 2, '15:10:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(66, 2, '15:20:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(67, 2, '15:30:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(68, 2, '15:40:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(69, 2, '15:50:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(70, 2, '16:00:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(71, 2, '16:10:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(72, 2, '16:20:00', '2018-10-10', NULL, '2018-10-08 01:10:11', '2018-10-08 01:10:11'),
(73, 2, '08:30:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(74, 2, '08:40:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(75, 2, '08:50:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(76, 2, '09:00:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(77, 2, '09:10:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(78, 2, '09:20:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(79, 2, '09:30:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(80, 2, '09:40:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(81, 2, '09:50:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(82, 2, '10:00:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(83, 2, '10:10:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(84, 2, '10:20:00', '2018-10-11', NULL, '2018-10-08 01:10:36', '2018-10-08 01:10:36'),
(85, 2, '12:30:00', '2018-10-11', NULL, '2018-10-08 01:11:10', '2018-10-08 01:11:10'),
(86, 2, '12:40:00', '2018-10-11', NULL, '2018-10-08 01:11:10', '2018-10-08 01:11:10'),
(87, 2, '12:50:00', '2018-10-11', NULL, '2018-10-08 01:11:10', '2018-10-08 01:11:10'),
(88, 2, '13:00:00', '2018-10-11', NULL, '2018-10-08 01:11:10', '2018-10-08 01:11:10'),
(89, 2, '13:10:00', '2018-10-11', NULL, '2018-10-08 01:11:10', '2018-10-08 01:11:10'),
(90, 2, '15:00:00', '2018-10-11', NULL, '2018-10-08 01:11:39', '2018-10-08 01:11:39'),
(91, 2, '15:10:00', '2018-10-11', NULL, '2018-10-08 01:11:39', '2018-10-08 01:11:39'),
(92, 2, '15:20:00', '2018-10-11', NULL, '2018-10-08 01:11:39', '2018-10-08 01:11:39'),
(93, 2, '15:30:00', '2018-10-11', NULL, '2018-10-08 01:11:39', '2018-10-08 01:11:39'),
(94, 2, '15:40:00', '2018-10-11', NULL, '2018-10-08 01:11:39', '2018-10-08 01:11:39'),
(95, 2, '15:50:00', '2018-10-11', NULL, '2018-10-08 01:11:39', '2018-10-08 01:11:39'),
(96, 2, '16:00:00', '2018-10-11', NULL, '2018-10-08 01:11:39', '2018-10-08 01:11:39'),
(97, 2, '16:10:00', '2018-10-11', NULL, '2018-10-08 01:11:39', '2018-10-08 01:11:39'),
(98, 2, '16:20:00', '2018-10-11', NULL, '2018-10-08 01:11:39', '2018-10-08 01:11:39'),
(99, 3, '11:00:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(100, 3, '11:10:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(101, 3, '11:20:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(102, 3, '11:30:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(103, 3, '11:40:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(104, 3, '11:50:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(105, 3, '12:00:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(106, 3, '12:10:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(107, 3, '12:20:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(108, 3, '12:30:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(109, 3, '12:40:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(110, 3, '12:50:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(111, 3, '13:00:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(112, 3, '13:10:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(113, 3, '13:20:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(114, 3, '13:30:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(115, 3, '13:40:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(116, 3, '13:50:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(117, 3, '14:00:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(118, 3, '14:10:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(119, 3, '14:20:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(120, 3, '14:30:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(121, 3, '14:40:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(122, 3, '14:50:00', '2018-10-08', NULL, '2018-10-08 01:53:41', '2018-10-08 01:53:41'),
(123, 3, '09:30:00', '2018-10-09', NULL, '2018-10-08 01:54:31', '2018-10-08 01:54:31'),
(124, 3, '09:40:00', '2018-10-09', NULL, '2018-10-08 01:54:31', '2018-10-08 01:54:31'),
(125, 3, '09:50:00', '2018-10-09', NULL, '2018-10-08 01:54:31', '2018-10-08 01:54:31'),
(126, 3, '10:00:00', '2018-10-09', NULL, '2018-10-08 01:54:31', '2018-10-08 01:54:31'),
(127, 3, '10:10:00', '2018-10-09', NULL, '2018-10-08 01:54:31', '2018-10-08 01:54:31'),
(128, 3, '10:20:00', '2018-10-09', NULL, '2018-10-08 01:54:31', '2018-10-08 01:54:31'),
(129, 3, '14:30:00', '2018-10-09', NULL, '2018-10-08 01:54:50', '2018-10-08 01:54:50'),
(130, 3, '14:40:00', '2018-10-09', NULL, '2018-10-08 01:54:50', '2018-10-08 01:54:50'),
(131, 3, '14:50:00', '2018-10-09', NULL, '2018-10-08 01:54:50', '2018-10-08 01:54:50'),
(132, 3, '11:30:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(133, 3, '11:40:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(134, 3, '11:50:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(135, 3, '12:00:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(136, 3, '12:10:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(137, 3, '12:20:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(138, 3, '12:30:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(139, 3, '12:40:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(140, 3, '12:50:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(141, 3, '13:00:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(142, 3, '13:10:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(143, 3, '13:20:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(144, 3, '13:30:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(145, 3, '13:40:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(146, 3, '13:50:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(147, 3, '14:00:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(148, 3, '14:10:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(149, 3, '14:20:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(150, 3, '14:30:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(151, 3, '14:40:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(152, 3, '14:50:00', '2018-10-10', NULL, '2018-10-08 01:55:11', '2018-10-08 01:55:11'),
(153, 3, '12:30:00', '2018-10-11', NULL, '2018-10-08 01:55:53', '2018-10-08 01:55:53'),
(154, 3, '12:40:00', '2018-10-11', NULL, '2018-10-08 01:55:53', '2018-10-08 01:55:53'),
(155, 3, '12:50:00', '2018-10-11', NULL, '2018-10-08 01:55:53', '2018-10-08 01:55:53'),
(156, 3, '13:00:00', '2018-10-11', NULL, '2018-10-08 01:55:53', '2018-10-08 01:55:53'),
(157, 3, '13:10:00', '2018-10-11', NULL, '2018-10-08 01:55:53', '2018-10-08 01:55:53'),
(158, 3, '15:00:00', '2018-10-11', NULL, '2018-10-08 01:56:41', '2018-10-08 01:56:41'),
(159, 3, '15:10:00', '2018-10-11', NULL, '2018-10-08 01:56:41', '2018-10-08 01:56:41'),
(160, 3, '15:20:00', '2018-10-11', NULL, '2018-10-08 01:56:41', '2018-10-08 01:56:41'),
(161, 3, '15:30:00', '2018-10-11', NULL, '2018-10-08 01:56:41', '2018-10-08 01:56:41'),
(162, 3, '15:40:00', '2018-10-11', NULL, '2018-10-08 01:56:41', '2018-10-08 01:56:41'),
(163, 3, '15:50:00', '2018-10-11', NULL, '2018-10-08 01:56:41', '2018-10-08 01:56:41'),
(164, 11, '12:00:00', '2018-10-08', NULL, '2018-10-08 10:41:00', '2018-10-08 10:41:00'),
(165, 11, '12:45:00', '2018-10-08', NULL, '2018-10-08 10:41:00', '2018-10-08 10:41:00'),
(166, 11, '13:30:00', '2018-10-08', NULL, '2018-10-08 10:41:00', '2018-10-08 10:41:00'),
(167, 11, '14:15:00', '2018-10-08', NULL, '2018-10-08 10:41:00', '2018-10-08 10:41:00'),
(168, 11, '15:00:00', '2018-10-08', NULL, '2018-10-08 10:41:00', '2018-10-08 10:41:00'),
(169, 11, '15:45:00', '2018-10-08', NULL, '2018-10-08 10:41:00', '2018-10-08 10:41:00'),
(170, 11, '09:15:00', '2018-10-09', NULL, '2018-10-08 10:44:21', '2018-10-08 10:44:21'),
(171, 11, '10:00:00', '2018-10-09', NULL, '2018-10-08 10:44:21', '2018-10-08 10:44:21'),
(172, 11, '10:45:00', '2018-10-09', NULL, '2018-10-08 10:44:21', '2018-10-08 10:44:21'),
(173, 11, '11:30:00', '2018-10-09', NULL, '2018-10-08 10:44:21', '2018-10-08 10:44:21'),
(174, 11, '12:15:00', '2018-10-09', NULL, '2018-10-08 10:44:21', '2018-10-08 10:44:21'),
(175, 11, '13:00:00', '2018-10-09', NULL, '2018-10-08 10:44:21', '2018-10-08 10:44:21'),
(176, 11, '13:45:00', '2018-10-09', NULL, '2018-10-08 10:44:21', '2018-10-08 10:44:21'),
(177, 11, '14:30:00', '2018-10-09', NULL, '2018-10-08 10:44:21', '2018-10-08 10:44:21'),
(178, 11, '15:15:00', '2018-10-09', NULL, '2018-10-08 10:44:21', '2018-10-08 10:44:21'),
(179, 11, '16:00:00', '2018-10-09', NULL, '2018-10-08 10:44:21', '2018-10-08 10:44:21'),
(180, 11, '09:15:00', '2018-10-10', NULL, '2018-10-08 10:48:04', '2018-10-08 10:48:04'),
(181, 11, '10:00:00', '2018-10-10', NULL, '2018-10-08 10:48:04', '2018-10-08 10:48:04'),
(182, 11, '10:45:00', '2018-10-10', NULL, '2018-10-08 10:48:04', '2018-10-08 10:48:04'),
(183, 11, '11:30:00', '2018-10-10', NULL, '2018-10-08 10:48:04', '2018-10-08 10:48:04'),
(184, 11, '12:15:00', '2018-10-10', NULL, '2018-10-08 10:48:04', '2018-10-08 10:48:04'),
(185, 11, '13:00:00', '2018-10-10', NULL, '2018-10-08 10:48:04', '2018-10-08 10:48:04'),
(186, 11, '13:45:00', '2018-10-10', NULL, '2018-10-08 10:48:04', '2018-10-08 10:48:04'),
(187, 11, '14:30:00', '2018-10-10', NULL, '2018-10-08 10:48:04', '2018-10-08 10:48:04'),
(188, 11, '15:15:00', '2018-10-10', NULL, '2018-10-08 10:48:04', '2018-10-08 10:48:04'),
(189, 11, '16:00:00', '2018-10-10', NULL, '2018-10-08 10:48:04', '2018-10-08 10:48:04'),
(190, 11, '09:15:00', '2018-10-11', NULL, '2018-10-08 10:49:11', '2018-10-08 10:49:11'),
(191, 11, '10:00:00', '2018-10-11', NULL, '2018-10-08 10:49:11', '2018-10-08 10:49:11'),
(192, 11, '10:45:00', '2018-10-11', NULL, '2018-10-08 10:49:11', '2018-10-08 10:49:11'),
(193, 11, '11:30:00', '2018-10-11', NULL, '2018-10-08 10:49:11', '2018-10-08 10:49:11'),
(194, 11, '12:15:00', '2018-10-11', NULL, '2018-10-08 10:49:11', '2018-10-08 10:49:11'),
(195, 11, '13:00:00', '2018-10-11', NULL, '2018-10-08 10:49:11', '2018-10-08 10:49:11'),
(196, 11, '13:45:00', '2018-10-11', NULL, '2018-10-08 10:49:11', '2018-10-08 10:49:11'),
(197, 11, '14:30:00', '2018-10-11', NULL, '2018-10-08 10:49:11', '2018-10-08 10:49:11'),
(198, 11, '15:15:00', '2018-10-11', NULL, '2018-10-08 10:49:11', '2018-10-08 10:49:11'),
(199, 11, '16:00:00', '2018-10-11', NULL, '2018-10-08 10:49:11', '2018-10-08 10:49:11'),
(200, 6, '13:00:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(201, 6, '13:10:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(202, 6, '13:20:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(203, 6, '13:30:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(204, 6, '13:40:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(205, 6, '13:50:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(206, 6, '14:00:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(207, 6, '14:10:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(208, 6, '14:20:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(209, 6, '14:30:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(210, 6, '14:40:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(211, 6, '14:50:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(212, 6, '15:00:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(213, 6, '15:10:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(214, 6, '15:20:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(215, 6, '15:30:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(216, 6, '15:40:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(217, 6, '15:50:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(218, 6, '16:00:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(219, 6, '16:10:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(220, 6, '16:20:00', '2018-10-08', NULL, '2018-10-08 10:49:59', '2018-10-08 10:49:59'),
(221, 8, '10:00:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(222, 8, '10:10:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(223, 8, '10:20:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(224, 8, '10:30:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(225, 8, '10:40:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(226, 8, '10:50:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(227, 8, '11:00:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(228, 8, '11:10:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(229, 8, '11:20:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(230, 8, '11:30:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(231, 8, '11:40:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(232, 8, '11:50:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(233, 8, '12:00:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(234, 8, '12:10:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(235, 8, '12:20:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(236, 8, '12:30:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(237, 8, '12:40:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(238, 8, '12:50:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(239, 8, '13:00:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(240, 8, '13:10:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(241, 8, '13:20:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(242, 8, '13:30:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(243, 8, '13:40:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(244, 8, '13:50:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(245, 8, '14:00:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(246, 8, '14:10:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(247, 8, '14:20:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(248, 8, '14:30:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(249, 8, '14:40:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(250, 8, '14:50:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(251, 8, '15:00:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(252, 8, '15:10:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(253, 8, '15:20:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(254, 8, '15:30:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(255, 8, '15:40:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(256, 8, '15:50:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(257, 8, '16:00:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(258, 8, '16:10:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(259, 8, '16:20:00', '2018-10-08', NULL, '2018-10-08 13:10:51', '2018-10-08 13:10:51'),
(260, 8, '10:00:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(261, 8, '10:10:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(262, 8, '10:20:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(263, 8, '10:30:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(264, 8, '10:40:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(265, 8, '10:50:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(266, 8, '11:00:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(267, 8, '11:10:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(268, 8, '11:20:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(269, 8, '11:30:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(270, 8, '11:40:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(271, 8, '11:50:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(272, 8, '12:00:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(273, 8, '12:10:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(274, 8, '12:20:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(275, 8, '12:30:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(276, 8, '12:40:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(277, 8, '12:50:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(278, 8, '13:00:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(279, 8, '13:10:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(280, 8, '13:20:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(281, 8, '13:30:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(282, 8, '13:40:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(283, 8, '13:50:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(284, 8, '14:00:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(285, 8, '14:10:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(286, 8, '14:20:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(287, 8, '14:30:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(288, 8, '14:40:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(289, 8, '14:50:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(290, 8, '15:00:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(291, 8, '15:10:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(292, 8, '15:20:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(293, 8, '15:30:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(294, 8, '15:40:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(295, 8, '15:50:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(296, 8, '16:00:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(297, 8, '16:10:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(298, 8, '16:20:00', '2018-10-09', NULL, '2018-10-08 13:11:27', '2018-10-08 13:11:27'),
(299, 8, '12:00:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(300, 8, '12:10:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(301, 8, '12:20:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(302, 8, '12:30:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(303, 8, '12:40:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(304, 8, '12:50:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(305, 8, '13:00:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(306, 8, '13:10:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(307, 8, '13:20:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(308, 8, '13:30:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(309, 8, '13:40:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(310, 8, '13:50:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(311, 8, '14:00:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(312, 8, '14:10:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(313, 8, '14:20:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(314, 8, '14:30:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(315, 8, '14:40:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(316, 8, '14:50:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(317, 8, '15:00:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(318, 8, '15:10:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(319, 8, '15:20:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(320, 8, '15:30:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(321, 8, '15:40:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(322, 8, '15:50:00', '2018-10-10', NULL, '2018-10-08 13:11:54', '2018-10-08 13:11:54'),
(323, 8, '12:00:00', '2018-10-11', NULL, '2018-10-08 13:12:30', '2018-10-08 13:12:30'),
(324, 8, '12:10:00', '2018-10-11', NULL, '2018-10-08 13:12:30', '2018-10-08 13:12:30'),
(325, 8, '12:20:00', '2018-10-11', NULL, '2018-10-08 13:12:30', '2018-10-08 13:12:30'),
(326, 8, '12:30:00', '2018-10-11', NULL, '2018-10-08 13:12:30', '2018-10-08 13:12:30'),
(327, 8, '12:40:00', '2018-10-11', NULL, '2018-10-08 13:12:30', '2018-10-08 13:12:30'),
(328, 8, '12:50:00', '2018-10-11', NULL, '2018-10-08 13:12:30', '2018-10-08 13:12:30'),
(329, 8, '13:00:00', '2018-10-11', NULL, '2018-10-08 13:12:30', '2018-10-08 13:12:30'),
(330, 8, '13:10:00', '2018-10-11', NULL, '2018-10-08 13:12:30', '2018-10-08 13:12:30'),
(331, 11, '18:00:00', '2018-10-09', NULL, '2018-10-08 13:38:26', '2018-10-08 13:38:26'),
(332, 11, '18:45:00', '2018-10-09', NULL, '2018-10-08 13:38:26', '2018-10-08 13:38:26'),
(333, 11, '19:30:00', '2018-10-09', NULL, '2018-10-08 13:38:26', '2018-10-08 13:38:26'),
(334, 11, '20:15:00', '2018-10-09', NULL, '2018-10-08 13:38:26', '2018-10-08 13:38:26'),
(335, 11, '18:00:00', '2018-10-10', NULL, '2018-10-08 13:38:57', '2018-10-08 13:38:57'),
(336, 11, '18:45:00', '2018-10-10', NULL, '2018-10-08 13:38:57', '2018-10-08 13:38:57'),
(337, 11, '19:30:00', '2018-10-10', NULL, '2018-10-08 13:38:57', '2018-10-08 13:38:57'),
(338, 11, '20:15:00', '2018-10-10', NULL, '2018-10-08 13:38:57', '2018-10-08 13:38:57'),
(339, 11, '18:00:00', '2018-10-11', NULL, '2018-10-08 13:39:29', '2018-10-08 13:39:29'),
(340, 11, '18:45:00', '2018-10-11', NULL, '2018-10-08 13:39:29', '2018-10-08 13:39:29'),
(341, 11, '19:30:00', '2018-10-11', NULL, '2018-10-08 13:39:29', '2018-10-08 13:39:29'),
(342, 11, '20:15:00', '2018-10-11', NULL, '2018-10-08 13:39:29', '2018-10-08 13:39:29'),
(343, 6, '09:00:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(344, 6, '09:10:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(345, 6, '09:20:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(346, 6, '09:30:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(347, 6, '09:40:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(348, 6, '09:50:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(349, 6, '10:00:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(350, 6, '10:10:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(351, 6, '10:20:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(352, 6, '10:30:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(353, 6, '10:40:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(354, 6, '10:50:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(355, 6, '11:00:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(356, 6, '11:10:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(357, 6, '11:20:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(358, 6, '11:30:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(359, 6, '11:40:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(360, 6, '11:50:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(361, 6, '12:00:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(362, 6, '12:10:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(363, 6, '12:20:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(364, 6, '12:30:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(365, 6, '12:40:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(366, 6, '12:50:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(367, 6, '13:00:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(368, 6, '13:10:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(369, 6, '13:20:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(370, 6, '13:30:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(371, 6, '13:40:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(372, 6, '13:50:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(373, 6, '14:00:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(374, 6, '14:10:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(375, 6, '14:20:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(376, 6, '14:30:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(377, 6, '14:40:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(378, 6, '14:50:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(379, 6, '15:00:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(380, 6, '15:10:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(381, 6, '15:20:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(382, 6, '15:30:00', '2018-10-09', NULL, '2018-10-08 13:55:35', '2018-10-08 13:55:35'),
(383, 6, '15:40:00', '2018-10-09', NULL, '2018-10-08 13:55:36', '2018-10-08 13:55:36'),
(384, 6, '15:50:00', '2018-10-09', NULL, '2018-10-08 13:55:36', '2018-10-08 13:55:36'),
(385, 6, '16:00:00', '2018-10-09', NULL, '2018-10-08 13:55:36', '2018-10-08 13:55:36'),
(386, 6, '16:10:00', '2018-10-09', NULL, '2018-10-08 13:55:36', '2018-10-08 13:55:36'),
(387, 6, '16:20:00', '2018-10-09', NULL, '2018-10-08 13:55:36', '2018-10-08 13:55:36'),
(388, 6, '09:00:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(389, 6, '09:10:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(390, 6, '09:20:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(391, 6, '09:30:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(392, 6, '09:40:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(393, 6, '09:50:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(394, 6, '10:00:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(395, 6, '10:10:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(396, 6, '10:20:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(397, 6, '10:30:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(398, 6, '10:40:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(399, 6, '10:50:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(400, 6, '11:00:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(401, 6, '11:10:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(402, 6, '11:20:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(403, 6, '11:30:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(404, 6, '11:40:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(405, 6, '11:50:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(406, 6, '12:00:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(407, 6, '12:10:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(408, 6, '12:20:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(409, 6, '12:30:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(410, 6, '12:40:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(411, 6, '12:50:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(412, 6, '13:00:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(413, 6, '13:10:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(414, 6, '13:20:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(415, 6, '13:30:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(416, 6, '13:40:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(417, 6, '13:50:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(418, 6, '14:00:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(419, 6, '14:10:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(420, 6, '14:20:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(421, 6, '14:30:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(422, 6, '14:40:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(423, 6, '14:50:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(424, 6, '15:00:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(425, 6, '15:10:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(426, 6, '15:20:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(427, 6, '15:30:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(428, 6, '15:40:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(429, 6, '15:50:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(430, 6, '16:00:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(431, 6, '16:10:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(432, 6, '16:20:00', '2018-10-10', NULL, '2018-10-08 13:55:52', '2018-10-08 13:55:52'),
(433, 6, '09:00:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(434, 6, '09:10:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(435, 6, '09:20:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(436, 6, '09:30:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(437, 6, '09:40:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(438, 6, '09:50:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(439, 6, '10:00:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(440, 6, '10:10:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(441, 6, '10:20:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(442, 6, '10:30:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(443, 6, '10:40:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(444, 6, '10:50:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(445, 6, '11:00:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(446, 6, '11:10:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(447, 6, '11:20:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(448, 6, '11:30:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(449, 6, '11:40:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(450, 6, '11:50:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(451, 6, '12:00:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(452, 6, '12:10:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(453, 6, '12:20:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(454, 6, '12:30:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(455, 6, '12:40:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(456, 6, '12:50:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(457, 6, '13:00:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(458, 6, '13:10:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(459, 6, '13:20:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(460, 6, '13:30:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(461, 6, '13:40:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(462, 6, '13:50:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(463, 6, '14:00:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(464, 6, '14:10:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(465, 6, '14:20:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(466, 6, '14:30:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(467, 6, '14:40:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(468, 6, '14:50:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(469, 6, '15:00:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(470, 6, '15:10:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(471, 6, '15:20:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(472, 6, '15:30:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(473, 6, '15:40:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(474, 6, '15:50:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(475, 6, '16:00:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(476, 6, '16:10:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(477, 6, '16:20:00', '2018-10-11', NULL, '2018-10-08 13:56:10', '2018-10-08 13:56:10'),
(478, 7, '12:00:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(479, 7, '12:10:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(480, 7, '12:20:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(481, 7, '12:30:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(482, 7, '12:40:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(483, 7, '12:50:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(484, 7, '13:00:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(485, 7, '13:10:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(486, 7, '13:20:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(487, 7, '13:30:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(488, 7, '13:40:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(489, 7, '13:50:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(490, 7, '14:00:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(491, 7, '14:10:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(492, 7, '14:20:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(493, 7, '14:30:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(494, 7, '14:40:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(495, 7, '14:50:00', '2018-10-08', NULL, '2018-10-08 13:57:24', '2018-10-08 13:57:24'),
(496, 7, '09:00:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(497, 7, '09:10:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(498, 7, '09:20:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(499, 7, '09:30:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(500, 7, '09:40:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(501, 7, '09:50:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(502, 7, '10:00:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(503, 7, '10:10:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(504, 7, '10:20:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(505, 7, '10:30:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(506, 7, '10:40:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(507, 7, '10:50:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(508, 7, '11:00:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(509, 7, '11:10:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(510, 7, '11:20:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(511, 7, '11:30:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(512, 7, '11:40:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(513, 7, '11:50:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(514, 7, '12:00:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(515, 7, '12:10:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(516, 7, '12:20:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(517, 7, '12:30:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(518, 7, '12:40:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(519, 7, '12:50:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(520, 7, '13:00:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(521, 7, '13:10:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(522, 7, '13:20:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(523, 7, '13:30:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(524, 7, '13:40:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(525, 7, '13:50:00', '2018-10-09', NULL, '2018-10-08 13:57:52', '2018-10-08 13:57:52'),
(526, 7, '10:00:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(527, 7, '10:10:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(528, 7, '10:20:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(529, 7, '10:30:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(530, 7, '10:40:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(531, 7, '10:50:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(532, 7, '11:00:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(533, 7, '11:10:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(534, 7, '11:20:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(535, 7, '11:30:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(536, 7, '11:40:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(537, 7, '11:50:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(538, 7, '12:00:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(539, 7, '12:10:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(540, 7, '12:20:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(541, 7, '12:30:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(542, 7, '12:40:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(543, 7, '12:50:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(544, 7, '13:00:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(545, 7, '13:10:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(546, 7, '13:20:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(547, 7, '13:30:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(548, 7, '13:40:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(549, 7, '13:50:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(550, 7, '14:00:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(551, 7, '14:10:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(552, 7, '14:20:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(553, 7, '14:30:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(554, 7, '14:40:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(555, 7, '14:50:00', '2018-10-11', NULL, '2018-10-08 13:58:20', '2018-10-08 13:58:20'),
(556, 7, '12:00:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(557, 7, '12:10:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(558, 7, '12:20:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(559, 7, '12:30:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(560, 7, '12:40:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(561, 7, '12:50:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(562, 7, '13:00:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(563, 7, '13:10:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(564, 7, '13:20:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(565, 7, '13:30:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(566, 7, '13:40:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(567, 7, '13:50:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(568, 7, '14:00:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(569, 7, '14:10:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(570, 7, '14:20:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(571, 7, '14:30:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(572, 7, '14:40:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(573, 7, '14:50:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(574, 7, '15:00:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(575, 7, '15:10:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(576, 7, '15:20:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(577, 7, '15:30:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(578, 7, '15:40:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(579, 7, '15:50:00', '2018-10-10', NULL, '2018-10-08 14:00:53', '2018-10-08 14:00:53'),
(580, 8, '00:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31');
INSERT INTO `interview_times` (`id`, `user_id`, `start_time`, `date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(581, 8, '00:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(582, 8, '00:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(583, 8, '00:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(584, 8, '00:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(585, 8, '00:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(586, 8, '01:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(587, 8, '01:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(588, 8, '01:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(589, 8, '01:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(590, 8, '01:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(591, 8, '01:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(592, 8, '02:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(593, 8, '02:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(594, 8, '02:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(595, 8, '02:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(596, 8, '02:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(597, 8, '02:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(598, 8, '03:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(599, 8, '03:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(600, 8, '03:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(601, 8, '03:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(602, 8, '03:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(603, 8, '03:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(604, 8, '04:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(605, 8, '04:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(606, 8, '04:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(607, 8, '04:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(608, 8, '04:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(609, 8, '04:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(610, 8, '05:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(611, 8, '05:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(612, 8, '05:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(613, 8, '05:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(614, 8, '05:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(615, 8, '05:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(616, 8, '06:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(617, 8, '06:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(618, 8, '06:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(619, 8, '06:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(620, 8, '06:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(621, 8, '06:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(622, 8, '07:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(623, 8, '07:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(624, 8, '07:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(625, 8, '07:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(626, 8, '07:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(627, 8, '07:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(628, 8, '08:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(629, 8, '08:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(630, 8, '08:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(631, 8, '08:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(632, 8, '08:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(633, 8, '08:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(634, 8, '09:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(635, 8, '09:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(636, 8, '09:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(637, 8, '09:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(638, 8, '09:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(639, 8, '09:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(640, 8, '10:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(641, 8, '10:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(642, 8, '10:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(643, 8, '10:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(644, 8, '10:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(645, 8, '10:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(646, 8, '11:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(647, 8, '11:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(648, 8, '11:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(649, 8, '11:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(650, 8, '11:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(651, 8, '11:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(652, 8, '12:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(653, 8, '12:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(654, 8, '12:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(655, 8, '12:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(656, 8, '12:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(657, 8, '12:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(658, 8, '13:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(659, 8, '13:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(660, 8, '13:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(661, 8, '13:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(662, 8, '13:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(663, 8, '13:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(664, 8, '14:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(665, 8, '14:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(666, 8, '14:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(667, 8, '14:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(668, 8, '14:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(669, 8, '14:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(670, 8, '15:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(671, 8, '15:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(672, 8, '15:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(673, 8, '15:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(674, 8, '15:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(675, 8, '15:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(676, 8, '16:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(677, 8, '16:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(678, 8, '16:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(679, 8, '16:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(680, 8, '16:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(681, 8, '16:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(682, 8, '17:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(683, 8, '17:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(684, 8, '17:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(685, 8, '17:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(686, 8, '17:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(687, 8, '17:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(688, 8, '18:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(689, 8, '18:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(690, 8, '18:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(691, 8, '18:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(692, 8, '18:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(693, 8, '18:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(694, 8, '19:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(695, 8, '19:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(696, 8, '19:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(697, 8, '19:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(698, 8, '19:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(699, 8, '19:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(700, 8, '20:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(701, 8, '20:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(702, 8, '20:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(703, 8, '20:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(704, 8, '20:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(705, 8, '20:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(706, 8, '21:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(707, 8, '21:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(708, 8, '21:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(709, 8, '21:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(710, 8, '21:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(711, 8, '21:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(712, 8, '22:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(713, 8, '22:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(714, 8, '22:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(715, 8, '22:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(716, 8, '22:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(717, 8, '22:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(718, 8, '23:00:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(719, 8, '23:10:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(720, 8, '23:20:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(721, 8, '23:30:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(722, 8, '23:40:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(723, 8, '23:50:00', '2018-10-12', NULL, '2018-10-08 15:38:31', '2018-10-08 15:38:31'),
(724, 6, '10:30:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(725, 6, '10:40:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(726, 6, '10:50:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(727, 6, '11:00:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(728, 6, '11:10:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(729, 6, '11:20:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(730, 6, '11:30:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(731, 6, '11:40:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(732, 6, '11:50:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(733, 6, '12:00:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(734, 6, '12:10:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(735, 6, '12:20:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(736, 6, '12:30:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(737, 6, '12:40:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(738, 6, '12:50:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(739, 6, '13:00:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(740, 6, '13:10:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(741, 6, '13:20:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(742, 6, '13:30:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(743, 6, '13:40:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(744, 6, '13:50:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(745, 6, '14:00:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(746, 6, '14:10:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(747, 6, '14:20:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(748, 6, '14:30:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(749, 6, '14:40:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(750, 6, '14:50:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(751, 6, '15:00:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(752, 6, '15:10:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(753, 6, '15:20:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(754, 6, '15:30:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(755, 6, '15:40:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(756, 6, '15:50:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(757, 6, '16:00:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(758, 6, '16:10:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54'),
(759, 6, '16:20:00', '2018-10-11', NULL, '2018-10-11 11:27:54', '2018-10-11 11:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-10-02 18:04:09', '2018-10-02 18:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-10-02 18:04:09', '2018-10-02 18:04:09', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-10-02 18:04:09', '2018-10-05 13:12:20', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 20, 8, '2018-10-02 18:04:09', '2018-10-06 08:07:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-10-02 18:04:09', '2018-10-02 18:04:09', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2018-10-02 18:04:09', '2018-10-05 13:12:20', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-10-02 18:04:09', '2018-10-05 11:40:11', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-10-02 18:04:09', '2018-10-05 11:40:11', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-10-02 18:04:09', '2018-10-05 11:40:11', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-10-02 18:04:09', '2018-10-05 11:40:11', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2018-10-02 18:04:09', '2018-10-05 13:12:20', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-10-02 18:04:11', '2018-10-05 11:40:11', 'voyager.hooks', NULL),
(17, 1, 'Faculties', '', '_self', 'voyager-shop', NULL, 20, 4, '2018-10-05 11:38:29', '2018-10-05 15:01:11', 'voyager.faculties.index', NULL),
(18, 1, 'Applicants', '', '_self', 'voyager-people', NULL, 20, 1, '2018-10-05 11:41:14', '2018-10-05 13:14:56', 'voyager.applicants.index', NULL),
(19, 1, 'Interview Times', '', '_self', 'voyager-alarm-clock', NULL, 20, 5, '2018-10-05 11:57:53', '2018-10-05 15:01:17', 'voyager.interview-times.index', NULL),
(20, 1, 'Tables', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2018-10-05 12:07:48', '2018-10-05 13:12:20', NULL, ''),
(23, 1, 'Applicant Statuses', '', '_self', 'voyager-check', NULL, 20, 2, '2018-10-05 12:55:56', '2018-10-05 13:14:59', 'voyager.applicant-statuses.index', NULL),
(26, 1, 'Committees', '', '_self', 'voyager-documentation', NULL, 20, 3, '2018-10-05 14:41:56', '2018-10-05 15:01:02', 'voyager.committees.index', NULL),
(28, 1, 'User Committees', '', '_self', 'voyager-credit-card', NULL, 20, 9, '2018-10-05 14:46:12', '2018-10-06 08:07:17', 'voyager.user-committees.index', NULL),
(29, 1, 'Interview Details', '', '_self', 'voyager-list', NULL, 20, 6, '2018-10-05 14:59:16', '2018-10-05 15:01:18', 'voyager.interview-details.index', NULL),
(32, 1, 'Interview Questions', '', '_self', 'voyager-question', NULL, 20, 7, '2018-10-06 08:56:47', '2018-10-06 08:57:00', 'voyager.interview-questions.index', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-10-02 18:04:10', '2018-10-02 18:04:10');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(2, 'browse_bread', NULL, '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(3, 'browse_database', NULL, '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(4, 'browse_media', NULL, '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(5, 'browse_compass', NULL, '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(6, 'browse_menus', 'menus', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(7, 'read_menus', 'menus', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(8, 'edit_menus', 'menus', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(9, 'add_menus', 'menus', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(10, 'delete_menus', 'menus', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(11, 'browse_roles', 'roles', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(12, 'read_roles', 'roles', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(13, 'edit_roles', 'roles', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(14, 'add_roles', 'roles', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(15, 'delete_roles', 'roles', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(16, 'browse_users', 'users', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(17, 'read_users', 'users', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(18, 'edit_users', 'users', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(19, 'add_users', 'users', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(20, 'delete_users', 'users', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(21, 'browse_settings', 'settings', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(22, 'read_settings', 'settings', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(23, 'edit_settings', 'settings', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(24, 'add_settings', 'settings', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(25, 'delete_settings', 'settings', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(41, 'browse_hooks', NULL, '2018-10-02 18:04:11', '2018-10-02 18:04:11'),
(52, 'browse_faculties', 'faculties', '2018-10-05 11:38:29', '2018-10-05 11:38:29'),
(53, 'read_faculties', 'faculties', '2018-10-05 11:38:29', '2018-10-05 11:38:29'),
(54, 'edit_faculties', 'faculties', '2018-10-05 11:38:29', '2018-10-05 11:38:29'),
(55, 'add_faculties', 'faculties', '2018-10-05 11:38:29', '2018-10-05 11:38:29'),
(56, 'delete_faculties', 'faculties', '2018-10-05 11:38:29', '2018-10-05 11:38:29'),
(57, 'browse_applicants', 'applicants', '2018-10-05 11:41:14', '2018-10-05 11:41:14'),
(58, 'read_applicants', 'applicants', '2018-10-05 11:41:14', '2018-10-05 11:41:14'),
(59, 'edit_applicants', 'applicants', '2018-10-05 11:41:14', '2018-10-05 11:41:14'),
(60, 'add_applicants', 'applicants', '2018-10-05 11:41:14', '2018-10-05 11:41:14'),
(61, 'delete_applicants', 'applicants', '2018-10-05 11:41:14', '2018-10-05 11:41:14'),
(62, 'browse_interview_times', 'interview_times', '2018-10-05 11:57:53', '2018-10-05 11:57:53'),
(63, 'read_interview_times', 'interview_times', '2018-10-05 11:57:53', '2018-10-05 11:57:53'),
(64, 'edit_interview_times', 'interview_times', '2018-10-05 11:57:53', '2018-10-05 11:57:53'),
(65, 'add_interview_times', 'interview_times', '2018-10-05 11:57:53', '2018-10-05 11:57:53'),
(66, 'delete_interview_times', 'interview_times', '2018-10-05 11:57:53', '2018-10-05 11:57:53'),
(77, 'browse_applicant_statuses', 'applicant_statuses', '2018-10-05 12:55:56', '2018-10-05 12:55:56'),
(78, 'read_applicant_statuses', 'applicant_statuses', '2018-10-05 12:55:56', '2018-10-05 12:55:56'),
(79, 'edit_applicant_statuses', 'applicant_statuses', '2018-10-05 12:55:56', '2018-10-05 12:55:56'),
(80, 'add_applicant_statuses', 'applicant_statuses', '2018-10-05 12:55:56', '2018-10-05 12:55:56'),
(81, 'delete_applicant_statuses', 'applicant_statuses', '2018-10-05 12:55:56', '2018-10-05 12:55:56'),
(82, 'browse_committees', 'committees', '2018-10-05 14:41:56', '2018-10-05 14:41:56'),
(83, 'read_committees', 'committees', '2018-10-05 14:41:56', '2018-10-05 14:41:56'),
(84, 'edit_committees', 'committees', '2018-10-05 14:41:56', '2018-10-05 14:41:56'),
(85, 'add_committees', 'committees', '2018-10-05 14:41:56', '2018-10-05 14:41:56'),
(86, 'delete_committees', 'committees', '2018-10-05 14:41:56', '2018-10-05 14:41:56'),
(87, 'browse_user_committee', 'user_committee', '2018-10-05 14:44:55', '2018-10-05 14:44:55'),
(88, 'read_user_committee', 'user_committee', '2018-10-05 14:44:55', '2018-10-05 14:44:55'),
(89, 'edit_user_committee', 'user_committee', '2018-10-05 14:44:55', '2018-10-05 14:44:55'),
(90, 'add_user_committee', 'user_committee', '2018-10-05 14:44:55', '2018-10-05 14:44:55'),
(91, 'delete_user_committee', 'user_committee', '2018-10-05 14:44:55', '2018-10-05 14:44:55'),
(92, 'browse_user_committees', 'user_committees', '2018-10-05 14:46:12', '2018-10-05 14:46:12'),
(93, 'read_user_committees', 'user_committees', '2018-10-05 14:46:12', '2018-10-05 14:46:12'),
(94, 'edit_user_committees', 'user_committees', '2018-10-05 14:46:12', '2018-10-05 14:46:12'),
(95, 'add_user_committees', 'user_committees', '2018-10-05 14:46:12', '2018-10-05 14:46:12'),
(96, 'delete_user_committees', 'user_committees', '2018-10-05 14:46:12', '2018-10-05 14:46:12'),
(102, 'browse_interview_details', 'interview_details', '2018-10-05 14:59:16', '2018-10-05 14:59:16'),
(103, 'read_interview_details', 'interview_details', '2018-10-05 14:59:16', '2018-10-05 14:59:16'),
(104, 'edit_interview_details', 'interview_details', '2018-10-05 14:59:16', '2018-10-05 14:59:16'),
(105, 'add_interview_details', 'interview_details', '2018-10-05 14:59:16', '2018-10-05 14:59:16'),
(106, 'delete_interview_details', 'interview_details', '2018-10-05 14:59:16', '2018-10-05 14:59:16'),
(107, 'browse_questions', 'questions', '2018-10-06 08:02:00', '2018-10-06 08:02:00'),
(108, 'read_questions', 'questions', '2018-10-06 08:02:00', '2018-10-06 08:02:00'),
(109, 'edit_questions', 'questions', '2018-10-06 08:02:00', '2018-10-06 08:02:00'),
(110, 'add_questions', 'questions', '2018-10-06 08:02:00', '2018-10-06 08:02:00'),
(111, 'delete_questions', 'questions', '2018-10-06 08:02:00', '2018-10-06 08:02:00'),
(127, 'browse_interview_questions', 'interview_questions', '2018-10-06 08:56:47', '2018-10-06 08:56:47'),
(128, 'read_interview_questions', 'interview_questions', '2018-10-06 08:56:47', '2018-10-06 08:56:47'),
(129, 'edit_interview_questions', 'interview_questions', '2018-10-06 08:56:47', '2018-10-06 08:56:47'),
(130, 'add_interview_questions', 'interview_questions', '2018-10-06 08:56:47', '2018-10-06 08:56:47'),
(131, 'delete_interview_questions', 'interview_questions', '2018-10-06 08:56:47', '2018-10-06 08:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(57, 2),
(57, 3),
(58, 1),
(58, 2),
(58, 3),
(59, 1),
(59, 2),
(59, 3),
(60, 1),
(60, 2),
(60, 3),
(61, 1),
(61, 2),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(84, 3),
(85, 1),
(85, 3),
(86, 1),
(86, 3),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(90, 3),
(91, 1),
(91, 3),
(92, 1),
(92, 3),
(93, 1),
(93, 3),
(94, 1),
(94, 3),
(95, 1),
(95, 3),
(96, 1),
(96, 3),
(102, 1),
(102, 3),
(103, 1),
(103, 3),
(104, 1),
(104, 3),
(105, 1),
(105, 3),
(106, 1),
(106, 3),
(107, 1),
(107, 3),
(108, 1),
(108, 3),
(109, 1),
(109, 3),
(110, 1),
(110, 3),
(111, 1),
(111, 3),
(127, 1),
(127, 3),
(128, 1),
(128, 3),
(129, 1),
(129, 3),
(130, 1),
(130, 3),
(131, 1),
(131, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-10-02 18:04:09', '2018-10-02 18:04:09'),
(2, 'user', 'Member', '2018-10-02 18:04:09', '2018-10-05 11:09:20'),
(3, 'moderator', 'High Board', '2018-10-05 10:43:40', '2018-10-05 10:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'MIU SMS', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\October2018\\9h56vEVtlkLclG5lKc9U.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-10-02 18:04:10', '2018-10-02 18:04:10'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-10-02 18:04:11', '2018-10-02 18:04:11'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-10-02 18:04:11', '2018-10-02 18:04:11'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-10-02 18:04:11', '2018-10-02 18:04:11'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-10-02 18:04:11', '2018-10-02 18:04:11'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-10-02 18:04:11', '2018-10-02 18:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@sms-miu.com', 'users/default.png', NULL, '$2y$10$WbQx6PjxMmxDcOqODptZjeREjKRcMqe3WXuMc5FGnxitaeMj6PhNO', 'qGv0bcqT3CwLieNtlMknVJeL5CbLuMqF4ERoMVaDUbOKd4OOvpeAHRfjyA89', '{\"locale\":\"en\"}', '2018-10-02 18:04:10', '2018-10-09 23:58:59'),
(2, 1, 'Wessam Ahmed', 'wlakon590@gmail.com', 'users/default.png', NULL, '$2y$10$KbB9KYKsLuIDhC6LsBW7rue.QhxaCDTvo81HrVZ42dVN.TEgi5Wt6', '4PmUR1A3mWSi5IGPTktjQ5484HM1j3UVdikm1SAADgntDEiVL1o89CYe77TS', '{\"locale\":\"en\"}', '2018-10-05 10:13:52', '2018-10-07 22:25:16'),
(3, 1, 'David Adel', 'david@sms-miu.com', 'users/default.png', NULL, '$2y$10$6eYemc.cGWtHzurhWByORuOziy2CpXfH8qCjSG.ny5vd4VKblXYQq', 'YUBKbD6pPP9f3VV9BXa8lPhqLJyJbYpuC1Lm6FkzupV4YiNhEQQzKtHSPjfL', '{\"locale\":\"en\"}', '2018-10-07 12:13:52', '2018-10-09 23:58:01'),
(4, 3, 'Ahmed Sahhar', 'sahhar@sms-miu.com', 'users/default.png', NULL, '$2y$10$w6/aXVovnCJlP6bONZaTvOeSk8y/jUcPRPouuehBwZAO/LvHBPbpS', '9PEDpy9lzfEVKEIB43eVksHNa6S1l4s98oK1JU9QSwT4D0hncJUB2VxnhQob', '{\"locale\":\"en\"}', '2018-10-07 12:37:22', '2018-10-07 22:09:49'),
(5, 3, 'Aly Sokar', 'aly-oc@sms-miu.com', 'users/default.png', NULL, '$2y$10$ndMP8FODJ5F9BXo7JuHJOeQD2o4TRg4KbmsF.3WbDaD2cjwoqHdSO', 'pjKvDrH34XfOHMCjZj1m95JVkkMgnsX9ahEUyCthRjaQwXA6qnRKKdRHs8WT', '{\"locale\":\"en\"}', '2018-10-07 22:12:56', '2018-10-07 22:24:59'),
(6, 3, 'Mahiar Magdy', 'mahiar@sms-miu.com', 'users/default.png', NULL, '$2y$10$FVmURj9axklkJ3OgVTMIOu2h7ZFtq1hBnNjjAgrXOVxb/kpbPN3nu', 'Wv9JWx5v0BuO9dO2sS4Oa0WlFrbhMUWIQIpyADAklGthbzG5ClieNT1AEIDy', '{\"locale\":\"en\"}', '2018-10-07 22:21:29', '2018-10-07 22:24:50'),
(7, 3, 'Hatem Ebaa', 'tommy@sms-miu.com', 'users/default.png', NULL, '$2y$10$1xgNBDiRO3BqGpXr0369YOZS1illk73gUx.fFOl66Zx0b6KVfCoQG', 'm0O0rmJ8Bgck8d2hdC5ntjCxZdijiuQnRAdsQ1h8Q4CxXi2hWXLoYMcx6BQb', '{\"locale\":\"en\"}', '2018-10-07 22:22:21', '2018-10-07 22:24:42'),
(8, 3, 'Omar Atteya', 'atteya@sms-miu.com', 'users/default.png', NULL, '$2y$10$jlkvq6jVoN5oR9ZjJHg9oeoPZLbI1ZI4/19wCicEyjjX/hmEQtWUK', 'OaYmEnhltNyHUE6dBrzUbbG6Az6i4qgbqstPJPkUghLwiJFlMbKyF23zfHng', '{\"locale\":\"en\"}', '2018-10-07 22:23:35', '2018-10-08 01:17:01'),
(9, 2, 'Omar Rakha', 'omarrakha@sms-miu.com', 'users/default.png', NULL, '$2y$10$7NeeZcbsgLlucBZKTZBPG.6iEXjjmQkelt.qdNWls1m9Tk7Zzfpbi', NULL, NULL, '2018-10-07 22:40:29', '2018-10-07 22:40:29'),
(10, 2, 'Dana', 'dana@sms-miu.com', 'users/default.png', NULL, '$2y$10$Ehb3HvhSL0Sd5fe94naVE.HzS4ZEHLDghu7BWLx9VpYmEY9C/11dW', 'ikd5rAu3BkpyfQ1qn3BPIC3VISnRoQ9p9qOo7Dcd3InfHJk5UjbMpOBPTCKY', NULL, '2018-10-07 23:20:16', '2018-10-07 23:20:16'),
(11, 3, 'Academic Committee', 'ac@sms-miu.com', 'users/default.png', NULL, '$2y$10$hoy5OZWe7/KnxAl9RT9iaOjzghPQR7fon.1XGhWTzx0Uh7nf4o9fO', 'xu2oBKOYy6HILxy62GFTDZWZI6H8x1SyveQLjZj8H2ijg7jwFm9uNMsjoVCj', '{\"locale\":\"en\"}', '2018-10-07 23:21:54', '2018-10-07 23:43:02'),
(12, 2, 'Ziad Abogendi', 'ziad1500426@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$LBvQkZt7z6eacFgPeMZzBOAOSi9vUBeToeZZ0Q2jflifjajXnZHLO', '0PqODcZAR5Uk7MKtzo6OP4opYPYlLV4OIkDsWGpyORjRBe9KjHexf8jI1Fgu', NULL, '2018-10-07 23:44:13', '2018-10-07 23:44:13'),
(13, 2, 'Alya shawky', 'alyashawke@gmail.com', 'users/default.png', NULL, '$2y$10$hbGNbF9a1iBY1AYmfkc3Gu7j98wM3h73Yg4qLSAbM/z.dScbF5PQO', 'MeuA77RP7eXL9aqg5qn53CE3a7JpIt3y0UAkeIQeCJQ3jNF8sk2zauM6InR0', NULL, '2018-10-07 23:51:46', '2018-10-07 23:51:46'),
(14, 2, 'Alya Shawky', 'alyashawky@sms-miu.com', 'users/default.png', NULL, '$2y$10$HuGyoPAlAAwvcCZTHE2vkeX50h6zGzBeqh./4bh.rBaEEdWGAfZ0C', NULL, NULL, '2018-10-08 01:44:46', '2018-10-08 01:44:46'),
(15, 1, 'Kareem', 'kareem@sms-miu.com', 'users/default.png', NULL, '$2y$10$KoyFEEMR09tNJN5zG1MFS.TePLYlvXOc1QgN1ZbZwKb1.3tji1BjW', NULL, '{\"locale\":\"en\"}', '2018-10-10 12:19:15', '2018-10-10 12:20:49'),
(16, 2, 'SMS Member', 'public@sms-miu.com', 'users/default.png', NULL, '$2y$10$cYzukBG2gF7XLk1xLZgKDeNBGBfirFfrj57QxLoXJ.1SADbu3gfJG', 'NzS1Nbno6PyIMPWZRD1ZHJYWQfLp8fLwfkJKbGlT3jwyTPzlb5r4YVsRjBNB', '{\"locale\":\"en\"}', '2018-10-11 11:35:52', '2018-10-11 11:35:52'),
(17, 2, 'Youssefdegweyy', 'youssefeldegwey@gmail.com', 'users/default.png', NULL, '$2y$10$SZEkuBDPGw/bBm7gmvAtouef2q10Vlv/I4CPxf1e.L4wNqVM2AjUG', NULL, NULL, '2018-10-20 01:53:41', '2018-10-20 01:53:41'),
(18, 2, 'Ahmed Mahran', 'ahmedmahran98@gmail.com', 'users/default.png', NULL, '$2y$10$wmYdwbnhFCN2v6NHcOMTB.ivLemYAhC1py6NId5D3f886wngCgAIK', 'UVGk1EtoOGTBdim72pMwpymmslOeFnPsBX6U81vTLGwQKdHSWCXcosLlwzks', NULL, '2018-10-20 01:54:54', '2018-10-20 01:54:54'),
(19, 2, 'Habiba Ismail', 'habibaismails@gmail.com', 'users/default.png', NULL, '$2y$10$9dj2v1vbyTJbx.ktvYrXYOxdek3vE7DnkinPTnI0LgqF3aWim9s1G', NULL, NULL, '2018-10-20 01:57:10', '2018-10-20 01:57:10'),
(20, 2, 'Menna ehab', 'mennaeissaa@gmail.com', 'users/default.png', NULL, '$2y$10$QdEVcqsleCWYMlnnyDANouoZ6kj2hp74O.Fx2YRXkSkzl5X4ZLyuC', NULL, NULL, '2018-10-20 01:57:20', '2018-10-20 01:57:20'),
(21, 2, 'Salma khaled', 'salmakh.2000@gmail.com', 'users/default.png', NULL, '$2y$10$KVRwsmQEAY6fC7YsttytauGn1WaoLWl3kY0oodMlTnjGJmdDusRLS', NULL, NULL, '2018-10-20 01:59:53', '2018-10-20 01:59:53'),
(22, 2, 'Sherry zayed', 'sherryzayed@hotmail.com', 'users/default.png', NULL, '$2y$10$XptDizGdyFMyKsQBNrgHTOjQGHoiz5hzggVtDO3s45PTBggjbnHSa', NULL, NULL, '2018-10-20 02:00:20', '2018-10-20 02:00:20'),
(23, 2, 'Mahmoud Haitham', 'Zidan2012@live.com', 'users/default.png', NULL, '$2y$10$NT7ViLbsoE3TOXJ5Anow5e/0GgVkMS68mph1OfToucG304kfBoc7G', NULL, NULL, '2018-10-20 02:02:16', '2018-10-20 02:02:16'),
(24, 2, 'Ahmed samir', 'ahmedsamirelnegely@gmail.com', 'users/default.png', NULL, '$2y$10$1caC6CSInd1.ljmRKE25vOebOYEsF1sF9bF.5jseFq25RuAL5SMoq', NULL, NULL, '2018-10-20 02:04:43', '2018-10-20 02:04:43'),
(25, 2, 'Fady louis', 'fadylouis@hotmail.com', 'users/default.png', NULL, '$2y$10$UwOCbJ0Gy00Tsr1bKUTqXej3bFKWyEHmaBPxvr1dyCJ//0k/dBmp6', NULL, NULL, '2018-10-20 02:17:09', '2018-10-20 02:17:09'),
(26, 2, 'Beedo', 'abdelrahman1503277@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$QIdZKhYpMCS17hMsOWkoFOJ8ojSyUh8C.wy/zoBg04eJfetqopJPm', 'JrpiGLxXsxX3iMw2ffHZ9dWVvrxGIcNfczdxTdGi0xYGXP49dS4TZwzARZTe', NULL, '2018-10-20 02:34:10', '2018-10-20 02:34:10'),
(27, 2, 'Fares fouda', 'faressfouda@gmail.com', 'users/default.png', NULL, '$2y$10$vxj7S4vaAVZX0cSPmSfBUepdIxpeqBtAJ2Tw1vPvppABuisNPQomy', 'xYlNMUpgduwcWmkK7rms510DpvgSs7aj131sqTYUUXxRyh5n6dSwjrmV6z7a', NULL, '2018-10-20 02:50:56', '2018-10-20 02:50:56'),
(28, 2, 'Janna Shaaban', 'jannashaaban4@gmail.com', 'users/default.png', NULL, '$2y$10$N6nS6kYET/IAZuXM0dISzec1Cy5JxnkSdtksBHmSdWPVMMOjjf42W', NULL, NULL, '2018-10-20 04:48:43', '2018-10-20 04:48:43'),
(29, 2, 'Omar shawky', 'omar1704920@miuegypt.com', 'users/default.png', NULL, '$2y$10$TWaCkaMmN1ZWqiyRrR1o8OhEimy5xm4/D6ZigsIVvncjNCd0I7X4W', NULL, NULL, '2018-10-20 05:59:02', '2018-10-20 05:59:02'),
(30, 2, 'Hussam Nasser', 'hussam1608513@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$/jkGf4OhV7GvHqWPAubuuueT7KWIpWpOc1ccP03H7m.WujduxYxc6', 'LgoMZg1NjmkbIRLNni3JWe0kloAojkux8qsbYCD3eEUFSDDXpucQun1rmfWv', NULL, '2018-10-20 08:11:57', '2018-10-20 08:11:57'),
(31, 2, 'Mariam Elghoneimy', 'mariamelghoneimy@live.com', 'users/default.png', NULL, '$2y$10$g8fFVU0Qs4cFZ4fiMpt3XupWbbXHJmKOJdqvqnbm1MN167H9KUx9O', NULL, NULL, '2018-10-21 01:53:01', '2018-10-21 01:53:01'),
(32, 2, 'Wessam Ahmed', 'wessam1512779@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$rsgrI0j4tgHkocTZGXWCj.UuYu4qqonsvsHOgRmexEPim/bOwEL0m', 'fdsndvxOKC4FlctjZOmnmNAxAifWFhQQ2r7W6JXhDNQ04ZZtgysrbQmKqzc4', NULL, '2018-10-25 02:05:15', '2018-10-25 02:05:15'),
(33, 2, 'Habiba Maghraby', 'habibahany1806@gmail.com', 'users/default.png', NULL, '$2y$10$qjwUnRidetEv68rnaI4HfOmpq2LMfYFkSXBLiVJd5oAhN3FZEoSxi', NULL, NULL, '2018-11-08 03:39:14', '2018-11-08 03:39:14'),
(34, 2, 'moustafa mahdy', 'moustafamahdy@gmail.com', 'users/default.png', NULL, '$2y$10$bbvFpiZsFJaPXwylHJlbeulVVW9EyG5rp2ZFLh4r/1LNv3yTJ113.', NULL, NULL, '2018-11-08 03:39:21', '2018-11-08 03:39:21'),
(35, 2, 'Dana Sherif', 'dana-sherif@hotmail.com', 'users/default.png', NULL, '$2y$10$UpqlpmP5l.JiDzs/yqza2eBkRYGdhVv9Xhu5JiCtYbwPVptFu..Ou', NULL, '{\"locale\":\"en\"}', '2018-11-08 03:43:25', '2018-11-08 17:17:26'),
(36, 2, 'Seif hesham', 'seifel-din1603678@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$endj5DXhsfIsyj2kKU5Q2OS4FU.XQt1.QxbpUImf/FdY337T2L9Ye', NULL, NULL, '2018-11-08 03:43:39', '2018-11-08 03:43:39'),
(37, 2, 'Farah Elgindi', 'farah1502643@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$fkp5UOZn.D3jsOqJ.jgsE.Id9FTKDzRoVT/X6LULLnaRlqME5Q9Gm', NULL, NULL, '2018-11-08 03:45:58', '2018-11-08 03:45:58'),
(38, 2, 'Leila ehab', 'leila1601075@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$BX96djaAmvkXz2/ufT2agOiFvYns7Zfh5cHJzLEtswDB32ACpL2vi', NULL, NULL, '2018-11-08 03:48:09', '2018-11-08 03:48:09'),
(39, 2, 'Maryam Ezz', 'mariam-ezz@hotmail.com', 'users/default.png', NULL, '$2y$10$utp4Vu8Vu3euRDrLsvJVTuQJECChanqN1MEz1ftkqEsQxnBZ1cAa6', NULL, NULL, '2018-11-08 03:53:18', '2018-11-08 03:53:18'),
(40, 2, 'Sarah Wadea Adly', 'sara_wadea@live.com', 'users/default.png', NULL, '$2y$10$SoQG/I1IVf365EPhDLDQ6.AhyWEQsgdkrucrSPQWkbffZu2Bd9ezK', NULL, NULL, '2018-11-08 04:00:57', '2018-11-08 04:00:57'),
(41, 2, 'Abdelrahman el kalyoubi', 'abdelrahman1506992@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$zOwKtQ.CTaJGX2L92uKf..Ay64gTO5B12ljoscoxyRqQmYQJXmz4a', NULL, NULL, '2018-11-08 04:55:33', '2018-11-08 04:55:33'),
(42, 2, 'Omarshawky', 'omarshawkiii@gmail.com', 'users/default.png', NULL, '$2y$10$wvf/SClt4t2KnaW7R/IsAe0clDJV.rxqjeXmrvUPdbd00l96MKA16', NULL, NULL, '2018-11-08 04:57:37', '2018-11-08 04:57:37'),
(43, 2, 'Mohanad ghozlan', 'mohanad1402593@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$GDAPajPTN9GpAdXBsqMhq.ylFoZg9lQm1Uo0dyWXqMN5e.lyd9NK6', 'nmh32Us1Qt9wxg2rXGvEn8B1jfLSpPO8I0egM4gFeFDaTRMIVlDzi89AWVMw', NULL, '2018-11-08 05:00:15', '2018-11-08 05:00:15'),
(44, 2, 'Ali Ghazal', 'alighazal1999@icloud.com', 'users/default.png', NULL, '$2y$10$7qdiMB3dWSGYwRRzlBdUYuo3Gjln5n49vvVw7n03PDYIJu235LSBW', 'qAO4ZSDD6SVKosjxXee5B6EuCcIXv32gpMsNsBC4ttN2JpmAOc9Jx7WxHZ7o', NULL, '2018-11-08 06:08:50', '2018-11-08 06:08:50'),
(45, 2, 'Neveen', 'neveen1700489@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$Iznv0xK.Of4tyiUQytu35uUA0iwVy8HolXnkiD1o.XunKCUoq.lEa', NULL, NULL, '2018-11-08 12:20:58', '2018-11-08 12:20:58'),
(46, 2, 'Miran sultan', 'miransultan97@gmail.com', 'users/default.png', NULL, '$2y$10$cng72MS9foOTF8IaRCFo3OTECHAzALvp00YKCoOqDakpAKxGAgBz6', NULL, NULL, '2018-11-08 12:24:29', '2018-11-08 12:24:29'),
(47, 2, 'Habiba', 'habiba1700653@miu.edu.eg', 'users/default.png', NULL, '$2y$10$F.CcpBeGgiyaiPqvMBgk1.a827E5ZT3p6nW87SV5kGvZlziPnNKK6', NULL, NULL, '2018-11-08 13:18:14', '2018-11-08 13:18:15'),
(48, 2, 'Rana Sherif', 'rana1501279@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$PDX1Gqdfo2o5EXuprfe4yOyHerl3K0OVTWNpwzqEWdaO6bvWYQiSa', NULL, NULL, '2018-11-08 16:39:02', '2018-11-08 16:39:02'),
(49, 2, 'Nour Mourad', 'nourmourad99@gmail.com', 'users/default.png', NULL, '$2y$10$MYQP7l7bMDTZVOia81Fnd.M772KfQ49b5jW73xcNs3Rp0eor22k6W', 'Hb1KISqYPrETg76wQUSsgqgGIKbULLvTMPwQ4sjYYxIhWQC4Njs36Bs21Lx2', NULL, '2018-11-08 16:43:58', '2018-11-08 16:43:58'),
(50, 2, 'Poula moheb', 'poula1500398@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$Gaw9DZ.xFMgxvkHrUmjBhuFwZ2mbnzPWhpdWCiVebyotUaE/CZ4TO', NULL, NULL, '2018-11-08 16:45:04', '2018-11-08 16:45:04'),
(51, 2, 'Chris Chakour', 'chris1601649@miu.edu.eg', 'users/default.png', NULL, '$2y$10$RrBC8MEkNP408G3//ISAvOms1KjuoUSaUGViHCLyZtO5dSob2bute', NULL, NULL, '2018-11-08 16:55:50', '2018-11-08 16:55:50'),
(52, 2, 'Youssef Elhammamy', 'Youssef1702736@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$7Zd1a5Syo5bGyno5BbVQeupQ7t2y90d/FJrdPJ6b3ln3BooC0hDwu', NULL, NULL, '2018-11-08 19:21:19', '2018-11-08 19:21:19'),
(53, 2, 'Nathalie Iskandar', 'nathalie1600322@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$nhFqoeGnDXdPUXGn96017eOtRAi5Cewc7apd8oGulHffIzeQuGdk2', NULL, NULL, '2018-11-08 19:40:14', '2018-11-08 19:40:14'),
(54, 2, 'Test Account', 'test@sms-miu.com', 'users/default.png', NULL, '$2y$10$YRUthij/WXTyez.WQKSSo.evLQtfVsD41JirXeeRHpD8yxRy5JFP2', NULL, NULL, '2018-11-08 20:05:41', '2018-11-08 20:05:41'),
(55, 2, 'Nabih Kamel', 'nabih1600202@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$NyuzmF6Lg0t0JLJqM1mDQ.tL18QtRAeqkqTUBrP5iPkqcWUHDaBiO', NULL, NULL, '2018-11-08 20:20:46', '2018-11-08 20:20:46'),
(56, 2, 'Marc remon', 'marc1601571@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$5o9HRbN/Oyj.7lgicu9qi.ddvBhPI3Ireylt/WlAIauLQZX8q7ZPi', NULL, NULL, '2018-11-09 02:12:36', '2018-11-09 02:12:36'),
(57, 2, 'Mohamed Zitouny', 'mzitouny.mz@gmail.com', 'users/default.png', NULL, '$2y$10$Z00Un9VWM1RTUG/Cb5GMQ.G/7z2j47hXb8Lc56bYhz9XHyLZTHv.e', NULL, NULL, '2018-11-09 02:57:38', '2018-11-09 02:57:38'),
(58, 2, 'Amr Nazeh', 'amr_naze@yahoo.com', 'users/default.png', NULL, '$2y$10$RpApKw.zidYMYop5/0r7iuqFMQq9PSfAa1kRLlmY08fVh77Kpn.dm', NULL, NULL, '2018-11-09 03:55:07', '2018-11-09 03:55:07'),
(59, 2, 'Sara Abdallah', 'sarabdallah1@gmail.com', 'users/default.png', NULL, '$2y$10$HCyQOsKQuc1pS1y7B2velOO4F2AKzf0RfG0VGjbm3CB7HgUO86noW', NULL, NULL, '2018-11-09 04:04:28', '2018-11-09 04:04:28'),
(60, 2, 'Joseph Ehab', 'joseph1600215@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$oyWt3czlBce6Oke1gA4TsenIKrzC9UQr0I1XJMgWddWhSGl25TpoG', NULL, NULL, '2018-11-09 04:15:37', '2018-11-09 04:15:37'),
(61, 2, 'Ahmed Amin Rady', 'a.aminrady@hotmail.com', 'users/default.png', NULL, '$2y$10$/kj/8XR.pd87Pp5jMDMyqufg8xaK9rlhCIypYyNF0kN1LT.Upp0I6', NULL, NULL, '2018-11-09 09:45:16', '2018-11-09 09:45:17'),
(62, 2, 'Mariam Muhiie', 'mariam1500888@miuegypt.edu.eg', 'users/default.png', NULL, '$2y$10$DSUwYKeMHxnEUDG5IKlQf.8LGdDHmVBpJQaGrC7vQxD2Czn.n4VRS', 'tZjpQGejbBkHj3F58fSsSNOkPULVUWEMskIEikcudTTIO4TIKVQEu9AONTy4', NULL, '2018-11-10 17:48:38', '2018-11-10 17:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_committees`
--

CREATE TABLE `user_committees` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_committees`
--

INSERT INTO `user_committees` (`id`, `user_id`, `committee_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, '2018-10-05 14:51:15', '2018-10-05 21:49:32', NULL),
(2, 3, 1, '2018-10-07 12:19:07', '2018-10-07 12:19:07', NULL),
(3, 6, 2, '2018-10-07 22:25:42', '2018-10-07 22:25:42', NULL),
(4, 5, 2, '2018-10-07 22:25:52', '2018-10-07 22:25:52', NULL),
(5, 7, 3, '2018-10-07 22:26:03', '2018-10-07 22:26:03', NULL),
(6, 8, 5, '2018-10-07 22:26:51', '2018-10-07 22:26:51', NULL),
(7, 11, 4, '2018-10-07 23:30:16', '2018-10-07 23:30:16', NULL),
(8, 10, 2, '2018-10-07 23:45:04', '2018-10-07 23:45:04', NULL),
(9, 9, 2, '2018-10-07 23:45:18', '2018-10-07 23:45:18', NULL),
(10, 15, 1, '2018-10-10 12:21:06', '2018-10-10 12:21:06', NULL),
(11, 23, 2, '2018-10-20 02:07:15', '2018-10-20 02:07:15', NULL),
(12, 20, 3, '2018-10-20 02:14:10', '2018-10-20 02:14:10', NULL),
(13, 19, 2, '2018-10-20 02:15:15', '2018-10-20 02:15:15', NULL),
(14, 17, 1, '2018-10-20 02:15:53', '2018-10-20 02:15:53', NULL),
(15, 24, 3, '2018-10-20 02:17:07', '2018-10-20 02:17:07', NULL),
(16, 18, 3, '2018-10-20 02:17:44', '2018-10-20 02:17:44', NULL),
(17, 27, 3, '2018-10-20 11:53:26', '2018-10-20 11:53:26', NULL),
(18, 31, 3, '2018-10-21 02:16:45', '2018-10-21 02:16:45', NULL),
(19, 30, 3, '2018-10-24 17:41:22', '2018-10-24 17:41:22', NULL),
(20, 33, 2, '2018-11-08 03:42:15', '2018-11-11 03:39:48', '2018-11-11 03:39:48'),
(21, 34, 2, '2018-11-08 03:42:25', '2018-11-08 03:42:25', NULL),
(22, 43, 3, '2018-11-08 16:32:40', '2018-11-08 16:32:40', NULL),
(23, 41, 3, '2018-11-08 16:33:08', '2018-11-08 16:33:08', NULL),
(24, 22, 3, '2018-11-08 16:41:03', '2018-11-08 16:41:03', NULL),
(25, 48, 5, '2018-11-08 16:41:21', '2018-11-08 16:41:21', NULL),
(26, 49, 5, '2018-11-08 16:59:01', '2018-11-08 16:59:01', NULL),
(27, 51, 2, '2018-11-08 16:59:40', '2018-11-08 16:59:40', NULL),
(28, 13, 2, '2018-11-08 17:01:30', '2018-11-11 03:31:25', '2018-11-11 03:31:25'),
(29, 14, 2, '2018-11-08 17:01:48', '2018-11-08 17:01:48', NULL),
(30, 34, 2, '2018-11-08 17:02:25', '2018-11-08 17:02:25', NULL),
(31, 12, 2, '2018-11-08 17:24:28', '2018-11-08 17:24:28', NULL),
(32, 62, 5, '2018-11-11 03:31:59', '2018-11-11 03:31:59', NULL),
(33, 60, 3, '2018-11-11 03:32:32', '2018-11-11 03:32:32', NULL),
(34, 58, 5, '2018-11-11 03:33:05', '2018-11-11 03:33:05', NULL),
(35, 35, 2, '2018-11-11 03:33:31', '2018-11-11 03:33:31', NULL),
(36, 38, 2, '2018-11-11 03:33:56', '2018-11-11 03:33:56', NULL),
(37, 40, 3, '2018-11-11 03:35:05', '2018-11-11 03:35:05', NULL),
(38, 52, 2, '2018-11-11 03:35:18', '2018-11-11 03:35:18', NULL),
(39, 53, 2, '2018-11-11 03:35:47', '2018-11-11 03:35:47', NULL),
(40, 50, 5, '2018-11-11 03:36:52', '2018-11-11 03:36:52', NULL),
(41, 36, 3, '2018-11-11 03:37:09', '2018-11-11 03:37:09', NULL),
(42, 39, 2, '2018-11-11 03:37:26', '2018-11-11 03:37:26', NULL),
(43, 33, 2, '2018-11-11 03:39:14', '2018-11-11 03:39:21', '2018-11-11 03:39:21'),
(44, 33, 2, '2018-11-11 03:39:14', '2018-11-11 03:39:14', NULL),
(45, 56, 5, '2018-11-11 03:44:33', '2018-11-11 03:44:39', '2018-11-11 03:44:39'),
(46, 56, 5, '2018-11-11 03:44:34', '2018-11-11 03:44:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant_statuses`
--
ALTER TABLE `applicant_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committees`
--
ALTER TABLE `committees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_details`
--
ALTER TABLE `interview_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_questions`
--
ALTER TABLE `interview_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_times`
--
ALTER TABLE `interview_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_committees`
--
ALTER TABLE `user_committees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `applicant_statuses`
--
ALTER TABLE `applicant_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `committees`
--
ALTER TABLE `committees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `interview_details`
--
ALTER TABLE `interview_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `interview_questions`
--
ALTER TABLE `interview_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `interview_times`
--
ALTER TABLE `interview_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=760;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `user_committees`
--
ALTER TABLE `user_committees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
