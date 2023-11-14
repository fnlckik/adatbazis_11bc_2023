-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Nov 14. 12:24
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `iskola_cs2`
--
CREATE DATABASE IF NOT EXISTS `iskola_cs2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `iskola_cs2`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `diak`
--

DROP TABLE IF EXISTS `diak`;
CREATE TABLE `diak` (
  `id` int(11) DEFAULT NULL,
  `nev` varchar(25) DEFAULT NULL,
  `szuletes` date DEFAULT NULL,
  `atlag` float DEFAULT NULL,
  `osztondij` int(10) UNSIGNED DEFAULT 20000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `diak`
--

INSERT INTO `diak` (`id`, `nev`, `szuletes`, `atlag`, `osztondij`) VALUES
(1, 'Sanyi', '2008-05-12', NULL, 20000),
(2, 'Béla', '2012-02-02', NULL, 20000),
(3, 'Gábor', '2018-10-25', NULL, 20000),
(2, 'Jani', '2013-11-04', 4.8, 20000),
(4, 'Bogi', NULL, 5, 20000),
(4, 'Bogi', NULL, 5, 20000),
(0, 'Béla', NULL, NULL, 20000),
(0, 'Anna', NULL, NULL, 20000),
(0, 'Máté', NULL, NULL, 20000),
(NULL, 'Máté', NULL, NULL, 20000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
