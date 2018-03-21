-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2017 at 05:28 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveller`
--

-- --------------------------------------------------------

--
-- Table structure for table `geocities`
--

CREATE TABLE `geocities` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geocities`
--

INSERT INTO `geocities` (`id`, `name`) VALUES
(1, 'Kabul'),
(2, 'Tirana'),
(3, 'Algiers'),
(4, 'Andorra la Vella'),
(5, 'Luanda'),
(6, 'Saint Johns'),
(7, 'Buenos Aires'),
(8, 'Yerevan'),
(9, 'Canberra'),
(10, 'Vienna'),
(11, 'Baku'),
(12, 'Nassau'),
(13, 'Manama'),
(14, 'Dhaka'),
(15, 'Bridgetown'),
(16, 'Minsk'),
(17, 'Brussels'),
(18, 'Belmopan'),
(19, 'Porto-Novo'),
(20, 'Thimphu'),
(21, 'Sucre'),
(22, 'La Paz'),
(23, 'Sarajevo'),
(24, 'Gaborone'),
(25, 'Brasilia'),
(26, 'Bandar Seri Begawan'),
(27, 'Sofia'),
(28, 'Ouagadougou'),
(29, 'Bujumbura'),
(30, 'Praia'),
(31, 'Phnom Penh'),
(32, 'Yaounde'),
(33, 'Ottawa'),
(34, 'Bangui'),
(35, 'N Djamena'),
(36, 'Santiago'),
(37, 'Beijing'),
(38, 'Bogotá'),
(39, 'Moroni'),
(40, 'Kinshasa'),
(41, 'Brazzaville'),
(42, 'San Jose'),
(43, 'Yamoussoukro'),
(44, 'Zagreb'),
(45, 'Havana'),
(46, 'Quito'),
(47, 'Cairo'),
(48, 'San Salvador'),
(49, 'Malabo'),
(50, 'Oyala'),
(51, 'Asmara'),
(52, 'Tallinn'),
(53, 'Addis Ababa'),
(54, 'Libreville'),
(55, 'Banjul'),
(56, 'Tbilisi'),
(57, 'Berlin'),
(58, 'Accra'),
(59, 'Athens'),
(60, 'Saint George'),
(61, 'Guatemala'),
(62, 'Conakry'),
(63, 'Reykjavik'),
(64, 'New Delhi'),
(65, 'Jakarta'),
(66, 'Tehran'),
(67, 'Baghdad'),
(68, 'Dublin'),
(69, 'Jerusalem'),
(70, 'Rome'),
(71, 'Vientiane'),
(72, 'Riga'),
(73, 'Beirut'),
(74, 'Maseru'),
(75, 'Monrovia'),
(76, 'Tripoli'),
(77, 'Vaduz'),
(78, 'Vilnius'),
(79, 'Luxembourg');

-- --------------------------------------------------------

--
-- Table structure for table `geocontinents`
--

CREATE TABLE `geocontinents` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geocontinents`
--

INSERT INTO `geocontinents` (`id`, `name`) VALUES
(1, 'Africa'),
(3, 'Antarctica'),
(4, 'Asia'),
(5, 'Australia'),
(6, 'Europe'),
(7, 'North America'),
(8, 'South America');

-- --------------------------------------------------------

--
-- Table structure for table `geocountries`
--

CREATE TABLE `geocountries` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geocountries`
--

INSERT INTO `geocountries` (`id`, `name`) VALUES
(1, 'India'),
(2, 'Indonesia'),
(3, 'Iran'),
(4, 'Iraq'),
(5, 'Qatar'),
(6, 'Russian Federation'),
(7, 'Saudi Arabia'),
(8, 'Singapore'),
(9, 'Sri Lanka'),
(10, 'Syria'),
(11, 'Tajikistan'),
(12, 'Thailand'),
(13, 'Turkey'),
(14, 'Albania'),
(15, 'Andorra'),
(16, 'Armenia'),
(17, 'Austria'),
(18, 'Azerbaijan'),
(19, 'Belarus'),
(20, 'Belgium'),
(21, 'Bosnia and Herzegovina'),
(22, 'Bulgaria'),
(23, 'Croatia'),
(24, 'Cyprus'),
(25, 'Czech Republic'),
(26, 'Denmark'),
(27, 'Estonia'),
(28, 'Haiti'),
(29, 'Honduras'),
(30, 'Jamaica'),
(31, 'Mexico'),
(32, 'Nicaragua'),
(33, 'United States'),
(34, 'Bolivia'),
(35, 'Brazil'),
(36, 'Chile'),
(37, 'Colombia'),
(38, 'Ecuador'),
(39, 'Guyana'),
(40, 'Paraguay'),
(41, 'Peru'),
(42, 'Egypt'),
(43, 'Equatorial Guinea'),
(44, 'Eritrea'),
(45, 'Ethiopia'),
(46, 'Gabon'),
(47, 'Gambia'),
(48, 'Ghana'),
(49, 'Guinea'),
(50, 'Guinea-Bissau'),
(51, 'Ivory Coast'),
(52, 'Kenya'),
(53, 'Lesotho'),
(54, 'Liberia'),
(55, 'Libya'),
(56, 'Madagascar');

