-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 08:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`) VALUES
(2, 'doll'),
(3, 'arts\r\n'),
(4, 'gift articles\r\n'),
(5, 'greeting cards\r\n'),
(6, 'files'),
(7, 'handbags'),
(8, 'wallet'),
(9, 'beauty products');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `customerid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`customerid`, `name`, `email`, `message`) VALUES
(13, 'a', 'a@wsss', 's'),
(14, '', '', ''),
(15, 'a', 'ali@gmail.com', 'a'),
(16, 'qw', 'w@qsa', 'qw'),
(17, 'asas', 'sa@qsqsa', 'ssa'),
(18, 'a', 'as@a', 'sa'),
(19, 'abbas', 'abbas@gmail.com', 's');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `shopid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `email`, `password`, `shopid`) VALUES
(1, 'yasir@gmail.com', '123', 1),
(2, 'hasan@gmail.com', '132', 2),
(10, 'amir@gmail.com', '123', 3),
(12, 'ali@gmail.com', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderno` int(11) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `totalprice` int(244) NOT NULL,
  `date` date DEFAULT current_timestamp(),
  `customernumber` int(100) NOT NULL,
  `addressDetail` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `billing method` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderno`, `customername`, `product`, `totalprice`, `date`, `customernumber`, `addressDetail`, `quantity`, `billing method`) VALUES
(14, 'yasir', 'Hair Care Product', 3000, '2023-06-23', 123, 'block c north nazimabad', 2, 'credit card'),
(34, 'abbas', 'Hair Care Product', 3000, '2023-06-26', 2147483647, 'block E north nazimabad', 2, 'cash on delivery');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` int(200) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `shopID` int(255) NOT NULL,
  `stock` int(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `desc`, `image`, `shopID`, `stock`, `status`, `category`) VALUES
