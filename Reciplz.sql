-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2020 at 07:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `username` varchar(20) NOT NULL,
  `RecipeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`username`, `RecipeId`) VALUES
('Helen', 3),
('Helen', 1),
('Helen', 2),
('Selinie', 2),
('Selinie', 1),
('Selinie', 3),
('Shirley', 1),
('Rose', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Friends`
--

CREATE TABLE `Friends` (
  `UserId1` int(11) DEFAULT NULL,
  `UserId2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Recipes`
--

CREATE TABLE `Recipes` (
  `RecipeId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `RecipesContent`
--

CREATE TABLE `RecipesContent` (
  `RecipeID` int(11) NOT NULL,
  `Directions` longtext NOT NULL,
  `Ingredients` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RecipesContent`
--

INSERT INTO `RecipesContent` (`RecipeID`, `Directions`, `Ingredients`) VALUES
(1, 'Sprinkle dill, lemon-pepper, salt if desired and garlic powder over salmon. In a large resealable plastic bag, combine the brown sugar, broth, oil, soy sauce and green onions, add salmon. Seal bag and turn to coat. Cover and refrigerate for 1 hour, turning once.;Drain and discard marinade. Grill salmon skin side down, over medium heat, arrange lemon and onion slices over the top. Cover and cook for 15-20 minutes or until fish flakes easily with a fork.\r\n', '2 teaspoons snipped fresh dill or 3/4 teaspoon dill weed;3 tablespoons chicken broth;1/2 teaspoon lemon-pepper seasoning;3 tablespoons canola oil;1/2 teaspoon salt, optional;3 tablespoons reduced-sodium soy sauce;1/4 teaspoon garlic powder;3 tablespoons finely chopped green onions;1 salmon fillet (1-1/2 pounds);1 small lemon, thinly sliced;1/4 cup packed brown sugar;2 onion slices, separated into rings'),
(2, 'In a saucepan, combine rice and water. Bring to a boil. Reduce heat, cover, and simmer for 20 minutes.;In a small saucepan, boil carrots in water about 3 to 5 minutes. Drop peas into boiling water, and drain.;Heat wok over high heat. Pour in oil, then stir in carrots and peas; cook about 30 seconds. Crack in eggs, stirring quickly to scramble eggs with vegetables. Stir in cooked rice. Shake in soy sauce, and toss rice to coat. Drizzle with sesame oil, and toss again. ', '2cups enriched white rice;4 cups water;2/3 cup chopped baby carrots;1/2 cup frozen green peas;2 tablespoons vegetable oil;2 eggs;soy sauce to taste;sesame oil, to taste (optional)'),
(3, 'Place a large pot of lightly salted water (no more than 1 tablespoon salt) over high heat, and bring to a boil. Fill a large bowl with hot water for serving, and set aside.;In a mixing bowl, whisk together the eggs, yolks and pecorino and Parmesan. Season with a pinch of salt and generous black pepper.;Set the water to boil. Meanwhile, heat oil in a large skillet over medium heat, add the pork, and sauté until the fat just renders, on the edge of crispness but not hard. Remove from heat and set aside.;Add pasta to the water and boil until a bit firmer than al dente. Just before pasta is ready, reheat guanciale in skillet, if needed. Reserve 1 cup of pasta water, then drain pasta and add to the skillet over low heat. Stir for a minute or so.;Empty serving bowl of hot water. Dry it and add hot pasta mixture. Stir in cheese mixture, adding some reserved pasta water if needed for creaminess. Serve immediately, dressing it with a bit of additional grated pecorino and pepper.', 'Salt;2 large eggs and 2 large yolks, room temperature;1 ounce (about 1/3 packed cup) grated pecorino Romano, plus additional for serving;1 ounce (about 1/3 packed cup) grated Parmesan;Coarsely ground black pepper;1 tablespoon olive oil;3 ½ ounces of slab guanciale (see recipe), pancetta or bacon, sliced into pieces about 1/4 inch thick by 1/3 inch square;12 ounces spaghetti (about 3/4 box)');

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
(32, 1, '2020-04-13 23:56:05', 2, 4, 'great salmon!! - from helen test', 'review description blah blah blah test'),
(33, 2, '2020-04-14 01:27:10', 1, 4, 'Decent', 'Would make for my fam.');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `Description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserID`, `Username`, `Password`, `created_at`, `Description`) VALUES
(1, 'Selinie', '$2y$10$NLcfeP/Cd4qfbht1pVxGFeXT5coSPBfnDCgs0in.8zrkHAl6Tl7oC', '2020-04-11 19:45:56', 'Hello, my name is Selinie Wang. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(2, 'Helen', '$2y$10$bCnyRdCNyfdmeutQTBakGur4Pb2LruEUsfR/Vz3jGFEByDK8Sdnnq', '2020-04-11 19:47:22', 'Hello, my name is Helen Lin. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(3, 'Jenny', '$2y$10$kwJBktCiXCo6DTU8YBSftO3CY2Mb28IWMOEnJsBXO8H6Gwd0h4GIy', '2020-04-11 19:47:40', 'Hello. My name is Jenny Yao. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla pellentesque dignissim enim sit amet venenatis urna cursus eget. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Interdum velit laoreet id donec ultrices. Viverra nibh cras pulvinar mattis nunc sed.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla pellentesque dignissim enim sit amet venenatis urna cursus eget. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Interdum velit laoreet id donec ultrices. Viverra nibh cras pulvinar mattis nunc sed.'),
(4, 'Jessie', '$2y$10$CDPbnAYFbNoZ.1YVa1sSe.GUhKuFEMbigpe25QQHlnoQb2bOSIgmy', '2020-04-11 20:04:32', 'Hello. My name is Jessie Wang. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla pellentesque dignissim enim sit amet venenatis urna cursus eget. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Interdum velit laoreet id donec ultrices. Viverra nibh cras pulvinar mattis nunc sed.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla pellentesque dignissim enim sit amet venenatis urna cursus eget. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Interdum velit laoreet id donec ultrices. Viverra nibh cras pulvinar mattis nunc sed.'),
(5, 'Lily', '$2y$10$30UUk14vRaa3xcC0E3xzCOK.CmR5CIG1osn/UR8rVKW91g2FVRpN2', '2020-04-11 21:36:44', 'Hello. My name is Lily Smith. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla pellentesque dignissim enim sit amet venenatis urna cursus eget. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Interdum velit laoreet id donec ultrices. Viverra nibh cras pulvinar mattis nunc sed.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla pellentesque dignissim enim sit amet venenatis urna cursus eget. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Interdum velit laoreet id donec ultrices. Viverra nibh cras pulvinar mattis nunc sed.'),
(6, 'Shirley', '$2y$10$l8lfd.6x5yD3JfWnpLwPKOA1G1ws.jdaqJhfDlMDpcloaN2kgK6.a', '2020-04-13 23:02:02', 'Hello. My name is Shirley Temple. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla pellentesque dignissim enim sit amet venenatis urna cursus eget. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Interdum velit laoreet id donec ultrices. Viverra nibh cras pulvinar mattis nunc sed.  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla pellentesque dignissim enim sit amet venenatis urna cursus eget. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Interdum velit laoreet id donec ultrices. Viverra nibh cras pulvinar mattis nunc sed.'),
(7, 'Rose', '$2y$10$gJAA0ewIECGOWTW/gO2ci.bpnYP2KOsDA8qMA9mTR2XFERNDkJ/JW', '2020-04-14 13:42:38', 'Hello my name is Rose.');

-- --------------------------------------------------------

--
-- Table structure for table `userstest2`
--

CREATE TABLE `userstest2` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `Favorites` varchar(255) DEFAULT NULL,
  `Following` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userstest2`
--

INSERT INTO `userstest2` (`UserID`, `Username`, `Password`, `created_at`, `Favorites`, `Following`) VALUES
(1, 'Selinie', '$2y$10$1ydjzm7z6ORTzlnev594AeamoFLWLJhoRZ4LKlTYp7ro6LlPVJBDq', '2020-04-11 04:08:52', NULL, NULL),
(2, 'Clara', '$2y$10$dnhyD.NO34rwipIMVT9vQOWpNQYBJzLcSnHB5VQwKgbnpHigTJvRO', '2020-04-11 04:22:30', NULL, NULL),
(3, 'Bob', '$2y$10$eQkMHyk2ZxYHgVidK3VY/.k1AxUkKMAXXVBQd5RpLpZJyEXzMDU.2', '2020-04-11 04:32:42', NULL, NULL),
(4, 'Tim', '$2y$10$fEPthEfz87HJnIITJLxyTOhRmOOj9SYwXsD3Bl27R07wSLB/A1MuG', '2020-04-11 04:41:44', NULL, NULL),
(5, 'Helen', '$2y$10$AvglZgk1kcokiY6sMHQg8O6MjxBax092Z65j0VB5fMo9LHIXke6X6', '2020-04-11 04:42:48', NULL, NULL),
(6, 'Jenny', '$2y$10$6p.Nu/b7eOo74jSNWR3UOu51mffVHAeCKJ2kO7mdh8ZUbpGLPHwn6', '2020-04-11 05:02:00', NULL, NULL),
(7, 'Poppy', '$2y$10$aspe1d2fMnmh.No4Da7G5OGDDDGuh49wZF0VEKsNhdlQSR6c8g7cC', '2020-04-11 05:02:35', NULL, NULL),
(8, 'Heather', '$2y$10$3k20UL0Wk19Az1ngxCNkyOgK8d69y1VQT/9HDqN2W46KfUnMlc33W', '2020-04-11 05:28:38', NULL, NULL),
(9, 'Lily', '$2y$10$RqXuZCGfgLxswaSsH6BD3.6BDV.UvcGBxL5lkHScyVinks4GcQ5Hq', '2020-04-11 19:11:35', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Recipes`
--
ALTER TABLE `Recipes`
  ADD PRIMARY KEY (`RecipeId`);

--
-- Indexes for table `RecipesContent`
--
ALTER TABLE `RecipesContent`
  ADD PRIMARY KEY (`RecipeID`);

--
-- Indexes for table `RecipesReviews`
--
ALTER TABLE `RecipesReviews`
  ADD PRIMARY KEY (`ReviewID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `userstest2`
--
ALTER TABLE `userstest2`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `RecipesReviews`
--
ALTER TABLE `RecipesReviews`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userstest2`
--
ALTER TABLE `userstest2`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