-- --------------------------------------------------------

--
-- Table structure for table `travelimagedetails`
--

CREATE TABLE `travelimagedetails` (
  `id` int(10) NOT NULL,
  `countryid` int(10) NOT NULL,
  `cityid` int(10) NOT NULL,
  `imageid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travelimagedetails`
--

INSERT INTO `travelimagedetails` (`id`, `countryid`, `cityid`, `imageid`) VALUES
(1, 13, 29, 1),
(2, 17, 22, 2),
(3, 6, 3, 3),
(4, 51, 30, 4),
(5, 8, 7, 5),
(6, 26, 37, 6),
(7, 2, 69, 7),
(8, 6, 21, 8),
(9, 39, 54, 9),
(10, 56, 33, 10),
(11, 28, 48, 11),
(12, 2, 18, 12),
(13, 20, 51, 13),
(14, 29, 9, 14),
(15, 52, 27, 15),
(16, 53, 69, 16),
(17, 39, 21, 17),
(18, 50, 48, 18),
(19, 49, 69, 19),
(20, 10, 11, 20),
(21, 51, 51, 21),
(22, 32, 2, 22),
(23, 7, 16, 23),
(24, 22, 7, 24),
(25, 39, 32, 25),
(26, 11, 8, 26),
(27, 11, 70, 27),
(28, 28, 55, 28),
(29, 54, 19, 29),
(30, 46, 67, 30),
(31, 33, 35, 31),
(32, 20, 2, 32),
(33, 50, 68, 33),
(34, 22, 73, 34),
(35, 50, 7, 35),
(36, 34, 19, 36),
(37, 9, 25, 37),
(38, 15, 65, 38),
(39, 12, 17, 39),
(40, 2, 11, 40),
(41, 1, 31, 41),
(42, 53, 55, 42),
(43, 33, 72, 43),
(44, 43, 30, 44),
(45, 37, 35, 45),
(46, 5, 53, 46),
(47, 12, 38, 47),
(48, 14, 70, 48),
(49, 55, 76, 49),
(50, 9, 20, 50),
(51, 41, 9, 51),
(52, 32, 31, 52),
(53, 9, 63, 53),
(54, 21, 57, 54),
(55, 9, 64, 55),
(56, 53, 73, 56),
(57, 48, 70, 57),
(58, 29, 40, 58),
(59, 9, 59, 59),
(60, 26, 25, 60),
(61, 37, 74, 61),
(62, 53, 47, 62),
(63, 4, 39, 63),
(64, 5, 49, 64),
(65, 55, 15, 65),
(66, 51, 37, 66),
(67, 4, 70, 67),
(68, 5, 44, 68),
(69, 7, 42, 69),
(70, 49, 69, 70),
(71, 34, 9, 71),
(72, 33, 63, 72),
(73, 3, 33, 73),
(74, 8, 28, 74),
(75, 51, 5, 75),
(76, 31, 73, 76),
(77, 20, 36, 77),
(78, 29, 23, 78),
(79, 52, 29, 79),
(80, 33, 8, 80),
(81, 9, 71, 81);

-- --------------------------------------------------------

--
-- Table structure for table `travelimages`
--

CREATE TABLE `travelimages` (
  `id` int(10) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travelimages`
--

INSERT INTO `travelimages` (`id`, `location`) VALUES
(1, 'images/travel/square/222222.jpg'),
(2, 'images/travel/square/222223.jpg'),
(3, 'images/travel/square/5855174537.jpg'),
(4, 'images/travel/square/5855191275.jpg'),
(5, 'images/travel/square/5855209453.jpg'),
(6, 'images/travel/square/5855213165.jpg'),
(7, 'images/travel/square/5855221959.jpg'),
(8, 'images/travel/square/5855729828.jpg'),
(9, 'images/travel/square/5855735700.jpg'),
(10, 'images/travel/square/5855752464.jpg'),
(11, 'images/travel/square/5855774224.jpg'),
(12, 'images/travel/square/5856616479.jpg'),
(13, 'images/travel/square/5856654945.jpg'),
(14, 'images/travel/square/5856658791.jpg'),
(15, 'images/travel/square/5856697109.jpg'),
(16, 'images/travel/square/5857298322.jpg'),
(17, 'images/travel/square/5857398054.jpg'),
(18, 'images/travel/square/6114850721.jpg'),
(19, 'images/travel/square/6114859969.jpg'),
(20, 'images/travel/square/6114867983.jpg'),
(21, 'images/travel/square/6114881215.jpg'),
(22, 'images/travel/square/6114904363.jpg'),
(23, 'images/travel/square/6114907897.jpg'),
(24, 'images/travel/square/6114960821.jpg'),
(25, 'images/travel/square/6115548152.jpg'),
(26, 'images/travel/square/6115603234.jpg'),
(27, 'images/travel/square/6119127716.jpg'),
(28, 'images/travel/square/6119130918.jpg'),
(29, 'images/travel/square/6119143988.jpg'),
(30, 'images/travel/square/6592294487.jpg'),
(31, 'images/travel/square/6592317633.jpg'),
(32, 'images/travel/square/6592902825.jpg'),
(33, 'images/travel/square/6592914823.jpg'),
(34, 'images/travel/square/6596046267.jpg'),
(35, 'images/travel/square/6596048341.jpg'),
(36, 'images/travel/square/8152016381.jpg'),
(37, 'images/travel/square/8152020963.jpg'),
(38, 'images/travel/square/8152043422.jpg'),
(39, 'images/travel/square/8152045688.jpg'),
(40, 'images/travel/square/8152045872.jpg'),
(41, 'images/travel/square/8152048712.jpg'),
(42, 'images/travel/square/8645912379.jpg'),
(43, 'images/travel/square/8646991554.jpg'),
(44, 'images/travel/square/8710247776.jpg'),
(45, 'images/travel/square/8710289254.jpg'),
(46, 'images/travel/square/8710320515.jpg'),
(47, 'images/travel/square/8710513053.jpg'),
(48, 'images/travel/square/8711623884.jpg'),
(49, 'images/travel/square/8711645510.jpg'),
(50, 'images/travel/square/8730408907.jpg'),
(51, 'images/travel/square/8731523536.jpg'),
(52, 'images/travel/square/8731526170.jpg'),
(53, 'images/travel/square/9493997865.jpg'),
(54, 'images/travel/square/9494282329.jpg'),
(55, 'images/travel/square/9494464567.jpg'),
(56, 'images/travel/square/9494470337.jpg'),
(57, 'images/travel/square/9494472443.jpg'),
(58, 'images/travel/square/9494475161.jpg'),
(59, 'images/travel/square/9495571869.jpg'),
(60, 'images/travel/square/9495574327.jpg'),
(61, 'images/travel/square/9496560520.jpg'),
(62, 'images/travel/square/9496787858.jpg'),
(63, 'images/travel/square/9496792166.jpg'),
(64, 'images/travel/square/9496799098.jpg'),
(65, 'images/travel/square/9498358806.jpg'),
(66, 'images/travel/square/9498368556.jpg'),
(67, 'images/travel/square/9498381010.jpg'),
(68, 'images/travel/square/9498386718.jpg'),
(69, 'images/travel/square/9498388516.jpg'),
(70, 'images/travel/square/9502740177.jpg'),
(71, 'images/travel/square/9502741759.jpg'),
(72, 'images/travel/square/9504445110.jpg'),
(73, 'images/travel/square/9504448540.jpg'),
(74, 'images/travel/square/9504449928.jpg'),
(75, 'images/travel/square/9504451722.jpg'),
(76, 'images/travel/square/9504606628.jpg'),
(77, 'images/travel/square/9504609042.jpg'),
(78, 'images/travel/square/9504613978.jpg'),
(79, 'images/travel/square/9505536014.jpg'),
(80, 'images/travel/square/9505893300.jpg'),
(81, 'images/travel/square/9505897492.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `geocities`
--
ALTER TABLE `geocities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geocontinents`
--
ALTER TABLE `geocontinents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geocountries`
--
ALTER TABLE `geocountries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travelimagedetails`
--
ALTER TABLE `travelimagedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travelimages`
--
ALTER TABLE `travelimages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `geocities`
--
ALTER TABLE `geocities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `geocontinents`
--
ALTER TABLE `geocontinents`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `geocountries`
--
ALTER TABLE `geocountries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `travelimagedetails`
--
ALTER TABLE `travelimagedetails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `travelimages`
--
ALTER TABLE `travelimages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
