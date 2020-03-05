-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2020 at 07:25 PM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BuildARecipe`
--

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE IF NOT EXISTS `Comment` (
  `CommentID` int(11) NOT NULL DEFAULT '0',
  `CommentDate` date DEFAULT NULL,
  `CommentDescription` varchar(255) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Comment`
--

INSERT INTO `Comment` (`CommentID`, `CommentDate`, `CommentDescription`, `UserID`) VALUES
(1, '2019-11-11', 'I really like ur recipe', 1),
(2, '2020-01-01', 'Wow this recipe is so awesome!', 2),
(3, '2020-03-02', 'This recipe was made differently than mine', 3),
(4, '2019-04-17', 'Wow the recipe looks weirt', 4),
(5, '2020-02-15', 'I like to eat pies', 5);

-- --------------------------------------------------------

--
-- Table structure for table `DirectMessage`
--

CREATE TABLE IF NOT EXISTS `DirectMessage` (
  `DirectMessageID` int(11) NOT NULL DEFAULT '0',
  `UserID` int(11) DEFAULT NULL,
  `DirectMessageDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DirectMessage`
--

INSERT INTO `DirectMessage` (`DirectMessageID`, `UserID`, `DirectMessageDescription`) VALUES
(1, 1, 'LMAO WHO U IS?'),
(2, 2, 'Hello I like u website'),
(3, 3, 'Hi i need help with ur thingy'),
(4, 4, 'Testing message'),
(5, 5, 'Lol I see how it is');

-- --------------------------------------------------------

--
-- Table structure for table `Ingredient`
--

CREATE TABLE IF NOT EXISTS `Ingredient` (
  `IngredientID` int(11) NOT NULL DEFAULT '0',
  `IngredientType` varchar(64) DEFAULT NULL,
  `IngredientMeasurement` varchar(64) DEFAULT NULL,
  `MeasurmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ingredient`
--

INSERT INTO `Ingredient` (`IngredientID`, `IngredientType`, `IngredientMeasurement`, `MeasurmentID`) VALUES
(1, 'groundbeef', '3 pounds', 1),
(2, 'tomatoe', '10 slices', 2),
(3, 'Lettuce', '4 slices', 3),
(4, 'Fish', '5 pounds', 4),
(5, 'Lamb', '3 pounds', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Measurement`
--

CREATE TABLE IF NOT EXISTS `Measurement` (
  `MeasurmentID` int(11) NOT NULL DEFAULT '0',
  `Teaspoon` varchar(64) DEFAULT NULL,
  `Tablespoon` varchar(64) DEFAULT NULL,
  `Ounces` varchar(64) DEFAULT NULL,
  `Cups` varchar(64) DEFAULT NULL,
  `Pints` varchar(64) DEFAULT NULL,
  `Quarts` varchar(64) DEFAULT NULL,
  `Gallons` varchar(64) DEFAULT NULL,
  `Mililiters` varchar(64) DEFAULT NULL,
  `Liters` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Measurement`
--

INSERT INTO `Measurement` (`MeasurmentID`, `Teaspoon`, `Tablespoon`, `Ounces`, `Cups`, `Pints`, `Quarts`, `Gallons`, `Mililiters`, `Liters`) VALUES
(1, '2 teaspoon of salt', '3 tablespoon of sugar', 'milk', 'water', 'skin', 'frog', 'soup', 'rice', 'boop'),
(2, 'skjh', 'kjh', 'kjh', 'kjh', 'kjh', 'kjh', 'kjh', 'kjh', 'liuoi'),
(3, 'kjkjhu', 'ugjhvnm', 'nbv', 'kjhkjhiu', 'ohkjhkj', 'gkgnbmnb', 'mnvkug', 'jkgkjh', 'kjhkjh'),
(4, 'kjhkjh', 'jhgvjf', 'hfu', 'giuyoiuo', 'iuoiu', 'oiuo', 'iuoiuoi', 'uuoihgg', 'jhgjhg'),
(5, 'poipoi', 'iuouy', 'tfg', 'hjkiyug', 'hjkuioyig', 'hjftuy', 'hgjftu', 'ytuyt', 'uyt');

-- --------------------------------------------------------

--
-- Table structure for table `Recipe`
--

CREATE TABLE IF NOT EXISTS `Recipe` (
  `RecipeID` int(11) NOT NULL DEFAULT '0',
  `UserID` int(11) DEFAULT NULL,
  `CommentID` int(11) DEFAULT NULL,
  `IngredientID` int(11) DEFAULT NULL,
  `RecipeDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Recipe`
--

INSERT INTO `Recipe` (`RecipeID`, `UserID`, `CommentID`, `IngredientID`, `RecipeDescription`) VALUES
(1, 1, 1, 1, 'saaklajsjlasd'),
(2, 2, 2, 2, 'gkgklgdfglkj'),
(3, 3, 3, 3, 'sdcaklsjcslkj'),
(4, 4, 4, 4, 'dckjsdjkcsdjkl'),
(5, 5, 5, 5, 'sjkdfvkljfvjlfvdlkj');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `UserID` int(11) NOT NULL DEFAULT '0',
  `UserName` varchar(64) DEFAULT NULL,
  `FirstName` varchar(64) DEFAULT NULL,
  `LastName` varchar(64) DEFAULT NULL,
  `Email` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `UserName`, `FirstName`, `LastName`, `Email`) VALUES
(1, 'Boopsdpfo', 'Alex', 'Ho', 'alskdj@gmail.com'),
(2, 'wqeqwweweq', 'Eli', 'Mort', 'Eli@gmail.com'),
(3, 'Yupyupypu', 'Aj', 'wietecha', 'aj@gmail.com'),
(4, 'Alladcdssd', 'Allan', 'took', 'adlland@gmail.com'),
(5, 'TollBox', 'Anthony', 'Wu', 'Anthony@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `DirectMessage`
--
ALTER TABLE `DirectMessage`
  ADD PRIMARY KEY (`DirectMessageID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `Ingredient`
--
ALTER TABLE `Ingredient`
  ADD PRIMARY KEY (`IngredientID`),
  ADD KEY `MeasurmentID` (`MeasurmentID`);

--
-- Indexes for table `Measurement`
--
ALTER TABLE `Measurement`
  ADD PRIMARY KEY (`MeasurmentID`);

--
-- Indexes for table `Recipe`
--
ALTER TABLE `Recipe`
  ADD PRIMARY KEY (`RecipeID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CommentID` (`CommentID`),
  ADD KEY `IngredientID` (`IngredientID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Comment`
--
ALTER TABLE `Comment`
  ADD CONSTRAINT `Comment_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

--
-- Constraints for table `DirectMessage`
--
ALTER TABLE `DirectMessage`
  ADD CONSTRAINT `DirectMessage_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

--
-- Constraints for table `Ingredient`
--
ALTER TABLE `Ingredient`
  ADD CONSTRAINT `Ingredient_ibfk_1` FOREIGN KEY (`MeasurmentID`) REFERENCES `Measurement` (`MeasurmentID`);

--
-- Constraints for table `Recipe`
--
ALTER TABLE `Recipe`
  ADD CONSTRAINT `Recipe_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`),
  ADD CONSTRAINT `Recipe_ibfk_2` FOREIGN KEY (`CommentID`) REFERENCES `Comment` (`CommentID`),
  ADD CONSTRAINT `Recipe_ibfk_3` FOREIGN KEY (`IngredientID`) REFERENCES `Ingredient` (`IngredientID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
