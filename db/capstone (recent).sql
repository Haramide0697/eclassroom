-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2021 at 10:07 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(11, 'admin', '2018-09-16 19:47:00', 'Add School Year 2018-2019'),
(12, 'admin', '2018-09-17 14:34:20', 'Add Subject COM 111'),
(13, 'admin', '2018-09-17 14:35:04', 'Add Subject COM 112 '),
(14, 'admin', '2018-09-17 14:37:09', 'Add Subject COM 113 '),
(15, 'admin', '2018-09-17 14:37:44', 'Add Subject STA 111'),
(16, 'admin', '2018-09-17 14:38:12', 'Add Subject STA 112'),
(17, 'admin', '2018-09-17 14:38:43', 'Add Subject MTH 111'),
(18, 'admin', '2018-09-17 14:39:16', 'Add Subject MTH 112'),
(19, 'admin', '2018-09-17 14:39:55', 'Add Subject GNS 111'),
(20, 'admin', '2018-09-17 14:40:28', 'Add Subject GNS 101'),
(21, 'admin', '2018-09-17 14:40:59', 'Add Subject LIB 111'),
(22, 'admin', '2018-09-17 14:41:55', 'Add Subject COM 121'),
(23, 'admin', '2018-09-17 14:42:36', 'Add Subject COM 122'),
(24, 'admin', '2018-09-17 14:43:14', 'Add Subject COM 123 '),
(25, 'admin', '2018-09-17 14:43:38', 'Add Subject COM 124'),
(26, 'admin', '2018-09-17 14:44:04', 'Add Subject COM 125 '),
(27, 'admin', '2018-09-17 14:44:33', 'Add Subject COM 126'),
(28, 'admin', '2018-09-17 14:45:01', 'Add Subject GNS 121'),
(29, 'admin', '2018-09-17 14:45:27', 'Add Subject COM 211 '),
(30, 'admin', '2018-09-17 14:45:52', 'Add Subject COM 212'),
(31, 'admin', '2018-09-17 14:46:28', 'Add Subject COM 214 '),
(32, 'admin', '2018-09-17 14:46:56', 'Add Subject COM 215 '),
(33, 'admin', '2018-09-17 14:47:22', 'Add Subject COM 216 '),
(34, 'admin', '2018-09-17 14:47:56', 'Add Subject GNS 122'),
(35, 'admin', '2018-09-17 14:48:43', 'Add Subject COM 221'),
(36, 'admin', '2018-09-17 14:49:15', 'Add Subject COM 222 '),
(37, 'admin', '2018-09-17 14:49:52', 'Add Subject COM 223'),
(38, 'admin', '2018-09-17 14:50:15', 'Add Subject COM 224'),
(39, 'admin', '2018-09-17 14:50:39', 'Add Subject COM 225 '),
(40, 'admin', '2018-09-17 14:51:01', 'Add Subject COM 226 '),
(41, 'admin', '2018-09-17 14:51:27', 'Add Subject '),
(42, '', '2018-09-26 13:39:29', 'Edit Subject COM 224'),
(43, '', '2018-09-26 13:40:15', 'Edit Subject COM 223'),
(44, '', '2018-09-26 13:41:08', 'Edit Subject GNS 202'),
(45, 'admin', '2019-09-11 13:14:54', 'Add Subject COM 400'),
(46, 'admin', '2019-09-11 13:15:41', 'Edit Subject COM400'),
(47, '', '2019-10-22 16:47:27', 'Add Subject COM 421'),
(48, 'admin', '2019-10-22 17:03:03', 'Add Subject dts 112'),
(49, 'admin', '2019-10-22 17:05:29', 'Add User moji'),
(50, 'admin', '2019-10-22 17:30:07', 'Add School Year 2017-2018'),
(51, 'admin', '2019-10-25 12:54:13', 'Add User TEMITOPE');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(1, 'admin/uploads/9426_File_System Programing.pdf', '2018-09-27 11:45:36', 'Your mid semester test eill be from the chapter 5 and 6 of your course material.  Download read and ', 20, 187, 'MID SEMESTER');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(24, 'ND 1-FT'),
(25, 'ND 1- DPP'),
(27, 'ND 2-FT'),
(28, 'ND 2- DPP'),
(32, 'HND 1 FT'),
(33, 'HND 1 DPP'),
(34, 'HND 2 FT'),
(35, 'HND 2 DPP');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE IF NOT EXISTS `class_quiz` (
  `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  PRIMARY KEY (`class_quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(1, 202, 600, 1),
(2, 203, 600, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE IF NOT EXISTS `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL,
  PRIMARY KEY (`class_subject_overview_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style="font-size:16px"><strong>Mission</strong></span></pre>\r\n\r\n<p style="text-align:left"><span style="font-family:arial,helvetica,sans-serif; font-size:medium"><span style="font-size:large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style="font-size:18px"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; A leading institution in higher and continuing education commited to engage in quality instruction, development-oriented research sustinable lucrative economic enterprise, and responsive extension and training services through relevant academic programs to empower a human resource that responds effectively to challenges in life and acts as catalyst in the holistoic development of a humane society.&nbsp;</span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n'),
(2, 'Vision', '<pre>\r\n<span style="font-size:large"><strong>Vision</strong></span></pre>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px">Through consistent and professional exposure, NACOSS provides an excellent foundation for Computer Scientists, Engineers and any IT related disciplines in Nigeria. Over the years, NACOSS has given to the economy and society the finest professionals in Information and Communications Technology ICT and is dedicated to doing even more in future. A study of NACOSS activities indicates that it reveals IT career and entrepreneurship opportunities to the youth of Nigeria. It provides opportunities for them to explore and fulfill their potentials and become more competitive in the IT environment locally and globally. It is about equipping young people to become contributors and change agents in Nigeria through IT. When Nigeria youths are empowered and driven in the field of Computing and related areas, they drive change in Nigeria and Africa, and they change the face of IT.</span></p>\r\n'),
(3, 'History', '<pre>\r\n<span style="font-size:large">HISTORY &nbsp;</span> </pre>\r\n\r\n<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px">The Nigerian Association of Computer Science Students (NACOSS) is a student professional body with presence in almost all tertiary institutions in Nigeria (both private and government owned). NACOSS was founded by groups of students in July 1993 with the backing of Nigerian Computer Society (NCS) as its parent body. It provides avenues for students (in any IT related field) to highlight and champion issues of interest in a coordinated and organized manner. NACOSS members (NACOSSites) are students studying in tertiary institutions in computer related disciplines including: Computer Science, Computer Engineering, Information Technology, etc. Each member is essentially a member of the Association&rsquo;s local chapter in his or her institution. As of April 2012, NACOSS states that it is the largest and most organized student body in West Africa, with registered members of about Two Hundred and Fifty thousand (250 000) in well over One Hundred and fifty local chapters (and more unregistered) in different Institutions (Universities, Polytechnics and Colleges of Education) across the six (6) Geo-political zones of Nigeria.</span></p>\r\n'),
(4, 'Footer', '<p style="text-align:center">Computer Aided Learning Management System</p>\r\n\r\n<p style="text-align:center">All Rights Reserved &reg;2018</p>\r\n'),
(5, 'Upcoming Events', '<pre>\r\nUP COMING EVENTS</pre>\r\n\r\n<p><strong>&gt;</strong> EXAM</p>\r\n\r\n<p><strong>&gt;</strong> INTERCAMPUS MEET</p>\r\n\r\n<p><strong>&gt;</strong> DEFENSE</p>\r\n\r\n<p><strong>&gt;</strong> ENROLLMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'Title', '<p><span style="font-family:trebuchet ms,geneva">Computer Aided Learning Management System</span></p>\r\n'),
(11, 'Directories', '<div class="jsn-article-content" style="text-align: left;">\r\n<pre>\r\n<span style="font-size:medium"><em><strong>DIRECTORIES</strong></em></span></pre>\r\n\r\n<ul>\r\n	<li>HOD Office&nbsp;- 0801</li>\r\n	<li>Department Secretary - 0802</li>\r\n	<li>Sbtudent Presidents Office - 0803</li>\r\n	<li>IT lab - 0804</li>\r\n	<li>Registrar Office - 0805</li>\r\n	<li>Course Coordinators&nbsp;- 0806</li>\r\n</ul>\r\n</div>\r\n'),
(12, 'president', '<p>It is my great pleasure and privilege to welcome you to NACOSS&nbsp;official website. Accept my deep appreciation for continuously taking interest in NACOSS and its programs and activities.<br />\r\nRecently, the challenges of the knowledge era of the 21st Century led me to think very deeply how educational institutions of higher learning must vigorously pursue relevant education to compete with and respond to the challenges of globalization. As an international fellow, I realized that in the face of this globalization and technological advancement, educational institutions are compelled to work extraordinary in educating the youths and enhancing their potentials for gainful employment and realization of their dreams to become effective citizens.<br />\r\n<span style="color:rgb(0, 0, 0); font-family:roboto,sans-serif; font-size:14px">NACOSS aims to re &ndash; orient the Nigerian youth and project the IT profession through Seminars, Lectures, Symposia, Workshops and other related activities. The intention appears to be the active and purposeful promotion of the study of IT and other positive forms of IT knowledge acquisition. NACOSS organizes capacity building exercises to enlighten the youths, the young people of Nigeria on how to become entrepreneurs using acquired IT skills and also to create platforms for neophytes, and gurus associated with the intriguing world of Information Technology to exhibit their products, services and software to businesses, industry and the public. These forums are also directed towards encouraging the patronage of made-in Nigeria technology, software and services while also engaging participants and exhibitors positively. NACOSS events include intensive enlightenment of students by IT Industry players to create awareness and expose NACOSSites to the reality of IT industry, the business environment and career growth requirements. Thorough discussion and interaction between students and experienced professionals, managers and policy makers lead to career guidance and mentorship for professional growth and successful entrepreneurship. Such events usually include consultation and deliberations on new and emerging world technologies and the need for local content development and addressing issues relating to the digital divide. Software exhibitions are a feature of the events to encourage and reward NACOSSites involved in software development. NACOSS aims to foster the growth of the IT profession and promotes the interests of the profession through its engagement with the youth. It does not engage in sex discrimination, and does not promote ethnicity, religion and other forms of nepotism or discrimination. NACOSS is committed to professionalism and youth empowerment through IT. It aims to connect members with the reality of industry and society in ways that will empower them and enable them to make significant impact in their communities, locally and globally.</span></p>\r\n\r\n<p style="text-align:justify"><br />\r\n<br />\r\nWarmest welcome and I wish you well!</p>\r\n\r\n<p style="text-align:justify"><br />\r\n&nbsp;</p>\r\n\r\n<p style="text-align:justify"><br />\r\nDEPARTMENTAL&nbsp;President&nbsp;</p>\r\n'),
(13, 'motto', '<p><font color="#fff0f5" face="arial, helvetica, sans-serif"><strong>ONE NACOSS!!!</strong></font></p>\r\n\r\n<p><font color="#fff0f5" face="arial, helvetica, sans-serif"><strong>CONNECTING THE WORLD...</strong></font></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style="font-size:16px"><strong>Campuses</strong></span></pre>\r\n\r\n<ul>\r\n	<li>ilaro Campus</li>\r\n	<li>mapoly Campus</li>\r\n	<li>oke ogun Campus</li>\r\n	<li>ospotech Campus</li>\r\n	<li>saki campus</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(20, 'COMPUTER', 'MR G.G.O EGBEDOKUN'),
(21, 'STATISTICS', 'MR. D.A AYANSOLA'),
(22, 'GNS', 'MR M.K AKANO'),
(23, 'Geology', 'Mr. Tayo'),
(24, 'SLT', 'MR KOLAWOLE'),
(25, 'BANKING AND FINANCE', 'MR  AJALA'),
(26, 'MASS COMMUNICATION', 'MR ALAO');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=152 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(150, 'admin/uploads/3266_File_System Programing.pdf', '2018-09-27 11:38:26', 'READ AND DIGEST', 20, 193, 'system programming', 'MR G.G.OEgbedokun'),
(149, 'admin/uploads/3266_File_System Programing.pdf', '2018-09-27 11:38:26', 'READ AND DIGEST', 20, 192, 'system programming', 'MR G.G.OEgbedokun'),
(148, 'admin/uploads/3266_File_System Programing.pdf', '2018-09-27 11:38:26', 'READ AND DIGEST', 20, 191, 'system programming', 'MR G.G.OEgbedokun'),
(147, 'admin/uploads/3266_File_System Programing.pdf', '2018-09-27 11:38:26', 'READ AND DIGEST', 20, 190, 'system programming', 'MR G.G.OEgbedokun'),
(146, 'admin/uploads/3266_File_System Programing.pdf', '2018-09-27 11:38:26', 'READ AND DIGEST', 20, 189, 'system programming', 'MR G.G.OEgbedokun'),
(145, 'admin/uploads/3266_File_System Programing.pdf', '2018-09-27 11:38:26', 'READ AND DIGEST', 20, 188, 'system programming', 'MR G.G.OEgbedokun'),
(144, 'admin/uploads/3266_File_System Programing.pdf', '2018-09-27 11:38:26', 'READ AND DIGEST', 20, 187, 'system programming', 'MR G.G.OEgbedokun'),
(143, 'admin/uploads/6651_File_161458e.pdf', '2018-09-27 11:34:22', 'READ AND DIGEST', 27, 205, 'Course Material', 'Mr RemiAjibola'),
(142, 'admin/uploads/6651_File_161458e.pdf', '2018-09-27 11:34:22', 'READ AND DIGEST', 27, 204, 'Course Material', 'Mr RemiAjibola'),
(141, 'admin/uploads/7306_File_COBOL.pdf', '2018-09-26 14:40:30', 'This is your semester course material', 26, 203, 'COBOL', 'MrAkinbode'),
(140, 'admin/uploads/7306_File_COBOL.pdf', '2018-09-26 14:40:30', 'This is your semester course material', 26, 202, 'COBOL', 'MrAkinbode'),
(139, 'admin/uploads/6310_File_OTM.pdf', '2018-09-26 14:36:05', 'READ AND DIGEST', 21, 195, 'Office Tech ', 'Mrs ShadeIbitowa'),
(138, 'admin/uploads/6310_File_OTM.pdf', '2018-09-26 14:36:04', 'READ AND DIGEST', 21, 194, 'Office Tech ', 'Mrs ShadeIbitowa'),
(151, 'admin/uploads/2630_File_Blessed assurance.docx', '2019-10-25 13:21:58', 'BLESSSED', 34, 214, 'COM111', 'MR. ALAOGBENGA');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(1, 221, 'Hello Abeeb\r\nMake sure you are in the class as early as possible I am submitting the whole class assignment by 8am.\r\n\r\nClass Rep', '2018-09-26 13:44:22', 219, 'Adebayo Lekan  Abeeb', 'Akpan Grace Ifreke', ''),
(2, 20, 'Hello Sir\r\n\r\ncan i bring the assignment now sir??', '2018-09-26 13:45:04', 219, 'MR G.G.O Egbedokun', 'Akpan Grace Ifreke', ''),
(3, 220, 'Hello Josh\r\n\r\nMake sure you are in the class as early as possible I am submitting the whole class assignment by 8am.\r\n\r\n Class Rep', '2018-09-26 13:45:56', 219, 'Akinbode oluwatobiloba Joshua', 'Akpan Grace Ifreke', ''),
(4, 21, 'Hello ma,\r\n\r\nplease when should we come for our project topic??\r\n\r\n', '2018-09-26 13:46:47', 219, 'Mrs Shade Ibitowa', 'Akpan Grace Ifreke', ''),
(5, 28, 'Sir \r\n\r\nThe class is ready to have you now sir.', '2018-09-26 13:47:18', 219, 'DR. Adefunke A.O. Laniyan', 'Akpan Grace Ifreke', ''),
(6, 26, 'Good day sir,\r\n\r\nyou promised to send us your course materials sir\r\njust a reminder that we are yet to see it.\r\n', '2018-09-26 13:48:37', 219, 'Mr Akinbode', 'Akpan Grace Ifreke', ''),
(7, 24, 'Good Morning Sir,\r\n\r\nDue to some unforeseen circumstances sir, we are yet to finish with the project you gave to the class last week can you please extend our submission date?\r\n\r\nThank you for your un', '2018-09-26 13:50:46', 219, 'Mr Babatunde Fadiora', 'Akpan Grace Ifreke', ''),
(8, 30, 'Hello Sir,\r\n\r\nOn behalf of the whole class we want to say a very big thank you to you for being the best we can ever have to us.\r\n\r\nThank you sir', '2018-09-26 13:53:08', 219, 'Mr M.K  Akano', 'Akpan Grace Ifreke', ''),
(9, 23, 'Hello Ma,\r\n\r\nOn behalf of the whole class we want to say a very big thank you to you for being the best we can ever have to us.\r\n\r\nThank you sir', '2018-09-26 13:53:36', 219, 'Mrs Yetunde Oguns', 'Akpan Grace Ifreke', ''),
(10, 29, 'Good morning sir,\r\nHow was your weekend sir?\r\nAre we still having our test today sir\r\nso i can organize the class before your arrival?', '2018-09-26 13:56:20', 219, 'Mr O.A Ayansola', 'Akpan Grace Ifreke', ''),
(11, 27, 'Hello Sir,\r\n\r\nOn behalf of the whole class we want to say a very big thank you to you for being the best we can ever have to us.\r\n\r\nThank you sir', '2018-09-26 13:56:30', 219, 'Mr Remi Ajibola', 'Akpan Grace Ifreke', ''),
(12, 219, 'Grace. Thank you. \r\nI just sent it.\r\nsee me in my office in an hour my baby', '2018-09-26 14:38:39', 26, 'Akpan Grace Ifreke', 'Mr Akinbode', ''),
(13, 219, 'oh yes Grace you  can.', '2018-09-27 11:37:37', 20, 'Akpan Grace Ifreke', 'MR G.G.O Egbedokun', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE IF NOT EXISTS `message_sent` (
  `message_sent_id` int(11) NOT NULL AUTO_INCREMENT,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  PRIMARY KEY (`message_sent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 221, 'Hello Abeeb\r\nMake sure you are in the class as early as possible I am submitting the whole class assignment by 8am.\r\n\r\nClass Rep', '2018-09-26 13:44:22', 219, 'Adebayo Lekan  Abeeb', 'Akpan Grace Ifreke'),
(2, 20, 'Hello Sir\r\n\r\ncan i bring the assignment now sir??', '2018-09-26 13:45:04', 219, 'MR G.G.O Egbedokun', 'Akpan Grace Ifreke'),
(3, 220, 'Hello Josh\r\n\r\nMake sure you are in the class as early as possible I am submitting the whole class assignment by 8am.\r\n\r\n Class Rep', '2018-09-26 13:45:56', 219, 'Akinbode oluwatobiloba Joshua', 'Akpan Grace Ifreke'),
(4, 21, 'Hello ma,\r\n\r\nplease when should we come for our project topic??\r\n\r\n', '2018-09-26 13:46:47', 219, 'Mrs Shade Ibitowa', 'Akpan Grace Ifreke'),
(5, 28, 'Sir \r\n\r\nThe class is ready to have you now sir.', '2018-09-26 13:47:18', 219, 'DR. Adefunke A.O. Laniyan', 'Akpan Grace Ifreke'),
(6, 26, 'Good day sir,\r\n\r\nyou promised to send us your course materials sir\r\njust a reminder that we are yet to see it.\r\n', '2018-09-26 13:48:37', 219, 'Mr Akinbode', 'Akpan Grace Ifreke'),
(7, 24, 'Good Morning Sir,\r\n\r\nDue to some unforeseen circumstances sir, we are yet to finish with the project you gave to the class last week can you please extend our submission date?\r\n\r\nThank you for your un', '2018-09-26 13:50:46', 219, 'Mr Babatunde Fadiora', 'Akpan Grace Ifreke'),
(8, 30, 'Hello Sir,\r\n\r\nOn behalf of the whole class we want to say a very big thank you to you for being the best we can ever have to us.\r\n\r\nThank you sir', '2018-09-26 13:53:08', 219, 'Mr M.K  Akano', 'Akpan Grace Ifreke'),
(9, 23, 'Hello Ma,\r\n\r\nOn behalf of the whole class we want to say a very big thank you to you for being the best we can ever have to us.\r\n\r\nThank you sir', '2018-09-26 13:53:37', 219, 'Mrs Yetunde Oguns', 'Akpan Grace Ifreke'),
(10, 29, 'Good morning sir,\r\nHow was your weekend sir?\r\nAre we still having our test today sir\r\nso i can organize the class before your arrival?', '2018-09-26 13:56:20', 219, 'Mr O.A Ayansola', 'Akpan Grace Ifreke'),
(11, 27, 'Hello Sir,\r\n\r\nOn behalf of the whole class we want to say a very big thank you to you for being the best we can ever have to us.\r\n\r\nThank you sir', '2018-09-26 13:56:30', 219, 'Mr Remi Ajibola', 'Akpan Grace Ifreke'),
(12, 219, 'Grace. Thank you. \r\nI just sent it.\r\nsee me in my office in an hour my baby', '2018-09-26 14:38:39', 26, 'Akpan Grace Ifreke', 'Mr Akinbode'),
(13, 219, 'oh yes Grace you  can.', '2018-09-27 11:37:37', 20, 'Akpan Grace Ifreke', 'MR G.G.O Egbedokun');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(1, 194, 'Add Downloadable Materials file name <b>Office Tech </b>', '2018-09-26 14:36:04', 'downloadable_student.php'),
(2, 195, 'Add Downloadable Materials file name <b>Office Tech </b>', '2018-09-26 14:36:05', 'downloadable_student.php'),
(3, 202, 'Add Downloadable Materials file name <b>COBOL</b>', '2018-09-26 14:40:30', 'downloadable_student.php'),
(4, 203, 'Add Downloadable Materials file name <b>COBOL</b>', '2018-09-26 14:40:30', 'downloadable_student.php'),
(5, 202, 'Add Practice Quiz file', '2018-09-27 11:31:05', 'student_quiz_list.php'),
(6, 203, 'Add Practice Quiz file', '2018-09-27 11:31:05', 'student_quiz_list.php'),
(7, 204, 'Add Downloadable Materials file name <b>Course Material</b>', '2018-09-27 11:34:22', 'downloadable_student.php'),
(8, 205, 'Add Downloadable Materials file name <b>Course Material</b>', '2018-09-27 11:34:22', 'downloadable_student.php'),
(9, 187, 'Add Downloadable Materials file name <b>system programming</b>', '2018-09-27 11:38:26', 'downloadable_student.php'),
(10, 188, 'Add Downloadable Materials file name <b>system programming</b>', '2018-09-27 11:38:26', 'downloadable_student.php'),
(11, 189, 'Add Downloadable Materials file name <b>system programming</b>', '2018-09-27 11:38:26', 'downloadable_student.php'),
(12, 190, 'Add Downloadable Materials file name <b>system programming</b>', '2018-09-27 11:38:26', 'downloadable_student.php'),
(13, 191, 'Add Downloadable Materials file name <b>system programming</b>', '2018-09-27 11:38:26', 'downloadable_student.php'),
(14, 192, 'Add Downloadable Materials file name <b>system programming</b>', '2018-09-27 11:38:26', 'downloadable_student.php'),
(15, 193, 'Add Downloadable Materials file name <b>system programming</b>', '2018-09-27 11:38:26', 'downloadable_student.php'),
(16, 187, 'Add Assignment file name <b>MID SEMESTER</b>', '2018-09-27 11:45:36', 'assignment_student.php'),
(17, 187, 'Add Annoucements', '2018-09-27 11:57:49', 'announcements_student.php'),
(18, 188, 'Add Annoucements', '2018-09-27 11:57:49', 'announcements_student.php'),
(19, 189, 'Add Annoucements', '2018-09-27 11:57:49', 'announcements_student.php'),
(20, 190, 'Add Annoucements', '2018-09-27 11:57:49', 'announcements_student.php'),
(21, 191, 'Add Annoucements', '2018-09-27 11:57:49', 'announcements_student.php'),
(22, 192, 'Add Annoucements', '2018-09-27 11:57:49', 'announcements_student.php'),
(23, 193, 'Add Annoucements', '2018-09-27 11:57:49', 'announcements_student.php'),
(24, 0, 'Add Downloadable Materials file name <b>COM111</b>', '2019-10-25 13:21:58', 'downloadable_student.php'),
(25, 214, 'Add Annoucements', '2019-10-25 13:22:44', 'announcements_student.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE IF NOT EXISTS `notification_read` (
  `notification_read_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 221, 'yes', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE IF NOT EXISTS `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE IF NOT EXISTS `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL,
  PRIMARY KEY (`question_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(1, 'ALGORITHM', 'BRAIN STORMING', '2018-09-27 11:29:29', 26),
(2, 'ALGORITHM', 'BRAIN STORMING', '2018-09-27 11:31:16', 26);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE IF NOT EXISTS `quiz_question` (
  `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`quiz_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE IF NOT EXISTS `school_year` (
  `school_year_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY (`school_year_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(4, '2018-2019'),
(5, '2017-2018');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=228 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(219, 'ADEBAYO GRACE', 'IFEOLUWA', 27, '2016235020114', 'adebayo', 'uploads/ore logo.png', 'Registered'),
(220, 'Akinbode oluwatobiloba', 'Joshua', 28, '2016235020182', 'joshua', 'uploads/WhatsApp Image 2018-09-08 at 9.54.48 PM.jpeg', 'Registered'),
(221, 'Adebayo Lekan ', 'Abeeb', 28, '2016235020196', 'abeeb', 'uploads/WhatsApp Image 2018-09-09 at 11.29.02 PM.jpeg', 'Registered'),
(222, 'temitope', 'rebecca', 35, '2014070501050', '123456', 'uploads/hello.jpg', 'Registered'),
(223, 'Fabode', 'Omolara', 34, '2014070501125', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(224, 'AGBAJE', 'LEKAN', 24, '20140704040', 'lekan', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(225, 'oladeji', 'tayo', 33, '2014070501195', '2014070501195', 'uploads/iya oloyin.png', 'Registered'),
(226, 'Oladeji', 'Emmanuel', 34, '2014070501195', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(227, 'emma', 'ola', 34, '2014070501194', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE IF NOT EXISTS `student_assignment` (
  `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL,
  PRIMARY KEY (`student_assignment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE IF NOT EXISTS `student_backpack` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test'),
(2, 'admin/uploads/7306_File_COBOL.pdf', '2018-09-27 11:21:15', 'This is your semester course material', 221, 'COBOL');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE IF NOT EXISTS `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  PRIMARY KEY (`student_class_quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(43, 'COM 112 ', 'Introduction to Digital Electronics', '', '', 3, '', '1st'),
(44, 'COM 113 ', 'Introduction to Programming ', '', '', 3, '', ''),
(45, 'STA 111', ' Descriptive Statistics I ', '', '', 2, '', '1st'),
(46, 'STA 112', ' Elementary Probability Theory ', '', '', 3, '', '1st'),
(47, 'MTH 111', ' Logic and Linear Algebra ', '', '', 2, '', '1st'),
(48, 'MTH 112', 'Functions and Geometry ', '', '', 3, '', '1st'),
(49, 'GNS 111', ' Citizenship Education I ', '', '', 2, '', '1st'),
(50, 'GNS 101', 'Use of English', '', '', 2, '', '1st'),
(51, 'LIB 111', 'Use of Library', '', '', 2, '', '1st'),
(52, 'COM 121', ' Scientific Programming Language using OO Java. 2', '', '', 3, '', '2nd'),
(53, 'COM 122', ' Introduction to the internet ', '', '', 2, '', '2nd'),
(54, 'COM 123 ', 'Computer application packages I ', '', '', 2, '', '2nd'),
(55, 'COM 124', ' Data structure and Algorithms ', '', '', 3, '', '2nd'),
(56, 'COM 125 ', 'Introduction to Systems Analysis ', '', '', 2, '', '2nd'),
(57, 'COM 126', ' PC Upgrade & Maintenance ', '', '', 2, '', '2nd'),
(58, 'GNS 121', ' Citizenship Education II ', '', '', 2, '', '2nd'),
(59, 'COM 211 ', 'Computer Programming using OO Basic ', '', '', 3, '', '1st'),
(60, 'COM 212', ' Introduction to systems Programming ', '', '', 2, '', '1st'),
(61, 'COM 214 ', 'File Organization and Management', '', '', 3, '', '1st'),
(62, 'COM 215 ', 'Computer Packages II ', '', '', 2, '', '1st'),
(63, 'COM 216 ', 'Computer Systems Troubleshooting I ', '', '', 2, '', '1st'),
(64, 'GNS 202', 'Communication in English', '', '', 2, '', '1st'),
(65, 'COM 221', ' Computer Programming using OO FORTRAN', '', '', 3, '', '2nd'),
(66, 'COM 222 ', 'Seminar on Computer and Society ', '', '', 2, '', '2nd'),
(67, 'COM 223', ' Basic Hardware Maintenance', '', '', 2, '', '2nd'),
(68, 'COM 223', ' Management Information system', '', '', 3, '', '2nd'),
(69, 'COM 224', 'Web Technology ', '', '', 3, '', '2nd'),
(70, 'COM 226 ', 'Computer Systems Troubleshooting II ', '', '', 2, '', '2nd'),
(71, 'COM400', 'Project ', '', '', 3, '', '2nd'),
(42, 'COM 111', 'Introduction to computing ', '', '', 2, '', '1st'),
(72, 'COM 400', 'project management', '', '', 3, '', '2nd'),
(73, 'COM 421', 'Research', '', '<p>Good</p>\r\n', 2, '', '2nd'),
(74, 'dts 112', 'database 3', '', '<p><strong>programming language</strong></p>\r\n', 3, '', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(24, 'fadiora', 'fadiora', 'Mr Babatunde', 'Fadiora', 20, 'uploads/WhatsApp Image 2018-09-08 at 3.15.25 PM.jpeg', '', 'Registered', ''),
(25, 'ajimobi', 'ajimobi', 'Mr Ibrahim', 'Ajimobi', 20, 'uploads/WhatsApp Image 2018-09-08 at 3.15.27 PM(1).jpeg', '', 'Registered', ''),
(26, 'akinbode', 'akinbode', 'Mr', 'Akinbode', 20, 'uploads/Computer-Science-Pictures-HD-620x465.jpg', '', 'Registered', ''),
(27, 'ajibola', 'ajibola', 'Mr Remi', 'Ajibola', 22, 'uploads/cs.jpg', '', 'Registered', ''),
(28, 'laniyan', 'akinbode', 'DR. Adefunke', 'A.O. Laniyan', 22, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(29, 'ayansola', 'ayansola', 'Mr O.A', 'Ayansola', 20, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(23, 'oguns', 'oguns', 'Mrs Yetunde', 'Oguns', 20, 'uploads/WhatsApp Image 2018-09-08 at 3.15.26 PM.jpeg', '', 'Registered', ''),
(22, 'samson', 'samson', 'Mr Olatoyese ', 'Samson', 22, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(21, 'Ibitowa', 'ibitowa', 'Mrs Shade', 'Ibitowa', 20, 'uploads/WhatsApp Image 2018-09-08 at 3.15.26 PM(1).jpeg', '', 'Registered', ''),
(20, 'Egbedokun', 'egbedokun', 'MR G.G.O', 'Egbedokun', 20, 'uploads/WhatsApp Image 2018-09-08 at 3.15.27 PM.jpeg', '', 'Registered', ''),
(30, 'akano', 'akano', 'Mr M.K ', 'Akano', 20, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(31, 'ore', '123456', 'Oladeji', 'Oreoluwa', 20, 'uploads/ore logo.png', '', 'Registered', ''),
(32, 'Afo', '123456', 'Mrs. Afolabi', 'Mary', 23, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(33, 'admin', 'ajala', 'Mr. Ajala', 'Jeremiah', 20, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(34, 'ALAO', 'ALAO', 'MR. ALAO', 'GBENGA', 26, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(35, 'Oreoluwa', '123456', 'Oladeji', 'Emmanuel', 20, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE IF NOT EXISTS `teacher_backpack` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE IF NOT EXISTS `teacher_class` (
  `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=216 ;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(187, 20, 24, 52, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(188, 20, 25, 52, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(189, 20, 27, 57, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(190, 20, 28, 57, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(191, 20, 24, 43, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(192, 20, 25, 43, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(193, 20, 27, 61, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(194, 21, 28, 69, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(195, 21, 27, 69, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(196, 22, 28, 64, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(197, 23, 28, 60, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(198, 24, 28, 63, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(199, 24, 27, 57, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(200, 25, 28, 69, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(201, 25, 27, 69, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(202, 26, 28, 60, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(203, 26, 27, 60, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(204, 27, 28, 51, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(205, 27, 27, 51, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(206, 28, 24, 49, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(207, 29, 25, 45, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(208, 29, 24, 45, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(209, 30, 24, 50, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(210, 30, 25, 50, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(211, 31, 29, 72, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(212, 32, 29, 73, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(213, 33, 24, 62, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(214, 34, 33, 42, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(215, 35, 34, 73, 'admin/uploads/thumbnails.jpg', '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE IF NOT EXISTS `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`teacher_class_announcements_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(1, '<p>Hello Everyone,</p>\r\n\r\n<p>I got to understand that just a few number of the student have been able to sign their&nbsp;course form with their&nbsp;designated course cordinators.</p>\r\n\r\n<p>I will not be resonsible for any student who wouldn&#39;t be allowed into the examination halls for you all know that your course form is a preequisite for your exam.</p>\r\n\r\n<p>Moreso, God bless you, your guardians and parent as applicable to everyone to be able to pay up your school fees in the appropriate t', '20', 187, '2018-09-27 11:57:49'),
(2, '<p>Hello Everyone,</p>\r\n\r\n<p>I got to understand that just a few number of the student have been able to sign their&nbsp;course form with their&nbsp;designated course cordinators.</p>\r\n\r\n<p>I will not be resonsible for any student who wouldn&#39;t be allowed into the examination halls for you all know that your course form is a preequisite for your exam.</p>\r\n\r\n<p>Moreso, God bless you, your guardians and parent as applicable to everyone to be able to pay up your school fees in the appropriate t', '20', 188, '2018-09-27 11:57:49'),
(3, '<p>Hello Everyone,</p>\r\n\r\n<p>I got to understand that just a few number of the student have been able to sign their&nbsp;course form with their&nbsp;designated course cordinators.</p>\r\n\r\n<p>I will not be resonsible for any student who wouldn&#39;t be allowed into the examination halls for you all know that your course form is a preequisite for your exam.</p>\r\n\r\n<p>Moreso, God bless you, your guardians and parent as applicable to everyone to be able to pay up your school fees in the appropriate t', '20', 189, '2018-09-27 11:57:49'),
(4, '<p>Hello Everyone,</p>\r\n\r\n<p>I got to understand that just a few number of the student have been able to sign their&nbsp;course form with their&nbsp;designated course cordinators.</p>\r\n\r\n<p>I will not be resonsible for any student who wouldn&#39;t be allowed into the examination halls for you all know that your course form is a preequisite for your exam.</p>\r\n\r\n<p>Moreso, God bless you, your guardians and parent as applicable to everyone to be able to pay up your school fees in the appropriate t', '20', 190, '2018-09-27 11:57:49'),
(5, '<p>Hello Everyone,</p>\r\n\r\n<p>I got to understand that just a few number of the student have been able to sign their&nbsp;course form with their&nbsp;designated course cordinators.</p>\r\n\r\n<p>I will not be resonsible for any student who wouldn&#39;t be allowed into the examination halls for you all know that your course form is a preequisite for your exam.</p>\r\n\r\n<p>Moreso, God bless you, your guardians and parent as applicable to everyone to be able to pay up your school fees in the appropriate t', '20', 191, '2018-09-27 11:57:49'),
(6, '<p>Hello Everyone,</p>\r\n\r\n<p>I got to understand that just a few number of the student have been able to sign their&nbsp;course form with their&nbsp;designated course cordinators.</p>\r\n\r\n<p>I will not be resonsible for any student who wouldn&#39;t be allowed into the examination halls for you all know that your course form is a preequisite for your exam.</p>\r\n\r\n<p>Moreso, God bless you, your guardians and parent as applicable to everyone to be able to pay up your school fees in the appropriate t', '20', 192, '2018-09-27 11:57:49'),
(7, '<p>Hello Everyone,</p>\r\n\r\n<p>I got to understand that just a few number of the student have been able to sign their&nbsp;course form with their&nbsp;designated course cordinators.</p>\r\n\r\n<p>I will not be resonsible for any student who wouldn&#39;t be allowed into the examination halls for you all know that your course form is a preequisite for your exam.</p>\r\n\r\n<p>Moreso, God bless you, your guardians and parent as applicable to everyone to be able to pay up your school fees in the appropriate t', '20', 193, '2018-09-27 11:57:49'),
(8, '<p>THERE IS TEST TOMORROW</p>\r\n\r\n<p>&nbsp;</p>\r\n', '34', 214, '2019-10-25 13:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE IF NOT EXISTS `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_class_student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(1, 194, 219, 21),
(2, 194, 220, 21),
(3, 194, 221, 21),
(4, 196, 219, 22),
(5, 196, 220, 22),
(6, 196, 221, 22),
(7, 197, 219, 23),
(8, 197, 220, 23),
(9, 197, 221, 23),
(10, 198, 219, 24),
(11, 198, 220, 24),
(12, 198, 221, 24),
(13, 200, 219, 25),
(14, 200, 220, 25),
(15, 200, 221, 25),
(16, 202, 219, 26),
(17, 202, 220, 26),
(18, 202, 221, 26),
(19, 204, 219, 27),
(20, 204, 220, 27),
(21, 204, 221, 27),
(22, 211, 222, 222),
(23, 211, 223, 31),
(24, 212, 222, 32),
(25, 212, 223, 32),
(26, 213, 224, 33),
(27, 214, 225, 34),
(28, 214, 219, 34),
(29, 215, 223, 35),
(31, 215, 226, 35),
(32, 215, 219, 35),
(33, 215, 220, 35),
(34, 215, 221, 35),
(35, 215, 222, 35),
(36, 215, 224, 35),
(37, 215, 225, 35),
(38, 215, 227, 35);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE IF NOT EXISTS `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(15, 160, 'Submit Assignment file name <b>my_assginment</b>', '2013-11-25 10:39:52', 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment file name <b>q</b>', '2013-11-25 15:54:19', 'view_submit_assignment.php', 71, 17);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE IF NOT EXISTS `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_shared_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(15, 'admin', 'admin', 'admin', 'admin'),
(16, 'moji', 'sola', 'mojisola', 'adewuni'),
(17, 'TEMITOPE', 'TEMITOPE', 'ADEWUNI', 'TEMITOPE');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=123 ;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(87, 'admin', '2018-09-17 15:23:36', '2019-09-11 13:09:16', 15),
(88, 'admin', '2018-09-17 15:25:20', '2019-09-11 13:09:16', 15),
(89, 'admin', '2018-09-26 12:22:02', '2019-09-11 13:09:16', 15),
(90, 'admin', '2018-09-26 13:24:43', '2019-09-11 13:09:16', 15),
(91, 'admin', '2018-09-26 13:34:07', '2019-09-11 13:09:16', 15),
(92, 'admin', '2018-09-26 14:36:41', '2019-09-11 13:09:16', 15),
(93, 'admin', '2018-09-26 14:42:22', '2019-09-11 13:09:16', 15),
(94, 'admin', '2018-09-27 11:15:44', '2019-09-11 13:09:16', 15),
(95, 'admin', '2018-09-27 11:22:02', '2019-09-11 13:09:16', 15),
(96, 'admin', '2018-09-27 11:22:38', '2019-09-11 13:09:16', 15),
(97, 'admin', '2018-09-27 11:58:31', '2019-09-11 13:09:16', 15),
(98, 'admin', '2019-09-11 13:06:28', '2019-09-11 13:09:16', 15),
(99, 'admin', '2019-09-11 13:13:08', '', 15),
(100, 'admin', '2019-10-22 16:13:07', '', 15),
(101, 'admin', '2019-10-22 16:20:55', '', 15),
(102, 'admin', '2019-10-22 16:52:43', '', 15),
(103, 'admin', '2019-10-22 16:59:18', '', 15),
(104, 'admin', '2019-10-22 17:20:01', '', 15),
(105, 'admin', '2019-10-22 17:27:01', '', 15),
(106, 'admin', '2019-10-22 17:32:25', '', 15),
(107, 'admin', '2019-10-22 17:36:12', '', 15),
(108, 'admin', '2019-10-22 17:41:56', '', 15),
(109, 'admin', '2019-10-25 12:50:31', '', 15),
(110, 'admin', '2019-10-25 13:01:42', '', 15),
(111, 'admin', '2019-10-25 13:03:43', '', 15),
(112, 'admin', '2019-10-25 13:10:53', '', 15),
(113, 'admin', '2019-10-25 13:14:58', '', 15),
(114, 'admin', '2019-10-25 13:17:48', '', 15),
(115, 'admin', '2019-10-25 13:25:03', '', 15),
(116, 'admin', '2019-11-22 11:34:23', '', 15),
(117, 'Admin', '2019-12-04 14:37:37', '', 15),
(118, 'Admin', '2019-12-11 09:51:40', '', 15),
(119, 'Admin', '2019-12-11 10:09:48', '', 15),
(120, 'Admin', '2019-12-11 10:11:01', '', 15),
(121, 'Admin', '2019-12-12 00:33:18', '', 15),
(122, 'Admin', '2019-12-15 22:33:33', '', 15);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
