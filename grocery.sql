-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 16, 2023 at 10:27 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`Order_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_ID` int NOT NULL AUTO_INCREMENT,
  `product_Name` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL,
  `Price` decimal(65,0) NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`product_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_ID`, `product_Name`, `Description`, `Price`, `Quantity`) VALUES
(1, 'Apple', 'Fresh and juicy appl', '2', 50),
(2, 'Banana', 'Ripe and yellow bana', '1', 100),
(3, 'Milk', 'Full-fat milk', '2', 20),
(4, 'Bread', 'Whole wheat bread', '4', 30),
(5, 'Chicken', 'Boneless chicken bre', '6', 10),
(6, 'Eggs', 'Fresh farm eggs', '3', 40),
(7, 'Tomatoes', 'Ripe and juicy tomat', '1', 60),
(8, 'Cucumber', 'Crisp and refreshing', '1', 30),
(9, 'Cheese', 'Cheddar cheese', '5', 25),
(10, 'Salmon', 'Fresh salmon fillet', '10', 15),
(11, 'Oranges', 'Sweet and tangy oran', '1', 50),
(12, 'Potatoes', 'Versatile and nutrit', '1', 80),
(13, 'Yogurt', 'Creamy and probiotic', '3', 35),
(14, 'Beef', 'Tender beef cuts', '8', 20),
(15, 'Pasta', 'Variety of pasta sha', '2', 45),
(16, 'Eggs', 'Farm-fresh eggs', '2', 60),
(17, 'Tomatoes', 'Juicy and flavorful ', '1', 40),
(18, 'Cheese', 'Assorted cheese vari', '4', 25),
(19, 'Salmon', 'Fresh and healthy sa', '10', 15),
(20, 'Rice', 'Long-grain and aroma', '5', 50),
(21, 'Orange Juice', 'Freshly squeezed ora', '3', 30),
(22, 'Pasta', 'Assorted pasta shape', '1', 50),
(23, 'Yogurt', 'Creamy and flavorful', '2', 40),
(24, 'Ground Beef', 'Premium quality grou', '7', 20),
(25, 'Applesauce', 'Naturally sweetened ', '1', 35),
(26, 'Eggs', 'Farm-fresh eggs', '2', 60),
(27, 'Cereal', 'Nutritious breakfast', '4', 40),
(28, 'Salmon', 'Fresh Atlantic salmo', '10', 15),
(29, 'Spinach', 'Organic baby spinach', '3', 25),
(30, 'Peanut Butter', 'Creamy and delicious', '3', 50),
(31, 'Orange Juice', 'Freshly squeezed ora', '3', 30),
(32, 'Yogurt', 'Creamy and smooth yo', '2', 40),
(33, 'Coffee Beans', 'Premium roasted coff', '7', 20),
(34, 'Granola Bars', 'Healthy and deliciou', '2', 50),
(35, 'Ice Cream', 'Rich and creamy ice ', '5', 15);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Adress` varchar(20) NOT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `User_Name` (`User_Name`),
  UNIQUE KEY `Password` (`Password`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `User_Name`, `Email`, `Password`, `Adress`) VALUES
(1, 'FAFF', 'GRG@jydh', 'faeeeg', 'hetethhtyerj'),
(2, 'garg', 'gezg@jry', 'hrzh', 'jhtej'),
(3, 'daf', 'gehre@gkzp.clf', 'djaoo,fago', 'jfoiezjgk,fe'),
(4, 'BENAMOR', 'benamoraziz02@gmail.', 'hrzhgazhrzh', '1525');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
