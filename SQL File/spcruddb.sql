-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 08:09 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spcruddb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete` (`rid` INT(5))  BEGIN
delete from tblusers where id=rid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert` (`fname` VARCHAR(120), `lname` VARCHAR(120), `emailid` VARCHAR(150), `cntnumber` BIGINT(12), `address` VARCHAR(255))  BEGIN
insert into tblusers(FirstName,LastName,EmailId,ContactNumber,Address) value(fname,lname,emailid,cntnumber,address);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_read` ()  BEGIN
select * from tblusers;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_readarow` (IN `rid` INT(5))  BEGIN
select * from tblusers where id=rid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update` (`fname` VARCHAR(120), `lname` VARCHAR(120), `emailid` VARCHAR(150), `cntnumber` BIGINT(12), `address` VARCHAR(255), `rid` INT(5))  BEGIN
update tblusers set FirstName=fname,LastName=lname,EmailId=emailid,ContactNumber=cntnumber,Address=address where id=rid;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(120) NOT NULL,
  `ContactNumber` char(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FirstName`, `LastName`, `EmailId`, `ContactNumber`, `Address`, `PostingDate`) VALUES
(137, 'asas', 'adad', 'tanvirpoly@gmail.com', '0', 'adad', '2023-02-12 19:01:40'),
(138, 'MD.', 'AHMED', 'tanvirpoly@gmail.com', '175378126', 'Amodpur, Halima Nagar\r\nComilla Adarsha Sadar', '2023-02-12 19:02:12'),
(139, 'TANVIR', 'AHMED', 'tanvir@gmail.com', '175378123', 'Amodpur, Halima Nagar\r\nComilla Adarsha Sadar', '2023-02-12 19:02:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--


--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
