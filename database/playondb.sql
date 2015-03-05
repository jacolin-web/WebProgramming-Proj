-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2014 at 10:19 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `playondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE IF NOT EXISTS `playlist` (
`playlistID` int(11) NOT NULL,
  `pName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`playlistID`, `pName`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
`songID` int(11) NOT NULL,
  `Title` varchar(60) DEFAULT NULL,
  `Artist` varchar(30) DEFAULT NULL,
  `Album` varchar(30) DEFAULT NULL,
  `Genre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`songID`, `Title`, `Artist`, `Album`, `Genre`) VALUES
(1, 'Freaks and Geeks', 'Childish Gambino', 'Camp', 'Hip Hop'),
(2, 'Heartbeat', 'Childish Gambino', 'Camp', 'Hip Hop'),
(3, 'Bonfire', 'Childish Gambino', 'Camp', 'Hip Hop'),
(4, 'All of Me', 'John Legend', 'Love in the Future', 'R&B'),
(5, 'Adorn', 'Miguel', 'Kaleidoscope Dream', 'R&B'),
(6, 'Disclosure', 'Sam Smith', 'Settle', 'House'),
(7, 'Stay With Me', 'Sam Smith', 'In The Lonely Hour', 'Pop'),
(8, 'A Thousand Miles', 'Vanessa Carlton', 'Be Not Nobody', 'Pop'),
(9, 'In The End', 'Linkin Park', 'Hybrid Theory', 'Alternative Rock'),
(10, 'Bleed It Out', 'Linkin Park', 'Minutes To Midnight', 'Alternative Rock'),
(11, 'Electric Feel', 'MGMT', 'Oracular Spectacular', 'Indie Pop'),
(12, 'Kids', 'MGMT', 'Oracular Spectacular', 'Indie Pop'),
(13, 'Electric Feel (Justice remix)', 'MGMT', 'Oracular Spectacular', 'Indie Pop'),
(14, 'Love Never Felt So Good', 'Michael Jackson', 'Xscape', 'R&B'),
(15, 'Dangerous', 'Michael Jackson', 'Dangerous', 'Pop'),
(16, 'P.Y.T. (Pretty Young Thing)', 'Michael Jackson', 'Thriller', 'Funk'),
(17, 'The Girl Is Mine', 'Michael Jackson', 'Thriller', 'Soft Rock'),
(18, 'Juicy', 'The Notorious B.I.G.', 'Ready to Die', 'Rap'),
(19, 'Mastermind', 'Nas', 'God''s Son', 'Rap'),
(20, 'Cole Summer', 'J. Cole', 'Truly Yours 2', 'Rap');

-- --------------------------------------------------------

--
-- Table structure for table `upsdata`
--

CREATE TABLE IF NOT EXISTS `upsdata` (
  `userID` int(11) NOT NULL,
  `playlistID` int(11) NOT NULL,
  `songID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`userID` int(11) NOT NULL,
  `uName` varchar(15) DEFAULT NULL,
  `uPasswd` varchar(15) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `uName`, `uPasswd`) VALUES
(9, 'Admin', 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
 ADD PRIMARY KEY (`playlistID`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
 ADD PRIMARY KEY (`songID`);

--
-- Indexes for table `upsdata`
--
ALTER TABLE `upsdata`
 ADD KEY `userID` (`userID`), ADD KEY `playlistID` (`playlistID`), ADD KEY `songID` (`songID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
MODIFY `playlistID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
MODIFY `songID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `upsdata`
--
ALTER TABLE `upsdata`
ADD CONSTRAINT `upsdata_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`),
ADD CONSTRAINT `upsdata_ibfk_2` FOREIGN KEY (`playlistID`) REFERENCES `playlist` (`playlistID`),
ADD CONSTRAINT `upsdata_ibfk_3` FOREIGN KEY (`songID`) REFERENCES `songs` (`songID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
