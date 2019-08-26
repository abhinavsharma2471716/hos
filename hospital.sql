-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2019 at 11:31 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `email` text NOT NULL,
  `pasword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pasword`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `title` text NOT NULL,
  `story` text NOT NULL,
  `id` int(255) NOT NULL,
  `imgs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`title`, `story`, `id`, `imgs`) VALUES
('cool', 'Lorem ipsum sed nulla semper torquent turpis et adipiscing dictumst pharetra duis lorem neque, libero egestas ipsum odio vivamus pharetra ultricies vivamus maecenas quam fringilla congue taciti ullamcorper ornare dictum.', 1, 'https://www.logoground.com/uploads6/dv6y2019124112019-08-104803380Wolf.jpg'),
('happiness', 'Lorem ipsum sed nulla semper torquent turpis et adipiscing dictumst pharetra duis lorem neque, libero egestas ipsum odio vivamus pharetra ultricies vivamus maecenas quam fringilla congue taciti ullamcorper ornare dictum.', 2, 'https://evolllution.com/wp-content/uploads/2018/04/Carol-Fleming-April-5-2018-Sized.jpeg'),
('hail', 'Lorem ipsum sed nulla semper torquent turpis et adipiscing dictumst pharetra duis lorem neque, libero egestas ipsum odio vivamus pharetra ultricies vivamus maecenas quam fringilla congue taciti ullamcorper ornare dictum.', 14, 'https://thelatopteam.com/wp-content/uploads/2018/08/is-hail-damage-to-roof-covered-by-insurance.jpg'),
('loop', 'Lorem ipsum sed nulla semper torquent turpis et adipiscing dictumst pharetra duis lorem neque, libero egestas ipsum odio vivamus pharetra ultricies vivamus maecenas quam fringilla congue taciti ullamcorper ornare dictum.', 30, 'https://img3.stockfresh.com/files/i/ildi/m/19/1898072_stock-photo-colorful-cereal-loops-with-different-fruit-flavour.jpg'),
('last time', 'Lorem ipsum sed nulla semper torquent turpis et adipiscing dictumst pharetra duis lorem neque, libero egestas ipsum odio vivamus pharetra ultricies vivamus maecenas quam fringilla congue taciti ullamcorper ornare dictum.', 33, 'https://www.kidskintha.com/wp-content/uploads/2014/12/letting-go.jpg'),
('onion', 'Lorem ipsum sed nulla semper torquent turpis et adipiscing dictumst pharetra duis lorem neque, libero egestas ipsum odio vivamus pharetra ultricies vivamus maecenas quam fringilla congue taciti ullamcorper ornare dictum.', 40, 'https://img-aws.ehowcdn.com/600x600p/photos.demandstudios.com/getty/article/176/184/144442684_XS.jpg'),
('admin', 'Lorem ipsum sed nulla semper torquent turpis et adipiscing dictumst pharetra duis lorem neque, libero egestas ipsum odio vivamus pharetra ultricies vivamus maecenas quam fringilla congue taciti ullamcorper ornare dictum.', 41, 'https://img3.stockfresh.com/files/r/rastudio/m/63/9962324_stock-vector-system-administration-concept-vector-illustration.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comdiseases`
--

