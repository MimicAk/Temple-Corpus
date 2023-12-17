-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 03:53 PM
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
(3, 'SRI KOLA VALVILLI RAMAR PERUMAL TEMPLE', 'Vishnu', 'Kolavalvil Ramar Temple is a Hindu temple dedicated to Vishnu located 19 km away from Kumbakonam, Tamil Nadu, India on the Kumbakonam-Chennai highway in the South Indian state of Tamil Nadu. Constructed in the Dravidian style of architecture, the temple is glorified in the Nalayira Divya Prabandham, the early medieval Tamil canon of the Alvar saints from the 6th–9th centuries CE. It is one of the 108 Divya Desams dedicated to Vishnu, who is worshipped as Kola Valvill Ramar and his consort Lakshmi as Maragathavalli.\r\nThe temple is believed to have been built by the Medieval Cholas, with later expansions from Vijayanagara kings. A granite wall surrounds the temple, enclosing all the shrines and two bodies of water. There is a four-tiered rajagopuram, the temple\'s gateway tower, in the temple.\r\nKola Vallvil Ramar is believed to have appeared to sage Markendeya. Six daily rituals and three yearly festivals are held at the temple. The temple is maintained and administered by the Hindu Religious and Endowment Board of the Government of Tamil Nadu.\r\n', '//upload.wikimedia.org/wikipedia/commons/thumb/2/29/Velliyangudi_temple.jpg/220px-Velliyangudi_temple.jpg', '3C4V+M6M, Thiruvalliangudi, Tamil Nadu 612504', 11.056748, 79.443055, 'Sunday, 8:30 am–12:30 pm, 5–7:30 pm\nMonday, 8:30 am–12:30 pm, 5–7:30 pm\nTuesday, 8:30 am–12:30 pm, 5–7:30 pm\nWednesday, 8:30 am–12:30 pm, 5–7:30 pm\nThursday, 8:30 am–12:30 pm, 5–7:30 pm\nFriday, 8:30 am–12:30 pm, 5–7:30 pm\nSaturday, 8:30 am–12:30 pm,', '', '', 'https://en.wikipedia.org/wiki/Kola_Valvill_Ramar_Temple,_Tiruvelliyangudi\r\n\r\n', '', ''),
(4, 'SRI SARANGAPANI TEMPLE\r\n', 'Vishnu', 'The Sarangapani Temple is a Hindu temple dedicated to Vishnu, located in Kumbakonam, Tamil Nadu, India.\r\nIt is one of the Divya Desams, the 108 temples of Vishnu revered in Nalayira Divya Prabandham by the 12 poet saints, or Alvars.[1]  This temple is along Kaveri and is one of the Pancharanga Kshetrams.[2]\r\nThe temple is one of the Pancha Kshethram where the goddess Lakshmi was born as Bhargavi- the daughter of Maharishi Bhrigu. The other four temples of the Pancha Kshethram are Sundararaja Perumal Temple, Salem, Oppiliappan temple, Nachiyar Koil and Venkateswara Temple, Tirumala.\r\nThe temple is believed to be of significant antiquity with contributions at different times from Medieval Cholas, Vijayanagara Empire and Madurai Nayaks. The temple is enshrined within a huge granite wall and the complex contains all the shrines and the water bodies of the temple. The rajagopuram (the main gateway) has eleven tiers and has a height of 173 ft (53 m). The Potramarai tank, the temple tank, is located opposite to the western entrance of the temple.\r\nSarangapani is believed to have appeared for sage Hemarishi. The temple has six daily rituals at various times from 5:30 a.m. to 9 p.m., and twelve yearly festivals on its calendar. The temple chariot festival is the most prominent festival of the temple, celebrated during the Tamil month of Chittirai (March–April). The twin temple chariots are the third-largest in Tamil Nadu, each weighing 300 t (660,000 lb).\r\nAs per Hindu legend, the Vaishnava deity, Sarangapani, an incarnation of the Hindu god Vishnu, appeared for a sage Hemarishi, who performed penance in the bank of Potramarai tank.[3] Once, sage Bhrigu wanted to meet Vishnu at his residence, the Ocean of Milk. The sage did not get the attention of Vishnu and in his anger, he kicked Vishnu on his chest. Lakshmi, who resides in Vishnu\'s chest, got angered as Vishnu did not show his anger towards the sage. She left Vaikuntha and reached earth and took the form of Padmavati. Vishnu followed her and married her. Padmavati got her memories and was still angry with Vishnu. To avoid her anger, Vishnu resided in the underground chamber in the temple as Pathala Srinivasa. In the meanwhile, the sage Bhrigu sought his apology and requested Lakshmi to be born to him as Komalavalli in his next birth. The sage was born as Hemarishi and performed penance to attain Lakshmi as his daughter.[4] Vishnu was pleased by the penance and he wished the sage to get Lakshmi as his daughter. Lakshmi emerged from the Potramarai tank among thousand lotuses and was thus named Komalavalli (the one who emerged from lotus). Vishnu descended to earth as Aravamudhan in a chariot drawn by horses and elephants from his abode Vaikuntha.[5] He stayed in the nearby Someswaran Temple to convince Lakshmi to marry him and the couple eventually got married.[6] The name Sarangapani (\"one who has the bow in his hand\") derives from the Sanskrit word Sharanga, the bow of Vishnu, and pani meaning hand.[7]\r\nThe Mahasamprokshanam also known as kumbhabhishekam of the temple was held on 13 July 2015. A large number of devotees took part in the Mahasamprokshanam.[8]\r\nThe temple is maintained and administered by the Hindu Religious and Charitable Endowments Department of the Government of Tamil Nadu.[9]\r\nSarangapani is the largest Vishnu temple in Kumbakonam and has the tallest temple tower in the town.  The temple is enshrined within a huge wall and the complex enshrines all the water bodies of the temple except the Potramarai tank. The rajagopuram (the main gateway) has eleven tiers and has a height of 173 ft (53 m). There are five other smaller gopurams in the temple. The rajagopuram has figures depicting various religious stories. The temple faces east and the Potramarai tank is located outside the western entrance. The central shrine of the temple is in the form of a chariot drawn by horses and elephants, with openings on either side, showing the descent of Sarangapani from heaven in the chariot.[3]  Similar architecture of halls (Mandapas) simulating a chariot drawn by elephant or horses is found in Mela Kadambur Amirthakadeswarar Temple, Sikharagiriswara Temple, Kudumiyamalai, Nageswaraswamy Temple, Kumbakonam, Vriddhagiriswarar Temple, Vriddhachalam and Thyagaraja Temple, Tiruvarur.[10] There is a sculptural representation of the sage Hemarishi in the western part of the temple.[11] The central shrine, the sanctum is approached via a 100-pillared hall. The inner sanctum in the form of a chariot is guarded by Dwaraplakas facing the outer entrance. From the outer entrance, there is a perforated window axial to the sanctum.[4] The central shrine of the temple houses the image of Sarangapani in pallikonda posture, with his head resting on his right hand. There are other images of sage Hemarishi, Lakshmi and  festival images enshrined within the sanctum. There are two stepped entrances to the sanctum named as Utharayana Vaasal and Dhakshanayana Vaasal, each open for a six-month period. From 15 January to 15 July, Utharayanya Vaasal is opened while Dhakshanaya Vaasal is opened during the other half of the year. The Potramarai tank has a central hall called Hemarishi Mandapam.[6][12] The temple has two processional chariots carved out of wood stationed outside the rajagopuram.[12] It is classified as Karakkoil, a temple fashioned after temple chariots which are taken in procession around the temple during festivals.[13] The shrine of Komalavalli Thayar is located in the northern part of the temple in a shrine parallel to the sanctum.[14]\r\nIn Bharatanatyam, a South Indian dance form, 108 karanas form the basic movements. Some of these karanas are sculpted around the walls of the temple. Similar sculptures are found in the Brihadeeswarar Temple in Thanjavur and Nataraja Temple in Chidambaram.[15]\r\nSarangapani temple is considered third in the line of Srirangam and Tirupathi temples.[7] The temple is revered in Divya Prabandham, the 7th–9th century Vaishnava canon, by Andal in one, Periyalvar in three, Bhuthath Alvar in two, Tirumalisai Alvar in seven, Peialvar in two, Nammalvar in eleven and Thirumangai Alvar in 25 verses. The temple is classified as a divyadesam, the 108 Vishnu temples that are revered in the Vaishnava canon. As per a Hindu legend, Nathamuni, who compiled Divya Prabandham by the twelve alvars, found only the first ten verses sung on Aravamudhan. Nammalvar recited the remaining 3990 verses unconsciously while he was in deep meditation and Nathamuni compiled all of them.[6][16]\r\nThe temple is counted as one of the temples built on the banks of River Kaveri.[17] Pancharanga Kshetrams (also called Pancharangams, meaning the \"five Rangams or Ranganathas\") is a group of five sacred Hindu temples, dedicated to Ranganatha, a form of the god Vishnu, on the banks of the Kaveri River. The five Pancharanga Kshetrams in the order of their successive locations, on the banks of the Kaveri River are: The Srirangapatnam called the Adi Ranga, the first temple on the banks of the Kaveri River from the upstream side; the Srirangam (island in Tiruchirappalli) in Tamil Nadu known as Adya Ranga (the last temple), Appalarangam or Koviladi at Tiurppernagar in Tamil Nadu, Parimala Ranganatha Perumal Temple or Mayuram at Indalur, Mayiladuthurai and Vatarangam at Sirkazhi. The Sarangapani temple at Kumbakonam is mentioned in place of Vatarangam in some references.[2][18][19]\r\nFive Vishnu temples are connected with Mahamaham festival which happens once in 12 years in Kumbakonam - Sarangapani Temple, Chakrapani Temple, Ramaswamy Temple, Rajagopalaswamy Temple, and Varahaperumal Temple.[20]\r\nThe temple follows Pancharatra Agama and Vadakalai tradition.[7] The temple priests perform the puja (rituals) during festivals and on a daily basis. Like other Vishnu temples of Tamil Nadu, the priests belong to the Brahmin Vaishnavite sect, which is dedicated to Vishnu. The temple rituals are performed six times a day; Tiruvanandal at 8:00 a.m., Kala santhi at 9:00 a.m., Uchikalam at 12:30 p.m., Ntiyanusandhanam at 6:00 p.m., Irandamkalam at 7:30 p.m. and Ardha Jamam at 9:00 p.m.[21] Each ritual comprises three steps: alangaram (decoration), neivethanam (food offering) and deepa aradanai (waving of lamps) for both Sarangapani and Thayar. The food offering during the six times are curd rice, Ven pongal, spiced rice, dosa, Ven pongal and sugar pongal respectively.[21] The worship is held amidst music with nadhaswaram (pipe instrument) and tavil (percussion instrument), religious instructions in the Vedas (sacred text) read by priests and prostration by worshippers in front of the temple mast. There are weekly, fortnightly and monthly rituals.\r\nAkshaya Tritiyai - 12 Garuda Sevai Chaitra Brahma Utsavam celebrated during the Tamil month of Chittirai (April - May), Vasantotsavam during Vaikasi (May - June), Pavitrotsavam - Ekadasi Jyeshotsavam during Adi(July - August), Sri Jayanthi - Uriyadi Utsavam during Avani (August - September), Navaratri Utsavam - Saraswathi Puja - Vijayadasami during Purattasi (September - October), Deepavali - Shraddha of Sri Lakshmi Narayanaswami during Aippasi (October - November), Deepa Utsavam - Unjal Utsavam during Karthigai (November - December), Pakal Pattu - Ira Pattu Pongal Sankaramana Utsavam during Margazhi (December - January), Kanu Utsavam - Amavasya - Ratha Saptami during Thai (January - February), Masi Magaham - Float Festival during Masi (February - March) and Brahmmotsavam - Tirukkalyanotsavam during Panguni (March - April) are the festivals celebrated in the temple.[22]\r\nFive Vishnu temples are connected with Mahamaham festival which happens once in 12 years in Kumbakonam. They are Sarangapani Temple, Chakrapani Temple, Ramaswamy Temple, Rajagopalaswamy Temple and Varahaperumal Temple. This temple, one among them, is situated in the north of Big Street.[20]\r\nAs per a temple legend, once a staunch Brahmin devotee of Aravamudhan spent most of his life to the service of the deity. At the end of his life, he felt his loneliness and prayed for his karma to be performed. Aravamudhan descended himself to perform the last rites on a Deepavali day. The ritual is performed annually by the priests and is one of its kind where death rituals are performed in the precincts of a Vishnu temple.[6]\r\nThe temple is called Ubaya Pradhana Kshetram as the mulavar (presiding deity) and utsavar (festive deity) enjoy the same importance. As per legend, Tirumalisai Alvar was singing praise of Aravamudan and he requested him to raise up from his reclining position. Aramudan started raising to gargantuan proportion forcing Thirumalisai Alvar to request him to recline again. The idol stopped midway and the current posture, Uthana Sayi was established. It is believed that the presiding deity asked Nathamuni to compile the four thousand verses of Nalayira Divya Prabandham at this place.[23]\r\nThe twin temple chariots weigh 300 t (660,000 lb) each and has been renovated in 2007. The chariots were not drawn for some years during the preceding period. The chariots are next only in size to the ones in Thygaraja temple in Thiruvarur and Andal Temple in Srivilliputhur. The chariots are pulled by hundreds of devotees across the streets around the temple twice a year, once during the Brahmotsavam during April–May and other during Ratha saptami in January–February. The festival idols of Sarangapani and Kamalvalli are brought to the thermutti (chariot station) after elaborate religious rituals.[24]\r\nThirumangai Alvar\'s Tiruvelukkutrirukkai, a single verse in 46 lines, when seen in numerical order, makes the image of a temple chariot. The painting depicting the verse in the chariot form is seen in the temple. It is believed that the first temple chariot of the temple was instituted by Thirumangai Alvar himself.', '//upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Git_govind_large.jpg/220px-Git_govind_large.jpg', 'X95G+R4X, Taluk, Valayapettai Agraharam, Kumbakonam, Tamil Nadu 612001, 10.959959450031869, 79.3753525370057', 10.959959, 79.375353, 'Sunday, 7 am–12:30 pm, 4:30–9 pm Monday, 7 am–12:30 pm, 4:30–9 pm Tuesday, 7 am–12:30 pm, 4:30–9 pm Wednesday, 7 am–12:30 pm, 4:30–9 pm Thursday, 7 am–12:30 pm, 4:30–9 pm Friday, 7 am–12:30 pm, 4:30–9 pm Saturday, 7 am–12:30 pm, 4:30–9 pm', '', '', 'http://www.sarangapanitemple.org/\r\n\r\nhttp://www.sarangapanitemple.org/Temple%20History.html\r\n\r\nhttps://commons.wikimedia.org/wiki/Category:Sarangapani_Temple', '04352430349', '');

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
(6, 3, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftntemplesproject.in%2F2018%2F12%2F25%2Fkolavilli-ramar-tiruvelliyangudi-thanjavur%2F&psig=AOvVaw0guM8yHLRLTW7RHAnU28QI&ust=1702909533536000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMDq9-rWl', '', '2023-12-17 19:57:17'),
(9, 4, 'https://www.trawell.in/tamilnadu/kumbakonam/sarangapani-temple', 'Temple image online lord vishnu', '2023-12-17 20:11:41'),
(10, 4, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FSarangapani_Temple&psig=AOvVaw12cJ2ycuGWA0JutjODJ0Ak&ust=1702910413512000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMDhlIPaloMDFQAAAAAdAAAAABAM', 'Wikipedia', '2023-12-17 20:11:41');

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
  MODIFY `temple_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `temple_audio`
--
ALTER TABLE `temple_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temple_images`
--
ALTER TABLE `temple_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
