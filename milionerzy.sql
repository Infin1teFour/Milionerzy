-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Paź 2023, 09:27
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `milionerzy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE DATABASE IF NOT EXISTS `milionerzy`;
USE milionerzy;

CREATE TABLE `pytania` (
  `nr_pytania` int(11) NOT NULL,
  `pytanie` text COLLATE utf8_polish_ci NOT NULL,
  `odp_a` text COLLATE utf8_polish_ci NOT NULL,
  `odp_b` text COLLATE utf8_polish_ci NOT NULL,
  `odp_c` text COLLATE utf8_polish_ci NOT NULL,
  `odp_d` text COLLATE utf8_polish_ci NOT NULL,
  `poprawna_odp` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`nr_pytania`, `pytanie`, `odp_a`, `odp_b`, `odp_c`, `odp_d`, `poprawna_odp`) VALUES
(1, 'Jak nazywa się najwyższy szczyt na Ziemi?', 'K2', 'Mount Everest', 'Kangchenjunga', 'Lhotse', 'Mount Everest'),
(2, 'Która cząsteczka jest odpowiedzialna za przenoszenie dziedziczności genetycznej?', 'RNA', 'DNA', 'ATP', 'Glikogen', 'DNA'),
(3, 'Która z rzek jest najdłuższą na świecie?\r\n', 'Nil', 'Amazonka', ' Missisipi-Missouri', 'Jangcy', 'Nil\r\n\r\n'),
(4, 'Który pierwiastek chemiczny ma najwyższą liczbę atomową?', 'Uran', 'Rutherford', 'Pluton', 'Einstein', 'Uran\r\n\r\n'),
(5, 'Które miasto jest uznawane za kolebkę renesansu?', 'Florencja', 'Rzym', 'Paryż', 'Wenecja', 'Florencja'),
(6, 'Która struktura mózgu jest związana z kontrolą funkcji życiowych, takich jak oddychanie i ciśnienie krwi?', 'Rdzeń kręgowy', 'Móżdżek', 'Podwzgórze', 'Hipokamp', 'Rdzeń kręgowy'),
(7, 'Która planetoida jest największa w pasie planetoid między Marsem a Jowiszem?', 'Ceres', 'Vesta', 'Pallas', 'Hygiea', 'Ceres'),
(8, 'Który kompozytor napisał \"Czarodziejski flet\"?', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Johann Sebastian Bach', 'Franz Schubert', 'Wolfgang Amadeus Mozart'),
(9, 'Które państwo ma najwięcej kraterów uderzeniowych na powierzchni?', 'Australia', 'Rosja', 'Kanada', 'Stany Zjednoczone', 'Rosja'),
(10, 'Która językowa rodzina obejmuje najwięcej mówionych języków na świecie?', 'Indoeuropejska', 'Niger-Kongo', 'Austroazjatycka', 'Sino-Tybetańska', 'Niger-Kongo'),
(11, 'Które zwierzę jest największym ssakiem na Ziemi?', 'Słoń afrykański', 'Wieloryb błękitny', 'Nosorożec biały', 'Hipopotam', 'Wieloryb błękitny'),
(12, 'Który polityk został pierwszym prezydentem Republiki Południowej Afryki w okresie postapartheidowskim?', 'Nelson Mandela', 'Thabo Mbeki', 'Jacob Zuma\r\n', 'Cyril Ramaphosa', 'Nelson Mandela');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