CREATE TABLE `comdiseases` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Symptoms` mediumtext NOT NULL,
  `Treatment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comdiseases`
--

INSERT INTO `comdiseases` (`Id`, `Name`, `Category`, `Image`, `Symptoms`, `Treatment`) VALUES
(1, 'Hypothermia', 'Cold', 'https://thetrekkinglife.com/images/stories/seguridad/hipotermia.png', 'Signs and symptoms of hypothermia include:\r\n\r\nShivering\r\nSlurred speech or mumbling\r\nSlow, shallow breathing\r\nWeak pulse\r\nClumsiness or lack of coordination\r\nDrowsiness or very low energy\r\nConfusion or memory loss\r\nLoss of consciousness\r\nBright red, cold skin (in infants)', 'The diagnosis of hypothermia is usually apparent based on a person\'s physical signs and the conditions in which the person with hypothermia became ill or was found. Blood tests also can help confirm hypothermia and its severity.'),
(2, 'Frosbite', 'Cold', 'http://addins.wvva.com/blogs/weather/wp-content/uploads/2010/11/frostbite.jpg', 'With frostbite, the skin gets very cold, then numb, hard and pale.', 'Minor frostbite can be treated at home with basic first-aid measures. For all other frostbite, after appropriate first aid and assessment for hypothermia, treatment may involve rewarming, medications, wound care, surgery and various therapies, depending on the severity of your injury. Rewarming of the skin.'),
(3, 'Food Poisoning', 'Stomach Ache', 'https://resize.hswstatic.com/w_907/gif/food-poisoning-1.jpg', 'Food poisoning symptoms may include cramping, nausea, vomiting or diarrhoea.', 'Most food poisoning is mild and resolves without treatment. Ensuring adequate hydration is the most important aspect of treatment.'),
(4, 'Stomach Ulcer', 'Stomach Ache', 'https://www.fairview.org/hlimg/krames/172311.jpg', 'Upper abdominal pain is a common symptom.', 'Treatment usually includes medication to decrease stomach acid production. If it is caused by bacteria, antibiotics may be required.');

-- --------------------------------------------------------

--
-- Table structure for table `comprobs`
--

CREATE TABLE `comprobs` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Img` varchar(150) NOT NULL,
  `Descript` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comprobs`
--

INSERT INTO `comprobs` (`Id`, `Name`, `Img`, `Descript`) VALUES
(1, 'Cold', 'https://harmanayurveda.files.wordpress.com/2013/10/cold1.jpg', 'Body temperature is high'),
(2, 'Stomach Ache', 'https://images-na.ssl-images-amazon.com/images/I/31-ztj0WKmL._SX425_.jpg', 'Did I eat something wrong');

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Disease1` varchar(30) NOT NULL,
  `Disease2` varchar(30) NOT NULL,
  `Disease3` varchar(30) NOT NULL,
  `Treatment1` varchar(1000) NOT NULL,
  `Treatment2` varchar(1000) NOT NULL,
  `Treatment3` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`Id`, `Name`, `Disease1`, `Disease2`, `Disease3`, `Treatment1`, `Treatment2`, `Treatment3`) VALUES
