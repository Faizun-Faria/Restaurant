-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2019 at 11:55 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `added_to`
--

CREATE TABLE `added_to` (
  `Dish_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Cart_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `belongs_to`
--

CREATE TABLE `belongs_to` (
  `Customer_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Restaurant_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Cart_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Quantity` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Checkout_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `Checkout_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Total_cost` int(11) NOT NULL,
  `Customer_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Payment_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Payment_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Email_ID` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Name`, `Password`, `Email_ID`) VALUES
('201901', 'Farah', '109102', 'farah19@yahoo.com'),
('201902', 'Anita', '209102', 'anita19@yahoo.com'),
('201903', 'Rahat', '309102', 'rahat@yahoo.com'),
('201904', 'Faizun', '409120', 'faizun@gmail.com'),
('201905', 'tasnim', '509102', 'tasnim@gmail.com'),
('201906', 'Soptorsi', '609102', 'soptorsi@gmail.com'),
('201907', 'Anan', '709102', 'anan@gmail.com'),
('201908', 'Chayan', '809102', 'chayan@gmail.com'),
('201909', 'Siam', '909102', 'siam@gmail.com'),
('201910', 'Mim', '019102', 'mim@gmail.com'),
('201911', 'Mahim', '119102', 'mahim@gmail.com'),
('201912', 'Maisha', '219102', 'maisha@gmail.com'),
('201913', 'Rimi', '319102', 'rimi@gmail.com'),
('201914', 'Faiza', '419102', 'faiza@gmail.com'),
('201915', 'Fahim', '519102', 'fahim@gmail.com'),
('201916', 'Medha', '619102', 'medha@gmail.com'),
('201917', 'Rahan', '719102', 'rahan@gmail.com'),
('201918', 'Pritho', '819102', 'pritho@gmail.com'),
('201919', 'Doreen', '919102', 'doreen@gmail.com'),
('201920', 'Tasnuba', '029102', 'tasnuba@gmail.com'),
('201921', 'dd', 'dddd', 'dd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `Restaurant_ID` varchar(4) NOT NULL,
  `Dish_name` varchar(30) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`Restaurant_ID`, `Dish_name`, `Price`) VALUES