(1000018, 'Doll', 100, 'A doll is a toy that looks like a small person, often a baby. When kids play with dolls, they might dress them up, push them in toy strollers, and have pretend tea parties with them.\r\nA doll is a toy ', '../productimages/doll1.jpg', 1, 100, 0, 2),
(1000019, 'Doll', 1000, 'A doll is a toy that looks like a small person, often a baby. When kids play with dolls, they might dress them up, push them in toy strollers, and have pretend tea parties with them.A doll is a toy th', '../productimages/doll2.webp', 2, 100, 0, 2),
(1000020, 'Doll', 1000, 'A doll is a toy that looks like a small person, often a baby. When kids play with dolls, they might dress them up, push them in toy strollers, and have pretend tea parties with them.A doll is a toy th', '../productimages/doll3.webp', 3, 100, 0, 2),
(1000021, 'Painting Supplies', 750, 'The arts, also called fine arts, modes of expression that use skill or imagination in the creation of aesthetic objects, environments, or experiences that can be shared with others.\r\nThe arts, also ca', '../productimages/arts4.jpg', 1, 75, 0, 3),
(1000022, 'Painting Supplies', 2000, 'The arts, also called fine arts, modes of expression that use skill or imagination in the creation of aesthetic objects, environments, or experiences that can be shared with others.The arts, also call', '../productimages/arts5.webp', 2, 50, 0, 3),
(1000023, 'Drawing Supplies', 1000, 'The arts, also called fine arts, modes of expression that use skill or imagination in the creation of aesthetic objects, environments, or experiences that can be shared with others.The arts, also call', '../productimages/arts1.jpg', 2, 100, 0, 3),
(1000024, 'Sketching and Illustration', 1200, 'The arts, also called fine arts, modes of expression that use skill or imagination in the creation of aesthetic objects, environments, or experiences that can be shared with others.The arts, also call', '../productimages/arts2.jpeg', 3, 100, 0, 3),
(1000025, 'Craft and DIY Supplies', 1500, 'The arts, also called fine arts, modes of expression that use skill or imagination in the creation of aesthetic objects, environments, or experiences that can be shared with others.The arts, also call', '../productimages/arts3.jpg', 2, 50, 0, 3),
(1000026, 'Art', 1200, 'A gift is an offering of money or assets made by one person to another in which nothing of comparable value is given, or expected to be given, in return. Some gifts are tax-free for both the donor and', '../productimages/ga1.avif', 2, 123, 0, 3),
(1000027, 'Artistic Stationery', 2000, 'A gift is an offering of money or assets made by one person to another in which nothing of comparable value is given, or expected to be given, in return. Some gifts are tax-free for both the donor and', '../productimages/ga2.jpg', 2, 111, 0, 4),
(1000028, 'Art Supplies and Kits', 1300, 'A gift is an offering of money or assets made by one person to another in which nothing of comparable value is given, or expected to be given, in return. Some gifts are tax-free for both the donor and', '../productimages/ga3.jpg', 3, 122, 0, 4),
(1000029, 'Happy Birthday card', 700, 'A gift card is a prepaid debit card that is loaded with a specific amount, which can then be used to make purchases and other financial transactions.\r\nA gift card is a prepaid debit card that is loade', '../productimages/gc1.jpg', 1, 70, 0, 5),
(1000030, 'Happy Anniversary  card', 700, 'A gift card is a prepaid debit card that is loaded with a specific amount, which can then be used to make purchases and other financial transactions.\r\nA gift card is a prepaid debit card that is loade', '../productimages/gc2.jpg', 3, 50, 0, 5),
(1000031, 'Wedding Invitation card', 700, 'A gift card is a prepaid debit card that is loaded with a specific amount, which can then be used to make purchases and other financial transactions.\r\nA gift card is a prepaid debit card that is loade', '../productimages/gc3.jpg', 1, 123, 0, 5),
(1000032, 'File Folders and Organizers', 3000, 'A file is a container in a computer system for storing information. Files used in computers are similar in features to that of paper documents used in library and office files.A file is a container in', '../productimages/file1.jpeg', 1, 123, 0, 6),
(1000033, 'Presentation Folders', 2500, 'A file is a container in a computer system for storing information. Files used in computers are similar in features to that of paper documents used in library and office files.A file is a container in', '../productimages/file2.jpg', 2, 250, 0, 6),
(1000034, 'File Boxes and Storage', 2000, 'A file is a container in a computer system for storing information. Files used in computers are similar in features to that of paper documents used in library and office files.A file is a container in', '../productimages/file3.jpg', 3, 200, 0, 6),
(1000035, 'Presentation', 1000, 'A file is a container in a computer system for storing information. Files used in computers are similar in features to that of paper documents used in library and office files.A file is a container in', '../productimages/file4.jpg', 3, 1000, 0, 6),
(1000040, 'Bifold Wallet', 1500, 'A wallet is a small, typically folding case used to carry and store items such as cash, credit cards, identification documents, and other small personal items. Wallets are commonly made of leather, fa', '../productimages/leatherwallet.jpg', 2, 1000, 0, 8),
(1000041, 'Trifold Wallet', 2000, 'A wallet is a small, typically folding case used to carry and store items such as cash, credit cards, identification documents, and other small personal items. Wallets are commonly made of leather, fa', '../productimages/wallet1.jpg', 3, 200, 0, 8),
(1000042, 'Travel Wallet', 4000, 'Travel wallets are designed with additional storage and organization features to accommodate passports, boarding passes, travel documents, and currency from different countries. They often have multip', '../productimages/w.jpg', 1, 40, 0, 8),
(1000043, 'Satchel', 5000, 'Satchels are structured bags with a top handle and a detachable shoulder strap. They typically have a flap closure and are known for their classic and sophisticated style. Satchels are often used for ', '../productimages/hb3.webp', 1, 1000, 0, 7),
(1000044, 'Shoulder', 1430, 'Shoulder bags have a single or double strap that is worn over the shoulder. They come in different sizes, from small to large, and can be versatile for both casual and formal occasions.', '../productimages/hb2.webp', 2, 200, 0, 7),
(1000045, 'Crossbody Bag', 1000, 'Crossbody bags have a long strap that is worn across the body, allowing for hands-free carrying. They are compact and generally have a zippered or flap closure. Crossbody bags are popular for their co', '../productimages/hb1.jpg', 3, 200, 0, 7),
(1000046, 'Hair Care Product', 1500, 'Hair care products cater to the health and maintenance of hair. They include shampoo, conditioner, hair masks, serums, oils, styling products (such as hairspray, mousse, gel), and tools (such as haird', '../productimages/bp2.webp', 2, 200, 0, 9),
(1000047, 'Fragrance', 2200, 'Fragrances, such as perfumes and colognes, are used to add pleasant scents to the body. They come in a variety of forms, including sprays, oils, and solid perfumes, and are applied to the skin or clot', '../productimages/bp1.webp', 1, 299, 0, 9),
(1000048, 'Skincare', 2340, 'Skincare products include cleansers, moisturizers, serums, toners, exfoliators, masks, and sunscreen. They are designed to cleanse, hydrate, nourish, and protect the skin, promoting a healthy complexi', '../productimages/bp3.webp', 3, 1000, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(6) UNSIGNED NOT NULL,
  `RoleName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `RoleName`) VALUES
(1, 'Admin'),
(2, 'Dealer'),
(3, 'Employee'),
(4, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `shopname` varchar(255) NOT NULL,
  `shopaddress` varchar(255) NOT NULL,
  `dealerID` int(255) NOT NULL,
  `shopdesc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `shopname`, `shopaddress`, `dealerID`, `shopdesc`) VALUES
(1, 'Burhani traders', 'Hydri', 9, 'Very good shop. Hardware shop :)))'),
(2, 'Hussaini bookstore', 'hydri', 11, 'book store'),
(3, 'abbas shop', 'sas', 2, 'sasa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Pass` varchar(100) NOT NULL,
  `RoleID` int(20) NOT NULL,
  `FName` varchar(100) NOT NULL,
  `LName` varchar(100) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Email`, `Pass`, `RoleID`, `FName`, `LName`, `Gender`, `Contact`) VALUES
(2, 'z@gmail.com', ' 123 ', 2, 'zain', 'abid', ' M', ' 03462185700 '),
(9, 'a@gmail.com', ' 123 ', 2, 'abbas', ' hasnain', ' M ', ' 03249213852 '),
(11, 'f@gmail.com', ' 123 ', 2, 'fatima', ' aliasgher', ' F ', ' 03003021039999 '),
(12, 'admin@gmail.com', '123', 1, '', '', '', ''),
(16, 'af@gmail.com', '123', 4, 'arsalan', 'fahad', 'M', '13424324'),
(17, 'y@gmail.com', '123', 4, 'yasir', 'ahmed', 'M', '2321423');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderno`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000049;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
