-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2023 at 06:53 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evaluation`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment_type`
--

CREATE TABLE `comment_type` (
  `comment_id` int(11) NOT NULL,
  `e_code` varchar(255) NOT NULL,
  `comment_feedback` varchar(255) NOT NULL,
  `negative_comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment_type`
--

INSERT INTO `comment_type` (`comment_id`, `e_code`, `comment_feedback`, `negative_comment`) VALUES
(1, 'HR-1446634471', 'Ganda ganda nyo po', 'Bad comment -testing'),
(2, 'HR-1446634471', 'Bait nyo nman po', 'Bad comment -testing'),
(3, 'HR-1446634471', 'Masungit', 'Bad comment -testing'),
(4, 'HR-2040449147', 'mbait', 'Bad comment -testing'),
(5, 'HR-2040449147', 'kyot\r\n', 'Bad comment -testing'),
(6, 'HR-2040449147', 'sunget', 'Bad comment -testing'),
(7, 'HR-1555296050', 'Tubol', 'Bad comment -testing'),
(8, 'HR-1546050676', 'kyot kyot', 'Bad comment -testing'),
(10, 'HR-1392677366', 'good commnet -testing', 'Bad comment -testing'),
(11, 'HR-1300393662', 'mgaling na teacher', 'masungit pero'),
(12, 'HR-1925172419', 'testing good comment', 'testing bad comment'),
(16, 'HR-339237331', 'testing lang good comment', 'testing lang badcomment'),
(28, 'HR-204541208', 'kasdksad', 'testing\r\n'),
(29, 'HR-2046089749', 'testing lowella231', 'testing lowella'),
(30, 'HR-2046089749', 'kmdkajsndakd', 'mjaksndjkad'),
(31, 'HR-2046089749', 'kasmdkasnd', 'njaksndkasd'),
(47, 'HR-339237331', 'aknsdkjasnd', 'naskdnasd'),
(48, 'HR-339237331', 'ksmakdl', 'maksmdkas'),
(49, 'HR-1180138684', 'sample good comment ', 'bad comment'),
(50, 'HR-1180138684', '', ''),
(51, 'HR-651198292', 'asdasdasd', 'adasd'),
(52, 'HR-411865280', 'testing Good Comments', 'testing Bad comment'),
(53, 'HR-411865280', 'asd', 'asdasdasd'),
(54, 'HR-411865280', 'rtyryrtyrty', 'setetert'),
(55, 'HR-411865280', 'sdasdasdasd', 'tyutyutt'),
(56, 'HR-1102060220', 'ertfdfdfsdf', 'asdasdasd'),
(57, 'HR-1102060220', 'sdasdsadasd', 'adasdasdaa'),
(58, 'HR-1102060220', 'iyuiyui', 'yuiyuiyui'),
(59, 'HR-1102060220', 'rwerewrwer', 'ewrwerwe'),
(60, 'HR-1818569389', 'erwerwer', 'werwerwerw'),
(61, 'HR-261357662', 'asdas', 'dasdadsasd'),
(62, 'HR-261357662', 'sdsd', 'asdasdasd'),
(63, 'HR-261357662', 'aasd', 'asdasdasd'),
(64, 'HR-261357662', 'fdgdfgdfg', 'dsfdg'),
(65, 'HR-1259953886', 'sadasd', 'asdasdad'),
(66, 'HR-1259953886', 'asdasdasdsad', 'asd'),
(67, 'HR-1259953886', ' asd', ' fdgdfgdfgdfgdf'),
(68, 'HR-1259953886', 'asdasdasd', 'sdad'),
(69, 'HR-1716834195', 'asdasdasd', 'adasd'),
(70, 'HR-637196355', 'asdasdsad', 'asdasd'),
(71, 'HR-637196355', 'etryuip[p', 'qwertyuiu'),
(72, 'HR-1716834195', 'wersdvbnm', ',./wertyui'),
(73, 'HR-255089832', 'djkasdnaksjd', 'jksnkasdasd'),
(74, 'HR-2114763868', 'testing good', 'testing bad'),
(75, 'HR-2114763868', 'asmdkasndasd', 'saadkansdkas');

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_list`
--

INSERT INTO `course_list` (`section_id`, `section_name`, `created_by`, `date_added`) VALUES
(1, 'STEM', 'Missionari della fede', '2020-03-05 14:01:35'),
(2, 'GAS', 'Missionari della fede', '2020-03-05 14:01:45'),
(3, 'HUMMS', 'Missionari della fede', '2020-03-05 14:01:56'),
(4, 'ABM', 'Missionari della fede', '2020-03-05 14:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `day_id` int(11) NOT NULL,
  `day_name` text NOT NULL,
  `day_category` int(11) NOT NULL COMMENT '0=hs, elem 1= Senior',
  `created_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`day_id`, `day_name`, `day_category`, `created_by`) VALUES
