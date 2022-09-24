-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2021 at 03:22 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinetuitionmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` varchar(7) NOT NULL,
  `class_name` varchar(15) NOT NULL,
  `highest_achiever` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `highest_achiever`) VALUES
('HSC-I', 'FIRST YEAR', 'Hamza Junaid'),
('HSC-II', 'SECOND YEAR', 'Taha Aamir'),
('SSC-I', 'NINTH', 'Heba Naveed'),
('SSC-II ', 'TENTH', 'Izma Aziz');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` varchar(15) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `credits` int(3) NOT NULL,
  `class_id` varchar(7) NOT NULL,
  `pay_of_sub` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `credits`, `class_id`, `pay_of_sub`) VALUES
('C-001', 'BIOLOGY', 3, 'SSC-I', 1000),
('C-002', 'CHEMISTRY', 3, 'SSC-I', 1000),
('C-003', 'COMPUTER', 3, 'SSC-I', 500),
('C-004', 'PHYSICS', 3, 'SSC-II', 700),
('C-005', 'MATHEMATICS', 3, 'SSC-II', 1600),
('C-006', 'CHEMISTRY', 3, 'SSC-II', 1000),
('C-007', 'ENGLISH', 3, 'SSC-II', 1000),
('C-008', 'URDU', 3, 'SSC-II', 1000),
('C-009', 'ISLAMIAT', 3, 'SSC-II', 600),
('C-010', 'CHEMISTRY-I', 3, 'HSC-I', 1000),
('C-011', 'PHYSICS-I', 3, 'HSC-I', 1000),
('C-012', 'MATHEMATICS-I', 3, 'HSC-I', 1000),
('C-013', 'BIOLOGY-I', 3, 'HSC-I', 600),
('C-014', 'ENGLISH NORMAL-I', 3, 'HSC-I', 600),
('C-015', 'URDU NORMAL-I', 3, 'HSC-I', 600),
('C-016', 'ISLAMIC EDUCATION', 2, 'HSC-I', 500),
('C-017', 'CHEMISTRY-II', 3, 'HSC-II', 1500),
('C-018', 'PHYSICS-II', 3, 'HSC-II', 1000),
('C-019', 'MATHEMATICS-II', 3, 'HSC-II', 1500),
('C-020', 'BIOLOGY-II', 3, 'HSC-II', 1600),
('C-021', 'ENGLISH NORMAL-II', 3, 'HSC-II', 600),
('C-022', 'URDU NORMAL-II', 3, 'HSC-II', 600),
('C-023', 'PAKISTAN STUDIES', 2, 'HSC-II', 500);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(40) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `stu_pay` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `fname`, `lname`, `password`, `stu_pay`) VALUES
('aafiyahh@gmail.com', 'Aafiya', 'Zahid', 'aa345', 4600),
('ahmed36@gmail.com', 'Ahmed', 'Alam', '12aa', 6800),
('ayeshaaamir2001@gmail.com', 'Ayesha', 'Aamir', '123', 1500),
('bisma2k1@gmail.com', 'Bisma', 'Imran', 'bis345', 3000),
('hamzajunaid@gmail.com', 'Hamza', 'Junaid', 'hj223', 1700),
('hasnainali@gmail.com', 'Hasnain', 'Ali', '123', 3300),
('hebanaveed123@gmail.com', 'Heba', 'Naveed', 'naveed33', 1000),
('izmaaziz21@gmail.com', 'Izma', 'Aziz', 'izmaa23', 3600),
('minhal10@gmail.com', 'Minhal', 'Zaib', 'zaib22', 2000),
('mohsin123@gmail.com', 'Mohsin', 'Iqbal', 'iqbal234', 3200),
('tahaaamir47@gmail.com', 'Taha', 'Aamir', 'taha01', 3100),
('ujala123@gmail.com', 'Ujala', 'Nadeem', 'uj333', 5900),
('wahaj23@gmail.com', 'Wahaj', 'Asif', '123', 2000),
('zoyadhedhi@gmail.com', 'Zoya', 'Dhedhi', 'zoya234', 5900);

