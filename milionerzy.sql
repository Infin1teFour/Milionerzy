-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Paź 2023, 09:38
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

CREATE DATABASE `milionerzy`;
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
(2, 'Która cząsteczka jest odpowiedzialna za przenoszenie dziedziczności genetycznej?', 'Glikogen', 'DNA', 'ATP', 'RNA', 'DNA'),
(3, 'Która z rzek jest najdłuższą na świecie?\r\n', 'Jangcy', 'Amazonka', ' Missisipi-Missouri', 'Nil', 'Nil\r\n\r\n'),
(4, 'Który pierwiastek chemiczny ma najwyższą liczbę atomową?', 'Rutherford', 'Pluton', 'Einstein', 'Uran', 'Uran\r\n\r\n'),
(5, 'Które miasto jest uznawane za kolebkę renesansu?', 'Paryż', 'Florencja', 'Rzym', 'Wenecja', 'Florencja'),
(6, 'Która struktura mózgu jest związana z kontrolą funkcji życiowych, takich jak oddychanie i ciśnienie krwi?', 'Móżdżek', 'Podwzgórze', 'Rdzeń kręgowy', 'Hipokamp', 'Rdzeń kręgowy'),
(7, 'Która planetoida jest największa w pasie planetoid między Marsem a Jowiszem?', 'Ceres', 'Vesta', 'Pallas', 'Hygiea', 'Ceres'),
(8, 'Który kompozytor napisał \"Czarodziejski flet\"?', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Johann Sebastian Bach', 'Franz Schubert', 'Wolfgang Amadeus Mozart'),
(9, 'Które państwo ma najwięcej kraterów uderzeniowych na powierzchni?', 'Australia', 'Rosja', 'Kanada', 'Stany Zjednoczone', 'Rosja'),
(10, 'Która językowa rodzina obejmuje najwięcej mówionych języków na świecie?', 'Indoeuropejska', 'Niger-Kongo', 'Austroazjatycka', 'Sino-Tybetańska', 'Niger-Kongo'),
(11, 'Które zwierzę jest największym ssakiem na Ziemi?', 'Słoń afrykański', 'Wieloryb błękitny', 'Nosorożec biały', 'Hipopotam', 'Wieloryb błękitny'),
(12, 'Który polityk został pierwszym prezydentem Republiki Południowej Afryki w okresie postapartheidowskim?', 'Nelson Mandela', 'Thabo Mbeki', 'Jacob Zuma\r\n', 'Cyril Ramaphosa', 'Nelson Mandela'),
(13, 'Które z poniższych państw nie graniczy z Morzem Śródziemnym?', 'Albania', 'Bułgaria', 'Grecja', 'Hiszpania', 'Bułgaria'),
(14, 'Które z poniższych miast jest uznawane za najzimniejsze na świecie?', 'Reykjavik', 'Fairbanks', 'Norilsk', 'Barrow', 'Norilsk'),
(15, 'Który pierwiastek chemiczny jest najlżejszy?', 'Wodór', 'Lit', 'Hel', 'Azot', 'Wodór'),
(16, 'Która wojna była nazywana \"Wielką Wojną na Północy\"?', 'Wojna krymska', 'Wojna siedmioletnia', 'I wojna światowa', 'Wojna krymska', 'Wojna siedmioletnia'),
(17, 'Które z poniższych zwierząt jest drapieżnikiem?', 'Ocelot', 'Panda czerwona', 'Kapucynka', 'Kakadu', 'Ocelot'),
(18, 'Które państwo posiada najwięcej języków urzędowych?', 'Indie', 'RPA', 'Szwajcaria', 'Kanada', 'Szwajcaria'),
(19, 'Która planeta układu słonecznego ma najwięcej księżyców?', 'Saturn', 'Neptun', 'Uran', 'Jowisz', 'Jowisz'),
(20, 'Które z poniższych zdarzeń miało miejsce jako pierwsze?', 'Wojna stuletnia', 'Wojna krymska', 'Wojna o niepodległość Stanów Zjednoczonych', 'Wojna trzydziestoletnia', 'Wojna stuletnia'),
(21, 'Która struktura mózgu jest odpowiedzialna za regulację temperatury ciała?', 'Podwzgórze', 'Móżdżek\r\n', 'Hipokamp', 'Ciało migdałowate', 'Podwzgórze'),
(22, 'Która bitwa była decydującym momentem wojny secesyjnej w Stanach Zjednoczonych?', 'Bitwa o Richmond', 'Bitwa pod Gettysburgiem', 'Bitwa pod Vicksburgiem', 'Bitwa pod Antietam', 'Bitwa pod Gettysburgiem'),
(23, 'Który z pierwiastków chemicznych ma najwyższą temperaturę wrzenia?', 'Osad', 'Wolfram', 'Ren', 'Ruten', 'Wolfram'),
(24, 'Która planeta układu słonecznego jest najbliżej Słońca?', 'Wenus', 'Merkury', 'Jowisz', 'Mars', 'Merkury'),
(25, 'Który polityk był pierwszym prezydentem Federacji Rosyjskiej?', 'Boris Jelcyn', 'Leonid Breżniew', 'Władimir Putin', 'Michaił Gorbaczow', 'Boris Jelcyn'),
(26, 'Który kontynent jest najmniej zaludniony?', 'Afryka', 'Ameryka Północna', 'Antarktyda', 'Australia', 'Antarktyda'),
(27, 'Który film zdobył najwięcej Oscarów w historii kinematografii?', '\"La La Land\"', '\"Władca Pierścieni: Powrót króla\"', '\"Ben-Hur\"', '\"Titanic\"', '\"Władca Pierścieni: Powrót króla\"'),
(28, 'Która wyspa jest największa na świecie?', 'Grenlandia', 'Nowa Gwinea', 'Madagaskar', 'Borneo', 'Grenlandia'),
(29, 'Który z książąt-małżonków Lady Di był w linii sukcesji do tronu Wielkiej Brytanii?', 'Książę Edward', 'Książę Wilhelm', 'Książę Karol', 'Książę Andrzej', 'Książę Wilhelm'),
(30, 'Który gatunek zwierzęcia uznaje się za symbol Chin?', 'Smok', 'Tygrys syberyjski', 'Panda wielka', 'Jednorożec chiński\r\n', 'Panda wielka'),
(31, 'Który z poniższych pierwiastków chemicznych jest metalem ziem alkalicznych?', 'Sód', 'Potas', 'Wapń', 'Cez', 'Potas'),
(32, 'Który z instrumentów muzycznych jest związany z klasycznym stylem jazzu?\r\n', 'Trąbka', 'Puzon', 'Klarinet', 'Saksofon', 'Saksofon'),
(33, 'Które z państw Europy graniczy z Mołdawią?', 'Ukraina', 'Rumunia', 'Węgry', 'Bułgaria', 'Rumunia'),
(34, 'Które z poniższych państw graniczy z Kenią?', 'Somalia', 'Sudan', ' Rwanda', 'Angola', 'Somalia'),
(35, 'Który z pierwiastków chemicznych był używany do barwienia w starożytności?', 'Miedź', 'Srebro', 'Cyna', 'Ołów', 'Miedź'),
(36, 'Które z państw leży na Półwyspie Arabskim?', 'Jordania', 'Liban', 'Egipt', 'Irak', 'Irak'),
(37, 'Które z poniższych państw nie jest członkiem Unii Europejskiej?', 'Szwecja', 'Słowenia', 'Norwegia', 'Chorwacja', 'Norwegia'),
(38, 'Który z podróżników odkrył Amerykę Północną?', 'James Cook', 'Hernán Cortés', 'John Cabot', 'Vasco da Gama', 'John Cabot'),
(39, 'Które z poniższych państw jest największym eksporterem ropy naftowej?', 'Kanada', 'USA', 'Arabia Saudyjska', 'Rosja', 'Arabia Saudyjska'),
(40, 'Które z miast jest uznawane za kolebkę bluesa?', 'Chicago', 'Memphis', 'Detroit', 'Nowy Orlean', 'Memphis'),
(41, 'Który z gatunków delfinów jest największy?', 'Delfin różowy', 'Delfin atlantycki', 'Orka', 'Delfin butlonosy', 'Orka'),
(42, 'Które z państw leży w Ameryce Południowej?', 'Kolumbia', 'Ekwador', 'Wenezuela', 'Boliwia', 'Boliwia'),
(43, 'Który z pierwiastków chemicznych jest używany w lampach oświetleniowych?', 'Argon', 'Ksenon', 'Neon', 'Hel', 'Ksenon'),
(44, 'Który z gatunków psów jest największy?', 'Owczarek kaukaski', 'Mastif angielski', 'Dog niemiecki', 'Owczarek niemiecki', 'Dog niemiecki'),
(45, 'Który z języków jest urzędowym w Izraelu?', 'Jidysz', 'Hebrajski', 'Perski', 'Arabski', 'Hebrajski'),
(46, 'Które z państw graniczy z Białorusią?\r\n', 'Ukraina', 'Litwa', 'Łotwa', 'Mołdawia', 'Łotwa'),
(47, 'Który z pierwiastków chemicznych jest stosowany do datowania materiałów archeologicznych?', 'Węgiel\r\n', 'Cez', 'Tlen', 'Urządzenie', 'Węgiel'),
(48, 'Które z poniższych państw jest największym producentem kawy na świecie?', 'Kolumbia', 'Wietnam', 'Brazylia', 'Etiopia', 'Brazylia'),
(49, 'Który z planetoid pasa asteroid ma największy znany satelitę naturalnego?\r\n', 'Gaspra', 'Vesta', 'Ida', 'Eros', 'Vesta'),
(50, 'Który z poniższych kompozytorów uznawany jest za prekursora muzyki klasycznej?', 'Johann Sebastian Bach', 'Antonio Vivaldi', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Johann Sebastian Bach');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
