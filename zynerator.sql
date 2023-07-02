-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 02 juil. 2023 à 21:42
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `zynerator`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `present` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `email`, `full_name`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `present`) VALUES
(1, '', '2023-06-13 23:16:17', '', NULL, 'email1', 'fullName1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', '2023-06-13 23:16:17', '', NULL, 'email2', 'fullName2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '', '2023-06-13 23:16:17', '', NULL, 'email3', 'fullName3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '', '2023-06-13 23:16:17', '', NULL, 'email4', 'fullName4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', '2023-06-13 23:16:17', '', NULL, 'email5', 'fullName5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', '2023-06-13 23:16:17', '', NULL, 'email6', 'fullName6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', '2023-06-13 23:16:17', '', NULL, 'email7', 'fullName7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '', '2023-06-13 23:16:17', '', NULL, 'email8', 'fullName8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '', '2023-06-13 23:16:17', '', NULL, 'email9', 'fullName9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '', '2023-06-13 23:16:17', '', NULL, 'email10', 'fullName10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '', '2023-06-13 23:16:17', '', NULL, 'email11', 'fullName11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '', '2023-06-13 23:16:17', '', NULL, 'email12', 'fullName12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '', '2023-06-13 23:16:17', '', NULL, 'email13', 'fullName13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '', '2023-06-13 23:16:17', '', NULL, 'email14', 'fullName14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '', '2023-06-13 23:16:17', '', NULL, 'email15', 'fullName15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '', '2023-06-13 23:16:17', '', NULL, 'email16', 'fullName16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '', '2023-06-13 23:16:17', '', NULL, 'email17', 'fullName17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '', '2023-06-13 23:16:17', '', NULL, 'email18', 'fullName18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '', '2023-06-13 23:16:17', '', NULL, 'email19', 'fullName19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '', '2023-06-13 23:16:17', '', NULL, 'email20', 'fullName20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '', '2023-06-13 23:16:17', '', NULL, 'email21', 'fullName21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '', '2023-06-13 23:16:17', '', NULL, 'email22', 'fullName22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '', '2023-06-13 23:16:17', '', NULL, 'email23', 'fullName23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '', '2023-06-13 23:16:17', '', NULL, 'email24', 'fullName24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '', '2023-06-13 23:16:17', '', NULL, 'email25', 'fullName25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '', '2023-06-13 23:16:17', '', NULL, 'email26', 'fullName26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '', '2023-06-13 23:16:18', '', NULL, 'email27', 'fullName27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '', '2023-06-13 23:16:18', '', NULL, 'email28', 'fullName28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '', '2023-06-13 23:16:18', '', NULL, 'email29', 'fullName29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '', '2023-06-13 23:16:18', '', NULL, 'email30', 'fullName30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '', '2023-06-13 23:16:18', '', NULL, 'email31', 'fullName31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '', '2023-06-13 23:16:18', '', NULL, 'email32', 'fullName32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '', '2023-06-13 23:16:18', '', NULL, 'email33', 'fullName33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '', '2023-06-13 23:16:18', '', NULL, 'email34', 'fullName34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '', '2023-06-13 23:16:18', '', NULL, 'email35', 'fullName35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '', '2023-06-13 23:16:18', '', NULL, 'email36', 'fullName36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '', '2023-06-13 23:16:18', '', NULL, 'email37', 'fullName37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '', '2023-06-13 23:16:18', '', NULL, 'email38', 'fullName38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '', '2023-06-13 23:16:18', '', NULL, 'email39', 'fullName39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '', '2023-06-13 23:16:18', '', NULL, 'email40', 'fullName40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '', '2023-06-13 23:16:18', '', NULL, 'email41', 'fullName41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '', '2023-06-13 23:16:18', '', NULL, 'email42', 'fullName42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '', '2023-06-13 23:16:18', '', NULL, 'email43', 'fullName43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '', '2023-06-13 23:16:18', '', NULL, 'email44', 'fullName44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '', '2023-06-13 23:16:18', '', NULL, 'email45', 'fullName45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '', '2023-06-13 23:16:18', '', NULL, 'email46', 'fullName46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '', '2023-06-13 23:16:18', '', NULL, 'email47', 'fullName47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '', '2023-06-13 23:16:18', '', NULL, 'email48', 'fullName48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '', '2023-06-13 23:16:18', '', NULL, 'email49', 'fullName49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '', '2023-06-13 23:16:18', '', NULL, 'email50', 'fullName50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '', '2023-06-13 23:16:18', '', NULL, 'email51', 'fullName51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '', '2023-06-13 23:16:18', '', NULL, 'email52', 'fullName52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '', '2023-06-13 23:16:18', '', NULL, 'email53', 'fullName53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '', '2023-06-13 23:16:18', '', NULL, 'email54', 'fullName54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '', '2023-06-13 23:16:18', '', NULL, 'email55', 'fullName55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '', '2023-06-13 23:16:18', '', NULL, 'email56', 'fullName56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '', '2023-06-13 23:16:18', '', NULL, 'email57', 'fullName57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '', '2023-06-13 23:16:18', '', NULL, 'email58', 'fullName58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '', '2023-06-13 23:16:18', '', NULL, 'email59', 'fullName59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '', '2023-06-13 23:16:18', '', NULL, 'email60', 'fullName60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '', '2023-06-13 23:16:18', '', NULL, 'email61', 'fullName61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '', '2023-06-13 23:16:18', '', NULL, 'email62', 'fullName62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '', '2023-06-13 23:16:18', '', NULL, 'email63', 'fullName63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '', '2023-06-13 23:16:18', '', NULL, 'email64', 'fullName64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '', '2023-06-13 23:16:18', '', NULL, 'email65', 'fullName65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '', '2023-06-13 23:16:18', '', NULL, 'email66', 'fullName66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '', '2023-06-13 23:16:18', '', NULL, 'email67', 'fullName67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '', '2023-06-13 23:16:18', '', NULL, 'email68', 'fullName68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '', '2023-06-13 23:16:18', '', NULL, 'email69', 'fullName69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '', '2023-06-13 23:16:18', '', NULL, 'email70', 'fullName70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '', '2023-06-13 23:16:18', '', NULL, 'email71', 'fullName71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '', '2023-06-13 23:16:18', '', NULL, 'email72', 'fullName72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '', '2023-06-13 23:16:18', '', NULL, 'email73', 'fullName73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '', '2023-06-13 23:16:18', '', NULL, 'email74', 'fullName74', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '', '2023-06-13 23:16:18', '', NULL, 'email75', 'fullName75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '', '2023-06-13 23:16:18', '', NULL, 'email76', 'fullName76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '', '2023-06-13 23:16:18', '', NULL, 'email77', 'fullName77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '', '2023-06-13 23:16:18', '', NULL, 'email78', 'fullName78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '', '2023-06-13 23:16:18', '', NULL, 'email79', 'fullName79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '', '2023-06-13 23:16:18', '', NULL, 'email80', 'fullName80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '', '2023-06-13 23:16:18', '', NULL, 'email81', 'fullName81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '', '2023-06-13 23:16:18', '', NULL, 'email82', 'fullName82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '', '2023-06-13 23:16:18', '', NULL, 'email83', 'fullName83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '', '2023-06-13 23:16:18', '', NULL, 'email84', 'fullName84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '', '2023-06-13 23:16:18', '', NULL, 'email85', 'fullName85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '', '2023-06-13 23:16:18', '', NULL, 'email86', 'fullName86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '', '2023-06-13 23:16:18', '', NULL, 'email87', 'fullName87', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '', '2023-06-13 23:16:18', '', NULL, 'email88', 'fullName88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '', '2023-06-13 23:16:18', '', NULL, 'email89', 'fullName89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '', '2023-06-13 23:16:18', '', NULL, 'email90', 'fullName90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '', '2023-06-13 23:16:18', '', NULL, 'email91', 'fullName91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '', '2023-06-13 23:16:18', '', NULL, 'email92', 'fullName92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '', '2023-06-13 23:16:18', '', NULL, 'email93', 'fullName93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '', '2023-06-13 23:16:18', '', NULL, 'email94', 'fullName94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '', '2023-06-13 23:16:18', '', NULL, 'email95', 'fullName95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '', '2023-06-13 23:16:18', '', NULL, 'email96', 'fullName96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '', '2023-06-13 23:16:18', '', NULL, 'email97', 'fullName97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '', '2023-06-13 23:16:18', '', NULL, 'email98', 'fullName98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '', '2023-06-13 23:16:18', '', NULL, 'email99', 'fullName99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '', '2023-06-17 08:39:51', '', NULL, 'email1', 'fullName1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '', '2023-06-17 08:39:52', '', NULL, 'email2', 'fullName2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '', '2023-06-17 08:39:52', '', NULL, 'email3', 'fullName3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '', '2023-06-17 08:39:52', '', NULL, 'email4', 'fullName4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '', '2023-06-17 08:39:52', '', NULL, 'email5', 'fullName5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '', '2023-06-17 08:39:52', '', NULL, 'email6', 'fullName6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '', '2023-06-17 08:39:52', '', NULL, 'email7', 'fullName7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '', '2023-06-17 08:39:52', '', NULL, 'email8', 'fullName8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '', '2023-06-17 08:39:52', '', NULL, 'email9', 'fullName9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '', '2023-06-17 08:39:52', '', NULL, 'email10', 'fullName10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '', '2023-06-17 08:39:52', '', NULL, 'email11', 'fullName11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '', '2023-06-17 08:39:52', '', NULL, 'email12', 'fullName12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '', '2023-06-17 08:39:52', '', NULL, 'email13', 'fullName13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '', '2023-06-17 08:39:52', '', NULL, 'email14', 'fullName14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '', '2023-06-17 08:39:52', '', NULL, 'email15', 'fullName15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '', '2023-06-17 08:39:52', '', NULL, 'email16', 'fullName16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '', '2023-06-17 08:39:52', '', NULL, 'email17', 'fullName17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '', '2023-06-17 08:39:52', '', NULL, 'email18', 'fullName18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '', '2023-06-17 08:39:52', '', NULL, 'email19', 'fullName19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '', '2023-06-17 08:39:52', '', NULL, 'email20', 'fullName20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '', '2023-06-17 08:39:52', '', NULL, 'email21', 'fullName21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '', '2023-06-17 08:39:52', '', NULL, 'email22', 'fullName22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '', '2023-06-17 08:39:52', '', NULL, 'email23', 'fullName23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '', '2023-06-17 08:39:52', '', NULL, 'email24', 'fullName24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '', '2023-06-17 08:39:52', '', NULL, 'email25', 'fullName25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '', '2023-06-17 08:39:52', '', NULL, 'email26', 'fullName26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '', '2023-06-17 08:39:52', '', NULL, 'email27', 'fullName27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '', '2023-06-17 08:39:52', '', NULL, 'email28', 'fullName28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '', '2023-06-17 08:39:52', '', NULL, 'email29', 'fullName29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '', '2023-06-17 08:39:52', '', NULL, 'email30', 'fullName30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '', '2023-06-17 08:39:52', '', NULL, 'email31', 'fullName31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '', '2023-06-17 08:39:52', '', NULL, 'email32', 'fullName32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '', '2023-06-17 08:39:52', '', NULL, 'email33', 'fullName33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '', '2023-06-17 08:39:52', '', NULL, 'email34', 'fullName34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '', '2023-06-17 08:39:52', '', NULL, 'email35', 'fullName35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '', '2023-06-17 08:39:52', '', NULL, 'email36', 'fullName36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '', '2023-06-17 08:39:52', '', NULL, 'email37', 'fullName37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '', '2023-06-17 08:39:52', '', NULL, 'email38', 'fullName38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '', '2023-06-17 08:39:52', '', NULL, 'email39', 'fullName39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '', '2023-06-17 08:39:52', '', NULL, 'email40', 'fullName40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '', '2023-06-17 08:39:52', '', NULL, 'email41', 'fullName41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '', '2023-06-17 08:39:52', '', NULL, 'email42', 'fullName42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '', '2023-06-17 08:39:52', '', NULL, 'email43', 'fullName43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '', '2023-06-17 08:39:52', '', NULL, 'email44', 'fullName44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '', '2023-06-17 08:39:52', '', NULL, 'email45', 'fullName45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '', '2023-06-17 08:39:52', '', NULL, 'email46', 'fullName46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '', '2023-06-17 08:39:52', '', NULL, 'email47', 'fullName47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '', '2023-06-17 08:39:52', '', NULL, 'email48', 'fullName48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '', '2023-06-17 08:39:52', '', NULL, 'email49', 'fullName49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '', '2023-06-17 08:39:52', '', NULL, 'email50', 'fullName50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '', '2023-06-17 08:39:52', '', NULL, 'email51', 'fullName51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '', '2023-06-17 08:39:52', '', NULL, 'email52', 'fullName52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '', '2023-06-17 08:39:52', '', NULL, 'email53', 'fullName53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '', '2023-06-17 08:39:52', '', NULL, 'email54', 'fullName54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '', '2023-06-17 08:39:52', '', NULL, 'email55', 'fullName55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '', '2023-06-17 08:39:52', '', NULL, 'email56', 'fullName56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '', '2023-06-17 08:39:52', '', NULL, 'email57', 'fullName57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '', '2023-06-17 08:39:52', '', NULL, 'email58', 'fullName58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '', '2023-06-17 08:39:52', '', NULL, 'email59', 'fullName59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '', '2023-06-17 08:39:52', '', NULL, 'email60', 'fullName60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '', '2023-06-17 08:39:52', '', NULL, 'email61', 'fullName61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '', '2023-06-17 08:39:52', '', NULL, 'email62', 'fullName62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '', '2023-06-17 08:39:52', '', NULL, 'email63', 'fullName63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '', '2023-06-17 08:39:52', '', NULL, 'email64', 'fullName64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '', '2023-06-17 08:39:52', '', NULL, 'email65', 'fullName65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '', '2023-06-17 08:39:52', '', NULL, 'email66', 'fullName66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '', '2023-06-17 08:39:52', '', NULL, 'email67', 'fullName67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '', '2023-06-17 08:39:52', '', NULL, 'email68', 'fullName68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '', '2023-06-17 08:39:52', '', NULL, 'email69', 'fullName69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '', '2023-06-17 08:39:52', '', NULL, 'email70', 'fullName70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '', '2023-06-17 08:39:52', '', NULL, 'email71', 'fullName71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '', '2023-06-17 08:39:52', '', NULL, 'email72', 'fullName72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '', '2023-06-17 08:39:52', '', NULL, 'email73', 'fullName73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '', '2023-06-17 08:39:52', '', NULL, 'email74', 'fullName74', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '', '2023-06-17 08:39:52', '', NULL, 'email75', 'fullName75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '', '2023-06-17 08:39:52', '', NULL, 'email76', 'fullName76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '', '2023-06-17 08:39:52', '', NULL, 'email77', 'fullName77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '', '2023-06-17 08:39:52', '', NULL, 'email78', 'fullName78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '', '2023-06-17 08:39:52', '', NULL, 'email79', 'fullName79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '', '2023-06-17 08:39:52', '', NULL, 'email80', 'fullName80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '', '2023-06-17 08:39:52', '', NULL, 'email81', 'fullName81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '', '2023-06-17 08:39:52', '', NULL, 'email82', 'fullName82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '', '2023-06-17 08:39:52', '', NULL, 'email83', 'fullName83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '', '2023-06-17 08:39:52', '', NULL, 'email84', 'fullName84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '', '2023-06-17 08:39:52', '', NULL, 'email85', 'fullName85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '', '2023-06-17 08:39:52', '', NULL, 'email86', 'fullName86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '', '2023-06-17 08:39:52', '', NULL, 'email87', 'fullName87', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '', '2023-06-17 08:39:52', '', NULL, 'email88', 'fullName88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '', '2023-06-17 08:39:52', '', NULL, 'email89', 'fullName89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '', '2023-06-17 08:39:52', '', NULL, 'email90', 'fullName90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '', '2023-06-17 18:32:14', '', NULL, 'email2', 'fullName2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '', '2023-06-17 18:32:13', '', NULL, 'email1', 'fullName1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '', '2023-06-17 08:39:52', '', NULL, 'email93', 'fullName93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '', '2023-06-17 18:32:14', '', NULL, 'email3', 'fullName3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '', '2023-06-17 18:32:14', '', NULL, 'email4', 'fullName4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '', '2023-06-17 18:32:14', '', NULL, 'email5', 'fullName5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '', '2023-06-17 08:39:52', '', NULL, 'email97', 'fullName97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '', '2023-06-17 08:39:52', '', NULL, 'email98', 'fullName98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '', '2023-06-17 08:39:52', '', NULL, 'email99', 'fullName99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '', '2023-06-17 18:32:14', '', NULL, 'email6', 'fullName6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '', '2023-06-17 18:32:14', '', NULL, 'email7', 'fullName7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '', '2023-06-17 18:32:14', '', NULL, 'email8', 'fullName8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '', '2023-06-17 18:32:14', '', NULL, 'email9', 'fullName9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '', '2023-06-17 18:32:14', '', NULL, 'email10', 'fullName10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '', '2023-06-17 18:32:14', '', NULL, 'email11', 'fullName11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '', '2023-06-17 18:32:14', '', NULL, 'email12', 'fullName12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '', '2023-06-17 18:32:14', '', NULL, 'email13', 'fullName13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '', '2023-06-17 18:32:14', '', NULL, 'email14', 'fullName14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '', '2023-06-17 18:32:14', '', NULL, 'email15', 'fullName15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '', '2023-06-17 18:32:14', '', NULL, 'email16', 'fullName16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, '', '2023-06-17 18:32:14', '', NULL, 'email17', 'fullName17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '', '2023-06-17 18:32:14', '', NULL, 'email18', 'fullName18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '', '2023-06-17 18:32:14', '', NULL, 'email19', 'fullName19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '', '2023-06-17 18:32:14', '', NULL, 'email20', 'fullName20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '', '2023-06-17 18:32:14', '', NULL, 'email21', 'fullName21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '', '2023-06-17 18:32:14', '', NULL, 'email22', 'fullName22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '', '2023-06-17 18:32:14', '', NULL, 'email23', 'fullName23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '', '2023-06-17 18:32:14', '', NULL, 'email24', 'fullName24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '', '2023-06-17 18:32:14', '', NULL, 'email25', 'fullName25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '', '2023-06-17 18:32:14', '', NULL, 'email26', 'fullName26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '', '2023-06-17 18:32:14', '', NULL, 'email27', 'fullName27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '', '2023-06-17 18:32:14', '', NULL, 'email28', 'fullName28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '', '2023-06-17 18:32:14', '', NULL, 'email29', 'fullName29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '', '2023-06-17 18:32:14', '', NULL, 'email30', 'fullName30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '', '2023-06-17 18:32:14', '', NULL, 'email31', 'fullName31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '', '2023-06-17 18:32:14', '', NULL, 'email32', 'fullName32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '', '2023-06-17 18:32:14', '', NULL, 'email33', 'fullName33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '', '2023-06-17 18:32:14', '', NULL, 'email34', 'fullName34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '', '2023-06-17 18:32:14', '', NULL, 'email35', 'fullName35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '', '2023-06-17 18:32:14', '', NULL, 'email36', 'fullName36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '', '2023-06-17 18:32:14', '', NULL, 'email37', 'fullName37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '', '2023-06-17 18:32:14', '', NULL, 'email38', 'fullName38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '', '2023-06-17 18:32:14', '', NULL, 'email39', 'fullName39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '', '2023-06-17 18:32:14', '', NULL, 'email40', 'fullName40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '', '2023-06-17 18:32:14', '', NULL, 'email41', 'fullName41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '', '2023-06-17 18:32:14', '', NULL, 'email42', 'fullName42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '', '2023-06-17 18:32:14', '', NULL, 'email43', 'fullName43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '', '2023-06-17 18:32:14', '', NULL, 'email44', 'fullName44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '', '2023-06-17 18:32:14', '', NULL, 'email45', 'fullName45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '', '2023-06-17 18:32:14', '', NULL, 'email46', 'fullName46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '', '2023-06-17 18:32:14', '', NULL, 'email47', 'fullName47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '', '2023-06-17 18:32:14', '', NULL, 'email48', 'fullName48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '', '2023-06-17 18:32:14', '', NULL, 'email49', 'fullName49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '', '2023-06-17 18:32:14', '', NULL, 'email50', 'fullName50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '', '2023-06-17 18:32:14', '', NULL, 'email51', 'fullName51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '', '2023-06-17 18:32:14', '', NULL, 'email52', 'fullName52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '', '2023-06-17 18:32:14', '', NULL, 'email53', 'fullName53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '', '2023-06-17 18:32:14', '', NULL, 'email54', 'fullName54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '', '2023-06-17 18:32:14', '', NULL, 'email55', 'fullName55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '', '2023-06-17 18:32:14', '', NULL, 'email56', 'fullName56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '', '2023-06-17 18:32:14', '', NULL, 'email57', 'fullName57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '', '2023-06-17 18:32:14', '', NULL, 'email58', 'fullName58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '', '2023-06-17 18:32:14', '', NULL, 'email59', 'fullName59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '', '2023-06-17 18:32:14', '', NULL, 'email60', 'fullName60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '', '2023-06-17 18:32:14', '', NULL, 'email61', 'fullName61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '', '2023-06-17 18:32:14', '', NULL, 'email62', 'fullName62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '', '2023-06-17 18:32:14', '', NULL, 'email63', 'fullName63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '', '2023-06-17 18:32:14', '', NULL, 'email64', 'fullName64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '', '2023-06-17 18:32:14', '', NULL, 'email65', 'fullName65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '', '2023-06-17 18:32:14', '', NULL, 'email66', 'fullName66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '', '2023-06-17 18:32:14', '', NULL, 'email67', 'fullName67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '', '2023-06-17 18:32:14', '', NULL, 'email68', 'fullName68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '', '2023-06-17 18:32:14', '', NULL, 'email69', 'fullName69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '', '2023-06-17 18:32:14', '', NULL, 'email70', 'fullName70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '', '2023-06-17 18:32:14', '', NULL, 'email71', 'fullName71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '', '2023-06-17 18:32:14', '', NULL, 'email72', 'fullName72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '', '2023-06-17 18:32:14', '', NULL, 'email73', 'fullName73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '', '2023-06-17 18:32:14', '', NULL, 'email74', 'fullName74', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '', '2023-06-17 18:32:14', '', NULL, 'email75', 'fullName75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '', '2023-06-17 18:32:14', '', NULL, 'email76', 'fullName76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '', '2023-06-17 18:32:14', '', NULL, 'email77', 'fullName77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '', '2023-06-17 18:32:14', '', NULL, 'email78', 'fullName78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '', '2023-06-17 18:32:14', '', NULL, 'email79', 'fullName79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '', '2023-06-17 18:32:14', '', NULL, 'email80', 'fullName80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '', '2023-06-17 18:32:14', '', NULL, 'email81', 'fullName81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '', '2023-06-17 18:32:14', '', NULL, 'email82', 'fullName82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '', '2023-06-17 18:32:14', '', NULL, 'email83', 'fullName83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '', '2023-06-17 18:32:14', '', NULL, 'email84', 'fullName84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '', '2023-06-17 18:32:14', '', NULL, 'email85', 'fullName85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '', '2023-06-17 18:32:14', '', NULL, 'email86', 'fullName86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, '', '2023-06-17 18:32:14', '', NULL, 'email87', 'fullName87', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '', '2023-06-17 18:32:14', '', NULL, 'email88', 'fullName88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '', '2023-06-17 18:32:14', '', NULL, 'email89', 'fullName89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, '', '2023-06-17 18:32:14', '', NULL, 'email91', 'fullName91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, '', '2023-06-17 18:32:14', '', NULL, 'email92', 'fullName92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '', '2023-06-17 18:32:14', '', NULL, 'email93', 'fullName93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, '', '2023-06-17 18:32:14', '', NULL, 'email94', 'fullName94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, '', '2023-06-17 18:32:14', '', NULL, 'email95', 'fullName95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, '', '2023-06-17 18:32:14', '', NULL, 'email96', 'fullName96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, '', '2023-06-17 18:32:14', '', NULL, 'email97', 'fullName97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, '', '2023-06-17 18:32:15', '', NULL, 'email98', 'fullName98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, '', '2023-06-17 18:32:15', 'anonymousUser', '2023-06-23 16:52:08', 'email99', 'fullName990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client_seq`
--

CREATE TABLE `client_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client_seq`
--

INSERT INTO `client_seq` (`next_val`) VALUES
(307),
(307);

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE `etablissement` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etablissement_seq`
--

CREATE TABLE `etablissement_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etablissement_seq`
--

INSERT INTO `etablissement_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(23),
(23),
(23);

-- --------------------------------------------------------

--
-- Structure de la table `permission`
--

CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `permission`
--

INSERT INTO `permission` (`id`, `name`) VALUES
(1, 'Client.edit'),
(2, 'Client.list'),
(3, 'Client.view'),
(4, 'Client.add'),
(5, 'Client.delete'),
(6, 'Product.edit'),
(7, 'Product.list'),
(8, 'Product.view'),
(9, 'Product.add'),
(10, 'Product.delete'),
(11, 'PurchaseItem.edit'),
(12, 'PurchaseItem.list'),
(13, 'PurchaseItem.view'),
(14, 'PurchaseItem.add'),
(15, 'PurchaseItem.delete'),
(16, 'Purchase.edit'),
(17, 'Purchase.list'),
(18, 'Purchase.view'),
(19, 'Purchase.add'),
(20, 'Purchase.delete');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `reference`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`) VALUES
(1, '', '2023-06-13 23:16:18', '', NULL, 'code1', 'reference1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', '2023-06-13 23:16:18', '', NULL, 'code2', 'reference2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '', '2023-06-13 23:16:18', '', NULL, 'code3', 'reference3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '', '2023-06-13 23:16:18', '', NULL, 'code4', 'reference4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', '2023-06-13 23:16:18', '', NULL, 'code5', 'reference5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', '2023-06-13 23:16:18', '', NULL, 'code6', 'reference6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', '2023-06-13 23:16:18', '', NULL, 'code7', 'reference7', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '', '2023-06-13 23:16:18', '', NULL, 'code8', 'reference8', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '', '2023-06-13 23:16:18', '', NULL, 'code9', 'reference9', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '', '2023-06-13 23:16:18', '', NULL, 'code10', 'reference10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '', '2023-06-13 23:16:18', '', NULL, 'code11', 'reference11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '', '2023-06-13 23:16:18', '', NULL, 'code12', 'reference12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '', '2023-06-13 23:16:18', '', NULL, 'code13', 'reference13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '', '2023-06-13 23:16:18', '', NULL, 'code14', 'reference14', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '', '2023-06-13 23:16:18', '', NULL, 'code15', 'reference15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '', '2023-06-13 23:16:18', '', NULL, 'code16', 'reference16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '', '2023-06-13 23:16:18', '', NULL, 'code17', 'reference17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '', '2023-06-13 23:16:18', '', NULL, 'code18', 'reference18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '', '2023-06-13 23:16:18', '', NULL, 'code19', 'reference19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '', '2023-06-13 23:16:18', '', NULL, 'code20', 'reference20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '', '2023-06-13 23:16:18', '', NULL, 'code21', 'reference21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '', '2023-06-13 23:16:18', '', NULL, 'code22', 'reference22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '', '2023-06-13 23:16:18', '', NULL, 'code23', 'reference23', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '', '2023-06-13 23:16:18', '', NULL, 'code24', 'reference24', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '', '2023-06-13 23:16:18', '', NULL, 'code25', 'reference25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '', '2023-06-13 23:16:18', '', NULL, 'code26', 'reference26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '', '2023-06-13 23:16:18', '', NULL, 'code27', 'reference27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '', '2023-06-13 23:16:18', '', NULL, 'code28', 'reference28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '', '2023-06-13 23:16:18', '', NULL, 'code29', 'reference29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '', '2023-06-13 23:16:18', '', NULL, 'code30', 'reference30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '', '2023-06-13 23:16:18', '', NULL, 'code31', 'reference31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '', '2023-06-13 23:16:18', '', NULL, 'code32', 'reference32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '', '2023-06-13 23:16:18', '', NULL, 'code33', 'reference33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '', '2023-06-13 23:16:18', '', NULL, 'code34', 'reference34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '', '2023-06-13 23:16:18', '', NULL, 'code35', 'reference35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '', '2023-06-13 23:16:18', '', NULL, 'code36', 'reference36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '', '2023-06-13 23:16:18', '', NULL, 'code37', 'reference37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '', '2023-06-13 23:16:18', '', NULL, 'code38', 'reference38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '', '2023-06-13 23:16:18', '', NULL, 'code39', 'reference39', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '', '2023-06-13 23:16:18', '', NULL, 'code40', 'reference40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '', '2023-06-13 23:16:18', '', NULL, 'code41', 'reference41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '', '2023-06-13 23:16:18', '', NULL, 'code42', 'reference42', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '', '2023-06-13 23:16:18', '', NULL, 'code43', 'reference43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '', '2023-06-13 23:16:18', '', NULL, 'code44', 'reference44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '', '2023-06-13 23:16:18', '', NULL, 'code45', 'reference45', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '', '2023-06-13 23:16:18', '', NULL, 'code46', 'reference46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '', '2023-06-13 23:16:18', '', NULL, 'code47', 'reference47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '', '2023-06-13 23:16:18', '', NULL, 'code48', 'reference48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '', '2023-06-13 23:16:18', '', NULL, 'code49', 'reference49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '', '2023-06-13 23:16:18', '', NULL, 'code50', 'reference50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '', '2023-06-13 23:16:18', '', NULL, 'code51', 'reference51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '', '2023-06-13 23:16:18', '', NULL, 'code52', 'reference52', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '', '2023-06-13 23:16:18', '', NULL, 'code53', 'reference53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '', '2023-06-13 23:16:18', '', NULL, 'code54', 'reference54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '', '2023-06-13 23:16:18', '', NULL, 'code55', 'reference55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '', '2023-06-13 23:16:18', '', NULL, 'code56', 'reference56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '', '2023-06-13 23:16:18', '', NULL, 'code57', 'reference57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '', '2023-06-13 23:16:18', '', NULL, 'code58', 'reference58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '', '2023-06-13 23:16:18', '', NULL, 'code59', 'reference59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '', '2023-06-13 23:16:18', '', NULL, 'code60', 'reference60', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '', '2023-06-13 23:16:18', '', NULL, 'code61', 'reference61', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '', '2023-06-13 23:16:18', '', NULL, 'code62', 'reference62', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '', '2023-06-13 23:16:18', '', NULL, 'code63', 'reference63', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '', '2023-06-13 23:16:18', '', NULL, 'code64', 'reference64', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '', '2023-06-13 23:16:18', '', NULL, 'code65', 'reference65', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '', '2023-06-13 23:16:18', '', NULL, 'code66', 'reference66', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '', '2023-06-13 23:16:18', '', NULL, 'code67', 'reference67', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '', '2023-06-13 23:16:18', '', NULL, 'code68', 'reference68', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '', '2023-06-13 23:16:18', '', NULL, 'code69', 'reference69', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '', '2023-06-13 23:16:18', '', NULL, 'code70', 'reference70', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '', '2023-06-13 23:16:18', '', NULL, 'code71', 'reference71', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '', '2023-06-13 23:16:18', '', NULL, 'code72', 'reference72', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '', '2023-06-13 23:16:18', '', NULL, 'code73', 'reference73', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '', '2023-06-13 23:16:18', '', NULL, 'code74', 'reference74', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '', '2023-06-13 23:16:18', '', NULL, 'code75', 'reference75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '', '2023-06-13 23:16:18', '', NULL, 'code76', 'reference76', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '', '2023-06-13 23:16:18', '', NULL, 'code77', 'reference77', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '', '2023-06-13 23:16:18', '', NULL, 'code78', 'reference78', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '', '2023-06-13 23:16:18', '', NULL, 'code79', 'reference79', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '', '2023-06-13 23:16:18', '', NULL, 'code80', 'reference80', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '', '2023-06-13 23:16:18', '', NULL, 'code81', 'reference81', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '', '2023-06-13 23:16:18', '', NULL, 'code82', 'reference82', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '', '2023-06-13 23:16:18', '', NULL, 'code83', 'reference83', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '', '2023-06-13 23:16:18', '', NULL, 'code84', 'reference84', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '', '2023-06-13 23:16:18', '', NULL, 'code85', 'reference85', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '', '2023-06-13 23:16:18', '', NULL, 'code86', 'reference86', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '', '2023-06-13 23:16:18', '', NULL, 'code87', 'reference87', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '', '2023-06-13 23:16:18', '', NULL, 'code88', 'reference88', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '', '2023-06-13 23:16:18', '', NULL, 'code89', 'reference89', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '', '2023-06-13 23:16:18', '', NULL, 'code90', 'reference90', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '', '2023-06-13 23:16:18', '', NULL, 'code91', 'reference91', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '', '2023-06-13 23:16:18', '', NULL, 'code92', 'reference92', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '', '2023-06-13 23:16:18', '', NULL, 'code93', 'reference93', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '', '2023-06-13 23:16:18', '', NULL, 'code94', 'reference94', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '', '2023-06-13 23:16:18', '', NULL, 'code95', 'reference95', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '', '2023-06-13 23:16:18', '', NULL, 'code96', 'reference96', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '', '2023-06-13 23:16:18', '', NULL, 'code97', 'reference97', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '', '2023-06-13 23:16:18', '', NULL, 'code98', 'reference98', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '', '2023-06-13 23:16:18', '', NULL, 'code99', 'reference99', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '', '2023-06-17 08:39:52', '', NULL, 'code1', 'reference1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '', '2023-06-17 08:39:53', '', NULL, 'code2', 'reference2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '', '2023-06-17 08:39:53', '', NULL, 'code3', 'reference3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '', '2023-06-17 08:39:53', '', NULL, 'code4', 'reference4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '', '2023-06-17 08:39:53', '', NULL, 'code5', 'reference5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '', '2023-06-17 08:39:53', '', NULL, 'code6', 'reference6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '', '2023-06-17 08:39:53', '', NULL, 'code7', 'reference7', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '', '2023-06-17 08:39:53', '', NULL, 'code8', 'reference8', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '', '2023-06-17 08:39:53', '', NULL, 'code9', 'reference9', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '', '2023-06-17 08:39:53', '', NULL, 'code10', 'reference10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '', '2023-06-17 08:39:53', '', NULL, 'code11', 'reference11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '', '2023-06-17 08:39:53', '', NULL, 'code12', 'reference12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '', '2023-06-17 08:39:53', '', NULL, 'code13', 'reference13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '', '2023-06-17 08:39:53', '', NULL, 'code14', 'reference14', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '', '2023-06-17 08:39:53', '', NULL, 'code15', 'reference15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '', '2023-06-17 08:39:53', '', NULL, 'code16', 'reference16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '', '2023-06-17 08:39:53', '', NULL, 'code17', 'reference17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '', '2023-06-17 08:39:53', '', NULL, 'code18', 'reference18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '', '2023-06-17 08:39:53', '', NULL, 'code19', 'reference19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '', '2023-06-17 08:39:53', '', NULL, 'code20', 'reference20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '', '2023-06-17 08:39:53', '', NULL, 'code21', 'reference21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '', '2023-06-17 08:39:53', '', NULL, 'code22', 'reference22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '', '2023-06-17 08:39:54', '', NULL, 'code23', 'reference23', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '', '2023-06-17 08:39:54', '', NULL, 'code24', 'reference24', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '', '2023-06-17 08:39:54', '', NULL, 'code25', 'reference25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '', '2023-06-17 08:39:54', '', NULL, 'code26', 'reference26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '', '2023-06-17 08:39:54', '', NULL, 'code27', 'reference27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '', '2023-06-17 08:39:54', '', NULL, 'code28', 'reference28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '', '2023-06-17 08:39:54', '', NULL, 'code29', 'reference29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '', '2023-06-17 08:39:54', '', NULL, 'code30', 'reference30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '', '2023-06-17 08:39:54', '', NULL, 'code31', 'reference31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '', '2023-06-17 08:39:54', '', NULL, 'code32', 'reference32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '', '2023-06-17 08:39:54', '', NULL, 'code33', 'reference33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '', '2023-06-17 08:39:54', '', NULL, 'code34', 'reference34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '', '2023-06-17 08:39:54', '', NULL, 'code35', 'reference35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '', '2023-06-17 08:39:54', '', NULL, 'code36', 'reference36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '', '2023-06-17 08:39:54', '', NULL, 'code37', 'reference37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '', '2023-06-17 08:39:54', '', NULL, 'code38', 'reference38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '', '2023-06-17 08:39:54', '', NULL, 'code39', 'reference39', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '', '2023-06-17 08:39:54', '', NULL, 'code40', 'reference40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '', '2023-06-17 08:39:54', '', NULL, 'code41', 'reference41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '', '2023-06-17 08:39:54', '', NULL, 'code42', 'reference42', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '', '2023-06-17 08:39:54', '', NULL, 'code43', 'reference43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '', '2023-06-17 08:39:54', '', NULL, 'code44', 'reference44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '', '2023-06-17 08:39:54', '', NULL, 'code45', 'reference45', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '', '2023-06-17 08:39:54', '', NULL, 'code46', 'reference46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '', '2023-06-17 08:39:54', '', NULL, 'code47', 'reference47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '', '2023-06-17 08:39:54', '', NULL, 'code48', 'reference48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '', '2023-06-17 08:39:54', '', NULL, 'code49', 'reference49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '', '2023-06-17 08:39:54', '', NULL, 'code50', 'reference50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '', '2023-06-17 08:39:54', '', NULL, 'code51', 'reference51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '', '2023-06-17 08:39:54', '', NULL, 'code52', 'reference52', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '', '2023-06-17 08:39:54', '', NULL, 'code53', 'reference53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '', '2023-06-17 08:39:54', '', NULL, 'code54', 'reference54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '', '2023-06-17 08:39:54', '', NULL, 'code55', 'reference55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '', '2023-06-17 08:39:54', '', NULL, 'code56', 'reference56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '', '2023-06-17 08:39:54', '', NULL, 'code57', 'reference57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '', '2023-06-17 08:39:54', '', NULL, 'code58', 'reference58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '', '2023-06-17 08:39:54', '', NULL, 'code59', 'reference59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '', '2023-06-17 08:39:54', '', NULL, 'code60', 'reference60', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '', '2023-06-17 08:39:54', '', NULL, 'code61', 'reference61', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '', '2023-06-17 08:39:54', '', NULL, 'code62', 'reference62', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '', '2023-06-17 08:39:54', '', NULL, 'code63', 'reference63', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '', '2023-06-17 08:39:54', '', NULL, 'code64', 'reference64', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '', '2023-06-17 08:39:54', '', NULL, 'code65', 'reference65', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '', '2023-06-17 08:39:54', '', NULL, 'code66', 'reference66', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '', '2023-06-17 08:39:54', '', NULL, 'code67', 'reference67', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '', '2023-06-17 08:39:54', '', NULL, 'code68', 'reference68', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '', '2023-06-17 08:39:54', '', NULL, 'code69', 'reference69', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '', '2023-06-17 08:39:54', '', NULL, 'code70', 'reference70', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '', '2023-06-17 08:39:54', '', NULL, 'code71', 'reference71', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '', '2023-06-17 08:39:54', '', NULL, 'code72', 'reference72', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '', '2023-06-17 08:39:54', '', NULL, 'code73', 'reference73', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '', '2023-06-17 08:39:54', '', NULL, 'code74', 'reference74', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '', '2023-06-17 08:39:54', '', NULL, 'code75', 'reference75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '', '2023-06-17 08:39:54', '', NULL, 'code76', 'reference76', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '', '2023-06-17 08:39:54', '', NULL, 'code77', 'reference77', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '', '2023-06-17 08:39:54', '', NULL, 'code78', 'reference78', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '', '2023-06-17 08:39:54', '', NULL, 'code79', 'reference79', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '', '2023-06-17 08:39:54', '', NULL, 'code80', 'reference80', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '', '2023-06-17 08:39:54', '', NULL, 'code81', 'reference81', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '', '2023-06-17 08:39:54', '', NULL, 'code82', 'reference82', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '', '2023-06-17 08:39:54', '', NULL, 'code83', 'reference83', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '', '2023-06-17 08:39:54', '', NULL, 'code84', 'reference84', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '', '2023-06-17 08:39:54', '', NULL, 'code85', 'reference85', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '', '2023-06-17 08:39:54', '', NULL, 'code86', 'reference86', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '', '2023-06-17 08:39:54', '', NULL, 'code87', 'reference87', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '', '2023-06-17 08:39:54', '', NULL, 'code88', 'reference88', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '', '2023-06-17 08:39:54', '', NULL, 'code89', 'reference89', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '', '2023-06-17 08:39:54', '', NULL, 'code90', 'reference90', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '', '2023-06-17 08:39:54', '', NULL, 'code91', 'reference91', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '', '2023-06-17 08:39:54', '', NULL, 'code92', 'reference92', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '', '2023-06-17 08:39:54', '', NULL, 'code93', 'reference93', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '', '2023-06-17 08:39:54', '', NULL, 'code94', 'reference94', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '', '2023-06-17 08:39:54', '', NULL, 'code95', 'reference95', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '', '2023-06-17 08:39:54', '', NULL, 'code96', 'reference96', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '', '2023-06-17 08:39:54', '', NULL, 'code97', 'reference97', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '', '2023-06-17 08:39:54', '', NULL, 'code98', 'reference98', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '', '2023-06-17 08:39:54', '', NULL, 'code99', 'reference99', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '', '2023-06-17 18:32:15', '', NULL, 'code1', 'reference1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '', '2023-06-17 18:32:15', '', NULL, 'code2', 'reference2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '', '2023-06-17 18:32:15', '', NULL, 'code3', 'reference3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '', '2023-06-17 18:32:15', '', NULL, 'code4', 'reference4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '', '2023-06-17 18:32:15', '', NULL, 'code5', 'reference5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '', '2023-06-17 18:32:15', '', NULL, 'code6', 'reference6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '', '2023-06-17 18:32:15', '', NULL, 'code7', 'reference7', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '', '2023-06-17 18:32:15', '', NULL, 'code8', 'reference8', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '', '2023-06-17 18:32:15', '', NULL, 'code9', 'reference9', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '', '2023-06-17 18:32:15', '', NULL, 'code10', 'reference10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '', '2023-06-17 18:32:15', '', NULL, 'code11', 'reference11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '', '2023-06-17 18:32:15', '', NULL, 'code12', 'reference12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '', '2023-06-17 18:32:15', '', NULL, 'code13', 'reference13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '', '2023-06-17 18:32:15', '', NULL, 'code14', 'reference14', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '', '2023-06-17 18:32:15', '', NULL, 'code15', 'reference15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '', '2023-06-17 18:32:15', '', NULL, 'code16', 'reference16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '', '2023-06-17 18:32:15', '', NULL, 'code17', 'reference17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, '', '2023-06-17 18:32:15', '', NULL, 'code18', 'reference18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '', '2023-06-17 18:32:15', '', NULL, 'code19', 'reference19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '', '2023-06-17 18:32:15', '', NULL, 'code20', 'reference20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '', '2023-06-17 18:32:15', '', NULL, 'code21', 'reference21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '', '2023-06-17 18:32:15', '', NULL, 'code22', 'reference22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '', '2023-06-17 18:32:15', '', NULL, 'code23', 'reference23', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '', '2023-06-17 18:32:15', '', NULL, 'code24', 'reference24', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '', '2023-06-17 18:32:15', '', NULL, 'code25', 'reference25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '', '2023-06-17 18:32:15', '', NULL, 'code26', 'reference26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '', '2023-06-17 18:32:15', '', NULL, 'code27', 'reference27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '', '2023-06-17 18:32:15', '', NULL, 'code28', 'reference28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '', '2023-06-17 18:32:15', '', NULL, 'code29', 'reference29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '', '2023-06-17 18:32:15', '', NULL, 'code30', 'reference30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '', '2023-06-17 18:32:15', '', NULL, 'code31', 'reference31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '', '2023-06-17 18:32:15', '', NULL, 'code32', 'reference32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '', '2023-06-17 18:32:15', '', NULL, 'code33', 'reference33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '', '2023-06-17 18:32:15', '', NULL, 'code34', 'reference34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '', '2023-06-17 18:32:15', '', NULL, 'code35', 'reference35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '', '2023-06-17 18:32:15', '', NULL, 'code36', 'reference36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '', '2023-06-17 18:32:15', '', NULL, 'code37', 'reference37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '', '2023-06-17 18:32:15', '', NULL, 'code38', 'reference38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '', '2023-06-17 18:32:15', '', NULL, 'code39', 'reference39', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '', '2023-06-17 18:32:15', '', NULL, 'code40', 'reference40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '', '2023-06-17 18:32:15', '', NULL, 'code41', 'reference41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '', '2023-06-17 18:32:15', '', NULL, 'code42', 'reference42', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '', '2023-06-17 18:32:15', '', NULL, 'code43', 'reference43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '', '2023-06-17 18:32:15', '', NULL, 'code44', 'reference44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '', '2023-06-17 18:32:15', '', NULL, 'code45', 'reference45', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '', '2023-06-17 18:32:15', '', NULL, 'code46', 'reference46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '', '2023-06-17 18:32:15', '', NULL, 'code47', 'reference47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '', '2023-06-17 18:32:15', '', NULL, 'code48', 'reference48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '', '2023-06-17 18:32:15', '', NULL, 'code49', 'reference49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '', '2023-06-17 18:32:15', '', NULL, 'code50', 'reference50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '', '2023-06-17 18:32:15', '', NULL, 'code51', 'reference51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '', '2023-06-17 18:32:15', '', NULL, 'code52', 'reference52', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '', '2023-06-17 18:32:15', '', NULL, 'code53', 'reference53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '', '2023-06-17 18:32:15', '', NULL, 'code54', 'reference54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '', '2023-06-17 18:32:15', '', NULL, 'code55', 'reference55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '', '2023-06-17 18:32:15', '', NULL, 'code56', 'reference56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '', '2023-06-17 18:32:15', '', NULL, 'code57', 'reference57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '', '2023-06-17 18:32:15', '', NULL, 'code58', 'reference58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '', '2023-06-17 18:32:15', '', NULL, 'code59', 'reference59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '', '2023-06-17 18:32:15', '', NULL, 'code60', 'reference60', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '', '2023-06-17 18:32:15', '', NULL, 'code61', 'reference61', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '', '2023-06-17 18:32:15', '', NULL, 'code62', 'reference62', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '', '2023-06-17 18:32:15', '', NULL, 'code63', 'reference63', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '', '2023-06-17 18:32:16', '', NULL, 'code64', 'reference64', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '', '2023-06-17 18:32:16', '', NULL, 'code65', 'reference65', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '', '2023-06-17 18:32:16', '', NULL, 'code66', 'reference66', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '', '2023-06-17 18:32:16', '', NULL, 'code67', 'reference67', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '', '2023-06-17 18:32:16', '', NULL, 'code68', 'reference68', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '', '2023-06-17 18:32:16', '', NULL, 'code69', 'reference69', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '', '2023-06-17 18:32:16', '', NULL, 'code70', 'reference70', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '', '2023-06-17 18:32:16', '', NULL, 'code71', 'reference71', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '', '2023-06-17 18:32:16', '', NULL, 'code72', 'reference72', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '', '2023-06-17 18:32:16', '', NULL, 'code73', 'reference73', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '', '2023-06-17 18:32:16', '', NULL, 'code74', 'reference74', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '', '2023-06-17 18:32:16', '', NULL, 'code75', 'reference75', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '', '2023-06-17 18:32:16', '', NULL, 'code76', 'reference76', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '', '2023-06-17 18:32:16', '', NULL, 'code77', 'reference77', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '', '2023-06-17 18:32:16', '', NULL, 'code78', 'reference78', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '', '2023-06-17 18:32:16', '', NULL, 'code79', 'reference79', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '', '2023-06-17 18:32:16', '', NULL, 'code80', 'reference80', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '', '2023-06-17 18:32:16', '', NULL, 'code81', 'reference81', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '', '2023-06-17 18:32:16', '', NULL, 'code82', 'reference82', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '', '2023-06-17 18:32:16', '', NULL, 'code83', 'reference83', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '', '2023-06-17 18:32:16', '', NULL, 'code84', 'reference84', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '', '2023-06-17 18:32:16', '', NULL, 'code85', 'reference85', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '', '2023-06-17 18:32:16', '', NULL, 'code86', 'reference86', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '', '2023-06-17 18:32:16', '', NULL, 'code87', 'reference87', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, '', '2023-06-17 18:32:16', '', NULL, 'code88', 'reference88', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '', '2023-06-17 18:32:16', '', NULL, 'code89', 'reference89', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '', '2023-06-17 18:32:16', '', NULL, 'code90', 'reference90', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, '', '2023-06-17 18:32:16', '', NULL, 'code91', 'reference91', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, '', '2023-06-17 18:32:16', '', NULL, 'code92', 'reference92', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, '', '2023-06-17 18:32:16', '', NULL, 'code93', 'reference93', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '', '2023-06-17 18:32:16', '', NULL, 'code94', 'reference94', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, '', '2023-06-17 18:32:16', '', NULL, 'code95', 'reference95', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, '', '2023-06-17 18:32:16', '', NULL, 'code96', 'reference96', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, '', '2023-06-17 18:32:16', '', NULL, 'code97', 'reference97', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `product_seq`
--

CREATE TABLE `product_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product_seq`
--

INSERT INTO `product_seq` (`next_val`) VALUES
(298),
(298);

-- --------------------------------------------------------

--
-- Structure de la table `purchase`
--

CREATE TABLE `purchase` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `total` decimal(19,2) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `client` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `purchase`
--

INSERT INTO `purchase` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `description`, `image`, `reference`, `total`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `client`) VALUES
(3, 'anonymousUser', '2023-06-17 18:28:46', 'anonymousUser', '2023-06-25 12:42:15', NULL, NULL, 'c1', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'anonymousUser', '2023-06-25 11:46:00', 'anonymousUser', '2023-06-25 12:47:58', 'c33333333333333333333333333\nc33333333333333333333333333', 'c3000', 'c3', 300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(6, 'anonymousUser', '2023-06-25 15:19:03', '', NULL, 'c4444c4444c4444c4444c4444c4444\nc4444c4444c4444c4444c4444c4444c4444c4444\nc4444c4444c4444', 'c4444', 'c4', 400.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(7, 'anonymousUser', '2023-07-01 17:44:42', '', NULL, NULL, '44', 'c44', 44.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(8, 'anonymousUser', '2023-07-01 19:04:20', '', NULL, NULL, 'dsss55555', 'c5', 5000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `purchase_item`
--

CREATE TABLE `purchase_item` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `quantity` decimal(19,2) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `product` bigint(20) DEFAULT NULL,
  `purchase` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `purchase_item`
--

INSERT INTO `purchase_item` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `price`, `quantity`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `product`, `purchase`) VALUES
(6, 'anonymousUser', '2023-06-17 18:28:46', '', NULL, 10.00, 2.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3),
(3, 'anonymousUser', '2023-06-17 18:09:52', '', NULL, 20.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 2),
(4, 'anonymousUser', '2023-06-17 18:09:52', '', NULL, 3.00, 7.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
(7, 'anonymousUser', '2023-06-17 18:29:11', '', NULL, 3.00, 2.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4),
(8, 'anonymousUser', '2023-06-17 18:29:11', '', NULL, 4.00, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4),
(11, 'anonymousUser', '2023-06-25 12:33:52', '', NULL, 7.00, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 5),
(10, 'anonymousUser', '2023-06-25 11:46:00', 'anonymousUser', '2023-06-25 12:48:10', 330.00, 300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, 5),
(12, 'anonymousUser', '2023-06-25 12:48:10', '', NULL, 1.00, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 5),
(13, 'anonymousUser', '2023-06-25 15:19:03', '', NULL, 10.00, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6),
(14, 'anonymousUser', '2023-06-25 15:19:03', '', NULL, 5.00, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 6),
(15, 'anonymousUser', '2023-07-01 17:44:42', '', NULL, 40.00, 4.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 7),
(16, 'anonymousUser', '2023-07-01 17:44:42', '', NULL, 540.00, 40.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 7),
(17, 'anonymousUser', '2023-07-01 19:04:20', '', NULL, 50.00, 500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8),
(18, 'anonymousUser', '2023-07-01 19:04:20', '', NULL, 600.00, 4.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 8);

-- --------------------------------------------------------

--
-- Structure de la table `purchase_item_seq`
--

CREATE TABLE `purchase_item_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `purchase_item_seq`
--

INSERT INTO `purchase_item_seq` (`next_val`) VALUES
(19),
(19);

-- --------------------------------------------------------

--
-- Structure de la table `purchase_seq`
--

CREATE TABLE `purchase_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `purchase_seq`
--

INSERT INTO `purchase_seq` (`next_val`) VALUES
(9),
(9);

-- --------------------------------------------------------

--
-- Structure de la table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(21, 5),
(21, 6),
(21, 7),
(21, 8),
(21, 9),
(21, 10),
(21, 11),
(21, 12),
(21, 13),
(21, 14),
(21, 15),
(21, 16),
(21, 17),
(21, 18),
(21, 19),
(21, 20);

-- --------------------------------------------------------

--
-- Structure de la table `role_app`
--

CREATE TABLE `role_app` (
  `id` bigint(20) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role_app`
--

INSERT INTO `role_app` (`id`, `authority`, `created_at`, `updated_at`) VALUES
(21, 'ROLE_ADMIN', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(22, 21);

-- --------------------------------------------------------

--
-- Structure de la table `user_app`
--

CREATE TABLE `user_app` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `account_non_expired` bit(1) NOT NULL,
  `account_non_locked` bit(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `credentials_non_expired` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_changed` bit(1) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `etablissement` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_app`
--

INSERT INTO `user_app` (`id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `account_non_expired`, `account_non_locked`, `created_at`, `credentials_non_expired`, `email`, `enabled`, `nom`, `password`, `password_changed`, `prenom`, `updated_at`, `username`, `etablissement`) VALUES
(22, NULL, '2023-06-13 23:16:18', NULL, NULL, b'1', b'1', '2023-06-13 23:16:18', b'1', 'admin', b'1', 'admin', '$2a$10$lkhkFaz0l.F4HHXh1JXCRe7CHEJjgQmIoAnaFDRzE4mhdkSleOW1W', b'0', 'admin', NULL, 'admin', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK13bv6vj8l78jhf7k89731hexo` (`client`);

--
-- Index pour la table `purchase_item`
--
ALTER TABLE `purchase_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrer69opxrjm7xrqtvd3b74dfx` (`product`),
  ADD KEY `FKncx4l5271gx8pnwpmp31kkhom` (`purchase`);

--
-- Index pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD KEY `FKboeuhl31go7wer3bpy6so7exi` (`permission_id`),
  ADD KEY `FK3q3rt3at2wf4ooe7npa3et6yb` (`role_id`);

--
-- Index pour la table `role_app`
--
ALTER TABLE `role_app`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FK4e8pdqeupv69eukb2bvy2ftbd` (`role_id`),
  ADD KEY `FK50gpsre6oxwwqf394f8wov1yf` (`user_id`);

--
-- Index pour la table `user_app`
--
ALTER TABLE `user_app`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2xblr2jfuwcj4ktkjxbf8ir13` (`etablissement`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
