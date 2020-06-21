-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2020 at 12:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rani_chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add chat', 7, 'add_chat'),
(26, 'Can change chat', 7, 'change_chat'),
(27, 'Can delete chat', 7, 'delete_chat'),
(28, 'Can view chat', 7, 'view_chat'),
(29, 'Can add intent', 8, 'add_intent'),
(30, 'Can change intent', 8, 'change_intent'),
(31, 'Can delete intent', 8, 'delete_intent'),
(32, 'Can view intent', 8, 'view_intent'),
(33, 'Can add trainig_set', 9, 'add_trainig_set'),
(34, 'Can change trainig_set', 9, 'change_trainig_set'),
(35, 'Can delete trainig_set', 9, 'delete_trainig_set'),
(36, 'Can view trainig_set', 9, 'view_trainig_set');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$KdNQaS1f2wqg$/p6ON6vy/LQwBpdvh7F966JuprkC1rXpUeEBMCas+4s=', '2020-06-21 06:39:57.980248', 1, 'ranichat', '', '', 'mashuq.tanmoy06@gmail.com', 1, 1, '2020-06-21 06:39:26.320109');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-06-21 06:41:14.262912', '1', 'Intent object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-06-21 06:41:52.018426', '2', 'Intent object (2)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-06-21 06:42:11.924963', '3', 'Intent object (3)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2020-06-21 06:42:49.419398', '4', 'Intent object (4)', 1, '[{\"added\": {}}]', 8, 1),
(5, '2020-06-21 06:43:12.516906', '5', 'Intent object (5)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2020-06-21 06:45:03.531461', '6', 'Intent object (6)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2020-06-21 06:45:37.246319', '7', 'Intent object (7)', 1, '[{\"added\": {}}]', 8, 1),
(8, '2020-06-21 06:53:46.725699', '8', 'dak_send', 1, '[{\"added\": {}}]', 8, 1),
(9, '2020-06-21 06:58:18.621123', '1', 'Trainig_set object (1)', 1, '[{\"added\": {}}]', 9, 1),
(10, '2020-06-21 06:58:48.401759', '2', 'Trainig_set object (2)', 1, '[{\"added\": {}}]', 9, 1),
(11, '2020-06-21 06:59:11.237920', '3', 'Trainig_set object (3)', 1, '[{\"added\": {}}]', 9, 1),
(12, '2020-06-21 06:59:26.501648', '4', 'Trainig_set object (4)', 1, '[{\"added\": {}}]', 9, 1),
(13, '2020-06-21 06:59:50.459152', '5', 'Trainig_set object (5)', 1, '[{\"added\": {}}]', 9, 1),
(14, '2020-06-21 07:00:12.596704', '6', 'Trainig_set object (6)', 1, '[{\"added\": {}}]', 9, 1),
(15, '2020-06-21 07:00:26.662493', '7', 'Trainig_set object (7)', 1, '[{\"added\": {}}]', 9, 1),
(16, '2020-06-21 07:00:41.197321', '8', 'Trainig_set object (8)', 1, '[{\"added\": {}}]', 9, 1),
(17, '2020-06-21 07:00:53.913515', '9', 'Trainig_set object (9)', 1, '[{\"added\": {}}]', 9, 1),
(18, '2020-06-21 07:01:11.419654', '10', 'Trainig_set object (10)', 1, '[{\"added\": {}}]', 9, 1),
(19, '2020-06-21 07:01:28.428205', '11', 'Trainig_set object (11)', 1, '[{\"added\": {}}]', 9, 1),
(20, '2020-06-21 07:01:42.561523', '12', 'Trainig_set object (12)', 1, '[{\"added\": {}}]', 9, 1),
(21, '2020-06-21 07:01:56.588370', '13', 'Trainig_set object (13)', 1, '[{\"added\": {}}]', 9, 1),
(22, '2020-06-21 07:02:12.396687', '14', 'Trainig_set object (14)', 1, '[{\"added\": {}}]', 9, 1),
(23, '2020-06-21 07:02:25.828564', '15', 'Trainig_set object (15)', 1, '[{\"added\": {}}]', 9, 1),
(24, '2020-06-21 07:02:46.604468', '16', 'Trainig_set object (16)', 1, '[{\"added\": {}}]', 9, 1),
(25, '2020-06-21 07:03:01.814878', '17', 'Trainig_set object (17)', 1, '[{\"added\": {}}]', 9, 1),
(26, '2020-06-21 07:03:16.121071', '18', 'Trainig_set object (18)', 1, '[{\"added\": {}}]', 9, 1),
(27, '2020-06-21 07:03:29.985231', '19', 'Trainig_set object (19)', 1, '[{\"added\": {}}]', 9, 1),
(28, '2020-06-21 07:03:51.686667', '20', 'Trainig_set object (20)', 1, '[{\"added\": {}}]', 9, 1),
(29, '2020-06-21 07:04:03.083358', '21', 'Trainig_set object (21)', 1, '[{\"added\": {}}]', 9, 1),
(30, '2020-06-21 07:04:18.557044', '22', 'Trainig_set object (22)', 1, '[{\"added\": {}}]', 9, 1),
(31, '2020-06-21 07:04:32.585796', '23', 'Trainig_set object (23)', 1, '[{\"added\": {}}]', 9, 1),
(32, '2020-06-21 07:04:53.742892', '24', 'Trainig_set object (24)', 1, '[{\"added\": {}}]', 9, 1),
(33, '2020-06-21 07:05:07.972640', '25', 'Trainig_set object (25)', 1, '[{\"added\": {}}]', 9, 1),
(34, '2020-06-21 07:05:31.847521', '26', 'Trainig_set object (26)', 1, '[{\"added\": {}}]', 9, 1),
(35, '2020-06-21 07:05:44.724763', '27', 'Trainig_set object (27)', 1, '[{\"added\": {}}]', 9, 1),
(36, '2020-06-21 07:08:50.032325', '28', 'Trainig_set object (28)', 1, '[{\"added\": {}}]', 9, 1),
(37, '2020-06-21 07:09:05.088182', '29', 'Trainig_set object (29)', 1, '[{\"added\": {}}]', 9, 1),
(38, '2020-06-21 07:09:22.920644', '30', 'Trainig_set object (30)', 1, '[{\"added\": {}}]', 9, 1),
(39, '2020-06-21 07:09:34.611327', '31', 'Trainig_set object (31)', 1, '[{\"added\": {}}]', 9, 1),
(40, '2020-06-21 07:09:52.462665', '32', 'Trainig_set object (32)', 1, '[{\"added\": {}}]', 9, 1),
(41, '2020-06-21 07:10:01.295373', '32', 'Trainig_set object (32)', 2, '[{\"changed\": {\"fields\": [\"Intent\"]}}]', 9, 1),
(42, '2020-06-21 07:10:23.974937', '33', 'Trainig_set object (33)', 1, '[{\"added\": {}}]', 9, 1),
(43, '2020-06-21 07:10:36.501537', '34', 'Trainig_set object (34)', 1, '[{\"added\": {}}]', 9, 1),
(44, '2020-06-21 07:11:07.579193', '35', 'Trainig_set object (35)', 1, '[{\"added\": {}}]', 9, 1),
(45, '2020-06-21 07:11:28.478701', '36', 'Trainig_set object (36)', 1, '[{\"added\": {}}]', 9, 1),
(46, '2020-06-21 07:11:51.744075', '37', 'Trainig_set object (37)', 1, '[{\"added\": {}}]', 9, 1),
(47, '2020-06-21 07:12:03.896301', '38', 'Trainig_set object (38)', 1, '[{\"added\": {}}]', 9, 1),
(48, '2020-06-21 07:12:18.164079', '39', 'Trainig_set object (39)', 1, '[{\"added\": {}}]', 9, 1),
(49, '2020-06-21 07:12:29.776417', '40', 'Trainig_set object (40)', 1, '[{\"added\": {}}]', 9, 1),
(50, '2020-06-21 07:12:43.111259', '41', 'Trainig_set object (41)', 1, '[{\"added\": {}}]', 9, 1),
(51, '2020-06-21 07:12:55.132203', '42', 'Trainig_set object (42)', 1, '[{\"added\": {}}]', 9, 1),
(52, '2020-06-21 07:13:06.335895', '43', 'Trainig_set object (43)', 1, '[{\"added\": {}}]', 9, 1),
(53, '2020-06-21 07:13:17.144874', '44', 'Trainig_set object (44)', 1, '[{\"added\": {}}]', 9, 1),
(54, '2020-06-21 07:13:28.035390', '45', 'Trainig_set object (45)', 1, '[{\"added\": {}}]', 9, 1),
(55, '2020-06-21 07:13:44.409038', '46', 'Trainig_set object (46)', 1, '[{\"added\": {}}]', 9, 1),
(56, '2020-06-21 07:13:57.905288', '47', 'Trainig_set object (47)', 1, '[{\"added\": {}}]', 9, 1),
(57, '2020-06-21 07:14:11.968167', '48', 'Trainig_set object (48)', 1, '[{\"added\": {}}]', 9, 1),
(58, '2020-06-21 07:14:37.687762', '49', 'Trainig_set object (49)', 1, '[{\"added\": {}}]', 9, 1),
(59, '2020-06-21 07:14:55.391841', '50', 'Trainig_set object (50)', 1, '[{\"added\": {}}]', 9, 1),
(60, '2020-06-21 07:15:09.790898', '51', 'Trainig_set object (51)', 1, '[{\"added\": {}}]', 9, 1),
(61, '2020-06-21 07:15:22.514023', '52', 'Trainig_set object (52)', 1, '[{\"added\": {}}]', 9, 1),
(62, '2020-06-21 07:15:34.501687', '53', 'Trainig_set object (53)', 1, '[{\"added\": {}}]', 9, 1),
(63, '2020-06-21 07:15:48.801446', '54', 'Trainig_set object (54)', 1, '[{\"added\": {}}]', 9, 1),
(64, '2020-06-21 07:16:02.141780', '55', 'Trainig_set object (55)', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'predictor_app', 'chat'),
(8, 'predictor_app', 'intent'),
(9, 'predictor_app', 'trainig_set'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-21 06:32:08.985983'),
(2, 'auth', '0001_initial', '2020-06-21 06:32:12.510404'),
(3, 'admin', '0001_initial', '2020-06-21 06:32:35.513835'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-21 06:32:42.738775'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-21 06:32:42.817230'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-06-21 06:32:45.688540'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-06-21 06:32:48.349430'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-06-21 06:32:48.999538'),
(9, 'auth', '0004_alter_user_username_opts', '2020-06-21 06:32:49.079972'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-06-21 06:32:51.707728'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-06-21 06:32:52.097963'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-21 06:32:52.276603'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-06-21 06:32:52.620987'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-21 06:32:53.008697'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-06-21 06:32:53.221971'),
(16, 'auth', '0011_update_proxy_permissions', '2020-06-21 06:32:53.310121'),
(17, 'predictor_app', '0001_initial', '2020-06-21 06:32:55.985974'),
(18, 'sessions', '0001_initial', '2020-06-21 06:32:57.196477'),
(19, 'predictor_app', '0002_auto_20200621_0647', '2020-06-21 06:47:18.073466'),
(20, 'predictor_app', '0003_auto_20200621_0924', '2020-06-21 09:25:00.558067');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5io98gz1yr2m0ht5131i3bmzjxd9ipic', 'NzAwMGI1NTYwNzA4Y2JiMzhkOTI0M2JjNDg5YzFmMzFkOTNhMWNmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNzU3ODI3OTgwNjU0ZWFlZGY1ZGRlZWYwOWIxZmE1NjE4NWYwZTQyIn0=', '2020-07-05 06:39:58.050042');

-- --------------------------------------------------------

--
-- Table structure for table `predictor_app_chat`
--

CREATE TABLE `predictor_app_chat` (
  `id` int(11) NOT NULL,
  `office_id` varchar(120) NOT NULL,
  `officer_id` varchar(120) NOT NULL,
  `designation_id` varchar(120) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `predictor_app_chat`
--

INSERT INTO `predictor_app_chat` (`id`, `office_id`, `officer_id`, `designation_id`, `question`, `answer`, `created`) VALUES
(1, '123', '1233', 'asda', 'আইডি কেমনে রিকভার করব', 'যদি পাসোওয়ার্ড ভুলে যান তবে পাসোওর্ড রিসেট বাটনে ক্লিক করুন।আপনার প্রোফাইলে ব্যবহার করা ইমেইল আইডি এবং ইউজার আইডি দিয়ে পাসোওয়ার্ড রিকভার করতে পারবেন। পাসোয়ার্ড রিসেট> ইউজার আইডি > ইমেইল>অনুরোধ।', '2020-06-21 09:52:02.345246'),
(2, '123', '1233', 'sd', 'নথি লগইন কোথায় আছে', 'ই-ফাইল সিস্টেমে প্রাবেশ করার জন্য ব্রাউজােরর অ্যাড্রেস বারে www.nothi.gov.bd লিখে “Enter” বাটনে চাপ দিন।একটি লগইন পেইজ আসবে। ইউজার আইডি এবং পাসওয়ার্ড লিখে প্রবেশ বাটনে ক্লিক করলে যদি এস এস এল সংক্রান্ত পেইজ আসে সেখানে ADVANCED লেখাটি ক্লিক করুন।', '2020-06-21 09:58:41.048480'),
(3, '123', '1233', 'asda', 'আইডি কেমনে রিকভার করব', 'যদি পাসোওয়ার্ড ভুলে যান তবে পাসোওর্ড রিসেট বাটনে ক্লিক করুন।আপনার প্রোফাইলে ব্যবহার করা ইমেইল আইডি এবং ইউজার আইডি দিয়ে পাসোওয়ার্ড রিকভার করতে পারবেন। পাসোয়ার্ড রিসেট> ইউজার আইডি > ইমেইল>অনুরোধ।', '2020-06-21 09:59:30.475777');

-- --------------------------------------------------------

--
-- Table structure for table `predictor_app_intent`
--

CREATE TABLE `predictor_app_intent` (
  `id` int(11) NOT NULL,
  `intent` varchar(120) NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `predictor_app_intent`
--

INSERT INTO `predictor_app_intent` (`id`, `intent`, `answer`) VALUES
(1, 'login', 'ই-ফাইল সিস্টেমে প্রাবেশ করার জন্য ব্রাউজােরর অ্যাড্রেস বারে www.nothi.gov.bd লিখে “Enter” বাটনে চাপ দিন।একটি লগইন পেইজ আসবে। ইউজার আইডি এবং পাসওয়ার্ড লিখে প্রবেশ বাটনে ক্লিক করলে যদি এস এস এল সংক্রান্ত পেইজ আসে সেখানে ADVANCED লেখাটি ক্লিক করুন।'),
(2, 'login_error', 'আপনার ইউজার আইডি অথবা পাসোয়ার্ড ভুল। অনুগ্রহ করে সঠিক ইউজার আইডি এবং পাসোওয়ার্ড দিয়ে পুনরায় চেষ্টা করুন'),
(3, 'password_reset', 'যদি পাসোওয়ার্ড ভুলে যান তবে পাসোওর্ড রিসেট বাটনে ক্লিক করুন।আপনার প্রোফাইলে ব্যবহার করা ইমেইল আইডি এবং ইউজার আইডি দিয়ে পাসোওয়ার্ড রিকভার করতে পারবেন। পাসোয়ার্ড রিসেট> ইউজার আইডি > ইমেইল>অনুরোধ।'),
(4, 'nothi_help', 'আপনি ২ উপায়  নথি গ্রুপ এর সাথে যোগাযোগ করতে পারেন।ফেসবুক গ্রুপঃ নথি(অফিসিয়াল গ্রুপ) মোবাইলঃ হেল্পডেস্ক এ দেখানো নাম্বার এ ফোন দিন। নথি সংক্রান্ত টিউটোরিয়াল দেখতে ভিডিও টিউটোরিয়াল বাটনে ক্লিক করুন।'),
(5, 'dak', 'আপনি নথি ব্যবস্থাপনা সিস্টেমে প্রবেশ করলে ডাক ড্যাশবোর্ড দেখতে পাবেন অথবা উপরের ডান দিকের ম্যেনু থেকে ডাকে ক্লিক করুন অথবা আপনার বামপাশের প্যানেল এর ডাক অপশন এ ক্লিক করুণ ।'),
(6, 'agoto_dak', 'আপনার কাছে আসা ডাক দেখতে চাইলে নথি ড্যাশবোর্ড এর উপরে আগত ডাক এ ক্লিক করুণ। আগত ডাকে আপনি সকল আগত ডাকের তালিকা দেখতে পাবেন।ডাক বাটনের সংখ্যা দিয়ে আগত ডাকের সংখ্যা বুঝানো হয়। আপনি যেসব ডাকের মূল প্রাপক সেগুলো চেক ইনবক্স এ দেখতে পাবেন।'),
(7, 'sent_dak', 'বাম পাশের মেন্যু থেকে ডাকে ক্লিক করে ডাক ড্যাশবোর্ড এ আসুন।সেখানে প্রেরিত ডাক অপশনটি দেখা যাবে। আপনার প্রেরণ করা ডাকটি যদি প্রাপকে দেখে না থেকন তবে আপন্নই ডাকটি ফেরত আন্তে পারবেন।ডাক ফেরত আনার জন্য ডাক এর বিস্তারিত পেইজ এ গিয়ে ডাক ফেরত আনার বাটনে ক্লিক করুণ। তবে তা রাত ১২।০০ টা এর আগে হতে হবে'),
(8, 'dak_send', 'আগত ডাকের তালিকা থেকে ডাক প্রেরণ করা যায়। ডাক প্রেরণের জন্য এই লিংক এর নির্দেশনা অনুসরণ করার জন্য অনরোধ করা যাচ্ছে । https://nothi.gov.bd/showUserManualList');

-- --------------------------------------------------------

--
-- Table structure for table `predictor_app_trainig_set`
--

CREATE TABLE `predictor_app_trainig_set` (
  `id` int(11) NOT NULL,
  `question` varchar(120) NOT NULL,
  `intent` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `predictor_app_chat`
--
ALTER TABLE `predictor_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `predictor_app_intent`
--
ALTER TABLE `predictor_app_intent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `predictor_app_intent_intent_41c3cbe6_uniq` (`intent`);

--
-- Indexes for table `predictor_app_trainig_set`
--
ALTER TABLE `predictor_app_trainig_set`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `predictor_app_chat`
--
ALTER TABLE `predictor_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `predictor_app_intent`
--
ALTER TABLE `predictor_app_intent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `predictor_app_trainig_set`
--
ALTER TABLE `predictor_app_trainig_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
