-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 03:28 PM
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
(1, 'Thirupullabhoothangudi Temple', 'Vishnu', 'Thirupullabhoothangudi Temple is a Hindu temple dedicated to Vishnu located in Pullabhoothangudi near Kumbakonam in the South Indian state of Tamil Nadu. Constructed in South Indian Style of Architecture, the temple is glorified in the Nalayira Divya Prabandham, the early medieval Tamil canon of the Alvar saints from the 6th–9th centuries CE. It is counted as one among the 108 Divya Desams dedicated to Vishnu. Vishnu is worshiped as Valvil Ramar and his consort Lakshmi as Sita.[1][2]\r\nThe temple has a small shrine with Vimanam and five-tier rajagopuram. The temple was built by Medieval Cholas with additions from later kings. The temple is located in Pulla Bhoothangudi, a small village, 8 km away from Kumbakonam and 3 km from Swamimalai.  The temple tank is located north of the temple.\r\nKolavalli Ramar is believed to have appeared for Sita and the temple is believed to be the place where Rama performed the last rites of the eagle king Jatayu. The temple has six daily rituals at various times from 7:30 a.m. to 8 p.m., and four yearly festivals on its calendar. Vaikuntha Ekadashi celebrated during the Tamil month of Margali (December–January) is the major festival celebrated in the temple.\r\n', '//upload.wikimedia.org/wikipedia/commons/thumb/7/78/Pullabhoothangudi_%2812%29.jpg/220px-Pullabhoothangudi_%2812%29.jpg\r\n\r\n//upload.wikimedia.org/wikipedia/commons/thumb/f/f6/India_Tamil_Nadu_location_map.svg/240px-India_Tamil_Nadu_location_map.svg.png', 'X8C3+MGC, Pullaboothangudi, Koonancheri, Tamil Nadu 612301', 10.977766, 79.302402, 'Sunday, 6 am–12 pm, 4–9 pm\n\nMonday, 6 am–12 pm, 4–9 pm\n\nTuesday, 6 am–12 pm, 4–9 pm\n\nWednesday, 6 am–12 pm, 4–9 pm\n\nThursday, 6 am–12 pm, 4–9 pm\n\nFriday, 6 am–12 pm, 4–9 pm\n\nSaturday, 6 am–12 pm, 4–9 pm', 'Sri Rama Navami, Vaikunda Ekadasi', '', ':  https://www.templepurohit.com/hindu-temple/sri-valvil-ramar-perumal-templetamil-nadu/', '', ''),
(2, 'SRI AANDU ALAKKUM AYAN PERUMAL TEMPLE', 'Vishnu', 'Andalkumayan Perumal Temple is a Hindu temple dedicated to\r\nLord Vishnu located in Aadanoor, Tamil Nadu, India. It is one of the\r\n\"Divya Desams\", the 108 temples of Vishnu revered by the 12 poet\r\nsaints, or Alwars. It is located in Olaipadi, a small village, 7 km away from\r\nKumbakonam and 2 km from Swamimalai. Sri Aandu Alakkum Ayan Perumal temple is\r\nalso known as Bhargava Kshetram. The lord who is suppose to be the Paramaathma,\r\nresides (Urayum) on all of the hearts, which is considered as the place of stay\r\nof him. He is seeing all the activities of Jeevaathma by going in depth to call\r\nto cell. As the seva of this God, he holds of the leaf (Oolai Chuvadi) and a\r\nwriting instrument, he calculates the good and bad activities of all the\r\nJeevathmaas and based on the activities, he is ruling the Jeevathmaas. Because\r\nof this reason this Emperumal is called as \'Aandu Alakkum Ayan\', as he keeps\r\nMarakkal, measuring instrument which is used as the measuring tool for\r\nmeasuring the good and bad activities. His right hand is the hand which serves\r\nall the necessary things needed for the world (Padi alakkum Kai(hand)) and left\r\nhand for writing.\r\nLocation TamilNadu, Thanjavur, Chennai\r\nThere are many legends associated with Andalkumayan Perumal    \r\nTemple. \r\n', 'https://www.pilgrimaide.com/image/cache/catalog/Blogs/Sri%20Aandu%20Alakkum%20Ayan%20Perumal%20Temple,%20Thiru%20Aadhanoor-1060x400w.jpg\r\n\r\nhttps://www.pilgrimaide.com/image/cache/catalog/01%20Dec%202022%20onwards/new%20pooja%20samgri/gomutr-250x250.png ', 'X8G7+H9G, Adhanur, Narasingapuram, Tamil Nadu 612301', 10.976623, 79.313437, 'Sunday, 8 am–12 pm, 4:30–8 pm\r\nMonday, 8 am–12 pm, 4:30–8 pm\r\nTuesday, 8 am–12 pm, 4:30–8 pm\r\nWednesday, 8 am–12 pm, 4:30–8 pm\r\nThursday, 8 am–12 pm, 4:30–8 pm\r\nFriday, 8 am–12 pm, 4:30–8 pm\r\nSaturday, 8 am–12 pm, 4:30–8 pm', '', '', '', '04352441165\r\n\r\n', ''),
(3, 'SRI KOLA VALVILLI RAMAR PERUMAL TEMPLE', 'Vishnu', 'Kolavalvil Ramar Temple is a Hindu temple dedicated to Vishnu located 19 km away from Kumbakonam, Tamil Nadu, India on the Kumbakonam-Chennai highway in the South Indian state of Tamil Nadu. Constructed in the Dravidian style of architecture, the temple is glorified in the Nalayira Divya Prabandham, the early medieval Tamil canon of the Alvar saints from the 6th–9th centuries CE. It is one of the 108 Divya Desams dedicated to Vishnu, who is worshipped as Kola Valvill Ramar and his consort Lakshmi as Maragathavalli.\r\nThe temple is believed to have been built by the Medieval Cholas, with later expansions from Vijayanagara kings. A granite wall surrounds the temple, enclosing all the shrines and two bodies of water. There is a four-tiered rajagopuram, the temple\'s gateway tower, in the temple.\r\nKola Vallvil Ramar is believed to have appeared to sage Markendeya. Six daily rituals and three yearly festivals are held at the temple. The temple is maintained and administered by the Hindu Religious and Endowment Board of the Government of Tamil Nadu.\r\n', '//upload.wikimedia.org/wikipedia/commons/thumb/2/29/Velliyangudi_temple.jpg/220px-Velliyangudi_temple.jpg', '3C4V+M6M, Thiruvalliangudi, Tamil Nadu 612504', 11.056748, 79.443055, 'Sunday, 8:30 am–12:30 pm, 5–7:30 pm\nMonday, 8:30 am–12:30 pm, 5–7:30 pm\nTuesday, 8:30 am–12:30 pm, 5–7:30 pm\nWednesday, 8:30 am–12:30 pm, 5–7:30 pm\nThursday, 8:30 am–12:30 pm, 5–7:30 pm\nFriday, 8:30 am–12:30 pm, 5–7:30 pm\nSaturday, 8:30 am–12:30 pm,', '', '', 'https://en.wikipedia.org/wiki/Kola_Valvill_Ramar_Temple,_Tiruvelliyangudi\r\n\r\n', '', '');

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
(2, 1, 'https://lh5.googleusercontent.com/p/AF1QipMJovRisMP6tFIYdNNHe1M6kGsSo3XZCadewpQl=w408-h466-k-no', 'Google Image Temple', '2023-12-17 18:02:15'),
(3, 2, 'https://www.google.com/maps/place/Sri+Aandu+Alakkum+Ayyan+Perumal+Temple+-+Divya+Desam+11/@10.9764332,79.313449,3a,75y/data=!3m8!1e2!3m6!1sAF1QipNzItkyYnT-CCGrrrd2EOqpbEOh6jJLNLidEeZw!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNzIt', 'google photo', '2023-12-17 19:45:48'),
(4, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fprtraveller.blogspot.com%2F2010%2F04%2Fathanur-divya-desam.html&psig=AOvVaw06S2Zi_3_ZrIrnW8KYSXIM&ust=1702908921192000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCICHpqDUloMDFQAAAAAdAAAAABAD', '', '2023-12-17 19:45:48'),
(5, 3, '//upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Thiruvelliyangudi_%281%29.jpg/250px-Thiruvelliyangudi_%281%29.jpg', 'Temple image', '2023-12-17 19:57:17'),
(6, 3, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftntemplesproject.in%2F2018%2F12%2F25%2Fkolavilli-ramar-tiruvelliyangudi-thanjavur%2F&psig=AOvVaw0guM8yHLRLTW7RHAnU28QI&ust=1702909533536000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMDq9-rWl', '', '2023-12-17 19:57:17');

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
  MODIFY `temple_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temple_audio`
--
ALTER TABLE `temple_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temple_images`
--
ALTER TABLE `temple_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
