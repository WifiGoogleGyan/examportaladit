-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2023 at 04:16 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20888528_cee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin@username', 'admin@password');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(67, 'ADIT', '2023-05-21 14:36:04'),
(68, 'CSA', '2023-05-24 10:33:56'),
(70, 'ADIT 2', '2023-06-13 10:46:31'),
(71, 'FITTER', '2023-06-17 17:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(9, 'ANKIT KUMAR GAUTAM', '67', 'male', '2000-07-02', 'second year', 'gautama429@gmail.com', 'Ankit@123', 'active'),
(10, 'Anuj Singh', '68', 'male', '2003-04-20', 'first year', 'anuj@gmail.com', '123456', 'active'),
(11, 'Sainath', '67', 'male', '2000-04-20', 'first year', 'sainath@gmail.com', '123456', 'active'),
(12, 'Damodar Tiwari', '67', 'male', '20000-04-20', 'first year', 'damodar@gmail.com', '123456', 'active'),
(13, 'Manorama', '67', 'female', '2000-04-20', 'first year', 'manorama210688@gmail.com', '123456', 'active'),
(14, 'Pawan', '67', 'male', '2000-01-20', 'first year', 'pawan@gmail.com', '123456', 'active'),
(15, 'ADITYA', '70', 'male', '2000-04-20', 'first year', 'aditya1@gmail.com', '123456', 'active'),
(16, 'Shivam Bharti', '68', 'male', '2002-06-12', 'first year', 'shivam@gmail.com', '123456', 'active'),
(17, 'Vinod Shama', '67', 'male', '2000-04-20', 'first year', 'vinod@gmail.com', '123456', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(321, 8, 24, 31, 'Hyper Text Markup Language', 'new', '2023-05-21 15:46:04'),
(322, 8, 24, 32, 'Information Technology', 'new', '2023-05-21 15:46:04'),
(323, 9, 25, 33, 'CENTRAL PROCESSING UNIT', 'new', '2023-05-25 05:18:29'),
(324, 9, 25, 35, 'Moniter', 'new', '2023-05-25 05:18:29'),
(325, 9, 25, 34, 'Information Technology', 'new', '2023-05-25 05:18:29'),
(326, 9, 24, 32, 'Information Technology', 'old', '2023-06-16 12:16:07'),
(327, 9, 24, 31, 'Hyper Text Markup Language', 'old', '2023-06-16 12:16:07'),
(328, 10, 25, 34, 'Information Technology', 'new', '2023-06-12 08:49:01'),
(329, 10, 25, 35, 'Moniter', 'new', '2023-06-12 08:49:01'),
(330, 10, 25, 33, 'CENTRAL PROCESSING UNIT', 'new', '2023-06-12 08:49:01'),
(331, 11, 24, 31, 'Hyper Text Markup Language', 'new', '2023-06-12 12:59:11'),
(332, 11, 24, 32, 'Information Technology', 'new', '2023-06-12 12:59:11'),
(333, 12, 24, 32, 'Information Technology', 'new', '2023-06-12 13:06:20'),
(334, 12, 24, 31, 'Hyper Text Markup Language', 'new', '2023-06-12 13:06:20'),
(335, 13, 24, 32, 'Information Technology', 'new', '2023-06-12 13:22:21'),
(336, 13, 24, 31, 'Hyper Text Markup Language', 'new', '2023-06-12 13:22:21'),
(337, 14, 24, 32, 'Information Technology', 'new', '2023-06-12 13:54:23'),
(338, 14, 24, 31, 'Hyper Text Markup Language', 'new', '2023-06-12 13:54:23'),
(339, 15, 27, 37, 'KANPUR', 'new', '2023-06-13 10:56:30'),
(340, 15, 27, 36, 'COMPUTER SOFTLY APPLICATION', 'new', '2023-06-13 10:56:30'),
(341, 9, 24, 31, 'Hyper Text Markup Language', 'new', '2023-06-16 12:16:07'),
(342, 9, 24, 32, 'Information Technology', 'new', '2023-06-16 12:16:07'),
(343, 16, 24, 31, 'Hyper Text Markup Language', 'new', '2023-06-17 17:14:12'),
(344, 16, 24, 32, 'Information Technology', 'new', '2023-06-17 17:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(58, 10, 25, 'used'),
(59, 11, 24, 'used'),
(60, 12, 24, 'used'),
(61, 13, 24, 'used'),
(62, 14, 24, 'used'),
(63, 15, 27, 'used'),
(64, 9, 24, 'used'),
(65, 16, 24, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(31, 24, 'Full form of HTML?', 'Hyper Text Markup Languagf', 'Hyper Text Markup Languago', 'Hyper Text Markup Languagi', 'Hyper Text Markup Language', 'Hyper Text Markup Language', 'active'),
(32, 24, 'Full Form of IT?', 'Information Tech', 'Information Technology', 'IT Sector', 'Computer Operator', 'Information Technology', 'active'),
(33, 25, 'Fullform Of CPU?', 'CENTRAL PROCES UNIT', 'CENTER PROCESS UNIT', 'CENTRAL PROCESSING UNIT', 'NONE OF THESE', 'CENTRAL PROCESSING UNIT', 'active'),
(34, 25, 'Fullform of IT?', 'Internet Ile', 'Information Technology', 'Inform Tech', 'None Of these', 'Information Technology', 'active'),
(35, 25, 'What is the output devices?', 'Mouse', 'Keyboard', 'Moniter', 'none of these', 'Moniter', 'active'),
(36, 27, 'FULL FORM OF CSA', 'COMPUTER SOFT APPLICATION', 'COMPUTER SOFTWARE APPLICATION', 'COMPUTER SOFTLY APPLICATION', 'COMPUTE SOFT APPLICATION', 'COMPUTER SOFTWARE APPLICATION', 'active'),
(37, 27, 'WHO IS SHAMSHAD', 'KANPUR', 'DEHRADUN', 'CHENNAI', 'ALLAHABAD', 'KANPUR', 'active'),
(39, 27, 'Full form of RAM', 'RANDOM A MEMORY', 'RANDOM ACCESS MEMORY', 'NONE OF THESE', 'ALL OF ABOVE', 'RANDOM ACCESS MEMORY', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(24, 67, 'ADIT EXAM 2023', '10', 2, 'Cunduct by IBM this examination thanku', '2023-05-21 15:44:54'),
(25, 68, 'CSA EXAM', '10', 5, 'PLEASE CUNDUCT THE EXAM', '2023-05-24 10:35:00'),
(27, 70, 'ADIT SECOND MODULE', '10', 5, 'THIS EXAM IS CUNDUCT BY ADIT KANPUR', '2023-06-13 10:49:01'),
(28, 71, 'ADIT FOURTH MODULE', '60', 50, 'PLEASE ATTEMPT THE EXAM', '2023-06-17 17:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedbacks_tbl`
--

INSERT INTO `feedbacks_tbl` (`fb_id`, `exmne_id`, `fb_exmne_as`, `fb_feedbacks`, `fb_date`) VALUES
(10, 9, '', 'Very Nice Exam Portal', 'May 25, 2023'),
(11, 9, '', 'Very Nice Exam Portal', 'May 25, 2023'),
(12, 9, '', 'Very Nice Exam Portal', 'May 25, 2023'),
(13, 10, 'Anuj Singh', 'nice question', 'June 12, 2023'),
(14, 13, 'Manorama', 'This is best project.', 'June 12, 2023'),
(15, 15, 'ADITYA', 'nice exam', 'June 13, 2023'),
(16, 11, 'Sainath', 'wel', 'June 13, 2023'),
(17, 11, 'Sainath', '', 'June 14, 2023'),
(18, 11, 'Sainath', '', 'June 14, 2023'),
(19, 16, 'Shivam Bharti', 'Hii', 'June 17, 2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
