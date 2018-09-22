-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Sep 22, 2018 at 11:03 AM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `chatThread`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ID` int(10) unsigned NOT NULL,
  `thread_id` int(10) unsigned NOT NULL,
  `sender` int(10) unsigned NOT NULL,
  `sent` datetime NOT NULL,
  `message` text NOT NULL,
  `status` enum('active','inactive','deleted','') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ID`, `thread_id`, `sender`, `sent`, `message`, `status`) VALUES
(1, 1, 1, '2018-05-09 10:07:37', 'what is the most fun you''ve had?', 'active'),
(2, 1, 2, '2018-05-09 10:12:37', 'kicking kittens', 'active'),
(3, 1, 4, '2018-05-09 10:17:37', 'watching paint dry', 'active'),
(4, 1, 3, '2018-05-09 10:17:37', 'plucking my toe nails', 'active'),
(5, 1, 4, '2018-05-09 10:24:37', 'oh, I like that, too', 'active'),
(6, 1, 1, '2018-05-09 10:27:37', 'you guys suck', 'active'),
(7, 2, 1, '2018-05-17 16:24:36', 'who is your favorite game of thrones character?', 'active'),
(8, 2, 1, '2018-05-17 16:24:42', 'any season and any character (spoilers!)', 'active'),
(9, 2, 3, '2018-05-17 16:25:36', 'the hound is pretty damn funny and so gruf', 'active'),
(10, 2, 4, '2018-05-17 16:26:36', 'Arya is such a strong character, and I can really relate to her.', 'active'),
(11, 2, 5, '2018-05-17 16:27:36', 'I really like the mother character.', 'active'),
(12, 2, 1, '2018-05-17 16:28:36', 'the mother of whom?', 'active'),
(13, 2, 4, '2018-05-17 16:29:36', 'momma stark?', 'active'),
(14, 2, 5, '2018-05-17 16:30:36', 'yeah, her!', 'active'),
(15, 2, 3, '2018-05-17 16:31:36', 'but you don''t even know her name!  It''s Catelyn Start (originally Tully) by the way', 'active'),
(16, 2, 5, '2018-05-17 16:32:36', 'whatever!  I still like her.  She''s strong and I like the way she carries herself.', ''),
(17, 2, 4, '2018-05-17 16:33:36', 'bling is a GoT nerd!', 'active'),
(19, 3, 3, '2018-03-07 11:39:03', 'what the heck is going on in politics today!', 'active'),
(20, 3, 3, '2018-03-07 11:39:30', 'it''s all crazy.  I think I''m going crazy.', 'deleted'),
(21, 3, 1, '2018-03-07 11:40:30', 'Heck if I know.  It''s all alternative facts and laughing strongmen', 'active'),
(22, 3, 5, '2018-03-07 11:41:30', 'Cantaloupe in chief?  LOL', 'active'),
(23, 3, 2, '2018-03-07 11:42:30', 'Funny, yes; but disrespectful to the office all the same', 'active'),
(24, 3, 3, '2018-03-07 11:43:30', 'Who''s disrespecting the office!  You leave my Dwight alone!', 'active'),
(25, 3, 4, '2018-03-07 11:44:30', 'Threat Level: midnight (in 12 hours)', 'active'),
(26, 3, 5, '2018-03-07 11:45:30', 'I thought this was going to be a very different thread.', 'active'),
(27, 3, 1, '2018-03-07 11:46:30', 'It''s an ''alternative thread''', 'active'),
(28, 3, 2, '2018-03-07 11:48:30', 'oh god, my eyes...', 'active'),
(29, 3, 5, '2018-03-07 11:50:30', 'o.O', 'active'),
(30, 4, 5, '2017-12-07 18:40:47', 'what do you have to do today?', 'active'),
(31, 4, 4, '2017-12-07 18:41:47', 'respond to this thread', 'active'),
(32, 4, 1, '2017-12-07 18:42:47', 'mow the lawn', 'active'),
(33, 4, 3, '2017-12-07 18:43:47', 'kick a puppy.\r\nhave a drink.\r\nnot necessarily in that order.', 'active'),
(34, 4, 2, '2017-12-07 18:45:47', 'do my taxes... from 1994', 'active'),
(35, 4, 1, '2017-12-07 18:46:47', 'wut?', ''),
(36, 4, 2, '2017-12-07 18:47:47', 'I mean watch netflix!', 'active'),
(37, 4, 1, '2017-12-07 18:48:47', 'seems legit', 'active'),
(38, 4, 5, '2017-12-07 18:48:47', 'Time to do some homework.', 'active'),
(40, 5, 4, '2018-04-04 05:15:41', 'conan, what is best in life...', 'active'),
(41, 5, 1, '2018-04-04 05:16:41', 'to crush your enemies...', ''),
(42, 5, 5, '2018-04-04 05:17:41', 'see them driven before you...', 'active'),
(43, 5, 3, '2018-04-04 05:18:41', 'And to hear the lamentation of the puppies', ''),
(44, 5, 1, '2018-04-04 05:18:52', 'and to hear the puppies cry after bling kicks them', 'active'),
(45, 5, 3, '2018-04-04 05:19:52', 'hah, jinx you owe me a coke', 'active'),
(46, 5, 1, '2018-04-04 05:20:52', '*sage nod*', 'active'),
(47, 6, 3, '2018-08-08 09:33:33', 'the new episode of the Expanse... so good', 'active'),
(48, 6, 2, '2018-08-08 09:36:33', 'I have to admit, I was surprised to not see something about puppies.', 'active'),
(49, 6, 3, '2018-08-08 09:38:33', 'I''m multifaceted', 'active'),
(50, 6, 5, '2018-08-08 09:39:33', 'And canincidal', 'active'),
(51, 6, 3, '2018-08-08 09:40:33', 'powtaeto powtawto', 'active'),
(52, 6, 4, '2018-08-08 09:45:33', 'oh man, now you''re abusing legumes!', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `ID` int(10) unsigned NOT NULL,
  `threadStarter` int(10) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `threadTitle` varchar(20) NOT NULL,
  `status` enum('visible','deleted','banned','') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`ID`, `threadStarter`, `created`, `threadTitle`, `status`) VALUES
(1, 1, '2018-05-09 10:07:37', 'fun times', 'visible'),
(2, 1, '2018-05-17 16:24:36', 'game of thrones', 'visible'),
(3, 3, '2018-03-07 11:39:03', 'cantaloupe in chief', 'visible'),
(4, 5, '2017-12-07 18:40:47', 'today', 'visible'),
(5, 4, '2018-04-04 05:15:41', 'best stuff', 'visible'),
(6, 3, '2018-08-08 09:33:33', 'i love it', 'visible');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(10) unsigned NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `added` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('active','deleted','inactive','') NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `email`, `added`, `updated`, `status`, `password`) VALUES
(1, 'johnny boy', 'jacksmacktalk@gmail.com', '2018-05-08 05:26:09', '2018-05-08 12:26:09', 'active', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(2, 'jackylinne', 'stuffandthing@hotmail.com', '2017-11-03 14:15:40', '2017-11-03 21:15:40', 'active', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(3, 'the one bling', 'sallyjoe@gmail.com', '2017-10-04 11:09:40', '2018-09-21 15:19:59', 'active', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(4, 'famousferret', 'smallanimalsrock@me.com', '2018-07-10 07:32:19', '2018-07-10 14:32:19', 'active', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(5, 'samjackson', 'whataintnocountr', '2017-10-03 09:45:30', '2017-10-03 16:45:30', 'active', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;