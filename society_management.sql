-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2020 at 10:15 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `society_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaint`
--

CREATE TABLE `tblcomplaint` (
  `complaint_id` int(5) NOT NULL,
  `owner_id` int(5) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending' COMMENT 'Completed or Pending',
  `photo1` varchar(50) DEFAULT NULL,
  `photo2` varchar(50) DEFAULT NULL,
  `subject` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `complaint_date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `incident_date` date NOT NULL,
  `location` varchar(100) NOT NULL,
  `outcomes` varchar(200) NOT NULL,
  `owner_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcomplaint`
--

INSERT INTO `tblcomplaint` (`complaint_id`, `owner_id`, `status`, `photo1`, `photo2`, `subject`, `description`, `complaint_date`, `name`, `incident_date`, `location`, `outcomes`, `owner_type`) VALUES
(5, 28, 'Pending', NULL, NULL, 'Pipe Break', 'Pipe is Broken near A Block', '2020-02-25', 'Smit Patel', '2020-02-24', 'Near A Block', '', 'Owner'),
(6, 31, 'Pending', NULL, NULL, 'Vehicle Parked Wrongly', 'Activa is wrongly Parked infront of my house for last 2 days. ', '2020-02-25', 'Harshil Patel', '2020-02-15', 'Near C-7', '', 'Owner');

-- --------------------------------------------------------

--
-- Table structure for table `tblevent`
--

CREATE TABLE `tblevent` (
  `event_id` int(5) NOT NULL,
  `owner_id` int(5) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `desceiption` varchar(200) NOT NULL,
  `event_date` date NOT NULL,
  `isApproved` int(3) NOT NULL DEFAULT '0',
  `end_date` date NOT NULL,
  `start_time` time NOT NULL COMMENT 'Event Start Time',
  `complete_time` time NOT NULL COMMENT 'Event Complete Time',
  `name` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblevent`
--

INSERT INTO `tblevent` (`event_id`, `owner_id`, `event_name`, `desceiption`, `event_date`, `isApproved`, `end_date`, `start_time`, `complete_time`, `name`, `location`, `type`) VALUES
(4, 28, '2011 ICC Cricket World Cup Final Live', 'We are going to set live show of 2011 ICC Cricket World Cup Final match which is to be held in Wankhede Cricket Stadium located in Mumbai, India.', '2020-04-02', 0, '2020-04-03', '14:00:00', '02:00:00', 'Smit Patel', 'Common Plot of Society', 'Owner'),
(5, 28, 'Birth Day Celebration of Harsh Reddiar', 'Birthday celebration of Harsh will be held at mid night as it is 22nd birthday of Harsh.', '2020-04-03', 0, '2020-04-04', '23:30:00', '01:30:00', 'Smit Patel', 'In Garden', 'Owner'),
(6, 31, 'Namaste Trump', 'It will shown live vie SONY Projector in the Garden.', '2020-03-14', 0, '2020-03-14', '09:00:00', '21:00:00', 'Harshil Patel', 'In Garden', 'Owner'),
(7, 10, 'Abhivyakti City Arts Festival 2020 (Edition 3)', 'Abhivyakti City Arts Project is an annual cultural festival that aims to encourage original thinking and experimentation in the field of arts, across the four segments of Visual Arts, Music, Dance & T', '2020-02-29', 1, '2020-03-04', '13:56:00', '20:04:00', 'Fenil Parmar', 'KCG Campus, Nr. LD College of Engineering, Opp. Gujarat University, Ahmedabad', 'Owner'),
(8, 27, 'ART Therapy Workshop', 'This workshop will give you a glimpse of esoteric world of THERAPEUTIC ART. We will explore a technique where you will be able to experience change in your feelings which will reflect on what you are ', '2020-02-29', 1, '2020-02-29', '12:00:00', '20:00:00', 'Aman Patel', 'Audi 3,Tortoise building, Near HDFC bank, Chimanlal Girdharlal road, Ahmedabad. ', 'Owner');

-- --------------------------------------------------------

--
-- Table structure for table `tblevent_photo`
--

CREATE TABLE `tblevent_photo` (
  `photo_id` int(5) NOT NULL,
  `event_id` int(5) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblimpnotice`
--

CREATE TABLE `tblimpnotice` (
  `imp_id` int(5) NOT NULL,
  `notice_id` int(5) DEFAULT NULL,
  `owner_id` int(5) DEFAULT NULL,
  `rent_id` int(5) DEFAULT NULL,
  `status` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblimpnotice`
--

INSERT INTO `tblimpnotice` (`imp_id`, `notice_id`, `owner_id`, `rent_id`, `status`) VALUES
(19, 16, 10, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbllostandfound`
--

CREATE TABLE `tbllostandfound` (
  `item_id` int(5) NOT NULL,
  `owner_id` int(5) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT 'Fount Or Lost',
  `name` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `contact_person` varchar(50) NOT NULL,
  `contact_mobile` varchar(12) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllostandfound`
--

INSERT INTO `tbllostandfound` (`item_id`, `owner_id`, `status`, `name`, `description`, `photo`, `contact_person`, `contact_mobile`, `date`) VALUES
(1, 11, 0, 'Mobile ', 'Samsung Galaxy Note 10, 256GB memory, 8GB RAM.', 's20Phone.jpg', 'Fenil Parmar', '9999999999', '2020-02-27'),
(2, 12, 0, 'Bicycle', 'Red cycle of Hero. Model number 101010001.', 'bicycle.jpg', 'Dhruvil Shah', '7878127829', '2020-02-27'),
(3, 10, 0, 'Gold Bar', '24 carat', 'goldBar.jpeg', 'Harsh Reddiar', '8998792821', '2020-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblmaid`
--

CREATE TABLE `tblmaid` (
  `maid_id` int(11) NOT NULL,
  `maid_name` varchar(50) NOT NULL,
  `maid_contact` varchar(12) NOT NULL,
  `maid_proof` varchar(50) NOT NULL,
  `maid_service` varchar(50) NOT NULL,
  `maid_photo` varchar(50) NOT NULL,
  `maid_time` datetime NOT NULL,
  `maid_speciality` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmaid`
--

INSERT INTO `tblmaid` (`maid_id`, `maid_name`, `maid_contact`, `maid_proof`, `maid_service`, `maid_photo`, `maid_time`, `maid_speciality`) VALUES
(1, 'Sharmila Ben', '9999000011', 'Maid.png', 'Maid', 'Maid.png', '0000-00-00 00:00:00', 'Mopping,Swipping'),
(2, 'Umesh Bhai', '9898789870', 'milkmen.png', 'MilkMen', 'milkmen.png', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `message_id` int(5) NOT NULL,
  `owner_id` int(5) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `time` datetime NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `notice_id` int(5) NOT NULL,
  `notice_title` varchar(50) NOT NULL,
  `notice_details` varchar(2000) NOT NULL,
  `date` date NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT 'O=Display 1=Not ',
  `notice_photo` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`notice_id`, `notice_title`, `notice_details`, `date`, `status`, `notice_photo`, `type`) VALUES
(14, 'Fire Safety Checking by AMC', 'Fire Safety Inspection will be done in our Society By AMC.', '2020-03-02', 0, '1694-fire.jpg', 'Inspection/Checking'),
(15, 'Need Volunteers for Blood Donation Camp.', 'A Blood Donation Camp in R.C. Technical by VGEC NSS Unit will be held near Vishwakarma Temple, Chandlodia on 28-02-2020 from 9:00 AM to 1:00 PM. Around  20 volunteers needed. Interested Person Contact Golu.', '2020-02-24', 0, '3967-blood.jpg', 'Requirements (Volunteering)'),
(16, 'Some Members has not paid maintance', 'Some Members has not yet paid Maintenance Bill of JANUARY-2020.', '2020-03-15', 0, NULL, 'Maintenance break');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment_details`
--

CREATE TABLE `tblpayment_details` (
  `details_id` int(5) NOT NULL,
  `paymenttype_id` int(5) NOT NULL,
  `owner_id` int(5) NOT NULL,
  `transaction_number` varchar(30) NOT NULL,
  `payment_mode` varchar(30) NOT NULL,
  `total_amount` int(10) NOT NULL,
  `payment_date` date NOT NULL,
  `mobile_no` varchar(12) NOT NULL,
  `emailid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpayment_details`
--

INSERT INTO `tblpayment_details` (`details_id`, `paymenttype_id`, `owner_id`, `transaction_number`, `payment_mode`, `total_amount`, `payment_date`, `mobile_no`, `emailid`) VALUES
(9, 8, 31, 'SM619523480', 'Debit Card', 562, '2020-02-25', '8160928066', 'harshil@gmail.com'),
(10, 8, 10, 'SM712063485', 'Debit Card', 562, '2020-02-27', '9909732301', 'fenilmparmar1111@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment_type`
--

CREATE TABLE `tblpayment_type` (
  `paymenttype_id` int(5) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `total_amount` int(10) NOT NULL,
  `bill_month` text NOT NULL COMMENT 'Maintance Month',
  `status` int(2) NOT NULL DEFAULT '0',
  `list_name1` varchar(50) NOT NULL,
  `list1_amount` int(10) NOT NULL,
  `list_name2` varchar(50) DEFAULT NULL,
  `list2_amount` int(10) DEFAULT NULL,
  `list_name3` varchar(50) DEFAULT NULL,
  `list3_amount` int(10) DEFAULT NULL,
  `list_name4` varchar(50) DEFAULT NULL,
  `list4_amount` int(10) DEFAULT NULL,
  `amount_per_person` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpayment_type`
--

INSERT INTO `tblpayment_type` (`paymenttype_id`, `type_name`, `start_date`, `total_amount`, `bill_month`, `status`, `list_name1`, `list1_amount`, `list_name2`, `list2_amount`, `list_name3`, `list3_amount`, `list_name4`, `list4_amount`, `amount_per_person`) VALUES
(8, 'Maintance', '2020-02-15', 13480, 'March 2002', 0, 'Electricity-Torrent Power', 6000, 'Water Bill', 360, 'Cleaning Bill', 7000, 'Other', 120, 561.6666666666666),
(9, 'Celebration 26th January', '2020-02-01', 1200, 'March 2020', 0, 'Sports', 1200, '', 0, '', 0, '', 0, 50),
(10, 'Maintance', '2020-02-26', 9060, 'March 2020', 0, 'Electricity-Torrent Power', 6000, 'Water Bill', 60, 'Cleaning Bill', 3000, 'Other', 0, 377.5),
(11, 'Maintance', '2020-04-01', 8620, 'April 2020', 0, 'Electricity-Torrent Power', 8000, 'Water Bill', 600, 'Cleaning Bill', 20, 'Other', 0, 359.1666666666667),
(12, 'Quarterly Meeting ', '2020-04-01', 600, 'April 2020', 0, 'Nasto', 600, '', 0, '', 0, '', 0, 25);

-- --------------------------------------------------------

--
-- Table structure for table `tblregistration`
--

CREATE TABLE `tblregistration` (
  `owner_id` int(5) NOT NULL,
  `plot_no` varchar(10) NOT NULL COMMENT 'Plot Number(A-32 or B-33)',
  `owner_name` varchar(70) NOT NULL,
  `mobile_no` varchar(12) NOT NULL,
  `mobile_no_2` varchar(12) DEFAULT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `owner_photo` varchar(50) NOT NULL,
  `owner_identity` varchar(50) NOT NULL COMMENT 'Owner Identity Verification Photo',
  `no_of_person` int(5) NOT NULL COMMENT 'Total No of Person Lived in Plot',
  `approved_by` varchar(70) DEFAULT NULL,
  `approved_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblregistration`
--

INSERT INTO `tblregistration` (`owner_id`, `plot_no`, `owner_name`, `mobile_no`, `mobile_no_2`, `email_id`, `password`, `owner_photo`, `owner_identity`, `no_of_person`, `approved_by`, `approved_time`) VALUES
(10, 'A-1', 'Fenil Parmar', '9909732301', '', 'fenilmparmar1111@gmail.com', '123', '281-download (1).png', '230-About SSIP Gujarat _ Hackathon.pdf', 3, NULL, NULL),
(11, 'A-2', 'Parth Pansuriya', '9429958754', '', 'parthpv99@gmail.com', '123', '523-images (1).jfif', '160-About SSIP Gujarat _ Hackathon.pdf', 5, NULL, NULL),
(12, 'A-3', 'Sagar Solanki', '9662162716', '', 'sagarsolanki749@gmail.com', '123', '892-images (4).png', '98-Combine problem statement.pdf', 3, NULL, NULL),
(13, 'A-4', 'Aaditya  Apoorva', '9662162716', '8488057116', 'aaditya@gmail.com', '123', '937-images (2).jfif', '701-Contact US _ Hackathon.pdf', 7, NULL, NULL),
(14, 'A-5', 'Jeet Ahuja', '9157473179', '', 'jeet@gmail.com', '123', '677-images.png', '763-Smart Gujarat Hackathon _ Hackathon.pdf', 3, NULL, NULL),
(15, 'A-6', 'Artim Chaudhary', '9512715030', '7802956449', 'artim@gmail.com', '123', '105-download (1).png', '723-Combine problem statement.pdf', 6, NULL, NULL),
(16, 'A-7', 'Harsh Chavda', '6354883566', '7802011162', 'chavda@gmail.com', '123', '457-images.jfif', '22-Index _ SSIP.pdf', 5, NULL, NULL),
(17, 'A-8', 'Nisarg Choksi', '7600471760', '9723944325', 'nisarg@gmail.com', '123', '120-download (1).png', '884-230-About SSIP Gujarat _ Hackathon.pdf', 3, NULL, NULL),
(18, 'B-1', 'Umang Damor', '9081023481', '7990467027', 'damor@gmail.com', '123', '351-677-images.png', '876-818-Contact US _ Hackathon.pdf', 3, NULL, NULL),
(19, 'B-2', 'Jay Bhanderi', '8511601006', '7359199389', 'jay@gmail.com', '123', '238-images (2).jfif', '171-876-818-Contact US _ Hackathon.pdf', 5, NULL, NULL),
(20, 'B-3', 'Dhruvin Dankhara', '9904356474', '9586059734', 'dhruvin@gmail.com', '123', '951-download.png', '757-763-Smart Gujarat Hackathon _ Hackathon.pdf', 6, NULL, NULL),
(21, 'B-4', 'Jaimeen Sherasiya', '9978441146', '9773143685', 'jaimeen@gmail.com', '123', '59-images (5).jfif', '145-818-Contact US _ Hackathon.pdf', 4, NULL, NULL),
(22, 'B-5', 'Vaibhav Shiroya', '8156010755', '', 'vaibhav@gmail.com', '123', '254-892-images (4).png', '361-818-Contact US _ Hackathon.pdf', 1, NULL, NULL),
(23, 'B-6', 'Vedant Dave', '8511979241', '9624904521', 'vedant@gmail.com', '123', '322-523-images (1).jfif', '456-763-Smart Gujarat Hackathon _ Hackathon.pdf', 5, NULL, NULL),
(24, 'B-7', 'Ravi Patel', '7265078101', '9624863068', 'ravi@gmail.com', '123', '141-351-677-images.png', '408-360-About SSIP Gujarat _ Hackathon.pdf', 9, NULL, NULL),
(25, 'C-1', 'Harsh Reddiyar', '9662371958', '', 'harsh@gmail.com', '123', '928-254-892-images (4).png', '934-361-818-Contact US _ Hackathon.pdf', 3, NULL, NULL),
(26, 'C-2', 'Dharuvil Shah', '7889569133', '9979851198', 'dhruvil@gmail.com', '123', '632-281-download (1).png', '920-361-818-Contact US _ Hackathon.pdf', 5, NULL, NULL),
(27, 'C-4', 'Aman Patel', '9773047306', '9913598205', 'aman@gmail.com', '123', '44-254-892-images (4).png', '29-160-About SSIP Gujarat _ Hackathon.pdf', 4, NULL, NULL),
(28, 'C-5', 'SMIT PATEL', '9428508616', '7016570100', 'smit@gmail.com', '123', '83-44-254-892-images (4).png', '275-145-818-Contact US _ Hackathon.pdf', 8, NULL, NULL),
(29, 'C-6', 'Smit Patel', '8511979241', '8511979698', 'smit41@gmail.com', '123', '917-238-images (2).jfif', '102-145-818-Contact US _ Hackathon.pdf', 2, NULL, NULL),
(30, 'C-7', 'Fenil Parmar', '7984580764', '9924481383', 'fenil@gmail.com', '123', '630-254-892-images (4).png', '492-361-818-Contact US _ Hackathon.pdf', 6, NULL, NULL),
(31, 'C-3', 'Harshil Patel', '8160928066', '', 'harshil@gmail.com', '123', '77-238-images (2).jfif', '135-275-145-818-Contact US _ Hackathon.pdf', 6, NULL, NULL),
(32, 'C-8', 'Marmik Patel', '9099695473', '8160988575', 'marmik@gmail.com', '123', '236-238-images (2).jfif', '936-102-145-818-Contact US _ Hackathon.pdf', 3, NULL, NULL),
(33, 'C-9', 'Dharmik Jasoliya', '7043394313', '9106178563', 'dharmik@gmail.com', '123', '18-141-351-677-images.png', '952-171-876-818-Contact US _ Hackathon.pdf', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblrenttable`
--

CREATE TABLE `tblrenttable` (
  `rent_id` int(5) NOT NULL,
  `owner_id` int(5) NOT NULL,
  `tenant_name` varchar(50) NOT NULL,
  `mobile_no` varchar(12) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `identity_photo` varchar(50) NOT NULL,
  `tenant_photo` varchar(50) NOT NULL,
  `no_of_persons` int(5) NOT NULL,
  `approved_by` varchar(70) DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'True',
  `date` date DEFAULT NULL COMMENT 'Ending Rent House Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrenttable`
--

INSERT INTO `tblrenttable` (`rent_id`, `owner_id`, `tenant_name`, `mobile_no`, `email_id`, `password`, `identity_photo`, `tenant_photo`, `no_of_persons`, `approved_by`, `approved_date`, `status`, `date`) VALUES
(2, 11, 'Rohit Sharma', '8320701495', 'rohitsharma@gmail.com', '123', '360-About SSIP Gujarat _ Hackathon.pdf', '515-images (3).jfif', 2, NULL, NULL, 'True', NULL),
(3, 17, 'Nimesh Chunara', '8488982986', 'nimesh@gmail.com', '123', '818-Contact US _ Hackathon.pdf', '596-515-images (3).jfif', 5, NULL, NULL, 'True', NULL),
(4, 24, 'Final Patel', '9737882038', 'final@gmail.com', '123', '716-360-About SSIP Gujarat _ Hackathon.pdf', '275-351-677-images.png', 3, NULL, NULL, 'True', NULL),
(5, 22, 'Dhaval Parmar', '9737882038', 'dhaval@gmail.com', '123', '833-408-360-About SSIP Gujarat _ Hackathon.pdf', '224-images (1).png', 5, NULL, NULL, 'True', NULL),
(6, 26, 'Urvish Kapadiya', '7573805415', 'uk@gmail.com', '123', '760-171-876-818-Contact US _ Hackathon.pdf', '832-141-351-677-images.png', 6, NULL, NULL, 'True', NULL),
(7, 31, 'Jimit Shah', '9426161951', 'jimit@gmail.com', '123', '348-230-About SSIP Gujarat _ Hackathon.pdf', '314-120-download (1).png', 5, NULL, NULL, 'True', NULL),
(8, 30, 'Vrutik Rana', '7990128813', 'rana@gmail.com', '123', '52-171-876-818-Contact US _ Hackathon.pdf', '401-59-images (5).jfif', 4, NULL, NULL, 'True', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblreply`
--

CREATE TABLE `tblreply` (
  `reply_id` int(5) NOT NULL,
  `complaint_id` int(5) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `reply_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblsecretary`
--

CREATE TABLE `tblsecretary` (
  `secretary_id` int(5) NOT NULL,
  `owner_id` int(5) NOT NULL,
  `owner_name` varchar(70) NOT NULL,
  `secretary_level` varchar(30) NOT NULL COMMENT 'Main_Secretary Or Secretary',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT 'Secretary Or Not'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsecretary`
--

INSERT INTO `tblsecretary` (`secretary_id`, `owner_id`, `owner_name`, `secretary_level`, `status`) VALUES
(1, 25, 'Harsh Reddiyar', 'Super Admin', 1),
(2, 26, 'Dhruvil Shah', 'Admin', 1),
(3, 29, 'Smit Patel', 'Admin', 1),
(4, 30, 'Fenil Parmar', 'Admin', 0),
(5, 32, 'Marmik Patel', 'Admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehical`
--

CREATE TABLE `tblvehical` (
  `vehicle_id` int(5) NOT NULL,
  `owner_id` int(5) NOT NULL,
  `number_plate` varchar(20) NOT NULL,
  `vehicle_type` varchar(30) NOT NULL COMMENT '2 Wheeler / 4 Wheeler'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblvisitors`
--

CREATE TABLE `tblvisitors` (
  `visitor_id` int(5) NOT NULL,
  `visitor_name` varchar(50) NOT NULL,
  `mobile_no` varchar(12) NOT NULL,
  `entry_time` date NOT NULL,
  `relation` varchar(30) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `owner_id` int(5) NOT NULL,
  `total_visitors` int(5) NOT NULL,
  `vehicle_no` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcomplaint`
--
ALTER TABLE `tblcomplaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tblevent`
--
ALTER TABLE `tblevent`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tblevent_photo`
--
ALTER TABLE `tblevent_photo`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `tblimpnotice`
--
ALTER TABLE `tblimpnotice`
  ADD PRIMARY KEY (`imp_id`),
  ADD KEY `notice_id` (`notice_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `rent_id` (`rent_id`);

--
-- Indexes for table `tbllostandfound`
--
ALTER TABLE `tbllostandfound`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `tblmaid`
--
ALTER TABLE `tblmaid`
  ADD PRIMARY KEY (`maid_id`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `tblpayment_details`
--
ALTER TABLE `tblpayment_details`
  ADD PRIMARY KEY (`details_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `paymenttype_id` (`paymenttype_id`);

--
-- Indexes for table `tblpayment_type`
--
ALTER TABLE `tblpayment_type`
  ADD PRIMARY KEY (`paymenttype_id`);

--
-- Indexes for table `tblregistration`
--
ALTER TABLE `tblregistration`
  ADD PRIMARY KEY (`owner_id`),
  ADD UNIQUE KEY `plot_no` (`plot_no`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `tblrenttable`
--
ALTER TABLE `tblrenttable`
  ADD PRIMARY KEY (`rent_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `tblreply`
--
ALTER TABLE `tblreply`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `complaint_id` (`complaint_id`);

--
-- Indexes for table `tblsecretary`
--
ALTER TABLE `tblsecretary`
  ADD PRIMARY KEY (`secretary_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `tblvehical`
--
ALTER TABLE `tblvehical`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `tblvisitors`
--
ALTER TABLE `tblvisitors`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcomplaint`
--
ALTER TABLE `tblcomplaint`
  MODIFY `complaint_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblevent`
--
ALTER TABLE `tblevent`
  MODIFY `event_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblevent_photo`
--
ALTER TABLE `tblevent_photo`
  MODIFY `photo_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblimpnotice`
--
ALTER TABLE `tblimpnotice`
  MODIFY `imp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbllostandfound`
--
ALTER TABLE `tbllostandfound`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmaid`
--
ALTER TABLE `tblmaid`
  MODIFY `maid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `notice_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblpayment_details`
--
ALTER TABLE `tblpayment_details`
  MODIFY `details_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpayment_type`
--
ALTER TABLE `tblpayment_type`
  MODIFY `paymenttype_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblregistration`
--
ALTER TABLE `tblregistration`
  MODIFY `owner_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblrenttable`
--
ALTER TABLE `tblrenttable`
  MODIFY `rent_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblreply`
--
ALTER TABLE `tblreply`
  MODIFY `reply_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsecretary`
--
ALTER TABLE `tblsecretary`
  MODIFY `secretary_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvehical`
--
ALTER TABLE `tblvehical`
  MODIFY `vehicle_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblvisitors`
--
ALTER TABLE `tblvisitors`
  MODIFY `visitor_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblevent_photo`
--
ALTER TABLE `tblevent_photo`
  ADD CONSTRAINT `tblevent_photo_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `tblevent` (`event_id`);

--
-- Constraints for table `tblimpnotice`
--
ALTER TABLE `tblimpnotice`
  ADD CONSTRAINT `tblimpnotice_ibfk_1` FOREIGN KEY (`notice_id`) REFERENCES `tblnotice` (`notice_id`),
  ADD CONSTRAINT `tblimpnotice_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `tblregistration` (`owner_id`),
  ADD CONSTRAINT `tblimpnotice_ibfk_3` FOREIGN KEY (`rent_id`) REFERENCES `tblrenttable` (`rent_id`);

--
-- Constraints for table `tbllostandfound`
--
ALTER TABLE `tbllostandfound`
  ADD CONSTRAINT `tbllostandfound_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `tblregistration` (`owner_id`);

--
-- Constraints for table `tblpayment_details`
--
ALTER TABLE `tblpayment_details`
  ADD CONSTRAINT `tblpayment_details_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `tblregistration` (`owner_id`),
  ADD CONSTRAINT `tblpayment_details_ibfk_2` FOREIGN KEY (`paymenttype_id`) REFERENCES `tblpayment_type` (`paymenttype_id`);

--
-- Constraints for table `tblrenttable`
--
ALTER TABLE `tblrenttable`
  ADD CONSTRAINT `tblrenttable_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `tblregistration` (`owner_id`);

--
-- Constraints for table `tblreply`
--
ALTER TABLE `tblreply`
  ADD CONSTRAINT `tblreply_ibfk_1` FOREIGN KEY (`complaint_id`) REFERENCES `tblcomplaint` (`complaint_id`);

--
-- Constraints for table `tblsecretary`
--
ALTER TABLE `tblsecretary`
  ADD CONSTRAINT `tblsecretary_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `tblregistration` (`owner_id`);

--
-- Constraints for table `tblvehical`
--
ALTER TABLE `tblvehical`
  ADD CONSTRAINT `tblvehical_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `tblregistration` (`owner_id`);

--
-- Constraints for table `tblvisitors`
--
ALTER TABLE `tblvisitors`
  ADD CONSTRAINT `tblvisitors_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `tblregistration` (`owner_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