(1, 'Cold', 'Hypothermia', 'Frosbite', 'Trench Foot', '', '', ''),
(2, 'Head Ache', 'Migrane', 'Sinusitis', 'Tension Headaches', '', '', ''),
(3, 'Stomach Ache', 'Stomach Ulcer', 'Stomach Flu', 'Food Poisoning', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `haspitaltb`
--

CREATE TABLE `haspitaltb` (
  `id` int(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pid` text NOT NULL,
  `ppass` text NOT NULL,
  `dname` varchar(255) NOT NULL,
  `dpmed` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haspitaltb`
--

INSERT INTO `haspitaltb` (`id`, `pname`, `pid`, `ppass`, `dname`, `dpmed`, `date`) VALUES
(18, 'kallu', 'SRM009', 'kallu', 'lallu', 'kallu', '2005-05-06'),
(19, 'kallu', 'SRM009', 'kallu', 'lallu', 'kallu', '2005-05-06'),
(20, 'kallu', 'SRM0999', 'kallu', 'lallu', 'kallu', '2004-05-03'),
(21, 'kallu', 'SRM0999', 'kallu', 'lallu', 'kallu', '2004-05-03'),
(22, 'kallu', 'SRM02', 'sldjf', 'jlfl', 'jsdfss', '2001-02-02'),
(23, 'jdfg', 'SRM03', 'ddferf', 'klkf', 'jfdsjf', '2000-05-06'),
(24, 'jdfg', 'SRM03', 'ddferf', 'klkf', 'jfdsjf', '2000-05-06'),
(25, 'kljdf', 'SRM02', 'SDJFDDF', 'kjflkgjfdf', 'DSDFFD', '2000-02-02'),
(26, 'kallu', 'SRM0045', 'skdmsdk', 'lala', 'dmsfsdf', '2000-05-06'),
(27, 'kallu', 'SRM0045', 'skdmsdk', 'lala', 'dmsfsdf', '2000-05-06'),
(28, 'kalllp', 'SRM0045', 'skdmsdk', 'lala', 'dmsfsdf', '2000-05-06'),
(29, 'kalllp', 'SRM0045', 'skdmsdk', 'lala', 'dmsfsdf', '2000-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `ID` int(200) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `PASSWORD` varchar(200) NOT NULL,
  `AGE` int(11) NOT NULL,
  `CONTACT` int(200) UNSIGNED NOT NULL,
  `BLOOD` varchar(200) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL,
  `MEDICATION` varchar(200) NOT NULL,
  `GENDER` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`ID`, `NAME`, `EMAIL`, `PASSWORD`, `AGE`, `CONTACT`, `BLOOD`, `ADDRESS`, `MEDICATION`, `GENDER`) VALUES
(1, 'DivyanshuShekhar', 'shekhar.divyans@gmail.com', '$2b$10$Vhuo8DV9VQoAfZSSh79UX.HyAyYxgQ6u4kg2I57eFXJ7l0XHlKk76', 0, 4294967295, 'A+', 'Hindon Height 802', 'None', 'Male'),
(2, 'DivyanshShekha', 'shekhar.divyan@gmail.com', '$2b$10$0IXGGDiP3tPr13Vt.IZJCehidte.IJ0Nj6otVcNjUVInVvDmRgwP6', 23, 4294967295, 'A+', 'Hindon Height 802', 'Yes', 'Male'),
(3, 'aaaaaaa', 'navya@gmail.com', '$2b$10$F2rW6WLu4TZmC8QpfmZDROWLMIggOWfa5dfFG93DmhDaGYIGAkQ.y', 20, 4294967295, 'B', 'Hindon Height 802', 'none', 'male'),
(4, 'aaaaaaa', 'navya@gmail.com', '$2b$10$G57H24dhrAbQNJ29w5BpUugupJZnH2mjz0jXcyS9/s0G/mpglXaiS', 20, 4294967295, 'B', 'Hindon Height 802', 'none', 'male'),
(5, 'ITSKK', 'a@gmail.com', '$2b$10$t.Udztf5gdxnqAXU/tH4Se1iR5ZMPKEm/nUecJh7V2rUbTG4NeseS', 22, 4294967295, 'A+', 'Hindon Height 802', 'npne', 'Male'),
(14, 'hola', 'abc@abc.com', '$2b$10$vaIYpPHkIpyMsJdwZ9f82OYCAJrSMqvmPeP1fZcfLdVAcYHUmHRQK', 99, 1234567890, 'O+', 'No Address', 'none', 'Male'),
(15, 'katrina', 'katrina@salman.com', '$2b$10$aEZso3l1MbsmL430V1yWT.N7saneck4O.ExHzrVsKJNOnjTNXtzki', 56, 4294967295, 'A+', 'none', 'none', 'female'),
(16, 'katrina', 'katrina@salman.com', '$2b$10$4r/dcK9KWHudls6i6lRCbeCcmmB5Y7S3tuGtxw0gM.Aybl10QoMC2', 56, 4294967295, 'A+', 'none', 'none', 'female'),
(17, 'koo', 'koo@gmail.com', '$2b$10$0R5UdJ.MjuYfGu8UGVi6OOABPQ7vUe2z6YVmPFywdB2nULGgeFQqC', 8, 4294967295, 'a+', 'sdf', 'sdf', 'dfds'),
(18, 'koo', 'koo@gmail.com', '$2b$10$1JuBy8KFggfzZIRWtouPS.Afyf4GJaoUI0OCmM5RgGiSrr61NyA9a', 8, 4294967295, 'a+', 'sdf', 'sdf', 'dfds'),
(19, 'sns', 'aaa@gmail.com', '$2b$10$8ocrG0ZYq2OOtIfCVAwOt.V7QpE0oYgsLy0AJh7MWvT1Ofz9uNBiG', 20, 4294967295, '55', '55', 'sss', 'ff'),
(30, 'Arulyan', 'sass@sass.com', '$2b$10$HNd3PdWPAGzT/De6./OqW.dQT96A0KyDw8ghQnJ8ZR7I9UpS1zyPG', 19, 1234567890, 'O+', 'NO ADDRESS', 'None', 'Male'),
(31, 'Arulyan', 'sass@sass.com', '$2b$10$WGsnl7zK44G75gyaUcN0huL9cZcrvkPo8OEImYtrkDSQiIvw6ZsTi', 19, 1234567890, 'O+', 'NO ADDRESS', 'None', 'Male'),
(32, 'Arulyan', 'arulyanasokan@gmail.com', '$2b$10$LNqFg3ZFEzwquOyitdZaRu5fKjXxY.cZaHHnUGVXm6Nv6xlyhDMZ.', 19, 1234567890, 'O+', 'no address', 'None', 'Male'),
(33, 'Arulyan', 'arulyanasokan@gmail.com', '$2b$10$zn6Rc//qg3KlqW5L/uts7u5i6vVOw31bBsbeb4Jg4Fusgc/d2Ro/W', 19, 1234567890, 'O+', 'no address', 'None', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

CREATE TABLE `table2` (
  `ID` int(200) NOT NULL,
  `DCONAME` varchar(200) NOT NULL,
  `YOE` int(200) NOT NULL,
  `SPEC` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table2`
--

INSERT INTO `table2` (`ID`, `DCONAME`, `YOE`, `SPEC`) VALUES
(1, 'ANUJ KUMAR', 10, 'EYES'),
(2, 'ROHIT SHARMA', 15, 'HEART'),
(3, 'Sanjay Dutt', 11, 'EYES');

-- --------------------------------------------------------

--
-- Table structure for table `table3`
--

CREATE TABLE `table3` (
  `ID` int(200) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `YOE` int(200) NOT NULL,
  `SPEC` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table3`
--

INSERT INTO `table3` (`ID`, `NAME`, `YOE`, `SPEC`) VALUES
(1, 'Bhavya Shekhar', 2, 'Child Speacialist'),
(2, 'Mohit Kumar', 3, 'Child Specialist ');

-- --------------------------------------------------------

--
-- Table structure for table `table4`
--

CREATE TABLE `table4` (
  `ID` int(200) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `YOE` int(200) NOT NULL,
  `SPEC` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table4`
--

INSERT INTO `table4` (`ID`, `NAME`, `YOE`, `SPEC`) VALUES
(1, 'Honey Singh', 22, 'Skin'),
(2, 'Dynamo', 4, 'Skin');

-- --------------------------------------------------------

--
-- Table structure for table `table5`
--

CREATE TABLE `table5` (
  `ID` int(200) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `YOE` int(200) NOT NULL,
  `SPEC` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table5`
--

INSERT INTO `table5` (`ID`, `NAME`, `YOE`, `SPEC`) VALUES
(1, 'Navya Shekhar', 12, 'Eyes'),
(2, 'Ajay Sharma', 11, 'Eyes');

-- --------------------------------------------------------

--
-- Table structure for table `table6`
--

CREATE TABLE `table6` (
  `ID` int(200) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `YOE` int(200) NOT NULL,
  `SPEC` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table6`
--

INSERT INTO `table6` (`ID`, `NAME`, `YOE`, `SPEC`) VALUES
(1, 'MS Dhoni', 22, 'Heart'),
(2, 'Virat Kholi', 11, 'Heart');

-- --------------------------------------------------------

--
-- Table structure for table `table7`
--

CREATE TABLE `table7` (
  `ID` int(200) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `CONTACT` bigint(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table7`
--

INSERT INTO `table7` (`ID`, `NAME`, `EMAIL`, `CONTACT`) VALUES
(1, 'DivyanshuShekhar', 'shekhar.divyans@gmail.com', 9952225426),
(2, 'Hello', 'ak@kkk.ccc', 9952225426),
(3, 'Hello', 'ak@kkk.ccc', 9952225426),
(4, 'DivyanshuS', 'shekhar.divyans@gmail.com', 9952225426),
(5, 'DivyanshuS', 'shekhar.divyans@gmail.com', 9952225426),
(6, 'katrina', 'katrina@salman.com', 7894561233),
(7, 'kkaai', 'karun@gmail.com', 2256355635),
(8, 'kall', 'kall@gmail.com', 2356897458),
(9, 'kkaai', 'karun@gmail.com', 2256355635);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comdiseases`
--
ALTER TABLE `comdiseases`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `comprobs`
--
ALTER TABLE `comprobs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`Id`,`Name`);

--
-- Indexes for table `haspitaltb`
--
ALTER TABLE `haspitaltb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table2`
--
ALTER TABLE `table2`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table3`
--
ALTER TABLE `table3`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table4`
--
ALTER TABLE `table4`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table5`
--
ALTER TABLE `table5`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table6`
--
ALTER TABLE `table6`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table7`
--
ALTER TABLE `table7`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `comdiseases`
--
ALTER TABLE `comdiseases`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comprobs`
--
ALTER TABLE `comprobs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `haspitaltb`
--
ALTER TABLE `haspitaltb`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `table1`
--
ALTER TABLE `table1`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `table2`
--
ALTER TABLE `table2`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table3`
--
ALTER TABLE `table3`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table4`
--
ALTER TABLE `table4`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table5`
--
ALTER TABLE `table5`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table6`
--
ALTER TABLE `table6`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table7`
--
ALTER TABLE `table7`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
