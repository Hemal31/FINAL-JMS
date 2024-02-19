-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 06:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `createdBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`, `createdBy`) VALUES
(1, 'Earing', 'Various  type of earing', '2022-01-31 04:23:02', '2023-02-01 05:55:26', 1),
(2, 'Pendants', 'Pendants is very beautiful', '2023-01-31 04:27:41', NULL, 1),
(3, 'Finger Rings', 'There is huge variety of finger rings', '2023-01-31 04:43:33', NULL, 1),
(4, 'Mangalsutra', 'Mangalsutra', '2023-01-31 04:43:48', NULL, 1),
(5, 'Chain', 'Chain', '2023-01-31 04:29:12', NULL, 1),
(6, 'Necklace', 'Necklace', '2023-01-31 04:29:28', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `PId` varchar(255) DEFAULT NULL,
  `IsOrderPlaced` int(5) DEFAULT NULL,
  `OrderNumber` int(5) DEFAULT NULL,
  `PaymentMethod` varchar(200) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `UserId`, `PId`, `IsOrderPlaced`, `OrderNumber`, `PaymentMethod`, `orderDate`) VALUES
(7, 5, '22', 1, 424108694, 'Cash on Delivery', '2023-02-01 04:51:43'),
(8, 5, '21', 1, 424108694, 'Cash on Delivery', '2023-02-02 04:51:48'),
(9, 5, '26', 1, 424108694, 'Cash on Delivery', '2023-02-01 18:30:00'),
(11, 5, '28', 1, 424108694, 'Cash on Delivery', '2023-02-02 04:51:48'),
(12, 5, '26', 1, 624951460, 'Credit Card', '2023-02-02 04:51:48'),
(13, 5, '31', 1, 260984104, 'Debit Card', '2023-02-02 04:51:48'),
(15, 5, '27', 1, 849570981, 'E-Wallet', '2023-02-02 04:51:48'),
(16, 5, '26', 1, 849570981, 'E-Wallet', '2023-02-02 04:51:48'),
(21, 6, '28', 1, 224122905, 'E-Wallet', '2023-02-02 04:51:48'),
(22, 6, '26', 1, 224122905, 'E-Wallet', '2023-02-02 04:51:48'),
(23, 5, '26', NULL, NULL, NULL, '2023-02-02 04:51:48'),
(24, 5, '31', NULL, NULL, NULL, '2023-02-02 04:51:48'),
(33, 6, '28', NULL, NULL, NULL, '2023-02-02 04:51:48'),
(34, 0, '34', NULL, NULL, NULL, '2023-02-02 04:51:48'),
(36, 7, '28', 1, 819293354, 'Cash on Delivery', '2023-02-02 04:51:48'),
(37, 7, '29', 1, 819293354, 'Cash on Delivery', '2023-02-02 04:51:48'),
(38, 7, '31', 1, 819293354, 'Cash on Delivery', '2023-02-02 04:51:48'),
(39, 8, '28', 1, 455386972, 'Debit Card', '2023-02-02 04:51:48'),
(42, 9, '37', NULL, NULL, NULL, '2023-02-02 04:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productweight` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `addedBy` int(11) DEFAULT NULL,
  `lastUpdatedBy` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `type`, `productName`, `productweight`, `productPrice`, `gender`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`, `addedBy`, `lastUpdatedBy`) VALUES
(26, 1, 1, 'Gold', 'Glinting Butterfly Diamond Stud Earrings(14 Carate)', '', 8607, 'gender', 'Product Information\r\nWidth - 7.5 mm\r\nHeight - 5.9 mm\r\nPurity - 14 Kt\r\nApprox.Weight - 0.97 g', 'd917f129d6e4b0895d864682a3909c5b.jpg', '610510f601f662581c6fbb577c8b30f5.jpg', 'a6146e9bb59550da409063667a94b450.jpg', 120, 'In Stock', '2023-02-02 04:51:48', '2023-02-10 04:53:32', 1, NULL),
(27, 1, 2, 'Gold', 'Drop Earing 22 Carate', '15G', 24000, 'gender', 'Drop Earing 22 Carate\r\nuiyuiyui\r\njoiuoi\r\nkoujoi', 'c3c08f9c03c66d753798274b4245d158.jpg', 'c3c08f9c03c66d753798274b4245d158.jpg', 'c3c08f9c03c66d753798274b4245d158.jpg', 120, 'In Stock', '2023-02-02 04:51:48', NULL, 1, 1),
(28, 2, 10, 'Diamond', 'Crystal Diamond Pendant', '', 15346, 'gender', 'Width - 7.2 mm\r\nHeight - 28.9 mm\r\nPurity - 18 Kt\r\nApprox.Weight - 1.62 g', '42e3a6ca313022c6d3f34a1676bd434f.jpg', 'e431ea294034a9afbc885e35e4ad0558.jpg', '42e3a6ca313022c6d3f34a1676bd434f.jpg', 80, 'In Stock', '2023-02-02 04:51:48', NULL, 1, NULL),
(29, 2, 12, 'Gold', 'Teardrop Pendant in gold', '', 27000, 'gender', 'Teardrop Pendant in gold\r\nProduct Information\r\nWeight: 2 gm\r\nCarate: 22K', '19e2705e043c3807b4a19fd336977ec8.jpg', '3fcb00947475cd8a85638374f20198b2.jpg', '19e2705e043c3807b4a19fd336977ec8.jpg', 85, 'In Stock', '2023-02-02 04:51:48', NULL, 1, NULL),
(30, 1, 1, 'Gold', 'gjhghjgj', '7gm', 545544, 'gender', 'hjkhkjhkjhkhkhklvcgf\r\ngtuyiuhkjk', '205a8fd06cdb1ab80d3b1436c004be9b.jpg', 'ca1df5cc5f239e4475e32d2c451b9caa.jpg', '205a8fd06cdb1ab80d3b1436c004be9b.jpg', 89, 'In Stock', '2023-02-02 04:51:48', NULL, 1, NULL),
(31, 2, 11, 'Diamond', 'bjgjlhhui', '12 gm', 11579888, 'Female', 'jhghjghhkkjl\r\nkjhiuyiu\r\nkjyiuyioulhyiuytiu\r\njiouiy', 'b0962738125cc719cb04e494ef6675f8.jpg', '94896cbf76d9133c94b737da69d79832.jpg', '0f60661062bc215e2f63d28554dc6832.jpg', 90, 'In Stock', '2023-02-02 04:51:48', NULL, 1, NULL),
(32, 2, 12, 'Gold', 'Teardrop Pendant in gold', '', 27000, 'gender', 'Teardrop Pendant in gold\r\nProduct Information\r\nWeight: 2 gm\r\nCarate: 22K', '19e2705e043c3807b4a19fd336977ec8.jpg', '3fcb00947475cd8a85638374f20198b2.jpg', '19e2705e043c3807b4a19fd336977ec8.jpg', 85, 'In Stock', '2023-02-02 04:51:48', NULL, 1, NULL),
(33, 1, 1, 'Gold', 'gjhghjgj', '7gm', 545544, 'gender', 'hjkhkjhkjhkhkhklvcgf\r\ngtuyiuhkjk', '205a8fd06cdb1ab80d3b1436c004be9b.jpg', 'ca1df5cc5f239e4475e32d2c451b9caa.jpg', '205a8fd06cdb1ab80d3b1436c004be9b.jpg', 89, 'In Stock', '2023-02-02 04:51:48', NULL, 1, NULL),
(34, 2, 12, 'Gold', 'Teardrop Pendant in gold', '', 27000, 'gender', 'Teardrop Pendant in gold\r\nProduct Information\r\nWeight: 2 gm\r\nCarate: 22K', '19e2705e043c3807b4a19fd336977ec8.jpg', '3fcb00947475cd8a85638374f20198b2.jpg', '19e2705e043c3807b4a19fd336977ec8.jpg', 85, 'In Stock', '2023-02-02 04:51:48', NULL, 1, NULL),
(35, 2, 10, 'Diamond', 'Crystal Diamond Pendant', '', 15346, 'gender', 'Width - 7.2 mm\r\nHeight - 28.9 mm\r\nPurity - 18 Kt\r\nApprox.Weight - 1.62 g', '42e3a6ca313022c6d3f34a1676bd434f.jpg', 'e431ea294034a9afbc885e35e4ad0558.jpg', '42e3a6ca313022c6d3f34a1676bd434f.jpg', 80, 'In Stock', '2023-02-02 04:51:48', NULL, 1, NULL),
(36, 1, 2, 'Gold', 'Drop Earing 22 Carate', '', 24000, 'gender', 'Drop Earing 22 Carate\r\nuiyuiyui\r\njoiuoi\r\nkoujoi', 'c3c08f9c03c66d753798274b4245d158.jpg', 'c3c08f9c03c66d753798274b4245d158.jpg', 'c3c08f9c03c66d753798274b4245d158.jpg', 120, 'In Stock', '2023-02-02 04:51:48', NULL, 1, NULL),
(37, 1, 2, 'Gold', 'fsdfsd', '234csdf', 234234, 'Female', 'dsfsdf', '402fdfb700f491da48cf8536e0593cf0.jpg', '402fdfb700f491da48cf8536e0593cf0.jpg', '402fdfb700f491da48cf8536e0593cf0.jpg', 34, 'In Stock', '2023-02-02 04:51:48', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryName` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `createdBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategoryName`, `creationDate`, `updationDate`, `createdBy`) VALUES
(1, 1, 'Stud Earrings', '2023-02-01 04:58:56', NULL, 1),
(5, 1, 'Hoop Earrings', '2023-02-02 04:51:48', NULL, 1),
(6, 1, 'Huggie Earrings', '2023-02-02 04:51:48', NULL, 1),
(7, 1, 'Threader Earrings', '2023-02-02 04:51:48', NULL, 1),
(8, 1, 'Jacket Earrings', '2023-02-02 04:51:48', NULL, 1),
(9, 1, 'Ear Climbers', '2023-02-02 04:51:48', NULL, 1),
(10, 2, 'CRYSTAL PENDANT', '2023-02-02 04:51:48', NULL, 1),
(11, 2, 'CROSS PENDANT', '2023-02-02 04:51:48', NULL, 1),
(12, 2, 'TEARDROP PENDANT', '2023-02-02 04:51:48', NULL, 1),
(13, 2, 'HAMSA PENDANT', '2023-02-02 04:51:48', '2023-02-10 09:22:33', 1),
(14, 2, 'HAMSA PENDANT', '2023-02-02 04:51:48', NULL, 1),
(15, 2, 'PEARL PENDANT', '2023-02-02 04:51:48', NULL, 1),
(16, 3, 'Claddagh Ring', '2023-02-02 04:51:48', NULL, 1),
(17, 3, 'Cluster Ring', '2023-02-02 04:51:48', NULL, 1),
(18, 3, 'Cocktail Ring', '2023-02-02 04:51:48', NULL, 1),
(19, 3, 'Contemporary Ring', '2022-01-31 04:51:48', NULL, 1),
(20, 3, 'Engagement Ring', '2023-02-02 04:51:48', NULL, 1),
(21, 5, 'Mariner Chain', '2023-02-02 04:51:48', NULL, 1),
(22, 5, 'Ball Chain', '2023-02-02 04:51:48', NULL, 1),
(24, 9, 'Sub Test', '2023-02-02 04:51:48', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555558, 'admin@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', '2023-02-02 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Kiran', 'kran@gmail.com', 'cost of volvo place pritampura to dwarka', '2023-01-31 07:26:24', 1),
(2, 'Sarita Pandey', 'sar@gmail.com', 'huiyuihhjjkhkjvhknv iyi tuyvuoiup', '2023-01-31 07:26:24', 1),
(3, 'Test', 'test@gmail.com', 'Want to know price of forest cake', '2023-01-31 07:26:24', 1),
(4, 'Shanu', 'shanu@gmail.com', 'hkjhkjhk', '2023-01-31 07:26:24', 1),
(5, 'Taanu Sharma', 'tannu@gmail.com', 'ytjhdjguqwgyugjhbjdsuy\r\nkjhjkwhkd\r\nljkkljwq\r\nmlkjol ', '2023-01-31 07:26:24', 1),
(6, 'Harish Kumar', 'hari@gmail.com', 'rytweiuyeiouoipoipo[po\r\njknkjlkdsflkjflkdjslk;lsdkf;l\r\nn,mn,ncxm.,m.m.,.', '2023-01-31 07:26:24', NULL),
(7, 'test', 'test@gmail.com', 'Test', '2023-01-31 07:26:24', 1),
(8, 'Sarita Pandey', 'sar@gmail.com', 'ytgjq[prooaerh', '2023-01-31 07:26:24', 1),
(9, 'Anuj', 'ak@gmail.com', 'This is for Testing.', '2023-01-31 07:26:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(10) NOT NULL,
  `UserId` int(5) DEFAULT NULL,
  `Ordernumber` int(10) DEFAULT NULL,
  `Flatnobuldngno` varchar(200) DEFAULT NULL,
  `StreetName` varchar(200) DEFAULT NULL,
  `Area` varchar(200) DEFAULT NULL,
  `Landmark` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Zipcode` int(10) DEFAULT NULL,
  `Phone` bigint(11) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `PaymentMethod` varchar(200) DEFAULT NULL,
  `OrderTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` varchar(200) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `Zipcode`, `Phone`, `Email`, `PaymentMethod`, `OrderTime`, `Status`, `Remark`, `UpdationDate`) VALUES
(1, 5, 424108694, '456', 'ghy', 'hjkh', 'guytuy', 'ytyt', 201017, 6565785875, 'rt@gmail.com', 'Cash on Delivery', '2023-01-31 07:26:24', 'Delivered', 'Your order has been delivered', '2023-02-10 05:09:50'),
(2, 5, 624951460, 'H-809', 'Abc street', 'Gokuldham', 'Hyuf palace', 'ghaziabad', 155016, 7979879798, 'hjk@gmail.com', 'Credit Card', '2023-01-31 07:26:24', 'Delivered', 'Order has been deliver', '2023-02-10 05:09:54'),
(3, 5, 260984104, 'ggjh', 'jhgjh', 'jhgjh', 'hkhk', 'kjhkj', 664446, 8887997789, 'kj@gmail.com', 'Debit Card', '2023-01-31 07:26:24', 'Order Cancelled', 'Order Cancelled', '2023-02-10 05:09:58'),
(5, 5, 849570981, 'hgjhg', 'jhgh', 'jhg', 'koiuoiuo', 'oiuoiuo', 789456, 9879879879, 'kjk@gmail.com', 'E-Wallet', '2023-01-31 07:26:24', NULL, NULL, '2023-02-10 05:10:01'),
(6, 6, 224122905, 'H 345', 'ABC Street', 'New XYZ', 'NA', 'New Delhi', 110001, 1234567890, 'ak@gmail.cokm', '', '2023-01-31 07:26:24', 'Order Confirmed', 'Order Has been Confirmed', '2023-02-10 05:10:04'),
(7, 7, 819293354, 'XYZ', 'ABC Street', 'Noida', 'NA', 'Noida', 201301, 3698521470, 'jhohn@gmail.com', 'Cash on Delivery', '2023-01-31 07:26:24', 'Delivered', 'Delivered', '2023-02-10 05:10:06'),
(8, 8, 455386972, '1', 's', '2', '1', '1', 1, 1, 'dubenitin445@gmail.com', 'Debit Card', '2023-01-31 07:26:24', 'On The Way', 'dsaf4\r\n\r\n', '2023-02-10 05:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div><font color=\"#202124\" face=\"arial, sans-serif\">Our mission declares our purpose of existence as a company and our objectives.</font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><br></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\">To give every customer much more than what he/she asks for in terms of quality, selection, value for money and customer service, by understanding local tastes and preferences and innovating constantly to eventually provide an unmatched experience in jewellery shopping.</font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'Bardoli,Near Railway Station', 'info@gmail.com', 8574415263, NULL, '10:30 am to 8:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblreview`
--

CREATE TABLE `tblreview` (
  `ID` int(10) NOT NULL,
  `ProductID` int(10) DEFAULT NULL,
  `ReviewTitle` varchar(200) DEFAULT NULL,
  `Review` mediumtext DEFAULT NULL,
  `UserId` int(5) DEFAULT NULL,
  `DateofReview` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblreview`
--

INSERT INTO `tblreview` (`ID`, `ProductID`, `ReviewTitle`, `Review`, `UserId`, `DateofReview`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 1, 'Great Product', 'nice product I have great expierince', 2, '2023-02-10 05:12:12', 'Review Accept', 'Review Accept', '2023-01-31 07:26:24'),
(2, 3, 'Great Expierence', 'nice product', 1, '2023-02-10 05:12:27', 'Review Reject', 'Review Reject', '2023-01-31 07:26:24'),
(5, 26, 'test', 'Value for Money. Excellent Product', 5, '2023-02-10 05:12:30', 'Review Accept', 'Review Accept', '2023-01-31 07:26:24'),
(6, 26, 'Nice Product', 'Nice Prodouct', 5, '2023-02-10 05:12:32', 'Review Accept', 'Review Accept', '2023-01-31 07:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

CREATE TABLE `tblsubscriber` (
  `ID` int(5) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`ID`, `Email`, `DateofSub`) VALUES
(1, 'ani@gmail.com', '2023-01-31 07:26:24'),
(2, 'rahul@gmail.com', '2023-01-31 07:26:24'),
(6, 'j@gmail.com', '2023-01-31 07:26:24'),
(7, 'cfsdf@gmail.com', '2023-01-31 07:26:24'),
(8, 'money@gmail.com', '2023-01-31 07:26:24'),
(9, 'anujk@gmail.com', '2023-01-31 07:26:24'),
(10, 'jh@gmail.com', '2023-01-31 07:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(1, '680013087', 'order confirmed', 'Order Confirmed', '2023-01-31 07:26:24', NULL),
(2, '680013087', 'Mobile Pickup', 'Mobile Pickup', '2023-01-31 07:26:24', NULL),
(3, '680013087', 'Mobile Pickup', 'Mobile Pickup', '2023-01-31 07:26:24', NULL),
(4, '680013087', 'Mobile Pickup', 'Mobile Pickup', '2023-01-31 07:26:24', NULL),
(5, '756641148', 'Order Confirmed', 'Order Confirmed', '2023-01-31 07:26:24', NULL),
(6, '756641148', 'Mobile Pickup', 'Mobile Pickup', '2023-01-31 07:26:24', NULL),
(7, '756641148', 'On the way', 'On The Way', '2023-01-31 07:26:24', NULL),
(8, '756641148', 'Delivered', 'Mobile Delivered', '2023-01-31 07:26:24', NULL),
(9, '501768737', 'Order is confirmed', 'Order Confirmed', '2023-01-31 07:26:24', NULL),
(10, '501768737', 'In transit', 'On The Way', '2023-01-31 07:26:24', NULL),
(11, '501768737', 'Delivered', 'On The Way', '2023-01-31 07:26:24', NULL),
(12, '680013087', 'delivered', 'Mobile Delivered', '2023-01-31 07:26:24', NULL),
(13, '424108694', 'delivery boy take the order', 'Pickup', '2023-01-31 07:26:24', NULL),
(14, '424108694', 'Delivery boy is on the way', 'On The Way', '2023-01-31 07:26:24', NULL),
(15, '424108694', 'Your order has been delivered', 'Delivered', '2023-01-31 07:26:24', NULL),
(16, '624951460', 'Order Confiremd', 'Order Confirmed', '2023-01-31 07:26:24', NULL),
(17, '624951460', 'Order Has been pickup', 'Pickup', '2023-01-31 07:26:24', NULL),
(18, '624951460', 'Delivery boy is on the way', 'On The Way', '2023-01-31 07:26:24', NULL),
(19, '624951460', 'Order has been deliver', 'Delivered', '2023-01-31 07:26:24', NULL),
(20, '260984104', 'Order Cancelled', 'Order Cancelled', '2023-01-31 07:26:24', NULL),
(21, '260984104', 'tyty', 'Order Cancelled', '2023-01-31 07:26:24', 1),
(22, '424108694', 'gthth', 'Order Cancelled', '2023-01-31 07:26:24', 1),
(23, '284289657', 'cancel', 'Order Cancelled', '2023-01-31 07:26:24', 1),
(24, '224122905', 'Order Has been Confirmed', 'Order Confirmed', '2023-01-31 07:26:24', NULL),
(25, '819293354', 'Order Has been corfiremed', 'Order Confirmed', '2023-01-31 07:26:24', NULL),
(26, '819293354', 'Order picked up', 'Pickup', '2022-02-12 11:34:26', NULL),
(27, '819293354', 'Delivered', 'Delivered', '2022-02-12 11:35:02', NULL),
(28, '455386972', 'fsdfa', 'Order Confirmed', '2023-02-09 17:41:54', NULL),
(29, '455386972', 'dsaf4\r\n\r\n', 'On The Way', '2023-02-09 17:42:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `regDate`) VALUES
(1, 'Anuj Kumar', NULL, 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', '2023-02-04 19:30:50'),
(2, 'Amit ', NULL, 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '2023-03-15 17:21:22'),
(3, 'hg', NULL, 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '2023-04-29 09:30:32'),
(4, 'hhkhj', 'jkh', 'g@gmail.com', 9089879765, '202cb962ac59075b964b07152d234b70', '2023-02-01 10:05:17'),
(5, 'sarita', 'pandey', 'sar@gmail.com', 7987979797, '202cb962ac59075b964b07152d234b70', '2023-02-02 06:12:53'),
(6, 'Manish ', 'Sisodia', 'manish@gmail.com', 8979898989, '202cb962ac59075b964b07152d234b70', '2023-02-05 09:49:18'),
(7, 'John', 'Doe', 'johdoe@gmail.com', 1478523690, 'f925916e2754e5e03f75dd58a5733251', '2023-02-12 11:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `UserId`, `ProductId`, `postingDate`) VALUES
(6, 5, 27, '2023-02-07 09:32:46'),
(10, 7, 28, '2023-02-12 11:31:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblreview`
--
ALTER TABLE `tblreview`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
