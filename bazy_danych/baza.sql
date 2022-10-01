-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Czas generowania: 01 Paź 2022, 12:06
-- Wersja serwera: 5.7.38
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `app_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `g4_kierowcy`
--

CREATE TABLE `g4_kierowcy` (
  `id` int(11) NOT NULL,
  `imie` varchar(255) NOT NULL,
  `nazwisko` varchar(255) NOT NULL,
  `telefon` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `g4_kierowcy`
--

INSERT INTO `g4_kierowcy` (`id`, `imie`, `nazwisko`, `telefon`) VALUES
(1, 'Seweryn', 'Jagusiak', 123456789);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gr4_kurs`
--

CREATE TABLE `gr4_kurs` (
  `id` int(11) NOT NULL,
  `pojazd_id` int(11) NOT NULL,
  `kierowca_id` int(11) NOT NULL,
  `skad_id` int(11) NOT NULL,
  `dokad_id` int(11) NOT NULL,
  `czas_startu` datetime NOT NULL,
  `czas_konca` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `gr4_kurs`
--

INSERT INTO `gr4_kurs` (`id`, `pojazd_id`, `kierowca_id`, `skad_id`, `dokad_id`, `czas_startu`, `czas_konca`) VALUES
(1, 12, 1, 1, 2, '2022-10-01 11:06:00', '2022-10-01 11:29:29');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gr4_pojazd`
--

CREATE TABLE `gr4_pojazd` (
  `numer_pojazdu` int(11) NOT NULL,
  `liczba_miejsc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `gr4_pojazd`
--

INSERT INTO `gr4_pojazd` (`numer_pojazdu`, `liczba_miejsc`) VALUES
(12, 50);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gr4_zajezdnia`
--

CREATE TABLE `gr4_zajezdnia` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `gr4_zajezdnia`
--

INSERT INTO `gr4_zajezdnia` (`id`, `nazwa`) VALUES
(1, 'Wroclaw'),
(2, 'Warszawa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wydawnictwo`
--

CREATE TABLE `wydawnictwo` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenie`
--

CREATE TABLE `wypozyczenie` (
  `id` int(11) NOT NULL,
  `osoba_id` int(11) NOT NULL,
  `ksiazka_id` int(11) NOT NULL,
  `data_wypozyczenia` date NOT NULL,
  `zwrocana` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `g4_kierowcy`
--
ALTER TABLE `g4_kierowcy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gr4_kurs`
--
ALTER TABLE `gr4_kurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pojazd_id` (`pojazd_id`),
  ADD KEY `skad_id` (`skad_id`),
  ADD KEY `dokad_id` (`dokad_id`),
  ADD KEY `kierowca_id` (`kierowca_id`);

--
-- Indeksy dla tabeli `gr4_pojazd`
--
ALTER TABLE `gr4_pojazd`
  ADD PRIMARY KEY (`numer_pojazdu`);

--
-- Indeksy dla tabeli `gr4_zajezdnia`
--
ALTER TABLE `gr4_zajezdnia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wydawnictwo`
--
ALTER TABLE `wydawnictwo`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wypozyczenie`
--
ALTER TABLE `wypozyczenie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ksiazka_id` (`ksiazka_id`),
  ADD KEY `osoba_id` (`osoba_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `g4_kierowcy`
--
ALTER TABLE `g4_kierowcy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `gr4_kurs`
--
ALTER TABLE `gr4_kurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `gr4_pojazd`
--
ALTER TABLE `gr4_pojazd`
  MODIFY `numer_pojazdu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `gr4_zajezdnia`
--
ALTER TABLE `gr4_zajezdnia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `wydawnictwo`
--
ALTER TABLE `wydawnictwo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `wypozyczenie`
--
ALTER TABLE `wypozyczenie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `gr4_kurs`
--
ALTER TABLE `gr4_kurs`
  ADD CONSTRAINT `gr4_kurs_ibfk_1` FOREIGN KEY (`pojazd_id`) REFERENCES `gr4_pojazd` (`numer_pojazdu`),
  ADD CONSTRAINT `gr4_kurs_ibfk_2` FOREIGN KEY (`skad_id`) REFERENCES `gr4_zajezdnia` (`id`),
  ADD CONSTRAINT `gr4_kurs_ibfk_3` FOREIGN KEY (`dokad_id`) REFERENCES `gr4_zajezdnia` (`id`),
  ADD CONSTRAINT `gr4_kurs_ibfk_4` FOREIGN KEY (`kierowca_id`) REFERENCES `g4_kierowcy` (`id`);

--
-- Ograniczenia dla tabeli `wypozyczenie`
--
ALTER TABLE `wypozyczenie`
  ADD CONSTRAINT `wypozyczenie_ibfk_1` FOREIGN KEY (`osoba_id`) REFERENCES `osoba` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

