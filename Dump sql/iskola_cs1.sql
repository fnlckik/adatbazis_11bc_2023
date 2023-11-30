-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Nov 30. 09:41
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
-- Adatbázis: `iskola_cs1`
--
CREATE DATABASE IF NOT EXISTS `iskola_cs1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `iskola_cs1`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `diak`
--

DROP TABLE IF EXISTS `diak`;
CREATE TABLE `diak` (
  `id` int(11) NOT NULL,
  `nev` varchar(25) DEFAULT NULL,
  `szuletes` date DEFAULT NULL,
  `atlag` float DEFAULT NULL,
  `osztondij` int(10) UNSIGNED DEFAULT 20000
) ;

--
-- A tábla adatainak kiíratása `diak`
--

INSERT INTO `diak` (`id`, `nev`, `szuletes`, `atlag`, `osztondij`) VALUES
(1, 'Kovács Péter', '2000-05-15', 4.2, 20000),
(2, 'Nagy Anna', '2001-02-20', 3.8, 20000),
(3, 'Kiss Gábor', '2000-09-10', NULL, 40000),
(4, 'Tóth Éva', '2002-01-03', NULL, 60000),
(5, 'Molnár Balázs', '2001-11-25', 4.1, 40000);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `diak`
--
ALTER TABLE `diak`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UQ_Diak_NevSzulAtl` (`nev`,`szuletes`,`atlag`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `diak`
--
ALTER TABLE `diak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
