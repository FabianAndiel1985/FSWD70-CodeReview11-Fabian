-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 20. Jul 2019 um 16:39
-- Server-Version: 10.3.16-MariaDB
-- PHP-Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr11_fabian_travelmatic`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `concerts`
--

CREATE TABLE `concerts` (
  `concerts_ID` int(11) NOT NULL,
  `concerts_name` varchar(30) NOT NULL,
  `concerts_adress` varchar(40) DEFAULT NULL,
  `concerts_descri` varchar(120) DEFAULT NULL,
  `concerts_date` date DEFAULT NULL,
  `concerts_time` time DEFAULT NULL,
  `concerts_ticketPrice` tinyint(3) UNSIGNED DEFAULT NULL,
  `concerts_homepage` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `concerts`
--

INSERT INTO `concerts` (`concerts_ID`, `concerts_name`, `concerts_adress`, `concerts_descri`, `concerts_date`, `concerts_time`, `concerts_ticketPrice`, `concerts_homepage`) VALUES
(1, 'Kontra K', 'avenue 90', 'cool musician', '2019-11-30', '19:00:00', 30, 'www.kontrak.de'),
(2, 'Khaled', 'avenue 91', 'awesome musician', '2019-11-30', '19:00:00', 31, 'www.khaled.de'),
(3, 'Bachi', 'avenue 92', 'best classical musican ever', '2019-11-30', '19:01:00', 32, 'www.bach.de'),
(4, 'Michelle', 'avenue 93', 'best country musican ever', '2019-11-30', '19:03:00', 33, 'www.michelle.de');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `restaurants`
--

CREATE TABLE `restaurants` (
  `res_ID` int(11) NOT NULL,
  `res_name` varchar(30) NOT NULL,
  `res_teleph` bigint(20) NOT NULL,
  `res_type` enum('austrian','german','swedish') NOT NULL,
  `res_descri` varchar(120) DEFAULT NULL,
  `res_adress` varchar(40) DEFAULT NULL,
  `res_homepage` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `restaurants`
--

INSERT INTO `restaurants` (`res_ID`, `res_name`, `res_teleph`, `res_type`, `res_descri`, `res_adress`, `res_homepage`) VALUES
(1, 'Dolphs swedish dinner', 43123456, 'swedish', 'best guy ever', 'street 89', 'www.dolph.at'),
(2, 'Markus austrian dinneri', 431234567, 'austrian', 'best broter ever', 'street 90', 'www.markus.at'),
(3, 'Ingos german dinner', 4312345678, 'german', 'best host ever', 'street 91', 'www.ingo.at'),
(4, 'Wolfgangs austrian dinner', 43123456789, 'austrian', 'best family ever', 'street 92', 'www.wolfgang.at');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `system_users`
--

CREATE TABLE `system_users` (
  `system_user_ID` int(11) NOT NULL,
  `user_status` enum('admin','employee') NOT NULL,
  `user_pass` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `system_users`
--

INSERT INTO `system_users` (`system_user_ID`, `user_status`, `user_pass`) VALUES
(1, 'admin', '1234'),
(2, 'employee', '5678');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `things_to_do`
--

CREATE TABLE `things_to_do` (
  `things_ID` int(11) NOT NULL,
  `things_name` varchar(30) NOT NULL,
  `things_adress` varchar(40) DEFAULT NULL,
  `things_type` enum('sports','club','chill') NOT NULL,
  `things_descri` varchar(120) DEFAULT NULL,
  `things_homepage` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `things_to_do`
--

INSERT INTO `things_to_do` (`things_ID`, `things_name`, `things_adress`, `things_type`, `things_descri`, `things_homepage`) VALUES
(1, 'MC Fit', 'plaza 90', 'sports', 'best gym ever', 'www.mcfit.at'),
(2, 'VIP', 'plaza 91', 'club', 'best club ever', 'www.club.at'),
(3, 'Duzisi', 'plaza 93', 'chill', 'best sisha ever', 'www.duzis.at'),
(4, 'Loft gym', 'plaza 94', 'sports', 'top level sports', 'www.loft.at');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`concerts_ID`);

--
-- Indizes für die Tabelle `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`res_ID`);

--
-- Indizes für die Tabelle `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`system_user_ID`);

--
-- Indizes für die Tabelle `things_to_do`
--
ALTER TABLE `things_to_do`
  ADD PRIMARY KEY (`things_ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `concerts`
--
ALTER TABLE `concerts`
  MODIFY `concerts_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `res_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `system_users`
--
ALTER TABLE `system_users`
  MODIFY `system_user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `things_to_do`
--
ALTER TABLE `things_to_do`
  MODIFY `things_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
