-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 03, 2021 at 12:12 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CHATBOX_HIMANSHU`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
('HimanshuKumar', 'Himanshu kumar', '534fc3dc50b1573791f6e96d62f18e0280ab4367');

-- --------------------------------------------------------

--
-- Table structure for table `box`
--

DROP TABLE IF EXISTS `box`;
CREATE TABLE IF NOT EXISTS `box` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `box`
--

INSERT INTO `box` (`id`, `sender`, `msg`, `date`) VALUES
(12, 'Johny', 'Hello', '03-May-2021'),
(13, 'Johny', 'Anyone copy?', '03-May-2021'),
(14, 'Chris', 'Yes', '03-May-2021');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender`, `receiver`, `msg`, `date`) VALUES
(27, 'chris@gmail.comm', 'johncena@gmail.com', 'Hello John. How are you?', '03-May-2021'),
(28, 'johncena@gmail.com', 'chris@gmail.comm', 'I am fine.', '03-May-2021');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `nick` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nick` (`nick`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nick`, `dob`, `email`, `contact`, `password`, `date`) VALUES
(7, 'Chris Gardener', 'Chris', '16/01/1978', 'chris@gmail.comm', '9890098900', '8cb2237d0679ca88db6464eac60da96345513964', '03-May-2021'),
(8, 'John Cena', 'Johny', '25/12/1980', 'johncena@gmail.com', '9898989898', '8cb2237d0679ca88db6464eac60da96345513964', '03-May-2021');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
