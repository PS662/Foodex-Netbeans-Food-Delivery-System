-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2016 at 10:11 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `Table_name` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL DEFAULT 'password',
  `Login_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`Table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`Table_name`, `Password`, `Login_ID`) VALUES
('hk_admin', 'passwd', 'adminhk'),
('m_admin', 'password', 'adminmun'),
('si_admin', 'password', 'adminsi'),
('yz_admin', 'password', 'adminyz');

-- --------------------------------------------------------

--
-- Table structure for table `highway_king`
--

CREATE TABLE IF NOT EXISTS `highway_king` (
  `Name` varchar(20) NOT NULL DEFAULT '',
  `Price` int(3) NOT NULL DEFAULT '0',
  `Category` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `highway_king`
--

INSERT INTO `highway_king` (`Name`, `Price`, `Category`) VALUES
('Aloo Kulcha', 50, 'v'),
('Aloo Pyaz', 120, 'v'),
('Bhindi Masala', 80, 'v'),
('Butter Chicken', 130, 'n'),
('Butter Naan', 50, 'v'),
('Butter Roti', 20, 'v'),
('Chicken Do Pyaza', 130, 'n'),
('Chicken Tikka ', 190, 'n'),
('Chilli Chicken', 150, 'n'),
('Chilli Paneer', 140, 'v'),
('Dal Makhani', 110, 'v'),
('Dal Tadka', 90, 'v'),
('Egg Curry', 110, 'n'),
('Fish Curry', 120, 'n'),
('Fish Finger', 100, 'n'),
('Fried Rice', 100, 'v'),
('Garlic Naan', 60, 'V'),
('Hakka Noodles', 110, 'v'),
('Handi Murgh', 170, 'n'),
('Hydrabadi Biriyani', 180, 'v'),
('Kadhai Chicken', 160, 'n'),
('Lacchha Paratha', 50, 'v'),
('Manchurian', 140, 'v'),
('Matar Paneer', 100, 'v'),
('Murgh Mussalam', 200, 'n'),
('Mutton', 160, 'n'),
('Palak Paneer', 100, 'v'),
('Paneer Butter Masala', 130, 'v'),
('Paneer Do Pyaza', 110, 'v'),
('Paneer Kulcha', 60, 'v'),
('Paneer Lababdar', 120, 'v'),
('Paneer Tikka ', 170, 'v'),
('Shahi Paneer', 110, 'v'),
('Steemed Rice', 90, 'v'),
('Stuff Naan', 60, 'v'),
('Tandoori Chicken', 150, 'n'),
('Tandoori Roti', 10, 'v'),
('Tangdi Kabab', 190, 'n'),
('Tava Roti', 8, 'v'),
('Veg Pulav', 160, 'v');

-- --------------------------------------------------------

--
-- Table structure for table `hk_admin`
--

CREATE TABLE IF NOT EXISTS `hk_admin` (
  `User_name` varchar(50) NOT NULL,
  `Phone_Number` bigint(11) NOT NULL,
  `Room_no` varchar(20) NOT NULL,
  `Dish_name` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`Phone_Number`,`Dish_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hk_admin`
--

INSERT INTO `hk_admin` (`User_name`, `Phone_Number`, `Room_no`, `Dish_name`, `Price`, `Quantity`, `Amount`) VALUES
('bhbj', 535353535, '565', 'Dal Makhani', 110, 7, 770),
('masfkm', 2424242424, '8888', 'Egg Curry', 110, 3, 330),
('mickey', 7073352079, '444', 'Butter Chicken', 130, 6, 780),
('askdjask', 98989898989, '898', 'Chicken Do Pyaza', 130, 3, 390);

-- --------------------------------------------------------

--
-- Table structure for table `munchies`
--

CREATE TABLE IF NOT EXISTS `munchies` (
  `Name` varchar(50) NOT NULL,
  `Price` int(3) NOT NULL,
  `Category` varchar(50) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `munchies`
--

INSERT INTO `munchies` (`Name`, `Price`, `Category`) VALUES
('Cheese Garlic Sandwich', 50, 'v'),
('Choco Burst', 80, 'v'),
('Choco Lawa Cake', 50, 'v'),
('Chocolate Pizza', 90, 'v'),
('Chocolate Sandwich', 60, 'v'),
('Cold Coffee', 30, 'v'),
('Cold Coffee with Choco Chip', 40, 'v'),
('Corn Cheese Capsicum Sandwich', 60, 'v'),
('Grilled Sandwich', 50, 'v'),
('Kolahpuri Sandwich', 50, 'v'),
('Mix Veg Sandwich', 40, 'v'),
('OTC Pizza', 90, 'v'),
('Red Velvet Pastry', 80, 'v'),
('Regular Burger', 40, 'v'),
('Sizzling Brownie with Ice-Cream', 110, 'v'),
('Special Paneer Pizza', 100, 'v'),
('Special Paneer Sandwich', 60, 'v'),
('Stuff Garlic Sandwich', 40, 'v'),
('Tandoori Burger', 60, 'v'),
('Tandoori Paneer Sandwich', 60, 'v');

-- --------------------------------------------------------

--
-- Table structure for table `m_admin`
--

CREATE TABLE IF NOT EXISTS `m_admin` (
  `User_name` varchar(50) NOT NULL,
  `Phone_Number` bigint(11) NOT NULL,
  `Room_no` varchar(20) NOT NULL,
  `Dish_name` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`Phone_Number`,`Dish_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`User_name`, `Phone_Number`, `Room_no`, `Dish_name`, `Price`, `Quantity`, `Amount`) VALUES
('Ray', 9876543218, '33', 'Red Velvet Pastry', 80, 5, 400),
('Ray', 9876543218, '33', 'Sizzling Brownie with Ice-Cream', 110, 2, 220);

-- --------------------------------------------------------

--
-- Table structure for table `si_admin`
--

CREATE TABLE IF NOT EXISTS `si_admin` (
  `User_name` varchar(50) NOT NULL,
  `Phone_Number` bigint(11) NOT NULL,
  `Room_no` varchar(20) NOT NULL,
  `Dish_name` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`Phone_Number`,`Dish_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `south_indian`
--

CREATE TABLE IF NOT EXISTS `south_indian` (
  `Name` varchar(20) NOT NULL,
  `Price` int(3) NOT NULL,
  `Category` varchar(1) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `south_indian`
--

INSERT INTO `south_indian` (`Name`, `Price`, `Category`) VALUES
('Cheese Dosa', 60, 'v'),
('Chicken Biriyani Ful', 150, 'n'),
('Chicken Biriyani Hal', 90, 'n'),
('Curd Rice', 50, 'v'),
('Egg Dosa', 50, 'n'),
('Half Fry Dosa', 60, 'n'),
('Idili', 40, 'v'),
('Idili Vada', 40, 'v'),
('Lemon Rice', 50, 'v'),
('Masala Dosa', 50, 'v'),
('Onion Uttapam', 50, 'v'),
('Paneer Uttapam', 60, 'v'),
('Plain Dosa', 40, 'v'),
('Special Spicy Dosa', 60, 'v'),
('Vada', 40, 'v');

-- --------------------------------------------------------

--
-- Table structure for table `yo_zing`
--

CREATE TABLE IF NOT EXISTS `yo_zing` (
  `Name` varchar(50) NOT NULL,
  `Price` int(3) NOT NULL,
  `Category` varchar(1) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yo_zing`
--

INSERT INTO `yo_zing` (`Name`, `Price`, `Category`) VALUES
('American Coupsey', 130, 'n'),
('Blue Lagoon', 70, 'v'),
('Cafe Latte', 40, 'v'),
('Chicken Lolipop', 100, 'n'),
('Chicken Noodles', 80, 'n'),
('Chilli Chicken', 90, 'n'),
('Chilli Paneer', 90, 'v'),
('Chocochino', 40, 'v'),
('Chocolate Passion', 80, 'v'),
('Chocolate Shake', 70, 'v'),
('Cold Coffee', 60, 'v'),
('Crispy Chilli Potato', 60, 'v'),
('Expresso', 30, 'v'),
('Fried Rice', 60, 'v'),
('Hakka Noodles', 60, 'v'),
('Manchurian', 80, 'v'),
('Non. Veg Momos', 60, 'n'),
('Schezwan Fried Rice', 70, 'v'),
('Schezwan Noodles', 70, 'v'),
('Veg Momos', 50, 'v');

-- --------------------------------------------------------

--
-- Table structure for table `yz_admin`
--

CREATE TABLE IF NOT EXISTS `yz_admin` (
  `User_name` varchar(50) NOT NULL,
  `Phone_Number` bigint(11) NOT NULL,
  `Room_no` varchar(20) NOT NULL,
  `Dish_name` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`Phone_Number`,`Dish_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
