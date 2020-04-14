-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2020 at 01:58 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Reciplz`
--

-- --------------------------------------------------------

--
-- Table structure for table `RecipesReviews`
--

CREATE TABLE `RecipesReviews` (
  `ReviewID` int(11) NOT NULL,
  `RecipeId` int(11) NOT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `UserId` int(11) NOT NULL,
  `Rating` int(11) DEFAULT NULL,
  `ReviewName` varchar(100) NOT NULL,
  `ReviewDescrip` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RecipesReviews`
--

INSERT INTO `RecipesReviews` (`ReviewID`, `RecipeId`, `timeStamp`, `UserId`, `Rating`, `ReviewName`, `ReviewDescrip`) VALUES
(1, 1, '2020-04-13 22:05:30', 4, 5, 'Tasty!', 'Great grilled salmon recipe! It was super easy to follow'),
(2, 2, '2020-04-13 22:05:30', 5, 4, 'Reminds me of home!', 'It was super quick and easy to make... also delicious!'),
(3, 1, '2020-04-13 22:05:30', 4, 2, 'Nevermind..', 'I actually realized its aight'),
(4, 1, '2020-04-13 22:05:30', 1, 4, 'fsdasdfsafs', 'asdfsdfsdfdsdf'),
(5, 1, '2020-04-13 22:05:30', 1, 4, 'fsdasdfsafs', 'asdfsdfsdfdsdf'),
(20, 1, '2020-04-13 22:07:59', 1, 1, 'one star', 'kggkgkh'),
(31, 1, '2020-04-13 23:56:00', 2, 4, 'great salmon!! - from helen test', 'review description blah blah blah test'),
(32, 1, '2020-04-13 23:56:05', 2, 4, 'great salmon!! - from helen test', 'review description blah blah blah test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `RecipesReviews`
--
ALTER TABLE `RecipesReviews`
  ADD PRIMARY KEY (`ReviewID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `RecipesReviews`
--
ALTER TABLE `RecipesReviews`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
