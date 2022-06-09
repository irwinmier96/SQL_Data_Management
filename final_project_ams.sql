-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 11:08 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project_ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `boats`
--

CREATE TABLE `boats` (
  `ModelNumber` float NOT NULL,
  `SeatCount` int(11) DEFAULT NULL CHECK (`SeatCount` <= 10),
  `CaptainID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boats`
--

INSERT INTO `boats` (`ModelNumber`, `SeatCount`, `CaptainID`) VALUES
(120, 7, 1),
(130, 8, 3),
(140, 7, 2),
(160, 7, 5),
(210, 6, 4),
(220, 8, 6),
(280, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `canaltour`
--

CREATE TABLE `canaltour` (
  `CanalTourID` int(11) NOT NULL,
  `ModelNumber` float DEFAULT NULL,
  `GuestID` int(11) DEFAULT NULL,
  `TourLengthMinutes` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `canaltour`
--

INSERT INTO `canaltour` (`CanalTourID`, `ModelNumber`, `GuestID`, `TourLengthMinutes`) VALUES
(1, 120, 17, 70),
(2, 140, 46, 80),
(3, 120, 12, 70),
(4, 140, 40, 80),
(5, 280, 5, 65),
(6, 210, 3, 70),
(7, 140, 2, 80),
(8, 130, 6, 90),
(9, 280, 50, 80),
(10, 140, 60, 75),
(11, 120, 38, 80),
(12, 280, 1, 70),
(13, 280, 9, 80),
(14, 210, 4, 80),
(15, 130, 7, 90),
(16, 140, 8, 80),
(19, 140, 57, 70),
(20, 210, 43, 80);

-- --------------------------------------------------------

--
-- Table structure for table `captain`
--

CREATE TABLE `captain` (
  `CaptainID` int(11) NOT NULL,
  `CaptainName` varchar(300) DEFAULT NULL,
  `PrimaryCanal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `captain`
--

INSERT INTO `captain` (`CaptainID`, `CaptainName`, `PrimaryCanal`) VALUES
(1, 'Rob Jetten', 'Prinsengracht'),
(2, 'Jesse Klaver', 'Keizersgracht'),
(3, 'Alexander Pechtold', 'Herengracht'),
(4, 'André Rouvoet', 'Prinsengracht'),
(5, 'Camiel Eurlings', 'Herengracht'),
(6, 'Bas Eickhout', 'Keizersgracht'),
(7, 'Bas van der Vlies', 'Prinsengracht');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `GuestID` int(11) NOT NULL,
  `GuestLanguage` varchar(100) NOT NULL,
  `CountryOfOrigin` varchar(100) DEFAULT NULL,
  `VaccinatedStatus` varchar(100) DEFAULT NULL,
  `Party_Size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`GuestID`, `GuestLanguage`, `CountryOfOrigin`, `VaccinatedStatus`, `Party_Size`) VALUES
(1, 'English', 'United Kingdom', 'Vaccinated', 2),
(2, 'English', 'Canada', 'Vaccinated', 1),
(3, 'English', 'United States', 'Vaccinated', 3),
(4, 'English', 'United Kingdom', 'Partially Vaccinated Negative Test', 2),
(5, 'English', 'United States', 'Vaccinated', 1),
(6, 'English', 'United Kingdom', 'Vaccinated', 1),
(7, 'French', 'France', 'Vaccinated', 4),
(8, 'French', 'France', 'Vaccinated', 1),
(9, 'French', 'Switzerland', 'Vaccinated', 3),
(10, 'German', 'Germany', 'Vaccinated', 4),
(11, 'Dutch', 'The Netherlands', 'Partially Vaccinated Negative Test', 1),
(12, 'Dutch', 'The Netherlands', 'Vaccinated', 3),
(13, 'German', 'Germany', 'Vaccinated', 2),
(14, 'German', 'Belgium', 'Partially Vaccinated Negative Test', 1),
(15, 'Polish', 'Poland', 'Vaccinated', 2),
(16, 'German', 'Germany', 'Vaccinated', 1),
(17, 'Dutch', 'Belgium', 'Partially Vaccinated Negative Test', 1),
(18, 'Italian', 'Italy', 'Vaccinated', 3),
(19, 'German', 'Germany', 'Vaccinated', 1),
(20, 'Dutch', 'Belgium', 'Vaccinated', 1),
(21, 'Italian', 'Italy', 'Vaccinated', 2),
(22, 'German', 'Switzerland', 'Vaccinated', 1),
(23, 'Turkish', 'Turkey', 'Vaccinated', 3),
(24, 'Italian', 'Italy', 'Vaccinated', 1),
(25, 'Spanish', 'Spain', 'Vaccinated', 1),
(26, 'Mandarin', 'China', 'Vaccinated', 2),
(27, 'Cantonese', 'China', 'Vaccinated', 3),
(28, 'Japanese', 'Japan', 'Vaccinated', 3),
(29, 'Korean', 'South Korea', 'Vaccinated', 2),
(30, 'Cantonese', 'China', 'Vaccinated', 3),
(31, 'Japanese', 'Japan', 'Vaccinated', 2),
(32, 'Korean', 'South Korea', 'Vaccinated', 2),
(33, 'Tamil', 'India', 'Vaccinated', 1),
(34, 'Vietnamese', 'Vietnam', 'Vaccinated', 2),
(35, 'Urdu', 'Pakistan', 'Vaccinated', 3),
(36, 'Hindi', 'India', 'Vaccinated', 4),
(37, 'Indonesian', 'Indonesia', 'Vaccinated', 2),
(38, 'Indonesian', 'Indonesia', 'Vaccinated', 3),
(39, 'Thai', 'Thailand', 'Vaccinated', 4),
(40, 'Spanish', 'Spain', 'Vaccinated', 3),
(41, 'Spanish', 'Spain', 'Vaccinated', 5),
(42, 'Spanish', 'Mexico', 'Vaccinated', 4),
(43, 'Spanish', 'Peru', 'Vaccinated', 3),
(44, 'Spanish', 'Spain', 'Vaccinated', 5),
(45, 'Spanish', 'Mexico', 'Vaccinated', 4),
(46, 'Spanish', 'Spain', 'Vaccinated', 3),
(47, 'Portuguese', 'Portugal', 'Vaccinated', 5),
(48, 'Portuguese', 'Portugal', 'Vaccinated', 4),
(49, 'Greek', 'Greece', 'Vaccinated', 1),
(50, 'Filipino', 'The Philippines', 'Vaccinated', 4),
(51, 'Malaysian', 'Malaysia', 'Vaccinated', 4),
(54, 'Khmer', 'Cambodia', 'Vaccinated', 2),
(55, 'Filipino', 'The Philippines', 'Vaccinated', 4),
(56, 'Mandarin', 'Taiwan', 'Vaccinated', 4),
(57, 'Vietnamese', 'Vietnam', 'Vaccinated', 2),
(58, 'Japanese', 'Japan', 'Vaccinated', 4),
(59, 'Mandarin', 'Taiwan', 'Vaccinated', 4),
(60, 'Telugu', 'India', 'Vaccinated', 3),
(61, 'Persian', 'Iran', 'Vaccinated', 4),
(62, 'Arabic', 'Kuwait', 'Vaccinated', 2),
(63, 'Arabic', 'Morocco', 'Vaccinated', 2),
(64, 'Arabic', 'Lebanon', 'Vaccinated', 1),
(65, 'Arabic', 'UAE', 'Vaccinated', 3),
(66, 'Arabic', 'Qatar', 'Vaccinated', 3),
(67, 'Turkish', 'Turkey', 'Vaccinated', 3),
(68, 'Dutch', 'Suriname', 'Vaccinated', 3),
(69, 'English', 'Australia', 'Vaccinated', 3),
(70, 'English', 'Australia', 'Vaccinated', 3),
(71, 'English', 'New Zealand', 'Vaccinated', 2),
(72, 'Spanish', 'Mexico', 'Vaccinated', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rijksmuseumtour`
--

CREATE TABLE `rijksmuseumtour` (
  `TourID` int(11) NOT NULL,
  `MuseumTourLengthMinutes` float DEFAULT NULL,
  `GuestID` int(11) DEFAULT NULL,
  `TourGuideID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rijksmuseumtour`
--

INSERT INTO `rijksmuseumtour` (`TourID`, `MuseumTourLengthMinutes`, `GuestID`, `TourGuideID`) VALUES
(1, 65, 47, 4),
(2, 65, 8, 2),
(3, 68, 46, 1),
(4, 75, 6, 3),
(5, 65, 70, 2),
(6, 65, 58, 1),
(7, 65, 19, 4),
(8, 65, 31, 2),
(9, 65, 26, 3),
(10, 65, 51, 2),
(13, 65, 5, 3),
(14, 65, 3, 1),
(15, 65, 12, 2),
(16, 70, 1, 1),
(17, 65, 2, 4),
(18, 75, 7, 4),
(19, 65, 4, 1),
(20, 75, 9, 1),
(51, 75, 30, 4),
(52, 70, 22, 3),
(53, 75, 20, 3),
(54, 65, 21, 3),
(55, 70, 23, 1),
(56, 80, 24, 1),
(57, 80, 25, 2),
(58, 85, 32, 2),
(59, 85, 27, 2),
(60, 75, 28, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rijksmuseumtourguide`
--

CREATE TABLE `rijksmuseumtourguide` (
  `TourGuideID` int(11) NOT NULL,
  `HostName` varchar(300) DEFAULT NULL,
  `MuseumRole` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rijksmuseumtourguide`
--

INSERT INTO `rijksmuseumtourguide` (`TourGuideID`, `HostName`, `MuseumRole`) VALUES
(1, 'Jeroen ter Brugge', 'Curator of History'),
(2, 'Gijs van der Ham', 'Curator of 17th Century Dutch Paintings and Pottery'),
(3, 'Valika Smeulders', 'Head of Department of History'),
(4, 'Daniel Horst', 'Curator of History');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `RoomID` int(11) NOT NULL,
  `RoomType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`RoomID`, `RoomType`) VALUES
(1, 'Standard'),
(2, 'Standard'),
(3, 'Standard'),
(4, 'Standard'),
(5, 'Standard'),
(6, 'Standard'),
(7, 'Standard'),
(8, 'Standard'),
(9, 'Standard'),
(10, 'Standard'),
(11, 'Deluxe'),
(12, 'Deluxe'),
(13, 'Standard'),
(14, 'Standard'),
(15, 'Standard'),
(16, 'Suite'),
(17, 'Penthouse'),
(18, 'Standard'),
(19, 'Standard'),
(20, 'Standard'),
(21, 'Deluxe'),
(22, 'Penthouse'),
(23, 'Standard'),
(24, 'Standard'),
(25, 'Standard'),
(26, 'Suite'),
(27, 'Deluxe'),
(28, 'Standard'),
(29, 'Standard'),
(30, 'Standard'),
(31, 'Deluxe'),
(32, 'Suite'),
(33, 'Standard'),
(34, 'Standard'),
(35, 'Standard'),
(36, 'Suite'),
(37, 'Deluxe'),
(38, 'Standard'),
(39, 'Suite'),
(40, 'Standard'),
(41, 'Deluxe'),
(42, 'Suite'),
(43, 'Standard'),
(44, 'Standard'),
(45, 'Standard'),
(46, 'Suite'),
(47, 'Deluxe'),
(48, 'Standard'),
(49, 'Suite'),
(50, 'Standard'),
(51, 'Deluxe'),
(52, 'Suite'),
(53, 'Standard'),
(54, 'Standard'),
(55, 'Standard'),
(56, 'Suite'),
(57, 'Deluxe'),
(58, 'Standard'),
(59, 'Suite'),
(60, 'Standard'),
(61, 'Deluxe'),
(62, 'Suite'),
(63, 'Standard'),
(64, 'Standard'),
(65, 'Standard'),
(66, 'Deluxe'),
(67, 'Deluxe'),
(68, 'Standard'),
(69, 'Suite'),
(70, 'Standard');

-- --------------------------------------------------------

--
-- Table structure for table `roomservice`
--

CREATE TABLE `roomservice` (
  `RoomServiceType` varchar(100) NOT NULL,
  `Price` float DEFAULT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `Availability` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomservice`
--

INSERT INTO `roomservice` (`RoomServiceType`, `Price`, `Description`, `Availability`) VALUES
('Breakfast', 70, 'a choice of coffee, tea, orange juice, with (3) viennoiseries, omelettes, fresh fruit, confitures, and smoked meats', 'Daily 06.00 - 10.30'),
('Dessert Bar', 50, 'Assortment of (4) pastries, (3) flavors of ice cream, and miscellaneous fruit. Comes with a sweet beverage', '24 hours'),
('Dinner', 80, 'four-course dinner option, menu is adjustable, will come up to room, seasonal menu', 'Daily from 17.00 until 23.00'),
('Drinks', 40, 'bottle service offering (1) glass of our wine selection, and (2) soft drinks', '24 hours');

-- --------------------------------------------------------

--
-- Table structure for table `roomservicerequest`
--

CREATE TABLE `roomservicerequest` (
  `RoomServOrderID` int(11) NOT NULL,
  `StayID` int(11) DEFAULT NULL,
  `RoomServiceType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomservicerequest`
--

INSERT INTO `roomservicerequest` (`RoomServOrderID`, `StayID`, `RoomServiceType`) VALUES
(1, 20, 'Breakfast'),
(2, 17, 'Drinks'),
(3, 10, 'Dessert Bar'),
(4, 1, 'Dinner'),
(5, 10, 'Drinks'),
(6, 5, 'Dinner'),
(7, 16, 'Breakfast'),
(8, 18, 'Dessert Bar'),
(9, 4, 'Dinner'),
(10, 12, 'Dinner'),
(11, 7, 'Breakfast'),
(12, 10, 'Dinner'),
(13, 16, 'Dessert Bar'),
(14, 14, 'Breakfast'),
(15, 17, 'Breakfast'),
(16, 14, 'Dessert Bar'),
(17, 19, 'Dinner'),
(18, 5, 'Drinks'),
(19, 6, 'Dessert Bar'),
(20, 18, 'Dinner'),
(21, 2, 'Dessert Bar'),
(22, 3, 'Dessert Bar'),
(23, 4, 'Dessert Bar'),
(24, 5, 'Dessert Bar'),
(30, 28, 'Breakfast'),
(31, 29, 'Breakfast'),
(32, 30, 'Breakfast');

-- --------------------------------------------------------

--
-- Table structure for table `stay`
--

CREATE TABLE `stay` (
  `StayID` int(11) NOT NULL,
  `GuestID` int(11) DEFAULT NULL,
  `RoomID` int(11) DEFAULT NULL,
  `LengthOfStay` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stay`
--

INSERT INTO `stay` (`StayID`, `GuestID`, `RoomID`, `LengthOfStay`) VALUES
(1, 1, 1, '2 nights'),
(2, 2, 2, '3 nights'),
(3, 3, 3, '2 nights'),
(4, 4, 4, '3 nights'),
(5, 5, 5, '3 nights'),
(6, 6, 6, '8 nights'),
(7, 7, 7, '4 nights'),
(8, 8, 8, '5 nights'),
(9, 54, 51, '4 nights'),
(10, 67, 63, '1 Week'),
(11, 19, 12, '5 nights'),
(12, 36, 34, '4 nights'),
(13, 17, 17, '1 week'),
(14, 42, 69, '4 nights'),
(16, 48, 37, '5 nights'),
(17, 25, 52, '3 nights'),
(18, 22, 38, '5 nights'),
(19, 57, 14, '3 nights'),
(20, 24, 39, '5 nights'),
(25, 28, 56, '4 nights'),
(26, 31, 27, '3 nights'),
(27, 40, 11, '3 nights'),
(28, 41, 59, '4 nights'),
(29, 44, 28, '4 nights'),
(30, 46, 32, '3 nights');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`ModelNumber`),
  ADD UNIQUE KEY `CaptainID` (`CaptainID`);

--
-- Indexes for table `canaltour`
--
ALTER TABLE `canaltour`
  ADD PRIMARY KEY (`CanalTourID`),
  ADD UNIQUE KEY `GuestID` (`GuestID`),
  ADD KEY `ModelNumber` (`ModelNumber`);

--
-- Indexes for table `captain`
--
ALTER TABLE `captain`
  ADD PRIMARY KEY (`CaptainID`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`GuestID`);

--
-- Indexes for table `rijksmuseumtour`
--
ALTER TABLE `rijksmuseumtour`
  ADD PRIMARY KEY (`TourID`),
  ADD UNIQUE KEY `GuestID` (`GuestID`),
  ADD KEY `TourGuideID` (`TourGuideID`);

--
-- Indexes for table `rijksmuseumtourguide`
--
ALTER TABLE `rijksmuseumtourguide`
  ADD PRIMARY KEY (`TourGuideID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`RoomID`);

--
-- Indexes for table `roomservice`
--
ALTER TABLE `roomservice`
  ADD PRIMARY KEY (`RoomServiceType`);

--
-- Indexes for table `roomservicerequest`
--
ALTER TABLE `roomservicerequest`
  ADD PRIMARY KEY (`RoomServOrderID`),
  ADD KEY `StayID` (`StayID`),
  ADD KEY `RoomServiceType` (`RoomServiceType`);

--
-- Indexes for table `stay`
--
ALTER TABLE `stay`
  ADD PRIMARY KEY (`StayID`),
  ADD UNIQUE KEY `guest_room` (`GuestID`,`RoomID`),
  ADD UNIQUE KEY `GuestID` (`GuestID`),
  ADD UNIQUE KEY `GuestID_2` (`GuestID`),
  ADD UNIQUE KEY `RoomID` (`RoomID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `canaltour`
--
ALTER TABLE `canaltour`
  MODIFY `CanalTourID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `captain`
--
ALTER TABLE `captain`
  MODIFY `CaptainID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `GuestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `rijksmuseumtour`
--
ALTER TABLE `rijksmuseumtour`
  MODIFY `TourID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `rijksmuseumtourguide`
--
ALTER TABLE `rijksmuseumtourguide`
  MODIFY `TourGuideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `RoomID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `stay`
--
ALTER TABLE `stay`
  MODIFY `StayID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boats`
--
ALTER TABLE `boats`
  ADD CONSTRAINT `boats_ibfk_1` FOREIGN KEY (`CaptainID`) REFERENCES `captain` (`CaptainID`);

--
-- Constraints for table `canaltour`
--
ALTER TABLE `canaltour`
  ADD CONSTRAINT `canaltour_ibfk_1` FOREIGN KEY (`ModelNumber`) REFERENCES `boats` (`ModelNumber`),
  ADD CONSTRAINT `canaltour_ibfk_2` FOREIGN KEY (`GuestID`) REFERENCES `guests` (`GuestID`);

--
-- Constraints for table `rijksmuseumtour`
--
ALTER TABLE `rijksmuseumtour`
  ADD CONSTRAINT `rijksmuseumtour_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `guests` (`GuestID`),
  ADD CONSTRAINT `rijksmuseumtour_ibfk_2` FOREIGN KEY (`TourGuideID`) REFERENCES `rijksmuseumtourguide` (`TourGuideID`);

--
-- Constraints for table `roomservicerequest`
--
ALTER TABLE `roomservicerequest`
  ADD CONSTRAINT `roomservicerequest_ibfk_1` FOREIGN KEY (`StayID`) REFERENCES `stay` (`StayID`),
  ADD CONSTRAINT `roomservicerequest_ibfk_2` FOREIGN KEY (`RoomServiceType`) REFERENCES `roomservice` (`RoomServiceType`);

--
-- Constraints for table `stay`
--
ALTER TABLE `stay`
  ADD CONSTRAINT `stay_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `guests` (`GuestID`),
  ADD CONSTRAINT `stay_ibfk_2` FOREIGN KEY (`RoomID`) REFERENCES `rooms` (`RoomID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
