-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2025 at 01:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'akhilesh @gmail.com', 1, '2025-02-24 09:43:17', '2025-02-24 09:43:17'),
(3, 'subadmin', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.com', 0, '2025-02-24 09:43:17', '2025-02-24 09:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Sports', 'Related to sports news', '2025-02-24 09:43:17', '2025-02-24 09:43:17', 1),
(5, 'Entertainment', 'Entertainment related  News', '2025-02-24 09:43:17', '2025-02-24 09:43:17', 1),
(6, 'Politics', 'Politics', '2025-02-24 09:43:17', '2025-02-24 09:43:17', 1),
(7, 'Business', 'Business', '2025-02-24 09:43:17', '2025-02-24 09:43:17', 1),
(8, 'COVID-19', 'COVID-19', '2025-02-24 09:43:17', '2025-04-06 10:09:31', 1),
(10, 'PHP', 'PHP', '2025-02-24 09:43:17', '2025-04-06 10:09:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, 12, 'eshb', 'anuj@gmail.com', 'ew sdm,bvsedfd csxvcsd', '2025-02-24 09:43:17', 1),
(2, 12, 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2025-02-24 09:43:17', 1),
(3, 7, 'ABC', 'abc@test.com', 'This is sample text for testing.', '2025-02-24 09:43:17', 0),
(4, 7, 'Anuj', 'ak@gmail.com', 'This is a test comment.', '2025-02-24 09:43:17', 1),
(5, 7, 'Test user', 'test@gmail.com', 'This is a test comment.', '2025-02-24 09:43:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', 'Welcome to Bloggers Point , a powerful and user-friendly platform designed to streamline blog creation, management, and optimization. Whether you\'re an individual blogger, a content team, or a business, our system simplifies content scheduling, SEO optimization, and collaboration—all in one place. With intuitive features and seamless automation, we help you focus on what truly matters: creating impactful content and growing your audience effortlessly.', '2025-02-24 09:43:17', '2025-02-24 09:43:17'),
(2, 'contactus ', 'Contact Details', '<p><b>Address :&nbsp; </b>Pune, Maharashtra</p>\r\n<p><b>Phone Number : </b>+91 -5632568725</p>\r\n<p><b>Email -id : </b>bloggerspoint@gmail.com</p>', '2025-02-24 09:43:17', '2025-04-06 11:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(7, 'Pollard confident Indian batting icon will find his rhythm again', 3, 4, '<p style=\"font-size: 22px;\"> Rohit Sharma has had a patchy record so far in the Indian Premier League in the first three fixtures. The Indian skipper has scored 21 runs from three innings with a highest score of 13.</p>\r\n\r\n<p style=\"font-size: 22px;\">However, Mumbai Indians batting coach Kieron Pollard backs the Indian talisman to return to his run-scoring best.</p>\r\n\r\n<p style=\"font-size: 22px;\">\"I\'ve played alongside Rohit since Under-19 cricket and he has forged his name and etched his name in history in the record books, in different situations, different formats of the game,\" Pollard told reporters.</p>\r\n\r\n<p style=\"font-size: 22px;\">\"He is a legend of the game in his own right, and as an individual as well.”</p>\r\n\r\n\r\n<p style=\"font-size: 22px;\">Rohit came into the Indian Premier League season on the back off a triumphant Champions Trophy 2025, where he led from the front with a brilliant 76 (83) as he set the foundation for India’s win over New Zealand in the summit clash.</p>\r\n\r\n\r\n<p style=\"font-size: 22px;\">Furthermore, backing his former franchise cricket teammate, the former West Indies skipper asserted that Sharma had \'earned the right\' to \'not be pressurised\'.</p>\r\n\r\n\r\n<p style=\"font-size: 22px;\">\"There are times when you have a couple of low scores … he has earned the right as an individual to now enjoy his cricket and not be pressurised in certain situations. So let\'s not judge on a couple of low scores.</p>\r\n\r\n\r\n<p style=\"font-size: 22px;\">\"In cricket, we know we fail more than we succeed and I\'m sure we\'ll be singing his praises when he gives us that big score and then we\'ll be on to the next hot topic.\"</p>\r\n\r\n', '2025-02-24 09:43:17', '2025-02-24 09:43:17', 1, 'Jasprit-Bumrah-ruled-out-of-England-T20I-series-due-to-injury', '6d08a26c92cf30db69197a1fb7230626.jpg', 564, 'admin', NULL),
(10, 'Swiggy receives Rs 7.6-crore notice from Pune profession tax department\r\n\r\n', 7, 9, '<p style=\"font-size: 22px;\">Food and grocery delivery firm Swiggy has received a fresh notice from the Pune profession tax department for Rs 7.6 crore in unpaid dues, it said in a filing to the exchanges.</p>\r\n\r\n<p style=\"font-size: 22px;\">This takes the aggregate of multiple notices issued to Swiggy by the various direct tax authorities across the country to almost Rs 167 crore in the last one month.</p>\r\n\r\n<p style=\"font-size: 22px;\">The latest notice received pertains to violations of the provisions pertaining to deduction of profession tax from the employees salaries, which is applicable in Maharashtra. The notice received is for the period of fiscal 2022.</p>\r\n\r\n<p style=\"font-size: 22px;\">Swiggy said in an exchange filing that it will appeal the assessment order raised by the profession tax department. “The company believes that it has strong arguments against the order and is taking necessary steps to protect its interest through review/appeal,” it said.</p>\r\n\r\n<p style=\"font-size: 22px;\">In addition, authorities have also flagged unpaid Goods and Services Tax (GST) amounting to over Rs 327 crore by the company, which went public in November 2024.</p>\r\n\r\n', '2025-02-24 09:43:17', '2025-04-06 11:39:15', 1, 'Swiggy receives Rs 7.6-crore notice from Pune profession tax department\r\n\r\n', '838bd3f79cb15dbe485a0d3f10519602.jpg', 379, 'admin', NULL),
(11, 'Trump\'s agenda grapples with political and economic reality', 6, 8, '<p style=\"font-size: 22px;\">Donald Trump, in announcing his sweeping new tariffs on US imports on Wednesday, promised that the history books would record 2 April as America\'s \"liberation day\".</p><br>\r\n\r\n<p style=\"font-size: 22px;\">After two days of stock market turmoil, however, this may also be remembered as the week the president\'s second-term agenda ran headfirst into economic - and political - reality.</p><br>\r\n\r\n<p style=\"font-size: 22px;\">US stocks have been in a tailspin since Trump unveiled his tariffs at Wednesday afternoon\'s White House Rose Garden event, with signs that America\'s trading partners - Canada, the European Union and China, most notably - are not backing away from a fight.</p><br>\r\n\r\n<p style=\"font-size: 22px;\">Follow live updates</p><br>\r\n\r\n<p style=\"font-size: 22px;\">Meanwhile, other presidential efforts, on foreign policy and immigration, and at the ballot box - have faced notable setbacks in recent days.</p><br>\r\n\r\n\r\n<p style=\"font-size: 22px;\">The White House on Thursday felt a bit like a building battening down for a coming storm. The four big posters showing America\'s \"reciprocal\" tariffs on a long list of countries were on prominent display in the press briefing room, but administration officials available to respond to media questions were few and far between.</p><br>\r\n\r\n<p style=\"font-size: 22px;\">Out on Pennsylvania Avenue, workers unloaded pallets of metal fencing, which will ring the White House grounds in preparation for what officials anticipate to be a large anti-Trump demonstration at the nearby Washington Monument on Saturday. The first lady announced that a White House garden tour event that had been scheduled for that day had been postponed because of security concerns.</p><br>\r\n\r\n<p style=\"font-size: 22px;\">Even the normally loquacious president stopped only briefly to talk with the crush of reporters on his way to board the Marine One helicopter on the first leg of his journey to Florida.</p><br>\r\n\r\n<p style=\"font-size: 22px;\">\"I said this would be exactly the way it is,\" he declared when asked about the day\'s stock market turmoil. The markets - and America as a whole - would soon boom, he said.</p><br>\r\n\r\n<p style=\"font-size: 22px;\">The president, it seems, is willing to wait out the tempest created by his tariff plan. He appears confident that his economic vision of a rebuilt, job-rich American manufacturing sector protected from foreign competition - a vision he has closely held for decades - will ultimately be proven right.</p><br>', '2021-06-30 18:30:00', '2025-04-06 11:40:32', 1, 'Trump\'s agenda grapples with political and economic reality', '363eed2521dd878ae2b234d2cefd47f2.jpg', 875, 'admin', NULL),
(12, 'A leader should consider party, its workers as his family: Nitin Gadkari', 6, 7, '<p style=\"font-size: 22px;\"> Union minister Nitin Gadkari on Sunday said that for a political leader, the party should be like his family and he should consider the party workers as his family members. Gadkari was addressing a gathering after laying the foundation stone for the BJP’s new office in Maharashtra’s Nagpur city.</p>\r\n\r\n<p style=\"font-size: 22px;\">Chief Minister Devendra Fadnavis and BJP state chief Chandrashekhar Bawankule were also present in the programme. The Bharatiya Janata Party is also celebrating its foundation day on Sunday.</p>\r\n\r\n<p style=\"font-size: 22px;\">The BJP was founded on April 6, 1980 by leaders of the erstwhile Bharatiya Jana Sangh, a party which had merged with other opposition parties to form the Janata Party to take on the Congress in the post-Emergency 1977 polls.</p>\r\n\r\n<p style=\"font-size: 22px;\">The BJP won only two Lok Sabha seats in the first national election it fought in 1984. However, it rose rapidly later under the leadership of Atal Bihari Vajpayee and L K Advani, coming to power in the 90s as the head of a coalition, before Prime Minister Narendra Modi led the party to its maiden majority in 2014. The party has been in power at the Centre since then.</p>\r\n\r\n<p style=\"font-size: 22px;\">Gadkari said, “For a leader, his party should be like his family and the party workers like family members. You should love the party workers like you love your children.”</p>\r\n\r\n<p style=\"font-size: 22px;\">He said leaders like him and Fadnavis got the opportunity to become what they are today because of the dedication and sacrifice of innumerable party workers from the beginning.</p>\r\n\r\n<p style=\"font-size: 22px;\">There was an adverse time when the Congress tried to propagate a wrong image of the Jana Sangh, Bhartiya Janata Party (BJP) and RSS in the society, Gadkari said.</p>', '2025-02-24 09:43:17', '2025-04-06 11:32:48', 1, 'A leader should consider party, its workers as his family: Nitin Gadkari', 'be22f9078f4ae98a22c9aeaa35e941d5.jpg', 245, 'admin', NULL),
(13, 'T20 World Cup 2021: Semi-final 1, England vs New Zealand Who Said What', 3, 4, '<p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">New Zealand held their nerves admirably to make it a hat-trick of ICC event final entrances, trumping&nbsp;<a href=\"https://www.crictracker.com/cricket-teams/england/\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(4, 93, 233);\"><strong>England</strong></a>&nbsp;in a see-sawing semi-final clash in Abu Dhabi. You would feel they are too nice to believe in revenging anything, even if it is as bitter as the fateful 2019 ODI World Cup loss, so letâ€™s put it this way: the scores are settled. And in doing so, New Zealand have made it to the finals of a tournament no one counted them as the favourites of.&nbsp;</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">After being inserted, a Jason Roy-less England managed 166/4 largely on the back of Dawid Malan (41 off 30), who got back his mojo at the right time, and Moeen Ali (51 off 37), who proved it for the umpteenth time what a marvellous short-format asset he is.</p>', '2021-11-10 18:50:09', '2025-02-24 09:43:17', 1, 'T20-World-Cup-2021:-Semi-final-1,-England-vs-New-Zealand-â€“-Who-Said-What', '8bc5c30be91dca9d07c1db858c60e39f.jpg', 9, 'admin', 'subadmin');

-- --------------------------------------------------------

--
-- Table structure for table `tblsite`
--

CREATE TABLE `tblsite` (
  `id` int(11) NOT NULL,
  `siteTitle` varchar(255) DEFAULT NULL,
  `siteLogo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsite`
--

INSERT INTO `tblsite` (`id`, `siteTitle`, `siteLogo`) VALUES
(1, 'Bloggers Point ', '422a4a149b939d85c87bcb0cf35232de1743939157.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood ', '2025-02-24 09:43:17', '2025-04-06 10:26:11', 1),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2025-02-24 09:43:17', '2025-02-24 09:43:17', 1),
(5, 3, 'Football', 'Football', '2025-02-24 09:43:17', '2025-02-24 09:43:17', 1),
(6, 5, 'Television', 'Television', '2025-02-24 09:43:17', '2025-04-06 10:26:17', 1),
(7, 6, 'National', 'National', '2025-02-24 09:43:17', '2025-02-24 09:43:17', 1),
(8, 6, 'International', 'International', '2025-02-24 09:43:17', '2025-02-24 09:43:17', 1),
(9, 7, 'India', 'India', '2025-02-24 09:43:17', '2025-02-24 09:43:17', 1),
(10, 8, 'Vaccination', 'Vaccination', '2025-02-24 09:43:17', '2025-04-06 10:25:46', 1),
(12, 10, 'Core PHP', 'Core PHP', '2025-02-24 09:43:17', '2025-04-06 10:25:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `fullName` varchar(120) DEFAULT NULL,
  `subscriberEmail` varchar(125) DEFAULT NULL,
  `subscriptionDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `fullName`, `subscriberEmail`, `subscriptionDate`) VALUES
(3, 'Akhilesh', 'ak@gmail.com', '2025-02-24 09:43:17'),
(4, 'Allen ', 'Allen@gmail.com', '2025-02-24 09:43:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsite`
--
ALTER TABLE `tblsite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblsite`
--
ALTER TABLE `tblsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
