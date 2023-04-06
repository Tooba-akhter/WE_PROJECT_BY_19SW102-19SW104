-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 07:16 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `checkout_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `name`, `address`, `mobile`, `checkout_id`) VALUES
(1, 3, 'ilsa', 'Near Bilal Masjid Bungalow No c 130 phase 1 Kohsar, Hyderabad  ,71000,pakistan', '7526423445', '607daf461b8fd'),
(2, 3, 'ok', 'sefdgfh, dgdfgfh ,346456,dfhfghgh', '7123456789', '607dba5dde008'),
(3, 3, 'sdfd', 'dfgdfhgf, sdgdfh ,4,sgdfh', '7123456789', '607dbabf7894e'),
(4, 3, 'ilsa', 'Near Bilal Masjid Bungalow No c 130 phase 1 Kohsar, Hyderabad ,71000,pakistan', '7526423445', '607dc586703ba'),
(5, 3, 'ilsa', 'Near Bilal Masjid Bungalow No c 130 phase 1 Kohsar, Hyderabad ,71000,pakistan', '7526423445', '607e2ba0412f3'),
(6, 3, 'ilsa', 'Near Bilal Masjid Bungalow No c 130 phase 1 Kohsar, Hyderabad ,71000,pakistan', '7526423445', '607e336a6b6f7'),
(7, 3, 'ilsa', 'Near Bilal Masjid Bungalow No c 130 phase 1 Kohsar, Hyderabad ,71000,pakistan', '7526423445', '607e378dc08a7'),
(8, 3, 'ilsa', 'Near Bilal Masjid Bungalow No c 130 phase 1 Kohsar, Hyderabad ,71000,pakistan', '7526423445', '607e4e1d3d224');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `1` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`1`, `username`, `password`) VALUES
(1, 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(100) NOT NULL,
  `book_name` varchar(300) NOT NULL,
  `img` varchar(300) NOT NULL,
  `author` varchar(200) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `price` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `img`, `author`, `isbn`, `price`, `category`) VALUES
(1, 'PIR-E-KAMIL', 'images\\pwe.jpg', 'Umera Ahmad', '', '300', 'HRB'),
(2, 'A THOUSAND SPLENDID SUNS', 'images\\spl.jpg', 'Khaled Hosseini', '', '200', 'HRB'),
(3, 'THE STORY OF THE QURAN', 'images\\quran.jpg', 'Khaled Hosseini', '', '300', 'HRB'),
(4, 'THE GREAT GATSBY', 'images\\The Great Gatsby.jpg', ' F. Scott Fitzgerald.', '', '300', 'HRB'),
(5, 'Pir-e-Kamil', 'images\\pwe.jpg', 'Umera Ahmad', '', '300', 'RA'),
(6, 'A Thousand Splendid Suns ', 'images\\spl.jpg', 'Khaled Hosseini', '', '300', 'RA'),
(7, 'THE STORY OF THE QURAN', 'images\\quran.jpg', 'Khaled Hosseini', '', '350', 'RA'),
(8, 'A Thousand Splendid Suns ', 'images\\The Great Gatsby.jpg\r\n', ' F. Scott Fitzgerald.', '', '300', 'RA'),
(9, 'PIR-E-KAMIL', 'images\\pwe.jpg', 'Umera Ahmad', '', '300', 'UN'),
(10, 'NAMAL', 'images\\Namal.jpg', 'Nimra Ahmed', '', '300', 'UN'),
(11, 'SHIKWA AND JAWAB-E-SHIKWA\r\n', 'images\\s.jpg', 'Dr. Iqbal', '', '300', 'UN'),
(12, 'AAB-E HAYAT', 'images\\abe.jpg', 'Umera Ahmad', '', '300', 'UN'),
(13, 'THE KITE RUNNER', 'images\\Kite-runner.jpg', 'KHALED HOSSEINI', '', '300', 'EN'),
(14, 'A THOUSAND SPLENDID SUNS', 'images\\spl.jpg', ' Khaled Hosseini', '', '300', 'EN'),
(15, 'THE ALCHEMIST', 'images\\The Alchemist.jpg', 'Paulo Coelho\r\n', '', '300', 'EN'),
(16, 'THE BOOK THIEF', 'images\\The Book Thief.jpg', 'Markus Zusak\r\n', '', '320', 'EN'),
(17, 'HUJJAJ BIN YOUSUF', 'images\\Hujjaj Bin Yousuf.jpg', 'Aslam Rahi', '', '300', 'IN'),
(18, 'MUHAMMAD BIN QASIM', 'images\\Muhammad.jpg', 'Naseem Hijazi', '', '200', 'IN'),
(19, 'THE ADVICES OF HAZRAT ALI', 'images\\Ali.jpg', ' Khanqah Sheikh Zakariyya (Rah) ', '', '200', 'IN'),
(20, 'THE STORY OF THE QURAN', 'images\\quran.jpg', 'Ingrid Mattson\r\n', '', '300', 'IN'),
(21, 'THE LORD OF THE RINGS', 'images\\The Lord of the Rings.jpg', 'J. R. R. Tolkien', '', '200', 'FF'),
(22, 'HARRY POTTER', 'images\\harry.jpg', 'J. K. Rowling', '', '200', 'FF'),
(23, 'A GAME OF THRONES', 'images\\A Game of Thrones.jpg', 'George R. R. Martin\r\n', '', '200', 'FF'),
(24, 'THE GREAT GATSBY', 'images\\The Great Gatsby.jpg', 'F. Scott Fitzgerald\r\n', '', '300', 'FF');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `order_id` int(255) NOT NULL,
  `book_id` varchar(100) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`order_id`, `book_id`, `book_name`, `img`, `price`, `total_price`, `quantity`, `user_id`) VALUES
(184, '2', 'A THOUSAND SPLENDID SUNS', '\n                      imagesspl.jpg', '200', '400', '2', 22),
(186, '4', 'THE GREAT GATSBY', '\n                      imagesThe Great Gatsby.jpg', '300', '600', '2', 22),
(210, '3', 'THE STORY OF THE QURAN', '\n                      imagesquran.jpg', '300', '300', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(100) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`, `name`, `mobile`, `image`) VALUES
(1, 'toobaakhter114@gmail.com', '12345', 'Tooba', '8102468535', ''),
(2, 'ilsa@gmail.com', '54321', 'ilsa', '8102268535', ''),
(3, 'reejasarfaraz@gmail.com', '$2y$10$FGHFGhcbedYP4r01UdL3DuWLwqMiG2YPRrMjP4NQm.v4EHpGSC4my', 'Reeja', '9375478154', ''),
(4, 'usamakhan@gmail.com', '$2y$10$0yNyffYEUiWXkg4BeZ.pR.P6SfwF0nu66wRHvgvz7Ot2faaP74iTO', 'usama', '8623562782', ''),
(5, 'uk@gmail.com', '$2y$10$uGH9vBwGEYKUIPGzsFcUFut9e2q2dWsgzyhpBIK2ugAGJyBntAtiK', 'umar', '7654321893', ''),
(6, 'hamza@gmail.com', '$2y$10$iTFEU76mZZyvuf4fPRe6FO0SUUDRn7gSZlhIuiOoLns5XDQGrDCoW', 'Hamza', '8937463434', ''),
(7, 'hamza3@gmail.com', '$2y$10$k0uIAtJD7MkytARuI8I4H.g5fA4GRkVSuCp0gT.hQRA10siAmItZ2', 'Aliiiiii', '9783573245', ''),
(8, 'toobaarain0987@gmail.com', '$2y$10$9vYJcAYFfknY4ia9zrBRJOoR6Blr9hvtVWoO1ZdUdmbY7D4QxMfwi', 'toooba', '9374872543', ''),
(10, 'toobaarain0298@gmail.com', '$2y$10$3GKIY0rAHekboH5/3OeLSeVZZCweKcQGCIJ3i/wvIsrcutiQgj/AW', 'TOOBA', '8947383424', ''),
(11, 'aabaddd123@gmail.com', '$2y$10$G57FWnHb8N3BntXvkG0i9.xWzuel66baEQcvtTbRwGuEmydeqxMG.', 'Abaad', '8266981811', ''),
(12, 'ilsanaeem@myemail.com', '$2y$10$x/c0hnMM5zQmUlGaY6Sx9OL0ITExymodFOqChQMWpSAvraQijmbWu', 'ilsa', '8234234567', ''),
(13, 'toobaaa123@gmail.com', '$2y$10$Pt.6dCzOh.xzYHh04TBLWORafDHrZ8jW6FpjrI4Za8qn1wwSmGxmq', 'tooobaa', '8765442923', ''),
(14, 'usaaamaa123@gmail.com', '$2y$10$Yzt0owfp68aWDrpg2wx.9.gSTgR183j9ZshoAlV9utHm0vJ9dw1li', 'USAMA', '8776653778', ''),
(15, 'hagfau123@gmail.com', '$2y$10$PuzhxIdeKG/BJJw4.gqM0.nCcSS/gaZdHp3Sw.ymP8FqDeoD5F3I6', 'yoobbbja', '9876524721', ''),
(16, 'toobaa124@gmail.com', '$2y$10$k9tvQJqHuwQaTSQK4/bEXe04lkDToGxcgI/nEDiB6yRgQ32ZO6Gpa', 'iiibbaa', '9781686991', ''),
(17, 'uslhihjk@gmail.com', '$2y$10$B45IOv/LLTpwFEAe2DJ4TOuU/5b.xi9FdOdWer3RLaZrJgpNYcTu2', 'usammmmaa', '9878221756', ''),
(18, 'toobaarain37@yahoo.com', '$2y$10$jio9AZsHxCsR/f0CVZj1POlr3SdfZiHBBuPeL.9gmU7j9FsPVkvjS', 'TOOBAA', '8765387468', ''),
(19, 'toobaarain0984@gmail.com', '$2y$10$G/POMSBuZleu9DAkQ2HONeA98.6oLd5KWiK/YowR.OeehUS5s7PZS', 'toobaarain', '8783213434', ''),
(20, 'toobaakhter11455@gmail.com', '$2y$10$S/k4HD5ktENQE0lpJDO6GusDb97tW3E.tKm6PcZ4KTGCSHRZxQ6UC', 'Tooba', '9375466781', ''),
(21, 'yusrrraa@gmail.com', '$2y$10$YYmVGjNk1c2g4rSj.JK.4uMyV8RaQUWJbVYr8u3m5Pt1BmrcsOPym', 'Tooba', '8623564482', ''),
(22, 'toobaakhter1134@gmail.com', '$2y$10$A6cbjZjv9.xoy8a0w3CCtOkaVWvdy/a/XJ30I.W3mbdMYnagU85MS', 'Toobaarainn', '9375478143', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `order_id` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `order_id`, `status`) VALUES
(1, '2529470116', 0),
(2, '18902516446', 0),
(3, '83510316', 0),
(4, '15516557966', 0),
(5, '14214241326', 0),
(6, '8737475696', 0),
(7, '1269681076', 0),
(8, '19841254006', 0),
(9, '224034216', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `sno` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `book_id` varchar(200) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `img` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `date_of_purchase` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`sno`, `order_id`, `book_id`, `book_name`, `img`, `price`, `quantity`, `total_price`, `user_id`, `date_of_purchase`, `status`, `payment_method`, `paid`) VALUES
(109, '8863247216', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-07 03:47:28', 'dispatched', 'cod', 'not paid'),
(145, '11041984546', '9', 'India At Risk', 'book_img/5.jpg', '199', 3, '597', '6', '2019-11-13 08:15:33', 'order placed', 'COD', 'not paid'),
(146, '782806996', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-13 08:15:33', 'order placed', 'COD', 'not paid'),
(147, '21048116696', '10', 'The Red Sari', 'book_img/6.jpg', '135', 1, '135', '6', '2019-11-13 08:15:33', 'order placed', 'COD', 'not paid'),
(148, '20713111446', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '6', '2019-11-13 08:15:34', 'order placed', 'COD', 'not paid'),
(149, '13640120786', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 1, '150', '6', '2019-11-13 08:15:34', 'order placed', 'COD', 'not paid'),
(150, '4863272826', '13', 'Siddartha', 'book_img/9.jpg', '299', 1, '299', '6', '2019-11-13 08:15:34', 'order placed', 'COD', 'not paid'),
(151, '5041031586', '20', 'One Word Kill', 'book_img/16.jpg', '180', 1, '180', '6', '2019-11-13 08:15:34', 'order placed', 'COD', 'not paid'),
(152, '15854008096', '21', 'Jurrasic Park', 'book_img/17.jpg', '240', 1, '240', '6', '2019-11-13 08:15:34', 'order placed', 'COD', 'not paid'),
(153, '17807970976', '22', 'The Hobbit', 'book_img/18.jpg', '340', 1, '340', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(154, '8621916866', '23', 'The Hunger Games', 'book_img/19.jpg', '310', 1, '310', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(155, '11456928046', '24', 'The Fellowship of the Ring ', 'book_img/20.jpg', '300', 1, '300', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(156, '12636777536', '25', 'The Da Vinci Code', 'book_img/21.jpg', '230', 1, '230', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(157, '11118779156', '27', 'On Becoming a Leader', 'book_img/22.jpg', '230', 1, '230', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(158, '9558282956', '28', 'Financial Intelligence', 'book_img/23.jpg', '250', 1, '250', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(159, '7388442386', '29', ' Growing a Business', 'book_img/24.jpg', '260', 1, '260', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(160, '11401435646', '30', 'What Management Is', 'book_img/25.jpg', '140', 1, '140', '6', '2019-11-13 08:15:35', 'order placed', 'COD', 'not paid'),
(161, '5239523826', '31', 'Rich Dad Poor Dad:', 'book_img/26.jpg', '210', 1, '210', '6', '2019-11-13 08:15:36', 'order placed', 'COD', 'not paid'),
(162, '17125408746', '32', 'India in the Age of Ideas', 'book_img/27.jpg', '230', 1, '230', '6', '2019-11-13 08:15:36', 'order placed', 'COD', 'not paid'),
(163, '64342475215', '1', 'Let Us C++', 'book_img/index.jpg', '200', 1, '200', '15', '2019-11-13 10:06:15', 'order placed', 'COD', 'not paid'),
(164, '174822352415', '2', 'Java Programming', 'book_img/2.jpg', '300', 1, '300', '15', '2019-11-13 10:06:16', 'order placed', 'COD', 'not paid'),
(165, '103637665715', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '15', '2019-11-13 10:10:03', 'order placed', 'COD', 'not paid'),
(166, '189943712615', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '15', '2019-11-13 10:10:03', 'order placed', 'COD', 'not paid'),
(167, '52289643015', '10', 'The Red Sari', 'book_img/6.jpg', '135', 1, '135', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(168, '69839812215', '23', 'The Hunger Games', 'book_img/19.jpg', '310', 1, '310', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(169, '29455775615', '28', 'Financial Intelligence', 'book_img/23.jpg', '250', 1, '250', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(170, '191834300715', '29', ' Growing a Business', 'book_img/24.jpg', '260', 1, '260', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(171, '190575864715', '30', 'What Management Is', 'book_img/25.jpg', '140', 1, '140', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(172, '92182947915', '31', 'Rich Dad Poor Dad:', 'book_img/26.jpg', '210', 1, '210', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(173, '35142164315', '32', 'India in the Age of Ideas', 'book_img/27.jpg', '230', 1, '230', '15', '2019-11-13 10:10:04', 'order placed', 'COD', 'not paid'),
(174, '11154499866', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '6', '2019-11-15 03:44:27', 'order placed', 'COD', 'not paid'),
(175, '18496391086', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 1, '150', '6', '2019-11-15 03:44:27', 'order placed', 'COD', 'not paid'),
(176, '3085644356', '13', 'Siddartha', 'book_img/9.jpg', '299', 1, '299', '6', '2019-11-15 03:44:27', 'order placed', 'COD', 'not paid'),
(177, '20054059966', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '6', '2019-11-15 03:44:27', 'order placed', 'COD', 'not paid'),
(178, '12046453436', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(179, '2516836576', '10', 'The Red Sari', 'book_img/6.jpg', '135', 1, '135', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(180, '8266726596', '20', 'One Word Kill', 'book_img/16.jpg', '180', 1, '180', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(181, '16809675326', '21', 'Jurrasic Park', 'book_img/17.jpg', '240', 1, '240', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(182, '8067529886', '22', 'The Hobbit', 'book_img/18.jpg', '340', 1, '340', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(183, '21353921796', '23', 'The Hunger Games', 'book_img/19.jpg', '310', 1, '310', '6', '2019-11-15 03:44:28', 'order placed', 'COD', 'not paid'),
(184, '19895802646', '24', 'The Fellowship of the Ring ', 'book_img/20.jpg', '300', 1, '300', '6', '2019-11-15 03:44:29', 'order placed', 'COD', 'not paid'),
(185, '14835411426', '25', 'The Da Vinci Code', 'book_img/21.jpg', '230', 1, '230', '6', '2019-11-15 03:44:29', 'order placed', 'COD', 'not paid'),
(186, '4755734316', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-16 11:11:37', 'order placed', 'COD', 'not paid'),
(187, '183425069168', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '68', '2019-11-16 01:30:25', 'order placed', 'COD', 'not paid'),
(188, '2373628566', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-16 10:59:43', 'order placed', 'COD', 'not paid'),
(189, '72373538368', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '68', '2019-11-20 03:28:13', 'order placed', 'COD', 'not paid'),
(190, '189685380868', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 1, '150', '68', '2019-11-20 03:28:14', 'order placed', 'COD', 'not paid'),
(191, '187743190368', '13', 'Siddartha', 'book_img/9.jpg', '299', 1, '299', '68', '2019-11-20 03:28:14', 'order placed', 'COD', 'not paid'),
(192, '211153636668', '20', 'One Word Kill', 'book_img/16.jpg', '180', 1, '180', '68', '2019-11-20 03:28:14', 'order placed', 'COD', 'not paid'),
(193, '6210755386', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-21 09:53:02', 'order placed', 'COD', 'not paid'),
(194, '11224806126', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '6', '2019-11-21 09:53:03', 'order placed', 'COD', 'not paid'),
(195, '5567717496', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '6', '2019-11-22 09:25:15', 'order placed', 'COD', 'not paid'),
(196, '15712707176', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-25 02:29:16', 'order placed', 'COD', 'not paid'),
(197, '4219326396', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '6', '2019-11-25 02:29:17', 'order placed', 'COD', 'not paid'),
(198, '4913103706', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-25 02:29:44', 'order placed', 'COD', 'not paid'),
(199, '10836957596', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '6', '2019-11-25 02:29:44', 'order placed', 'COD', 'not paid'),
(200, '86335456', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-11-25 02:30:30', 'order placed', 'COD', 'not paid'),
(201, '10750991666', '8', 'Hello World', 'book_img/3.jpg', '300', 3, '900', '6', '2019-12-12 08:18:51', 'order placed', 'COD', 'not paid'),
(202, '13635152566', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 1, '150', '6', '2019-12-13 12:12:21', 'order placed', 'COD', 'not paid'),
(203, '5761332716', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '6', '2019-12-13 12:12:23', 'order placed', 'COD', 'not paid'),
(204, '2529470116', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-12-15 09:19:24', '0', 'COD', 'not paid'),
(205, '18902516446', '9', 'India At Risk', 'book_img/5.jpg', '199', 1, '199', '6', '2019-12-15 09:19:24', '0', 'COD', 'not paid'),
(206, '83510316', '9', 'India At Risk', 'book_img/5.jpg', '199', 3, '597', '6', '2019-12-16 08:17:13', 'order placed', 'COD', 'not paid'),
(207, '15516557966', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-12-16 08:26:21', 'order placed', 'COD', 'not paid'),
(208, '14214241326', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 1, '150', '6', '2019-12-16 08:26:21', 'order placed', 'COD', 'not paid'),
(209, '8737475696', '8', 'Hello World', 'book_img/3.jpg', '300', 1, '300', '6', '2019-12-16 08:29:48', 'order placed', 'COD', 'not paid'),
(210, '1269681076', '20', 'One Word Kill', 'book_img/16.jpg', '180', 1, '180', '6', '2019-12-16 08:29:49', 'order placed', 'COD', 'not paid'),
(211, '19841254006', '8', 'Hello World', 'book_img/3.jpg', '300', 3, '900', '6', '2019-12-20 09:17:38', 'order placed', 'COD', 'not paid'),
(212, '224034216', '9', 'India At Risk', 'book_img/5.jpg', '199', 3, '597', '6', '2019-12-20 09:17:39', 'order placed', 'COD', 'not paid'),
(213, '1206008503', '2', 'A THOUSAND SPLENDID SUNS', '\n                      imagesspl.jpg', '200', 2, '400', '3', 'd', 'order placed', 'COD', 'no'),
(214, '17708031743', '1', 'PIR-E-KAMIL', '\n                      imagespwe.jpg', '300', 1, '300', '3', 'd', 'order placed', 'COD', 'no'),
(215, '2948789713', '4', 'THE GREAT GATSBY', '\n                      imagesThe Great Gatsby.jpg', '300', 1, '300', '3', 'd', 'order placed', 'COD', 'no'),
(216, '12981502333', '4', 'THE GREAT GATSBY', '\n                      imagesThe Great Gatsby.jpg', '300', 1, '300', '3', 'd', 'order placed', 'COD', 'no'),
(217, '18558619603', '3', 'THE STORY OF THE QURAN', '\n                      imagesquran.jpg', '300', 1, '300', '3', 'd', 'order placed', 'COD', 'no'),
(218, '1629900053', '', '', '', '300', 1, '300', '3', 'd', 'order placed', 'COD', 'no'),
(219, '3702390413', '2', 'A THOUSAND SPLENDID SUNS', '\n                      imagesspl.jpg', '200', 2, '400', '3', 'd', 'order placed', 'COD', 'no'),
(220, '16114560023', '1', 'PIR-E-KAMIL', '\n                      imagespwe.jpg', '300', 2, '600', '3', 'd', 'order placed', 'COD', 'no'),
(221, '19880749363', '4', 'THE GREAT GATSBY', '\n                      imagesThe Great Gatsby.jpg', '300', 1, '300', '3', 'd', 'order placed', 'COD', 'no'),
(222, '1213306943', '2', 'A THOUSAND SPLENDID SUNS', '\n                      imagesspl.jpg', '200', 2, '400', '3', 'd', 'order placed', 'COD', 'no'),
(223, '5510670853', '4', 'THE GREAT GATSBY', '\n                      imagesThe Great Gatsby.jpg', '300', 2, '600', '3', 'd', 'order placed', 'COD', 'no'),
(224, '5615966833', '3', 'THE STORY OF THE QURAN', '\n                      imagesquran.jpg', '300', 2, '600', '3', 'd', 'order placed', 'COD', 'no'),
(225, '4850904753', '2', 'A THOUSAND SPLENDID SUNS', '\n                      imagesspl.jpg', '200', 1, '200', '3', 'd', 'order placed', 'COD', 'no'),
(226, '17396547683', '1', 'PIR-E-KAMIL', '\n                      imagespwe.jpg', '300', 1, '300', '3', 'd', 'order placed', 'COD', 'no'),
(227, '11988595243', '4', 'THE GREAT GATSBY', '\n                      imagesThe Great Gatsby.jpg', '300', 1, '300', '3', 'd', 'order placed', 'COD', 'no'),
(228, '8323404193', '4', 'THE GREAT GATSBY', '\n                      imagesThe Great Gatsby.jpg', '300', 2, '600', '3', '2021-04-20 05:44:33', 'order placed', 'COD', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `order_address`
--

CREATE TABLE `order_address` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `order_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_address`
--

INSERT INTO `order_address` (`id`, `address_id`, `order_id`) VALUES
(33, 62, '21004194776'),
(35, 62, '5507091026'),
(37, 63, '6987051416'),
(39, 63, '7351886866'),
(41, 64, '284582786'),
(42, 64, '10399872906'),
(43, 65, '13768404546'),
(44, 65, '20903665016'),
(45, 66, '3761294866'),
(46, 66, '14350635376'),
(47, 67, '4243548136'),
(48, 67, '977382486'),
(49, 68, '13943412116'),
(50, 68, '20915830526'),
(51, 69, '12710186676'),
(52, 69, '9471330266'),
(53, 70, '5856422896'),
(54, 71, '17671839576'),
(55, 71, '9416560096'),
(56, 72, '15462964436'),
(57, 72, '12382301766'),
(58, 73, '19377360926'),
(59, 73, '1609846836'),
(60, 74, '17785745166'),
(61, 74, '5423326576'),
(62, 75, '2794617106'),
(63, 75, '5806830416'),
(64, 76, '8946740416'),
(65, 76, '17300896296'),
(66, 77, '12193551066'),
(67, 77, '5098158156'),
(68, 77, '16265554356'),
(69, 77, '9844966396'),
(70, 78, '8863247216'),
(71, 78, '9597790456'),
(72, 79, '9400129366'),
(73, 79, '892700136'),
(74, 80, '8614680556'),
(75, 80, '8614837116'),
(76, 81, '20923485936'),
(77, 81, '6001088506'),
(78, 81, '5652543036'),
(79, 82, '8242385656'),
(80, 83, '8152397306'),
(81, 84, '13005950056'),
(82, 85, '19808229136'),
(83, 86, '1892994106'),
(84, 87, '19830516256'),
(85, 88, '10952266056'),
(86, 88, '2405448486'),
(87, 89, '3691460676'),
(88, 90, '17236603756'),
(89, 91, '6326765106'),
(90, 91, '13281803846'),
(91, 91, '15110675986'),
(92, 92, '12798161966'),
(93, 92, '21378269626'),
(94, 92, '1368501246'),
(95, 92, '10597403986'),
(96, 93, '6046947056'),
(97, 93, '10954443216'),
(98, 94, '19777377606'),
(99, 94, '7159320456'),
(100, 95, '15562982016'),
(101, 95, '13686681346'),
(102, 95, '16683389526'),
(103, 96, '10073107046'),
(104, 96, '18884155326'),
(105, 96, '425563406'),
(106, 97, '11041984546'),
(107, 97, '782806996'),
(108, 97, '21048116696'),
(109, 97, '20713111446'),
(110, 97, '13640120786'),
(111, 97, '4863272826'),
(112, 97, '5041031586'),
(113, 97, '15854008096'),
(114, 97, '17807970976'),
(115, 97, '8621916866'),
(116, 97, '11456928046'),
(117, 97, '12636777536'),
(118, 97, '11118779156'),
(119, 97, '9558282956'),
(120, 97, '7388442386'),
(121, 97, '11401435646'),
(122, 97, '5239523826'),
(123, 97, '17125408746'),
(124, 98, '64342475215'),
(125, 98, '174822352415'),
(126, 99, '103637665715'),
(127, 99, '189943712615'),
(128, 99, '52289643015'),
(129, 99, '69839812215'),
(130, 99, '29455775615'),
(131, 99, '191834300715'),
(132, 99, '190575864715'),
(133, 99, '92182947915'),
(134, 99, '35142164315'),
(135, 100, '11154499866'),
(136, 100, '18496391086'),
(137, 100, '3085644356'),
(138, 100, '20054059966'),
(139, 100, '12046453436'),
(140, 100, '2516836576'),
(141, 100, '8266726596'),
(142, 100, '16809675326'),
(143, 100, '8067529886'),
(144, 100, '21353921796'),
(145, 100, '19895802646'),
(146, 100, '14835411426'),
(147, 101, '4755734316'),
(148, 102, '183425069168'),
(149, 103, '2373628566'),
(150, 104, '72373538368'),
(151, 104, '189685380868'),
(152, 104, '187743190368'),
(153, 104, '211153636668'),
(154, 105, '6210755386'),
(155, 105, '11224806126'),
(156, 106, '5567717496'),
(157, 107, '4913103706'),
(158, 107, '10836957596'),
(159, 108, '86335456'),
(160, 109, '10750991666'),
(161, 110, '13635152566'),
(162, 110, '5761332716'),
(163, 112, '2529470116'),
(164, 112, '18902516446'),
(165, 113, '83510316'),
(166, 114, '15516557966'),
(167, 114, '14214241326'),
(168, 115, '8737475696'),
(169, 115, '1269681076'),
(170, 116, '19841254006'),
(171, 116, '224034216'),
(172, 1, '1206008503'),
(173, 1, '17708031743'),
(174, 1, '2948789713'),
(175, 2, '12981502333'),
(176, 2, '18558619603'),
(177, 3, '1629900053'),
(178, 4, '3702390413'),
(179, 4, '16114560023'),
(180, 4, '19880749363'),
(181, 5, '1213306943'),
(182, 5, '5510670853'),
(183, 6, '5615966833'),
(184, 6, '4850904753'),
(185, 6, '17396547683'),
(186, 6, '11988595243'),
(187, 8, '8323404193');

-- --------------------------------------------------------

--
-- Table structure for table `profile_images`
--

CREATE TABLE `profile_images` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, '3D Camera', '3DcAM01', 'product-images/camera.jpg', 1500.00),
(2, 'External Hard Drive', 'USB02', 'product-images/external-hard-drive.jpg', 800.00),
(3, 'Wrist Watch', 'wristWear03', 'product-images/watch.jpg', 300.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`1`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `order_address`
--
ALTER TABLE `order_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `profile_images`
--
ALTER TABLE `profile_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `1` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `order_address`
--
ALTER TABLE `order_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `profile_images`
--
ALTER TABLE `profile_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
