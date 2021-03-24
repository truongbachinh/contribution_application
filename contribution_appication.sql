-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 24, 2021 at 08:57 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `contribution_appication`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
                           `f_id` int(20) NOT NULL,
                           `f_name` varchar(125) NOT NULL,
                           `f_description` text NOT NULL,
                           `f_contact` varchar(255) NOT NULL,
                           `faculty_id` int(20) NOT NULL,
                           `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`f_id`, `f_name`, `f_description`, `f_contact`, `faculty_id`, `teacher_id`) VALUES
(23, 'Van', 'alfndajdfjkf', '0987654321', 1232, NULL),
(34, 'Toan', '489530203909876545678', '098765678332', 11, 4),
(234, 'Khoá 23', 'la,sndfknap;sknefpnapsdinfpianspfe', '098765434567', 98230, 4);

-- --------------------------------------------------------

--
-- Table structure for table `file_categories`
--

CREATE TABLE `file_categories` (
                                   `ctg_id` int(20) NOT NULL,
                                   `ctg_name` varchar(255) NOT NULL,
                                   `ctg_description` text NOT NULL,
                                   `ctg_deadline` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_categories`
--

INSERT INTO `file_categories` (`ctg_id`, `ctg_name`, `ctg_description`, `ctg_deadline`) VALUES
(32, 'Nojp bai', ',jdblskl', 'l83ow');

-- --------------------------------------------------------

--
-- Table structure for table `file_submit`
--

