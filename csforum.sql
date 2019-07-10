-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2018 at 03:43 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csforum`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `body`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 3, 'this is working', 4, 'App\\thread', '2018-03-22 13:34:10', '2018-03-22 13:34:10'),
(2, 3, 'something', 4, 'App\\thread', '2018-03-22 13:34:19', '2018-03-22 13:34:19'),
(3, 3, 'this is womshtn', 4, 'App\\thread', '2018-03-22 13:34:33', '2018-03-22 13:34:33'),
(4, 1, 'i dont understand what you have written\r\n>explain', 3, 'App\\thread', '2018-03-22 20:39:38', '2018-03-22 20:39:38'),
(5, 1, '>did you just type this just like that\r\n>please elaborate because i don\'t understand', 3, 'App\\thread', '2018-03-22 20:42:37', '2018-03-22 20:42:37'),
(6, 1, '#try using w3schools they teach better\r\n>style=\"padding: 10px 20px 30px 40px\"\r\n    hope it helps', 2, 'App\\thread', '2018-03-23 11:08:28', '2018-03-23 11:08:28'),
(7, 1, '>this is a markdown request', 2, 'App\\thread', '2018-03-23 19:26:46', '2018-03-23 19:26:46'),
(8, 1, 'jkl', 2, 'App\\thread', '2018-03-27 22:52:35', '2018-03-27 22:52:35'),
(9, 4, 'this will work', 2, 'App\\thread', '2018-03-31 12:00:43', '2018-03-31 12:00:43'),
(10, 6, 'i wouldn\'t know why you are going to use php and node.js together since they both can do virtually the same thing. but if you want to use them together then you need two different seperate servers one for php and node.js', 4, 'App\\thread', '2018-04-01 17:30:43', '2018-04-01 17:30:43'),
(11, 6, 'what are you using', 9, 'App\\thread', '2018-04-02 01:21:10', '2018-04-02 01:21:10'),
(12, 6, 'please explain the thread further', 5, 'App\\thread', '2018-04-03 15:57:06', '2018-04-03 15:57:06'),
(13, 6, 'yes i also don\'t get it', 3, 'App\\thread', '2018-04-03 16:23:51', '2018-04-03 16:23:51'),
(14, 6, 'you have to the new flutter if you really want to win\r\n>www.flutter.com', 2, 'App\\thread', '2018-04-03 18:32:25', '2018-04-03 18:32:25'),
(15, 6, 'i dont think using flutter will solve the problem', 2, 'App\\thread', '2018-04-03 18:35:35', '2018-04-03 18:35:35'),
(16, 6, 'you need to read more on laravel api with javascript', 20, 'App\\thread', '2018-04-04 11:58:38', '2018-04-04 11:58:38'),
(17, 6, 'you do know you just wrote the test fast and just left and your username is just user. you used css as your thread type but you are doing  coding not design . please make up your mind', 8, 'App\\thread', '2018-04-08 17:58:32', '2018-04-08 17:58:32'),
(18, 6, 'to get the value on of an associative array you can try this\r\n>//example\r\n>array[\"index\"]', 19, 'App\\thread', '2018-04-09 12:28:45', '2018-04-09 12:28:45'),
(19, 1, 'try something new', 2, 'App\\thread', '2018-04-11 04:03:11', '2018-04-11 04:03:11'),
(20, 6, 'please @simeon you just said try somthign new which is just nothing', 2, 'App\\thread', '2018-04-11 11:44:53', '2018-04-11 11:44:53'),
(21, 6, 'okk first of all your plan is just messed up', 18, 'App\\thread', '2018-04-11 12:40:53', '2018-04-11 12:40:53'),
(22, 6, 'please you havnt said anything', 30, 'App\\thread', '2018-04-15 12:50:42', '2018-04-15 12:50:42'),
(23, 6, 'this is a reply', 34, 'App\\thread', '2018-05-16 19:08:40', '2018-05-16 19:08:40'),
(24, 6, 'this is a reply', 34, 'App\\thread', '2018-05-16 19:09:14', '2018-05-16 19:09:14'),
(25, 6, 'this is a reply', 34, 'App\\thread', '2018-05-16 19:12:29', '2018-05-16 19:12:29'),
(26, 6, 'this is a reply', 34, 'App\\thread', '2018-05-16 19:13:33', '2018-05-16 19:13:33'),
(27, 6, 'can\'t help sorry', 2, 'App\\thread', '2018-05-16 19:28:01', '2018-05-16 19:28:01'),
(28, 6, 'someone', 2, 'App\\thread', '2018-05-16 19:58:14', '2018-05-16 19:58:14'),
(29, 6, 'you can try it out and see', 4, 'App\\thread', '2018-05-16 20:20:11', '2018-05-16 20:20:11'),
(30, 1, 'what is this suppose to mean', 31, 'App\\thread', '2018-05-16 20:24:18', '2018-05-16 20:24:18'),
(31, 1, 'just try it', 31, 'App\\thread', '2018-05-16 20:38:35', '2018-05-16 20:38:35'),
(32, 1, 'just try it', 31, 'App\\thread', '2018-05-16 20:39:58', '2018-05-16 20:39:58'),
(33, 1, 'just checking', 31, 'App\\thread', '2018-05-16 20:41:28', '2018-05-16 20:41:28'),
(34, 1, 'just checking again', 31, 'App\\thread', '2018-05-16 20:44:29', '2018-05-16 20:44:29'),
(35, 1, 'testing again', 31, 'App\\thread', '2018-05-17 00:00:57', '2018-05-17 00:00:57'),
(36, 1, 'another test', 31, 'App\\thread', '2018-05-17 00:02:12', '2018-05-17 00:02:12'),
(37, 1, 'just me again', 31, 'App\\thread', '2018-05-17 00:03:49', '2018-05-17 00:03:49'),
(38, 6, 'thg man', 4, 'App\\thread', '2018-05-17 00:59:12', '2018-05-17 00:59:12'),
(39, 6, 'thg man', 4, 'App\\thread', '2018-05-17 01:00:14', '2018-05-17 01:00:14'),
(40, 6, 'thg man', 4, 'App\\thread', '2018-05-17 01:01:01', '2018-05-17 01:01:01'),
(41, 6, 'thg man', 4, 'App\\thread', '2018-05-17 01:03:54', '2018-05-17 01:03:54'),
(42, 6, 'thg man', 4, 'App\\thread', '2018-05-17 01:05:56', '2018-05-17 01:05:56'),
(43, 6, 'jkl', 4, 'App\\thread', '2018-05-17 01:08:59', '2018-05-17 01:08:59'),
(44, 6, 'jkll', 4, 'App\\thread', '2018-05-17 01:11:54', '2018-05-17 01:11:54'),
(45, 6, 'uiolkj', 4, 'App\\thread', '2018-05-17 01:17:29', '2018-05-17 01:17:29'),
(46, 6, 'jkl', 4, 'App\\thread', '2018-05-17 01:18:18', '2018-05-17 01:18:18'),
(47, 1, 'hello here', 31, 'App\\thread', '2018-05-17 01:42:00', '2018-05-17 01:42:00'),
(48, 6, 'well done', 4, 'App\\thread', '2018-05-17 01:50:56', '2018-05-17 01:50:56'),
(49, 6, 'lets test again', 4, 'App\\thread', '2018-05-17 01:51:44', '2018-05-17 01:51:44'),
(50, 6, 'this is working', 4, 'App\\thread', '2018-05-17 01:52:42', '2018-05-17 01:52:42'),
(51, 6, 'try again', 4, 'App\\thread', '2018-05-17 01:53:19', '2018-05-17 01:53:19'),
(52, 6, 'jkloik', 4, 'App\\thread', '2018-05-17 01:56:45', '2018-05-17 01:56:45'),
(53, 6, 'add class', 4, 'App\\thread', '2018-05-17 01:58:04', '2018-05-17 01:58:04'),
(54, 6, 'please work', 4, 'App\\thread', '2018-05-17 01:58:40', '2018-05-17 01:58:40'),
(55, 6, 'try thi', 4, 'App\\thread', '2018-05-17 02:15:15', '2018-05-17 02:15:15'),
(56, 6, 'working with node i see', 4, 'App\\thread', '2018-05-17 02:19:25', '2018-05-17 02:19:25'),
(57, 6, 'the mask', 9, 'App\\thread', '2018-05-17 02:20:43', '2018-05-17 02:20:43'),
(58, 6, 'make sure you have including the css file', 2, 'App\\thread', '2018-05-17 13:45:46', '2018-05-17 13:45:46'),
(59, 6, 'have you done that', 2, 'App\\thread', '2018-05-17 13:47:22', '2018-05-17 13:47:22'),
(60, 7, 'HHYJU N', 3, 'App\\thread', '2018-05-17 14:05:37', '2018-05-17 14:05:37'),
(61, 1, 'just use one. it is much better that way', 4, 'App\\thread', '2018-05-21 21:15:29', '2018-05-21 21:15:29'),
(62, 6, 'don\'t. just don\'t', 2, 'App\\thread', '2018-05-21 21:17:37', '2018-05-21 21:17:37'),
(63, 1, 'Real time notification', 27, 'App\\thread', '2018-05-22 13:23:13', '2018-05-22 13:23:13'),
(64, 6, 'real time', 2, 'App\\thread', '2018-05-22 13:23:34', '2018-05-22 13:23:34'),
(65, 6, 'this is a test', 2, 'App\\thread', '2018-05-22 13:31:06', '2018-05-22 13:31:06'),
(66, 6, 'fgh', 2, 'App\\thread', '2018-05-22 13:31:35', '2018-05-22 13:31:35'),
(67, 6, 'thgy', 2, 'App\\thread', '2018-05-22 13:31:49', '2018-05-22 13:31:49'),
(68, 6, 'ghjk kk', 2, 'App\\thread', '2018-05-22 13:32:07', '2018-05-22 13:32:07'),
(69, 6, '67y', 3, 'App\\thread', '2018-05-22 13:32:38', '2018-05-22 13:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `Receiver` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_12_24_101520_create_posts_table', 1),
(4, '2018_02_28_143805_create_threads_table', 1),
(5, '2018_03_04_015046_create_types_table', 2),
(6, '2018_03_21_011659_create_comments_table', 2),
(7, '2018_03_28_014150_create_notifications_table', 3),
(8, '2018_04_23_033441_create_thread_types_table', 4),
(9, '2018_04_25_034320_create_types_table', 5),
(10, '2018_05_13_223616_create_messages_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('04ff0496-acc1-4fb5-8b57-cc82aceaf00e', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":2,\"subject\":\"something on html\",\"type_id\":\"Html\",\"thread\":\"i am trying to do some padding and i am finding it very difficult\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-19 03:33:54\",\"updated_at\":\"2018-03-19 03:33:54\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-22 13:32:13', '2018-05-22 13:32:07', '2018-05-22 13:32:13'),
('0e9f3198-58e2-4263-8689-598004cb5856', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:57:03', '2018-05-17 01:56:45', '2018-05-17 01:57:03'),
('2171130e-56ca-4486-8d5d-a15fedca1093', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 02:19:38', '2018-05-17 02:19:25', '2018-05-17 02:19:38'),
('2b05b013-9289-413d-9979-7ec0a18893f0', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":2,\"subject\":\"something on html\",\"type_id\":\"Html\",\"thread\":\"i am trying to do some padding and i am finding it very difficult\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-19 03:33:54\",\"updated_at\":\"2018-03-19 03:33:54\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-22 13:31:55', '2018-05-22 13:31:49', '2018-05-22 13:31:55'),
('2ce544e5-50d0-4376-9935-b26a5d0915ce', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":2,\"subject\":\"something on html\",\"type_id\":\"Html\",\"thread\":\"i am trying to do some padding and i am finding it very difficult\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-19 03:33:54\",\"updated_at\":\"2018-03-19 03:33:54\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 13:46:56', '2018-05-17 13:45:47', '2018-05-17 13:46:56'),
('2dc81304-b45d-49d7-b5cd-851f4fac712a', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":3,\"subject\":\"sdkjfkdjbjbjbjb\",\"type_id\":\"skdjfkdsjfkj\",\"thread\":\"skdjfkjdskfjkdjf\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-19 03:39:38\",\"updated_at\":\"2018-03-19 03:39:38\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":7,\"name\":\"Emmanuel Ashley\",\"email\":\"enkkashley@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":null,\"created_at\":\"2018-05-17 14:00:29\",\"updated_at\":\"2018-05-17 14:00:29\"}}', '2018-05-17 14:05:45', '2018-05-17 14:05:37', '2018-05-17 14:05:45'),
('3494b1f2-5b67-4f36-99b1-e1e962c0fceb', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:06:27', '2018-05-17 00:59:12', '2018-05-17 01:06:27'),
('40027212-7314-42d3-81af-e5eb22bca291', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":2,\"subject\":\"something on html\",\"type_id\":\"Html\",\"thread\":\"i am trying to do some padding and i am finding it very difficult\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-19 03:33:54\",\"updated_at\":\"2018-03-19 03:33:54\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 13:47:53', '2018-05-17 13:47:22', '2018-05-17 13:47:53'),
('43839476-99bf-4da7-b840-59a1ca2cb515', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 02:18:29', '2018-05-17 01:58:41', '2018-05-17 02:18:29'),
('44b4ad0e-8b07-42db-8ded-85a4eb6dd5c1', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}}', '2018-05-21 21:16:42', '2018-05-21 21:15:30', '2018-05-21 21:16:42'),
('44c4b653-7599-40ab-9640-f6acfec81a74', 'App\\Notifications\\RepliedToThread', 6, 'App\\User', '{\"thread\":{\"id\":31,\"subject\":\"gdgdhgdhgdfhgd\",\"type_id\":\"tdghdgfdgfs\",\"thread\":\"gdgdgfsgfsfsf\",\"code\":\"gdgfdgfdgfdgf\",\"user_id\":6,\"created_at\":\"2018-04-22 21:55:52\",\"updated_at\":\"2018-04-22 21:55:52\",\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}},\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"},\"sender\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}}', '2018-05-17 00:02:22', '2018-05-17 00:02:12', '2018-05-17 00:02:22'),
('4b3d9382-7e6e-4576-a0a6-637f87351374', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:41:46', '2018-05-17 01:17:29', '2018-05-17 01:41:46'),
('4e59801d-dc81-40e7-96bc-c71c6a7654ad', 'App\\Notifications\\RepliedToThread', 6, 'App\\User', '{\"thread\":{\"id\":27,\"subject\":\"Trying to get  the value from index array\",\"type_id\":\"PHP\",\"thread\":\"hey guys I am trying to get the value of some array but it returns the conunt of the array and I do\'t understand why\",\"code\":\">somehtingn awesome\",\"user_id\":6,\"created_at\":\"2018-04-11 11:42:31\",\"updated_at\":\"2018-04-11 11:42:31\",\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}},\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"},\"sender\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}}', '2018-05-22 13:23:44', '2018-05-22 13:23:14', '2018-05-22 13:23:44'),
('522dd3ad-0259-4ff0-9ff1-96800fac6ac2', 'App\\Notifications\\RepliedToThread', 6, 'App\\User', '{\"thread\":{\"id\":31,\"subject\":\"gdgdhgdhgdfhgd\",\"type_id\":\"tdghdgfdgfs\",\"thread\":\"gdgdgfsgfsfsf\",\"code\":\"gdgfdgfdgfdgf\",\"user_id\":6,\"created_at\":\"2018-04-22 21:55:52\",\"updated_at\":\"2018-04-22 21:55:52\",\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}},\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"},\"sender\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}}', '2018-05-17 01:55:47', '2018-05-17 01:42:00', '2018-05-17 01:55:47'),
('542432b8-fd89-4ed0-baec-f0ee56de55a0', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:06:27', '2018-05-17 01:01:01', '2018-05-17 01:06:27'),
('58bb2d6b-3a72-4d80-869c-3a45a0a003d2', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:06:27', '2018-05-17 01:00:14', '2018-05-17 01:06:27'),
('68f94284-db70-40c3-8883-720cabe9eecf', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":2,\"subject\":\"something on html\",\"type_id\":\"Html\",\"thread\":\"i am trying to do some padding and i am finding it very difficult\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-19 03:33:54\",\"updated_at\":\"2018-03-19 03:33:54\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-21 21:17:48', '2018-05-21 21:17:37', '2018-05-21 21:17:48'),
('690bb534-b105-44c7-b622-faad62be87c7', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":3,\"subject\":\"sdkjfkdjbjbjbjb\",\"type_id\":\"skdjfkdsjfkj\",\"thread\":\"skdjfkjdskfjkdjf\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-19 03:39:38\",\"updated_at\":\"2018-03-19 03:39:38\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-22 13:32:46', '2018-05-22 13:32:38', '2018-05-22 13:32:46'),
('72f954e4-3683-4d06-ba7f-8683586d0484', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:58:23', '2018-05-17 01:58:04', '2018-05-17 01:58:23'),
('78041f27-c985-417b-bee3-7a6261c0b606', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:52:08', '2018-05-17 01:51:45', '2018-05-17 01:52:08'),
('786ad58a-9f09-4e1d-8bb6-b0773cd45208', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:41:46', '2018-05-17 01:08:59', '2018-05-17 01:41:46'),
('82bf35cb-e930-43f6-9574-9cdcbe0827a7', 'App\\Notifications\\RepliedToThread', 6, 'App\\User', '{\"thread\":{\"id\":31,\"subject\":\"gdgdhgdhgdfhgd\",\"type_id\":\"tdghdgfdgfs\",\"thread\":\"gdgdgfsgfsfsf\",\"code\":\"gdgfdgfdgfdgf\",\"user_id\":6,\"created_at\":\"2018-04-22 21:55:52\",\"updated_at\":\"2018-04-22 21:55:52\",\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}},\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"},\"sender\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}}', '2018-05-16 23:57:48', '2018-05-16 20:44:29', '2018-05-16 23:57:48'),
('8a0494dc-e752-43cb-abfb-cece94e40b47', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 02:18:28', '2018-05-17 02:15:15', '2018-05-17 02:18:28'),
('92f97ab4-a2bc-4af6-9c04-9f2dbbfbcf08', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:41:46', '2018-05-17 01:11:54', '2018-05-17 01:41:46'),
('a29ebb2b-4b2d-43dd-b2d8-f7030ea5f684', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:57:03', '2018-05-17 01:52:42', '2018-05-17 01:57:03'),
('a37d2332-6e77-4fe6-90fb-3f505c5b8ffd', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":2,\"subject\":\"something on html\",\"type_id\":\"Html\",\"thread\":\"i am trying to do some padding and i am finding it very difficult\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-19 03:33:54\",\"updated_at\":\"2018-03-19 03:33:54\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-22 13:31:23', '2018-05-22 13:23:34', '2018-05-22 13:31:23'),
('a6b6ec45-f11d-486e-8efe-eb50ec6636cd', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":2,\"subject\":\"something on html\",\"type_id\":\"Html\",\"thread\":\"i am trying to do some padding and i am finding it very difficult\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-19 03:33:54\",\"updated_at\":\"2018-03-19 03:33:54\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-22 13:31:23', '2018-05-22 13:31:06', '2018-05-22 13:31:23'),
('a6e837c5-871c-4aa1-aa4c-55bcd48b9d76', 'App\\Notifications\\RepliedToThread', 6, 'App\\User', '{\"thread\":{\"id\":31,\"subject\":\"gdgdhgdhgdfhgd\",\"type_id\":\"tdghdgfdgfs\",\"thread\":\"gdgdgfsgfsfsf\",\"code\":\"gdgfdgfdgfdgf\",\"user_id\":6,\"created_at\":\"2018-04-22 21:55:52\",\"updated_at\":\"2018-04-22 21:55:52\",\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}},\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"},\"sender\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}}', '2018-05-17 00:04:01', '2018-05-17 00:03:49', '2018-05-17 00:04:01'),
('a7da87f1-b48d-483c-8583-c678357a0229', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:06:27', '2018-05-17 01:03:54', '2018-05-17 01:06:27'),
('b04e2a11-0e89-4bda-a693-5d5fcc90d052', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:06:26', '2018-05-17 01:05:56', '2018-05-17 01:06:26'),
('b673bd54-c9d5-4130-906b-92948ce128d4', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":2,\"subject\":\"something on html\",\"type_id\":\"Html\",\"thread\":\"i am trying to do some padding and i am finding it very difficult\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-19 03:33:54\",\"updated_at\":\"2018-03-19 03:33:54\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-22 13:31:41', '2018-05-22 13:31:35', '2018-05-22 13:31:41'),
('bae9f3de-b2ee-4338-b555-3289ef5afc2d', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:41:46', '2018-05-17 01:18:18', '2018-05-17 01:41:46'),
('bd9e2915-5883-494e-a069-b0c6f5d756bc', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:52:08', '2018-05-17 01:50:56', '2018-05-17 01:52:08'),
('c155ed68-8fb6-41a0-b79b-11e9e375c586', 'App\\Notifications\\RepliedToThread', 6, 'App\\User', '{\"thread\":{\"id\":31,\"subject\":\"gdgdhgdhgdfhgd\",\"type_id\":\"tdghdgfdgfs\",\"thread\":\"gdgdgfsgfsfsf\",\"code\":\"gdgfdgfdgfdgf\",\"user_id\":6,\"created_at\":\"2018-04-22 21:55:52\",\"updated_at\":\"2018-04-22 21:55:52\",\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}},\"user\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"},\"sender\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}}', '2018-05-17 00:01:09', '2018-05-17 00:00:57', '2018-05-17 00:01:09'),
('cf0a58a1-cf6c-48e9-8d5b-ecb3525936b2', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":4,\"subject\":\"Working with node.js and apache\",\"type_id\":\"Web\",\"thread\":\"<p>how can one use<strong> php<\\/strong> with <strong>node.js<\\/strong> together. i am having trouble integrating these two together<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 00:09:59\",\"updated_at\":\"2018-03-20 00:09:59\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 01:57:03', '2018-05-17 01:53:20', '2018-05-17 01:57:03'),
('e1752fd5-28e8-43e3-8a55-1861f2c4345c', 'App\\Notifications\\RepliedToThread', 1, 'App\\User', '{\"thread\":{\"id\":9,\"subject\":\"ths is the\",\"type_id\":\"html\",\"thread\":\"<p>#working<\\/p>\\r\\n\\r\\n<p>html is not rendered on the server<\\/p>\\r\\n\\r\\n<p>&gt;working<\\/p>\",\"code\":\"\",\"user_id\":1,\"created_at\":\"2018-03-20 01:16:14\",\"updated_at\":\"2018-03-20 01:16:14\",\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"}},\"user\":{\"id\":1,\"name\":\"Simeon Nortey\",\"email\":\"marcosimeony@yahoo.com\",\"provider\":\"facebook\",\"provider_id\":\"1832614066812808\",\"admin\":null,\"created_at\":\"2018-03-03 01:34:44\",\"updated_at\":\"2018-03-03 01:34:44\"},\"sender\":{\"id\":6,\"name\":\"test2\",\"email\":\"test2@gmail.com\",\"provider\":null,\"provider_id\":null,\"admin\":1,\"created_at\":\"2018-04-01 17:11:30\",\"updated_at\":\"2018-04-01 17:11:30\"}}', '2018-05-17 02:20:52', '2018-05-17 02:20:43', '2018-05-17 02:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thread` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `subject`, `type_id`, `thread`, `code`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'something on html', 'Html', 'i am trying to do some padding and i am finding it very difficult', '', 1, '2018-03-19 03:33:54', '2018-03-19 03:33:54'),
(3, 'sdkjfkdjbjbjbjb', 'skdjfkdsjfkj', 'skdjfkjdskfjkdjf', '', 1, '2018-03-19 03:39:38', '2018-03-19 03:39:38'),
(4, 'Working with node.js and apache', 'Web', '<p>how can one use<strong> php</strong> with <strong>node.js</strong> together. i am having trouble integrating these two together</p>', '', 1, '2018-03-20 00:09:59', '2018-03-20 00:09:59'),
(5, 'test on matter', 'Html', '<p><em>tthis is the test</em></p>', '', 1, '2018-03-20 00:13:28', '2018-03-20 00:13:28'),
(6, 'how to enter into php.ini', 'php', '<p>&nbsp; &nbsp;this is markdown</p>', '', 1, '2018-03-20 01:10:15', '2018-03-20 01:10:15'),
(7, 'how to make an input textbox invisible', 'Html', 'this is the test2', '', 1, '2018-03-20 01:11:23', '2018-03-20 01:11:23'),
(8, 'the test fast', 'css', '#heading\r\n    function callback(){}', '', 1, '2018-03-20 01:12:53', '2018-03-20 01:12:53'),
(9, 'ths is the', 'html', '<p>#working</p>\r\n\r\n<p>html is not rendered on the server</p>\r\n\r\n<p>&gt;working</p>', '', 1, '2018-03-20 01:16:14', '2018-03-20 01:16:14'),
(10, 'working si the effect', 'html', '>master effect', '', 1, '2018-03-20 01:19:32', '2018-03-20 01:19:32'),
(11, 'ththe test23', 'java', '<p>being read in java i got something below</p>', '>failed to load dependies', 1, '2018-03-20 01:46:35', '2018-03-20 01:46:35'),
(12, 'Getting error from ruby', 'RUBY', '<p>this is the working example blow</p>', '```ruby\r\nrequire \'redcarpet\'\r\nmarkdown = Redcarpet.new(\"Hello World!\")\r\nputs markdown.to_html\r\n```', 1, '2018-03-20 01:51:02', '2018-03-20 01:51:02'),
(13, 'test4this sd', 'html', '<p>@octocat :+1: This PR looks great - it&#39;s ready to merge! :shipit:</p>', '@octocat :+1: This PR looks great - it\'s ready to merge! :shipit:', 1, '2018-03-20 01:53:47', '2018-03-20 01:53:47'),
(14, 'test343sdfd', 'htmk', '<p>this is working in its own way</p>', '>this si working\r\n>this is not working\r\n- [x] Finish my changes\r\n- [ ] Push my commits to GitHub\r\n- [ ] Open a pull request', 1, '2018-03-20 01:55:21', '2018-03-20 01:55:21'),
(15, 'hghgghgkjbvjv', 'html', '<p>cgc</p>', '- [x] Finish my changes', 1, '2018-03-20 01:56:19', '2018-03-20 01:56:19'),
(16, 'thestjskdjk', 'jskdjfkj', '<p>skdjfkdskfj</p>', 'wokgin', 1, '2018-03-20 01:58:03', '2018-03-20 01:58:03'),
(17, 'test 46askdjfkdj', 'html', '<p>thshdie</p>', 'Use `git status` to list all new or modified files that haven\'t yet been committed.', 1, '2018-03-20 02:04:14', '2018-03-20 02:04:14'),
(18, 'aaaaaaaaaaaaaaaaaaaa', 'httml', '<p>this is the wokdinf</p>', '- [x] Finish my changes\r\n- [ ] Push my commits to GitHub\r\n- [ ] Open a pull request', 1, '2018-03-20 02:05:41', '2018-03-20 02:05:41'),
(19, 'working around arrays', 'PHP', '<p>please i can&#39;t access any value in an associative <span class=\"marker\">array</span>. can i please get <strong>help.</strong></p>', '>$dim[\'1\']', 1, '2018-03-23 11:10:53', '2018-03-23 11:10:53'),
(20, 'How to make ajax in laravel', 'Javascript', '<p>Hey guys i am trying to make an ajax call in laravel but it is just not work and i don&#39;t know what to do . can someone help me please</p>', '```javascript\r\nvar s = \"JavaScript syntax highlighting\";\r\nalert(s);\r\n$.ajax({})\r\n```', 6, '2018-04-04 11:57:46', '2018-04-04 11:57:46'),
(21, 'Html the dasmd the dnsela dnfid', 'Html', 'the thread field is required', 'the main code', 1, '2018-04-10 23:22:04', '2018-04-10 23:22:04'),
(22, 'How to make ajax in laravel', 'Html', 'i cant simply make an ajx in larave', 'there you have it', 1, '2018-04-11 02:17:10', '2018-04-11 02:17:10'),
(23, 'somthing is sdkfjdkjk', 'Html', 'aksdjfkjdskfj', 'skdfjksdjfkdsjkfjaskdjfk', 1, '2018-04-11 02:52:36', '2018-04-11 02:52:36'),
(24, 'aksdjfkasjdfkasjd', 'Web', 'asdkjfkasjdfkjasdkf askdfjkasdjfkj', '>test', 1, '2018-04-11 02:53:47', '2018-04-11 02:53:47'),
(25, 'kasdjfksadkf', 'askdjfkasdjk', 'ksdjfksjdkfjksdjfkdsjkfjaskjdfk asdfkaj', 'skdjfksjkafdjkdsf', 6, '2018-04-11 11:38:29', '2018-04-11 11:38:29'),
(26, 'Trying to get  the value from index array', 'PHP', 'hey guys I am trying to get the value of some array but it returns the conunt of the array and I do\'t understand why', '>somehtingn awesome', 6, '2018-04-11 11:42:13', '2018-04-11 11:42:13'),
(27, 'Trying to get  the value from index array', 'PHP', 'hey guys I am trying to get the value of some array but it returns the conunt of the array and I do\'t understand why', '>somehtingn awesome', 6, '2018-04-11 11:42:31', '2018-04-11 11:42:31'),
(28, 'ddaskdjfaskdf askdfj', 'askdfkasdjkfjk', 'sdkjfksdjf', '>ksjdfkjds', 6, '2018-04-11 12:32:38', '2018-04-11 12:32:38'),
(29, 'sddkjfkdj askdjfksjdkfj aksdjfk', 'php', 'skdjf', 'siowthn', 6, '2018-04-12 08:20:39', '2018-04-12 08:20:39'),
(30, 'how to find nemo', 'Html', 'so guys i am try to insert blah blah vla', '>skjdfkj', 6, '2018-04-15 12:49:53', '2018-04-15 12:49:53'),
(31, 'gdgdhgdhgdfhgd', 'tdghdgfdgfs', 'gdgdgfsgfsfsf', 'gdgfdgfdgfdgf', 6, '2018-04-22 21:55:52', '2018-04-22 21:55:52'),
(32, 'hhhjh hjjnjuj jjhjjjj', '2', 'sdfas asdf a    sadf', 'asdfdsf', 6, '2018-04-25 20:24:07', '2018-04-25 20:24:07'),
(33, 'working with html', '1', 'hello friends i was trying to make a css after the whole...', 'something', 6, '2018-05-13 23:18:09', '2018-05-13 23:18:09'),
(34, 'test for code', '1', 'the code is the test', NULL, 6, '2018-05-13 23:26:16', '2018-05-13 23:26:16'),
(35, 'Working with arrays in PHP', '2', 'Hey guys can someone help me with this, i have an array called sum[1,2,3,4,5] and i want to add all the values of sum with just one function in php. i tried array sum but it didn\'t work. can \r\ni please get help on this', '>array_sum(sum);', 1, '2018-05-18 13:29:05', '2018-05-18 13:29:05'),
(36, 'Something reactive', '4', 'I was just trying to get it to work but nothing is happening', NULL, 1, '2018-05-21 21:16:29', '2018-05-21 21:16:29'),
(37, 'This a test subject', '1', 'I have problems with the way the arrays work in php', NULL, 1, '2018-05-22 13:19:46', '2018-05-22 13:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isVerified` tinyint(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `detail`, `isVerified`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Html', '', 0, 1, '2018-04-25 03:56:43', '2018-05-22 13:26:01'),
(2, 'PHP', '', 1, 1, '2018-04-25 03:56:43', '2018-05-13 21:59:57'),
(3, 'Vue.js', '', 1, 1, '2018-04-25 18:48:11', '2018-05-13 21:46:15'),
(4, 'react.js', 'if you are interested in cross-platform application then this is the best place to be', 1, 6, '2018-05-11 18:59:25', '2018-05-22 13:26:06'),
(5, 'Flutter', 'Flutter is just so awesome it is just....', 1, 1, '2018-05-21 21:18:57', '2018-05-21 21:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `provider`, `provider_id`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Simeon Nortey', 'marcosimeony@yahoo.com', '$2y$10$6b.GyQqb.q/4s8m3q.203eqOIFZcv4ekCV1RrjsKql9fDBYGgAqXO', 'facebook', '1832614066812808', NULL, 'pDBmRtn5kr5tETuwNqcSZIjXNlLjHvkuPKiAXka6WFzridQAoYseaaOwZ4Yy', '2018-03-03 01:34:44', '2018-03-03 01:34:44'),
(2, 'Simeon Nortey', 'simeonnortey@gmail.com', '$2y$10$Ou3gLGb2Tiq0F5RhteAVR.pwawB/gzryzE167pjJyujxT/78u1koS', 'google', '108835916960302589708', NULL, 'yiKjdLC5sciBQXhiIWPGgPWXx9c84qD42e1jydlDqAh4NtQO0KNJh64gi1aR', '2018-03-18 15:13:02', '2018-03-18 15:13:02'),
(3, 'John Doe', 'johndoe@gmail.com', '$2y$10$d62eyZMh5hpG.3MaVLREzOgZd3YQzH0eog7T5zitNbZiXojQsBZSC', NULL, NULL, NULL, NULL, '2018-03-22 11:26:07', '2018-03-22 11:26:07'),
(4, 'johnmail', 'johnmail@gmail.com', '$2y$10$Xkbmjq8pyS1Ww/S5RqHpF.rSifXE3yak6OKPxd/AE5gmaCdEH/7hO', NULL, NULL, NULL, 'fI5cqxFKsd8Y3RmT4zDSvdwclVY37UoIYvZtXtAd4EJTrqzgsGHaG2IQpCMS', '2018-03-31 11:56:00', '2018-03-31 11:56:00'),
(5, 'van dam', 'Vandam@gmail.com', '$2y$10$uHQlpi5bh4FHKvNWfIfpguBC2/hK4t569bY9OFYwuWrD32b/4hXQi', NULL, NULL, NULL, 'JGhZJI0DM35RvdYrMTkdkWGXTo8ufz5Os63uuIZjqwmSUeQiYvshiBSevWJF', '2018-03-31 13:53:25', '2018-03-31 13:53:25'),
(6, 'test2', 'test2@gmail.com', '$2y$10$zGlPa4qqxd8y6.DYwVtbZuPY2E5w/02YYvzKsK1tCogxJEqeUht7O', NULL, NULL, 1, 'Ly0A5JiGQMXvjRYnG0uhSlcR4D7NgXlpln1fZeNcPonpLp1Jq9dTVWJNneh3', '2018-04-01 17:11:30', '2018-04-01 17:11:30'),
(7, 'Emmanuel Ashley', 'enkkashley@gmail.com', '$2y$10$Va8CvjtihqOyYd6uoV3Dd.CG/rMSsYGQsVSRr21C5X8LtnmBQKMBa', NULL, NULL, NULL, NULL, '2018-05-17 14:00:29', '2018-05-17 14:00:29'),
(8, 'testman', 'testman@gmail.com', '$2y$10$Zn1T8GJ2w/Hg4pLoGKnlguclWrbiPV3ubrWyz3jiqugcgQ.CIXN72', NULL, NULL, NULL, 'LvCH1GKw7oQcScy2Eh69vAbKF0dF1OoYdofEoY1hfVnGvSJWAF4OVFiQerCo', '2018-05-20 20:25:51', '2018-05-20 20:25:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
