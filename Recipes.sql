-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 12, 2020 at 01:24 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

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
-- Table structure for table `Recipes`
--

CREATE TABLE `Recipes` (
  `RecipeId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Description` longtext,
  `RecipeName` varchar(70) DEFAULT NULL,
  `imageLink` varchar(30) DEFAULT NULL,
  `prepTime` int(11) NOT NULL,
  `difficulty` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Recipes`
--

INSERT INTO `Recipes` (`RecipeId`, `UserId`, `Description`, `RecipeName`, `imageLink`, `prepTime`, `difficulty`) VALUES
(1, 4, 'Tender and smokey grilled salmon topped with a hint of lemon so a healthy and quick dinner meal!', 'Grilled Salmon', 'images/grilledSalmon.jpg', 2, 'Easy'),
(2, 5, 'Simple and easy fried rice with ingredient found in everyone\'s pantry', 'Simple Fried Rice', 'images/friedRice.jpg', 1, 'medium'),
(3, 4, 'This dish is simple and uses only 5 ingredients!', 'Carbonara', 'images/carbonara.jpg', 2, 'hard');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Recipes`
--
ALTER TABLE `Recipes`
  ADD PRIMARY KEY (`RecipeId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
