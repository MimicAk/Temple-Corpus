-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 02:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `temple_corpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `temples`
--

CREATE TABLE `temples` (
  `temple_id` int(11) NOT NULL,
  `temple_name` varchar(100) NOT NULL,
  `deity_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image_url` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `OpeningHours` varchar(255) NOT NULL,
  `related_festival` text NOT NULL,
  `ways_to_book` text NOT NULL,
  `websites` text NOT NULL,
  `phone_official_site` varchar(100) NOT NULL,
  `email_official_site` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temples`
--

INSERT INTO `temples` (`temple_id`, `temple_name`, `deity_name`, `description`, `image_url`, `location`, `latitude`, `longitude`, `OpeningHours`, `related_festival`, `ways_to_book`, `websites`, `phone_official_site`, `email_official_site`) VALUES
(1, 'Thirupullabhoothangudi Temple', 'Vishnu', 'Thirupullabhoothangudi Temple is a Hindu temple dedicated to Vishnu located in Pullabhoothangudi near Kumbakonam in the South Indian state of Tamil Nadu. Constructed in South Indian Style of Architecture, the temple is glorified in the Nalayira Divya Prabandham, the early medieval Tamil canon of the Alvar saints from the 6th–9th centuries CE. It is counted as one among the 108 Divya Desams dedicated to Vishnu. Vishnu is worshiped as Valvil Ramar and his consort Lakshmi as Sita.[1][2]\r\nThe temple has a small shrine with Vimanam and five-tier rajagopuram. The temple was built by Medieval Cholas with additions from later kings. The temple is located in Pulla Bhoothangudi, a small village, 8 km away from Kumbakonam and 3 km from Swamimalai.  The temple tank is located north of the temple.\r\nKolavalli Ramar is believed to have appeared for Sita and the temple is believed to be the place where Rama performed the last rites of the eagle king Jatayu. The temple has six daily rituals at various times from 7:30 a.m. to 8 p.m., and four yearly festivals on its calendar. Vaikuntha Ekadashi celebrated during the Tamil month of Margali (December–January) is the major festival celebrated in the temple.\r\n', '//upload.wikimedia.org/wikipedia/commons/thumb/7/78/Pullabhoothangudi_%2812%29.jpg/220px-Pullabhoothangudi_%2812%29.jpg\r\n\r\n//upload.wikimedia.org/wikipedia/commons/thumb/f/f6/India_Tamil_Nadu_location_map.svg/240px-India_Tamil_Nadu_location_map.svg.png', 'X8C3+MGC, Pullaboothangudi, Koonancheri, Tamil Nadu 612301', 10.977766, 79.302402, 'Sunday, 6 am–12 pm, 4–9 pm\n\nMonday, 6 am–12 pm, 4–9 pm\n\nTuesday, 6 am–12 pm, 4–9 pm\n\nWednesday, 6 am–12 pm, 4–9 pm\n\nThursday, 6 am–12 pm, 4–9 pm\n\nFriday, 6 am–12 pm, 4–9 pm\n\nSaturday, 6 am–12 pm, 4–9 pm', 'Sri Rama Navami, Vaikunda Ekadasi', '', ':  https://www.templepurohit.com/hindu-temple/sri-valvil-ramar-perumal-templetamil-nadu/', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `temple_audio`
--

CREATE TABLE `temple_audio` (
  `id` int(11) NOT NULL,
  `temple_id` int(11) DEFAULT NULL,
  `audio_url` varchar(250) DEFAULT NULL,
  `added_on` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temple_images`
--

CREATE TABLE `temple_images` (
  `id` int(11) NOT NULL,
  `temple_id` int(11) DEFAULT NULL,
  `img_url` varchar(250) NOT NULL,
  `img_alt` varchar(250) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temple_images`
--

INSERT INTO `temple_images` (`id`, `temple_id`, `img_url`, `img_alt`, `added_on`) VALUES
(1, 1, '//upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Kumbakonam_all.jpg/160px-Kumbakonam_all.jpg', 'TEMPLE IMAGE THUM', '2023-12-17 18:01:26'),
(2, 1, 'https://lh5.googleusercontent.com/p/AF1QipMJovRisMP6tFIYdNNHe1M6kGsSo3XZCadewpQl=w408-h466-k-no', 'Google Image Temple', '2023-12-17 18:02:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `temples`
--
ALTER TABLE `temples`
  ADD PRIMARY KEY (`temple_id`);

--
-- Indexes for table `temple_audio`
--
ALTER TABLE `temple_audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temple_images`
--
ALTER TABLE `temple_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `temples`
--
ALTER TABLE `temples`
  MODIFY `temple_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temple_audio`
--
ALTER TABLE `temple_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temple_images`
--
ALTER TABLE `temple_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