-- --------------------------------------------------------

--
-- Table structure for table `student_contacts`
--

CREATE TABLE `student_contacts` (
  `student_id` varchar(40) NOT NULL,
  `contacts` varchar(12) NOT NULL,
  `scontact_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_contacts`
--

INSERT INTO `student_contacts` (`student_id`, `contacts`, `scontact_id`) VALUES
('ayeshaaamir2001@gmail.com', '0345-0952426', 1),
('izmaaziz21@gmail.com', '0321-9291117', 2),
('izmaaziz21@gmail.com', '0312-5674396', 3),
('hamzajunaid@gmail.com', '0322-9826664', 4),
('mohsin123@gmail.com', '0333-7684848', 5),
('hebanaveed123@gmail.com', '0322-6711719', 6),
('hebanaveed123@gmail.com', '0345-2782884', 7),
('bisma2k1@gmail.com', '0311-6662245', 8),
('tahaaamir47@gmail.com', '0333-8773338', 9),
('minhal10@gmail.com', '0311-8929235', 10),
('wahaj23@gmail.com', '0323-8912366', 11),
('zoyadhedhi@gmail.com', '0332-8919102', 12),
('aafiyahh@gmail.com', '0322-9928288', 13),
('ujala123@gmail.com', '0312-9803666', 14),
('ahmed36@gmail.com', '0322-9827774', 15),
('ahmed36@gmail.com', '0345-2733344', 16),
('hasnainali@gmail.com', '0345-8765679', 17);

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_id` varchar(40) NOT NULL,
  `course_id` varchar(15) NOT NULL,
  `sc_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`student_id`, `course_id`, `sc_id`) VALUES
('ayeshaaamir2001@gmail.com', 'C-001', 1),
('izmaaziz21@gmail.com', 'C-005', 3),
('izmaaziz21@gmail.com', 'C-006', 4),
('izmaaziz21@gmail.com', 'C-007', 5),
('hamzajunaid@gmail.com', 'C-014', 6),
('hamzajunaid@gmail.com', 'C-015', 7),
('hamzajunaid@gmail.com', 'C-016', 8),
('mohsin123@gmail.com', 'C-019', 9),
('mohsin123@gmail.com', 'C-021', 10),
('mohsin123@gmail.com', 'C-022', 11),
('mohsin123@gmail.com', 'C-023', 12),
('hebanaveed123@gmail.com', 'C-007', 14),
('bisma2k1@gmail.com', 'C-010', 15),
('bisma2k1@gmail.com', 'C-011', 16),
('bisma2k1@gmail.com', 'C-012', 17),
('tahaaamir47@gmail.com', 'C-017', 18),
('tahaaamir47@gmail.com', 'C-020', 19),
('minhal10@gmail.com', 'C-001', 20),
('minhal10@gmail.com', 'C-002', 21),
('wahaj23@gmail.com', 'C-017', 22),
('wahaj23@gmail.com', 'C-023', 23),
('ayeshaaamir2001@gmail.com', 'C-003', 24),
('zoyadhedhi@gmail.com', 'C-004', 25),
('zoyadhedhi@gmail.com', 'C-005', 26),
('zoyadhedhi@gmail.com', 'C-006', 27),
('zoyadhedhi@gmail.com', 'C-007', 28),
('zoyadhedhi@gmail.com', 'C-008', 29),
('zoyadhedhi@gmail.com', 'C-009', 30),
('aafiyahh@gmail.com', 'C-017', 31),
('aafiyahh@gmail.com', 'C-018', 32),
('aafiyahh@gmail.com', 'C-019', 33),
('aafiyahh@gmail.com', 'C-021', 35),
('ujala123@gmail.com', 'C-004', 36),
('ujala123@gmail.com', 'C-005', 37),
('ujala123@gmail.com', 'C-006', 38),
('ujala123@gmail.com', 'C-007', 39),
('ujala123@gmail.com', 'C-008', 40),
('ujala123@gmail.com', 'C-009', 41),
('ahmed36@gmail.com', 'C-017', 42),
('ahmed36@gmail.com', 'C-018', 43),
('ahmed36@gmail.com', 'C-019', 44),
('ahmed36@gmail.com', 'C-020', 45),
('ahmed36@gmail.com', 'C-021', 46),
('ahmed36@gmail.com', 'C-022', 47),
('hasnainali@gmail.com', 'C-004', 48),
('hasnainali@gmail.com', 'C-005', 49),
('hasnainali@gmail.com', 'C-007', 51);

