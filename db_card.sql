-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 08, 2019 at 04:52 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bio`
--

DROP TABLE IF EXISTS `tbl_bio`;
CREATE TABLE IF NOT EXISTS `tbl_bio` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `favID` tinyint(4) DEFAULT NULL,
  `bio` varchar(400) DEFAULT NULL,
  `achievements` varchar(60) DEFAULT NULL,
  `founded` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bio`
--

INSERT INTO `tbl_bio` (`ID`, `favID`, `bio`, `achievements`, `founded`) VALUES
(1, 1, 'Powerlifting is a sport where you are judged on your ability to complete three lifts within a certain number of rules. The lifts in question are the Barbell Back Squat, the Barbell Bench Press, and the Deadlift (Conventional or Sumo). I became attached when I started learning more about the sport and all of the different ways to train for it. I plan to do my first competition early next year', 'Squat: 300lbs, Bench: 225lbs, Deadlift: 405lbs', 'Brought to the Olympics in 1896'),
(2, 2, 'Sailing was a sport that my uncle did competitively so he invited me to try it for two weeks when I was 12. I loved the sport and continued to learn and progress through the various levels until I eventually became a coach myself. I now run the sailing school in Meaford as the Head Coach and help coach our up-and-coming race team.', 'CANSail 5 Level, Ontario Games Contenders, CANSail 3/4 Coach', 'The Age of Sail was 1571-1862'),
(3, 3, 'My parents were very much against guns and video games when I was little, but I first experienced Halo at a friend\'s house. I loved the story and the universe so much that I bought the Lego versions until I finally convinced my family to let me get the game (6 years later). Halo has become a staple in house parties and many of my friends and I play casually to stay in touch.', 'Halo 4 Championship Series Contender', 'Halo: Combat Evolved came out in 2001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card`
--

DROP TABLE IF EXISTS `tbl_card`;
CREATE TABLE IF NOT EXISTS `tbl_card` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) COLLATE utf8_bin NOT NULL,
  `CompanyName` varchar(30) COLLATE utf8_bin NOT NULL,
  `Address` varchar(150) COLLATE utf8_bin NOT NULL,
  `Logo` varchar(200) COLLATE utf8_bin NOT NULL,
  `URL` varchar(200) COLLATE utf8_bin NOT NULL,
  `SocialMedia` varchar(100) COLLATE utf8_bin NOT NULL,
  `StartDate` varchar(60) COLLATE utf8_bin NOT NULL,
  `avatar` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_card`
--

INSERT INTO `tbl_card` (`ID`, `Name`, `CompanyName`, `Address`, `Logo`, `URL`, `SocialMedia`, `StartDate`, `avatar`) VALUES
(1, 'Powerlifting', 'Canadian Powerlifting Union', '200 Dundas', 'http://powerlifting.ca/cpu/images/logo_onblue.png', 'http://www.powerlifting.ca/cpu/', 'Facebook, Instagram, YouTube', 'August 2018', 'powerlifting.jpg'),
(2, 'Sailing', 'Sail Georgian Bay', '200 Dundas', 'http://www.sailgeorgianbay.ca/uploads/4/4/5/8/44581475/published/sgb-logo_2.png?1561154199', 'http://www.sailgeorgianbay.ca/', 'Facebook, Instagram', 'June 2010', 'sailing.jpg'),
(3, 'Halo', '343 Industries', '200 Dundas', 'https://w.halocdn.com/content/Images/halo-logo-2x.png', 'https://www.fanshawec.ca', 'Facebook, Twitter, Instagram, YouTube, Mixer, Twitch, Discord', 'October 2006', 'halo.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