CREATE TABLE `file_submit` (
                               `file_id` int(11) NOT NULL,
                               `file_content_upload` varchar(555) NOT NULL,
                               `file_date_uploaded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_submit`
--

INSERT INTO `file_submit` (`file_id`, `file_content_upload`, `file_date_uploaded`) VALUES
(6, './image/7ce05ce8d180ba796950bfe544742dbeAppDelegate.swift', '2021-03-19'),
(7, './image/a1ee8f3c68afe556e9ae868094d13286AppDelegate.swift', '2021-03-19'),
(8, './image/65fa955bd8efa8ad14ae27cc309f42caAppDelegate.swift', '2021-03-19'),
(9, './image/fae347be4414729963c4d0cb862189a0AppDelegate.swift', '2021-03-19'),
(10, './image/e91c21a3e961907d1bafc66b71397473AppDelegate.swift', '2021-03-19'),
(11, './image/642d5961c616b53cbeaf0034fc803cfbAppDelegate.swift', '2021-03-19'),
(12, './image/6e2d753345b1e109011359bd04597183AppDelegate.swift', '2021-03-19'),
(13, './image/fce15b15ee1ca01b1f87a4b97bdd18d2AppDelegate.swift', '2021-03-19'),
(14, './image/fcb9a8dd1cc5bc7839a2d2565c4e83d1AppDelegate.swift', '2021-03-19'),
(15, './image/ea89d172b888c18959f5c594b5f2a70eAppDelegate.swift', '2021-03-19'),
(16, './image/f9309f2942915dc0697bccbc95ff6a58AppDelegate.swift', '2021-03-19'),
(17, './image/472a38fd963d93fd8f49697c1612d8acAppDelegate.swift', '2021-03-19'),
(18, './image/ab6c874f3519a35612bbbd1ddae1a935AppDelegate.swift', '2021-03-19'),
(19, './image/dd7cb004b1578a8fac3a93b6515e8e9fAppDelegate.swift', '2021-03-19'),
(20, './image/0c0e3339fa766792d4c04a1b02b78985AppDelegate.swift', '2021-03-19'),
(21, './image/1b0f4984b8e97960c6beef69ccadc66dAppDelegate.swift', '2021-03-19'),
(22, './image/05c6b670bf1647cea5fb73e3720cbd29AppDelegate.swift', '2021-03-19'),
(23, './image/a252dc2f5feebd9ed439bfaf6d94817fAppDelegate.swift', '2021-03-19'),
(24, './image/9e432bdaa7552ede8da4d7c09e217520AppDelegate.swift', '2021-03-19'),
(25, './image/7270a0e0ffbc42d251aeb58e76724a90AppDelegate.swift', '2021-03-19'),
(26, './image/1d2b3bd0dc242d058f768a130afae3ddAppDelegate.swift', '2021-03-19'),
(27, './image/17eea00d340fca430a1588aaf399875bAppDelegate.swift', '2021-03-19'),
(28, './image/5e06419e49b484af7fdaff763e7b508cAppDelegate.swift', '2021-03-22'),
(29, './image/8a1c825115a2b10dab62a0702313e872AppDelegate.swift', '2021-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `file_submit_to_system`
--

CREATE TABLE `file_submit_to_system` (
                                         `file_id` int(20) NOT NULL,
                                         `file_categories_id` int(20) NOT NULL,
                                         `user_id` int(20) NOT NULL,
                                         `file_name` varchar(255) NOT NULL,
                                         `file_description` text NOT NULL,
                                         `file_faculty_id` int(20) NOT NULL,
                                         `file_semester_id` int(20) NOT NULL,
                                         `status` varchar(20) NOT NULL,
                                         `comment` text NOT NULL,
                                         `file_date_uploaded` datetime NOT NULL,
                                         `file_date_edited` datetime NOT NULL,
                                         `file_content_upload` text NOT NULL,
                                         `date_post` date DEFAULT NULL,
                                         `file_submit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_submit_to_system`
--

INSERT INTO `file_submit_to_system` (`file_id`, `file_categories_id`, `user_id`, `file_name`, `file_description`, `file_faculty_id`, `file_semester_id`, `status`, `comment`, `file_date_uploaded`, `file_date_edited`, `file_content_upload`, `date_post`, `file_submit_id`) VALUES
(32424, 32, 353, '23451235', 'asgasdf,ajSHFOIUA0FOIHAP', 34, 233, '1', 'DAY LA COMMENT', '2021-03-02 09:24:33', '2021-03-19 09:24:33', 'jsoirhpgihaoeh[foha\sdl;aksngpiogfesfasdgasdg', '2021-03-02', 29);

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
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `n_id` int(20) NOT NULL,
  `n_faculty_id` int(20) NOT NULL,
  `notification` text NOT NULL,
  `n_date_time` datetime NOT NULL,
  `n_status` int(11) NOT NULL,
  `n_user_id` int(20) NOT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(20) NOT NULL,
  `semester` varchar(125) NOT NULL,
  `schoolyear` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester_id`, `semester`, `schoolyear`) VALUES
(233, 'efasdfasfdasd', 'fasdfasdfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE `tbl_chat` (
  `id` int(11) NOT NULL,
  `use_id_1` int(11) NOT NULL,
  `use_id_2` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_chat`
--

INSERT INTO `tbl_chat` (`id`, `use_id_1`, `use_id_2`, `message`, `date`) VALUES
(1, 1, 2, 'day la chat 1', '2021-03-11 14:22:33'),
(2, 1, 2, 'day lag chat 2', '2021-03-17 14:22:33'),
(18, 1, 2, 'char', '2021-03-23 15:06:09'),
(27, 1, 2, 'ggfu', '2021-03-23 15:19:48'),
(44, 1, 2, 'ai guitar', '2021-03-23 16:03:42'),
(45, 2, 1, 'tao gui', '2021-03-23 16:04:01'),
(46, 2, 1, 't gui', '2021-03-23 16:04:18'),
(47, 2, 1, 't gui', '2021-03-23 16:04:48'),
(48, 2, 1, '5756', '2021-03-23 16:05:27'),
(49, 2, 1, '5756', '2021-03-23 16:05:46'),
(50, 1, 2, 'du ma', '2021-03-23 16:13:31'),
(51, 1, 2, 'annas', '2021-03-23 16:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(125) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `u_create_time` date NOT NULL,
  `fullname` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `username`, `password`, `email`, `status`, `u_create_time`, `fullname`) VALUES
(1, 'user1', '', 'chinhtbgch17527@fpt.edu.vn', 1, '0000-00-00', 'Truong Ba Chinh David COdy'),
(2, 'user2', '', 'linhttmgbh17474@fpt.edu.vn', 1, '0000-00-00', 'My Linh'),
(4, 'Kha', '098773532', 'ahsdhsj@gmail.vc', 2, '2021-03-02', 'Minh Kha'),
(353, 'Nguyễn Trung Hiểus', '0987654321', 'gmayd@gmaif.com', 1, '2021-03-10', 'hieunt12');

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
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `file_categories`
--
ALTER TABLE `file_categories`
  ADD PRIMARY KEY (`ctg_id`);

--
-- Indexes for table `file_submit`
--
ALTER TABLE `file_submit`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `file_submit_to_system`
--
ALTER TABLE `file_submit_to_system`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `fogeign_key_file_semester` (`file_semester_id`),
  ADD KEY `file_submit_to_system_ibfk_1` (`file_categories_id`),
  ADD KEY `file_submit_to_system_user_id` (`user_id`),
  ADD KEY `fogeign_key_file_faculty` (`file_faculty_id`),
  ADD KEY `file_submit_id` (`file_submit_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`n_id`),
  ADD KEY `fogeign_key_notification_faculty` (`n_faculty_id`),
  ADD KEY `fogeign_key_notification_user` (`n_user_id`);

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
-- Indexes for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

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
-- AUTO_INCREMENT for table `file_submit`
--
ALTER TABLE `file_submit`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `file_submit_to_system`
--
ALTER TABLE `file_submit_to_system`
  MODIFY `file_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32425;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `n_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `user_role_Id` int(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `file_submit_to_system`
--
ALTER TABLE `file_submit_to_system`
  ADD CONSTRAINT `file_submit_to_system_ibfk_1` FOREIGN KEY (`file_categories_id`) REFERENCES `file_categories` (`ctg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `file_submit_to_system_ibfk_2` FOREIGN KEY (`file_submit_id`) REFERENCES `file_submit` (`file_id`),
  ADD CONSTRAINT `file_submit_to_system_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fogeign_key_file_faculty` FOREIGN KEY (`file_faculty_id`) REFERENCES `faculty` (`f_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fogeign_key_file_semester` FOREIGN KEY (`file_semester_id`) REFERENCES `semester` (`semester_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `fogeign_key_notification_faculty` FOREIGN KEY (`n_faculty_id`) REFERENCES `faculty` (`f_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fogeign_key_notification_user` FOREIGN KEY (`n_user_id`) REFERENCES `user_role` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `fogeign_key_userRole_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fogeign_key_userRole_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;
