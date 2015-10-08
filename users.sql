-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2015 at 05:51 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `FirstName` char(30) NOT NULL,
  `LastName` char(30) NOT NULL,
  `Email` char(30) DEFAULT NULL,
  `CPhone` mediumtext,
  `Address` varchar(70) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` char(10) DEFAULT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `MType` char(10) NOT NULL,
  `UId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`UId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`FirstName`, `LastName`, `Email`, `CPhone`, `Address`, `Age`, `Gender`, `UserName`, `Password`, `MType`, `UId`) VALUES
('Asif', 'Newaz', 'asif@gmail.com', '0198564578', 'Housing.', 20, 'male', 'asif', 'asif', 'ordinary', 26),
('Royal', 'Das', 'royal@gmail.com', '01759896245', 'Maijdee', 19, 'male', 'royal', 'royal', 'free', 27),
('G M Nazmul', 'Hossain', 'somratcste@gmail.com', '01823387518', 'NSTU.', 21, 'male', 'somrat', 'somrat', 'premium', 28),
('Md', 'Halim', 'halim@gmail.com', '01956274355', 'NSTU', 20, 'male', 'halim', '1d75dcced380911afbad', 'premium', 29),
('Royal', 'Das', 'royal@gmail.com', '01785965255', 'NSTU.', 20, 'male', 'royal', 'royal', 'free', 32);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
