-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05 Iun 2018 la 21:34
-- Versiune server: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donator`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `centre`
--

CREATE TABLE `centre` (
  `idCentru` int(11) NOT NULL,
  `nume` varchar(255) DEFAULT NULL,
  `adresa` varchar(255) DEFAULT NULL,
  `telefon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `latitudine` double DEFAULT NULL,
  `longitudine` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `centre`
--

INSERT INTO `centre` (`idCentru`, `nume`, `adresa`, `telefon`, `email`, `latitudine`, `longitudine`) VALUES
(1, 'Donasis', 'Tractoristilor', '0748532265', 'donasis@donasis.com', 46.7876717, 23.659904600000004),
(3, 'Salvosan', 'Motilor', '0788543127', 'salvosan@salvosan', 46.7659726, 23.579014400000005),
(4, 'SfDonatie', 'Observatorului', '0788543127', 'donatie@donatie.com', 46.754697, 23.58577630000002),
(5, 'clinicaBistrita', 'Bulevardul Decebal', '0264523654', 'clinica@bistrita.ro', 47.135895, 24.49198649999994),
(6, 'donatiiBrad', 'Republicii', '0264523654', 'clinica@brad.ro', 46.1285691, 22.79200160000005),
(7, 'clicicaTarguMures', 'Liberatii', '0264523654', 'clinica@targumures.ro', 46.5379053, 24.54881899999998);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `chestionare`
--

