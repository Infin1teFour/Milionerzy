-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Paź 2023, 09:23
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
-- Baza danych: `07.09.2023`
--
CREATE DATABASE IF NOT EXISTS `07.09.2023` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `07.09.2023`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--
-- Błąd odczytu struktury tabeli 07.09.2023.users: #1932 - Table '07.09.2023.users' doesn't exist in engine
-- Błąd odczytu danych dla tabeli 07.09.2023.users: #1064 - Something is wrong in your syntax obok 'FROM `07.09.2023`.`users`' w linii 1
--
-- Baza danych: `070923`
--
CREATE DATABASE IF NOT EXISTS `070923` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `070923`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(6) NOT NULL,
  `user_name` varchar(18) NOT NULL,
  `user_pass` varchar(43) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_user`, `user_name`, `user_pass`) VALUES
(1, 'Jan', '2126aaee9047f4d18c819af1d8cd3470'),
(2, 'Jan', '3d9b3da5fa51298098772e6d01fb92f7bc46dcf4'),
(3, 'Adam', 'fca5956fbda9ac2f4272f7680c3c1650');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Baza danych: `bd`
--
CREATE DATABASE IF NOT EXISTS `bd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `id` int(10) UNSIGNED NOT NULL,
  `rok_urodz` year(4) DEFAULT NULL,
  `przyjaciol` int(10) UNSIGNED DEFAULT NULL,
  `hobby` varchar(20) DEFAULT NULL,
  `zdjecie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`id`, `rok_urodz`, `przyjaciol`, `hobby`, `zdjecie`) VALUES
(1, 1995, 10, 'moda', 'o6.jpg'),
(2, 1990, 20, 'film', 'o4.jpg'),
(3, 1990, 20, 'cross', 'o1.jpg'),
(4, 2001, 4, 'finanse', 'o2.jpg'),
(5, 2002, 50, 'muzyka', 'o8.jpg'),
(6, 1994, 10, 'baseball', 'o6.jpg'),
(7, 1990, 20, 'film', 'o5.jpg'),
(8, 1990, 20, 'film', 'o3.jpg'),
(9, 2001, 0, 'psychologia', 'o7.jpg'),
(10, 2002, 50, 'muzyka', 'o2.jpg'),
(11, 1994, 10, 'DIY', 'o6.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `haslo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `login`, `haslo`) VALUES
(1, 'Justyna', 'a056c8d05ae9ac6ca180bc991b93b7ffe37563e0'),
(2, 'Ewa', 'c50267b906a652f2142cfab006e215c9f6fdc8a0'),
(3, 'Krzysiek', '637a81ed8e8217bb01c15c67c39b43b0ab4e20f1'),
(4, 'Adam', '8578173555a47d4ea49e697badfda270dee0858f'),
(5, 'Magda', '99ebdbd711b0e1854a6c2e93f759efc2af291fd0'),
(6, 'Werka', '186154712b2d5f6791d85b9a0987b98fa231779c'),
(7, 'Janek', '7823372203bd98aeb10e6f33a6ce7dab12d13423'),
(8, 'Heniek', '425ffc1422dc4f32528bd9fd5af355fdb5c96192'),
(9, 'Ola', '4ae9fa0a8299a828a886c0eb30c930c7cf302a72'),
(10, 'Dawid', 'b3054ff0797ff0b2bbce03ec897fe63e0b6490e0'),
(11, 'Ewelina', '7e240de74fb1ed08fa08d38063f6a6a91462a815');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dane`
--
ALTER TABLE `dane`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Baza danych: `dane2`
--
CREATE DATABASE IF NOT EXISTS `dane2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dane2`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `hobby`
--

CREATE TABLE `hobby` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `hobby`
--

INSERT INTO `hobby` (`id`, `nazwa`) VALUES
(1, 'muzyka'),
(2, 'film'),
(3, 'biegi'),
(4, 'gimnastyka'),
(5, 'taniec'),
(6, 'komputery'),
(7, 'krymina?y'),
(8, 'nauka'),
(9, 'majsterkowanie'),
(10, 'samochody'),
(11, 'turystyka'),
(12, 'biologia'),
(13, 'sudoku'),
(14, 'numizmatyka'),
(15, 'znaczki pocztowe'),
(16, 'modelarstwo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id` int(10) UNSIGNED NOT NULL,
  `Hobby_id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `rok_urodzenia` year(4) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `zdjecie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `osoby`