(20, 'MWF', 0, 'admin'),
(21, 'TTH', 0, 'admin'),
(22, 'TTHS', 0, 'admin'),
(23, 'S', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_sheet`
--

CREATE TABLE `evaluation_sheet` (
  `eval_id` int(11) NOT NULL,
  `e_code` varchar(255) NOT NULL,
  `sub_incharge` varchar(255) NOT NULL,
  `e_status` int(11) NOT NULL,
  `date_started` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluation_sheet`
--

INSERT INTO `evaluation_sheet` (`eval_id`, `e_code`, `sub_incharge`, `e_status`, `date_started`) VALUES
(10, 'HR-2114763868', '9', 1, '2023-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_user`
--

CREATE TABLE `evaluation_user` (
  `eu_id` int(11) NOT NULL,
  `evaluation_code` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `eval_status` int(11) NOT NULL,
  `date_created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `log_desc` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `log_desc`, `date_created`) VALUES
(1, 'Missionari  della fede has signoff to the system', '2022-11-16 19:34:52'),
(2, 'Paul Daniel Pagtalunan Corpuz has login to the system', '2022-11-16 19:34:55'),
(3, 'Paul Daniel Pagtalunan Corpuz has signoff to the system', '2022-11-16 19:36:49'),
(4, 'Lowella Lunaria Sancon has login to the system', '2022-11-16 19:36:52'),
(5, 'Lowella Lunaria Sancon has login to the system', '2022-11-16 19:37:49'),
(6, 'Lowella Lunaria Sancon has signoff to the system', '2022-11-16 19:38:41'),
(7, 'Mark Consuelo Santos has login to the system', '2022-11-16 19:38:55'),
(8, 'Mark Consuelo Santos has login to the system', '2022-11-16 19:40:00'),
(9, 'Mark Consuelo Santos has signoff to the system', '2022-11-16 19:41:13'),
(10, 'Missionari  della fede has login to the system', '2022-11-16 19:41:17'),
(11, 'Missionari  della fede has login to the system', '2022-11-20 01:28:46'),
(12, 'Missionari  della fede has signoff to the system', '2022-11-20 01:53:49'),
(13, 'Missionari  della fede has login to the system', '2022-11-20 01:59:18'),
(14, 'Missionari  della fede has signoff to the system', '2022-11-20 02:05:15'),
(15, 'Missionari  della fede has login to the system', '2022-11-20 02:05:27'),
(16, 'Missionari  della fede has signoff to the system', '2022-11-20 02:11:26'),
(17, 'Missionari  della fede has login to the system', '2022-11-20 02:18:48'),
(18, 'Lowella Lunaria Sancon has login to the system', '2022-11-20 02:19:22'),
(19, 'Lowella Lunaria Sancon has signoff to the system', '2022-11-20 02:21:15'),
(20, 'Mark Angelo Soriano Fernandez has login to the system', '2022-11-20 02:21:23'),
(21, 'Mark Angelo Soriano Fernandez has signoff to the system', '2022-11-20 02:21:30'),
(22, 'Mark Consuelo Santos has login to the system', '2022-11-20 02:21:33'),
(23, 'Mark Consuelo Santos has signoff to the system', '2022-11-20 02:21:40'),
(24, 'Missionari  della fede has signoff to the system', '2022-11-20 02:22:32'),
(25, 'Missionari  della fede has login to the system', '2022-11-21 04:47:26'),
(26, 'Lowella Lunaria Sancon has login to the system', '2022-11-21 04:56:53'),
(27, 'Missionari  della fede has signoff to the system', '2022-11-20 05:07:04'),
(28, 'Missionari  della fede has login to the system', '2022-11-20 05:07:15'),
(29, 'Missionari  della fede has login to the system', '2022-11-20 17:26:53'),
(30, 'Lester Cruz Padilla has login to the system', '2022-11-20 17:29:28'),
(31, 'Lester Cruz Padilla has signoff to the system', '2022-11-20 17:29:48'),
(32, 'Lowella Lunaria Sancon has login to the system', '2022-11-20 17:30:20'),
(33, 'Lowella Lunaria Sancon has signoff to the system', '2022-11-20 17:30:32'),
(34, 'Mark Angelo Soriano Fernandez has login to the system', '2022-11-20 17:31:15'),
(35, 'Mark Angelo Soriano Fernandez has signoff to the system', '2022-11-20 17:31:21'),
(36, 'Missionari  della fede has login to the system', '2023-01-17 04:46:19'),
(37, 'Missionari  della fede has signoff to the system', '2023-01-17 04:46:25'),
(38, 'Missionari  della fede has login to the system', '2023-01-17 04:52:04'),
(39, 'Paul Daniel Pagtalunan Corpuz has login to the system', '2023-01-17 04:59:39'),
(40, 'Paul Daniel Pagtalunan Corpuz has signoff to the system', '2023-01-17 05:00:26'),
(41, 'Ken Axl Manaig Cambe has login to the system', '2023-01-17 05:00:29'),
(42, 'Ken Axl Manaig Cambe has signoff to the system', '2023-01-17 05:01:50'),
(43, 'Paul Daniel Pagtalunan Corpuz has login to the system', '2023-01-17 05:01:56'),
(44, 'Paul Daniel Pagtalunan Corpuz has signoff to the system', '2023-01-17 05:02:17'),
(45, 'Ken Axl Manaig Cambe has login to the system', '2023-01-17 05:02:30'),
(46, 'Ken Axl Manaig Cambe has signoff to the system', '2023-01-17 05:03:13'),
(47, 'Jay  Julius Japhet Herradura Ramos has login to the system', '2023-01-17 05:03:17'),
(48, 'Jay  Julius Japhet Herradura Ramos has signoff to the system', '2023-01-17 05:04:37'),
(49, 'Ana Rose Buenaventura Cabral has login to the system', '2023-01-17 05:04:40'),
(50, 'Ana Rose Buenaventura Cabral has signoff to the system', '2023-01-17 05:06:27'),
(51, 'Missionari  della fede has signoff to the system', '2023-01-17 05:13:30'),
(52, 'Missionari  della fede has login to the system', '2023-02-20 04:41:06'),
(53, 'Missionari  della fede has signoff to the system', '2023-02-20 04:41:14'),
(54, 'Missionari  della fede has login to the system', '2023-02-20 05:13:09'),
(55, 'Lester Cruz Padilla has login to the system', '2023-02-20 05:24:44'),
(56, 'Lester Cruz Padilla has signoff to the system', '2023-02-20 05:24:57'),
(57, 'Lowella Lunaria Sancon has login to the system', '2023-02-20 05:27:48'),
(58, 'Lowella Lunaria Sancon has signoff to the system', '2023-02-20 05:29:06'),
(59, 'Jay  Julius Japhet Herradura Ramos has login to the system', '2023-02-20 05:29:09'),
(60, 'Jay  Julius Japhet Herradura Ramos has signoff to the system', '2023-02-20 05:29:19'),
(61, 'Paul Daniel Pagtalunan Corpuz has login to the system', '2023-02-20 05:29:40'),
(62, 'Paul Daniel Pagtalunan Corpuz has signoff to the system', '2023-02-20 05:30:44'),
(63, 'Christian Santos Padilla has login to the system', '2023-02-20 05:30:46'),
(64, 'Christian Santos Padilla has signoff to the system', '2023-02-20 05:31:45'),
(65, 'Lowella Lunaria Sancon has login to the system', '2023-02-20 05:31:48'),
(66, 'Missionari  della fede has signoff to the system', '2023-02-20 05:33:59'),
(67, 'Lowella Lunaria Sancon has signoff to the system', '2023-02-20 05:38:49'),
(68, 'Missionari  della fede has login to the system', '2023-02-20 05:51:41'),
(69, 'Missionari  della fede has signoff to the system', '2023-02-20 05:52:31'),
(70, 'Missionari  della fede has login to the system', '2023-02-20 05:52:37'),
(71, 'Missionari  della fede has signoff to the system', '2023-02-20 05:52:49'),
(72, 'Paul Daniel Pagtalunan Corpuz has login to the system', '2023-02-20 05:52:53'),
(73, 'Paul Daniel Pagtalunan Corpuz has signoff to the system', '2023-02-20 05:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_id` int(11) NOT NULL,
  `question_name` varchar(255) NOT NULL,
  `avg_rate` varchar(255) NOT NULL,
  `rate_dean` varchar(255) NOT NULL,
  `question_cat` varchar(255) NOT NULL,
  `date_created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `question_name`, `avg_rate`, `rate_dean`, `question_cat`, `date_created`) VALUES
(8, 'Demonstrates sensitively to students ability to attend and absorb content information.', '', '', 'A. Commitment', '2020-03-02 11:04 am'),
(9, 'Integrates sensitively his/her learning objectives with those of the students on a collaborative process.', '', '', 'A. Commitment', '2020-03-02 11:04 am'),
(10, 'Makes self available to students beyond official time.', '', '', 'A. Commitment', '2020-03-02 11:04 am'),
(11, 'Regularly comes to class on time, well groomed and well prepared to complete assigned task.', '', '', 'A. Commitment', '2020-03-02 11:04 am'),
(12, 'Keeps accurate records of students performance and prompt submission of the same.', '', '', 'A. Commitment', '2020-03-02 11:04 am'),
(13, 'Demonstrates mastery of the subject matter (explains the subject without relying solely on the prescribed textbook).', '', '', 'B. Knowledge of the subject', '2020-03-02 11:13 am'),
(14, 'Draws and share information on the state of the art theory and practice his/her discipline.', '', '', 'B. Knowledge of the subject', '2020-03-02 11:13 am'),
(15, 'Integrates subject to practical circumstances and learning intents/purposes of students.', '', '', 'B. Knowledge of the subject', '2020-03-02 11:13 am'),
(16, 'Explains the relevance of present topics to previous lessons and relates the subject matter to relevant current issues and/or daily activities.', '', '', 'B. Knowledge of the subject', '2020-03-02 11:13 am'),
(17, 'Demonstrates up-to-date knowledge and/or awareness of current trends and issues of the subject.', '', '', 'B. Knowledge of the subject', '2020-03-02 11:13 am'),
(18, 'Creates teaching strategies that allows students to practice concepts they need t understand (interactive discussion).', '', '', 'C. Teaching for independent learning', '2020-03-02 11:14 am'),
(19, 'Enhances student self-esteem and/or gives due recognition to students performance/potentials.', '', '', 'C. Teaching for independent learning', '2020-03-02 11:14 am'),
(20, 'Allows students to create their own course with objectives and realistically define student-professor rules and make them accountable for their performance.', '', '', 'C. Teaching for independent learning', '2020-03-02 11:14 am'),
(21, 'Allows students to think independently and make their own decisions and holding them accountable for their performance based largely on their success in executing decisions.', '', '', 'C. Teaching for independent learning', '2020-03-02 11:15 am'),
(22, 'Encourages students to learn beyond what is required and help/guide the students how to apply concepts learned.', '', '', 'C. Teaching for independent learning', '2020-03-02 11:15 am'),
(23, 'Creates opportunities for intensive and/or extensive contribution of students in the class activities (e.g. break class in dyads, triads or buzz/task group).', '', '', 'D. Management of learning', '2020-03-02 11:15 am'),
(24, 'Assumes roles as facilitator, resource person, coach, inquisitor, referee in drawing students to contribute to knowledge and understanding of the concepts of hand.', '', '', 'D. Management of learning', '2020-03-02 11:15 am'),
(25, 'Assumes various appropriate roles, (facilitator, coach, resource speaker, integrator, inquisitor, referee, etc.) in drawing students to contribute knowledge and understanding of the concepts at hand.', '', '', 'D. Management of learning', '2020-03-02 11:15 am'),
(26, 'Structures/re-structures learning conditions and experience that promotes healthy exchange and/or confrontations.', '', '', 'D. Management of learning', '2020-03-02 11:15 am'),
(27, 'Uses instructional materials (audio- video materials, fieldtrips, film showing, computer aided instruction and etc.) to reinforce learning processes.', '', '', 'D. Management of learning', '2020-03-02 11:16 am'),
(28, 'Question Sample 1', '', '', 'professor', '2022-10-20 06:27 pm'),
(29, 'sample for Chairman', '', '', 'chairman', '2022-10-20 06:32 pm'),
(30, 'sample question 2', '', '', 'professor', '2022-10-21 04:15 am'),
(31, 'Sample question 4', '', '', 'professor', '2022-10-21 04:15 am'),
(32, 'Testing question', '', '', 'chairman', '2022-10-21 08:54 pm'),
(33, 'jasndjkandjnasd', '', '', 'chairman', '2022-10-21 08:54 pm'),
(34, 'sakjdnjandkjasndkad', '', '', 'chairman', '2022-10-21 08:55 pm'),
(35, 'nasjdnaskdnaksd', '', '', 'chairman', '2022-10-21 08:55 pm'),
(36, 'knsajkdnaskdnasd', '', '', 'professor', '2022-10-22 03:45 am'),
(37, 'sample chairman lang', '', '', 'chairman', '2022-10-22 03:46 am');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `result_id` int(11) NOT NULL,
  `e_code` varchar(255) NOT NULL,
  `question_cat` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `r_question` varchar(255) NOT NULL,
  `r_result` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`result_id`, `e_code`, `question_cat`, `user_id`, `r_question`, `r_result`) VALUES
(1, 'HR-1925172419', 'A. Commitment', 73, '8', 3),
(2, 'HR-1925172419', 'A. Commitment', 73, '9', 4),
(3, 'HR-1925172419', 'A. Commitment', 73, '10', 4),
(4, 'HR-1925172419', 'A. Commitment', 73, '11', 4),
(5, 'HR-1925172419', 'A. Commitment', 73, '12', 1),
(6, 'HR-1925172419', 'B. Knowledge of the subject', 73, '13', 3),
(7, 'HR-1925172419', 'B. Knowledge of the subject', 73, '14', 4),
(8, 'HR-1925172419', 'B. Knowledge of the subject', 73, '15', 4),
(9, 'HR-1925172419', 'B. Knowledge of the subject', 73, '16', 2),
(10, 'HR-1925172419', 'B. Knowledge of the subject', 73, '17', 5),
(11, 'HR-1925172419', 'C. Teaching for independent learning', 73, '18', 5),
(12, 'HR-1925172419', 'C. Teaching for independent learning', 73, '19', 5),
(13, 'HR-1925172419', 'C. Teaching for independent learning', 73, '20', 1),
(14, 'HR-1925172419', 'C. Teaching for independent learning', 73, '21', 2),
(15, 'HR-1925172419', 'C. Teaching for independent learning', 73, '22', 1),
(16, 'HR-1925172419', 'D. Management of learning', 73, '23', 5),
(17, 'HR-1925172419', 'D. Management of learning', 73, '24', 4),
(18, 'HR-1925172419', 'D. Management of learning', 73, '25', 5),
(19, 'HR-1925172419', 'D. Management of learning', 73, '26', 2),
(20, 'HR-1925172419', 'D. Management of learning', 73, '27', 3),
(61, 'HR-235745849', 'A. Commitment', 74, '8', 5),
(62, 'HR-235745849', 'A. Commitment', 74, '9', 5),
(63, 'HR-235745849', 'A. Commitment', 74, '10', 5),
(64, 'HR-235745849', 'A. Commitment', 74, '11', 5),
(65, 'HR-235745849', 'A. Commitment', 74, '12', 5),
(66, 'HR-235745849', 'B. Knowledge of the subject', 74, '13', 5),
(67, 'HR-235745849', 'B. Knowledge of the subject', 74, '14', 5),
(68, 'HR-235745849', 'B. Knowledge of the subject', 74, '15', 5),
(69, 'HR-235745849', 'B. Knowledge of the subject', 74, '16', 5),
(70, 'HR-235745849', 'B. Knowledge of the subject', 74, '17', 5),
(71, 'HR-235745849', 'C. Teaching for independent learning', 74, '18', 5),
(72, 'HR-235745849', 'C. Teaching for independent learning', 74, '19', 5),
(73, 'HR-235745849', 'C. Teaching for independent learning', 74, '20', 5),
(74, 'HR-235745849', 'C. Teaching for independent learning', 74, '21', 5),
(75, 'HR-235745849', 'C. Teaching for independent learning', 74, '22', 5),
(76, 'HR-235745849', 'D. Management of learning', 74, '23', 5),
(77, 'HR-235745849', 'D. Management of learning', 74, '24', 5),
(78, 'HR-235745849', 'D. Management of learning', 74, '25', 5),
(79, 'HR-235745849', 'D. Management of learning', 74, '26', 5),
(80, 'HR-235745849', 'D. Management of learning', 74, '27', 5),
(93, 'HR-339237331', 'professor', 45, '28', 5),
(94, 'HR-339237331', 'professor', 45, '30', 4),
(95, 'HR-339237331', 'professor', 45, '31', 1),
(96, 'HR-1044533331', 'professor', 45, '28', 5),
(97, 'HR-1044533331', 'professor', 45, '30', 1),
(98, 'HR-1044533331', 'professor', 45, '31', 3),
(99, 'HR-204541208', 'professor', 45, '28', 4),
(100, 'HR-204541208', 'professor', 45, '30', 4),
(101, 'HR-204541208', 'professor', 45, '31', 4),
(102, 'HR-2046089749', 'professor', 46, '28', 5),
(103, 'HR-2046089749', 'professor', 46, '30', 4),
(104, 'HR-2046089749', 'professor', 46, '31', 1),
(105, 'HR-2046089749', 'professor', 47, '28', 1),
(106, 'HR-2046089749', 'professor', 47, '30', 1),
(107, 'HR-2046089749', 'professor', 47, '31', 4),
(108, 'HR-2046089749', 'professor', 48, '28', 3),
(109, 'HR-2046089749', 'professor', 48, '30', 3),
(110, 'HR-2046089749', 'professor', 48, '31', 2),
(163, 'HR-339237331', 'chairman', 78, '29', 4),
(164, 'HR-339237331', 'chairman', 78, '32', 4),
(165, 'HR-339237331', 'chairman', 78, '33', 5),
(166, 'HR-339237331', 'chairman', 78, '34', 5),
(167, 'HR-339237331', 'chairman', 78, '35', 4),
(168, 'HR-1180138684', 'professor', 46, '28', 5),
(169, 'HR-1180138684', 'professor', 46, '30', 4),
(170, 'HR-1180138684', 'professor', 46, '31', 2),
(171, 'HR-1180138684', 'professor', 46, '36', 2),
(172, 'HR-1180138684', 'professor', 48, '28', 1),
(173, 'HR-1180138684', 'professor', 48, '30', 1),
(174, 'HR-1180138684', 'professor', 48, '31', 1),
(175, 'HR-1180138684', 'professor', 48, '36', 1),
(176, 'HR-651198292', 'chairman', 78, '29', 5),
(177, 'HR-651198292', 'chairman', 78, '32', 4),
(178, 'HR-651198292', 'chairman', 78, '33', 4),
(179, 'HR-651198292', 'chairman', 78, '34', 4),
(180, 'HR-651198292', 'chairman', 78, '35', 5),
(181, 'HR-651198292', 'chairman', 78, '37', 1),
(182, 'HR-411865280', 'A. Commitment', 104, '8', 4),
(183, 'HR-411865280', 'A. Commitment', 104, '9', 5),
(184, 'HR-411865280', 'A. Commitment', 104, '10', 5),
(185, 'HR-411865280', 'A. Commitment', 104, '11', 5),
(186, 'HR-411865280', 'A. Commitment', 104, '12', 5),
(187, 'HR-411865280', 'B. Knowledge of the subject', 104, '13', 4),
(188, 'HR-411865280', 'B. Knowledge of the subject', 104, '14', 2),
(189, 'HR-411865280', 'B. Knowledge of the subject', 104, '15', 2),
(190, 'HR-411865280', 'B. Knowledge of the subject', 104, '16', 1),
(191, 'HR-411865280', 'B. Knowledge of the subject', 104, '17', 1),
(192, 'HR-411865280', 'C. Teaching for independent learning', 104, '18', 3),
(193, 'HR-411865280', 'C. Teaching for independent learning', 104, '19', 4),
(194, 'HR-411865280', 'C. Teaching for independent learning', 104, '20', 5),
(195, 'HR-411865280', 'C. Teaching for independent learning', 104, '21', 4),
(196, 'HR-411865280', 'C. Teaching for independent learning', 104, '22', 3),
(197, 'HR-411865280', 'D. Management of learning', 104, '23', 4),
(198, 'HR-411865280', 'D. Management of learning', 104, '24', 5),
(199, 'HR-411865280', 'D. Management of learning', 104, '25', 5),
(200, 'HR-411865280', 'D. Management of learning', 104, '26', 5),
(201, 'HR-411865280', 'D. Management of learning', 104, '27', 5),
(202, 'HR-411865280', 'A. Commitment', 105, '8', 5),
(203, 'HR-411865280', 'A. Commitment', 105, '9', 5),
(204, 'HR-411865280', 'A. Commitment', 105, '10', 5),
(205, 'HR-411865280', 'A. Commitment', 105, '11', 5),
(206, 'HR-411865280', 'A. Commitment', 105, '12', 5),
(207, 'HR-411865280', 'B. Knowledge of the subject', 105, '13', 5),
(208, 'HR-411865280', 'B. Knowledge of the subject', 105, '14', 5),
(209, 'HR-411865280', 'B. Knowledge of the subject', 105, '15', 5),
(210, 'HR-411865280', 'B. Knowledge of the subject', 105, '16', 5),
(211, 'HR-411865280', 'B. Knowledge of the subject', 105, '17', 5),
(212, 'HR-411865280', 'C. Teaching for independent learning', 105, '18', 2),
(213, 'HR-411865280', 'C. Teaching for independent learning', 105, '19', 5),
(214, 'HR-411865280', 'C. Teaching for independent learning', 105, '20', 5),
(215, 'HR-411865280', 'C. Teaching for independent learning', 105, '21', 5),
(216, 'HR-411865280', 'C. Teaching for independent learning', 105, '22', 5),
(217, 'HR-411865280', 'D. Management of learning', 105, '23', 3),
(218, 'HR-411865280', 'D. Management of learning', 105, '24', 3),
(219, 'HR-411865280', 'D. Management of learning', 105, '25', 3),
(220, 'HR-411865280', 'D. Management of learning', 105, '26', 1),
(221, 'HR-411865280', 'D. Management of learning', 105, '27', 5),
(222, 'HR-411865280', 'A. Commitment', 55, '8', 5),
(223, 'HR-411865280', 'A. Commitment', 55, '9', 1),
(224, 'HR-411865280', 'A. Commitment', 55, '10', 1),
(225, 'HR-411865280', 'A. Commitment', 55, '11', 1),
(226, 'HR-411865280', 'A. Commitment', 55, '12', 1),
(227, 'HR-411865280', 'B. Knowledge of the subject', 55, '13', 2),
(228, 'HR-411865280', 'B. Knowledge of the subject', 55, '14', 2),
(229, 'HR-411865280', 'B. Knowledge of the subject', 55, '15', 3),
(230, 'HR-411865280', 'B. Knowledge of the subject', 55, '16', 3),
(231, 'HR-411865280', 'B. Knowledge of the subject', 55, '17', 3),
(232, 'HR-411865280', 'C. Teaching for independent learning', 55, '18', 1),
(233, 'HR-411865280', 'C. Teaching for independent learning', 55, '19', 1),
(234, 'HR-411865280', 'C. Teaching for independent learning', 55, '20', 1),
(235, 'HR-411865280', 'C. Teaching for independent learning', 55, '21', 1),
(236, 'HR-411865280', 'C. Teaching for independent learning', 55, '22', 2),
(237, 'HR-411865280', 'D. Management of learning', 55, '23', 2),
(238, 'HR-411865280', 'D. Management of learning', 55, '24', 2),
(239, 'HR-411865280', 'D. Management of learning', 55, '25', 3),
(240, 'HR-411865280', 'D. Management of learning', 55, '26', 5),
(241, 'HR-411865280', 'D. Management of learning', 55, '27', 5),
(242, 'HR-411865280', 'A. Commitment', 56, '8', 4),
(243, 'HR-411865280', 'A. Commitment', 56, '9', 4),
(244, 'HR-411865280', 'A. Commitment', 56, '10', 4),
(245, 'HR-411865280', 'A. Commitment', 56, '11', 4),
(246, 'HR-411865280', 'A. Commitment', 56, '12', 1),
(247, 'HR-411865280', 'B. Knowledge of the subject', 56, '13', 4),
(248, 'HR-411865280', 'B. Knowledge of the subject', 56, '14', 3),
(249, 'HR-411865280', 'B. Knowledge of the subject', 56, '15', 3),
(250, 'HR-411865280', 'B. Knowledge of the subject', 56, '16', 1),
(251, 'HR-411865280', 'B. Knowledge of the subject', 56, '17', 1),
(252, 'HR-411865280', 'C. Teaching for independent learning', 56, '18', 4),
(253, 'HR-411865280', 'C. Teaching for independent learning', 56, '19', 3),
(254, 'HR-411865280', 'C. Teaching for independent learning', 56, '20', 5),
(255, 'HR-411865280', 'C. Teaching for independent learning', 56, '21', 5),
(256, 'HR-411865280', 'C. Teaching for independent learning', 56, '22', 5),
(257, 'HR-411865280', 'D. Management of learning', 56, '23', 5),
(258, 'HR-411865280', 'D. Management of learning', 56, '24', 5),
(259, 'HR-411865280', 'D. Management of learning', 56, '25', 5),
(260, 'HR-411865280', 'D. Management of learning', 56, '26', 5),
(261, 'HR-411865280', 'D. Management of learning', 56, '27', 5),
(262, 'HR-1102060220', 'professor', 46, '28', 4),
(263, 'HR-1102060220', 'professor', 46, '30', 4),
(264, 'HR-1102060220', 'professor', 46, '31', 4),
(265, 'HR-1102060220', 'professor', 46, '36', 2),
(266, 'HR-1102060220', 'professor', 47, '28', 4),
(267, 'HR-1102060220', 'professor', 47, '30', 3),
(268, 'HR-1102060220', 'professor', 47, '31', 3),
(269, 'HR-1102060220', 'professor', 47, '36', 3),
(270, 'HR-1102060220', 'professor', 48, '28', 1),
(271, 'HR-1102060220', 'professor', 48, '30', 2),
(272, 'HR-1102060220', 'professor', 48, '31', 1),
(273, 'HR-1102060220', 'professor', 48, '36', 3),
(274, 'HR-1102060220', 'professor', 49, '28', 3),
(275, 'HR-1102060220', 'professor', 49, '30', 3),
(276, 'HR-1102060220', 'professor', 49, '31', 3),
(277, 'HR-1102060220', 'professor', 49, '36', 3),
(278, 'HR-1818569389', 'chairman', 78, '29', 3),
(279, 'HR-1818569389', 'chairman', 78, '32', 3),
(280, 'HR-1818569389', 'chairman', 78, '33', 4),
(281, 'HR-1818569389', 'chairman', 78, '34', 4),
(282, 'HR-1818569389', 'chairman', 78, '35', 5),
(283, 'HR-1818569389', 'chairman', 78, '37', 5),
(284, 'HR-261357662', 'A. Commitment', 62, '8', 4),
(285, 'HR-261357662', 'A. Commitment', 62, '9', 4),
(286, 'HR-261357662', 'A. Commitment', 62, '10', 5),
(287, 'HR-261357662', 'A. Commitment', 62, '11', 5),
(288, 'HR-261357662', 'A. Commitment', 62, '12', 5),
(289, 'HR-261357662', 'B. Knowledge of the subject', 62, '13', 5),
(290, 'HR-261357662', 'B. Knowledge of the subject', 62, '14', 5),
(291, 'HR-261357662', 'B. Knowledge of the subject', 62, '15', 5),
(292, 'HR-261357662', 'B. Knowledge of the subject', 62, '16', 5),
(293, 'HR-261357662', 'B. Knowledge of the subject', 62, '17', 5),
(294, 'HR-261357662', 'C. Teaching for independent learning', 62, '18', 5),
(295, 'HR-261357662', 'C. Teaching for independent learning', 62, '19', 5),
(296, 'HR-261357662', 'C. Teaching for independent learning', 62, '20', 5),
(297, 'HR-261357662', 'C. Teaching for independent learning', 62, '21', 3),
(298, 'HR-261357662', 'C. Teaching for independent learning', 62, '22', 5),
(299, 'HR-261357662', 'D. Management of learning', 62, '23', 5),
(300, 'HR-261357662', 'D. Management of learning', 62, '24', 5),
(301, 'HR-261357662', 'D. Management of learning', 62, '25', 5),
(302, 'HR-261357662', 'D. Management of learning', 62, '26', 5),
(303, 'HR-261357662', 'D. Management of learning', 62, '27', 5),
(304, 'HR-261357662', 'A. Commitment', 63, '8', 5),
(305, 'HR-261357662', 'A. Commitment', 63, '9', 5),
(306, 'HR-261357662', 'A. Commitment', 63, '10', 5),
(307, 'HR-261357662', 'A. Commitment', 63, '11', 5),
(308, 'HR-261357662', 'A. Commitment', 63, '12', 5),
(309, 'HR-261357662', 'B. Knowledge of the subject', 63, '13', 5),
(310, 'HR-261357662', 'B. Knowledge of the subject', 63, '14', 5),
(311, 'HR-261357662', 'B. Knowledge of the subject', 63, '15', 5),
(312, 'HR-261357662', 'B. Knowledge of the subject', 63, '16', 3),
(313, 'HR-261357662', 'B. Knowledge of the subject', 63, '17', 3),
(314, 'HR-261357662', 'C. Teaching for independent learning', 63, '18', 4),
(315, 'HR-261357662', 'C. Teaching for independent learning', 63, '19', 4),
(316, 'HR-261357662', 'C. Teaching for independent learning', 63, '20', 4),
(317, 'HR-261357662', 'C. Teaching for independent learning', 63, '21', 4),
(318, 'HR-261357662', 'C. Teaching for independent learning', 63, '22', 1),
(319, 'HR-261357662', 'D. Management of learning', 63, '23', 5),
(320, 'HR-261357662', 'D. Management of learning', 63, '24', 4),
(321, 'HR-261357662', 'D. Management of learning', 63, '25', 5),
(322, 'HR-261357662', 'D. Management of learning', 63, '26', 5),
(323, 'HR-261357662', 'D. Management of learning', 63, '27', 5),
(324, 'HR-261357662', 'A. Commitment', 64, '8', 1),
(325, 'HR-261357662', 'A. Commitment', 64, '9', 1),
(326, 'HR-261357662', 'A. Commitment', 64, '10', 1),
(327, 'HR-261357662', 'A. Commitment', 64, '11', 1),
(328, 'HR-261357662', 'A. Commitment', 64, '12', 1),
(329, 'HR-261357662', 'B. Knowledge of the subject', 64, '13', 3),
(330, 'HR-261357662', 'B. Knowledge of the subject', 64, '14', 3),
(331, 'HR-261357662', 'B. Knowledge of the subject', 64, '15', 2),
(332, 'HR-261357662', 'B. Knowledge of the subject', 64, '16', 4),
(333, 'HR-261357662', 'B. Knowledge of the subject', 64, '17', 4),
(334, 'HR-261357662', 'C. Teaching for independent learning', 64, '18', 5),
(335, 'HR-261357662', 'C. Teaching for independent learning', 64, '19', 5),
(336, 'HR-261357662', 'C. Teaching for independent learning', 64, '20', 5),
(337, 'HR-261357662', 'C. Teaching for independent learning', 64, '21', 5),
(338, 'HR-261357662', 'C. Teaching for independent learning', 64, '22', 5),
(339, 'HR-261357662', 'D. Management of learning', 64, '23', 4),
(340, 'HR-261357662', 'D. Management of learning', 64, '24', 5),
(341, 'HR-261357662', 'D. Management of learning', 64, '25', 4),
(342, 'HR-261357662', 'D. Management of learning', 64, '26', 5),
(343, 'HR-261357662', 'D. Management of learning', 64, '27', 1),
(344, 'HR-261357662', 'A. Commitment', 72, '8', 5),
(345, 'HR-261357662', 'A. Commitment', 72, '9', 5),
(346, 'HR-261357662', 'A. Commitment', 72, '10', 5),
(347, 'HR-261357662', 'A. Commitment', 72, '11', 5),
(348, 'HR-261357662', 'A. Commitment', 72, '12', 5),
(349, 'HR-261357662', 'B. Knowledge of the subject', 72, '13', 5),
(350, 'HR-261357662', 'B. Knowledge of the subject', 72, '14', 5),
(351, 'HR-261357662', 'B. Knowledge of the subject', 72, '15', 5),
(352, 'HR-261357662', 'B. Knowledge of the subject', 72, '16', 5),
(353, 'HR-261357662', 'B. Knowledge of the subject', 72, '17', 5),
(354, 'HR-261357662', 'C. Teaching for independent learning', 72, '18', 2),
(355, 'HR-261357662', 'C. Teaching for independent learning', 72, '19', 2),
(356, 'HR-261357662', 'C. Teaching for independent learning', 72, '20', 2),
(357, 'HR-261357662', 'C. Teaching for independent learning', 72, '21', 1),
(358, 'HR-261357662', 'C. Teaching for independent learning', 72, '22', 1),
(359, 'HR-261357662', 'D. Management of learning', 72, '23', 5),
(360, 'HR-261357662', 'D. Management of learning', 72, '24', 5),
(361, 'HR-261357662', 'D. Management of learning', 72, '25', 1),
(362, 'HR-261357662', 'D. Management of learning', 72, '26', 3),
(363, 'HR-261357662', 'D. Management of learning', 72, '27', 2),
(364, 'HR-1259953886', 'A. Commitment', 58, '8', 5),
(365, 'HR-1259953886', 'A. Commitment', 58, '9', 5),
(366, 'HR-1259953886', 'A. Commitment', 58, '10', 5),
(367, 'HR-1259953886', 'A. Commitment', 58, '11', 5),
(368, 'HR-1259953886', 'A. Commitment', 58, '12', 5),
(369, 'HR-1259953886', 'B. Knowledge of the subject', 58, '13', 5),
(370, 'HR-1259953886', 'B. Knowledge of the subject', 58, '14', 5),
(371, 'HR-1259953886', 'B. Knowledge of the subject', 58, '15', 5),
(372, 'HR-1259953886', 'B. Knowledge of the subject', 58, '16', 5),
(373, 'HR-1259953886', 'B. Knowledge of the subject', 58, '17', 5),
(374, 'HR-1259953886', 'C. Teaching for independent learning', 58, '18', 5),
(375, 'HR-1259953886', 'C. Teaching for independent learning', 58, '19', 5),
(376, 'HR-1259953886', 'C. Teaching for independent learning', 58, '20', 5),
(377, 'HR-1259953886', 'C. Teaching for independent learning', 58, '21', 5),
(378, 'HR-1259953886', 'C. Teaching for independent learning', 58, '22', 5),
(379, 'HR-1259953886', 'D. Management of learning', 58, '23', 5),
(380, 'HR-1259953886', 'D. Management of learning', 58, '24', 5),
(381, 'HR-1259953886', 'D. Management of learning', 58, '25', 5),
(382, 'HR-1259953886', 'D. Management of learning', 58, '26', 5),
(383, 'HR-1259953886', 'D. Management of learning', 58, '27', 5),
(384, 'HR-1259953886', 'A. Commitment', 59, '8', 5),
(385, 'HR-1259953886', 'A. Commitment', 59, '9', 5),
(386, 'HR-1259953886', 'A. Commitment', 59, '10', 5),
(387, 'HR-1259953886', 'A. Commitment', 59, '11', 5),
(388, 'HR-1259953886', 'A. Commitment', 59, '12', 5),
(389, 'HR-1259953886', 'B. Knowledge of the subject', 59, '13', 5),
(390, 'HR-1259953886', 'B. Knowledge of the subject', 59, '14', 5),
(391, 'HR-1259953886', 'B. Knowledge of the subject', 59, '15', 5),
(392, 'HR-1259953886', 'B. Knowledge of the subject', 59, '16', 5),
(393, 'HR-1259953886', 'B. Knowledge of the subject', 59, '17', 5),
(394, 'HR-1259953886', 'C. Teaching for independent learning', 59, '18', 5),
(395, 'HR-1259953886', 'C. Teaching for independent learning', 59, '19', 5),
(396, 'HR-1259953886', 'C. Teaching for independent learning', 59, '20', 5),
(397, 'HR-1259953886', 'C. Teaching for independent learning', 59, '21', 5),
(398, 'HR-1259953886', 'C. Teaching for independent learning', 59, '22', 5),
(399, 'HR-1259953886', 'D. Management of learning', 59, '23', 5),
(400, 'HR-1259953886', 'D. Management of learning', 59, '24', 5),
(401, 'HR-1259953886', 'D. Management of learning', 59, '25', 5),
(402, 'HR-1259953886', 'D. Management of learning', 59, '26', 5),
(403, 'HR-1259953886', 'D. Management of learning', 59, '27', 5),
(404, 'HR-1259953886', 'A. Commitment', 60, '8', 4),
(405, 'HR-1259953886', 'A. Commitment', 60, '9', 4),
(406, 'HR-1259953886', 'A. Commitment', 60, '10', 4),
(407, 'HR-1259953886', 'A. Commitment', 60, '11', 4),
(408, 'HR-1259953886', 'A. Commitment', 60, '12', 4),
(409, 'HR-1259953886', 'B. Knowledge of the subject', 60, '13', 4),
(410, 'HR-1259953886', 'B. Knowledge of the subject', 60, '14', 4),
(411, 'HR-1259953886', 'B. Knowledge of the subject', 60, '15', 4),
(412, 'HR-1259953886', 'B. Knowledge of the subject', 60, '16', 3),
(413, 'HR-1259953886', 'B. Knowledge of the subject', 60, '17', 3),
(414, 'HR-1259953886', 'C. Teaching for independent learning', 60, '18', 3),
(415, 'HR-1259953886', 'C. Teaching for independent learning', 60, '19', 3),
(416, 'HR-1259953886', 'C. Teaching for independent learning', 60, '20', 3),
(417, 'HR-1259953886', 'C. Teaching for independent learning', 60, '21', 3),
(418, 'HR-1259953886', 'C. Teaching for independent learning', 60, '22', 4),
(419, 'HR-1259953886', 'D. Management of learning', 60, '23', 5),
(420, 'HR-1259953886', 'D. Management of learning', 60, '24', 5),
(421, 'HR-1259953886', 'D. Management of learning', 60, '25', 5),
(422, 'HR-1259953886', 'D. Management of learning', 60, '26', 5),
(423, 'HR-1259953886', 'D. Management of learning', 60, '27', 5),
(424, 'HR-1259953886', 'A. Commitment', 61, '8', 1),
(425, 'HR-1259953886', 'A. Commitment', 61, '9', 1),
(426, 'HR-1259953886', 'A. Commitment', 61, '10', 1),
(427, 'HR-1259953886', 'A. Commitment', 61, '11', 1),
(428, 'HR-1259953886', 'A. Commitment', 61, '12', 2),
(429, 'HR-1259953886', 'B. Knowledge of the subject', 61, '13', 2),
(430, 'HR-1259953886', 'B. Knowledge of the subject', 61, '14', 3),
(431, 'HR-1259953886', 'B. Knowledge of the subject', 61, '15', 3),
(432, 'HR-1259953886', 'B. Knowledge of the subject', 61, '16', 3),
(433, 'HR-1259953886', 'B. Knowledge of the subject', 61, '17', 3),
(434, 'HR-1259953886', 'C. Teaching for independent learning', 61, '18', 4),
(435, 'HR-1259953886', 'C. Teaching for independent learning', 61, '19', 4),
(436, 'HR-1259953886', 'C. Teaching for independent learning', 61, '20', 3),
(437, 'HR-1259953886', 'C. Teaching for independent learning', 61, '21', 2),
(438, 'HR-1259953886', 'C. Teaching for independent learning', 61, '22', 1),
(439, 'HR-1259953886', 'D. Management of learning', 61, '23', 1),
(440, 'HR-1259953886', 'D. Management of learning', 61, '24', 2),
(441, 'HR-1259953886', 'D. Management of learning', 61, '25', 3),
(442, 'HR-1259953886', 'D. Management of learning', 61, '26', 3),
(443, 'HR-1259953886', 'D. Management of learning', 61, '27', 5),
(444, 'HR-1716834195', 'professor', 45, '28', 5),
(445, 'HR-1716834195', 'professor', 45, '30', 4),
(446, 'HR-1716834195', 'professor', 45, '31', 5),
(447, 'HR-1716834195', 'professor', 45, '36', 4),
(448, 'HR-637196355', 'professor', 45, '28', 2),
(449, 'HR-637196355', 'professor', 45, '30', 2),
(450, 'HR-637196355', 'professor', 45, '31', 2),
(451, 'HR-637196355', 'professor', 45, '36', 3),
(452, 'HR-637196355', 'professor', 46, '28', 3),
(453, 'HR-637196355', 'professor', 46, '30', 3),
(454, 'HR-637196355', 'professor', 46, '31', 1),
(455, 'HR-637196355', 'professor', 46, '36', 2),
(456, 'HR-1716834195', 'professor', 47, '28', 5),
(457, 'HR-1716834195', 'professor', 47, '30', 1),
(458, 'HR-1716834195', 'professor', 47, '31', 4),
(459, 'HR-1716834195', 'professor', 47, '36', 5),
(460, 'HR-255089832', 'A. Commitment', 58, '8', 5),
(461, 'HR-255089832', 'A. Commitment', 58, '9', 4),
(462, 'HR-255089832', 'A. Commitment', 58, '10', 4),
(463, 'HR-255089832', 'A. Commitment', 58, '11', 4),
(464, 'HR-255089832', 'A. Commitment', 58, '12', 4),
(465, 'HR-255089832', 'B. Knowledge of the subject', 58, '13', 2),
(466, 'HR-255089832', 'B. Knowledge of the subject', 58, '14', 2),
(467, 'HR-255089832', 'B. Knowledge of the subject', 58, '15', 3),
(468, 'HR-255089832', 'B. Knowledge of the subject', 58, '16', 3),
(469, 'HR-255089832', 'B. Knowledge of the subject', 58, '17', 4),
(470, 'HR-255089832', 'C. Teaching for independent learning', 58, '18', 4),
(471, 'HR-255089832', 'C. Teaching for independent learning', 58, '19', 4),
(472, 'HR-255089832', 'C. Teaching for independent learning', 58, '20', 5),
(473, 'HR-255089832', 'C. Teaching for independent learning', 58, '21', 5),
(474, 'HR-255089832', 'C. Teaching for independent learning', 58, '22', 2),
(475, 'HR-255089832', 'D. Management of learning', 58, '23', 2),
(476, 'HR-255089832', 'D. Management of learning', 58, '24', 3),
(477, 'HR-255089832', 'D. Management of learning', 58, '25', 3),
(478, 'HR-255089832', 'D. Management of learning', 58, '26', 4),
(479, 'HR-255089832', 'D. Management of learning', 58, '27', 4),
(480, 'HR-2114763868', 'A. Commitment', 55, '8', 5),
(481, 'HR-2114763868', 'A. Commitment', 55, '9', 5),
(482, 'HR-2114763868', 'A. Commitment', 55, '10', 5),
(483, 'HR-2114763868', 'A. Commitment', 55, '11', 5),
(484, 'HR-2114763868', 'A. Commitment', 55, '12', 5),
(485, 'HR-2114763868', 'B. Knowledge of the subject', 55, '13', 5),
(486, 'HR-2114763868', 'B. Knowledge of the subject', 55, '14', 5),
(487, 'HR-2114763868', 'B. Knowledge of the subject', 55, '15', 5),
(488, 'HR-2114763868', 'B. Knowledge of the subject', 55, '16', 5),
(489, 'HR-2114763868', 'B. Knowledge of the subject', 55, '17', 5),
(490, 'HR-2114763868', 'C. Teaching for independent learning', 55, '18', 5),
(491, 'HR-2114763868', 'C. Teaching for independent learning', 55, '19', 5),
(492, 'HR-2114763868', 'C. Teaching for independent learning', 55, '20', 5),
(493, 'HR-2114763868', 'C. Teaching for independent learning', 55, '21', 5),
(494, 'HR-2114763868', 'C. Teaching for independent learning', 55, '22', 5),
(495, 'HR-2114763868', 'D. Management of learning', 55, '23', 5),
(496, 'HR-2114763868', 'D. Management of learning', 55, '24', 3),
(497, 'HR-2114763868', 'D. Management of learning', 55, '25', 3),
(498, 'HR-2114763868', 'D. Management of learning', 55, '26', 4),
(499, 'HR-2114763868', 'D. Management of learning', 55, '27', 4),
(500, 'HR-2114763868', 'A. Commitment', 104, '8', 2),
(501, 'HR-2114763868', 'A. Commitment', 104, '9', 5),
(502, 'HR-2114763868', 'A. Commitment', 104, '10', 5),
(503, 'HR-2114763868', 'A. Commitment', 104, '11', 5),
(504, 'HR-2114763868', 'A. Commitment', 104, '12', 5),
(505, 'HR-2114763868', 'B. Knowledge of the subject', 104, '13', 5),
(506, 'HR-2114763868', 'B. Knowledge of the subject', 104, '14', 3),
(507, 'HR-2114763868', 'B. Knowledge of the subject', 104, '15', 3),
(508, 'HR-2114763868', 'B. Knowledge of the subject', 104, '16', 1),
(509, 'HR-2114763868', 'B. Knowledge of the subject', 104, '17', 3),
(510, 'HR-2114763868', 'C. Teaching for independent learning', 104, '18', 4),
(511, 'HR-2114763868', 'C. Teaching for independent learning', 104, '19', 3),
(512, 'HR-2114763868', 'C. Teaching for independent learning', 104, '20', 1),
(513, 'HR-2114763868', 'C. Teaching for independent learning', 104, '21', 1),
(514, 'HR-2114763868', 'C. Teaching for independent learning', 104, '22', 1),
(515, 'HR-2114763868', 'D. Management of learning', 104, '23', 4),
(516, 'HR-2114763868', 'D. Management of learning', 104, '24', 4),
(517, 'HR-2114763868', 'D. Management of learning', 104, '25', 4),
(518, 'HR-2114763868', 'D. Management of learning', 104, '26', 2),
(519, 'HR-2114763868', 'D. Management of learning', 104, '27', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_name`, `date_created`, `created_by`) VALUES
(1, 'R01', '2020-03-09 03:53:46', 'admin'),
(2, 'R02', '2020-03-09 03:53:53', 'admin'),
(3, 'R03', '2020-03-09 03:54:40', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `sy_id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `set_default` int(255) NOT NULL,
  `created_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`sy_id`, `year`, `semester`, `date_created`, `set_default`, `created_by`) VALUES
(23, '2018-2019', '1st Semester', '2020-02-11 07:25:06', 0, 'admin'),
(24, '2020-2021', '1st Semester', '2020-02-11 07:25:00', 0, 'admin'),
(25, '2021-2022', '1st Semester', '2020-02-15 13:08:12', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sched_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`list_id`, `user_id`, `sched_id`) VALUES
(8, 10202001, 1),
(9, 10202002, 1),
(10, 10202003, 1),
(16, 10202004, 2),
(18, 10202001, 3),
(19, 10202002, 3),
(20, 10202003, 3),
(21, 10202001, 4),
(22, 10202002, 4),
(23, 10202003, 4),
(24, 10202004, 4),
(25, 10202005, 4),
(26, 10202006, 4),
(27, 10202007, 4),
(28, 10202016, 5),
(29, 10202017, 5),
(30, 10202014, 6),
(31, 10202012, 6),
(32, 12003661, 7),
(33, 16010141, 8),
(34, 10202016, 8),
(35, 10202017, 8),
(36, 123, 9),
(37, 456, 9),
(38, 10202001, 9),
(39, 10202002, 9),
(40, 10202008, 10),
(41, 10202010, 10),
(42, 10202009, 10),
(43, 10202018, 10),
(44, 10202004, 11),
(45, 10202005, 11),
(46, 10202006, 11),
(47, 10202007, 11);

-- --------------------------------------------------------

--
-- Table structure for table `subject_list`
--

CREATE TABLE `subject_list` (
  `sub_id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject_schedule`
--

CREATE TABLE `subject_schedule` (
  `sched_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `sub_from` time NOT NULL,
  `sub_code` varchar(255) NOT NULL,
  `sub_name` text NOT NULL,
  `sub_until` time NOT NULL,
  `sub_day` text NOT NULL,
  `sub_year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_schedule`
--

INSERT INTO `subject_schedule` (`sched_id`, `user_id`, `room_id`, `course_id`, `sub_from`, `sub_code`, `sub_name`, `sub_until`, `sub_day`, `sub_year`) VALUES
(9, 45, 0, '1', '08:00:00', 'Math101', 'Basic Algebra', '10:00:00', '', ''),
(10, 46, 0, '1', '08:00:00', 'eng1', 'Basic English', '10:00:00', '', ''),
(11, 47, 0, '1', '11:00:00', 'Cal101', 'Basic Calculus', '12:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_sched`
--

CREATE TABLE `time_sched` (
  `time_id` int(11) NOT NULL,
  `time_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_sched`
--

INSERT INTO `time_sched` (`time_id`, `time_name`) VALUES
(1, '07:00 '),
(2, '08:00'),
(3, '9:00'),
(4, '10:00'),
(5, '11:00'),
(6, '12:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL COMMENT '0=admin,1=prof, 2=student,3=chairman',
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `suffix` text NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `user_address` text NOT NULL,
  `user_brgy` varchar(255) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_contact` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_photo` varchar(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`user_id`, `user_name`, `pass`, `user_role`, `fname`, `mname`, `lname`, `suffix`, `section_name`, `user_address`, `user_brgy`, `user_city`, `user_contact`, `user_email`, `user_photo`, `DateCreated`) VALUES
(33, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 0, 'Missionari', '', 'della fede', '', '', 'Pasig city', '', '', '09059356575', 'info.greentag@gmail.com', 'default.png', '2020-03-05 13:37:07'),
(45, '10201001', 'fb3794f34ef37e0af9300756458aeda6b02aeb3d79a45356a23083ea2a93766d', 1, 'Lowella', 'Lunaria', 'Sancon', '', '', 'Victoria Sta.Cruz Laguna', 'sample brgy', 'sample city', '09307548854', 'LowellaSancon@yahoo.com', '', '2022-11-21 05:02:51'),
(46, '10201002', 'a4e464387ac42eda5eddd3bdff9ee766d798f3b1108b503759871bea5f397fa2', 1, 'Glydel', 'Maloles', 'Califlores', '', '', 'Victoria Sta.Cruz Laguna', '', '', '09101875574', 'GlydelMalolesCaliflores@yahoo.com', '', '2020-03-09 03:27:45'),
(47, '10201003', '24d6ef644387edce8488f538f6f58e350b7a99cde8887445b5e435e42d48c182', 1, 'Ana Rose', 'Buenaventura', 'Cabral', '', '', 'Victoria Sta.Cruz Laguna', '', '', '09093067816', 'AnaRoseCabral@yahoo.com', '', '2020-03-09 03:30:31'),
(48, '10201004', '858c329d296df139ac54b1bfa41d9a5848e929020949fa3806665090a23485c4', 1, 'Trixie', 'San jose', 'Torres', '', '', 'Victoria Sta.Cruz Laguna', '', '', '09557137469', 'TrixieTorres@yahoo.com', '', '2020-03-09 03:35:21'),
(49, '10201005', '994d344ada6caebe99f5a19545dae616f51e8e5985c613e0fe11087f00fcd08f', 1, 'Gracylie', 'Relova', 'Evio', '', '', 'Victoria Sta.Cruz Laguna', '', '', '09070736358', 'GracylieEvio@yahoo.com', '', '2020-03-09 03:37:26'),
(50, '10201006', '03fc8e57cdf08fab99deda7463e341e20869819b84c70791b0e41247e5a72ec3', 1, 'Maria Theresa', '', 'Rebong', '', '', 'Victoria Sta.Cruz Laguna', '', '', '09357423874', 'MariaTheresaRebong@yahoo.com', '', '2020-03-09 03:41:22'),
(55, '10202001', 'ebbab64b69ca4b5baf92297c4e76d8d245d06231519e82c856d029ead7f12ae4', 2, 'Paul Daniel', 'Pagtalunan', 'Corpuz', '', '1', 'Victoria', 'Sta.Cruz', 'Laguna', '09354654165', 'Pauldaniiel@yahoo.com', '', '2020-03-22 00:51:31'),
(56, '10202002', 'e7029730eb3446c989699775235e71ef1886d979d1baa77273fdb2cd62cc6d50', 2, 'Samuel', 'Juvida', 'Dela Cruz', '', '1', '180 malakas street', 'Victoria', 'Calamba CIty Laguna', '09556546768', 'SamuelDelacruz@yahoo.com', '', '2020-03-22 00:52:09'),
(57, '10202003', '26c74c326393a68399576b918672a79c377d1f5f8f3989783d87f7455e523506', 2, 'Ednym Christian', 'Ramirez', 'Espiritu', '', '1', 'Victoria Sta.Cruz Laguna', '', '', '09096562265', 'EdnymChristian@yahoo.com', '', '2020-03-09 06:26:28'),
(58, '10202004', 'cdd1651e42700b86b70b7abfe3bbcdc4405ebe2af63122dbebbbe29f52ee5dab', 2, 'Ken Axl', 'Manaig', 'Cambe', '', '1', 'Victoria Sta.Cruz Laguna', '', '', '09070765468', 'KenAxl@yahoo.com', '', '2020-03-09 06:28:11'),
(59, '10202005', '1668c457b2f9ddb4dd5d55f948290f7a56c47f0b0e91566c4af15c9e8104bccf', 2, 'Jay  Julius Japhet', 'Herradura', 'Ramos', '', '1', 'Victoria Sta.Cruz Laguna', '', '', '09101564871', 'Jayherradura@yahoo.com', '', '2020-03-09 06:29:57'),
(60, '10202006', '6bce7484fdee02bee41613c0b6ee7334652651e3be2476eb2bd1eab1674fbac7', 2, 'Calvin Luiz', 'Relova', 'Rebong', '', '1', 'Victoria Sta.Cruz Laguna', '', '', '09106871654', 'CalvinRebong@yahoo.com', '', '2020-03-09 06:31:15'),
(61, '10202007', '07856bec75ad099f7e9428189ea62fc12e8ef9aaafe54aec696a2c22ac9b4dcd', 2, 'Mary Jane', 'Mejia', 'Bariring', '', '1', 'Victoria Sta.Cruz Laguna', '', '', '09126138746', 'Maryjane@yahoo.com', '', '2020-03-09 06:35:37'),
(62, '10202008', '6c16cd2d4630314c493318aead654315da2a9b957db910c0a4d58abd09255da8', 2, 'Diana', 'Villanueva', 'Camunias', '', '1', 'Victoria Sta.Cruz Laguna', '', '', '09101011054', 'Dianacamunias@yaoo.com', '', '2020-03-09 06:38:52'),
(63, '10202009', '63bf987790036b7dd92515cae642bdaf90011e697f12404ca3931124f01a9fa3', 2, 'Marlyn', 'Torres', 'Herradura', '', '1', 'Victoria Sta.Cruz Laguna', '', '', '09067389910', 'Marlynherradura@yahoo.com', '', '2020-03-09 06:40:48'),
(64, '10202010', 'a84e086d82b1abdb8fb55a9cf6ed58c51a3685348cf43ea90c5d8617d2fe7af3', 2, 'Margin Beth', 'Rebong', 'Yabut', '', '1', 'Victoria Sta.Cruz Laguna', '', '', '09061273947', 'Marginbethyabut@yahoo.com', '', '2020-03-09 06:42:26'),
(65, '10202011', '5dd68c31394f6836b5fe5d58ae963bbbcafa5c0a2c46774a399e5d15be6134bd', 2, 'Aedrian', 'Usman', 'Bermejo', '', '3', 'Victoria Sta.Cruz Laguna', '', '', '09127361487', 'Aedrianbermejo@yahoo.com', '', '2020-03-09 06:44:09'),
(66, '10202012', 'b4303931c779e54368ca4b31251ceb9f59d142aecb64847c5c69df6a0caa3617', 2, 'Jaymark', 'Oliva', 'Bermejo', '', '3', 'Victoria Sta.Cruz Laguna', '', '', '09550760460', 'Jaymarkbermejo@yahoo.com', '', '2020-03-09 06:47:41'),
(67, '10202013', '58487d7c5e77af4f648cfc70662bc7e9da36042238c151ea5b6f27f5ce131c9f', 2, 'Lei Renell', 'Corcuera', 'Dausin', '', '3', 'Victoria Sta.Cruz Laguna', '', '', '09309059571', 'LeiRenellDausin@yahoo.com', '', '2020-03-09 06:52:05'),
(68, '10202014', 'eb291340f4caff80c2ac160e27d0579773f8bbe5ab1eb2af5a00b9572571d743', 2, 'Angelo Arnez', 'Barcelona', 'Flores', '', '3', 'Victoria Sta.Cruz Laguna', '', '', '09067530484', 'Angeloflores@yahoo.com', '', '2020-03-09 06:51:43'),
(69, '10202015', '421435cd9f61af3e576655bab773e047a88175ec348b810b6afb9495e072b443', 2, 'John Cedric', 'Cerrudo', 'Larano', '', '1', 'Victoria Sta.Cruz Laguna', '', '', '09094628103', 'JohncedrickLarano@yahoo.com', '', '2020-03-09 06:54:57'),
(70, '10202016', 'd7fc762562a01b094f969c73a3d23246cf39663c6a5d8513568745340422ab9c', 2, 'Jun Amiel', 'Ramos', 'Dausin', '', '4', 'Victoria Sta.Cruz Laguna', '', '', '09127192863', 'JunAmielRamos@yahoo.com', '', '2020-03-09 07:06:32'),
(71, '10202017', '743fcfc5ab673ee387ef8ca3dcbeba0ee3bfc913c871010248e1dcdbf0d611fa', 2, 'Diana Arcel', 'Catacutan', 'Clemino', '', '4', 'Victoria Sta.Cruz Laguna', '', '', '09551097613', 'DianaArcelClemino@yahoo.com', '', '2020-03-09 07:08:11'),
(72, '10202018', 'b3310a1fa8a8cab645dbd63d9a0fd1a407b093de8f84ee66612e72db9d979294', 2, 'Ma Khailah', 'Telles', 'Evio', '', '1', 'Victoria Sta.Cruz Laguna', '', '', '09127743913', 'KhailahEvio@yahoo.com', '', '2020-03-09 07:10:21'),
(73, '12003661', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 2, 'Patrick', 'Tandoc', 'Sarmiento', 'Jr', '2', '180 Domalandan East Lingayen Pangasinan', '', '', '099993658', 'ptsarmiento12@yahoo.com', '', '2022-08-13 03:23:40'),
(74, '16010141', '80125031abdcbbb0e616c9c92b6b3bc5317b0429ab618239b7c44813d5c5804a', 2, 'Ferdinand', 'Edralin', 'Marcos', 'Jr.', '4', 'Sabangan', 'Laoag', 'Ilocos Sur', '09204663591', 'marcos@gmail.com', '', '2022-08-13 13:23:10'),
(76, '12040545', '5f70c16f207e82dad0908bd29dd294a4ff3e13a21ae6cd2a449acf75859f2abd', 2, 'Mary Rose', 'Tandoc', 'Sarmiento', '', '1', '180', 'Domalandan East', 'Lingayen', '09993045355', 'sartanbikeshop@gmail.com', '', '2022-08-13 13:24:27'),
(77, '09345345', 'b3ca857d6d31d1dc9199c3840b9b319dd6c468157a3f3522c299c6a0bb192f3f', 3, 'Mark Angelo', 'Soriano', 'Fernandez', 'Sr.', '', 'Domalandan east lingayen pangasinan', '', '', '0999032423', 'markangelo@gmail.com', '', '2022-10-20 10:18:13'),
(78, '923942304', 'e8d81e46838b7c8cc5dec49d69350b353e62dd01f601a94d81b49ea48c9b1bff', 3, 'Mark', 'Consuelo', 'Santos', 'Jr.', '', 'pangasinan', '', '', '09990234023', 'markconsuelo@gmail.com', '', '2022-10-21 12:51:58'),
(104, '123', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 2, 'Christian', 'Santos', 'Padilla', '', '1', 'pangasinan', '', '', '9994334', 'christian@gmail.com', '', '2022-11-12 14:58:44'),
(105, '456', 'b3a8e0e1f9ab1bfe3a36f231f676f78bb30a519d2b21e6c530c0eee8ebb4a5d0', 2, 'Mariel', 'Cruz', 'Soriano', '', '1', 'tarlac', '', '', '99343244', 'mariel@gmail.com', '', '2022-11-12 14:58:44'),
(106, '45345', '5a18d2e0d89146de57618100ad7af5d70aef39fc31bb56fe388500b5aeabf840', 2, 'Lester', 'Cruz', 'Padilla', '', '1', 'pangasinan', '', '', '9994334', 'lester@gmail.com', '', '2022-11-21 04:50:27'),
(107, '23586', '2df1c75c6cab4bc2c01c082b0279fb312691ece140e34977853cb7bb22ade117', 2, 'Mariel', 'Santos', 'Sarmiento', '', '1', 'tarlac', '', '', '99343244', 'marielsantos@gmail.com', '', '2022-11-21 04:50:27'),
(108, '3405', 'f8eebb16fad8156c037189e6940ed46ddc859410c65a31e17a91512622379a90', 2, 'Dexter', 'Campos', 'Cruz', '', '1', 'Pasig city', '', '', '9994304', 'dexter@gmail.com', '', '2022-11-21 04:50:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_type`
--
ALTER TABLE `comment_type`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`day_id`);

--
-- Indexes for table `evaluation_sheet`
--
ALTER TABLE `evaluation_sheet`
  ADD PRIMARY KEY (`eval_id`);

--
-- Indexes for table `evaluation_user`
--
ALTER TABLE `evaluation_user`
  ADD PRIMARY KEY (`eu_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`sy_id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `subject_list`
--
ALTER TABLE `subject_list`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `subject_schedule`
--
ALTER TABLE `subject_schedule`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `time_sched`
--
ALTER TABLE `time_sched`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment_type`
--
ALTER TABLE `comment_type`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `course_list`
--
ALTER TABLE `course_list`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `evaluation_sheet`
--
ALTER TABLE `evaluation_sheet`
  MODIFY `eval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `evaluation_user`
--
ALTER TABLE `evaluation_user`
  MODIFY `eu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `subject_list`
--
ALTER TABLE `subject_list`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_schedule`
--
ALTER TABLE `subject_schedule`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `time_sched`
--
ALTER TABLE `time_sched`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
