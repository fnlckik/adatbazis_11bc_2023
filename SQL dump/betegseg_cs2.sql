-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Nov 28. 12:23
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
-- Adatbázis: `betegseg_cs2`
--
CREATE DATABASE IF NOT EXISTS `betegseg_cs2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `betegseg_cs2`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `beteg`
--

DROP TABLE IF EXISTS `beteg`;
CREATE TABLE `beteg` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) DEFAULT NULL,
  `kor` tinyint(4) NOT NULL,
  `nem` char(1) DEFAULT NULL,
  `beoltott_e` tinyint(1) DEFAULT 0
) ;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `betegseg`
--

DROP TABLE IF EXISTS `betegseg`;
CREATE TABLE `betegseg` (
  `id` int(11) NOT NULL,
  `betegId` int(11) DEFAULT NULL,
  `nev` varchar(100) NOT NULL,
  `kezdet` date NOT NULL DEFAULT '2023-11-28',
  `leiras` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `beteg`
--
ALTER TABLE `beteg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UQ_Beteg_Nev` (`nev`);

--
-- A tábla indexei `betegseg`
--
ALTER TABLE `betegseg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UQ_Betegseg_BetegId_Nev_Kezdet` (`betegId`,`nev`,`kezdet`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `beteg`
--
ALTER TABLE `beteg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `betegseg`
--
ALTER TABLE `betegseg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `betegseg`
--
ALTER TABLE `betegseg`
  ADD CONSTRAINT `FK_Betegseg_Beteg` FOREIGN KEY (`betegId`) REFERENCES `beteg` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