--

INSERT INTO `osoby` (`id`, `Hobby_id`, `imie`, `nazwisko`, `rok_urodzenia`, `opis`, `zdjecie`) VALUES
(2, 1, 'Monika', 'Kowalska', 1976, 'Z checia Ciebie poznam', 'osoba1.jpg'),
(3, 3, 'Jan', 'Kowalski', 2002, 'Lubie sport', 'osoba5.jpg'),
(4, 5, 'Monika', 'Nowak', 1993, 'ello', 'osoba2.jpg'),
(5, 11, 'Anna', 'Kowalska', 2002, 'Rzym jest cudny!', 'osoba3.jpg'),
(6, 6, 'Grzegorz', 'Konieczny', 1983, 'Polecam nowy procesor XS756FFT', 'osoba6.jpg'),
(7, 3, 'Monika', 'Kopacz', 2009, 'dzi? rano 5 km', 'osoba1.jpg'),
(8, 3, 'Rysiek', 'Kowalski', 1993, 'Pobiegamy razem?', 'osoba7.jpg'),
(9, 12, 'Ewa', 'Krzak', 2008, 'pozdrawiam wszystkich', 'osoba1.jpg'),
(10, 3, 'Roksana', 'Rybnik', 1995, 'pozdrawiam', 'osoba3.jpg'),
(11, 15, 'Grzegorz', 'Roh', 1983, 'Poszukuje znaczkow z 1967 roku', 'osoba6.jpg'),
(12, 11, 'Monika', 'Kowalewska', 1976, 'Z checi? Ciebie poznam', 'osoba1.jpg'),
(13, 16, 'Jan', 'Trzeciak', 2006, 'moje nowe dzielo', 'osoba5.jpg'),
(14, 5, 'Joanna', 'Rysik', 1993, 'hej1', 'osoba2.jpg'),
(15, 10, 'Anna', 'Kownacka', 2003, 'Szukam przyjaciol', 'osoba3.jpg'),
(16, 6, 'Grzegorz', 'Konieczny', 1983, 'Polecam nowy procesor XS756FFT', 'osoba6.jpg'),
(17, 1, 'Monika', 'Lewandowska', 1967, 'slucham Rocka', 'osoba4.jpg'),
(18, 3, 'Ernest', 'Lubomirski', 2004, 'Pobiegamy razem?', 'osoba8.jpg'),
(19, 6, 'Monika', 'Nowak', 1993, 'ello', 'osoba2.jpg'),
(20, 6, 'Anna', 'Kowalska', 2002, 'Rzym jest cudny!', 'osoba3.jpg'),
(21, 6, 'Grzegorz', 'Konieczny', 1983, 'Polecam nowy procesor XS756FFT', 'osoba6.jpg'),
(22, 2, 'Monika', 'Kowalska', 1976, 'Z checia Ciebie poznam', 'osoba1.jpg'),
(23, 3, 'Jan', 'Kowalski', 2002, 'Lubie sport', 'osoba5.jpg'),
(24, 3, 'Monika', 'Nowak', 1993, 'ello', 'osoba2.jpg'),
(25, 4, 'Anna', 'Kowalska', 2002, 'nowy opis', 'osoba3.jpg'),
(26, 5, 'Grzegorz', 'Konieczny', 1983, 'Polecam nowy procesor XS756FFT', 'osoba6.jpg'),
(27, 6, 'Monika', 'Kopacz', 2009, 'dzi? rano 5 km', 'osoba1.jpg'),
(28, 7, 'Rysiek', 'Kowalski', 1993, 'Pobiegamy razem?', 'osoba7.jpg'),
(29, 7, 'Ewa', 'Krzak', 2008, 'pozdrawiam wszystkich', 'osoba1.jpg'),
(30, 8, 'Roksana', 'Rybnik', 1995, 'pozdrawiam', 'osoba3.jpg'),
(31, 8, 'Grzegorz', 'Roh', 1983, 'Poszukuje znaczkow z 1967 roku', 'osoba6.jpg'),
(32, 9, 'Monika', 'Kowalewska', 1976, 'Z checi? Ciebie poznam', 'osoba1.jpg'),
(33, 12, 'Jan', 'Trzeciak', 2006, 'moje nowe dzielo', 'osoba5.jpg'),
(34, 13, 'Joanna', 'Rysik', 1993, 'hej1', 'osoba2.jpg'),
(35, 14, 'Anna', 'Kownacka', 2003, 'Szukam przyjaciol', 'osoba3.jpg'),
(36, 15, 'Grzegorz', 'Konieczny', 1983, 'Polecam nowy procesor XS756FFT', 'osoba6.jpg'),
(37, 1, 'Monika', 'Lewandowska', 1967, 'slucham Rocka', 'osoba4.jpg'),
(38, 3, 'Ernest', 'Lubomirski', 2004, 'Pobiegamy razem?', 'osoba8.jpg'),
(39, 6, 'Monika', 'Nowak', 1993, 'ello', 'osoba2.jpg'),
(40, 6, 'Anna', 'Kowalska', 2002, 'Rzym jest cudny!', 'osoba3.jpg'),
(41, 6, 'Grzegorz', 'Konieczny', 1983, 'Polecam nowy procesor XS756FFT', 'osoba6.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `stanowiska_id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `adres` text DEFAULT NULL,
  `miasto` varchar(20) DEFAULT NULL,
  `czyRODO` tinyint(1) DEFAULT NULL,
  `czyBadania` tinyint(1) DEFAULT NULL,
  `dataUr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `stanowiska_id`, `imie`, `nazwisko`, `adres`, `miasto`, `czyRODO`, `czyBadania`, `dataUr`) VALUES
(1, 1, 'Jan', 'Nowak', 'ul. Grottgera 5', 'Bytom', 1, 1, '1975-06-09'),
(2, 1, 'Anna', 'Nowak', 'ul. Piekarska 6', 'Bytom', 1, 1, '1977-07-09'),
(3, 2, 'Katarzyna', 'Kowalska', 'ul. Klonowa 1', 'Bytom', 0, 1, '1966-06-20'),
(4, 3, 'Ewelina', 'Rak', 'ul. Musialika 20', 'Bytom', 1, 0, '1985-01-29'),
(5, 3, 'Joanna', 'Nowakowska', 'ul. Stawowa 6', 'Bytom', 1, 1, '1976-12-24'),
(6, 4, 'Krzysztof', 'Rostecki', 'ul. Piekarska 33', 'Bytom', 0, 0, '1982-06-09'),
(7, 4, 'Robert', 'Marcinkowski', 'ul. Szkolna 2', 'Bytom', 0, 1, '1975-06-09'),
(8, 4, 'Ewa', 'Maj', 'ul. Szkolna 4', 'Bytom', 1, 0, '1979-02-28'),
(9, 4, 'Piotr', 'Biernacki', 'ul. Jaworowa 10', 'Bytom', 1, 1, '1980-10-01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `producenci`
--

CREATE TABLE `producenci` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(100) DEFAULT NULL,
  `adres` varchar(100) DEFAULT NULL,
  `miasto` varchar(20) DEFAULT NULL,
  `rokWspolpraca` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `producenci`
--

INSERT INTO `producenci` (`id`, `nazwa`, `adres`, `miasto`, `rokWspolpraca`) VALUES
(4, 'warzywa-rolnik', '12', 'Jany', 1990),
(5, 'Owoce-rolnik', '23', 'Kosatka', 2010),
(6, 'Owoce4You', '2', 'Jany', 1990),
(7, 'Warzywa4You', '65', 'Krasznice', 2015),
(8, 'FruitFarm', '1', 'Jany', 2001),
(9, 'VideoFun', 'Cybernetyki 3', 'Warszawa', 2000),
(10, 'Video', 'Harcerska 3', 'Tychy', 2010),
(11, 'NaszeFilmy', '23 Kwietnia 44', 'Szczecin', 1990);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(10) UNSIGNED NOT NULL,
  `Rodzaje_id` int(10) UNSIGNED NOT NULL,
  `Producenci_id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(100) DEFAULT NULL,
  `ilosc` double DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `cena` double DEFAULT NULL,
  `zdjecie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id`, `Rodzaje_id`, `Producenci_id`, `nazwa`, `ilosc`, `opis`, `cena`, `zdjecie`) VALUES