('R001', 'Fish curry', 250),
('R001', 'Fried rice', 350),
('R001', 'Fish ball', 50),
('R001', 'Salmon fish', 2000),
('R001', 'French fries', 100),
('R002', 'Beef cheese burger', 150),
('R002', 'Chicken cheese burger', 140),
('R002', 'French fries', 120),
('R002', 'Double patty burger ', 240),
('R002', 'Beef burger with bacon', 340),
('R003', 'Chicken butterfly', 600),
('R003', 'Wing Roulette', 800),
('R003', '', 0),
('R003', 'Peri peri wedges', 300),
('R003', 'Caesar salad', 400),
('R004', 'Chicken polao', 200),
('R004', 'Kacchi', 200),
('R004', 'Borhani', 70),
('R004', 'Firni', 100),
('R004', 'Kabab', 20),
('R005', 'Brain masala', 200),
('R005', 'Halua', 50),
('R005', 'French fries', 100),
('R005', 'Grilled chicken', 400),
('R005', 'Butter nun', 50),
('R006', 'Seafood Platter', 1500),
('R006', 'Lobster Thrmidor', 2500),
('R006', 'Thai Watermelon Juice', 500),
('R006', 'Lemon Chicken', 500),
('R006', 'BBQ Buffalo', 400),
('R007', 'Ocean Perch', 1500),
('R007', 'Salmon', 1700),
('R007', 'Cod', 1000),
('R007', 'Fishy Chicky Bang Bang', 1000),
('R007', ' Country Style Fried Chicken', 1000),
('R008', 'Beef kabab', 120),
('R008', 'Mutton kabab', 150),
('R008', 'Beef burger', 200),
('R008', 'Beef burger with bacon', 300),
('R008', 'French fries', 120),
('R009', 'Mutton polao', 200),
('R009', 'Beef tehari', 200),
('R009', 'Fried rice', 200),
('R009', 'Soup', 350),
('R009', 'Chicken polao', 200),
('R010', 'Fruit salad', 250),
('R010', 'Tomato Puree', 300),
('R010', 'Vegetable pasta salad', 400),
('R010', 'Mushroom soup', 500),
('R010', 'Pizza', 500);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `Restaurant_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Dish_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`Restaurant_ID`, `Dish_ID`) VALUES
('R001', 'D015'),
('R001', 'D016'),
('R002', 'D001'),
('R002', 'D002'),
('R003', 'D012'),
('R003', 'D013'),
('R003', 'D016'),
('R003', 'D010'),
('R004', 'D017'),
('R004', 'D018'),
('R004', 'D019'),
('R004', 'D020'),
('R005', 'D005'),
('R005', 'D006'),
('R005', 'D007'),
('R005', 'D008'),
('R006', 'D013'),
('R006', 'D014'),
('R006', 'D015'),
('R006', 'D016'),
('R007', 'D008'),
('R007', 'D014'),
('R008', 'D009'),
('R008', 'D010'),
('R008', 'D011'),
('R008', 'D013'),
('R009', 'D017'),
('R009', 'D018'),
('R009', 'D019'),
('R009', 'D020'),
('R009', 'D017'),
('R009', 'D019'),
('R010', 'D003'),
('R010', 'D004'),
('R010', 'D005'),
('R010', 'D006'),
('R011', 'D009'),
('R011', 'D010'),
('R011', 'D011'),
('R011', 'D012'),
('R011', 'D013'),
('R012', 'D001'),
('R012', 'D002'),
('R012', 'D003'),
('R013', 'D003'),
('R013', 'D004'),
('R013', 'D015'),
('R013', 'D016'),
('R014', 'D001'),
('R014', 'D002'),
('R014', 'D005'),
('R014', 'D006'),
('R015', 'D009'),
('R015', 'D010'),
('R015', 'D011'),
('R015', 'D018'),
('R015', 'D019'),
('R016', 'D003'),
('R016', 'D004'),
('R016', 'D013'),
('R016', 'D014'),
('R017', 'D004'),
('R017', 'D005'),
('R017', 'D006'),
('R018', 'D009'),
('R018', 'D010'),
('R018', 'D018'),
('R018', 'D020');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Customer_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Dish_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `Customer_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Dish_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Rating` int(11) NOT NULL,
  `Comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `ID` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Phone_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Street_Address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Area` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`ID`, `Name`, `Phone_no`, `Street_Address`, `Area`) VALUES
('R001', 'Fish & Co. Bangladesh', '01777-794181', '22 Bir Uttam AK Khandakar Road, Dhaka 1212', 'Gulshan-1'),
('R002', 'Takeout Dhanmondi', '01847-290010', '736, Rangs KB Square Level - 3 No 9/A, Satmasjid Road, Dhaka 1209', 'Dhanmondi'),
('R003', 'Nando\'s Banani', '01833-362174', 'Genetic Building, House 25, Ground Floor, Rd No. 11, Dhaka 1213', 'Banani'),
('R004', 'Star Hotel & Kabab', '02-9676847', '22, House 16, Road No. 2 (Old), Dhanmondi R/A, Dhaka 1209', 'Dhanmondi'),
('R005', 'The Food Land', '01622-181818', 'House 84/1, Road 7/A, (at Satmosjid road between Dhanmondi 7A & 8A, Dhaka 1209', 'Dhanmondi'),
('R006', 'Tree House', '01670-828528', 'Banani 13/E , house #135 Opposite of Prescription Point, Rd No. 13E, Dhaka 1213', 'Banani'),
('R007', 'The Manhattan Fish Market', '01757-334411', '1st Floor, Awal Center, 34 Kemal Ataturk Avenue, Dhaka 1213', 'Banani'),
('R008', 'Live Kitchen', '01784-880838', 'House 35, Rd No 7, Dhaka 1213', 'Banani'),
('R009', 'Handi', '01798-779900', '138, Eastern Nibash 1st Floor, Mir Showkat Avenue Gulshan - 2, (Opposite of Hotel Westin, Dhaka 1212', 'Gulshan-2'),
('R010', 'Istanbul Turkish Restaurant', '01771-000000', 'House No.10 Road No.: 113, Dhaka 1212', 'Gulshan-2'),
('R011', 'El Toro Mexican Restaurant', '05881-2792', 'H # 9/A R # 36, Dhaka 1212', 'Gulshan-2'),
('R012', '138 East', '01944-138138', 'House 10 Rd 138, Dhaka 1212', 'Gulshan-1'),
('R013', 'Lake Terrace', '01618-377223', 'House # 25/E, Lake Dr Rd, Dhaka 1230', 'Uttara'),
('R014', 'American Burger Mirpur', '01764-001166', 'Dhaka 1216', 'Mirpur'),
('R015', 'Xinxian Restaurant-Mirpur', '01755-636265', 'Plot-11 Rd No. 8, Dhaka 1216', 'Mirpur'),
('R016', 'The Mesquite Grill', '02-48959866', 'Maroon - House of Attire, House 25, Rabindra Sarani, Road, Dhaka 1230', 'Uttara'),
('R017', 'Fire On Ice', '01626-870777', 'House No 2, 2nd Floor And 3rd Floor, Above 3s Shopping Mall, Road-09, Dhaka, 1230', 'Uttara'),
('R018', 'Cinnamon Restaurant', '01995-108886', 'Dhaka 1212', 'Mohakhali');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Cart_ID`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`Checkout_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD KEY `Dish_ID` (`Dish_ID`),
  ADD KEY `Restaurant_ID` (`Restaurant_ID`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`Dish_ID`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
