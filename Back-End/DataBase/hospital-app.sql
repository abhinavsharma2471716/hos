-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 11:02 PM
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
-- Database: `hospital-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `title` text NOT NULL,
  `story` text NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`title`, `story`, `id`) VALUES
('cool', 'look who is here', 1),
('cool', 'look who is here', 2),
('happiness', 'laughter of india wins', 3),
('happiness', 'laughter of india wins', 4),
('india', 'Above & Beyond conveys a sense of transcendentalism. This transcendentalism permeates the perception of space, design and conceptualisation of this edition of The India Story.  Above & Beyond rekindles the quest to redefine frontiers of vision, presenting elements of design and creativity that can usher in a realm of talent into the city, which will celebrate and honour the union of finest design minds from across the country.', 5),
('dhoni', 'jhguy huhu uyjhjh kk8m', 6);

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `Name` text NOT NULL,
  `Disease1` varchar(50) NOT NULL,
  `Disease2` text NOT NULL,
  `Disease3` text NOT NULL,
  `Treatment1` varchar(1000) NOT NULL DEFAULT '',
  `Treatment2` varchar(1000) NOT NULL,
  `Treatment3` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`Name`, `Disease1`, `Disease2`, `Disease3`, `Treatment1`, `Treatment2`, `Treatment3`) VALUES
('Stomach Ache', 'Stomach Ulcer', 'Stomach Flu', 'Food Poisoning', '', '', ''),
('Head Ache', 'Migrane', 'Sinusitis', 'Tension Headaches', '', '', ''),
('Cold', 'Hypothermia', 'Frostbite', 'Trench Foot', 'moving the person to a warm, dry place, if possible, or sheltering them from the elements\r\nremoving wet clothing, cutting items away if necessary\r\ncovering their whole body and head with blankets, leaving only the face clear\r\nputting the individual on a blanket to insulate them from the ground\r\nmonitoring breathing and carrying out CPR if breathing stops\r\nproviding skin-to-skin contact, if possible, by removing clothing and wrapping yourself and the individual in the blanket together to transfer heat\r\nproviding warm drinks, if the individual is conscious, but no alcohol or caffeine', 'Rewarming of the skin. If it hasn\'t been done already, your doctor will rewarm the area using a warm-water bath for 15 to 30 minutes. The skin may turn soft and look red or purple. You may be encouraged to gently move the affected area as it rewarms.\r\nOral pain medicine. Because the rewarming process can be painful, your doctor will likely give you a drug to ease the pain.\r\nProtecting the injury. Once your skin thaws, your doctor may loosely wrap the area with sterile sheets, towels or dressings to protect the skin. Or he or she may protect your fingers or toes as they thaw by gently separating them from each other. And you may need to elevate the affected area to reduce swelling.', 'Thoroughly clean and dry your feet.\r\nPut on clean, dry socks daily.\r\nTreat the affected part by applying warm packs or soaking in warm water (102° to 110° F) for approximately 5 minutes.\r\nWhen sleeping or resting, do not wear socks.\r\nObtain medical assistance as soon as possible.');

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
(11, 'jsisd', 'SRM07', 'VFHFVH', 'hvdfhuhdf', 'DFSDFGY', '2016-12-03'),
(12, 'jsisd', 'SRM07', 'VFHFVH', 'hvdfhuhdf', 'DFSDFGY', '2016-12-03'),
(13, 'jsisd', 'SRM07', 'VFHFVH', 'hvdfhuhdf', 'DFSDFGY', '2016-12-03'),
(14, 'raghu', 'SRM009', 'KOOOLJJJ', 'dhujio', 'hgiuiu', '2001-05-09'),
(15, 'raghu', 'SRM009', 'KOOOLJJJ', 'dhujio', 'hgiuiu', '2001-05-09'),
(16, 'joopli', 'SRM007', 'GFHHTFVJJ', 'loopliu', 'MIEDLER', '2001-02-09'),
(17, 'joopli', 'SRM007', 'GFHHTFVJJ', 'loopliu', 'MIEDLER', '2001-02-09'),
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
(14, 'hola', 'abc@abc.com', '$2b$10$vaIYpPHkIpyMsJdwZ9f82OYCAJrSMqvmPeP1fZcfLdVAcYHUmHRQK', 99, 1234567890, 'O+', 'No Address', 'none', 'Male');

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
(5, 'DivyanshuS', 'shekhar.divyans@gmail.com', 9952225426);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `haspitaltb`
--
ALTER TABLE `haspitaltb`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `table1`
--
ALTER TABLE `table1`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
