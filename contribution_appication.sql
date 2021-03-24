-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 08:03 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contribution_appication`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `admin_id`) VALUES
('admin', 'admin', 1),
('admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `f_id` int(20) NOT NULL,
  `f_name` varchar(125) NOT NULL,
  `f_description` text NOT NULL,
  `f_manager` varchar(255) NOT NULL,
  `faculty_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`f_id`, `f_name`, `f_description`, `f_manager`, `faculty_id`) VALUES
(14, 'Khoa 1', 'Ad', 'ad1', 'GCH17527'),
(15, 'Khoa 2', 'oke\r\n', 'ad2', 'GCH17528'),
(16, 'Khoa 3', 'ad', 'ad3', 'GCH17529'),
(17, 'Khoa 4', 'oke\r\n', 'ad4', 'GCH17530'),
(18, 'Khoa 5', 'ad', 'ad5', 'GCH17531'),
(19, 'Khoa 6', 'oke', 'ad6', 'GCH17532');

-- --------------------------------------------------------

--
-- Table structure for table `file_content`
--

CREATE TABLE `file_content` (
  `file_content_id` int(20) NOT NULL,
  `file_content_name` varchar(3000) NOT NULL,
  `file_content_update_name` int(11) NOT NULL,
  `file_submit_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_content`
--

INSERT INTO `file_content` (`file_content_id`, `file_content_name`, `file_content_update_name`, `file_submit_id`) VALUES
(2, '3c01c28506f1362c09ca7198cb0603574A76F959-31D9-4C49-BADD-BDF58593C379.jpg', 1616564154, 45),
(3, '3c01c28506f1362c09ca7198cb06035745C64A49-E3CC-4FE8-8DAA-93ED181C53C1.jpg', 1616564154, 45),
(4, '3c01c28506f1362c09ca7198cb06035797485493_2490671654577425_8179314827781472256_n.png', 1616564154, 45),
(8, 'c102c2135da7ea592cfe68f50cd828d245C64A49-E3CC-4FE8-8DAA-93ED181C53C1.jpg', 1616565434, 47),
(9, 'c102c2135da7ea592cfe68f50cd828d297485493_2490671654577425_8179314827781472256_n.png', 1616565434, 47),
(10, 'c102c2135da7ea592cfe68f50cd828d2144531148_200303688502170_6189451453374423095_n.png', 1616565434, 47);

-- --------------------------------------------------------

--
-- Table structure for table `file_submit`
--

CREATE TABLE `file_submit` (
  `file_id` int(11) NOT NULL,
  `file_authod` varchar(255) NOT NULL,
  `file_art` varchar(255) NOT NULL,
  `file_content_upload` varchar(555) NOT NULL,
  `file_date_uploaded` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_submit`
--

INSERT INTO `file_submit` (`file_id`, `file_authod`, `file_art`, `file_content_upload`, `file_date_uploaded`) VALUES
(6, 'Chinh', 'Cloud Computing', './image/0f5512a17dcc8fed282c62a536bd54a3144531148_200303688502170_6189451453374423095_n.png', 1615204246),
(7, 'Chinh', 'Cloud Computing', './image/6abfeaee52123804e5b1596ce052c5fa001142769-Chinh-CiLi Project Report.docx', 1615204902),
(8, 'Chinh', 'Cloud Computing', './image/60f8d5c7340efc6824c217b017d958f1001142769-Chinh-CiLi Project Report.docx', 1615204991),
(9, 'Chinh', 'Cloud Computing', './image/bb51aed4782ec9ebe1ee329af3237af0001142769-Chinh-CiLi Project Report.docx', 1615205046),
(10, 'Chinh', 'Chinh', './image/5d0bf8caa6e7134fa0cf854ca2d69b6c144531148_200303688502170_6189451453374423095_n.png', 1615394921);

-- --------------------------------------------------------

--
-- Table structure for table `file_submit_to_topic`
--

CREATE TABLE `file_submit_to_topic` (
  `id` int(20) NOT NULL,
  `file_name` varchar(55) NOT NULL,
  `file_authod` varchar(55) NOT NULL,
  `file_status` int(20) NOT NULL,
  `file_comment` text NOT NULL,
  `file_date_uploaded` datetime NOT NULL,
  `file_date_edited` datetime NOT NULL,
  `file_topic_uploaded` int(11) NOT NULL,
  `file_userId_uploaded` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_submit_to_topic`
--

INSERT INTO `file_submit_to_topic` (`id`, `file_name`, `file_authod`, `file_status`, `file_comment`, `file_date_uploaded`, `file_date_edited`, `file_topic_uploaded`, `file_userId_uploaded`) VALUES
(45, 'Cloud Computing', 'admin', 1, '', '2021-03-24 12:35:54', '0000-00-00 00:00:00', 11, 38),
(47, 'student 2 nộp môn 1', 'CHinh 2', 1, '', '2021-03-24 12:57:14', '0000-00-00 00:00:00', 11, 40);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(20) NOT NULL,
  `news_content_short` varchar(255) NOT NULL,
  `news_content` text NOT NULL,
  `news_image` varchar(255) NOT NULL,
  `news_date_create_time` datetime NOT NULL,
  `news_title` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(20) NOT NULL,
  `role_name` varchar(15) NOT NULL,
  `role_full_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `role_full_name`) VALUES
(1, 'admin', 'admin permissio'),
(2, 'user', 'user permission');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(20) NOT NULL,
  `semester` varchar(125) NOT NULL,
  `schoolyear` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `topic_id` varchar(20) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `topic_description` varchar(255) NOT NULL,
  `topic_deadline` datetime NOT NULL,
  `topic_of_faculty` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `topic_id`, `topic_name`, `topic_description`, `topic_deadline`, `topic_of_faculty`) VALUES
(11, 'GCH 17527', 'Môn 1', 'Nộp bài', '2021-03-24 10:35:00', 14),
(12, 'GCH 17528', 'Môn 2', 'Nộp bài môn 2', '2021-03-24 10:41:00', 14),
(13, 'GCH 17529', 'Môn 3', 'Nộp bài môn 2', '2021-03-24 10:42:00', 14),
(14, 'GCH 17530', 'Môn 4', 'Nộp bài môn 4', '2021-03-24 10:42:00', 14),
(15, 'GCH 175233', 'Môn 1', 'Nộp bài môn 1', '2021-03-24 11:05:00', 15),
(16, 'GCH 175232', 'Môn 2', 'Nộp bài môn 2', '2021-03-24 11:05:00', 15),
(17, 'GCH 1752721', 'Môn 3', 'Nộp bài môn 3', '2021-03-24 11:11:00', 15);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(125) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `u_create_time` int(11) NOT NULL,
  `u_update_time` int(11) NOT NULL,
  `fullname` varchar(125) NOT NULL,
  `role` varchar(31) NOT NULL,
  `faculty_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `username`, `password`, `email`, `status`, `u_create_time`, `u_update_time`, `fullname`, `role`, `faculty_id`) VALUES
(38, 'student1', '123456', 'truongbachinh1998@gmail.com', 1, 1616555828, 0, 'Trương Bá Chính', 'student', 14),
(39, 'faculty', '123456', 'truongbachinh1998@gmail.com', 1, 1616556391, 0, 'Trương Bá Chính admin khoa 1', 'manager-coordinator', 14),
(40, 'student2', '123456', 'truongbachinh1998@gmail.com', 1, 1616557449, 0, 'chinh truong', 'student', 14),
(41, 'faculty2', '123456', 'truongbachinh1998@gmail.com', 1, 1616558321, 0, 'chinh truong admin khoa 2', 'manager-coordinator', 15),
(42, 'student 3', '123456', 'truongbachinh1998@gmail.com', 1, 1616558341, 0, 'Trương Bá Chính', 'student', 15),
(43, 'student 4', '123456', 'truongbachinh1998@gmail.com', 1, 1616558355, 0, 'Trương Bá Chính', 'student', 15);

-- --------------------------------------------------------

--
-- Table structure for table `user_infor`
--

CREATE TABLE `user_infor` (
  `id` int(20) NOT NULL,
  `id_card` varchar(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `address` varchar(125) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `major` varchar(128) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_role_Id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `role_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `file_content`
--
ALTER TABLE `file_content`
  ADD PRIMARY KEY (`file_content_id`),
  ADD KEY `fogeign_key_file_file_submit` (`file_submit_id`);

--
-- Indexes for table `file_submit`
--
ALTER TABLE `file_submit`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `file_submit_to_topic`
--
ALTER TABLE `file_submit_to_topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_userId_uploaded` (`file_userId_uploaded`),
  ADD KEY `fogeign_key_file_topic` (`file_topic_uploaded`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`,`role_name`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fogeign_key_topic_faculty` (`topic_of_faculty`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `fogeign_key_user_faculty` (`faculty_id`);

--
-- Indexes for table `user_infor`
--
ALTER TABLE `user_infor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_card` (`id_card`),
  ADD KEY `fogeign_key_user_user_infor` (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_role_Id`),
  ADD KEY `fogeign_key_userRole_role` (`role_id`),
  ADD KEY `fogeign_key_userRole_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `file_content`
--
ALTER TABLE `file_content`
  MODIFY `file_content_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `file_submit`
--
ALTER TABLE `file_submit`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `file_submit_to_topic`
--
ALTER TABLE `file_submit_to_topic`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_infor`
--
ALTER TABLE `user_infor`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `user_role_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `file_content`
--
ALTER TABLE `file_content`
  ADD CONSTRAINT `fogeign_key_file_file_submit` FOREIGN KEY (`file_submit_id`) REFERENCES `file_submit_to_topic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `file_submit_to_topic`
--
ALTER TABLE `file_submit_to_topic`
  ADD CONSTRAINT `fogeign_key_file_topic` FOREIGN KEY (`file_topic_uploaded`) REFERENCES `topic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fogeign_key_file_user` FOREIGN KEY (`file_userId_uploaded`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `fogeign_key_topic_faculty` FOREIGN KEY (`topic_of_faculty`) REFERENCES `faculty` (`f_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fogeign_key_user_faculty` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`f_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_infor`
--
ALTER TABLE `user_infor`
  ADD CONSTRAINT `fogeign_key_user_user_infor` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `fogeign_key_userRole_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fogeign_key_userRole_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