CREATE TABLE `chestionare` (
  `idChestionare` int(11) NOT NULL,
  `dataCompletarii` varchar(255) DEFAULT NULL,
  `intrebarea1a` varchar(255) DEFAULT NULL,
  `intrebarea1b` varchar(255) DEFAULT NULL,
  `intrebarea1c` varchar(255) DEFAULT NULL,
  `intrebarea1d` varchar(255) DEFAULT NULL,
  `intrebarea2` varchar(255) DEFAULT NULL,
  `intrebarea3a` varchar(255) DEFAULT NULL,
  `intrebarea3b` varchar(255) DEFAULT NULL,
  `intrebarea3c` varchar(255) DEFAULT NULL,
  `intrebarea3d` varchar(255) DEFAULT NULL,
  `intrebarea3e` varchar(255) DEFAULT NULL,
  `intrebarea3f` varchar(255) DEFAULT NULL,
  `intrebarea3g` varchar(255) DEFAULT NULL,
  `intrebarea3h` varchar(255) DEFAULT NULL,
  `intrebarea4a` varchar(255) DEFAULT NULL,
  `intrebarea4b` varchar(255) DEFAULT NULL,
  `intrebarea4c` varchar(255) DEFAULT NULL,
  `intrebarea4d` varchar(255) DEFAULT NULL,
  `intrebarea5` varchar(255) DEFAULT NULL,
  `intrebarea6` varchar(255) DEFAULT NULL,
  `intrebarea7` varchar(255) DEFAULT NULL,
  `intrebarea8a` varchar(255) DEFAULT NULL,
  `intrebarea8b` varchar(255) DEFAULT NULL,
  `intrebarea8c` varchar(255) DEFAULT NULL,
  `intrebarea8d` varchar(255) DEFAULT NULL,
  `intrebarea8e` varchar(255) DEFAULT NULL,
  `intrebarea8f` varchar(255) DEFAULT NULL,
  `intrebarea8g` varchar(255) DEFAULT NULL,
  `intrebarea8h` varchar(255) DEFAULT NULL,
  `intrebarea9` varchar(255) DEFAULT NULL,
  `intrebarea10` varchar(255) DEFAULT NULL,
  `iddonatori` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `chestionare`
--

INSERT INTO `chestionare` (`idChestionare`, `dataCompletarii`, `intrebarea1a`, `intrebarea1b`, `intrebarea1c`, `intrebarea1d`, `intrebarea2`, `intrebarea3a`, `intrebarea3b`, `intrebarea3c`, `intrebarea3d`, `intrebarea3e`, `intrebarea3f`, `intrebarea3g`, `intrebarea3h`, `intrebarea4a`, `intrebarea4b`, `intrebarea4c`, `intrebarea4d`, `intrebarea5`, `intrebarea6`, `intrebarea7`, `intrebarea8a`, `intrebarea8b`, `intrebarea8c`, `intrebarea8d`, `intrebarea8e`, `intrebarea8f`, `intrebarea8g`, `intrebarea8h`, `intrebarea9`, `intrebarea10`, `iddonatori`) VALUES
(1, '20180605_124238', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Da', 'Da', 'Da', 'Da', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 23),
(2, '20180605_143026', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 'Nu', 23);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `datesange`
--

CREATE TABLE `datesange` (
  `IdSange` int(11) NOT NULL,
  `Grupa` varchar(255) DEFAULT NULL,
  `Sanatos` int(11) DEFAULT NULL,
  `GlobuleRosii` int(11) DEFAULT NULL,
  `Plasma` int(11) DEFAULT NULL,
  `Trombocite` int(11) DEFAULT NULL,
  `DataRecoltare` date DEFAULT NULL,
  `IdDonator` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `datesange`
--

INSERT INTO `datesange` (`IdSange`, `Grupa`, `Sanatos`, `GlobuleRosii`, `Plasma`, `Trombocite`, `DataRecoltare`, `IdDonator`) VALUES
(1, '0-', 1, 1, 1, 1, '2018-08-23', 1),
(2, 'A-', 1, 1, 1, 1, '2018-08-23', 2),
(3, 'AB-', 1, 1, 1, 1, '2018-08-23', 5),
(4, 'AB+', 1, 1, 1, 1, '2018-08-23', 6),
(5, 'A+', 1, 1, 1, 1, '2018-08-23', 7),
(8, 'B+', 1, 1, 1, 1, '2018-06-05', 8),
(9, 'AB+', 2, 1, 1, 1, '2018-06-05', 9),
(10, 'AB-', 1, 1, 1, 1, NULL, 10),
(11, '0+', 1, 1, 1, 1, NULL, 11),
(12, 'A+', 1, 1, 1, 1, '2018-06-27', 23),
(13, 'A+', 1, 1, 1, 1, '2018-06-05', 29);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `datesangecentre`
--

CREATE TABLE `datesangecentre` (
  `idDatesangeCentre` int(11) NOT NULL,
  `idSange` int(11) DEFAULT NULL,
  `idCentru` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `datesangecentre`
--

INSERT INTO `datesangecentre` (`idDatesangeCentre`, `idSange`, `idCentru`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 8, 3),
(4, 13, 3);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `donatori`
--

CREATE TABLE `donatori` (
  `IdDonatori` int(11) NOT NULL,
  `Nume` varchar(255) DEFAULT NULL,
  `Prenume` varchar(255) DEFAULT NULL,
  `CNP` varchar(255) DEFAULT NULL,
  `Data_Nasterii` varchar(255) DEFAULT NULL,
  `NumarTelefon` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Judet` varchar(255) DEFAULT NULL,
  `Oras` varchar(255) DEFAULT NULL,
  `Strada` varchar(255) DEFAULT NULL,
  `Apartament` varchar(255) DEFAULT NULL,
  `Bloc` varchar(255) DEFAULT NULL,
  `Scara` varchar(255) DEFAULT NULL,
  `Numar` varchar(255) DEFAULT NULL,
  `CodPostal` int(11) DEFAULT NULL,
  `latitudine` double NOT NULL,
  `longitudine` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `donatori`
--

INSERT INTO `donatori` (`IdDonatori`, `Nume`, `Prenume`, `CNP`, `Data_Nasterii`, `NumarTelefon`, `Email`, `Judet`, `Oras`, `Strada`, `Apartament`, `Bloc`, `Scara`, `Numar`, `CodPostal`, `latitudine`, `longitudine`) VALUES
(1, 'Pop', 'Andrei', '1230069874562', '20-08-1978', '0745695412', 'pop_ion@yahoo.com', 'Cluj', 'Cluj-Napoca', 'Memorandumului', '', '', '', '10', 0, 46.7696416, 23.5869939),
(3, 'Popescu', 'Mihai', '1234569874577', '20-08-1995', '0723456789', 'popescu_2007@yahoo.com', 'Cluj', 'Cluj-Napoca', 'Eroilor', '', '', '', '11', 0, 46.770011, 23.594183),
(5, 'Morar', 'Denisa', '1234469874562', '10-10-1978', '0264419566', 'morar_denisa@gmail.com', 'Cluj', 'Cluj-Napoca', 'Dunarii', '32', 'D2', '1', '2', 0, 46.777377, 23.635253),
(6, 'Morariu', 'Vlad', '1234569877562', '20-07-1978', '0756489652', 'vlad_vlad@gmail.com', 'Cluj', 'Cluj-Napoca', 'Tulcea', '', '', '', '22', 0, 46.763848, 23.576954),
(7, 'Ionescu', 'Dan', '1234569874123', '20-08-1977', '0755648855', 'asdd@gmail.com', 'Cluj', 'Cluj-Napoca', 'Piezisa', NULL, '', '', '10', 0, 46.138932, 24.540322),
(8, 'Basescu', 'Traian', '1234569874562', '12-04-1990', '0745698745', 'base90@yahoo.com', 'Hunedoara', 'Brad', 'Avram Iancu', NULL, NULL, NULL, '9', 778899, 46.526459, 22.778033),
(9, 'Iohanis', 'Radu', '1234569874562', '12-04-1973', '0745698745', 'raduradu@yahoo.com', 'Mures', 'Targu-Mures', 'Gheorge Doja', NULL, NULL, NULL, '100', 778899, 46.526459, 24.540322),
(10, 'Bodea', 'Maria', '1234569874562', '12-04-1985', '0745698745', 'mariutza@yahoo.com', 'Mures', 'Targu-Mures', 'Painii', NULL, NULL, NULL, '2', 778899, 46.526459, 24.540322),
(11, 'Palinca', 'John', '1234561174562', '12-04-1973', '0745698745', 'palincapalinca@yahoo.com', 'Cluj', 'Turda', 'Mihai Viteazu', NULL, NULL, NULL, '2', 778899, 46.564676, 23.797106),
(12, 'Velea', 'Alex', NULL, NULL, '0755648855', 'alexvelea@gmail.com', 'Cluj', 'Cluj-Napoca', 'Sportului', '', '', '', '2', 0, 46.783146, 23.651534),
(2, 'Ferdean', 'Flaviu', NULL, NULL, '0788965425', 'flaviu@gmail.com', 'Cluj', 'Cluj-Napoca', 'Dambovitei', '', '', '', '8', 0, 46.781876, 23.627507),
(4, 'Bodiu', 'Daniela', NULL, NULL, '0788965999', 'danab@gmail.com', 'Cluj', 'Cluj-Napoca', 'Dambovitei', '', '', '', '20', 0, 46.781876, 23.627507),
(15, 'Gogea', 'Margareta', NULL, NULL, '0788965999', 'gogea22@yahoo.com', 'Cluj', 'Cluj-Napoca', 'Morii', '', '', '', '45', 0, 46.786493, 23.585776),
(16, 'Palcu', 'Sergiu', NULL, NULL, '0788965999', 'sergiu_palcu@yahoo.com', 'Cluj', 'Cluj-Napoca', 'Observatorului', '', '', '', '1', 0, 46.754697, 23.585776),
(17, 'Gigel', 'Suzana', '4848493956483', '13-04-1995', '0885694526', 'suzana_suzana@yahoo.com', 'Cluj', 'Cluj-Napoca', 'Bucuresti', NULL, NULL, NULL, '55', 9900, 46.780737, 23.604763),
(18, 'Danescu', 'Ioana', '4848111956483', '13-11-1995', '0885694526', 'danioana@yahoo.com', 'Cluj', 'Cluj-Napoca', 'Decebal', NULL, NULL, NULL, '55', 9900, 46.780955, 23.590088),
(19, 'Baies', 'Alex', '777793956483', '13-04-1990', '0885994526', 'vaiesalexa@yahoo.com', 'Hunedoara', 'Brad', 'Liceului', NULL, NULL, NULL, '38', 9900, 46.128944, 22.788392),
(30, 'mhnea', 'prenume', '123213443', NULL, '', 'wx.mihnea@yahoo.com', '', 'Cluj-Napoca', 'Galati', '', '', '', '', 0, 46.7712101, 23.6236353),
(29, 'mhnea', 'prenume', NULL, NULL, '', 'wx.mihnea@yahoo.com', '', 'Cluj-Napoca', 'Galati', '', '', '', '', 0, 46.7712101, 23.6236353),
(28, 'nume', 'prenume', NULL, NULL, '0756120122', 'nume@yahoo.com', 'Cluj', 'Cluj-Napoca', 'Observatorului', '1', '1', '1', '1', 0, 46.754697, 23.5857763),
(23, 'balan', 'paul', NULL, NULL, '0755525252', 'balanpaul1@yahoo.com', 'Cluj', 'Cluj Napoca', 'hasdeu', '', '', '', '16', 0, 0, 0),
(27, 'balna', '', NULL, NULL, '', 'a@yahoo.com', '', 'Cluj-Napoca', 'Observatorului', '', '', '', '', 0, 46.754697, 23.5857763),
(26, 'alex', '', NULL, NULL, '', 'b@yahoo.com', '', 'Cluj-Napoca', 'Observatorului', '', '', '', '', 0, 46.754697, 23.5857763);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `observatii`
--

CREATE TABLE `observatii` (
  `IdObservatie` int(11) NOT NULL,
  `IdSange` int(11) DEFAULT NULL,
  `Observatia` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `observatii`
--

INSERT INTO `observatii` (`IdObservatie`, `IdSange`, `Observatia`) VALUES
(1, 5, 'hiv'),
(2, 1, 'diabet'),
(3, 9, 'sifilis'),
(4, 9, 'sifilisX2'),
(5, 9, 'hiv'),
(6, 10, 'boala');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `personal`
--

CREATE TABLE `personal` (
  `IdPersonal` int(11) NOT NULL,
  `Nume` varchar(255) DEFAULT NULL,
  `Prenume` varchar(255) DEFAULT NULL,
  `NumarTelefon` varchar(255) DEFAULT NULL,
  `Parola` varchar(255) DEFAULT NULL,
  `Functie` varchar(255) DEFAULT NULL,
  `IdCentre` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `personal`
--

INSERT INTO `personal` (`IdPersonal`, `Nume`, `Prenume`, `NumarTelefon`, `Parola`, `Functie`, `IdCentre`) VALUES
(1, 'Ion', 'Ionescu', '071438394', '00', 'Medic', 1),
(2, 'Danescu', 'Danel', '071438399', '11', 'Laborant', 3),
(3, 'Ana', 'Lucica', '0752424', '1234', 'Asistent', 1);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `programari`
--

CREATE TABLE `programari` (
  `IdProgramri` int(11) NOT NULL,
  `DataD` date DEFAULT NULL,
  `Ora` int(11) DEFAULT NULL,
  `iddonatori` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `programari`
--

INSERT INTO `programari` (`IdProgramri`, `DataD`, `Ora`, `iddonatori`) VALUES
(1, '2018-06-11', 8, 1),
(2, '2018-06-12', 9, 3),
(3, '2018-06-29', 14, 5),
(4, '2018-07-03', 14, 6),
(5, '2018-07-03', 16, 7),
(6, '2018-07-22', 16, 12),
(7, '2018-08-08', 16, 13),
(8, '2018-08-08', 10, 14),
(9, '2018-08-21', 10, 15),
(10, '2018-08-21', 9, 16),
(11, '2018-06-28', 10, 23),
(12, '2019-06-19', 10, 23),
(13, '2018-06-10', 12, 24),
(14, '2018-06-06', 7, 25),
(15, '2018-06-20', 10, 26),
(16, '2018-06-28', 11, 27),
(17, '2018-06-21', 12, 28),
(18, '2018-06-15', 10, 29),
(19, '2018-06-05', 5, 29);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `centre`
--
ALTER TABLE `centre`
  ADD PRIMARY KEY (`idCentru`);

--
-- Indexes for table `chestionare`
--
ALTER TABLE `chestionare`
  ADD PRIMARY KEY (`idChestionare`),
  ADD KEY `FKofbuisnsdndl87yyhjjn8l06x` (`iddonatori`);

--
-- Indexes for table `datesange`
--
ALTER TABLE `datesange`
  ADD PRIMARY KEY (`IdSange`),
  ADD KEY `FKxtcsalkk17p1g2qhn3c9rbw3` (`IdDonator`);

--
-- Indexes for table `datesangecentre`
--
ALTER TABLE `datesangecentre`
  ADD PRIMARY KEY (`idDatesangeCentre`),
  ADD KEY `FKcm9ylxghrt7fqn0k9mnirweak` (`idSange`),
  ADD KEY `FKqsbru9p5nb5fl5l05o8lclvyd` (`idCentru`);

--
-- Indexes for table `donatori`
--
ALTER TABLE `donatori`
  ADD PRIMARY KEY (`IdDonatori`);

--
-- Indexes for table `observatii`
--
ALTER TABLE `observatii`
  ADD PRIMARY KEY (`IdObservatie`),
  ADD KEY `FK21wxlt74x8v5t45d76px3ycwj` (`IdSange`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`IdPersonal`),
  ADD KEY `FK895qumikmc66o3fab0hmm17hv` (`IdCentre`);

--
-- Indexes for table `programari`
--
ALTER TABLE `programari`
  ADD PRIMARY KEY (`IdProgramri`),
  ADD KEY `FKhd4ovx6s4hn09qq2xyyfq74ke` (`iddonatori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chestionare`
--
ALTER TABLE `chestionare`
  MODIFY `idChestionare` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `datesange`
--
ALTER TABLE `datesange`
  MODIFY `IdSange` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `datesangecentre`
--
ALTER TABLE `datesangecentre`
  MODIFY `idDatesangeCentre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donatori`
--
ALTER TABLE `donatori`
  MODIFY `IdDonatori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `observatii`
--
ALTER TABLE `observatii`
  MODIFY `IdObservatie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `IdPersonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
