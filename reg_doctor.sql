-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 03:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paf`
--

-- --------------------------------------------------------

--
-- Table structure for table `reg_doctor`
--

CREATE TABLE `reg_doctor` (
  `Rdoctor_ID` int(5) NOT NULL,
  `Rdoctor_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Rdoctor_address` varchar(40) CHARACTER SET latin1 NOT NULL,
  `Rdoctor_specilaization` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Rdoctor_email` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_doctor`
--

INSERT INTO `reg_doctor` (`Rdoctor_ID`, `Rdoctor_name`, `Rdoctor_address`, `Rdoctor_specilaization`, `Rdoctor_email`) VALUES
(7, 'RoshanSilva', 'no123 Nugegoda', 'VOG', 'rosh@gmail.com'),
(8, 'Githma Harshana', 'Et gardens Malabe', 'ENT', 'githma@gmail.com'),
(12, 'Adeepa Akalanka', 'Rathmalana', 'VOG', 'adee@gmail.com'),
(13, 'Nimal Silva', 'Malabe', 'ENT', 'nimal2@gmail.com'),
(14, 'Rohitha ', 'Kandy', 'ENT', 'rohitha@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reg_doctor`
--
ALTER TABLE `reg_doctor`
  ADD PRIMARY KEY (`Rdoctor_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reg_doctor`
--
ALTER TABLE `reg_doctor`
  MODIFY `Rdoctor_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