-- --------------------------------------------------------

--
-- Table structure for table `student_finance`
--

CREATE TABLE `student_finance` (
  `date` date NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_finance`
--

INSERT INTO `student_finance` (`date`, `student_id`, `status`) VALUES
('2021-09-22', 'izmaaziz21@gmail.com', 'paid'),
('2021-09-29', 'hamzajunaid@gmail.com', 'paid'),
('2021-10-02', 'hebanaveed123@gmail.com', 'paid'),
('2021-10-07', 'bisma2k1@gmail.com', 'paid'),
('2021-10-08', 'minhal10@gmail.com', 'paid'),
('2021-10-13', 'aafiyahh@gmail.com', 'unpaid'),
('2021-10-13', 'ahmed36@gmail.com', 'unpaid'),
('2021-10-13', 'ayeshaaamir2001@gmail.com', 'unpaid'),
('2021-10-13', 'mohsin123@gmail.com', 'unpaid'),
('2021-10-13', 'tahaaamir47@gmail.com', 'unpaid'),
('2021-10-13', 'ujala123@gmail.com', 'unpaid'),
('2021-10-13', 'wahaj23@gmail.com', 'unpaid'),
('2021-10-13', 'zoyadhedhi@gmail.com', 'unpaid'),
('2021-10-14', 'hasnainali@gmail.com', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `student_tutor`
--

CREATE TABLE `student_tutor` (
  `student_id` varchar(40) NOT NULL,
  `tutor_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_tutor`
--

INSERT INTO `student_tutor` (`student_id`, `tutor_id`) VALUES
('ayeshaaamir2001@gmail.com', 'saimawaseem12@gmail.com'),
('izmaaziz21@gmail.com', 'sameenaziz@gmail.com'),
('izmaaziz21@gmail.com', 'hinaaahsan@gmail.com'),
('izmaaziz21@gmail.com', 'musmaqbool@gmail.com'),
('hamzajunaid@gmail.com', 'musmaqbool@gmail.com'),
('hamzajunaid@gmail.com', 'saniya123@gmail.com'),
('hamzajunaid@gmail.com', 'hananabbas12@gmail.com'),
('mohsin123@gmail.com', 'sameenaziz@gmail.com'),
('mohsin123@gmail.com', 'musmaqbool@gmail.com'),
('mohsin123@gmail.com', 'saniya123@gmail.com'),
('mohsin123@gmail.com', 'hananabbas12@gmail.com'),
('hebanaveed123@gmail.com', 'ayeshanav21@gmail.com'),
('bisma2k1@gmail.com', 'sad12@gmail.com'),
('bisma2k1@gmail.com', 'sameenaziz@gmail.com'),
('tahaaamir47@gmail.com', 'kashif123@gmail.com'),
('minhal10@gmail.com', 'kashif123@gmail.com'),
('minhal10@gmail.com', 'hinaaahsan@gmail.com'),
('wahaj23@gmail.com', 'hinaaahsan@gmail.com'),
('wahaj23@gmail.com', 'hananabbas12@gmail.com'),
('ayeshaaamir2001@gmail.com', 'anitaali@gmail.com'),
('zoyadhedhi@gmail.com', 'sad12@gmail.com'),
('zoyadhedhi@gmail.com', 'sameenaziz@gmail.com'),
('zoyadhedhi@gmail.com', 'saimawaseem12@gmail.com'),
('zoyadhedhi@gmail.com', 'halhassan12@gmail.com'),
('zoyadhedhi@gmail.com', 'mariaw@gmail.com'),
('zoyadhedhi@gmail.com', 'hananabbas12@gmail.com'),
('aafiyahh@gmail.com', 'sad12@gmail.com'),
('aafiyahh@gmail.com', 'anitaali@gmail.com'),
('aafiyahh@gmail.com', 'musmaqbool@gmail.com'),
('ujala123@gmail.com', 'sad12@gmail.com'),
('ujala123@gmail.com', 'sameenaziz@gmail.com'),
('ujala123@gmail.com', 'saimawaseem12@gmail.com'),
('ujala123@gmail.com', 'halhassan12@gmail.com'),
('ujala123@gmail.com', 'saniya123@gmail.com'),
('ujala123@gmail.com', 'tariqism@gmail.com'),
('ahmed36@gmail.com', 'hinaaahsan@gmail.com'),
('ahmed36@gmail.com', 'sad12@gmail.com'),
('ahmed36@gmail.com', 'tariqism@gmail.com'),
('ahmed36@gmail.com', 'saimawaseem12@gmail.com'),
('ahmed36@gmail.com', 'ayeshanav21@gmail.com'),
('ahmed36@gmail.com', 'mariaw@gmail.com'),
('hasnainali@gmail.com', 'aziz10@gmail.com'),
('hasnainali@gmail.com', 'sameenaziz@gmail.com'),
('hasnainali@gmail.com', 'ayeshanav21@gmail.com'),
('bisma2k1@gmail.com', 'default@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `tutor_id` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `qualification` varchar(60) NOT NULL,
  `tutor_pay` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`tutor_id`, `fname`, `lname`, `password`, `qualification`, `tutor_pay`) VALUES
('anitaali@gmail.com', 'Anita', 'Ali', 'ali345', 'BE Computer Systems', 3000),
('ayeshanav21@gmail.com', 'Ayesha', 'Naveed', '12345', 'BS English', 2200),
('aziz10@gmail.com', 'Aziz', 'Ismail', '5678', 'PhD', 3200),
('default@gmail.com', 'DEFAULT', 'DEFAULT', '-', 'DEFAULT', NULL),
('halhassan12@gmail.com', 'Haleema', 'Hassan', 'hh123', 'BSc.', 2600),
('hananabbas12@gmail.com', 'Hanan', 'Abbas', 'han22', 'BS Sociology', 1600),
('hinaaahsan@gmail.com', 'Hina', 'Ahsan', '123', 'BSc.', 4500),
('kashif123@gmail.com', 'Kashif', 'Asrar', 'kashif12', 'MBBS', 3200),
('mariaw@gmail.com', 'Maria', 'Waqas', 'mw123', 'PhD', 2200),
('musmaqbool@gmail.com', 'Musab', 'Maqbool', 'mm89', 'BS English', 2200),
('sad12@gmail.com', 'Sadaf', 'Jawed', 'jawed33', 'BE Electrical Engineering', 2700),
('saimawaseem12@gmail.com', 'Saima', 'Waseem', '09876', 'BDS', 4200),
('sameenaziz@gmail.com', 'Sameen', 'Aziz', 'sam12', 'MBA', 4100),
('saniya123@gmail.com', 'Saniya', 'Sohail', '123456', 'BS Urdu', 2200),
('tariqism@gmail.com', 'Tariq', 'Ismail', '1234', 'BSc.', 4100);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_contacts`
--

CREATE TABLE `tutor_contacts` (
  `tutor_id` varchar(30) NOT NULL,
  `contacts` varchar(12) NOT NULL,
  `tcontact_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutor_contacts`
--

INSERT INTO `tutor_contacts` (`tutor_id`, `contacts`, `tcontact_id`) VALUES
('kashif123@gmail.com', '0300-2378271', 1),
('kashif123@gmail.com', '0323-8929292', 2),
('mariaw@gmail.com', '0333-9829292', 3),
('musmaqbool@gmail.com', '0321-0928229', 6),
('sad12@gmail.com', '0321-8793933', 7),
('hinaaahsan@gmail.com', '0323-2865447', 8),
('hinaaahsan@gmail.com', '0321-8282853', 9),
('hananabbas12@gmail.com', '0322-8737838', 10),
('saniya123@gmail.com', '0321-8292924', 11),
('saimawaseem12@gmail.com', '0324-8890209', 12),
('sameenaziz@gmail.com', '0322-6754784', 13),
('aziz10@gmail.com', '0300-2394940', 14),
('aziz10@gmail.com', '0321-6575895', 15),
('ayeshanav21@gmail.com', '0321-7383888', 16),
('halhassan12@gmail.com', '0325-9988833', 17),
('tariqism@gmail.com', '0321-4455393', 18),
('anitaali@gmail.com', '0323-8737373', 24);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_courses`
--

CREATE TABLE `tutor_courses` (
  `tutor_id` varchar(30) NOT NULL,
  `course_id` varchar(15) NOT NULL,
  `tc_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutor_courses`
--

INSERT INTO `tutor_courses` (`tutor_id`, `course_id`, `tc_id`) VALUES
('kashif123@gmail.com', 'C-013', 1),
('kashif123@gmail.com', 'C-020', 2),
('kashif123@gmail.com', 'C-001', 3),
('mariaw@gmail.com', 'C-015', 4),
('mariaw@gmail.com', 'C-022', 5),
('mariaw@gmail.com', 'C-008', 6),
('anitaali@gmail.com', 'C-012', 7),
('anitaali@gmail.com', 'C-019', 8),
('anitaali@gmail.com', 'C-003', 9),
('musmaqbool@gmail.com', 'C-014', 11),
('musmaqbool@gmail.com', 'C-021', 12),
('musmaqbool@gmail.com', 'C-007', 13),
('sad12@gmail.com', 'C-011', 14),
('sad12@gmail.com', 'C-018', 15),
('sad12@gmail.com', 'C-004', 16),
('hinaaahsan@gmail.com', 'C-010', 17),
('hinaaahsan@gmail.com', 'C-017', 18),
('hinaaahsan@gmail.com', 'C-002', 19),
('hinaaahsan@gmail.com', 'C-006', 20),
('hananabbas12@gmail.com', 'C-016', 21),
('hananabbas12@gmail.com', 'C-023', 22),
('hananabbas12@gmail.com', 'C-009', 23),
('saniya123@gmail.com', 'C-015', 24),
('saniya123@gmail.com', 'C-022', 25),
('saniya123@gmail.com', 'C-008', 26),
('saimawaseem12@gmail.com', 'C-013', 27),
('saimawaseem12@gmail.com', 'C-020', 28),
('saimawaseem12@gmail.com', 'C-001', 29),
('saimawaseem12@gmail.com', 'C-006', 30),
('sameenaziz@gmail.com', 'C-012', 31),
('sameenaziz@gmail.com', 'C-019', 32),
('sameenaziz@gmail.com', 'C-005', 33),
('aziz10@gmail.com', 'C-002', 36),
('aziz10@gmail.com', 'C-004', 37),
('ayeshanav21@gmail.com', 'C-014', 38),
('ayeshanav21@gmail.com', 'C-021', 39),
('ayeshanav21@gmail.com', 'C-007', 40),
('halhassan12@gmail.com', 'C-013', 41),
('halhassan12@gmail.com', 'C-023', 42),
('halhassan12@gmail.com', 'C-003', 43),
('halhassan12@gmail.com', 'C-007', 44),
('tariqism@gmail.com', 'C-011', 45),
('tariqism@gmail.com', 'C-019', 46),
('tariqism@gmail.com', 'C-002', 47),
('tariqism@gmail.com', 'C-009', 48),
('aziz10@gmail.com', 'C-017', 50);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_payroll`
--

CREATE TABLE `tutor_payroll` (
  `date` date NOT NULL,
  `tutor_id` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutor_payroll`
--

INSERT INTO `tutor_payroll` (`date`, `tutor_id`, `status`) VALUES
('2021-09-01', 'ayeshanav21@gmail.com', 'received'),
('2021-09-29', 'mariaw@gmail.com', 'received'),
('2021-09-30', 'musmaqbool@gmail.com', 'received'),
('2021-10-01', 'halhassan12@gmail.com', 'received'),
('2021-10-06', 'aziz10@gmail.com', 'received'),
('2021-10-13', 'anitaali@gmail.com', 'not received'),
('2021-10-13', 'hananabbas12@gmail.com', 'not received'),
('2021-10-13', 'hinaaahsan@gmail.com', 'not received'),
('2021-10-13', 'kashif123@gmail.com', 'not received'),
('2021-10-13', 'sad12@gmail.com', 'received'),
('2021-10-13', 'saimawaseem12@gmail.com', 'not received'),
('2021-10-13', 'sameenaziz@gmail.com', 'not received'),
('2021-10-13', 'saniya123@gmail.com', 'not received'),
('2021-10-13', 'tariqism@gmail.com', 'not received');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `CLASSFK` (`class_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_contacts`
--
ALTER TABLE `student_contacts`
  ADD PRIMARY KEY (`scontact_id`),
  ADD KEY `STUDENTFK` (`student_id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`sc_id`),
  ADD KEY `STUDENTFK` (`student_id`),
  ADD KEY `COURSEFK` (`course_id`);

--
-- Indexes for table `student_finance`
--
ALTER TABLE `student_finance`
  ADD PRIMARY KEY (`date`,`student_id`),
  ADD KEY `STUDFINANCEFK` (`student_id`);

--
-- Indexes for table `student_tutor`
--
ALTER TABLE `student_tutor`
  ADD KEY `STUDENTTUTORFK` (`student_id`),
  ADD KEY `TUTORSTUDENTFK` (`tutor_id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`tutor_id`);

--
-- Indexes for table `tutor_contacts`
--
ALTER TABLE `tutor_contacts`
  ADD PRIMARY KEY (`tcontact_id`),
  ADD KEY `TUTORCONTACTFK` (`tutor_id`);

--
-- Indexes for table `tutor_courses`
--
ALTER TABLE `tutor_courses`
  ADD PRIMARY KEY (`tc_id`),
  ADD KEY `TUTORFK` (`tutor_id`),
  ADD KEY `COURSETUTORFK` (`course_id`);

--
-- Indexes for table `tutor_payroll`
--
ALTER TABLE `tutor_payroll`
  ADD PRIMARY KEY (`date`,`tutor_id`),
  ADD KEY `TUFINANCEFK` (`tutor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_contacts`
--
ALTER TABLE `student_contacts`
  MODIFY `scontact_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `sc_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tutor_contacts`
--
ALTER TABLE `tutor_contacts`
  MODIFY `tcontact_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tutor_courses`
--
ALTER TABLE `tutor_courses`
  MODIFY `tc_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_contacts`
--
ALTER TABLE `student_contacts`
  ADD CONSTRAINT `STUDENTFK` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD CONSTRAINT `COURSEFK` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_foreign_key_name` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student_finance`
--
ALTER TABLE `student_finance`
  ADD CONSTRAINT `STUDFINANCEFK` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `student_tutor`
--
ALTER TABLE `student_tutor`
  ADD CONSTRAINT `STUDENTTUTORFK` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `TUTORSTUDENTFK` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tutor_contacts`
--
ALTER TABLE `tutor_contacts`
  ADD CONSTRAINT `TUTORCONTACTFK` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`);

--
-- Constraints for table `tutor_courses`
--
ALTER TABLE `tutor_courses`
  ADD CONSTRAINT `COURSETUTORFK` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `TUTORFK` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`);

--
-- Constraints for table `tutor_payroll`
--
ALTER TABLE `tutor_payroll`
  ADD CONSTRAINT `TUFINANCEFK` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