(1, 1, 8, 'gruszka', 20, 'Klaps', 2.56, 'gruszka.jpg'),
(2, 1, 6, 'morela', 30, '', 5.78, 'morela.jpg'),
(3, 1, 8, 'arbuz', 2, 'czerwony', 2.56, 'arbuz.jpg'),
(4, 1, 5, 'papaja', 5, '', 6.99, 'papaja.jpg'),
(5, 2, 4, 'marchew', 100, '', 1.56, 'marchew.jpg'),
(6, 2, 7, 'ziemniak', 120, 'irys', 3.33, 'ziemniak.jpg'),
(7, 2, 7, 'koper', 2, 'natka', 1.56, 'koper.jpg'),
(8, 2, 4, 'papryka', 50, 'zielona', 10.99, 'papryka.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaje`
--

CREATE TABLE `rodzaje` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `rodzaje`
--

INSERT INTO `rodzaje` (`id`, `nazwa`) VALUES
(1, 'owoce'),
(2, 'warzywa'),
(3, 'oleje'),
(4, 'soki'),
(5, 'sery'),
(6, 'slodycze'),
(7, 'horrory'),
(8, 'kryminalne'),
(9, 'komedie'),
(10, 'familijne'),
(11, 'obyczajowe'),
(12, 'fantastyczne'),
(13, 'przygodowe');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska`
--

CREATE TABLE `stanowiska` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `stanowiska`
--

INSERT INTO `stanowiska` (`id`, `nazwa`, `opis`) VALUES
(1, 'kierownik', 'kierownik grupy programistow'),
(2, 'prezes', 'prezes firmy'),
(3, 'sekretarka', 'prace biurowe i kadry'),
(4, 'programista', 'programowanie aplikacji');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `hobby`
--
ALTER TABLE `hobby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `producenci`
--
ALTER TABLE `producenci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rodzaje`
--
ALTER TABLE `rodzaje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `hobby`
--
ALTER TABLE `hobby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `producenci`
--
ALTER TABLE `producenci`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT dla tabeli `rodzaje`
--
ALTER TABLE `rodzaje`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Baza danych: `dziennikluty23`
--
CREATE DATABASE IF NOT EXISTS `dziennikluty23` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE `dziennikluty23`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa`
--

CREATE TABLE `klasa` (
  `id_klasy` int(3) NOT NULL,
  `wychowawca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel`
--

CREATE TABLE `nauczyciel` (
  `id_nauczyciela` int(3) NOT NULL,
  `imie_nauczyciela` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko_nauczyciela` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `przedmiot` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot`
--

CREATE TABLE `przedmiot` (
  `id_przedmiotu` int(3) NOT NULL,
  `nazwa_przedmiotu` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `nauczyciel` varchar(60) COLLATE utf8mb4_polish_ci NOT NULL,
  `numer_sali` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `przedmiot`
--

INSERT INTO `przedmiot` (`id_przedmiotu`, `nazwa_przedmiotu`, `nauczyciel`, `numer_sali`) VALUES
(1, 'Programowanie', 'Andrzej Murarz', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sala_lekcyjna`
--

CREATE TABLE `sala_lekcyjna` (
  `id_sali` int(3) NOT NULL,
  `numer_sali` int(4) NOT NULL,
  `przedmiot` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `nauczyciel` varchar(60) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczelnia`
--

CREATE TABLE `uczelnia` (
  `id_uczelni` int(3) NOT NULL,
  `nazwa_uczelni` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `numer_uczelni` int(4) NOT NULL,
  `miejscowość` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczeń`
--

CREATE TABLE `uczeń` (
  `id_ucznia` int(3) NOT NULL,
  `imie_ucznia` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko_ucznia` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `klasa` varchar(15) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`id_klasy`);

--
-- Indeksy dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD PRIMARY KEY (`id_nauczyciela`);

--
-- Indeksy dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`id_przedmiotu`);

--
-- Indeksy dla tabeli `sala_lekcyjna`
--
ALTER TABLE `sala_lekcyjna`
  ADD PRIMARY KEY (`id_sali`);

--
-- Indeksy dla tabeli `uczelnia`
--
ALTER TABLE `uczelnia`
  ADD PRIMARY KEY (`id_uczelni`);

--
-- Indeksy dla tabeli `uczeń`
--
ALTER TABLE `uczeń`
  ADD PRIMARY KEY (`id_ucznia`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `klasa`
--
ALTER TABLE `klasa`
  MODIFY `id_klasy` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  MODIFY `id_nauczyciela` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `id_przedmiotu` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `sala_lekcyjna`
--
ALTER TABLE `sala_lekcyjna`
  MODIFY `id_sali` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `uczelnia`
--
ALTER TABLE `uczelnia`
  MODIFY `id_uczelni` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `uczeń`
--
ALTER TABLE `uczeń`
  MODIFY `id_ucznia` int(3) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD CONSTRAINT `klasa_ibfk_1` FOREIGN KEY (`id_klasy`) REFERENCES `uczeń` (`id_ucznia`);

--
-- Ograniczenia dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD CONSTRAINT `nauczyciel_ibfk_1` FOREIGN KEY (`id_nauczyciela`) REFERENCES `sala_lekcyjna` (`id_sali`);

--
-- Ograniczenia dla tabeli `sala_lekcyjna`
--
ALTER TABLE `sala_lekcyjna`
  ADD CONSTRAINT `sala_lekcyjna_ibfk_1` FOREIGN KEY (`id_sali`) REFERENCES `przedmiot` (`id_przedmiotu`);

--
-- Ograniczenia dla tabeli `uczeń`
--
ALTER TABLE `uczeń`
  ADD CONSTRAINT `uczeń_ibfk_1` FOREIGN KEY (`id_ucznia`) REFERENCES `nauczyciel` (`id_nauczyciela`);
--
-- Baza danych: `firma`
--
CREATE DATABASE IF NOT EXISTS `firma` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `firma`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `stanowiska_id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `adres` text DEFAULT NULL,
  `miasto` varchar(20) DEFAULT NULL,
  `czyRODO` tinyint(1) DEFAULT NULL,
  `czyBadania` tinyint(1) DEFAULT NULL,
  `dataUr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `stanowiska_id`, `imie`, `nazwisko`, `adres`, `miasto`, `czyRODO`, `czyBadania`, `dataUr`) VALUES
(1, 1, 'Jan', 'Nowak', 'ul. Grottgera 5', 'Bytom', 1, 1, '1975-06-09'),
(2, 1, 'Anna', 'Nowak', 'ul. Piekarska 6', 'Bytom', 1, 1, '1977-07-09'),
(3, 2, 'Katarzyna', 'Kowalska', 'ul. Klonowa 1', 'Bytom', 0, 1, '1966-06-20'),
(4, 3, 'Ewelina', 'Rak', 'ul. Musialika 20', 'Bytom', 1, 0, '1985-01-29'),
(5, 3, 'Joanna', 'Nowakowska', 'ul. Stawowa 6', 'Bytom', 1, 1, '1976-12-24'),
(6, 4, 'Krzysztof', 'Rostecki', 'ul. Piekarska 33', 'Bytom', 0, 0, '1982-06-09'),
(7, 4, 'Robert', 'Marcinkowski', 'ul. Szkolna 2', 'Bytom', 0, 1, '1975-06-09'),
(8, 4, 'Ewa', 'Maj', 'ul. Szkolna 4', 'Bytom', 1, 0, '1979-02-28'),
(9, 4, 'Piotr', 'Biernacki', 'ul. Jaworowa 10', 'Bytom', 1, 1, '1980-10-01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska`
--

CREATE TABLE `stanowiska` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `stanowiska`
--

INSERT INTO `stanowiska` (`id`, `nazwa`, `opis`) VALUES
(1, 'kierownik', 'kierownik grupy programistow'),
(2, 'prezes', 'prezes firmy'),
(3, 'sekretarka', 'prace biurowe i kadry'),
(4, 'programista', 'programowanie aplikacji');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Baza danych: `milionerzy`
--
CREATE DATABASE IF NOT EXISTS `milionerzy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE `milionerzy`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

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
--
-- Baza danych: `nauka`
--
CREATE DATABASE IF NOT EXISTS `nauka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nauka`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot`
--

CREATE TABLE `przedmiot` (
  `id` int(2) NOT NULL,
  `nazwa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `przedmiot`
--

INSERT INTO `przedmiot` (`id`, `nazwa`) VALUES
(1, 'matematyka'),
(2, 'polski'),
(3, 'historia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przydatne`
--

CREATE TABLE `przydatne` (
  `id` int(2) NOT NULL,
  `id_przedmiotu` int(2) NOT NULL,
  `adres_www` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `przydatne`
--

INSERT INTO `przydatne` (`id`, `id_przedmiotu`, `adres_www`) VALUES
(1, 1, 'matemaks.pl'),
(2, 2, 'sciaga.pl'),
(3, 3, 'historiabezcenzury.pl');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `przydatne`
--
ALTER TABLE `przydatne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_przedmiotu` (`id_przedmiotu`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `przydatne`
--
ALTER TABLE `przydatne`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `przydatne`
--
ALTER TABLE `przydatne`
  ADD CONSTRAINT `przydatne_ibfk_1` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmiot` (`id`);
--
-- Baza danych: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Zrzut danych tabeli `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bd\",\"table\":\"dane\"},{\"db\":\"bd\",\"table\":\"uzytkownicy\"},{\"db\":\"portal\",\"table\":\"dane\"},{\"db\":\"portal\",\"table\":\"uzytkownicy\"}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Zrzut danych tabeli `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'portal', 'uzytkownicy', '{\"sorted_col\":\"`uzytkownicy`.`login` ASC\"}', '2023-02-28 09:27:38');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Zrzut danych tabeli `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-02-28 09:25:22', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pl\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeksy dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeksy dla tabeli `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeksy dla tabeli `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeksy dla tabeli `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeksy dla tabeli `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeksy dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeksy dla tabeli `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeksy dla tabeli `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeksy dla tabeli `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeksy dla tabeli `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Baza danych: `pitu_pitu`
--
CREATE DATABASE IF NOT EXISTS `pitu_pitu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pitu_pitu`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pitu_pitu`
--

CREATE TABLE `pitu_pitu` (
  `user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Baza danych: `polskie`
--
CREATE DATABASE IF NOT EXISTS `polskie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `polskie`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `polskie`
--

CREATE TABLE `polskie` (
  `id` int(3) NOT NULL,
  `wykonawca` varchar(50) NOT NULL,
  `tytul` varchar(50) NOT NULL,
  `link_yt` text NOT NULL,
  `plik` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `polskie`
--

INSERT INTO `polskie` (`id`, `wykonawca`, `tytul`, `link_yt`, `plik`) VALUES
(1, 'Maleńczuk', 'Ostatnia nocka', 'https://youtu.be/z-2mO3KTVHg', 'yugopolis.jpg'),
(2, 'Maleńczuk', 'Sługi za szlugi', 'https://youtu.be/nCS48nKSeSs', 'slugi-za-szlugi.jfif'),
(3, 'Enej', 'Skrzydlate ręce', 'https://youtu.be/n3Hv-1MWz2Y', 'skrzydlate-rece.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `polskie`
--
ALTER TABLE `polskie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `polskie`
--
ALTER TABLE `polskie`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Baza danych: `portal`
--
CREATE DATABASE IF NOT EXISTS `portal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `portal`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `id` int(10) UNSIGNED NOT NULL,
  `rok_urodz` year(4) DEFAULT NULL,
  `przyjaciol` int(10) UNSIGNED DEFAULT NULL,
  `hobby` varchar(20) DEFAULT NULL,
  `zdjecie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`id`, `rok_urodz`, `przyjaciol`, `hobby`, `zdjecie`) VALUES
(1, 1995, 10, 'moda', 'o6.jpg'),
(2, 1990, 20, 'film', 'o4.jpg'),
(3, 1990, 20, 'cross', 'o1.jpg'),
(4, 2001, 4, 'finanse', 'o2.jpg'),
(5, 2002, 50, 'muzyka', 'o8.jpg'),
(6, 1994, 10, 'baseball', 'o6.jpg'),
(7, 1990, 20, 'film', 'o5.jpg'),
(8, 1990, 20, 'film', 'o3.jpg'),
(9, 2001, 0, 'psychologia', 'o7.jpg'),
(10, 2002, 50, 'muzyka', 'o2.jpg'),
(11, 1994, 10, 'DIY', 'o6.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `haslo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `login`, `haslo`) VALUES
(1, 'Justyna', 'a056c8d05ae9ac6ca180bc991b93b7ffe37563e0'),
(2, 'Ewa', 'c50267b906a652f2142cfab006e215c9f6fdc8a0'),
(3, 'Krzysiek', '637a81ed8e8217bb01c15c67c39b43b0ab4e20f1'),
(4, 'Adam', '8578173555a47d4ea49e697badfda270dee0858f'),
(5, 'Magda', '99ebdbd711b0e1854a6c2e93f759efc2af291fd0'),
(6, 'Werka', '186154712b2d5f6791d85b9a0987b98fa231779c'),
(7, 'Janek', '7823372203bd98aeb10e6f33a6ce7dab12d13423'),
(8, 'Heniek', '425ffc1422dc4f32528bd9fd5af355fdb5c96192'),
(9, 'Ola', '4ae9fa0a8299a828a886c0eb30c930c7cf302a72'),
(10, 'Dawid', 'b3054ff0797ff0b2bbce03ec897fe63e0b6490e0'),
(11, 'Ewelina', '7e240de74fb1ed08fa08d38063f6a6a91462a815');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dane`
--
ALTER TABLE `dane`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Baza danych: `powtorka`
--
CREATE DATABASE IF NOT EXISTS `powtorka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `powtorka`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `angielski`
--

CREATE TABLE `angielski` (
  `id` int(11) NOT NULL,
  `czas` text NOT NULL,
  `koncowka` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `angielski`
--

INSERT INTO `angielski` (`id`, `czas`, `koncowka`) VALUES
(1, 'present simple ', '-s'),
(2, 'present continuous', '-ing'),
(3, 'past simple', '-ed, czasowniki nieregularne tabelka'),
(4, 'past continuous', 'was/were '),
(5, 'future simple ', 'will ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `css`
--

CREATE TABLE `css` (
  `id` int(11) NOT NULL,
  `selektor` text NOT NULL,
  `funkcja` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `css`
--

INSERT INTO `css` (`id`, `selektor`, `funkcja`) VALUES
(1, '.class', 'Wybierz wszystkie elementy zawierające class=”class”'),
(2, 'text-align: left; ', 'wyrownanie tekstu do lewej'),
(3, 'text-align: right; ', 'wyrownianie tekstu do prawej'),
(4, 'text-align: center; ', 'wysrodkowanie tekstu'),
(5, ':hover', 'Wybierz link, najechany przez kursor');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cytaty`
--

CREATE TABLE `cytaty` (
  `id` int(11) NOT NULL,
  `cytat` text NOT NULL,
  `autor` text NOT NULL,
  `utwór` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `cytaty`
--

INSERT INTO `cytaty` (`id`, `cytat`, `autor`, `utwór`) VALUES
(1, '\"Lepiej zaliczać się do niektórych, niż do wszystkich\"', 'Andrzej Sapkowski', ' Krew elfów'),
(2, '\"Książki są lustrem: widzisz w nich tylko to co, już masz w sobie.\"', 'Carlos Ruiz Zafón', 'Cień wiatru'),
(3, '\"Dobrze widzi się tylko sercem. Najważniejsze jest niewidoczne dla oczu\"', 'Antoine de Saint-Exupéry', 'Mały Książę'),
(4, '\"W chwili, kiedy zastanawiasz się czy kogoś kochasz, przestałeś go już kochać na zawsze.\"', 'Carlos Ruiz Zafón', 'Cień wiatru'),
(5, '\"Czytanie książek to najpiękniejsza zabawa, jaką sobie ludzkość wymyśliła\"', 'Wisława Szymborska ', '-');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `html`
--

CREATE TABLE `html` (
  `id` int(11) NOT NULL,
  `znacznik` text NOT NULL,
  `funkcja` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `html`
--

INSERT INTO `html` (`id`, `znacznik`, `funkcja`) VALUES
(1, '<html></html>', 'w tym tagu znajduje się cała zawartość strony – treści widoczne dla użytkowników i wytyczne dla przeglądarek, których nie widzi użytkownik.'),
(2, '<title></title>', 'znacznik odpowiedzialny za tytuł strony. Tytuł strony jest wyświetlany w karcie przeglądarki.'),
(3, '<link> ', ' znacznik, który jest wykorzystywany do podpinania innych plików, np. CSS'),
(4, '<script></script>', 'znacznik służący do podpinania skryptów.'),
(5, '<body></body>', 'w tym znaczniku umieszczamy całą zawartość strony, która ma być widoczna dla użytkowników.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `javascript`
--

CREATE TABLE `javascript` (
  `id` int(11) NOT NULL,
  `operator` text NOT NULL,
  `funkcja` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `javascript`
--

INSERT INTO `javascript` (`id`, `operator`, `funkcja`) VALUES
(1, '*', 'mnożenie liczb'),
(2, '==', 'porównanie wartości'),
(3, '&&', 'logiczne \"i\" (and)'),
(4, '*=', 'skrócony zapis, np. a *= b odpowiada: a = a * b'),
(5, '%=', 'skrócony zapis, np. a %= b odpowiada: a = a % b');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `matemtyka`
--

CREATE TABLE `matemtyka` (
  `id` int(11) NOT NULL,
  `twierdzenie` text NOT NULL,
  `wzor` varchar(11) NOT NULL,
  `tworca` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `matemtyka`
--

INSERT INTO `matemtyka` (`id`, `twierdzenie`, `wzor`, `tworca`) VALUES
(1, 'pole prostokąta', 'a*b', '-'),
(2, 'wzor na trójkąt ', '(a*b)\\2', '-'),
(3, 'twierdzenie Pitagorasa', '𝑎² + 𝑏² = 𝑐', 'Pitagoras'),
(4, 'wzór na pole koła', '𝑃 = 𝜋𝑟²', '-'),
(5, 'pole kwadratu ', 'a*a', '-');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mysql`
--

CREATE TABLE `mysql` (
  `id` int(11) NOT NULL,
  `polecenie` text NOT NULL,
  `funkcja` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `mysql`
--

INSERT INTO `mysql` (`id`, `polecenie`, `funkcja`) VALUES
(1, 'select', 'wybierz'),
(2, 'insert into', 'wstaw'),
(3, 'create table', 'stworz tabele');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `php`
--

CREATE TABLE `php` (
  `id` int(11) NOT NULL,
  `komenda` text NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `php`
--

INSERT INTO `php` (`id`, `komenda`, `opis`) VALUES
(1, '<?', 'rozpoczęcie '),
(2, '?>', 'zamkniecie'),
(3, '$zmienna', 'zmienna \r\n');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `angielski`
--
ALTER TABLE `angielski`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `css`
--
ALTER TABLE `css`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cytaty`
--
ALTER TABLE `cytaty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `html`
--
ALTER TABLE `html`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `javascript`
--
ALTER TABLE `javascript`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `matemtyka`
--
ALTER TABLE `matemtyka`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `mysql`
--
ALTER TABLE `mysql`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `php`
--
ALTER TABLE `php`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `angielski`
--
ALTER TABLE `angielski`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `css`
--
ALTER TABLE `css`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `cytaty`
--
ALTER TABLE `cytaty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `html`
--
ALTER TABLE `html`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `javascript`
--
ALTER TABLE `javascript`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `matemtyka`
--
ALTER TABLE `matemtyka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `mysql`
--
ALTER TABLE `mysql`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `php`
--
ALTER TABLE `php`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Baza danych: `pythonbaza`
--
CREATE DATABASE IF NOT EXISTS `pythonbaza` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pythonbaza`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoba`
--

CREATE TABLE `osoba` (
  `id` int(2) NOT NULL,
  `imie` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `osoba`
--

INSERT INTO `osoba` (`id`, `imie`) VALUES
(31, 'Andrzej'),
(32, 'Bob'),
(33, 'Stanisław');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `osoba`
--
ALTER TABLE `osoba`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `osoba`
--
ALTER TABLE `osoba`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Baza danych: `szkola`
--
CREATE DATABASE IF NOT EXISTS `szkola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `szkola`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczen`
--

CREATE TABLE `uczen` (
  `id_u` int(3) NOT NULL,
  `nazwisko` varchar(35) DEFAULT NULL,
  `wiek` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uczen`
--

INSERT INTO `uczen` (`id_u`, `nazwisko`, `wiek`) VALUES
(1, 'Kowalski', 13),
(2, 'Pudzianowski', 11),
(3, 'Swiatek', 77),
(4, 'Lewandowski', 55),
(5, 'Jelen', 5);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `uczen`
--
ALTER TABLE `uczen`
  MODIFY `id_u` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Baza danych: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Baza danych: `wzory`
--
CREATE DATABASE IF NOT EXISTS `wzory` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wzory`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wzor`
--

CREATE TABLE `wzor` (
  `id_w` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
