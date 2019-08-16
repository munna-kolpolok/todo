-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2018 at 09:04 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raberp`
--

-- --------------------------------------------------------

--
-- Table structure for table `academy_courses`
--

CREATE TABLE `academy_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `academy_course_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academy_courses`
--

INSERT INTO `academy_courses` (`id`, `deleted_at`, `created_at`, `updated_at`, `academy_course_name`) VALUES
(1, NULL, '2017-04-19 11:17:12', '2017-04-19 11:21:12', 'BCS 14');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `pres_div` int(10) DEFAULT NULL,
  `pres_dist` int(10) UNSIGNED DEFAULT '1',
  `pres_upzila` int(10) DEFAULT NULL,
  `pres_road` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perm_div` int(10) DEFAULT NULL,
  `perm_dist` int(10) DEFAULT NULL,
  `perm_upzila` int(10) DEFAULT NULL,
  `perm_road` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pres_house` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perm_house` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pres_village` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `perm_village` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pres_postofc` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `perm_postofc` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `pres_div`, `pres_dist`, `pres_upzila`, `pres_road`, `perm_div`, `perm_dist`, `perm_upzila`, `perm_road`, `pres_house`, `perm_house`, `pres_village`, `perm_village`, `pres_postofc`, `perm_postofc`) VALUES
(1, NULL, '2017-05-25 06:16:24', '2017-05-25 06:16:24', 2, 1, 7, 151, 'Road-05', 2, 27, 56, 'Road-2', '678/7', '166', 'Canttonment', 'Nurpur', '1206', '3305'),
(2, NULL, '2018-01-03 05:37:56', '2018-01-03 05:37:56', 10151, NULL, NULL, NULL, NULL, 7, 61, 453, '5', NULL, '33', 'Shankarpur p', 'Shankarpur', 'Biral p', 'Biral'),
(3, NULL, '2018-07-04 04:10:12', '2018-07-04 04:10:12', 10160, 7, 59, 466, NULL, 1, 7, 145, '18', NULL, '39', 'Barbandha', 'Nikunja #02', 'Jadur Char 5640', 'Khilkhet');

-- --------------------------------------------------------

--
-- Table structure for table `assign_store_items`
--

CREATE TABLE `assign_store_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_cat_id` int(10) UNSIGNED NOT NULL COMMENT 'item_cat_id and org_store_id is unique',
  `org_store_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assign_store_items`
--

INSERT INTO `assign_store_items` (`id`, `deleted_at`, `created_at`, `updated_at`, `item_cat_id`, `org_store_id`) VALUES
(1, '2017-04-12 10:31:45', '2017-04-12 10:31:45', '2017-04-12 10:31:45', 1, 9),
(2, '2017-08-21 06:00:22', '2017-04-12 12:38:36', '2017-08-21 06:00:22', 3, 2),
(3, '2017-08-21 06:05:03', '2017-04-12 12:42:07', '2017-04-13 06:10:07', 1, 9),
(4, NULL, '2017-04-24 12:04:05', '2017-04-24 12:04:05', 1, 6),
(5, NULL, '2017-04-30 10:41:19', '2017-08-21 06:03:46', 6, 5),
(6, '2017-08-21 06:09:01', '2017-07-29 04:57:29', '2017-08-21 06:09:01', 3, 1),
(7, NULL, '2017-08-21 06:09:49', '2017-08-21 06:09:49', 1, 9),
(8, NULL, '2017-08-22 08:37:44', '2017-08-22 08:37:44', 3, 2),
(9, NULL, '2018-05-22 06:17:10', '2018-05-22 06:17:10', 7, 11),
(10, NULL, '2018-06-02 08:21:39', '2018-06-02 08:21:39', 7, 12),
(11, NULL, '2018-06-02 08:21:53', '2018-06-02 08:21:53', 7, 13),
(12, NULL, '2018-07-22 12:11:27', '2018-07-22 12:11:27', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `attendence_statuses`
--

CREATE TABLE `attendence_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attend_status` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `as_short_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendence_statuses`
--

INSERT INTO `attendence_statuses` (`id`, `deleted_at`, `created_at`, `updated_at`, `attend_status`, `as_short_code`) VALUES
(1, NULL, '2017-04-02 08:23:42', '2017-04-02 08:23:42', 'Present', ''),
(2, NULL, '2017-04-02 08:23:54', '2017-04-02 08:23:54', 'Absent', ''),
(3, NULL, '2017-04-02 08:24:10', '2017-04-02 08:24:10', 'Delay', ''),
(4, NULL, '2017-04-02 08:26:59', '2017-04-02 08:26:59', 'Leave', ''),
(5, NULL, '2017-04-02 08:27:23', '2017-04-02 08:27:23', 'Movement', ''),
(6, NULL, '2017-10-25 05:56:07', '2017-10-25 05:56:07', 'Training', 'Training'),
(7, NULL, '2017-10-25 05:56:27', '2017-10-25 05:56:27', 'Mission', 'Mission'),
(8, NULL, '2017-10-26 05:22:21', '2017-10-26 05:22:21', 'Exam', 'CC'),
(9, NULL, '2017-10-28 06:55:22', '2017-10-28 06:55:22', 'Hospital', '');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `award_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `award_date` date NOT NULL,
  `award_authority` text COLLATE utf8_unicode_ci NOT NULL,
  `award_detail` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `award_name`, `award_date`, `award_authority`, `award_detail`) VALUES
(1, NULL, '2017-05-25 06:38:55', '2017-05-25 06:38:55', 2, 'Award from Army', '2017-05-29', 'Authority', 'Details'),
(2, NULL, '2017-05-25 06:40:50', '2017-05-25 06:40:50', 2, 'sadf', '2017-05-25', 'sadf', NULL),
(3, NULL, '2017-05-25 06:43:32', '2017-05-25 06:43:32', 2, 'sf', '2017-05-25', 'sdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_short_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_address` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_cell_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `deleted_at`, `created_at`, `updated_at`, `bank_name`, `bank_short_name`, `bank_address`, `bank_cell_no`, `bank_mobile`, `bank_email`, `bank_website`) VALUES
(1, NULL, '2017-03-11 10:50:08', '2017-03-11 10:50:08', 'Trust Bank Ltd.', 'TBL', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bank_acc_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_acc_no` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bank_branch` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `bank_branch_address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `bank_acc_name`, `bank_acc_no`, `bank_id`, `bank_branch`, `bank_branch_address`) VALUES
(1, NULL, '2017-05-25 06:41:16', '2017-05-25 06:41:16', 2, 'Salary Account', 'TB-22020', 1, 'Banani', 'Banani');

-- --------------------------------------------------------

--
-- Table structure for table `bank_branches`
--

CREATE TABLE `bank_branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_branch_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bank_branch_address` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_branch_cell` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_branch_mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_branch_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `basic_informations`
--

CREATE TABLE `basic_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_id` int(10) NOT NULL COMMENT 'Foreign Key: employees_info.emp_id',
  `bn_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1 - Muslim, 2 - Hindu, 3 - Christian, 4 - Buddhist, 5 - Others',
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1 - Male, 2 - Female',
  `marital_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `birth_place` int(10) UNSIGNED DEFAULT NULL COMMENT 'District',
  `height` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `national_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_card_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `punch_card_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driving_license` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_join_date` date DEFAULT NULL,
  `hoby` text COLLATE utf8_unicode_ci,
  `photo` int(11) DEFAULT NULL,
  `blood_group` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_ofc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_home` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cell_ofc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cell_personal_1` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cell_personal_2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_ofc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_personal` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tribal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freedom_fighter` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `fax_home` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_ofc` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pabx` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `academy_course_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `basic_informations`
--

INSERT INTO `basic_informations` (`id`, `emp_id`, `bn_name`, `nationality`, `religion`, `gender`, `marital_status`, `dob`, `birth_place`, `height`, `weight`, `national_id`, `passport_no`, `id_card_no`, `punch_card_no`, `driving_license`, `job_join_date`, `hoby`, `photo`, `blood_group`, `tel_ofc`, `tel_home`, `cell_ofc`, `cell_personal_1`, `cell_personal_2`, `email_ofc`, `email_personal`, `tribal`, `freedom_fighter`, `created_at`, `updated_at`, `deleted_at`, `fax_home`, `fax_ofc`, `pabx`, `academy_course_id`) VALUES
(1, 2, NULL, 'Bangladeshi', 'Islam', 'Male', 'Unmarried', '1989-10-25', 10, '5\'8\'\'', '70', 'NID-147852369852', 'P-951357456', 'ID-19327', 'PC-63741', 'D-123456789', '2017-05-25', NULL, 9, 'O+', '08092103012', '08092103012', '01927322355', '01927322355', '01927322355', 'pantho122@gmail.com', 'pantho122@gmail.com', 'No', 'No', '2017-05-25 12:09:17', '2017-05-25 12:09:17', NULL, NULL, NULL, NULL, 1),
(2, 10151, NULL, NULL, 'Islam', 'Male', 'Married', '2001-11-30', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2001-11-30', NULL, 14, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', '2017-07-01 14:36:43', '2017-09-28 15:51:54', NULL, NULL, NULL, NULL, NULL),
(3, 10160, NULL, 'Bangladeshi', 'Islam', 'Male', 'Married', '1989-03-21', 59, '6.5', '63', '1478523698741', '147852369852', '1452362', '3652145236', NULL, '2018-07-04', NULL, 0, 'O+', '145236', '8522365', '01728581568', NULL, NULL, 'emdad@gmail.com', 'Emdadaul@yahoo.com', 'No', 'No', '2018-07-04 10:08:37', '2018-07-04 10:08:37', NULL, NULL, '8523698741', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `battalions`
--

CREATE TABLE `battalions` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `battalion_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `battalion_address` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `working_area` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `battalion_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `battalion_mobile_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `battalion_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `battalion_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `battalions`
--

INSERT INTO `battalions` (`id`, `deleted_at`, `created_at`, `updated_at`, `battalion_name`, `battalion_address`, `working_area`, `battalion_phone_no`, `battalion_mobile_no`, `battalion_fax`, `battalion_email`) VALUES
(1, NULL, '2017-03-02 03:21:47', '2017-05-13 10:34:05', 'RAB HQ', 'Kurmitola, Dhaka', 'Uttara, Dhaka', NULL, '02544', NULL, NULL),
(2, NULL, '2017-03-02 03:35:27', '2017-07-22 04:39:49', 'RAB 1', 'Dhaka', NULL, NULL, NULL, NULL, NULL),
(3, NULL, '2017-03-02 04:16:36', '2017-07-22 04:39:59', 'RAB 2', 'Dhaka', NULL, NULL, NULL, NULL, NULL),
(4, NULL, '2017-03-04 22:18:25', '2017-07-22 04:40:15', 'RAB 3', 'Dhaka', NULL, NULL, NULL, NULL, NULL),
(5, NULL, '2017-03-06 00:08:08', '2017-07-22 04:40:37', 'RAB 4', 'Dhaka', NULL, NULL, NULL, NULL, NULL),
(6, NULL, '2017-03-06 01:02:01', '2017-07-22 04:40:57', 'RAB 5', 'Rajshahi', NULL, NULL, NULL, NULL, NULL),
(7, NULL, '2017-03-06 03:31:12', '2017-07-22 04:41:09', 'RAB 6', 'Khulna', NULL, NULL, NULL, NULL, NULL),
(8, NULL, '2017-03-06 05:30:03', '2017-07-22 04:41:25', 'RAB 7', 'Chittagong', NULL, NULL, NULL, NULL, NULL),
(9, NULL, '2017-03-13 06:31:12', '2017-07-22 04:41:40', 'RAB 8', 'Barishal', NULL, NULL, NULL, NULL, NULL),
(10, NULL, '2017-03-18 04:25:45', '2017-07-22 04:41:50', 'RAB 9', 'Sylhet', NULL, NULL, NULL, NULL, NULL),
(11, NULL, '2017-04-15 03:17:05', '2017-07-22 04:41:59', 'RAB 10', 'Dhaka', NULL, NULL, NULL, NULL, NULL),
(12, NULL, '2017-04-15 03:17:16', '2017-07-22 04:42:19', 'RAB 11', 'Narayanganj', NULL, NULL, NULL, NULL, NULL),
(13, NULL, '2017-04-15 03:17:26', '2017-07-22 04:42:31', 'RAB 12', 'Sirajganj', NULL, NULL, NULL, NULL, NULL),
(14, NULL, '2017-04-15 03:21:12', '2017-07-22 04:42:42', 'RAB 13', 'Rangpur', NULL, NULL, NULL, NULL, NULL),
(15, NULL, '2017-04-15 03:21:19', '2017-07-22 04:42:58', 'RAB 14', 'Mymensing', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `battery_records`
--

CREATE TABLE `battery_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_record_id` int(10) UNSIGNED NOT NULL,
  `battery_no` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `made_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `volt` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `power` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plate` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `change_date` date DEFAULT NULL,
  `change_reason` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donations`
--

CREATE TABLE `blood_donations` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `donate_date` date NOT NULL DEFAULT '1970-01-01',
  `recipient_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `donate_location` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_donations`
--

INSERT INTO `blood_donations` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `donate_date`, `recipient_name`, `donate_location`) VALUES
(1, NULL, '2017-05-25 06:31:30', '2017-05-25 06:31:30', 2, '2017-05-11', 'Nazmul Hasan', 'Dhanmondi'),
(2, NULL, '2017-07-08 04:36:20', '2017-07-08 04:36:20', 10152, '2017-07-08', 'Test', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `battalion_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `wing_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_phone_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_mobile_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_address` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_working_area` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `deleted_at`, `created_at`, `updated_at`, `battalion_id`, `wing_id`, `branch_name`, `branch_phone_no`, `branch_mobile_no`, `branch_fax`, `branch_email`, `branch_address`, `branch_working_area`) VALUES
(1, NULL, '2017-03-03 21:26:07', '2017-04-19 12:24:39', 1, 1, 'Admin General', NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '2017-04-06 05:26:08', '2017-04-06 05:26:08', 1, NULL, 'DG Office', '017777', '017777', '0288858', 'dg@rab.gov.bd', 'RAB HQ', 'RAB HQ'),
(4, NULL, '2017-04-15 10:07:16', '2017-04-15 10:07:16', 1, NULL, 'Additional DG (OPS)', NULL, NULL, NULL, NULL, 'RAB HQ', 'RAB HQ'),
(5, NULL, '2017-04-15 10:07:42', '2017-04-15 10:07:42', 1, NULL, 'Additional DG (Admin)', NULL, NULL, NULL, NULL, 'RAB HQ', NULL),
(6, NULL, '2017-04-19 12:25:01', '2017-04-19 12:25:01', 1, 1, 'Head Quarter', NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, '2017-04-19 12:25:42', '2017-04-19 12:25:42', 1, 1, 'Finance', NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '2017-04-19 12:47:12', '2017-04-19 12:47:12', 1, 6, 'Intelligence and Counter Intelligence', NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, '2017-04-19 12:49:02', '2017-04-19 12:49:02', 1, 6, 'Interrogation', NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, '2017-04-19 12:50:05', '2017-04-19 12:50:05', 1, 6, 'Information and Monitoring', NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, '2017-04-19 12:52:22', '2017-04-19 12:52:22', 1, 6, 'Data/Record', NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, '2017-04-19 12:55:49', '2017-04-19 12:55:49', 1, 6, 'Propaganda and Psychological', NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, '2017-04-19 12:57:45', '2017-04-19 12:57:45', 1, 2, 'Communication', NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, '2017-04-19 12:58:16', '2017-04-19 12:58:16', 1, 2, 'MIS', NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2017-04-19 13:16:01', '2017-04-19 13:10:34', '2017-04-19 13:16:01', 1, 1, 'Admin Ganar', NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2017-04-19 13:21:16', '2017-04-19 13:13:36', '2017-04-19 13:21:16', 1, 1, 'Admi General ', NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, '2017-04-19 13:14:57', '2017-04-19 13:14:57', 1, 1, 'Headquarter ', NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, '2017-04-19 13:17:52', '2017-04-19 13:17:52', 1, 1, 'Central Workshop ', NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, '2017-04-19 14:06:28', '2017-04-22 04:43:05', 1, 15, 'Wing  Headquarter ', NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, '2017-04-19 14:06:43', '2017-04-19 14:06:43', 1, 5, 'Central Operation', NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, '2017-04-19 14:07:49', '2017-04-19 14:07:49', 1, 5, 'Planning and Monitoring', NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, '2017-04-19 14:09:14', '2017-04-19 14:09:14', 1, 5, 'Dog Squad', NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, '2017-04-19 14:10:06', '2017-04-19 14:10:06', 1, 5, 'Bomb disposal', NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, '2017-04-19 14:10:52', '2017-04-19 14:10:52', 1, 5, 'Transport', NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2017-08-12 06:44:45', '2017-05-23 06:45:42', '2017-08-12 06:44:45', 1, NULL, 'Admin General', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bn_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `deleted_at`, `created_at`, `updated_at`, `brand_name`, `bn_name`) VALUES
(1, NULL, '2017-07-30 10:18:11', '2017-07-30 10:18:11', 'HP', NULL),
(2, NULL, '2017-07-30 10:18:21', '2017-07-30 10:18:21', 'Samsung', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificate_courses`
--

CREATE TABLE `certificate_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `course_title` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `course_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approval_authority` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `course_duration` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `certificate_courses`
--

INSERT INTO `certificate_courses` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `course_title`, `course_type`, `approval_authority`, `date_from`, `date_to`, `course_duration`, `vendor_name`, `result`, `remarks`) VALUES
(1, NULL, '2017-05-25 06:25:05', '2017-05-25 06:25:05', 2, 'Defence course', 'Defence', 'Defense Ministry', '2017-05-02', '2017-05-06', '4', 'Defense Exam', 'Good', NULL),
(3, NULL, '2017-10-28 06:45:39', '2017-10-28 06:47:18', 10143, 'CI Course', 'Civil', NULL, '2017-10-29', '2017-11-01', NULL, NULL, NULL, NULL),
(4, NULL, '2017-10-28 10:30:12', '2017-10-28 10:41:24', 10151, 'Trainning', 'Defence', NULL, '2017-10-29', '2017-11-03', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chronic_diseases`
--

CREATE TABLE `chronic_diseases` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `chronic_disease` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cd_treatment` text COLLATE utf8_unicode_ci NOT NULL,
  `cd_remarks` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chronic_diseases`
--

INSERT INTO `chronic_diseases` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `chronic_disease`, `cd_treatment`, `cd_remarks`) VALUES
(1, NULL, '2017-05-25 06:33:17', '2017-05-25 06:33:17', 2, 'Cold Fever', 'Treatment', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cores`
--

CREATE TABLE `cores` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mother_force_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `core_code` varchar(253) COLLATE utf8_unicode_ci DEFAULT NULL,
  `core_location` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cores`
--

INSERT INTO `cores` (`id`, `deleted_at`, `created_at`, `updated_at`, `mother_force_id`, `core_name`, `core_code`, `core_location`) VALUES
(1, NULL, '2017-03-02 04:51:37', '2017-05-10 10:53:25', 1, 'Armard', '10', 'বগুড়া'),
(2, NULL, '2017-03-11 09:37:29', '2017-05-10 10:52:52', 1, 'Artilary', '12', 'হালিশহর, চট্টগ্রাম'),
(3, NULL, '2017-03-13 04:49:16', '2017-04-19 10:50:22', 1, 'Engineer', '14', ''),
(4, NULL, '2017-04-19 12:43:02', '2017-05-10 11:05:03', 1, 'Signal', '16', 'যশোর সেনানিবাস'),
(5, NULL, '2017-04-19 12:43:23', '2017-04-19 12:43:23', 1, 'EBRC', '40', ''),
(6, NULL, '2017-04-19 12:43:44', '2017-04-19 12:43:58', 1, 'Bir', '45/40', ''),
(7, NULL, '2017-04-19 12:44:16', '2017-04-19 12:44:16', 1, 'ASC', '18', ''),
(8, NULL, '2017-04-19 12:44:31', '2017-04-19 12:44:31', 1, 'AMC', '20', ''),
(9, NULL, '2017-04-19 12:44:56', '2017-04-19 12:44:56', 1, 'Ordnance', '22', ''),
(10, NULL, '2017-04-19 12:45:17', '2017-04-19 12:45:17', 1, 'EME', '24', ''),
(11, NULL, '2017-04-19 12:45:42', '2017-04-19 12:45:42', 1, 'ACC', '26', ''),
(12, NULL, '2017-04-19 12:46:10', '2017-04-19 12:46:10', 1, 'RV&FC', '28', ''),
(13, NULL, '2017-04-19 12:46:18', '2017-04-19 12:46:18', 1, 'AEC', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `deleted_at`, `created_at`, `updated_at`, `country_name`, `short_name`) VALUES
(1, NULL, '2017-03-11 10:43:33', '2017-03-11 10:43:33', 'Afghanistan', 'Ag'),
(2, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Albania', NULL),
(3, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Algeria', NULL),
(4, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Andorra', NULL),
(5, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Angola', NULL),
(6, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Anguilla', NULL),
(7, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Antarctica', NULL),
(8, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Antigua and Barbuda', NULL),
(9, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Argentina', NULL),
(10, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Armenia', NULL),
(11, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Aruba', NULL),
(12, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Ascension Island', NULL),
(13, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Australia', NULL),
(14, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Austria', NULL),
(15, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Azerbaijan', NULL),
(16, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Bahamas', NULL),
(17, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Bahrain', NULL),
(18, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Bangladesh', NULL),
(19, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Barbados', NULL),
(20, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Belarus', NULL),
(21, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Belgium', NULL),
(22, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Belize', NULL),
(23, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Benin', NULL),
(24, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Bermuda', NULL),
(25, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Bhutan', NULL),
(26, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Bolivia', NULL),
(27, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Bophuthatswana', NULL),
(28, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Bosnia-Herzegovina', NULL),
(29, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Botswana', NULL),
(30, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Bouvet Island', NULL),
(31, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Brazil', NULL),
(32, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'British Indian Ocean', NULL),
(33, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'British Virgin Islands', NULL),
(34, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Brunei Darussalam', NULL),
(35, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Bulgaria', NULL),
(36, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Burkina Faso', NULL),
(37, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Burundi', NULL),
(38, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Cambodia', NULL),
(39, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Cameroon', NULL),
(40, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Canada', NULL),
(41, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Cape Verde Island', NULL),
(42, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Cayman Islands', NULL),
(43, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Central Africa', NULL),
(44, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Chad', NULL),
(45, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Channel Islands', NULL),
(46, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Chile', NULL),
(47, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'China, Peoples Republic', NULL),
(48, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Christmas Island', NULL),
(49, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Cocos (Keeling) Islands', NULL),
(50, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Colombia', NULL),
(51, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Comoros Islands', NULL),
(52, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Congo', NULL),
(53, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Cook Islands', NULL),
(54, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Costa Rica', NULL),
(55, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Croatia', NULL),
(56, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Cuba', NULL),
(57, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Cyprus', NULL),
(58, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Czech Republic', NULL),
(59, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Denmark', NULL),
(60, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Djibouti', NULL),
(61, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Dominica', NULL),
(62, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Dominican Republic', NULL),
(63, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Easter Island', NULL),
(64, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Ecuador', NULL),
(65, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Egypt', NULL),
(66, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'El Salvador', NULL),
(67, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'England', NULL),
(68, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Equatorial Guinea', NULL),
(69, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Estonia', NULL),
(70, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Ethiopia', NULL),
(71, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Faeroe Islands', NULL),
(72, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Falkland Islands', NULL),
(73, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Fiji', NULL),
(74, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Finland', NULL),
(75, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'France', NULL),
(76, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'French Guyana', NULL),
(77, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'French Polynesia', NULL),
(78, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Gabon', NULL),
(79, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Gambia', NULL),
(80, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Georgia Republic', NULL),
(81, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Germany', NULL),
(82, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Gibraltar', NULL),
(83, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Greece', NULL),
(84, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Greenland', NULL),
(85, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Grenada', NULL),
(86, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Guadeloupe (French)', NULL),
(87, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Guatemala', NULL),
(88, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Guernsey Island', NULL),
(89, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Guinea', NULL),
(90, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Guinea Bissau', NULL),
(91, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Guyana', NULL),
(92, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Haiti', NULL),
(93, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Heard and McDonald Isls', NULL),
(94, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Honduras', NULL),
(95, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Hong Kong', NULL),
(96, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Hungary', NULL),
(97, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Iceland', NULL),
(98, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'India', NULL),
(99, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Indonesia', NULL),
(100, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Iran', NULL),
(101, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Iraq', NULL),
(102, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Ireland', NULL),
(103, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Isle of Man', NULL),
(104, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Israel', NULL),
(105, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Italy', NULL),
(106, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Ivory Coast', NULL),
(107, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Jamaica', NULL),
(108, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Japan', NULL),
(109, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Jersey Island', NULL),
(110, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Jordan', NULL),
(111, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Kazakhstan', NULL),
(112, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Kenya', NULL),
(113, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Kiribati', NULL),
(114, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Korea', NULL),
(115, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Kuwait', NULL),
(116, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Laos', NULL),
(117, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Latvia', NULL),
(118, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Lebanon', NULL),
(119, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Lesotho', NULL),
(120, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Liberia', NULL),
(121, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Libya', NULL),
(122, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Liechtenstein', NULL),
(123, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Lithuania', NULL),
(124, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Luxembourg', NULL),
(125, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Macao', NULL),
(126, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Macedonia', NULL),
(127, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Madagascar', NULL),
(128, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Malawi', NULL),
(129, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Malaysia', NULL),
(130, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Maldives', NULL),
(131, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Mali', NULL),
(132, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Malta', NULL),
(133, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Martinique (French)', NULL),
(134, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Mauritania', NULL),
(135, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Mauritius', NULL),
(136, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Mayotte', NULL),
(137, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Mexico', NULL),
(138, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Micronesia', NULL),
(139, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Moldavia', NULL),
(140, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Monaco', NULL),
(141, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Mongolia', NULL),
(142, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Montenegro', NULL),
(143, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Montserrat', NULL),
(144, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Morocco', NULL),
(145, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Mozambique', NULL),
(146, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Myanmar', NULL),
(147, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Namibia', NULL),
(148, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Nauru', NULL),
(149, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Nepal', NULL),
(150, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Netherlands', NULL),
(151, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Netherlands Antilles', NULL),
(152, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'New Caledonia (French)', NULL),
(153, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'New Zealand', NULL),
(154, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Nicaragua', NULL),
(155, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Niger', NULL),
(156, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Niue', NULL),
(157, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Norfolk Island', NULL),
(158, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'North Korea', NULL),
(159, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Northern Ireland', NULL),
(160, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Norway', NULL),
(161, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Oman', NULL),
(162, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Pakistan', NULL),
(163, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Panama', NULL),
(164, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Papua New Guinea', NULL),
(165, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Paraguay', NULL),
(166, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Peru', NULL),
(167, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Philippines', NULL),
(168, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Pitcairn Island', NULL),
(169, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Poland', NULL),
(170, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Polynesia (French)', NULL),
(171, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Portugal', NULL),
(172, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Qatar', NULL),
(173, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Reunion Island', NULL),
(174, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Romania', NULL),
(175, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Russia', NULL),
(176, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Rwanda', NULL),
(177, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'S.Georgia Sandwich Isls', NULL),
(178, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'San Marino', NULL),
(179, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Sao Tome, Principe', NULL),
(180, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Saudi Arabia', NULL),
(181, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Scotland', NULL),
(182, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Senegal', NULL),
(183, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Serbia', NULL),
(184, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Seychelles', NULL),
(185, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Shetland', NULL),
(186, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Sierra Leone', NULL),
(187, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Singapore', NULL),
(188, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Slovak Republic', NULL),
(189, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Slovenia', NULL),
(190, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Solomon Islands', NULL),
(191, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Somalia', NULL),
(192, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'South Africa', NULL),
(193, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'South Korea', NULL),
(194, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Spain', NULL),
(195, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Sri Lanka', NULL),
(196, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'St. Helena', NULL),
(197, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'St. Kitts Nevis Anguilla', NULL),
(198, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'St. Lucia', NULL),
(199, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'St. Martins', NULL),
(200, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'St. Pierre Miquelon', NULL),
(201, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'St. Vincent Grenadines', NULL),
(202, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Sudan', NULL),
(203, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Suriname', NULL),
(204, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Svalbard Jan Mayen', NULL),
(205, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Swaziland', NULL),
(206, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Sweden', NULL),
(207, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Switzerland', NULL),
(208, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Syria', NULL),
(209, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Tahiti', NULL),
(210, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Taiwan', NULL),
(211, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Tajikistan', NULL),
(212, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Tanzania', NULL),
(213, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Thailand', NULL),
(214, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Togo', NULL),
(215, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Tokelau', NULL),
(216, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Tonga', NULL),
(217, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Trinidad and Tobago', NULL),
(218, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Tunisia', NULL),
(219, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Turkmenistan', NULL),
(220, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Turks and Caicos Isls', NULL),
(221, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Turosko', NULL),
(222, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Tuvalu', NULL),
(223, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Uganda', NULL),
(224, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Ukraine', NULL),
(225, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'United Arab Emirates', NULL),
(226, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'United States of America', NULL),
(227, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Uruguay', NULL),
(228, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Uzbekistan', NULL),
(229, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Vanuatu', NULL),
(230, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Vatican City State', NULL),
(231, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Venezuela', NULL),
(232, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Vietnam', NULL),
(233, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Virgin Islands (Brit)', NULL),
(234, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Wales', NULL),
(235, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Wallis Futuna Islands', NULL),
(236, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Western Sahara', NULL),
(237, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Western Samoa', NULL),
(238, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Yemen', NULL),
(239, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Yugoslavia', NULL),
(240, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Zaire', NULL),
(241, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Zambia', NULL),
(242, NULL, '2017-04-27 08:22:55', '2017-04-27 08:22:55', 'Zimbabwe', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_short_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `course_full_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `deleted_at`, `created_at`, `updated_at`, `course_short_name`, `course_full_name`) VALUES
(1, NULL, '2017-04-01 06:50:57', '2017-04-22 04:29:19', 'S.S.C', 'Secondary School certificate'),
(2, NULL, '2017-04-01 06:51:10', '2017-04-22 04:28:56', 'H.S.C', 'Higher Secondary School Certificate'),
(3, NULL, '2017-04-01 06:51:24', '2017-04-22 04:35:09', 'B.Sc', 'Bachelor of Science'),
(4, NULL, '2017-04-22 04:30:35', '2017-04-22 04:31:26', 'B.B.A', 'Bachelor of Business Administrator'),
(5, NULL, '2017-04-22 04:31:56', '2017-04-22 04:31:56', 'S.S.C Vocational', 'S.S.C Vocational'),
(6, NULL, '2017-04-22 04:32:26', '2017-04-22 04:32:26', 'B.S.S', 'Bachelor of Social Science'),
(7, NULL, '2017-04-22 04:33:22', '2017-04-22 04:33:22', 'Dakhil', 'Dakhil'),
(8, NULL, '2017-04-22 04:34:17', '2017-04-22 04:34:17', 'Diploma in Engg.', 'Diploma In Engineering'),
(9, NULL, '2017-04-22 04:34:56', '2017-04-22 04:34:56', 'B.Sc in Engg', 'B.Sc in Engineering'),
(10, NULL, '2017-04-22 04:35:50', '2017-04-22 04:37:52', 'M.B.A', 'Master of Business Administration'),
(11, NULL, '2017-04-22 04:37:20', '2017-04-22 04:37:20', 'M.Sc', 'Master of Science'),
(12, NULL, '2017-04-22 04:38:13', '2017-04-22 04:38:13', 'Fazil', 'Fazil'),
(13, NULL, '2017-04-22 04:41:27', '2017-04-22 04:41:27', 'MBBS', 'Bachelor of Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `crime_types`
--

CREATE TABLE `crime_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crime_types`
--

INSERT INTO `crime_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `type_name`) VALUES
(1, NULL, '2018-05-12 04:53:27', '2018-05-12 04:53:27', 'Explosive');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `currency_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency_short_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `deleted_at`, `created_at`, `updated_at`, `country_id`, `currency_name`, `currency_short_code`) VALUES
(1, NULL, '2017-04-18 05:47:51', '2017-04-27 08:24:03', 18, 'Taka', 'Tk');

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendences`
--

CREATE TABLE `daily_attendences` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL COMMENT 'Foreign Key: employees_info.emp_id',
  `posting_record_id` int(11) DEFAULT NULL COMMENT 'Employee current posting record id',
  `date` date NOT NULL,
  `in_time` datetime DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `attend_status_id` int(10) UNSIGNED NOT NULL COMMENT '1=present,2=absent,3=delay,4=leave,5=movement, 6 =training, 7=mission, 8= certificate, 9=hospital'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daily_attendences`
--

INSERT INTO `daily_attendences` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `posting_record_id`, `date`, `in_time`, `out_time`, `attend_status_id`) VALUES
(1, NULL, '2018-01-02 05:21:02', '2018-01-02 05:21:05', 10151, 13, '2018-01-02', NULL, NULL, 1),
(2, NULL, '2018-01-02 05:21:02', '2018-01-02 05:21:02', 10143, 19, '2018-01-02', NULL, NULL, 1),
(3, NULL, '2018-01-02 05:21:02', '2018-01-02 05:21:02', 1, 1, '2018-01-02', NULL, NULL, 1),
(4, NULL, '2018-01-08 10:43:55', '2018-01-08 10:43:55', 10151, 13, '2018-01-07', NULL, NULL, 4),
(5, NULL, '2018-01-08 10:43:55', '2018-01-08 10:43:55', 10151, 13, '2018-01-08', NULL, NULL, 4),
(6, NULL, '2018-01-08 10:43:55', '2018-01-08 10:43:55', 10151, 13, '2018-01-09', NULL, NULL, 4),
(7, NULL, '2018-01-08 10:43:55', '2018-01-27 08:16:08', 10151, 13, '2018-01-10', NULL, NULL, 4),
(21, '2018-01-27 08:32:14', '2018-01-27 08:31:06', '2018-01-27 08:32:14', 10151, 13, '2018-01-11', NULL, NULL, 4),
(22, '2018-01-27 08:33:50', '2018-01-27 08:31:46', '2018-01-27 08:33:50', 10151, 13, '2018-01-06', NULL, NULL, 4),
(23, '2018-01-27 08:33:50', '2018-01-27 08:32:43', '2018-01-27 08:33:50', 10151, 13, '2018-01-05', NULL, NULL, 4),
(24, NULL, '2018-05-26 08:23:31', '2018-05-26 08:23:31', 10151, 13, '2018-01-03', NULL, NULL, 4),
(25, NULL, '2018-05-26 08:23:31', '2018-05-26 08:23:31', 10151, 13, '2018-01-04', NULL, NULL, 4),
(26, NULL, '2018-05-26 09:01:12', '2018-05-26 09:01:12', 10151, 13, '2018-05-26', NULL, NULL, 4),
(27, NULL, '2018-05-26 09:04:06', '2018-05-26 09:04:06', 10143, 19, '2018-05-26', NULL, NULL, 4),
(28, NULL, '2018-05-26 09:11:26', '2018-05-26 09:11:26', 10134, 8, '2018-05-26', NULL, NULL, 4),
(29, NULL, '2018-05-26 09:11:26', '2018-05-26 09:11:26', 10134, 8, '2018-05-27', NULL, NULL, 4),
(30, '2018-05-27 03:26:04', '2018-05-27 03:14:01', '2018-05-27 03:26:04', 10151, 13, '2018-05-28', NULL, NULL, 4),
(31, NULL, '2018-05-27 03:14:01', '2018-05-27 03:14:01', 10151, 13, '2018-05-29', NULL, NULL, 4),
(32, NULL, '2018-05-27 03:26:59', '2018-05-27 03:26:59', 10151, 13, '2018-05-28', NULL, NULL, 4),
(33, NULL, '2018-05-27 03:50:38', '2018-05-27 03:50:38', 1, 1, '2018-05-25', NULL, NULL, 4),
(34, NULL, '2018-06-04 02:58:35', '2018-06-04 09:35:42', 10154, 15, '2018-06-04', NULL, NULL, 5),
(35, NULL, '2018-06-04 02:58:35', '2018-06-04 05:23:10', 10153, 28, '2018-06-04', NULL, NULL, 5),
(36, NULL, '2018-06-04 02:58:35', '2018-06-04 02:58:35', 10151, 13, '2018-06-04', NULL, NULL, 1),
(37, NULL, '2018-06-04 02:58:35', '2018-06-04 02:58:35', 10150, 35, '2018-06-04', NULL, NULL, 1),
(38, NULL, '2018-06-04 02:58:35', '2018-06-04 02:58:35', 10143, 19, '2018-06-04', NULL, NULL, 1),
(39, NULL, '2018-06-04 02:58:35', '2018-06-04 02:58:35', 10134, 8, '2018-06-04', NULL, NULL, 1),
(40, NULL, '2018-06-04 02:58:35', '2018-06-04 02:58:35', 10133, 9, '2018-06-04', NULL, NULL, 1),
(41, NULL, '2018-06-04 02:58:35', '2018-06-04 02:58:35', 4, 3, '2018-06-04', NULL, NULL, 1),
(42, NULL, '2018-06-04 02:58:35', '2018-06-04 02:58:35', 3, 2, '2018-06-04', NULL, NULL, 1),
(43, NULL, '2018-06-04 02:58:35', '2018-06-04 02:58:35', 1, 1, '2018-06-04', NULL, NULL, 1),
(44, NULL, '2018-06-04 05:23:10', '2018-06-04 05:23:10', 10153, 28, '2018-06-05', NULL, NULL, 5),
(45, NULL, '2018-06-04 05:41:23', '2018-06-04 05:41:23', 10148, NULL, '2018-06-04', NULL, NULL, 5),
(46, NULL, '2018-06-04 05:41:23', '2018-06-04 05:41:23', 10148, NULL, '2018-06-05', NULL, NULL, 5),
(47, NULL, '2018-06-04 05:41:23', '2018-06-04 05:41:23', 10148, NULL, '2018-06-06', NULL, NULL, 5),
(48, NULL, '2018-06-04 05:41:23', '2018-06-04 05:41:23', 10148, NULL, '2018-06-07', NULL, NULL, 5),
(49, NULL, '2018-06-04 05:41:23', '2018-06-04 05:41:23', 10148, NULL, '2018-06-08', NULL, NULL, 5),
(50, NULL, '2018-06-04 07:38:10', '2018-06-04 07:38:10', 10153, 28, '2018-06-22', NULL, NULL, 4),
(51, '2018-06-04 07:52:36', '2018-06-04 07:38:10', '2018-06-04 07:52:36', 10153, 28, '2018-06-23', NULL, NULL, 4),
(52, NULL, '2018-06-04 09:35:42', '2018-06-04 09:35:42', 10154, 15, '2018-06-05', NULL, NULL, 5),
(53, NULL, '2018-06-04 09:35:42', '2018-06-04 09:35:42', 10154, 15, '2018-06-06', NULL, NULL, 5),
(54, NULL, '2018-06-04 09:35:42', '2018-06-04 09:35:42', 10154, 15, '2018-06-07', NULL, NULL, 5),
(55, NULL, '2018-06-04 09:35:42', '2018-06-04 09:35:42', 10154, 15, '2018-06-08', NULL, NULL, 5),
(56, NULL, '2018-06-04 09:35:42', '2018-06-04 09:35:42', 10154, 15, '2018-06-09', NULL, NULL, 5),
(57, NULL, '2018-06-04 09:35:42', '2018-06-04 09:35:42', 10154, 15, '2018-06-10', NULL, NULL, 5),
(58, NULL, '2018-06-05 05:42:12', '2018-06-05 05:42:12', 3, 2, '2018-06-05', NULL, NULL, 5),
(59, NULL, '2018-06-06 03:07:02', '2018-06-06 03:07:02', 10134, 8, '2018-06-06', NULL, NULL, 5),
(60, NULL, '2018-06-06 03:07:02', '2018-06-06 03:07:02', 10134, 8, '2018-06-07', NULL, NULL, 5),
(61, NULL, '2018-06-06 03:07:02', '2018-06-06 03:07:02', 10134, 8, '2018-06-08', NULL, NULL, 5),
(62, NULL, '2018-06-06 03:07:02', '2018-06-06 03:07:02', 10134, 8, '2018-06-09', NULL, NULL, 5),
(63, '2018-06-06 03:16:23', '2018-06-06 03:07:02', '2018-06-06 03:07:02', 10134, 8, '2018-06-10', NULL, NULL, 5),
(64, '2018-06-06 03:16:23', '2018-06-06 03:16:29', '2018-06-06 03:16:29', 10134, 8, '2018-06-11', NULL, NULL, 5),
(65, NULL, '2018-06-07 07:38:15', '2018-06-07 07:38:15', 10153, 28, '2018-06-07', NULL, NULL, 1),
(66, NULL, '2018-06-07 07:38:15', '2018-06-07 07:38:15', 10151, 13, '2018-06-07', NULL, NULL, 1),
(67, NULL, '2018-06-07 07:38:15', '2018-06-07 07:38:15', 10150, 35, '2018-06-07', NULL, NULL, 1),
(68, NULL, '2018-06-07 07:38:15', '2018-06-07 07:38:15', 10143, 19, '2018-06-07', NULL, NULL, 1),
(69, NULL, '2018-06-07 07:38:15', '2018-06-07 07:38:15', 10133, 9, '2018-06-07', NULL, NULL, 1),
(70, NULL, '2018-06-07 07:38:15', '2018-06-07 07:38:15', 4, 3, '2018-06-07', NULL, NULL, 1),
(71, NULL, '2018-06-07 07:38:15', '2018-06-07 07:38:15', 3, 2, '2018-06-07', NULL, NULL, 1),
(72, NULL, '2018-06-07 07:38:15', '2018-06-07 07:38:15', 1, 1, '2018-06-07', NULL, NULL, 1),
(73, NULL, '2018-06-09 02:10:44', '2018-06-09 02:10:44', 10153, 28, '2018-06-09', NULL, NULL, 1),
(74, NULL, '2018-06-09 02:10:44', '2018-06-09 02:10:44', 10151, 13, '2018-06-09', NULL, NULL, 1),
(75, NULL, '2018-06-09 02:10:44', '2018-06-09 02:10:44', 10150, 35, '2018-06-09', NULL, NULL, 1),
(76, NULL, '2018-06-09 02:10:44', '2018-06-09 02:10:44', 10143, 19, '2018-06-09', NULL, NULL, 1),
(77, NULL, '2018-06-09 02:10:44', '2018-06-09 02:10:44', 10133, 9, '2018-06-09', NULL, NULL, 1),
(78, NULL, '2018-06-09 02:10:44', '2018-06-09 02:10:44', 4, 3, '2018-06-09', NULL, NULL, 1),
(79, NULL, '2018-06-09 02:10:44', '2018-06-09 02:10:44', 3, 2, '2018-06-09', NULL, NULL, 1),
(80, NULL, '2018-06-09 02:10:44', '2018-06-09 02:10:44', 1, 1, '2018-06-09', NULL, NULL, 1),
(81, NULL, '2018-06-11 06:20:59', '2018-06-11 06:20:59', 10134, 8, '2018-06-11', NULL, NULL, 6),
(82, NULL, '2018-06-11 06:26:32', '2018-06-11 06:26:32', 10154, 15, '2018-06-11', NULL, NULL, 1),
(83, NULL, '2018-06-11 06:26:32', '2018-06-11 06:26:32', 10153, 28, '2018-06-11', NULL, NULL, 1),
(84, NULL, '2018-06-11 06:26:32', '2018-06-11 06:26:32', 10151, 13, '2018-06-11', NULL, NULL, 1),
(85, NULL, '2018-06-11 06:26:32', '2018-06-11 06:26:32', 10150, 35, '2018-06-11', NULL, NULL, 1),
(86, NULL, '2018-06-11 06:26:32', '2018-06-11 06:26:32', 10143, 19, '2018-06-11', NULL, NULL, 1),
(87, NULL, '2018-06-11 06:26:32', '2018-06-11 06:26:32', 10133, 9, '2018-06-11', NULL, NULL, 1),
(88, NULL, '2018-06-11 06:26:32', '2018-06-11 06:26:32', 4, 3, '2018-06-11', NULL, NULL, 1),
(89, NULL, '2018-06-11 06:26:32', '2018-06-11 06:26:32', 3, 2, '2018-06-11', NULL, NULL, 1),
(90, NULL, '2018-06-11 06:26:32', '2018-06-11 06:26:32', 1, 1, '2018-06-11', NULL, NULL, 1),
(91, NULL, '2018-06-12 05:07:53', '2018-06-12 05:07:53', 10151, 13, '2018-06-12', NULL, NULL, 4),
(92, NULL, '2018-06-12 05:16:51', '2018-06-12 05:16:51', 10153, 28, '2018-06-12', NULL, NULL, 4),
(93, NULL, '2018-06-12 05:36:50', '2018-06-12 05:36:50', 10153, 28, '2018-06-20', NULL, NULL, 4),
(94, NULL, '2018-06-12 05:40:28', '2018-06-12 05:40:28', 10151, 13, '2018-06-13', NULL, NULL, 4),
(95, NULL, '2018-06-12 05:56:53', '2018-06-12 05:56:53', 10151, 13, '2018-06-22', NULL, NULL, 4),
(96, NULL, '2018-06-12 06:05:25', '2018-06-12 06:05:25', 10150, 35, '2018-06-12', NULL, NULL, 4),
(97, NULL, '2018-06-12 06:08:18', '2018-06-12 06:08:18', 10150, 35, '2018-06-13', NULL, NULL, 4),
(98, NULL, '2018-07-17 07:33:54', '2018-07-17 07:33:54', 1, 1, '2018-07-17', NULL, NULL, 5),
(99, NULL, '2018-07-17 07:33:54', '2018-07-17 07:33:54', 1, 1, '2018-07-18', NULL, NULL, 5),
(100, NULL, '2018-07-17 07:33:54', '2018-07-17 07:33:54', 1, 1, '2018-07-19', NULL, NULL, 5),
(101, NULL, '2018-07-17 07:33:54', '2018-07-17 07:33:54', 1, 1, '2018-07-20', NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `daily_duties`
--

CREATE TABLE `daily_duties` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `posting_record_id` int(11) DEFAULT NULL COMMENT 'Employee current posting record id',
  `duty_type_id` int(10) UNSIGNED NOT NULL,
  `duty_date` date NOT NULL,
  `duty_roster_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daily_duties`
--

INSERT INTO `daily_duties` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `posting_record_id`, `duty_type_id`, `duty_date`, `duty_roster_id`) VALUES
(1, '2017-06-20 05:14:18', '2017-06-20 05:11:58', '2017-06-20 05:14:18', 10150, NULL, 2, '2017-06-20', 3),
(2, NULL, '2017-06-20 05:13:55', '2017-06-20 05:13:55', 10151, NULL, 2, '2017-06-20', 1),
(3, '2017-06-20 05:16:17', '2017-06-20 05:14:18', '2017-06-20 05:16:17', 10151, NULL, 2, '2017-06-20', 3),
(4, NULL, '2017-06-20 05:15:58', '2017-06-20 05:15:58', 10151, NULL, 2, '2017-06-20', 4),
(5, '2017-06-20 05:16:51', '2017-06-20 05:16:17', '2017-06-20 05:16:51', 10151, NULL, 2, '2017-06-20', 3),
(6, NULL, '2017-06-20 05:16:51', '2017-06-20 05:16:51', 10151, NULL, 2, '2017-06-20', 3),
(7, NULL, '2017-06-20 05:16:51', '2017-06-20 05:16:51', 10134, NULL, 2, '2017-06-20', 3),
(8, NULL, '2017-06-20 05:16:51', '2017-06-20 05:26:23', 4, NULL, 2, '2017-06-20', 2),
(9, NULL, '2017-06-20 07:16:04', '2017-06-20 07:16:04', 10151, NULL, 3, '2017-06-20', 1),
(10, NULL, '2017-06-20 08:00:42', '2017-06-20 08:00:42', 10151, NULL, 8, '2017-06-20', 2),
(11, NULL, '2017-06-20 08:02:15', '2017-06-20 08:11:49', 10151, NULL, 5, '2017-06-20', 2),
(12, '2017-06-21 02:21:23', '2017-06-21 02:20:41', '2017-06-21 02:21:23', 10151, NULL, 5, '2017-06-21', 3),
(13, NULL, '2017-06-22 03:06:01', '2017-06-22 03:06:01', 10151, NULL, 17, '2017-06-22', 1),
(14, NULL, '2017-10-07 10:48:37', '2017-10-07 10:54:52', 10134, 8, 4, '2017-10-07', 2),
(15, NULL, '2017-10-07 10:48:37', '2017-10-07 10:48:37', 10134, 8, 2, '2017-10-07', 2);

-- --------------------------------------------------------

--
-- Table structure for table `daily_movements`
--

CREATE TABLE `daily_movements` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `posting_record_id` int(11) DEFAULT NULL COMMENT 'Employee current posting record id',
  `from_date` date NOT NULL DEFAULT '1970-01-01',
  `to_date` date NOT NULL DEFAULT '1970-01-01',
  `movement_type_id` int(10) UNSIGNED NOT NULL,
  `destination` text COLLATE utf8_unicode_ci NOT NULL,
  `out_time` datetime NOT NULL,
  `in_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daily_movements`
--

INSERT INTO `daily_movements` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `posting_record_id`, `from_date`, `to_date`, `movement_type_id`, `destination`, `out_time`, `in_time`) VALUES
(1, NULL, '2017-08-07 06:59:34', '2017-08-07 06:59:34', 1, NULL, '2017-08-07', '1970-01-01', 2, 'Movement', '2017-08-08 00:00:00', '2017-08-07 00:00:00'),
(2, '2017-10-07 09:35:09', '2017-10-07 09:21:20', '2017-10-07 09:35:09', 10151, NULL, '2017-10-07', '1970-01-01', 2, 'RAB HQ', '2017-10-07 00:00:00', '2017-10-06 12:00:00'),
(3, '2017-10-07 09:33:11', '2017-10-07 09:28:43', '2017-10-07 09:33:11', 10151, NULL, '2017-10-07', '1970-01-01', 1, 'asdfadsf', '2017-10-07 00:00:00', '2017-10-07 00:00:00'),
(4, '2017-10-07 09:35:07', '2017-10-07 09:33:32', '2017-10-07 09:35:07', 4, NULL, '2017-10-07', '1970-01-01', 1, 'asdfasd ', '2017-10-07 00:00:00', '2017-10-07 00:00:00'),
(5, NULL, '2017-10-07 09:35:23', '2017-10-07 09:35:23', 10151, NULL, '2017-10-07', '1970-01-01', 1, 'TTTTTTTTTT', '2017-10-07 00:00:00', '2017-10-07 00:00:00'),
(6, '2017-10-07 09:52:18', '2017-10-07 09:37:39', '2017-10-07 09:52:18', 10151, NULL, '2017-10-07', '1970-01-01', 1, 'a asd as', '2017-10-07 00:00:00', '2017-10-07 00:00:00'),
(7, '2017-10-07 09:52:16', '2017-10-07 09:38:22', '2017-10-07 09:52:16', 10151, NULL, '2017-10-07', '1970-01-01', 1, 'a asd as', '2017-10-07 00:00:00', '2017-10-07 00:00:00'),
(8, '2017-10-07 09:52:14', '2017-10-07 09:49:33', '2017-10-07 09:52:14', 10151, NULL, '2017-10-07', '1970-01-01', 1, 'a asd as', '2017-10-07 00:00:00', '2017-10-07 00:00:00'),
(9, '2017-10-07 09:52:13', '2017-10-07 09:50:08', '2017-10-07 09:52:13', 10151, 13, '2017-10-07', '1970-01-01', 1, 'a asd as', '2017-10-07 00:00:00', '2017-10-07 00:00:00'),
(10, NULL, '2017-10-07 09:52:36', '2017-10-07 09:52:36', 4, 6, '2017-10-07', '1970-01-01', 3, 'Temporya', '2017-10-07 00:00:00', '2017-10-07 00:00:00'),
(11, NULL, '2017-10-25 05:24:24', '2017-10-25 05:24:24', 10151, 13, '2017-10-25', '1970-01-01', 1, 'asfasf', '2017-10-25 17:00:00', '2017-10-25 22:00:00'),
(12, NULL, '2017-10-25 05:25:51', '2018-06-04 05:05:07', 1, 1, '2017-10-25', '2018-01-01', 1, 'munna sdfasf', '2017-10-25 00:00:00', '2017-10-25 05:00:00'),
(13, NULL, '2018-06-04 05:10:33', '2018-06-04 05:10:33', 10150, 35, '2018-06-04', '2018-06-04', 1, 'Airport', '2018-06-04 00:00:00', '0000-00-00 00:00:00'),
(14, NULL, '2018-06-04 05:23:10', '2018-06-04 05:23:10', 10153, 28, '2018-06-04', '2018-06-05', 1, 'Airport', '2018-06-04 00:00:00', '0000-00-00 00:00:00'),
(15, NULL, '2018-06-04 05:41:23', '2018-06-04 05:41:23', 10148, NULL, '2018-06-04', '2018-06-08', 2, 'Khilkhet', '2018-06-04 00:00:00', '2018-06-04 00:00:00'),
(16, NULL, '2018-06-04 09:35:42', '2018-06-04 09:50:34', 10154, 15, '2018-06-04', '2018-06-07', 1, 'test', '2018-06-04 00:00:00', '2018-06-04 00:00:00'),
(17, NULL, '2018-06-05 05:42:12', '2018-06-05 05:42:12', 3, 2, '2018-06-05', '2018-06-05', 2, 'asdfasdf', '2018-06-20 00:00:00', '2018-06-05 00:00:00'),
(18, NULL, '2018-06-06 03:07:02', '2018-06-06 03:17:05', 10134, 8, '2018-06-06', '2018-06-09', 1, 'Khilkhet', '2018-06-06 00:00:00', '2018-06-06 00:00:00'),
(19, NULL, '2018-07-17 07:33:54', '2018-07-17 07:33:54', 1, 1, '2018-07-17', '2018-07-20', 1, 'Ration check\r\n', '2018-07-17 00:00:00', '2018-07-27 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `daily_outpasses`
--

CREATE TABLE `daily_outpasses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `posting_record_id` int(11) NOT NULL,
  `outpass_date` date NOT NULL DEFAULT '1970-01-01',
  `out_time` datetime DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `destination` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daily_outpasses`
--

INSERT INTO `daily_outpasses` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `posting_record_id`, `outpass_date`, `out_time`, `in_time`, `destination`) VALUES
(1, NULL, '2018-05-26 08:56:04', '2018-05-26 08:56:04', 1, 0, '2018-05-26', '2018-05-26 14:00:00', '2018-05-26 15:00:00', 'Home Ministry');

-- --------------------------------------------------------

--
-- Table structure for table `daily_vehicle_usages`
--

CREATE TABLE `daily_vehicle_usages` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_record_id` int(10) UNSIGNED NOT NULL,
  `used_by` int(10) UNSIGNED NOT NULL,
  `prev_meter` decimal(10,0) NOT NULL,
  `last_meter` decimal(10,0) NOT NULL,
  `purpose` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fuel_type_id` int(10) UNSIGNED NOT NULL,
  `prev_amount` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `given_amount` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `spent_amount` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `kmpl` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `voucher_no` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_driver_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daily_vehicle_usages`
--

INSERT INTO `daily_vehicle_usages` (`id`, `deleted_at`, `created_at`, `updated_at`, `vehicle_record_id`, `used_by`, `prev_meter`, `last_meter`, `purpose`, `fuel_type_id`, `prev_amount`, `given_amount`, `spent_amount`, `kmpl`, `voucher_no`, `destination`, `vehicle_driver_id`, `date`, `unit_price`) VALUES
(1, '2017-06-22 05:37:05', '2017-06-21 05:41:04', '2017-06-21 05:41:04', 3, 1, '62112', '62406', NULL, 3, '10', '33.20', '30', '7.50', NULL, NULL, 13, '2017-06-21', 0),
(2, NULL, '2017-06-22 06:16:11', '2017-12-11 09:14:06', 23, 1, '332019', '332215', NULL, 3, '150', '33.20', '30', '7.50', NULL, NULL, 15, '2017-06-22', 50),
(3, NULL, '2017-06-22 06:33:59', '2017-06-22 06:33:59', 3, 1, '62112', '62406', NULL, 3, '150', '120', '30', '5', NULL, NULL, 13, '2017-06-20', 0),
(4, '2017-12-11 06:30:44', '2017-09-27 11:22:49', '2017-09-27 11:33:42', 3, 1, '62406', '62407', NULL, 1, '142', '98', '30', '20', '123', 'dis', 10, '2017-09-27', 14),
(5, NULL, '2017-12-11 09:19:43', '2017-12-11 09:34:48', 23, 1, '332215', '332275', 'Minister Protection', 1, '153.2', '50', '60', '7.5', '3522697', 'Home Ministry', 15, '2017-12-03', 50);

-- --------------------------------------------------------

--
-- Table structure for table `damaged_vehicles`
--

CREATE TABLE `damaged_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `veh_damage_info_id` int(10) DEFAULT NULL,
  `vehicle_id` int(10) DEFAULT NULL,
  `created_by` int(10) NOT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `damaged_vehicles`
--

INSERT INTO `damaged_vehicles` (`id`, `veh_damage_info_id`, `vehicle_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 25, 19, NULL, '2017-08-12 10:12:21', '2017-08-12 10:12:45', '2017-08-12 10:12:45'),
(2, 1, 27, 19, NULL, '2017-08-12 10:12:21', '2017-08-12 10:12:45', '2017-08-12 10:12:45'),
(3, 1, 2, 19, NULL, '2017-08-12 10:12:46', '2017-08-12 10:13:40', '2017-08-12 10:13:40'),
(4, 1, 4, 19, NULL, '2017-08-12 10:12:46', '2017-08-12 10:13:40', '2017-08-12 10:13:40'),
(5, 1, 15, 19, NULL, '2017-08-12 10:13:40', '2017-08-12 10:13:49', '2017-08-12 10:13:49'),
(6, 1, 23, 19, NULL, '2017-08-12 10:13:40', '2017-08-12 10:13:49', '2017-08-12 10:13:49'),
(7, 1, 15, 19, NULL, '2017-08-12 10:13:49', '2017-08-12 10:13:58', '2017-08-12 10:13:58'),
(8, 1, 23, 19, NULL, '2017-08-12 10:13:49', '2017-08-12 10:13:58', '2017-08-12 10:13:58'),
(9, 1, 25, 19, NULL, '2017-08-12 10:13:49', '2017-08-12 10:13:58', '2017-08-12 10:13:58'),
(10, 1, 15, 19, NULL, '2017-08-12 10:13:58', '2017-08-12 11:55:20', '2017-08-12 11:55:20'),
(11, 1, 25, 19, NULL, '2017-08-12 10:13:59', '2017-08-12 11:55:20', '2017-08-12 11:55:20'),
(12, 1, 15, 19, NULL, '2017-08-12 11:55:21', '2017-08-12 11:55:21', NULL),
(13, 1, 25, 19, NULL, '2017-08-12 11:55:21', '2017-08-12 11:55:21', NULL),
(14, 1, 5, 19, NULL, '2017-08-12 11:55:21', '2017-08-12 11:55:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`, `active`) VALUES
(1, 'Administration', '[]', '#000', '2017-05-13 06:45:14', '2017-02-19 02:35:02', '2017-02-19 02:35:02', 'Yes'),
(2, 'asdf', '[]', 'asdf', '2017-02-27 22:18:35', '2017-02-27 02:55:47', '2017-02-27 22:18:35', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `designation_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation_level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `desig_short_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `deleted_at`, `created_at`, `updated_at`, `designation_name`, `designation_level`, `desig_short_name`) VALUES
(1, NULL, '2017-03-02 05:48:33', '2017-04-10 08:14:19', 'Director General', 1, 'DG'),
(2, NULL, '2017-03-02 05:49:06', '2017-04-10 08:14:38', 'Additional Director General', 2, 'ADG'),
(3, NULL, '2017-04-10 08:15:07', '2017-04-10 08:15:07', 'Director', 3, 'Dir'),
(4, NULL, '2017-04-10 08:25:57', '2017-04-10 08:25:57', 'Deputy Director', 4, 'DD'),
(5, NULL, '2017-04-12 12:17:18', '2017-04-12 12:17:18', 'Executive Engineer', 5, 'Executive Engr'),
(6, NULL, '2017-04-12 12:17:42', '2017-04-12 12:17:42', 'System Analyst', 6, 'SA'),
(7, NULL, '2017-04-12 12:18:07', '2017-04-12 12:18:07', 'Net Administrator', 7, 'Net Admin'),
(8, NULL, '2017-04-12 12:18:49', '2017-04-12 12:18:49', 'Coy Commander', 8, 'Coy Cmdr'),
(9, NULL, '2017-04-12 12:19:19', '2017-04-19 12:14:10', 'Senior Assistant Director', 9, 'Sr. AD'),
(10, NULL, '2017-04-12 12:20:17', '2017-04-19 12:14:22', 'Senior Assistant Director (Forensic)', 10, 'Sr. AD (Forensic)'),
(11, NULL, '2017-04-12 12:20:35', '2017-04-12 12:20:35', 'RMO', 11, 'RMO'),
(12, NULL, '2017-04-12 12:21:20', '2017-04-12 12:21:20', 'Veterinary Surgeon', 12, 'Vet. Srgn.'),
(13, NULL, '2017-04-12 12:21:45', '2017-04-12 12:21:45', 'Computer Programmer', 13, 'Com. Prog'),
(14, NULL, '2017-04-12 12:22:33', '2017-04-19 12:14:40', 'Assistant Director', 14, 'AD'),
(15, NULL, '2017-04-12 12:23:09', '2017-04-19 12:14:55', 'Assistant Director (Forensic)', 15, 'AD (Forensic)'),
(16, NULL, '2017-04-12 12:23:28', '2017-04-12 12:23:28', 'Law Officer', 16, 'Law Officer'),
(17, NULL, '2017-04-12 12:23:42', '2017-04-12 12:23:42', 'Budget Officer', 17, 'Budget Officer'),
(18, NULL, '2017-04-12 12:24:11', '2017-04-12 12:24:11', 'Accounts Officer', 18, 'Accounts Officer'),
(19, NULL, '2017-04-12 12:24:53', '2017-04-19 12:13:53', 'Deputy Assistant Director', 19, 'DAD'),
(20, NULL, '2017-04-12 12:25:24', '2017-04-20 08:05:12', 'Sergeant/SI', 20, 'Sgt/SI'),
(21, NULL, '2017-04-12 12:25:51', '2017-04-12 12:25:51', 'ASI/Hav', 21, 'ASI/Hav'),
(22, NULL, '2017-04-12 12:26:13', '2017-04-12 12:26:13', 'Nayek', 22, 'NK'),
(23, NULL, '2017-04-12 12:26:30', '2017-04-12 12:26:30', 'Constable', 23, 'Const.'),
(24, NULL, '2017-04-12 12:26:46', '2017-04-12 12:26:46', 'Cook', 24, 'Cook'),
(25, NULL, '2017-04-12 12:27:00', '2017-04-12 12:27:00', 'NCE', 25, 'NCE'),
(26, NULL, '2017-04-12 12:27:45', '2017-04-12 12:27:45', 'Sub Assistant Engineer ', 26, 'Sub Asst. Engr.'),
(27, NULL, '2017-04-12 12:28:01', '2017-04-12 12:28:01', 'RT', 27, 'RT'),
(28, NULL, '2017-04-12 12:28:27', '2017-04-12 12:28:27', 'Mess Waiter', 28, 'Mess Waiter'),
(29, NULL, '2017-04-12 12:28:48', '2017-04-12 12:28:48', 'MLSS', 29, 'MLSS'),
(30, NULL, '2017-04-12 12:29:09', '2017-04-12 12:29:09', 'Accountant', 30, 'Acct'),
(31, NULL, '2017-04-12 12:29:42', '2017-04-12 12:29:42', 'Cashier', 31, 'Cashier'),
(32, NULL, '2017-04-12 12:29:56', '2017-04-12 12:29:56', 'Mali', 32, 'Mali'),
(33, NULL, '2017-04-12 12:30:16', '2017-04-12 12:30:16', 'Technician', 33, 'Technician'),
(34, NULL, '2017-04-12 12:30:35', '2017-04-12 12:30:35', 'Lab Assistant', 34, 'Lab Asst'),
(35, NULL, '2017-04-12 12:31:16', '2017-04-12 12:31:16', 'Office Assistant', 35, 'Office Asst'),
(36, NULL, '2017-04-12 12:31:32', '2017-04-12 12:31:32', 'Ward Boy', 37, 'Ward Boy'),
(37, NULL, '2017-04-12 12:31:49', '2017-04-12 12:31:49', 'Mosalcy', 38, 'Mosalcy'),
(38, NULL, '2017-04-12 12:32:24', '2017-04-12 12:32:24', 'Dom/Sweeper', 39, 'Dom/Sweeper'),
(39, NULL, '2018-05-28 04:29:14', '2018-05-28 04:29:14', 'Clerk', 40, 'Clk'),
(40, NULL, '2018-05-28 04:30:05', '2018-05-28 04:30:05', 'Driver', 41, 'Driver');

-- --------------------------------------------------------

--
-- Table structure for table `designation_mappings`
--

CREATE TABLE `designation_mappings` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `designation_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `mother_force_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `auth_man` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `designation_mappings`
--

INSERT INTO `designation_mappings` (`id`, `deleted_at`, `created_at`, `updated_at`, `designation_id`, `mother_force_id`, `rank_id`, `auth_man`) VALUES
(1, NULL, '2017-04-10 09:46:51', '2017-04-10 09:46:51', 1, 4, 13, 1),
(2, NULL, '2017-04-10 09:47:30', '2017-04-17 08:46:11', 2, 1, 1, 1),
(3, NULL, '2017-04-15 10:16:53', '2017-04-19 09:49:16', 2, 8, 85, 1),
(4, NULL, '2017-04-19 09:50:05', '2017-04-19 09:50:05', 3, 1, 1, 13),
(5, NULL, '2017-04-19 09:50:28', '2017-04-19 10:20:37', 3, 2, 7, 2),
(6, NULL, '2017-04-19 09:51:11', '2017-04-19 09:51:11', 3, 3, 10, 2),
(7, NULL, '2017-04-19 09:57:26', '2017-04-19 09:57:26', 3, 4, 89, 6),
(8, NULL, '2017-04-19 10:13:38', '2017-04-19 10:13:38', 4, 1, 3, 66),
(9, NULL, '2017-04-19 10:14:03', '2017-04-19 10:14:03', 4, 2, 8, 13),
(10, NULL, '2017-04-19 10:15:34', '2017-04-19 10:15:34', 4, 3, 11, 13),
(11, NULL, '2017-04-19 10:30:39', '2017-04-19 10:30:39', 4, 4, 14, 6),
(12, NULL, '2017-04-19 10:31:03', '2017-04-19 10:31:03', 4, 5, 60, 1),
(13, NULL, '2017-04-19 11:05:52', '2017-04-19 11:05:52', 4, 8, 85, 1),
(14, NULL, '2017-04-20 04:04:01', '2017-04-20 04:30:54', 8, 1, 6, 4),
(15, NULL, '2017-04-20 04:31:58', '2017-04-20 04:31:58', 8, 4, 14, 8),
(16, NULL, '2017-04-20 04:32:22', '2017-04-20 04:32:22', 9, 1, 6, 70),
(17, NULL, '2017-04-20 07:11:10', '2017-04-20 07:11:10', 9, 2, 9, 6),
(18, NULL, '2017-04-20 07:11:42', '2017-04-20 07:11:42', 9, 3, 12, 6),
(19, NULL, '2017-04-20 07:12:03', '2017-04-20 07:12:03', 9, 4, 14, 48),
(20, NULL, '2017-04-20 07:12:36', '2017-04-20 07:12:36', 9, 5, 60, 3),
(21, NULL, '2017-04-20 07:12:58', '2017-04-20 07:12:58', 10, 1, 6, 9),
(22, NULL, '2017-04-20 07:14:42', '2017-04-20 07:14:42', 11, 1, 5, 16),
(23, NULL, '2017-04-20 07:16:18', '2017-04-20 07:16:18', 14, 1, 6, 182),
(24, NULL, '2017-04-20 07:16:48', '2017-04-20 07:16:48', 14, 2, 9, 35),
(25, NULL, '2017-04-20 07:17:05', '2017-04-20 07:17:05', 14, 3, 12, 34),
(26, NULL, '2017-04-20 07:17:43', '2017-04-20 07:17:43', 14, 4, 15, 100),
(27, NULL, '2017-04-20 07:18:01', '2017-04-20 07:18:01', 14, 4, 16, 98),
(28, NULL, '2017-04-20 07:18:24', '2017-04-20 07:18:24', 14, 5, 61, 19),
(29, NULL, '2017-04-20 07:18:48', '2017-04-20 07:18:48', 15, 1, 6, 2),
(30, NULL, '2017-04-20 07:19:07', '2017-04-20 07:19:07', 16, 8, 86, 13),
(31, NULL, '2017-04-20 07:19:51', '2017-04-20 07:19:51', 17, 8, 87, 1),
(32, NULL, '2017-04-20 07:20:10', '2017-04-20 07:20:10', 18, 8, 88, 1),
(33, NULL, '2017-04-20 07:21:01', '2017-04-20 07:21:01', 19, 1, 18, 200),
(34, NULL, '2017-04-20 07:21:19', '2017-04-20 07:21:19', 19, 1, 19, 181),
(35, NULL, '2017-04-20 07:21:43', '2017-04-20 07:21:43', 19, 2, 33, 62),
(36, NULL, '2017-04-20 07:22:06', '2017-04-20 07:22:06', 19, 3, 42, 31),
(37, NULL, '2017-04-20 07:22:23', '2017-04-20 07:22:23', 19, 3, 43, 31),
(38, NULL, '2017-04-20 07:23:54', '2017-04-20 07:23:54', 19, 4, 52, 220),
(39, NULL, '2017-04-20 07:26:43', '2017-04-20 07:26:43', 19, 5, 94, 25),
(40, NULL, '2017-04-20 07:27:15', '2017-04-20 07:27:15', 19, 6, 72, 50),
(41, NULL, '2017-04-20 07:27:36', '2017-04-20 07:27:36', 19, 6, 73, 50),
(42, NULL, '2017-04-20 07:27:49', '2017-04-20 07:27:49', 19, 6, 74, 38),
(43, NULL, '2017-04-20 07:28:56', '2017-04-20 07:28:56', 20, 1, 21, 500),
(44, NULL, '2017-04-20 07:29:13', '2017-04-20 07:29:13', 20, 1, 22, 307),
(45, NULL, '2017-04-20 07:30:01', '2017-04-20 07:30:01', 20, 2, 35, 100),
(46, NULL, '2017-04-20 07:30:25', '2017-04-20 07:30:25', 20, 2, 36, 43),
(47, NULL, '2017-04-20 08:06:08', '2017-04-20 08:06:08', 20, 3, 45, 100),
(48, NULL, '2017-04-20 08:06:36', '2017-04-20 08:06:36', 20, 3, 46, 42),
(49, NULL, '2017-04-20 08:07:10', '2017-04-20 08:07:10', 20, 6, 76, 229),
(50, NULL, '2017-04-20 08:07:42', '2017-04-20 08:07:42', 20, 4, 53, 500),
(51, NULL, '2017-04-20 08:08:12', '2017-04-20 08:08:12', 20, 4, 52, 202),
(52, NULL, '2017-04-20 08:08:30', '2017-04-20 08:08:30', 20, 5, 64, 86),
(53, NULL, '2017-04-20 08:11:55', '2017-04-20 08:11:55', 20, 7, 95, 6),
(54, NULL, '2017-04-20 08:13:15', '2017-04-20 08:13:15', 21, 1, 23, 801),
(55, NULL, '2017-04-20 08:13:42', '2017-04-20 08:13:42', 21, 2, 37, 143),
(56, NULL, '2017-04-20 08:14:05', '2017-04-20 08:14:05', 21, 3, 47, 122),
(57, NULL, '2017-04-20 08:14:40', '2017-04-20 08:14:40', 21, 4, 54, 568),
(58, NULL, '2017-04-20 08:14:55', '2017-04-20 08:14:55', 21, 4, 55, 500),
(59, NULL, '2017-04-20 08:15:41', '2017-04-20 08:15:41', 21, 6, 77, 100),
(60, NULL, '2017-04-20 08:16:17', '2017-04-20 08:16:17', 21, 6, 78, 97),
(61, NULL, '2017-04-20 08:16:43', '2017-04-20 08:16:43', 21, 5, 65, 45),
(62, NULL, '2017-04-20 08:17:03', '2017-04-20 08:17:03', 21, 7, 96, 6),
(63, NULL, '2017-04-20 08:53:32', '2017-04-20 08:53:32', 22, 4, 56, 315),
(64, NULL, '2017-04-20 08:53:55', '2017-04-20 08:53:55', 22, 6, 78, 124),
(65, NULL, '2017-04-20 08:54:18', '2017-04-20 08:54:18', 22, 5, 66, 30),
(66, NULL, '2017-04-20 08:54:40', '2017-04-20 08:54:40', 22, 5, 67, 30),
(67, NULL, '2017-04-20 08:55:20', '2017-04-20 08:55:20', 23, 1, 24, 1588),
(68, NULL, '2017-04-20 08:58:35', '2017-04-20 08:58:35', 23, 2, 36, 26),
(69, NULL, '2017-04-20 08:58:59', '2017-04-20 09:00:13', 23, 3, 47, 26),
(70, NULL, '2017-04-20 09:21:41', '2017-04-20 09:21:41', 23, 6, 79, 262),
(71, NULL, '2017-04-20 09:22:21', '2017-04-20 09:22:21', 23, 4, 57, 1600),
(72, NULL, '2017-04-20 09:22:47', '2017-04-20 09:22:47', 23, 5, 68, 100),
(73, NULL, '2017-04-20 09:24:41', '2017-04-20 09:24:41', 23, 5, 98, 185),
(74, NULL, '2017-04-20 09:25:06', '2017-04-20 10:19:47', 24, 1, 25, 211),
(75, NULL, '2017-04-20 09:25:28', '2017-04-20 09:25:28', 24, 2, 39, 39),
(76, NULL, '2017-04-20 09:25:52', '2017-04-20 09:25:52', 24, 3, 48, 39),
(77, NULL, '2017-04-20 09:26:16', '2017-04-20 09:26:16', 24, 6, 82, 50),
(78, NULL, '2017-04-20 09:26:31', '2017-04-20 09:26:31', 24, 4, 58, 1),
(79, NULL, '2017-04-20 09:26:54', '2017-04-20 09:26:54', 25, 1, 32, 106),
(80, NULL, '2017-04-20 09:27:19', '2017-04-20 09:27:19', 25, 2, 41, 20),
(81, NULL, '2017-04-20 09:27:36', '2017-04-20 09:27:36', 25, 3, 50, 20),
(82, NULL, '2017-04-20 09:27:59', '2017-04-20 09:27:59', 25, 6, 84, 17),
(83, NULL, '2017-04-20 09:29:50', '2017-04-20 09:29:50', 26, 1, 99, 3),
(84, NULL, '2017-04-20 09:31:07', '2017-04-20 09:31:07', 27, 1, 20, 5),
(85, NULL, '2017-04-20 09:31:21', '2017-04-20 09:31:21', 27, 2, 34, 2),
(86, NULL, '2017-04-20 09:31:31', '2017-04-20 09:31:31', 27, 3, 44, 2),
(87, NULL, '2017-04-20 09:31:47', '2017-04-20 09:31:47', 27, 6, 75, 6),
(88, NULL, '2017-04-20 09:33:01', '2017-04-20 09:33:01', 28, 1, 27, 17),
(89, NULL, '2017-04-20 09:33:18', '2017-04-20 09:33:18', 28, 2, 40, 6),
(90, NULL, '2017-04-20 09:33:40', '2017-04-20 09:33:40', 28, 3, 49, 5),
(91, NULL, '2017-04-20 09:34:07', '2017-04-20 09:34:07', 28, 6, 83, 6),
(92, NULL, '2017-04-20 09:34:27', '2017-04-20 09:34:27', 28, 5, 69, 2),
(93, NULL, '2017-04-20 09:35:59', '2017-04-20 09:35:59', 29, 1, 26, 3),
(94, NULL, '2017-04-20 09:36:32', '2017-04-20 09:36:32', 29, 6, 80, 2),
(95, NULL, '2017-04-20 09:37:25', '2017-04-20 09:37:25', 29, 5, 71, 2),
(96, NULL, '2017-04-20 09:38:41', '2017-04-20 09:38:41', 29, 4, 100, 2),
(97, NULL, '2017-04-20 09:39:13', '2017-04-20 09:39:13', 30, 4, 59, 6),
(98, NULL, '2017-04-20 09:41:18', '2017-04-20 09:41:18', 30, 6, 101, 3),
(99, NULL, '2017-04-20 09:41:34', '2017-04-20 09:41:34', 30, 5, 70, 4),
(100, NULL, '2017-04-20 09:43:08', '2017-04-20 09:43:08', 30, 8, 102, 2),
(101, NULL, '2017-04-20 10:05:04', '2017-04-20 10:05:04', 32, 1, 28, 4),
(102, NULL, '2017-04-20 10:05:27', '2017-04-20 10:05:27', 32, 6, 81, 9),
(103, NULL, '2017-04-20 10:06:39', '2017-04-20 10:06:39', 33, 1, 90, 2),
(104, NULL, '2017-04-20 10:07:11', '2017-04-20 10:07:11', 34, 1, 31, 9),
(105, NULL, '2017-04-20 10:08:02', '2017-04-20 10:08:02', 37, 1, 30, 1),
(106, NULL, '2017-04-20 10:09:50', '2017-04-20 10:09:50', 36, 1, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `disciplinary_actions`
--

CREATE TABLE `disciplinary_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL COMMENT 'Foreign Key: employees_info.emp_id',
  `occurs_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occurs_date` date DEFAULT NULL,
  `occurs_detail` text COLLATE utf8_unicode_ci,
  `invest_member` text COLLATE utf8_unicode_ci,
  `commtt_form` date DEFAULT NULL,
  `invest_start` date DEFAULT NULL,
  `invest_end` date DEFAULT NULL,
  `invest_report` text COLLATE utf8_unicode_ci,
  `investreport_date` date DEFAULT NULL,
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_date` date DEFAULT NULL,
  `action_by_rab` text COLLATE utf8_unicode_ci,
  `action_by_force` text COLLATE utf8_unicode_ci NOT NULL,
  `removal_from_service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `with_jail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `release_to_force` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `disciplinary_actions`
--

INSERT INTO `disciplinary_actions` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `occurs_type`, `occurs_date`, `occurs_detail`, `invest_member`, `commtt_form`, `invest_start`, `invest_end`, `invest_report`, `investreport_date`, `action_type`, `action_date`, `action_by_rab`, `action_by_force`, `removal_from_service`, `with_jail`, `release_to_force`) VALUES
(1, NULL, '2017-04-30 09:49:43', '2017-04-30 09:49:43', 49, 'Delay Presence', '2017-04-30', NULL, NULL, '2017-04-30', '2017-04-30', '2017-04-30', NULL, '2017-04-30', 'Light', '2017-04-30', 'action by rab', 'action by force', 'No', 'No', 'No'),
(2, NULL, '2017-05-25 06:37:25', '2017-05-25 06:37:25', 2, 'Delay Presence', '2017-05-26', 'Occurance Details', 'Investigation Member', '2017-05-25', '2017-05-26', '2017-05-27', 'Investigation Report', '2017-05-25', 'Light', '2017-05-26', 'Action By RAB', 'Action By Force', 'No', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `disposal_records`
--

CREATE TABLE `disposal_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `disposal_date` date NOT NULL,
  `battalion_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `upazila_id` int(10) UNSIGNED NOT NULL,
  `crime_type_id` int(10) UNSIGNED NOT NULL,
  `disposal_team` int(10) UNSIGNED NOT NULL,
  `case_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `case_date` date NOT NULL,
  `case_rule` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `arrest_place` text COLLATE utf8_unicode_ci,
  `seize_info` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `damage_info` text COLLATE utf8_unicode_ci,
  `acquired_info` text COLLATE utf8_unicode_ci,
  `forensic_report` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=draft,2=save and approved',
  `remarks` text COLLATE utf8_unicode_ci,
  `file_attachment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `disposal_records`
--

INSERT INTO `disposal_records` (`id`, `deleted_at`, `created_at`, `updated_at`, `created_by`, `updated_by`, `disposal_date`, `battalion_id`, `district_id`, `upazila_id`, `crime_type_id`, `disposal_team`, `case_number`, `case_date`, `case_rule`, `arrest_place`, `seize_info`, `description`, `damage_info`, `acquired_info`, `forensic_report`, `status`, `remarks`, `file_attachment`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '2018-05-13', 1, 2, 2, 1, 5, '50/3', '2018-05-01', '10.2.3', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(3, NULL, '2018-05-14 07:48:43', '2018-05-14 07:48:43', NULL, NULL, '0000-00-00', 2, 2, 206, 1, 0, '45', '0000-00-00', '123', '', '', '', '', '', '', 1, NULL, NULL),
(4, NULL, '2018-05-14 11:12:33', '2018-05-14 11:12:33', NULL, NULL, '0000-00-00', 2, 2, 206, 1, 0, 'dfsdaff', '0000-00-00', 'safsafsdf', '', 'sdfsd', '', '', '', '', 1, NULL, NULL),
(5, NULL, '2018-05-14 11:15:15', '2018-05-14 11:15:15', NULL, NULL, '0000-00-00', 2, 2, 208, 1, 0, '96', '0000-00-00', 'saf', '', '', '', '', '', '', 1, NULL, NULL),
(6, NULL, '2018-05-14 12:01:45', '2018-05-14 12:01:45', NULL, NULL, '2018-05-14', 4, 2, 206, 1, 0, '89', '2018-05-01', '12.365', '', 'asfaf', 'Description\r\n', '', NULL, '', 1, NULL, NULL),
(7, NULL, '2018-05-14 12:02:07', '2018-05-14 12:02:07', NULL, NULL, '2018-05-14', 4, 2, 206, 1, 0, '89', '2018-05-01', '12.365', '', 'asfaf', 'Description\r\n', '', NULL, '', 1, NULL, NULL),
(8, NULL, '2018-05-14 12:03:03', '2018-05-14 12:03:03', NULL, NULL, '2018-05-14', 4, 2, 206, 1, 0, '89', '2018-05-01', '12.365', '', 'asfaf', 'Description\r\n', '', NULL, '', 1, NULL, NULL),
(9, NULL, '2018-05-15 05:49:25', '2018-05-15 06:53:32', NULL, NULL, '2018-05-15', 11, 2, 206, 1, 0, '12', '2018-05-15', '12954', 'Arrest Place', 'Seize Info', 'Description', 'Damage Info', 'Acquired Info', 'Forensic Report', 1, NULL, NULL),
(10, '2018-05-15 10:23:43', '2018-05-15 08:28:29', '2018-05-15 10:23:43', NULL, NULL, '2018-05-15', 14, 4, 252, 1, 4, '12', '2018-05-02', '4565', 'Arrest Place', 'Seize Info', 'Description', 'Damage Info', 'Acquired Info', 'Forensic Report', 1, 'Remarks', NULL),
(11, NULL, '2018-05-16 10:08:46', '2018-05-16 10:08:46', NULL, NULL, '2018-05-16', 3, 4, 253, 1, 3, 'asdfa', '2018-05-16', 'asdfasdf', '', '', '', '', '', '', 1, '', NULL),
(12, NULL, '2018-05-16 10:17:24', '2018-05-16 10:17:24', NULL, NULL, '2018-05-16', 4, 4, 252, 1, 1, 'asfsad', '2018-05-01', 'sadfd', '', '', '', '', '', '', 1, '', NULL),
(13, NULL, '2018-05-16 10:34:11', '2018-05-16 10:34:11', NULL, NULL, '2018-05-16', 4, 5, 240, 1, 5, 'safasf', '2018-05-16', 'asff', '', '', '', '', '', '', 1, '', NULL),
(14, NULL, '2018-05-16 10:41:43', '2018-05-16 10:41:43', NULL, NULL, '2018-05-16', 10, 3, 201, 1, 4, 'asfasf', '2018-05-02', 'asdfasdf', '', '', '', '', '', '', 1, '', NULL),
(15, NULL, '2018-05-16 11:48:27', '2018-05-19 05:51:01', NULL, 1, '2018-05-16', 3, 3, 201, 1, 3, '45/96', '2018-05-02', '36', '', '', '', '', '', '', 2, 'edit by admin', NULL),
(16, NULL, '2018-05-19 05:54:31', '2018-05-19 05:54:31', 19, NULL, '2018-05-19', 3, 3, 200, 1, 5, 'fasfa', '2018-05-19', 'safasdf', '', '', '', '', '', '', 1, '', NULL),
(17, NULL, '2018-05-19 05:59:07', '2018-05-19 05:59:07', 19, NULL, '2018-05-19', 3, 1, 346, 1, 2, 'sdaf', '2018-05-03', 'asf', '', '', 'sf', '', '', '', 1, '', NULL),
(18, NULL, '2018-05-19 05:59:40', '2018-05-19 05:59:40', 19, NULL, '2018-05-19', 3, 1, 344, 1, 2, 'sadf', '2018-05-10', 'asf', '', '', '', '', '', '', 1, '', NULL),
(19, NULL, '2018-05-19 06:00:03', '2018-05-19 06:00:03', 19, NULL, '2018-05-19', 3, 2, 207, 1, 2, 'sadf', '2018-05-19', 'sadf', '', '', '', '', '', '', 1, '', NULL),
(20, NULL, '2018-05-19 06:07:11', '2018-05-19 06:07:11', 19, NULL, '2018-05-19', 3, 2, 205, 1, 2, 'sadfasf', '2018-05-02', 'asdf', '', '', '', '', '', '', 1, '', NULL),
(21, NULL, '2018-05-19 06:08:29', '2018-05-19 06:08:29', 19, NULL, '2018-05-19', 3, 1, 346, 1, 2, 'sdf', '2018-05-01', 'af', '', '', '', '', '', '', 1, '', NULL),
(22, NULL, '2018-05-19 06:08:40', '2018-05-19 06:08:40', 19, NULL, '2018-05-19', 3, 1, 346, 1, 2, 'sdf', '2018-05-01', 'af', '', '', '', '', '', '', 1, '', NULL),
(23, NULL, '2018-05-19 06:17:47', '2018-05-19 06:17:47', 1, NULL, '2018-05-19', 1, 1, 345, 1, 3, 'sdaf', '2018-05-19', 'asfasf', '', '', 'asf', '', '', '', 2, '', NULL),
(24, NULL, '2018-05-19 06:18:38', '2018-05-19 06:18:38', 1, NULL, '2018-05-19', 1, 2, 206, 1, 3, 'sdaf', '2018-05-19', 'asfasf', '', '', 'asf', '', '', '', 2, '', NULL),
(25, NULL, '2018-05-19 06:22:37', '2018-05-19 06:22:37', 1, NULL, '2018-05-19', 1, 3, 200, 1, 3, 'asfasf', '2018-05-02', 'asf', '', '', '', '', '', '', 2, '', NULL),
(26, NULL, '2018-05-19 06:37:17', '2018-05-19 06:37:17', 1, NULL, '2018-05-19', 1, 1, 345, 1, 3, 'asfasf', '2018-05-02', 'asf', '', '', '', '', '', '', 2, '', NULL),
(27, NULL, '2018-05-19 06:38:18', '2018-05-19 06:38:18', 1, NULL, '2018-05-19', 1, 2, 206, 1, 3, 'asfasf', '2018-05-02', 'asfasfd', '', '', '', '', '', '', 2, '', NULL),
(28, NULL, '2018-05-19 06:38:40', '2018-05-19 06:38:40', 1, NULL, '2018-05-19', 1, 3, 199, 1, 3, 'asdfasf', '2018-05-02', 'asdfasdf', '', '', '', '', '', '', 2, '', NULL),
(29, NULL, '2018-05-19 06:42:59', '2018-05-19 06:42:59', 1, NULL, '2018-05-19', 1, 1, 345, 1, 1, 'asfasfaf', '2018-05-01', 'asfasf', '', '', '', '', '', '', 2, '', NULL),
(30, NULL, '2018-05-19 06:44:00', '2018-05-19 06:44:00', 1, NULL, '2018-05-19', 1, 3, 202, 1, 2, 'safd', '2018-05-01', 'asfa', '', '', '', '', '', '', 2, '', NULL),
(31, NULL, '2018-05-19 06:45:35', '2018-05-19 06:45:35', 1, NULL, '2018-05-19', 3, 1, 345, 1, 2, 'asfasf', '2018-05-02', 'afasfd', '', '', '', '', '', '', 2, '', NULL),
(32, NULL, '2018-05-19 06:45:57', '2018-05-19 06:45:57', 1, NULL, '2018-05-19', 3, 2, 206, 1, 2, 'asfasf', '2018-05-02', 'afasfd', '', '', '', '', '', '', 2, '', NULL),
(33, NULL, '2018-05-19 06:47:16', '2018-05-19 06:47:26', 1, 1, '2018-05-19', 1, 4, 251, 1, 2, 'safasf', '2018-05-02', 'asfasf', '', '', '', '', '', '', 2, 'edtr', NULL),
(34, NULL, '2018-05-19 06:47:57', '2018-05-19 06:47:57', 1, NULL, '2018-05-19', 1, 2, 206, 1, 2, 'asfasfasf', '2018-05-02', 'asdfasf', '', '', '', '', '', '', 2, '', NULL),
(35, NULL, '2018-05-19 08:26:10', '2018-05-20 08:39:42', 1, NULL, '2018-05-19', 1, 2, 207, 1, 2, '2 pic to 4 pic', '2018-05-02', 'asdfsf', '', '', '', '', '', '', 1, '', NULL),
(36, NULL, '2018-05-20 08:56:27', '2018-05-20 08:56:27', 1, NULL, '2018-05-20', 1, 2, 205, 1, 2, 'fsafd', '2018-05-01', 'asdfsaf', '', '', '', '', '', '', 2, '', NULL),
(37, NULL, '2018-05-20 08:58:16', '2018-05-20 08:58:16', 1, NULL, '2018-05-20', 1, 1, 345, 1, 2, 'sdafsaf', '2018-05-01', 'asdf', '', '', '', '', '', '', 2, '', NULL),
(38, NULL, '2018-05-20 09:00:19', '2018-05-20 09:00:19', 1, NULL, '2018-05-20', 1, 1, 345, 1, 2, 'asdf', '2018-05-01', 'asdf', '', '', '', '', '', '', 2, '', NULL),
(39, NULL, '2018-05-20 09:03:28', '2018-05-20 09:03:28', 1, NULL, '2018-05-20', 1, 1, 344, 1, 2, 'asf', '2018-05-01', 'asdf', '', '', '', '', '', '', 2, '', NULL),
(40, NULL, '2018-05-20 09:06:04', '2018-05-20 09:06:04', 1, NULL, '2018-05-20', 1, 2, 206, 1, 2, 'asfasf', '2018-05-01', 'asdf', '', '', '', '', '', '', 2, '', NULL),
(41, NULL, '2018-05-21 05:56:28', '2018-05-21 05:56:28', 1, NULL, '2018-05-21', 1, 2, 206, 1, 3, 'dsfasf', '2018-05-01', 'asdf', '', '', '', '', '', '', 2, '', 'uploads/attachment/2.jpg'),
(42, NULL, '2018-05-21 06:07:19', '2018-05-21 06:07:19', 1, NULL, '2018-05-21', 1, 3, 202, 1, 2, 'afaf', '2018-05-02', 'afasf', '', '', '', '', '', '', 2, '', 'uploads/attachment/4.jpg'),
(43, NULL, '2018-05-21 06:16:11', '2018-05-21 07:00:38', 1, 1, '2018-05-21', 1, 4, 253, 1, 3, '458', '2018-05-01', '12,36', '', '', 'edit', '', '', '', 2, '', 'uploads/attachment/1526886038-49.jpg'),
(44, NULL, '2018-05-22 08:18:48', '2018-05-22 08:18:48', NULL, NULL, '2018-05-22', 1, 5, 242, 1, 15, '22', '2018-05-22', '22', 'aasdf', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 1, 'asdf', NULL),
(45, NULL, '2018-05-22 08:20:53', '2018-05-22 08:20:53', NULL, NULL, '2018-05-22', 1, 5, 241, 1, 12, '23', '2018-05-22', '25', 'asdfasdf', 'asdfasd', 'asdfas', 'dfasdf', 'asdfasdf', 'asdf', 1, 'asdf', NULL),
(46, NULL, '2018-06-02 06:00:37', '2018-06-02 06:00:37', 35, NULL, '2018-06-02', 9, 5, 240, 1, 5, '562', '2018-06-01', '123.5246.231', '', '', 'dkfhgfdkjkdf dfkgkdfjjgk kdfgkjdfk kdfgkjdf kdjfgkjdfgk kdjfgkjdfngkj kdjfgjkdfkn kjdfhgjkdk kjdfgjkndfkn dkfjnhgkd kdfjgkdjfngk kdjfnkjgndk kjdfnjkngjk', 'Not Applicable', 'dfgdf dfg dfgdf  dg dfg', 'dfgdfg gdfgdfg dfgdfg', 1, '', 'uploads/attachment/1527919237-40.jpg'),
(47, NULL, '2018-06-02 07:34:02', '2018-06-02 07:34:02', 35, NULL, '2018-06-02', 9, 1, 344, 1, 0, 'safasf', '2018-06-02', 'asdfsa', '', '', '', '', '', '', 1, '', 'uploads/attachment/1527924842-27.jpg'),
(48, NULL, '2018-06-02 08:10:42', '2018-06-02 08:14:37', 1, 1, '2018-06-02', 1, 1, 345, 1, 2, '678', '2018-06-02', 'asfdsaf', '', '', '', '', '', '', 2, '', NULL),
(49, NULL, '2018-06-02 08:15:56', '2018-06-02 08:16:26', 1, 1, '2018-06-02', 1, 1, 345, 1, 0, 'asdfasf', '2018-06-02', 'asdfasdf', '', '', '', '', 'Acquired Info edit', '', 2, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disposal_record_details`
--

CREATE TABLE `disposal_record_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `disposal_record_id` int(10) UNSIGNED NOT NULL,
  `ied_type_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `disposal_record_details`
--

INSERT INTO `disposal_record_details` (`id`, `disposal_record_id`, `ied_type_id`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 44, 1, '15.00', '2018-05-22 08:18:48', '2018-05-22 08:18:48', NULL),
(2, 44, 2, '5.00', '2018-05-22 08:18:48', '2018-05-22 08:18:48', NULL),
(3, 44, 3, '3.00', '2018-05-22 08:18:48', '2018-05-22 08:18:48', NULL),
(4, 45, 1, '5.00', '2018-05-22 08:20:53', '2018-05-22 08:20:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disposal_record_images`
--

CREATE TABLE `disposal_record_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `disposal_record_id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=save,2=publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `disposal_record_images`
--

INSERT INTO `disposal_record_images` (`id`, `disposal_record_id`, `image_path`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 'uploads/1.jpg', 1, '2018-05-16 10:08:46', '2018-05-16 10:08:46', NULL),
(2, 11, 'uploads/4.jpg', 1, '2018-05-16 10:08:46', '2018-05-16 10:08:46', NULL),
(3, 12, 'uploads/1.jpg', 1, '2018-05-16 10:17:25', '2018-05-16 10:17:25', NULL),
(4, 12, 'uploads/4.jpg', 1, '2018-05-16 10:17:25', '2018-05-16 10:17:25', NULL),
(5, 13, 'uploads/13/2.jpg', 2, '2018-05-16 10:34:11', '2018-05-16 10:34:11', NULL),
(6, 13, 'uploads/13/3.jpg', 2, '2018-05-16 10:34:11', '2018-05-16 10:34:11', NULL),
(7, 13, 'uploads/14/1.jpg', 2, '2018-05-16 10:41:43', '2018-05-16 10:41:43', NULL),
(8, 13, 'uploads/14/4.jpg', 2, '2018-05-16 10:41:43', '2018-05-16 10:41:43', NULL),
(9, 15, 'uploads/15/2.jpg', 1, '2018-05-16 11:48:27', '2018-05-16 11:48:27', NULL),
(10, 15, 'uploads/15/3.jpg', 1, '2018-05-16 11:48:27', '2018-05-16 11:48:27', NULL),
(11, 23, 'uploads/23/3.jpg', 1, '2018-05-19 06:17:47', '2018-05-19 06:17:47', NULL),
(12, 34, 'uploads/34/3.jpg', 1, '2018-05-19 06:47:57', '2018-05-21 07:55:42', '2018-05-21 07:55:42'),
(13, 35, 'uploads/35/1.jpg', 1, '2018-05-19 08:26:10', '2018-05-19 08:26:10', NULL),
(14, 35, 'uploads/35/4.jpg', 1, '2018-05-19 08:26:10', '2018-05-20 08:30:00', '2018-05-20 08:30:00'),
(15, 35, 'uploads/35/2.jpg', 1, '2018-05-19 08:54:38', '2018-05-20 08:36:02', '2018-05-20 08:36:02'),
(16, 35, 'uploads/35/3.jpg', 1, '2018-05-19 08:54:38', '2018-05-20 08:35:22', '2018-05-20 08:35:22'),
(17, 35, 'uploads/35/1.jpg', 1, '2018-05-20 08:39:42', '2018-05-20 08:40:34', '2018-05-20 08:40:34'),
(18, 35, 'uploads/35/2.jpg', 1, '2018-05-20 08:39:42', '2018-05-20 08:39:42', NULL),
(19, 35, 'uploads/35/3.jpg', 1, '2018-05-20 08:39:42', '2018-05-20 08:39:42', NULL),
(20, 35, 'uploads/35/4.jpg', 1, '2018-05-20 08:39:42', '2018-05-20 08:39:42', NULL),
(21, 37, 'uploads/37/1.jpg', 1, '2018-05-20 08:58:16', '2018-05-20 08:58:16', NULL),
(22, 39, 'uploads/39/1.jpg', 1, '2018-05-20 09:03:28', '2018-05-20 09:03:28', NULL),
(23, 43, 'uploads/43/1526883371-45.jpg', 1, '2018-05-21 06:16:11', '2018-05-21 06:16:11', NULL),
(24, 43, 'uploads/43/1526883371-24.jpg', 1, '2018-05-21 06:16:11', '2018-05-21 09:18:31', '2018-05-21 09:18:31'),
(25, 45, 'uploads/45/item-01.png', 1, '2018-05-22 08:20:53', '2018-06-04 03:02:32', '2018-06-04 03:02:32'),
(26, 46, 'uploads/46/1527919237-52.jpg', 1, '2018-06-02 06:00:37', '2018-06-02 06:00:37', NULL),
(27, 46, 'uploads/46/1527919237-89.jpg', 1, '2018-06-02 06:00:37', '2018-06-02 06:00:37', NULL),
(28, 46, 'uploads/46/1527919237-19.jpg', 1, '2018-06-02 06:00:37', '2018-06-02 06:00:37', NULL),
(29, 46, 'uploads/46/1527919237-94.jpg', 1, '2018-06-02 06:00:37', '2018-06-02 06:00:37', NULL),
(30, 46, 'uploads/46/1527919237-77.jpg', 1, '2018-06-02 06:00:37', '2018-06-02 06:00:37', NULL),
(31, 46, 'uploads/46/1527919238-42.jpg', 1, '2018-06-02 06:00:38', '2018-06-02 06:00:38', NULL),
(32, 47, 'uploads/47/1527924842-10.jpg', 1, '2018-06-02 07:34:02', '2018-06-02 07:34:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `division_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `dis_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `deleted_at`, `created_at`, `updated_at`, `division_id`, `dis_name`) VALUES
(1, NULL, '2017-04-27 05:09:58', '2018-05-23 04:02:26', 8, 'Mymensingh'),
(2, NULL, '2017-04-27 05:09:58', '2018-05-23 04:02:44', 1, 'Gopalganj'),
(3, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Gazipur'),
(4, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Rajbari'),
(5, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Narayanganj'),
(6, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Faridpur'),
(7, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Dhaka'),
(8, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Kishoreganj'),
(9, NULL, '2017-04-27 05:09:58', '2017-04-27 08:39:18', 8, 'Jamalpur'),
(10, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Shariatpur'),
(11, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Madaripur'),
(12, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Munshiganj'),
(13, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Tangail'),
(14, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Manikganj'),
(15, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 1, 'Narsingdi'),
(16, NULL, '2017-04-27 05:09:58', '2017-04-27 08:38:00', 8, 'Sherpur'),
(17, NULL, '2017-04-27 05:09:58', '2017-04-27 08:37:38', 8, 'Netrokona'),
(18, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 2, 'Khagrachhari'),
(19, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 2, 'Lakshmipur'),
(20, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 2, 'Noakhali'),
(21, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 2, 'Chandpur'),
(22, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 2, 'Chittagong'),
(23, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 2, 'Rangamati'),
(24, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 2, 'Bandarban'),
(25, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 2, 'Feni'),
(26, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 2, 'Brahmanbaria'),
(27, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 2, 'Comilla'),
(28, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 2, 'Cox\'s Bazar'),
(29, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 3, 'Sirajganj'),
(30, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 3, 'Naogaon'),
(31, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 3, 'Natore'),
(32, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 3, 'Chapai Nawabganj'),
(33, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 3, 'Bogra'),
(34, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 3, 'Joypurhat'),
(35, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 3, 'Pabna'),
(36, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 3, 'Rajshahi'),
(37, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 4, 'Narail'),
(38, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 4, 'Jhenaidah'),
(39, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 4, 'Satkhira'),
(40, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 4, 'Jessore'),
(41, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 4, 'Meherpur'),
(42, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 4, 'Magura'),
(43, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 4, 'Bagerhat'),
(44, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 4, 'Kushtia'),
(45, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 4, 'Chuadanga'),
(46, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 4, 'Khulna'),
(47, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 5, 'Habiganj'),
(48, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 5, 'Sunamganj'),
(49, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 5, 'Sylhet'),
(50, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 5, 'Moulavibazar'),
(51, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 6, 'Barisal'),
(52, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 6, 'Bhola'),
(53, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 6, 'Barguna'),
(54, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 6, 'Pirojpur'),
(55, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 6, 'Patuakhali'),
(56, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 6, 'Jhalakathi'),
(57, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 7, 'Lalmonirhat'),
(58, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 7, 'Nilphamari'),
(59, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 7, 'Kurigram'),
(60, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 7, 'Panchagarh'),
(61, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 7, 'Dinajpur'),
(62, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 7, 'Rangpur'),
(63, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 7, 'Gaibandha'),
(64, NULL, '2017-04-27 05:09:58', '2017-04-27 05:09:58', 7, 'Thakurgaon');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `div_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `deleted_at`, `created_at`, `updated_at`, `div_name`) VALUES
(1, NULL, '2017-04-27 04:47:03', '2017-04-27 04:47:03', 'Dhaka'),
(2, NULL, '2017-04-27 04:47:03', '2017-04-27 04:47:03', 'Chittagong'),
(3, NULL, '2017-04-27 04:47:03', '2017-04-27 04:47:03', 'Rajshahi'),
(4, NULL, '2017-04-27 04:47:03', '2017-04-27 04:47:03', 'Khulna'),
(5, NULL, '2017-04-27 04:47:03', '2017-04-27 04:47:03', 'Sylhet'),
(6, NULL, '2017-04-27 04:47:03', '2017-04-27 04:47:03', 'Barisal'),
(7, NULL, '2017-04-27 04:47:03', '2017-04-27 04:47:03', 'Rangpur'),
(8, NULL, '2017-04-27 08:25:11', '2017-04-27 08:25:11', 'Mymensingh');

-- --------------------------------------------------------

--
-- Table structure for table `duty_roster_policies`
--

CREATE TABLE `duty_roster_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `from_time` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `to_time` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `duty_roster_policies`
--

INSERT INTO `duty_roster_policies` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `from_time`, `to_time`) VALUES
(1, NULL, '2017-06-19 08:15:33', '2017-06-21 04:06:28', 'Night', '1900', '0100'),
(2, NULL, '2017-06-19 08:17:53', '2017-06-21 04:06:45', 'Mid Night', '0100', '0700'),
(3, NULL, '2017-06-19 08:25:13', '2017-06-19 08:25:13', 'Morning', '0700', '1300'),
(4, NULL, '2017-06-19 08:25:43', '2017-06-19 08:25:43', 'Noon', '1300', '1900');

-- --------------------------------------------------------

--
-- Table structure for table `duty_types`
--

CREATE TABLE `duty_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `duty_type` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dtype_short_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `battalion_id` int(10) UNSIGNED DEFAULT NULL,
  `wing_id` int(10) UNSIGNED DEFAULT NULL,
  `arms_ammunition` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `duty_types`
--

INSERT INTO `duty_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `duty_type`, `dtype_short_code`, `battalion_id`, `wing_id`, `arms_ammunition`) VALUES
(1, '2017-04-23 10:28:26', '2017-03-12 09:14:31', '2017-04-23 10:28:26', 'Main Gate Duty', 'MGD', NULL, NULL, ''),
(2, NULL, '2017-04-22 08:31:22', '2017-04-22 08:32:07', 'SWS Cent On Duty', 'SWSCOND', NULL, NULL, ''),
(3, NULL, '2017-04-22 08:31:54', '2017-04-22 08:31:54', 'SWS Cent Off Duty', 'SWSCOFD', NULL, NULL, ''),
(4, NULL, '2017-04-22 08:33:01', '2017-04-22 08:33:01', 'Barta On Duty', 'BOND', NULL, NULL, ''),
(5, NULL, '2017-04-22 08:35:01', '2017-04-22 08:35:01', 'Barta Off Duty', 'BOFD', NULL, NULL, ''),
(6, NULL, '2017-04-22 08:35:31', '2017-04-22 08:36:09', 'Fax On Duty', 'FXOND', NULL, NULL, ''),
(7, NULL, '2017-04-22 08:35:57', '2017-04-22 08:35:57', 'Fax Off Duty', 'FXOFD', NULL, NULL, ''),
(8, NULL, '2017-04-22 08:36:41', '2017-04-22 08:36:41', 'MIS On Duty', 'MISOND', 1, NULL, ''),
(9, NULL, '2017-04-22 08:36:59', '2017-04-22 08:36:59', 'MIS Off Duty', 'MISOFD', NULL, NULL, ''),
(10, NULL, '2017-04-22 08:37:36', '2017-04-22 08:37:36', 'DR', 'DR', NULL, NULL, ''),
(11, NULL, '2017-04-22 08:37:51', '2017-06-20 02:36:44', 'MT Duty', 'MTD', 2, 14, ''),
(12, '2017-04-23 10:27:31', '2017-04-22 08:38:18', '2017-04-23 10:27:31', 'P/L', 'P/L', NULL, NULL, ''),
(13, '2017-04-23 10:27:28', '2017-04-22 08:38:43', '2017-04-23 10:27:28', 'C/L', 'C/L', NULL, NULL, ''),
(14, '2017-04-23 10:27:25', '2017-04-22 08:39:00', '2017-04-23 10:27:25', 'M/L', 'M/L', NULL, NULL, ''),
(15, '2017-04-23 10:27:18', '2017-04-23 10:23:36', '2017-04-23 10:27:18', 'Link Site', 'Link Site', NULL, NULL, ''),
(16, NULL, '2017-06-20 08:01:44', '2017-06-20 08:01:44', 'Gate 1', 'Gate 1', 2, 12, ''),
(17, NULL, '2017-06-22 03:01:17', '2017-06-22 03:03:37', 'Main Gate 1', 'MG1', NULL, NULL, '1*5mm\r\n2*6mm');

-- --------------------------------------------------------

--
-- Table structure for table `education_infos`
--

CREATE TABLE `education_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL COMMENT 'Foreign Key: employees_info.emp_id',
  `course_id` int(10) NOT NULL COMMENT 'Foreign Key: courses.course_id',
  `board` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institute` text COLLATE utf8_unicode_ci,
  `major_subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passing_year` int(4) DEFAULT NULL,
  `result` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edu_type` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `education_infos`
--

INSERT INTO `education_infos` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `course_id`, `board`, `institute`, `major_subject`, `passing_year`, `result`, `edu_type`) VALUES
(1, NULL, '2017-05-25 06:18:46', '2017-05-25 06:18:46', 2, 1, 'Dhaka Board', 'Adamjee Cantonment School', 'Science', 2006, '4.69', NULL),
(2, NULL, '2017-08-14 11:01:28', '2017-08-14 11:01:28', 10156, 1, 'Dhaka', NULL, NULL, NULL, NULL, NULL),
(3, NULL, '2018-07-04 04:17:53', '2018-07-04 04:17:53', 10160, 1, 'Rajshahi', 'Jadur Char High School', 'Science', 2005, '4.00', 'General'),
(4, NULL, '2018-07-04 04:18:26', '2018-07-04 04:18:26', 10160, 2, 'Rajshahi', 'Rowmari Collage', 'Science', 2007, '4.00', 'General'),
(5, NULL, '2018-07-04 04:19:10', '2018-07-04 04:19:10', 10160, 9, NULL, 'Begum Rokeya University, Rangpur', 'Computer Science & Engineering', 2015, '3.1416', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Super Admin', 'Male', '8888888888', '', 'akebulr@gmail.com', 1, 'Dhaka', 'House No. #85, Road No. #04, Block No. #B, Apartment No. #B5 & #C4, Banani', 'About user / biography', '1988-02-21', '2017-01-21', '2017-01-21', '0.000', NULL, '2017-02-19 02:35:37', '2017-02-22 06:17:23'),
(2, 'Rahim', 'CLK', 'Male', '01458250565', '025584741055', 'rahim@gmail.com', 1, 'Dhaka', 'sdaf', 'asdf', '1990-01-01', '1970-01-01', '1990-01-01', '50000.000', NULL, '2017-03-04 00:27:29', '2017-03-04 00:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `employees_info`
--

CREATE TABLE `employees_info` (
  `emp_id` int(10) NOT NULL,
  `rab_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'after joining rab',
  `personal_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank_id` int(10) UNSIGNED DEFAULT NULL,
  `mother_force_id` int(10) UNSIGNED DEFAULT NULL,
  `core_id` int(10) UNSIGNED DEFAULT NULL,
  `trade_id` int(10) UNSIGNED DEFAULT NULL,
  `mother_unit_id` int(10) UNSIGNED DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `emp_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_order_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_order_date` datetime DEFAULT NULL,
  `possible_join_date` datetime DEFAULT NULL,
  `joining_date` datetime DEFAULT NULL,
  `join_remarks` text COLLATE utf8_unicode_ci,
  `replacement_emp_id` int(10) UNSIGNED DEFAULT NULL,
  `release_order_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `release_order_date` datetime DEFAULT NULL,
  `possible_release_date` datetime DEFAULT NULL,
  `release_date` datetime DEFAULT NULL,
  `release_remarks` text COLLATE utf8_unicode_ci,
  `release_mother_unit_id` int(10) UNSIGNED DEFAULT NULL,
  `posting_rec_id` int(10) DEFAULT NULL COMMENT 'Current Posting Record',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `family_man` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=not family man,2=family man',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees_info`
--

INSERT INTO `employees_info` (`emp_id`, `rab_id`, `personal_no`, `rank_id`, `mother_force_id`, `core_id`, `trade_id`, `mother_unit_id`, `designation_id`, `emp_name`, `joining_order_no`, `joining_order_date`, `possible_join_date`, `joining_date`, `join_remarks`, `replacement_emp_id`, `release_order_no`, `release_order_date`, `possible_release_date`, `release_date`, `release_remarks`, `release_mother_unit_id`, `posting_rec_id`, `user_id`, `family_man`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'RAB-1234', 'P123456', 18, 1, 1, 6, 1, 19, 'Mofajjal Hosain', 'Join 123', '2017-05-21 00:00:00', '2017-05-21 00:00:00', '2017-05-21 00:00:00', NULL, 2, '161/7', '2018-01-01 00:00:00', NULL, NULL, NULL, 1, 1, 19, 1, '2017-05-21 16:40:55', '2018-01-01 16:51:48', NULL),
(2, 'RAB-B0001', 'BA-20172505', 3, 1, 3, 5, 4, 4, 'Mustafiz Rahman', 'JO-01', '2017-05-25 00:00:00', '2017-05-25 00:00:00', '2017-05-25 00:00:00', NULL, NULL, NULL, '2017-06-06 00:00:00', '2017-06-06 00:00:00', '2017-06-06 00:00:00', NULL, 4, 14, NULL, 2, '2017-05-25 12:00:51', '2018-05-24 14:41:22', NULL),
(3, 'Rab-12', '0123', 31, 1, 1, 5, 2, 34, 'Rafiq', 'ooop', '2017-06-08 00:00:00', '2017-06-08 00:00:00', '2017-06-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 27, 1, '2017-06-08 09:29:44', '2018-06-02 13:41:07', NULL),
(4, 'RAB-123456', '1234569', 19, 1, 1, 1, 2, 19, 'MD. Rasid', '1254555', '2017-06-10 00:00:00', '2017-06-10 00:00:00', '2017-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 28, 2, '2017-06-10 08:32:56', '2018-06-02 13:42:23', NULL),
(42, 'RAB-0030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(10132, 'Rab9', '1235', 21, 1, 1, NULL, 1, 20, 'Rahimul', NULL, '2017-06-12 00:00:00', '2017-06-12 00:00:00', '2017-06-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2017-06-10 14:56:46', '2018-05-24 15:09:18', NULL),
(10133, 'RAB456', '896514', 22, 1, 1, NULL, 1, 20, 'Md. kuddus', 'sadf', '2017-06-10 00:00:00', '2017-06-10 00:00:00', '2017-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 26, 1, '2017-06-10 14:57:57', '2018-06-02 13:32:52', NULL),
(10134, 'Rab-12345678', '123456', 22, 1, 1, NULL, 1, 20, 'Md Rafiq Hasan', 'asfd', '2017-06-10 00:00:00', '2017-06-10 00:00:00', '2017-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 25, 2, '2017-06-10 16:00:59', '2018-06-02 11:37:51', NULL),
(10143, 'RAB-1', '125963', 14, 4, NULL, NULL, NULL, NULL, 'James', NULL, NULL, NULL, '2017-06-14 00:00:00', NULL, 1, '161/7', '2018-01-01 00:00:00', NULL, NULL, NULL, NULL, 19, 23, 1, NULL, '2018-01-01 16:54:53', NULL),
(10144, 'RAB-2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(10145, 'RAB-3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(10146, 'RAB-4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(10147, 'RAB-5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(10148, 'RAB-6', '45645564', NULL, 1, NULL, 1, NULL, NULL, NULL, 'hjhjghj', '2018-07-04 00:00:00', '2018-07-04 00:00:00', '2018-07-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-07-04 09:49:18', NULL),
(10149, 'RAB-7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-06-19 09:17:51', '2017-06-19 09:17:51'),
(10150, 'RAB-8', 'rab83453454', 6, 1, 2, NULL, 5, 8, 'RAB8 Commander', 'kjdfkkdfkdkdfdkf', '2018-01-23 00:00:00', '2018-01-27 00:00:00', '2018-01-27 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 24, 1, NULL, '2018-01-27 12:33:44', NULL),
(10151, 'RAB-2356', '15968', 22, 6, NULL, NULL, NULL, 20, 'Ayub Ali', NULL, NULL, NULL, '2017-06-14 00:00:00', NULL, 10143, NULL, NULL, NULL, NULL, NULL, NULL, 13, 20, 1, NULL, '2018-01-01 16:54:53', NULL),
(10152, 'RAB-munna', 'N-123456', 1, 1, 1, NULL, 1, 3, 'Kalimuddin', NULL, NULL, NULL, '2017-06-14 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-11-09 10:18:19', NULL),
(10153, 'rab-0147', '782017333', 3, 1, 1, 5, 1, 4, 'Karimul hassan', NULL, '2017-07-08 00:00:00', '2017-07-08 00:00:00', '2017-07-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, 2, '2017-07-08 15:34:40', '2018-05-24 15:01:42', NULL),
(10154, 'RAB-HQ001', 'BA-20170715', 1, 1, NULL, 3, 1, 3, 'Forhad Hossain', 'JO-20170715', '2017-07-01 00:00:00', '2017-07-02 00:00:00', '2017-07-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 15, 22, 2, '2017-07-15 11:53:03', '2018-05-29 14:47:01', NULL),
(10155, NULL, 'BR', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-07-15 12:17:39', '2018-05-29 15:11:47', NULL),
(10156, '123123', '123123123', 3, 1, 1, 6, 2, 4, 'John Doe', '23332132312323123', '2017-07-12 00:00:00', '2017-07-15 00:00:00', '2017-07-15 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 21, 1, '2017-07-15 15:07:44', '2017-10-28 16:45:23', '2017-10-28 16:45:23'),
(10157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-08-01 12:08:32', '2017-08-01 12:08:39', '2017-08-01 12:08:39'),
(10158, 'rab_basic_training_123', 'rab basic training', 24, 1, 1, 5, 1, 23, 'Munna rab basic training', 'asdf', '2017-08-07 00:00:00', '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-08-07 09:26:13', '2017-08-12 17:00:38', '2017-08-12 17:00:38'),
(10159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-07-04 09:49:30', '2018-07-04 09:49:30', NULL),
(10160, 'RAB-805038', '14258741', 23, 1, 1, 5, 1, 21, 'Md. Emdadul Huq', '365214', '2018-07-04 00:00:00', '2018-07-04 00:00:00', '2018-07-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 29, 1, '2018-07-04 09:58:11', '2018-07-23 14:10:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `family_informations`
--

CREATE TABLE `family_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `dob` date DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` text COLLATE utf8_unicode_ci,
  `occupation` text COLLATE utf8_unicode_ci,
  `contact_no` text COLLATE utf8_unicode_ci,
  `address` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation_id` int(10) UNSIGNED NOT NULL,
  `bn_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `upazilla_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `family_informations`
--

INSERT INTO `family_informations` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `name`, `dob`, `marital_status`, `nid`, `education`, `occupation`, `contact_no`, `address`, `relation_id`, `bn_name`, `division_id`, `district_id`, `upazilla_id`) VALUES
(1, NULL, '2017-05-25 06:18:14', '2017-05-25 06:18:14', 2, 'MD. Iftekhar Ahmed', '1973-04-06', 'Married', '1131313213', NULL, 'Business', NULL, NULL, 1, NULL, 1, 7, 169),
(2, NULL, '2017-06-10 10:25:43', '2017-06-10 10:25:43', 10133, 'Rahima f', '2017-06-10', 'Married', '1255', NULL, NULL, NULL, NULL, 3, NULL, 2, 18, NULL),
(3, NULL, '2017-06-12 04:55:14', '2017-06-12 04:55:14', 10132, 'Nabila', '2017-06-12', 'Married', NULL, NULL, NULL, NULL, NULL, 3, NULL, 3, 30, 390),
(4, NULL, '2017-06-19 04:39:37', '2017-06-19 04:39:37', 10152, 'asf', '0000-00-00', 'Married', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(5, NULL, '2017-08-14 10:20:37', '2017-08-14 10:22:12', 10156, 'Alex', '2017-08-14', 'Unmarried', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(6, NULL, '2017-08-14 10:27:55', '2017-08-14 10:27:55', 10156, 'Ellie', '2017-08-02', 'Unmarried', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(7, NULL, '2018-07-04 04:12:13', '2018-07-04 04:12:13', 10160, 'Md. Abdur Rahman', '1970-02-25', 'Married', '7854693214', NULL, 'Farmar', '01728581568', 'Village: barbandha, Post: Jadurchar', 1, NULL, 7, 59, 466),
(8, NULL, '2018-07-04 04:14:00', '2018-07-04 04:14:00', 10160, 'Mst. Rowshonara Begum', '1975-03-18', 'Married', '258741369', NULL, NULL, '0172581536', NULL, 2, NULL, 7, 59, 466),
(9, NULL, '2018-07-04 04:15:53', '2018-07-04 04:15:53', 10160, 'Mt. Shirin Suntana', '1997-05-15', 'Married', '01258741369', 'B.Sc(Hon\'s) in Bangla', NULL, '01728581568', NULL, 3, NULL, 7, 59, 466),
(10, NULL, '2018-07-04 04:17:04', '2018-07-04 04:17:04', 10160, 'Md. Imtiaz Ahmed', '2005-02-18', 'Unmarried', NULL, NULL, NULL, NULL, NULL, 4, NULL, 7, 59, 466);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_types`
--

CREATE TABLE `fuel_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fuel_type` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fuel_munit` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fuel_types`
--

INSERT INTO `fuel_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `fuel_type`, `fuel_munit`) VALUES
(1, NULL, '2017-04-26 09:58:14', '2017-04-26 09:58:14', 'CNG', 'm3'),
(2, NULL, '2017-04-26 09:58:31', '2017-04-26 09:59:12', 'Petrol', 'Liter'),
(3, NULL, '2017-04-26 09:58:54', '2017-04-26 09:58:54', 'Disel', 'Liter');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_admission_infos`
--

CREATE TABLE `hospital_admission_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `posting_record_id` int(10) NOT NULL COMMENT 'posting record id',
  `disease_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admission_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discharge_date` timestamp NULL DEFAULT NULL,
  `hospital_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disposal` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hospital_admission_infos`
--

INSERT INTO `hospital_admission_infos` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `posting_record_id`, `disease_name`, `admission_date`, `discharge_date`, `hospital_name`, `disposal`) VALUES
(1, NULL, '2017-05-25 06:32:45', '2017-05-25 06:32:45', 2, 0, 'Fever', '2017-05-12 18:00:00', '2017-05-24 19:00:00', 'CMH', NULL),
(8, NULL, '2017-10-28 09:34:43', '2017-10-28 09:51:07', 10143, 0, 'Cholera', '2017-10-28 18:00:00', '2017-10-31 18:00:00', 'Dhaka Medical', NULL),
(10, NULL, '2017-10-28 10:20:55', '2017-10-28 10:20:55', 10151, 13, 'Faver', '2017-10-26 18:00:00', '2017-10-28 18:00:00', 'Dhaka Medical', 'asdf'),
(11, NULL, '2018-06-09 02:03:46', '2018-06-09 02:11:34', 4, 3, 'Fever', '2018-07-17 18:00:00', '2018-07-20 18:00:00', 'CMH', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ied_types`
--

CREATE TABLE `ied_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ied_types`
--

INSERT INTO `ied_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `type_name`) VALUES
(1, NULL, '2018-05-12 04:56:26', '2018-05-12 04:56:26', 'Grenade'),
(2, NULL, '2018-05-13 09:22:09', '2018-05-13 09:22:09', 'Suicidal Vest'),
(3, NULL, '2018-05-13 09:27:27', '2018-05-13 09:27:27', 'Cocktail');

-- --------------------------------------------------------

--
-- Table structure for table `increment_infos`
--

CREATE TABLE `increment_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `increment_type` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `increment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `increment_infos`
--

INSERT INTO `increment_infos` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `increment_type`, `increment_date`) VALUES
(1, NULL, '2017-05-25 06:35:46', '2017-05-25 06:35:46', 2, 1, '2017-05-27'),
(2, NULL, '2018-01-04 07:44:15', '2018-01-04 07:44:46', 1, 1, '2017-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `increment_types`
--

CREATE TABLE `increment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `increment_type` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `increment_types`
--

INSERT INTO `increment_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `increment_type`) VALUES
(1, NULL, '2017-04-02 05:30:21', '2017-04-02 05:30:21', 'Annual'),
(2, NULL, '2017-04-02 05:30:43', '2017-05-21 11:45:18', 'Temporary');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_damage_infos`
--

CREATE TABLE `inventory_damage_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `damage_date` date NOT NULL,
  `committee_members` text COLLATE utf8_unicode_ci,
  `damage_reason` text COLLATE utf8_unicode_ci,
  `organization_store_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory_damage_infos`
--

INSERT INTO `inventory_damage_infos` (`id`, `reference_no`, `damage_date`, `committee_members`, `damage_reason`, `organization_store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'asfasf', '2017-08-10', 'Committee Members', 'Damage Reasons\r\nDamage Reasons', 9, 1, NULL, '2017-08-10 09:52:27', '2017-08-10 10:42:40', '2017-08-10 10:42:40'),
(2, 'asfasf', '2017-08-10', 'Committee Members\r\nCommittee Members\r\nedit\r\nsdafasdf', 'Damage Reasons\r\nDamage Reasons\r\nedit', 9, 1, 1, '2017-08-10 10:46:05', '2017-08-10 12:29:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_damage_items`
--

CREATE TABLE `inventory_damage_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `inventory_damage_info_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `mm_unit_id` int(10) UNSIGNED NOT NULL,
  `damage_qty` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory_damage_items`
--

INSERT INTO `inventory_damage_items` (`id`, `inventory_damage_info_id`, `item_id`, `mm_unit_id`, `damage_qty`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 1, '1.00', '2017-08-10 09:52:27', '2017-08-10 10:41:41', '2017-08-10 10:41:41'),
(2, 1, 5, 1, '2.00', '2017-08-10 10:41:42', '2017-08-10 10:42:40', '2017-08-10 10:42:40'),
(3, 2, 6, 1, '2.00', '2017-08-10 10:46:05', '2017-08-10 10:47:24', '2017-08-10 10:47:24'),
(4, 2, 5, 1, '1.00', '2017-08-10 10:46:05', '2017-08-10 10:47:24', '2017-08-10 10:47:24'),
(5, 2, 6, 1, '3.00', '2017-08-10 10:47:24', '2017-08-10 11:51:21', '2017-08-10 11:51:21'),
(6, 2, 5, 1, '5.00', '2017-08-10 10:47:24', '2017-08-10 11:51:21', '2017-08-10 11:51:21'),
(7, 2, 6, 1, '3.00', '2017-08-10 11:51:22', '2017-08-10 12:29:09', '2017-08-10 12:29:09'),
(8, 2, 5, 1, '5.00', '2017-08-10 11:51:22', '2017-08-10 12:29:09', '2017-08-10 12:29:09'),
(9, 2, 6, 1, '3.00', '2017-08-10 12:29:09', '2017-08-10 12:29:09', NULL),
(10, 2, 5, 1, '5.00', '2017-08-10 12:29:10', '2017-08-10 12:29:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_opening_balance`
--

CREATE TABLE `inventory_opening_balance` (
  `id` int(10) UNSIGNED NOT NULL,
  `organization_store_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `svc_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unsvc_qty` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'unsvc_qty=repairable_qty+unrepairable_qty',
  `repairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unrepairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `damage_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `private_svc_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `private_unsvc_qty` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'private_unsvc_qty=private_repairable_qty+private_unrepairable_qty',
  `private_repairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `private_unrepairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `private_damage_qty` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issue_infos`
--

CREATE TABLE `issue_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `issue_type` tinyint(4) NOT NULL COMMENT '1=personal,2=store to store,3=repair,4=purchase return, 5 = previous issue,6=Organization issue, 7 = other''s issue',
  `issue_date` date NOT NULL,
  `issue_voucher_no` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `requisition_id` int(10) UNSIGNED DEFAULT NULL,
  `organization_store_id` int(10) UNSIGNED DEFAULT NULL,
  `to_organization_store_id` int(10) UNSIGNED DEFAULT NULL,
  `issue_to_employee_id` int(11) DEFAULT NULL,
  `recipient_id` int(10) DEFAULT NULL COMMENT 'FK with posting_record table of posting_rec_id',
  `issue_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_battalion_id` int(10) UNSIGNED DEFAULT NULL,
  `to_wing_id` int(10) UNSIGNED DEFAULT NULL,
  `to_branch_id` int(10) UNSIGNED DEFAULT NULL,
  `to_sub_branch_id` int(10) UNSIGNED DEFAULT NULL,
  `to_section_id` int(10) UNSIGNED DEFAULT NULL,
  `to_sub_section_id` int(10) UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `created_by` int(10) NOT NULL COMMENT 'FK with posting_record table of posting_rec_id',
  `updated_by` int(10) DEFAULT NULL COMMENT 'FK with posting_record table of posting_rec_id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `issue_infos`
--

INSERT INTO `issue_infos` (`id`, `issue_type`, `issue_date`, `issue_voucher_no`, `requisition_id`, `organization_store_id`, `to_organization_store_id`, `issue_to_employee_id`, `recipient_id`, `issue_to`, `to_battalion_id`, `to_wing_id`, `to_branch_id`, `to_sub_branch_id`, `to_section_id`, `to_sub_section_id`, `remarks`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '2017-07-12', 'SI1', NULL, 1, 5, NULL, 10154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-07-12 07:20:37', '2017-07-12 10:11:10', NULL),
(2, 2, '2017-07-22', '11', NULL, 1, 1, NULL, 10154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-07-22 07:03:15', '2017-07-22 08:23:19', NULL),
(3, 1, '2017-07-16', '33', NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-07-22 11:16:50', '2017-07-22 11:16:50', NULL),
(4, 2, '2017-08-01', 'v01', NULL, 9, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-01 06:47:57', '2017-08-01 06:47:57', NULL),
(11, 1, '2017-08-05', '1452', NULL, 9, 9, NULL, 10154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-05 09:14:23', '2017-08-05 09:14:23', NULL),
(12, 2, '2017-08-05', 'test-025', NULL, 9, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-05 09:47:41', '2017-08-05 09:47:41', NULL),
(13, 1, '2017-08-05', 'gfhgfh', NULL, 9, 9, NULL, 10151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-05 11:40:59', '2017-08-05 11:40:59', NULL),
(14, 1, '2017-08-05', 'dfgfg', NULL, 9, 9, NULL, 10154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-05 11:41:36', '2017-08-05 11:41:36', NULL),
(15, 1, '2017-07-08', 'safasfd', NULL, 9, 9, NULL, 10151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-08 12:23:00', '2017-08-08 12:23:00', NULL),
(16, 1, '2017-08-09', 'pre_test01', NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-09 06:22:39', '2017-08-09 08:00:35', '2017-08-09 08:00:35'),
(17, 5, '2017-08-09', 'rab 2356', NULL, 9, 9, NULL, 10151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-09 08:02:37', '2017-08-09 08:02:37', NULL),
(18, 5, '2017-08-13', 'p_issue_01', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-13 08:57:15', '2017-08-13 08:57:15', NULL),
(19, 5, '2017-08-13', 'pre_test005', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-13 09:02:30', '2017-08-13 09:02:30', NULL),
(21, 1, '2017-08-16', 'II-0001', NULL, 9, NULL, NULL, 10154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-16 10:02:17', '2017-08-16 10:02:17', NULL),
(22, 2, '2017-08-22', 'sdfasf', NULL, 9, 9, NULL, 10151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-22 08:25:40', '2017-08-22 08:25:40', NULL),
(23, 2, '2017-08-22', 'saff', NULL, 2, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10143, NULL, '2017-08-22 08:38:19', '2017-08-22 08:38:19', NULL),
(24, 2, '2017-08-22', 'fgdg', NULL, 2, 9, NULL, 10154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10143, NULL, '2017-08-22 08:40:25', '2017-08-22 08:40:25', NULL),
(25, 1, '2017-08-26', '254136', NULL, 9, NULL, NULL, 10154, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-26 05:56:33', '2017-08-26 05:56:33', NULL),
(26, 2, '2017-08-26', 'asf', NULL, 9, 5, NULL, 10154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-26 06:49:28', '2017-08-26 06:49:28', NULL),
(27, 2, '2017-08-26', 'safsaf', NULL, 9, 9, NULL, 10151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-26 07:09:41', '2017-08-26 07:09:41', NULL),
(28, 2, '2017-08-26', 'sadf', NULL, 9, 9, NULL, 10154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-26 07:11:11', '2017-08-26 07:11:11', NULL),
(29, 2, '2017-08-26', 'sdafasdf', NULL, 9, 9, NULL, 10151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-26 07:12:31', '2017-08-26 07:12:31', NULL),
(30, 2, '2017-08-26', 'Munna', NULL, 9, 9, NULL, 10151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-26 07:14:07', '2017-08-26 07:15:34', NULL),
(31, 3, '2017-08-26', 'sadfsdafasfd1', NULL, 9, NULL, NULL, NULL, 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-26 09:13:20', '2017-08-26 09:13:20', NULL),
(32, 2, '2017-08-28', 'Munna 123', NULL, 9, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-28 07:47:42', '2017-08-28 07:47:42', NULL),
(33, 3, '2017-08-28', 'repair edit check', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-28 11:11:14', '2017-08-28 11:11:14', NULL),
(34, 3, '2017-08-28', 'repair edit check 2', NULL, 9, NULL, NULL, NULL, 'sadf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-28 11:17:42', '2017-08-28 11:17:42', NULL),
(35, 7, '2017-09-11', 'Other-0001', NULL, 9, NULL, NULL, NULL, 'Mr. Rahim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-09-11 08:16:37', '2017-09-11 08:16:37', NULL),
(36, 7, '2017-09-13', 'Other-0002', NULL, 9, NULL, NULL, NULL, 'Mr. Tofeal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-09-13 09:20:44', '2017-10-30 08:30:28', NULL),
(37, 2, '2017-09-23', 'Receipient', NULL, 9, 5, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-09-23 06:23:06', '2017-09-23 06:40:43', NULL),
(38, 1, '2017-09-23', 'I recipient', NULL, 9, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 06:49:42', '2017-09-23 06:49:42', NULL),
(39, 1, '2017-09-23', 'I recipient', NULL, 9, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 06:49:42', '2017-09-23 06:51:39', '2017-09-23 06:51:39'),
(40, 1, '2017-09-23', 'I 2 recepient', NULL, 9, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-09-23 06:51:19', '2017-09-23 06:56:42', NULL),
(41, 1, '2017-12-05', '5', NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-09-23 08:03:45', '2017-12-05 09:33:58', NULL),
(42, 5, '2017-09-23', 'p 1325 edit', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-09-23 08:14:45', '2017-09-23 08:16:44', NULL),
(43, 1, '2017-09-26', '15452', NULL, 9, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-09-26 05:05:26', '2017-09-26 05:05:26', NULL),
(44, 1, '2017-09-26', 'Issue to', NULL, 9, NULL, 13, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdfasf edit বাংলা\r\nবাংলা', 1, 1, '2017-09-26 07:05:45', '2017-09-26 07:38:42', NULL),
(45, 2, '2017-09-27', 'Delete 1', NULL, 9, 5, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-09-27 08:44:29', '2017-12-24 04:50:17', NULL),
(46, 3, '2017-09-28', 'rep iss', NULL, 9, NULL, NULL, NULL, 'dtdr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-09-28 07:59:59', '2017-09-28 07:59:59', NULL),
(47, 3, '2017-10-01', '5 mon', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-10-01 08:40:22', '2017-10-01 08:40:22', NULL),
(48, 3, '2017-10-01', '2 mon 2', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-10-01 09:01:02', '2017-10-01 09:01:22', NULL),
(49, 3, '2017-10-01', '2 monitor rec', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-10-01 09:42:23', '2017-10-01 09:42:23', NULL),
(50, 1, '2017-10-03', 'v-123', NULL, 9, NULL, 13, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Remarks', 1, 1, '2017-10-03 04:29:49', '2017-12-24 04:50:45', NULL),
(51, 3, '2017-11-28', 'unsvc', NULL, 9, NULL, NULL, NULL, 'tr-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-11-28 08:40:40', '2017-11-28 08:59:40', NULL),
(52, 2, '2018-01-06', 'asfasf', NULL, 9, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-01-06 11:48:03', '2018-01-06 11:48:03', '2018-01-06 12:04:34'),
(53, 2, '2018-01-06', 'dsf', NULL, 9, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-01-06 12:02:14', '2018-01-06 12:02:14', '2018-01-06 12:04:34'),
(54, 2, '2018-01-06', 'saf', NULL, 9, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-01-06 12:04:54', '2018-01-06 12:04:54', '2018-01-07 04:22:43'),
(55, 2, '2018-01-07', 'HQ-AD-IV-2018-1', NULL, 9, 9, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-01-07 04:47:59', '2018-01-07 04:47:59', NULL),
(56, 2, '2018-01-08', 'HQ-AD-IV-2018-2', NULL, 9, 9, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-01-07 04:59:58', '2018-01-07 04:59:58', NULL),
(57, 2, '2018-01-09', 'HQ-AD-IV-2018-3', NULL, 9, 5, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-01-07 05:29:20', '2018-01-07 05:30:30', NULL),
(58, 2, '2018-01-07', 'HQ-AD-IV-2017-1', NULL, 9, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-01-07 05:50:03', '2018-01-07 05:50:03', '2018-01-07 05:52:08'),
(59, 2, '2018-01-05', 'HQ-AD-IV-2018-4', NULL, 9, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-01-07 05:57:15', '2018-01-07 05:57:15', NULL),
(60, 2, '2018-01-09', 'HQ-AD-IV-2018-5', NULL, 9, 9, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-01-07 06:04:22', '2018-01-07 06:05:45', NULL),
(61, 1, '2018-01-08', 'HQ-AD-IV-2018-6', NULL, 9, NULL, 13, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-01-07 06:18:25', '2018-01-07 07:13:13', NULL),
(62, 7, '2018-01-07', 'HQ-AD-IV-2018-7', NULL, 9, NULL, NULL, NULL, 'edit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-01-07 06:34:12', '2018-01-07 06:34:25', NULL),
(63, 5, '2018-01-08', 'HQ-AD-IV-2018-8', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-01-07 06:37:56', '2018-01-07 06:38:19', NULL),
(64, 3, '2018-01-07', 'HQ-AD-IV-2018-9', NULL, 9, NULL, NULL, NULL, 'edit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-01-07 06:40:36', '2018-01-07 06:41:23', NULL),
(65, 1, '2018-01-07', 'HQ-AD-IV-2018-10', NULL, 9, NULL, 13, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sadfsaf', 1, NULL, '2018-01-07 07:14:35', '2018-01-07 07:14:35', NULL),
(66, 3, '2018-01-07', 'HQ-AD-IV-2018-11', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-01-07 08:33:06', '2018-01-07 08:33:06', NULL),
(67, 7, '2018-01-07', 'HQ-AD-IV-2018-12', NULL, 9, NULL, NULL, NULL, 'saf edit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-01-07 08:40:30', '2018-01-07 08:40:45', NULL),
(68, 5, '2018-01-07', 'HQ-AD-IV-2018-13', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-01-07 09:59:39', '2018-01-07 09:59:58', NULL),
(69, 1, '2018-01-07', 'HQ-AD-IV-2018-14', NULL, 9, NULL, 13, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-01-07 10:05:51', '2018-01-07 10:06:16', NULL),
(70, 3, '2018-01-28', 'HQ-AD-IV-2018-15', NULL, 9, NULL, NULL, NULL, 'RP-789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-01-28 05:56:50', '2018-01-28 05:56:50', NULL),
(71, 2, '2018-06-10', 'HQ-AD-IV-2018-16', NULL, 9, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-06-10 04:55:07', '2018-06-10 04:55:07', NULL),
(72, 2, '2018-06-24', 'HQ-AD-IV-2018-17', NULL, 9, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-06-24 04:57:10', '2018-06-24 04:57:29', NULL),
(73, 2, '2018-07-04', 'HQ-AD-IV-2018-18', NULL, 9, 11, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-07-04 09:52:07', '2018-07-06 10:01:01', NULL),
(74, 1, '2018-07-07', 'HQ-AD-IV-2018-19', NULL, 9, NULL, 15, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-07-07 10:20:06', '2018-07-08 06:32:10', NULL),
(75, 1, '2018-07-08', 'HQ-AD-IV-2018-20', NULL, 9, NULL, 15, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-07-08 06:59:03', '2018-07-08 07:01:01', '2018-07-08 07:01:01'),
(76, 1, '2018-07-08', 'HQ-AD-IV-2018-20', NULL, 9, NULL, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-07-08 07:05:30', '2018-07-08 07:05:56', '2018-07-08 07:05:56'),
(77, 1, '2018-07-08', 'HQ-AD-IV-2018-20', NULL, 9, NULL, 13, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-07-08 07:06:38', '2018-07-08 07:07:43', NULL),
(78, 5, '2018-07-08', 'HQ-AD-IV-2018-21', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-07-08 10:31:08', '2018-07-08 10:39:54', NULL),
(79, 3, '2018-07-09', 'HQ-AD-IV-2018-22', NULL, 9, NULL, NULL, NULL, 'Mr. Rahim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-07-09 04:59:14', '2018-07-09 05:03:32', NULL),
(80, 6, '2018-07-09', '14523698', NULL, 9, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-07-09 05:43:12', '2018-07-09 06:21:57', '2018-07-09 06:21:57'),
(81, 6, '2018-07-09', '11112', NULL, 9, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-07-09 05:56:45', '2018-07-09 06:22:00', '2018-07-09 06:22:00'),
(82, 2, '2018-07-15', 'HQ-AD-IV-2018-23', NULL, 9, 11, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-07-15 10:59:09', '2018-07-17 10:06:27', NULL),
(83, 5, '2018-07-17', 'HQ-AD-IV-2018-24', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-07-17 10:37:47', '2018-07-17 10:38:27', NULL),
(84, 1, '2018-07-18', 'HQ-AD-IV-2018-25', NULL, 9, NULL, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-07-18 05:30:09', '2018-07-18 05:31:22', NULL),
(85, 2, '2018-07-22', 'HQ-AD-MIS-IV-2018-1', NULL, 5, 9, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, NULL, '2018-07-22 12:30:34', '2018-07-22 12:30:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `issue_items`
--

CREATE TABLE `issue_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `issue_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `mm_unit_id` int(10) UNSIGNED NOT NULL,
  `svc_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unsvc_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `repairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unrepairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `damage_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `maintenace_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `received_qty` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT 'updated by repair receive',
  `private_svc_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `private_unsvc_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `private_repairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `private_unrepairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `private_damage_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `specification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barcode_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `issue_items`
--

INSERT INTO `issue_items` (`id`, `issue_id`, `item_id`, `brand_id`, `mm_unit_id`, `svc_qty`, `unsvc_qty`, `repairable_qty`, `unrepairable_qty`, `damage_qty`, `maintenace_qty`, `received_qty`, `private_svc_qty`, `private_unsvc_qty`, `private_repairable_qty`, `private_unrepairable_qty`, `private_damage_qty`, `total_qty`, `specification`, `barcode_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-07-12 07:20:38', '2017-07-12 10:11:10', '2017-07-12 10:11:10'),
(2, 1, 27, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-07-12 07:20:38', '2017-07-12 10:11:10', '2017-07-12 10:11:10'),
(3, 1, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-07-12 10:11:10', '2017-07-12 10:11:10', NULL),
(4, 1, 27, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-07-12 10:11:10', '2017-07-12 10:11:10', NULL),
(5, 2, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-07-22 07:03:15', '2017-07-22 08:23:19', '2017-07-22 08:23:19'),
(6, 2, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-07-22 08:23:19', '2017-07-22 08:23:19', NULL),
(7, 3, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-07-22 11:16:50', '2017-07-22 11:31:46', '2017-07-22 11:31:46'),
(8, 3, 5, NULL, 1, '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', NULL, NULL, '2017-07-22 11:31:46', '2017-07-22 11:31:46', NULL),
(9, 4, 6, 1, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', NULL, NULL, '2017-08-01 06:47:57', '2017-08-01 06:47:57', NULL),
(10, 11, 5, 1, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-05 09:14:23', '2017-08-05 09:41:25', '2017-08-05 09:41:25'),
(11, 11, 5, 1, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-05 09:41:25', '2017-08-05 09:41:33', '2017-08-05 09:41:33'),
(12, 11, 5, 2, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-05 09:41:33', '2017-08-09 09:06:22', '2017-08-09 09:06:22'),
(13, 12, 5, 2, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-05 09:47:41', '2017-08-05 09:47:59', '2017-08-05 09:47:59'),
(14, 12, 5, 1, 1, '3.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', NULL, NULL, '2017-08-05 09:47:59', '2017-08-14 09:41:26', '2017-08-14 09:41:26'),
(15, 13, 5, NULL, 1, '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', NULL, NULL, '2017-08-05 11:40:59', '2017-08-05 11:40:59', NULL),
(16, 14, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-05 11:41:37', '2017-08-26 05:54:17', '2017-08-26 05:54:17'),
(17, 15, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-08 12:23:01', '2017-08-08 12:23:01', NULL),
(18, 16, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-09 06:22:39', '2017-08-09 06:34:37', '2017-08-09 06:34:37'),
(19, 16, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-09 06:34:37', '2017-08-09 06:34:43', '2017-08-09 06:34:43'),
(20, 16, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-09 06:34:43', '2017-08-09 08:00:35', '2017-08-09 08:00:35'),
(21, 17, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-09 08:02:37', '2017-08-09 08:06:32', '2017-08-09 08:06:32'),
(22, 17, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-09 08:06:33', '2017-08-09 08:06:33', NULL),
(23, 11, 6, NULL, 1, '3.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', NULL, NULL, '2017-08-09 09:06:22', '2017-08-09 09:06:22', NULL),
(24, 18, 6, NULL, 1, '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', NULL, NULL, '2017-08-13 08:57:15', '2017-08-13 08:57:15', NULL),
(25, 19, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-13 09:02:30', '2017-08-13 09:20:38', '2017-08-13 09:20:38'),
(26, 19, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-13 09:20:38', '2017-08-13 09:20:49', '2017-08-13 09:20:49'),
(27, 19, 5, NULL, 1, '3.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', NULL, NULL, '2017-08-13 09:20:49', '2017-08-13 09:20:49', NULL),
(28, 12, 5, NULL, 1, '3.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', NULL, NULL, '2017-08-14 09:41:26', '2017-08-14 09:41:26', NULL),
(29, 12, 6, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', NULL, NULL, '2017-08-14 09:41:26', '2017-08-14 09:41:26', NULL),
(31, 21, 32, NULL, 1, '3.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', NULL, NULL, '2017-08-16 10:02:17', '2017-08-16 10:02:17', NULL),
(32, 22, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-22 08:25:40', '2017-08-22 08:25:40', NULL),
(33, 23, 14, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', NULL, NULL, '2017-08-22 08:38:19', '2017-08-22 08:38:19', NULL),
(34, 24, 14, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-22 08:40:25', '2017-08-22 08:40:25', NULL),
(35, 14, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'spc/25413698741258', NULL, '2017-08-26 05:54:17', '2017-08-26 05:54:17', NULL),
(36, 25, 27, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', '2581spc362', NULL, '2017-08-26 05:56:33', '2017-08-26 05:56:33', NULL),
(37, 25, 6, NULL, 1, '3.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', 'spc/78963258', NULL, '2017-08-26 05:56:33', '2017-08-26 05:56:33', NULL),
(38, 26, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'sadfdasf', NULL, '2017-08-26 06:49:29', '2017-08-26 07:02:48', '2017-08-26 07:02:48'),
(39, 26, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-08-26 06:49:29', '2017-08-26 07:02:48', '2017-08-26 07:02:48'),
(40, 26, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'sadfdasf', NULL, '2017-08-26 07:02:48', '2017-08-26 07:03:12', '2017-08-26 07:03:12'),
(41, 26, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '2nd ', NULL, '2017-08-26 07:02:48', '2017-08-26 07:03:12', '2017-08-26 07:03:12'),
(42, 26, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-08-26 07:03:12', '2017-08-26 07:03:12', NULL),
(43, 26, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '2nd ', NULL, '2017-08-26 07:03:12', '2017-08-26 07:03:12', NULL),
(44, 27, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-08-26 07:09:42', '2017-08-26 07:09:42', NULL),
(45, 30, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-26 07:14:07', '2017-08-26 07:15:03', '2017-08-26 07:15:03'),
(46, 30, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'asdfasf', NULL, '2017-08-26 07:15:03', '2017-08-26 07:15:18', '2017-08-26 07:15:18'),
(47, 30, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'rf', NULL, '2017-08-26 07:15:18', '2017-08-26 07:15:34', '2017-08-26 07:15:34'),
(48, 30, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'rf', NULL, '2017-08-26 07:15:34', '2017-08-26 07:16:02', '2017-08-26 07:16:02'),
(49, 30, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'rf', NULL, '2017-08-26 07:16:02', '2017-08-26 07:16:02', NULL),
(50, 30, 5, NULL, 1, '0.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-26 07:16:02', '2017-08-26 07:16:02', NULL),
(51, 31, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'sdafasf', NULL, '2017-08-26 09:13:20', '2017-08-26 09:13:41', '2017-08-26 09:13:41'),
(52, 31, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'sdafasf', NULL, '2017-08-26 09:13:41', '2017-08-26 09:13:51', '2017-08-26 09:13:51'),
(53, 31, 5, NULL, 1, '0.00', '1.00', '1.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-26 09:13:41', '2017-08-26 09:13:51', '2017-08-26 09:13:51'),
(54, 31, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'sdafasf', NULL, '2017-08-26 09:13:51', '2017-08-28 10:49:15', NULL),
(55, 31, 5, NULL, 1, '0.00', '1.00', '1.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'w1', NULL, '2017-08-26 09:13:51', '2017-09-23 11:05:35', NULL),
(56, 32, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-08-28 07:47:43', '2017-08-28 07:47:43', NULL),
(57, 33, 5, NULL, 1, '0.00', '1.00', '1.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'saf', NULL, '2017-08-28 11:11:14', '2017-08-28 11:13:03', NULL),
(58, 34, 6, NULL, 1, '0.00', '2.00', '2.00', '0.00', '0.00', '2.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', NULL, NULL, '2017-08-28 11:17:43', '2017-08-28 11:18:15', NULL),
(59, 35, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'spc/789632581', NULL, '2017-09-11 08:16:37', '2017-09-11 08:30:22', '2017-09-11 08:30:22'),
(60, 35, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'spc/789632581', NULL, '2017-09-11 08:30:22', '2017-09-11 08:31:07', '2017-09-11 08:31:07'),
(61, 35, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'spc/789632581', NULL, '2017-09-11 08:31:07', '2017-09-11 08:31:07', NULL),
(62, 35, 6, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', 'spc/78963258125', NULL, '2017-09-11 08:31:07', '2017-09-11 08:31:07', NULL),
(63, 36, 6, NULL, 1, '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', 'spc/789632589', NULL, '2017-09-13 09:20:45', '2017-09-13 09:23:05', '2017-09-13 09:23:05'),
(64, 36, 6, NULL, 1, '18.00', '0.00', '0.00', '0.00', '0.00', '18.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '18.00', 'spc/789632589', NULL, '2017-09-13 09:23:05', '2017-09-13 09:28:14', '2017-09-13 09:28:14'),
(65, 36, 6, NULL, 1, '18.00', '3.00', '2.00', '1.00', '0.00', '21.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '21.00', 'spc/789632589', NULL, '2017-09-13 09:28:14', '2017-10-30 08:30:28', NULL),
(66, 36, 9, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', 'spc/789632580', NULL, '2017-09-13 09:28:14', '2017-09-13 09:28:14', NULL),
(67, 37, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-09-23 06:23:06', '2017-09-23 06:38:19', '2017-09-23 06:38:19'),
(68, 37, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-09-23 06:38:19', '2017-09-23 06:40:43', '2017-09-23 06:40:43'),
(69, 37, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-09-23 06:40:43', '2017-09-23 06:40:43', NULL),
(70, 38, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-23 06:49:42', '2017-09-23 06:49:42', NULL),
(71, 39, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-23 06:49:42', '2017-09-23 06:51:39', '2017-09-23 06:51:39'),
(72, 40, 6, NULL, 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-23 06:51:19', '2017-09-23 06:51:55', '2017-09-23 06:51:55'),
(73, 40, 6, NULL, 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-23 06:51:55', '2017-09-23 06:56:09', '2017-09-23 06:56:09'),
(74, 40, 6, NULL, 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-23 06:56:09', '2017-09-23 06:56:42', '2017-09-23 06:56:42'),
(75, 40, 6, NULL, 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-23 06:56:42', '2017-09-23 06:56:42', NULL),
(76, 41, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-09-23 08:03:46', '2017-12-05 09:33:58', '2017-12-05 09:33:58'),
(77, 42, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-09-23 08:14:45', '2017-09-23 08:16:44', '2017-09-23 08:16:44'),
(78, 42, 6, NULL, 1, '1.00', '3.00', '2.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', NULL, NULL, '2017-09-23 08:16:45', '2017-10-30 08:28:36', NULL),
(79, 43, 6, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', 'spc/789632580', NULL, '2017-09-26 05:05:26', '2017-09-26 05:05:26', NULL),
(80, 44, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-26 07:05:45', '2017-09-26 07:10:42', '2017-09-26 07:10:42'),
(81, 44, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-26 07:10:42', '2017-09-26 07:25:40', '2017-09-26 07:25:40'),
(82, 44, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-26 07:25:40', '2017-09-26 07:29:53', '2017-09-26 07:29:53'),
(83, 44, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-26 07:29:53', '2017-09-26 07:30:48', '2017-09-26 07:30:48'),
(84, 44, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-26 07:30:48', '2017-09-26 07:37:35', '2017-09-26 07:37:35'),
(85, 44, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-26 07:37:36', '2017-09-26 07:38:42', '2017-09-26 07:38:42'),
(86, 44, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2017-09-26 07:38:42', '2017-09-26 07:38:42', NULL),
(87, 45, 10, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-09-27 08:44:29', '2017-10-30 08:29:52', NULL),
(88, 45, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-09-27 08:44:29', '2017-09-27 08:47:31', '2017-09-27 08:47:31'),
(89, 45, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-09-27 08:49:05', '2017-09-27 08:51:02', '2017-09-27 08:51:02'),
(90, 45, 9, NULL, 1, '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', NULL, NULL, '2017-09-27 08:49:05', '2017-10-30 08:29:52', NULL),
(91, 45, 7, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-09-27 08:51:02', '2017-10-30 08:29:52', NULL),
(92, 46, 5, NULL, 1, '0.00', '1.00', '1.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2017-09-28 07:59:59', '2017-10-01 08:38:27', NULL),
(93, 47, 5, NULL, 1, '0.00', '5.00', '5.00', '0.00', '0.00', '5.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', 'rep', NULL, '2017-10-01 08:40:23', '2017-10-01 08:42:41', NULL),
(94, 48, 5, NULL, 1, '0.00', '2.00', '2.00', '0.00', '0.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', 'moni', NULL, '2017-10-01 09:01:02', '2017-10-01 09:07:03', NULL),
(95, 48, 6, NULL, 1, '0.00', '3.00', '3.00', '0.00', '0.00', '3.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', 'hp', NULL, '2017-10-01 09:01:02', '2017-10-01 09:07:04', NULL),
(96, 49, 5, NULL, 1, '0.00', '2.00', '2.00', '0.00', '0.00', '2.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', 'm', NULL, '2017-10-01 09:42:23', '2017-11-25 11:01:03', NULL),
(97, 49, 6, NULL, 1, '0.00', '3.00', '3.00', '0.00', '0.00', '3.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', 'm 2', NULL, '2017-10-01 09:42:23', '2017-11-25 11:01:03', NULL),
(98, 50, 5, NULL, 1, '13.00', '3.00', '2.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '16.00', 'Specification 01 edit', NULL, '2017-10-03 04:29:49', '2017-12-21 10:54:47', NULL),
(99, 50, 27, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'Specification 02', NULL, '2017-10-03 04:29:49', '2017-10-03 04:29:49', NULL),
(100, 51, 5, NULL, 1, '0.00', '1.00', '1.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'SL-1', NULL, '2017-11-28 08:40:40', '2017-11-28 08:59:39', '2017-11-28 08:59:39'),
(101, 51, 6, NULL, 1, '0.00', '3.00', '3.00', '0.00', '0.00', '3.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', 'SL-1,SL-2,SL-3', NULL, '2017-11-28 08:59:40', '2017-11-28 10:11:38', NULL),
(102, 41, 10, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', NULL, NULL, '2017-12-05 09:33:58', '2017-12-05 09:33:58', NULL),
(103, 52, 5, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', NULL, NULL, '2018-01-06 11:48:03', '2018-01-06 11:48:03', NULL),
(104, 53, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-06 12:02:14', '2018-01-06 12:02:14', NULL),
(105, 54, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-06 12:04:54', '2018-01-06 12:04:54', NULL),
(106, 55, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'asdf', NULL, '2018-01-07 04:47:59', '2018-01-07 04:47:59', NULL),
(107, 56, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 04:59:59', '2018-01-07 04:59:59', NULL),
(108, 57, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'edit', NULL, '2018-01-07 05:29:20', '2018-01-07 05:30:30', NULL),
(109, 58, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 05:50:03', '2018-01-07 05:50:03', NULL),
(110, 59, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 05:57:15', '2018-01-07 05:57:15', NULL),
(111, 60, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'edit', NULL, '2018-01-07 06:04:22', '2018-01-07 06:05:45', NULL),
(112, 60, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'ak', NULL, '2018-01-07 06:04:22', '2018-01-07 06:04:22', NULL),
(113, 60, 7, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'ok edit', NULL, '2018-01-07 06:05:45', '2018-02-26 06:36:10', NULL),
(114, 61, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2018-01-07 06:18:25', '2018-01-07 06:18:25', NULL),
(115, 61, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2018-01-07 06:18:25', '2018-01-07 06:18:25', NULL),
(116, 62, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 06:34:12', '2018-01-07 06:34:25', NULL),
(117, 62, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'er', NULL, '2018-01-07 06:34:12', '2018-01-07 06:34:25', NULL),
(118, 63, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 06:37:57', '2018-01-07 06:37:57', NULL),
(119, 63, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 06:37:57', '2018-01-07 06:37:57', NULL),
(120, 64, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 06:40:36', '2018-01-08 04:57:42', NULL),
(121, 64, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 06:40:36', '2018-01-08 04:57:42', NULL),
(122, 65, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2018-01-07 07:14:35', '2018-01-07 07:14:35', NULL),
(123, 64, 7, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 08:32:22', '2018-01-07 08:32:22', NULL),
(124, 66, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 08:33:06', '2018-01-07 08:33:06', NULL),
(125, 66, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 08:33:06', '2018-01-07 08:33:06', NULL),
(126, 67, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 08:40:30', '2018-01-07 08:40:45', NULL),
(127, 67, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 08:40:30', '2018-01-07 08:40:45', NULL),
(128, 68, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 09:59:39', '2018-01-07 09:59:39', NULL),
(129, 68, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 09:59:39', '2018-01-07 09:59:39', NULL),
(130, 68, 7, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-01-07 09:59:58', '2018-01-07 09:59:58', NULL),
(131, 69, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'edit', NULL, '2018-01-07 10:05:51', '2018-02-25 11:21:43', NULL),
(132, 69, 7, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2018-01-07 10:05:51', '2018-01-07 10:05:51', NULL),
(133, 69, 8, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2018-01-07 10:06:16', '2018-01-07 10:06:16', NULL),
(134, 70, 5, NULL, 1, '2.00', '2.00', '2.00', '0.00', '0.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', NULL, NULL, '2018-01-28 05:56:50', '2018-01-28 06:31:42', NULL),
(135, 70, 6, NULL, 1, '1.00', '3.00', '3.00', '0.00', '0.00', '4.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', NULL, NULL, '2018-01-28 05:56:50', '2018-01-28 06:31:42', NULL),
(136, 71, 5, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', NULL, NULL, '2018-06-10 04:55:07', '2018-06-10 04:55:07', NULL),
(137, 71, 27, NULL, 1, '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', NULL, NULL, '2018-06-10 04:55:07', '2018-06-10 04:55:07', NULL),
(138, 72, 8, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-06-24 04:57:10', '2018-06-24 05:00:20', NULL),
(139, 72, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-06-24 05:52:45', '2018-06-24 05:53:16', NULL),
(140, 73, 6, NULL, 1, '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', NULL, '6', '2018-07-04 09:52:07', '2018-07-06 11:04:35', NULL),
(141, 73, 27, NULL, 1, '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', NULL, NULL, '2018-07-04 09:52:08', '2018-07-06 11:04:35', NULL),
(142, 74, 27, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2018-07-07 10:20:06', '2018-07-07 10:20:06', NULL),
(143, 74, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', '6', '2018-07-07 10:20:07', '2018-07-08 06:34:15', NULL),
(144, 74, 31, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', '', NULL, '2018-07-08 06:36:50', '2018-07-08 06:36:50', NULL),
(145, 74, 5, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2018-07-08 06:38:11', '2018-07-08 06:40:04', '2018-07-08 06:40:04'),
(146, 74, 32, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2018-07-08 06:40:05', '2018-07-08 06:40:05', NULL),
(147, 75, 27, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2018-07-08 06:59:03', '2018-07-08 07:01:01', '2018-07-08 07:01:01'),
(148, 75, 6, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', '', '6', '2018-07-08 06:59:03', '2018-07-08 07:01:01', '2018-07-08 07:01:01'),
(149, 76, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', '6', '2018-07-08 07:05:30', '2018-07-08 07:05:56', '2018-07-08 07:05:56'),
(150, 76, 31, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', '', NULL, '2018-07-08 07:05:30', '2018-07-08 07:05:56', '2018-07-08 07:05:56'),
(151, 77, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', '6', '2018-07-08 07:06:38', '2018-07-08 07:06:38', NULL),
(152, 77, 31, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', '', NULL, '2018-07-08 07:06:38', '2018-07-08 07:06:38', NULL),
(153, 77, 32, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '', NULL, '2018-07-08 07:07:43', '2018-07-08 07:07:43', NULL),
(154, 78, 6, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', NULL, '6', '2018-07-08 10:31:08', '2018-07-08 10:31:08', NULL),
(155, 78, 7, NULL, 1, '3.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', NULL, NULL, '2018-07-08 10:31:08', '2018-07-08 10:39:54', NULL),
(156, 78, 32, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-07-08 10:52:35', '2018-07-08 10:52:35', NULL),
(157, 79, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'No Specification', '6', '2018-07-09 04:59:14', '2018-07-09 04:59:14', NULL),
(158, 79, 32, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-07-09 04:59:14', '2018-07-09 04:59:14', NULL),
(159, 79, 31, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-07-09 05:03:32', '2018-07-09 05:03:32', NULL),
(160, 80, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, '6', '2018-07-09 05:43:13', '2018-07-09 06:21:57', '2018-07-09 06:21:57'),
(161, 80, 32, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-07-09 05:43:13', '2018-07-09 06:21:57', '2018-07-09 06:21:57'),
(162, 81, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, '6', '2018-07-09 05:56:45', '2018-07-09 06:21:59', '2018-07-09 06:21:59'),
(163, 82, 27, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-07-15 10:59:09', '2018-07-15 10:59:09', NULL),
(164, 82, 6, NULL, 1, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', NULL, NULL, '2018-07-15 10:59:09', '2018-07-15 10:59:09', NULL),
(165, 82, 31, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-07-17 10:06:27', '2018-07-17 10:06:27', NULL),
(166, 83, 6, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', 'prev', NULL, '2018-07-17 10:37:47', '2018-07-17 10:37:47', NULL),
(167, 83, 31, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-07-17 10:38:28', '2018-07-17 10:38:28', NULL),
(168, 84, 31, NULL, 1, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', NULL, NULL, '2018-07-18 05:30:09', '2018-07-18 05:31:22', NULL),
(169, 84, 6, NULL, 1, '3.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', NULL, NULL, '2018-07-18 05:30:09', '2018-07-18 05:31:22', NULL),
(170, 85, 6, NULL, 1, '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', NULL, NULL, '2018-07-22 12:30:34', '2018-07-22 12:30:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_cat` int(10) UNSIGNED NOT NULL,
  `item_group` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `item_bn_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mm_unit_id` int(10) UNSIGNED NOT NULL,
  `item_barcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `renewal_month` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `deleted_at`, `created_at`, `updated_at`, `item_cat`, `item_group`, `item_name`, `item_bn_name`, `mm_unit_id`, `item_barcode`, `renewal_month`) VALUES
(5, NULL, '2017-04-16 04:45:50', '2017-04-16 04:57:35', 1, 1, 'Monitor', 'bn edit ok', 1, '12', 0),
(6, NULL, '2017-04-19 05:03:55', '2017-08-08 12:15:33', 1, 1, 'HP Monitor', NULL, 1, '6', 1),
(7, NULL, '2017-04-20 11:22:35', '2017-04-20 11:22:35', 1, 1, 'Asus Monitor', NULL, 1, NULL, 0),
(8, NULL, '2017-04-20 11:22:57', '2017-04-20 11:22:57', 1, 1, 'Nec Monitor', NULL, 1, NULL, 0),
(9, NULL, '2017-04-20 11:23:17', '2017-04-20 11:23:17', 1, 1, 'Samsung Monitor', NULL, 1, NULL, 0),
(10, NULL, '2017-04-25 11:48:56', '2017-04-25 11:48:56', 1, 1, 'Walton Monitor', NULL, 1, NULL, 0),
(11, NULL, '2017-04-30 05:51:54', '2017-04-30 05:51:54', 3, 4, 'Matador Orbit', NULL, 1, NULL, 0),
(12, NULL, '2017-04-30 05:52:17', '2017-04-30 05:52:17', 3, 4, 'Econo', NULL, 1, NULL, 0),
(13, NULL, '2017-04-30 05:52:53', '2017-04-30 05:52:53', 3, 4, 'Matador Hi-School', NULL, 1, NULL, 0),
(14, NULL, '2017-04-30 05:53:58', '2017-04-30 05:53:58', 3, 3, 'Bashundhara', NULL, 1, NULL, 0),
(15, NULL, '2017-04-30 05:54:26', '2017-04-30 05:54:26', 3, 3, 'A4 Paper', NULL, 1, NULL, 0),
(16, NULL, '2017-04-30 05:54:43', '2017-04-30 05:54:43', 3, 3, 'Legal Paper', NULL, 1, NULL, 0),
(17, NULL, '2017-04-30 05:56:36', '2017-04-30 05:56:36', 4, 5, 'Shirt', NULL, 1, NULL, 0),
(18, NULL, '2017-04-30 05:57:06', '2017-04-30 05:57:06', 4, 6, 'Full Shirt', NULL, 1, NULL, 0),
(19, NULL, '2017-04-30 05:57:25', '2017-04-30 05:57:25', 4, 6, 'Half Shirt', NULL, 1, NULL, 0),
(20, NULL, '2017-04-30 05:57:48', '2017-04-30 05:57:48', 4, 7, 'T-Shirt', NULL, 1, NULL, 0),
(21, NULL, '2017-04-30 05:58:07', '2017-04-30 05:58:07', 4, 7, 'Trouser', NULL, 1, NULL, 0),
(22, NULL, '2017-04-30 06:00:51', '2017-04-30 06:00:51', 6, 8, 'Samsung Mobile', NULL, 1, NULL, 0),
(23, NULL, '2017-04-30 06:01:10', '2017-04-30 06:01:10', 6, 8, 'HTC Mobile', NULL, 1, NULL, 0),
(24, NULL, '2017-04-30 06:01:33', '2017-04-30 06:01:33', 6, 8, 'Nokia Mobile', NULL, 1, NULL, 0),
(25, NULL, '2017-04-30 06:06:27', '2017-04-30 06:06:27', 3, 9, 'Bashundhara Toilet Tissue', NULL, 1, NULL, 0),
(26, NULL, '2017-04-30 06:07:07', '2017-04-30 06:07:07', 3, 9, 'Bangla Toilet Tissue', NULL, 1, NULL, 0),
(27, NULL, '2017-04-30 10:31:28', '2017-04-30 10:31:28', 1, 10, 'HP Laptop', NULL, 1, NULL, 0),
(28, NULL, '2017-04-30 10:31:45', '2017-04-30 10:35:12', 1, 10, 'Dell Laptop', NULL, 1, NULL, 0),
(29, NULL, '2017-04-30 10:32:05', '2017-04-30 10:32:05', 1, 10, 'Asus Laptop', NULL, 1, NULL, 0),
(30, NULL, '2017-04-30 10:33:02', '2017-04-30 10:33:02', 1, 10, 'Lenovo ', NULL, 1, NULL, 0),
(31, NULL, '2017-04-30 10:33:33', '2017-04-30 10:33:33', 1, 12, 'HP Keyboard ', NULL, 1, NULL, 0),
(32, NULL, '2017-04-30 10:34:08', '2017-07-30 09:50:34', 1, 12, 'A4Tech', NULL, 1, '1269', 0),
(33, NULL, '2017-04-30 10:34:30', '2017-07-30 06:48:32', 1, 12, 'Dell Keyboard', NULL, 1, '456', 0),
(34, NULL, '2017-07-30 10:34:52', '2017-07-30 10:36:45', 1, 10, 'Walton Laptop', NULL, 1, '34', 0),
(35, NULL, '2017-08-02 04:40:35', '2017-08-02 04:40:35', 1, 10, 'Asus', 'sadfsf', 1, '35', 0),
(36, NULL, '2017-08-02 11:22:07', '2017-10-12 05:15:52', 1, 10, 'Doel', NULL, 1, '36', 1),
(37, NULL, '2017-11-30 04:06:50', '2017-11-30 04:06:50', 4, 6, 'Denim voillo shirt', NULL, 1, '37', 3),
(38, NULL, '2018-01-21 10:38:11', '2018-01-21 10:38:11', 7, 17, 'Rice', 'চাল', 3, '38', 0),
(39, NULL, '2018-01-21 10:38:53', '2018-01-21 10:38:53', 7, 17, 'Flour', 'আটা', 3, '39', 0),
(40, NULL, '2018-01-21 10:39:20', '2018-01-21 10:39:20', 7, 17, 'Oil', 'তেল', 3, '40', 0),
(41, NULL, '2018-01-21 10:39:50', '2018-01-21 10:39:50', 7, 17, 'Pulse', 'ডাল', 3, '41', 0),
(42, NULL, '2018-01-21 10:40:32', '2018-01-21 10:40:32', 7, 17, 'Sugar', 'চিনি', 3, '42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_cat_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `item_cat_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `deleted_at`, `created_at`, `updated_at`, `item_cat_name`, `item_cat_code`) VALUES
(1, NULL, '2017-03-12 11:01:03', '2017-03-12 11:02:07', 'Computer Accessories', 'CACS'),
(2, NULL, '2017-04-05 08:59:22', '2017-04-05 08:59:22', 'Signal Items', 'Signal'),
(3, NULL, '2017-04-30 05:37:31', '2017-04-30 05:37:53', 'Stationary', 'Stationary'),
(4, NULL, '2017-04-30 05:38:57', '2017-04-30 05:39:08', 'Clothing', 'CL'),
(5, NULL, '2017-04-30 05:39:55', '2017-04-30 05:39:55', 'Accessories', NULL),
(6, NULL, '2017-04-30 05:49:22', '2017-04-30 05:49:22', 'Communication Item', NULL),
(7, NULL, '2018-01-21 10:36:07', '2018-01-21 10:36:07', 'Ration Items', 'RI');

-- --------------------------------------------------------

--
-- Table structure for table `item_groups`
--

CREATE TABLE `item_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `item_cat_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `item_group_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_groups`
--

INSERT INTO `item_groups` (`id`, `deleted_at`, `created_at`, `updated_at`, `item_group_name`, `item_cat_id`, `item_group_code`) VALUES
(1, NULL, '2017-03-12 11:06:43', '2017-03-12 11:06:43', 'Computer Monitor', 1, 'CM'),
(2, NULL, '2017-04-05 10:00:15', '2017-04-05 10:00:15', 'Signal Group', 2, 'GPC-123'),
(3, NULL, '2017-04-30 05:40:22', '2017-04-30 05:40:22', 'Paper', 3, NULL),
(4, NULL, '2017-04-30 05:40:43', '2017-04-30 05:40:43', 'Pen', 3, NULL),
(5, NULL, '2017-04-30 05:55:56', '2017-04-30 05:55:56', 'Casual', 4, NULL),
(6, NULL, '2017-04-30 05:56:08', '2017-04-30 05:56:08', 'Formal', 4, NULL),
(7, NULL, '2017-04-30 05:56:19', '2017-04-30 05:56:19', 'Sports', 4, NULL),
(8, NULL, '2017-04-30 06:00:12', '2017-04-30 06:00:12', 'Mobile', 6, NULL),
(9, NULL, '2017-04-30 06:05:25', '2017-04-30 06:05:25', 'Tissue', 3, NULL),
(10, NULL, '2017-04-30 10:29:35', '2017-04-30 10:29:35', 'Laptop', 1, 'LT'),
(11, NULL, '2017-04-30 10:29:45', '2017-04-30 10:29:45', 'Server', 1, NULL),
(12, NULL, '2017-04-30 10:30:00', '2017-04-30 10:30:00', 'Keyboard', 1, NULL),
(13, NULL, '2017-04-30 10:30:06', '2017-04-30 10:30:06', 'Mouse', 1, NULL),
(14, NULL, '2017-08-02 06:12:43', '2017-08-02 06:12:43', 'Test', 4, '1111'),
(16, NULL, '2017-08-02 06:25:13', '2017-08-02 06:25:13', 'Test', 1, '1425'),
(17, NULL, '2018-01-21 10:36:30', '2018-01-21 10:36:30', 'Ration Product', 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_parts`
--

CREATE TABLE `item_parts` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `item_part_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_part_bn_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kpl_infos`
--

CREATE TABLE `kpl_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fuel_type_id` int(10) UNSIGNED NOT NULL,
  `kpl_date` date NOT NULL,
  `kp_ref` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_1` int(10) UNSIGNED DEFAULT NULL,
  `member_2` int(10) UNSIGNED DEFAULT NULL,
  `chairman` int(10) UNSIGNED DEFAULT NULL,
  `kpl` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_record_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kpl_infos`
--

INSERT INTO `kpl_infos` (`id`, `deleted_at`, `created_at`, `updated_at`, `fuel_type_id`, `kpl_date`, `kp_ref`, `member_1`, `member_2`, `chairman`, `kpl`, `vehicle_record_id`) VALUES
(9, NULL, '2017-08-14 08:33:34', '2017-08-14 08:33:34', 1, '2017-08-14', NULL, 1, 1, 1, '8', 3),
(10, NULL, '2017-08-14 08:34:41', '2017-08-14 08:34:55', 1, '2017-08-14', NULL, 1, 1, 1, '7.50', 4);

-- --------------------------------------------------------

--
-- Table structure for table `kpl_members`
--

CREATE TABLE `kpl_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kpl_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `chairman` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `member_1` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `member_2` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'RAB ERP', '2017-02-19 02:35:04', '2017-10-08 11:44:57'),
(2, 'sitename_part1', '', 'RAB', '2017-02-19 02:35:04', '2017-10-08 11:44:57'),
(3, 'sitename_part2', '', 'ERP', '2017-02-19 02:35:04', '2017-10-08 11:44:57'),
(4, 'sitename_short', '', 'RE', '2017-02-19 02:35:04', '2017-10-08 11:44:57'),
(5, 'site_description', '', 'RAB ERP is a system to automate HRM, Payroll, Inventory, Vehicle and office management for the RAB', '2017-02-19 02:35:04', '2017-10-08 11:44:57'),
(6, 'sidebar_search', '', '0', '2017-02-19 02:35:04', '2017-10-08 11:44:58'),
(7, 'show_messages', '', '0', '2017-02-19 02:35:04', '2017-10-08 11:44:58'),
(8, 'show_notifications', '', '1', '2017-02-19 02:35:04', '2017-10-08 11:44:57'),
(9, 'show_tasks', '', '0', '2017-02-19 02:35:04', '2017-10-08 11:44:58'),
(10, 'show_rightsidebar', '', '0', '2017-02-19 02:35:05', '2017-10-08 11:44:58'),
(11, 'skin', '', 'skin-white', '2017-02-19 02:35:05', '2017-10-08 11:44:57'),
(12, 'layout', '', 'fixed', '2017-02-19 02:35:05', '2017-10-08 11:44:57'),
(13, 'default_email', '', 'test@example.com', '2017-02-19 02:35:05', '2017-10-08 11:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'HR Settings', '#', 'fa-group', 'custom', 10, 2, '2017-02-19 02:35:02', '2017-10-08 07:27:14'),
(2, 'Users', 'users', 'fa-group', 'module', 37, 1, '2017-02-19 02:35:02', '2017-04-01 06:41:47'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 32, 2, '2017-02-19 02:35:02', '2017-03-11 09:33:53'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 32, 4, '2017-02-19 02:35:02', '2017-04-02 08:33:57'),
(5, 'Employees', 'employees', 'fa-group', 'module', 32, 5, '2017-02-19 02:35:02', '2017-04-02 08:34:30'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 37, 2, '2017-02-19 02:35:02', '2017-05-09 11:42:23'),
(7, 'Organizations', 'organizations', 'fa-university', 'module', 32, 3, '2017-02-19 02:35:02', '2017-03-11 09:33:56'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 32, 6, '2017-02-19 02:35:02', '2017-05-11 07:01:59'),
(10, 'Settings', '#', 'fa-cogs', 'custom', 0, 1, '2017-02-27 03:05:33', '2018-07-29 05:47:55'),
(11, 'Divisions', 'divisions', 'fa-angle-double-right', 'module', 37, 20, '2017-02-27 03:05:40', '2017-11-30 07:39:40'),
(13, 'Districts', 'districts', 'fa-angle-double-right', 'module', 37, 21, '2017-02-27 03:14:23', '2017-11-30 07:39:40'),
(14, 'Upazillas', 'upazillas', 'fa fa-angle-double-right', 'module', 37, 22, '2017-02-27 03:25:26', '2017-11-30 07:39:40'),
(18, 'Battalions', 'battalions', 'fa-angle-double-right', 'module', 37, 5, '2017-02-28 22:31:47', '2017-07-22 12:40:55'),
(19, 'Wings', 'wings', 'fa fa-angle-double-right', 'module', 37, 6, '2017-03-02 00:06:08', '2017-07-22 12:40:55'),
(20, 'Branches', 'branches', 'fa fa-angle-double-right', 'module', 37, 7, '2017-03-02 03:34:24', '2017-07-22 12:40:55'),
(21, 'Mother_Forces', 'mother_forces', 'fa-angle-double-right', 'module', 37, 11, '2017-03-02 04:06:02', '2017-11-30 07:39:40'),
(22, 'Cores', 'cores', 'fa fa-angle-double-right', 'module', 37, 12, '2017-03-02 04:47:29', '2017-11-30 07:39:40'),
(23, 'Mother_Units', 'mother_units', 'fa fa-angle-double-right', 'module', 37, 13, '2017-03-02 04:59:00', '2017-11-30 07:39:40'),
(24, 'Ranks', 'ranks', 'fa fa-angle-double-right', 'module', 37, 15, '2017-03-02 05:18:34', '2017-11-30 07:39:40'),
(25, 'Designations', 'designations', 'fa fa-angle-double-right', 'module', 37, 16, '2017-03-02 05:40:19', '2017-11-30 07:39:40'),
(26, 'Sub_Branches', 'sub_branches', 'fa fa-angle-double-right', 'module', 37, 8, '2017-03-03 21:25:04', '2017-07-22 12:40:55'),
(27, 'Sections', 'sections', 'fa fa-angle-double-right', 'module', 37, 9, '2017-03-03 21:45:03', '2017-11-30 07:39:39'),
(28, 'Sub_Sections', 'sub_sections', 'fa fa-angle-double-right', 'module', 37, 10, '2017-03-03 22:13:48', '2017-11-30 07:39:40'),
(29, 'Payroll', '#', 'fa-bank', 'custom', 0, 3, '2017-03-04 02:55:50', '2018-07-29 05:47:59'),
(30, 'Role_Users', 'role_users', 'fa fa-angle-double-right', 'module', 37, 3, '2017-03-04 03:03:57', '2017-05-09 11:42:23'),
(32, 'Test', '#', 'fa-cube', 'custom', 0, 9, '2017-03-04 23:46:25', '2018-07-29 05:48:01'),
(33, 'Test 1', 'testController', 'fa-angle-double-right', 'custom', 32, 1, '2017-03-04 23:46:58', '2017-03-04 23:48:01'),
(35, 'Menu Permissions', 'menu_permissions', 'fa-angle-double-right', 'custom', 37, 4, '2017-03-05 22:39:34', '2017-05-09 11:42:23'),
(37, 'Admin_Settings', '#', 'fa-key', 'custom', 10, 1, '2017-03-06 22:58:30', '2017-10-08 07:27:14'),
(51, 'Payroll Settings', '#', 'fa-cog', 'custom', 10, 3, '2017-03-07 00:06:30', '2017-10-08 07:27:15'),
(52, 'Trades', 'trades', 'fa fa-angle-double-right', 'module', 37, 14, '2017-03-07 21:22:31', '2017-11-30 07:39:40'),
(53, 'Join Order', 'join_order', 'fa-angle-double-right', 'custom', 70, 1, '2017-03-07 21:54:11', '2017-03-12 12:10:49'),
(54, 'HRM', '#', 'fa-group', 'custom', 0, 2, '2017-03-11 09:16:59', '2018-07-29 05:47:57'),
(55, 'Inventory', '#', 'fa-database', 'custom', 0, 4, '2017-03-11 09:25:48', '2018-07-29 05:47:59'),
(56, 'Vehicle', '#', 'fa-automobile', 'custom', 0, 5, '2017-03-11 09:26:57', '2018-07-29 05:48:00'),
(57, 'Countries', 'countries', 'fa fa-angle-double-right', 'module', 37, 18, '2017-03-11 09:49:10', '2017-11-30 07:39:40'),
(58, 'Banks', 'banks', 'fa fa-angle-double-right', 'module', 37, 23, '2017-03-11 10:49:17', '2017-11-30 07:39:40'),
(59, 'Bank_Branches', 'bank_branches', 'fa fa-angle-double-right', 'module', 37, 24, '2017-03-11 12:32:51', '2017-11-30 07:39:40'),
(60, 'Leave_Types', 'leave_types', 'fa fa-angle-double-right', 'module', 1, 1, '2017-03-12 08:52:16', '2017-03-12 08:52:33'),
(61, 'Duty_Types', 'duty_types', 'fa fa-angle-double-right', 'module', 1, 2, '2017-03-12 09:09:06', '2017-03-12 09:10:40'),
(62, 'Movement_Types', 'movement_types', 'fa fa-angle-double-right', 'module', 1, 4, '2017-03-12 09:13:45', '2017-06-19 08:14:13'),
(63, 'Training_Types', 'training_types', 'fa fa-angle-double-right', 'module', 1, 7, '2017-03-12 09:19:54', '2017-09-21 08:49:04'),
(64, 'Inventory Settings', '#', 'fa-database', 'custom', 10, 4, '2017-03-12 10:12:35', '2017-10-08 07:27:15'),
(65, 'Stores', 'stores', 'fa fa-angle-double-right', 'module', 64, 1, '2017-03-12 10:37:06', '2017-03-12 10:37:33'),
(66, 'Item_Categories', 'item_categories', 'fa fa-angle-double-right', 'module', 64, 4, '2017-03-12 10:59:49', '2017-04-13 08:28:58'),
(67, 'Item_Groups', 'item_groups', 'fa fa-angle-double-right', 'module', 64, 5, '2017-03-12 11:05:32', '2017-04-13 08:28:58'),
(68, 'Measurement_Units', 'measurement_units', 'fa fa-angle-double-right', 'module', 64, 8, '2017-03-12 11:17:34', '2017-04-13 08:28:58'),
(69, 'Suppliers', 'suppliers', 'fa fa-angle-double-right', 'module', 64, 9, '2017-03-12 11:51:10', '2017-04-13 08:28:58'),
(70, 'Employee Management', '#', 'fa-users', 'custom', 54, 1, '2017-03-12 12:10:09', '2017-03-12 12:10:45'),
(71, 'Vehicle_Types', 'vehicle_types', 'fa fa-angle-double-right', 'module', 72, 2, '2017-03-14 11:47:33', '2017-05-23 05:51:03'),
(72, 'Vehicle Settings', '#', 'fa-automobile', 'custom', 10, 5, '2017-03-14 11:48:38', '2017-10-08 07:27:15'),
(73, 'Vehicle_Brands', 'vehicle_brands', 'fa fa-angle-double-right', 'module', 72, 3, '2017-03-14 12:09:40', '2017-05-23 05:51:03'),
(75, 'Posting', 'posting', 'fa-angle-double-right', 'custom', 70, 8, '2017-03-16 05:25:07', '2017-08-09 05:06:18'),
(76, 'Join', 'join', 'fa-angle-double-right', 'custom', 70, 12, '2017-03-20 03:52:10', '2017-08-09 05:06:36'),
(81, 'Store_Users', 'store_users', 'fa fa-angle-double-right', 'module', 64, 3, '2017-03-21 09:44:56', '2017-04-13 08:28:58'),
(88, 'Basic_Informations', 'basic_informations', 'fa fa-angle-double-right', 'module', 70, 13, '2017-03-23 04:16:13', '2017-08-09 05:06:37'),
(90, 'Addresses', 'addresses', 'fa fa-angle-double-right', 'module', 70, 14, '2017-03-23 06:23:54', '2017-08-09 05:06:37'),
(91, 'Family_Informations', 'family_informations', 'fa fa-angle-double-right', 'module', 70, 15, '2017-03-29 08:54:46', '2017-08-09 05:06:37'),
(92, 'Relations', 'relations', 'fa fa-angle-double-right', 'module', 1, 8, '2017-03-30 10:11:13', '2018-01-21 11:59:36'),
(93, 'Courses', 'courses', 'fa fa-angle-double-right', 'module', 37, 25, '2017-04-01 06:41:15', '2017-11-30 07:39:41'),
(94, 'Travel_Informations', 'travel_informations', 'fa fa-angle-double-right', 'module', 70, 17, '2017-04-01 09:07:03', '2017-08-09 05:06:37'),
(95, 'Training_Infos', 'training_infos', 'fa fa-angle-double-right', 'module', 70, 23, '2017-04-01 09:40:15', '2017-08-09 05:06:37'),
(96, 'Leaves', 'leaves', 'fa fa-angle-double-right', 'module', 112, 4, '2017-04-01 09:56:35', '2018-05-26 08:45:34'),
(97, 'Promotions', 'promotions', 'fa fa-angle-double-right', 'module', 70, 25, '2017-04-01 10:32:07', '2017-08-09 05:06:37'),
(98, 'Blood_Donations', 'blood_donations', 'fa fa-angle-double-right', 'module', 70, 19, '2017-04-01 10:53:08', '2017-08-09 05:06:37'),
(99, 'Daily_Duties', 'daily_duties', 'fa fa-angle-double-right', 'module', 112, 6, '2017-04-01 11:20:26', '2018-05-26 08:45:34'),
(100, 'Daily_Movements', 'daily_movements', 'fa fa-angle-double-right', 'module', 112, 2, '2017-04-01 11:37:23', '2017-04-06 03:46:03'),
(101, 'Education_Infos', 'education_infos', 'fa fa-angle-double-right', 'module', 70, 16, '2017-04-02 03:56:19', '2017-08-09 05:06:37'),
(102, 'Increment_Types', 'increment_types', 'fa fa-angle-double-right', 'module', 1, 6, '2017-04-02 05:16:20', '2017-09-21 08:49:04'),
(103, 'Increment_Infos', 'increment_infos', 'fa fa-angle-double-right', 'module', 70, 27, '2017-04-02 05:27:08', '2017-08-09 05:06:37'),
(104, 'Attendence_Statuses', 'attendence_statuses', 'fa fa-angle-double-right', 'module', 1, 5, '2017-04-02 08:18:08', '2017-06-19 08:14:13'),
(105, 'Daily_Attendences', 'daily_attendences', 'fa fa-angle-double-right', 'module', 112, 1, '2017-04-02 09:41:12', '2017-04-03 03:43:50'),
(106, 'Training_Weeks', 'training_weeks', 'fa fa-angle-double-right', 'module', 70, 9, '2017-04-02 10:10:40', '2017-08-09 05:06:36'),
(107, 'RAB Basic Trainings', 'pre_trainings', 'fa fa-angle-double-right', 'module', 70, 10, '2017-04-02 10:30:09', '2017-08-09 05:06:36'),
(108, 'Disciplinary_Actions', 'disciplinary_actions', 'fa fa-angle-double-right', 'module', 70, 29, '2017-04-02 10:31:16', '2017-08-09 05:06:37'),
(109, 'Certificate_Courses', 'certificate_courses', 'fa fa-angle-double-right', 'module', 70, 18, '2017-04-02 10:36:52', '2017-08-09 05:06:37'),
(111, 'Resident_Infos', 'resident_infos', 'fa fa-angle-double-right', 'module', 70, 31, '2017-04-02 12:10:29', '2017-08-09 05:06:37'),
(112, 'Attendance & Leave Management', '#', 'fa-calendar', 'custom', 54, 2, '2017-04-03 03:42:30', '2017-04-20 11:38:36'),
(113, 'Awards', 'awards', 'fa fa-angle-double-right', 'module', 70, 30, '2017-04-03 04:19:38', '2017-08-09 05:06:37'),
(114, 'Manpower_Budgets', 'manpower_budgets', 'fa fa-angle-double-right', 'module', 1, 9, '2017-04-03 05:54:17', '2018-01-21 11:59:36'),
(116, 'Assign_Store_Items', 'assign_store_items', 'fa fa-angle-double-right', 'module', 64, 11, '2017-04-05 06:40:19', '2017-07-30 09:56:58'),
(117, 'Items', 'items', 'fa fa-angle-double-right', 'module', 64, 6, '2017-04-05 08:44:26', '2017-04-13 08:28:58'),
(118, 'Medical_Categories', 'medical_categories', 'fa fa-angle-double-right', 'module', 70, 20, '2017-04-05 11:37:11', '2017-08-09 05:06:37'),
(119, 'Receives', '#', 'fa-angle-double-right', 'custom', 55, 2, '2017-04-05 11:50:18', '2018-05-29 05:39:58'),
(120, 'PDS', 'pds', 'fa-angle-double-right', 'custom', 132, 5, '2017-04-06 04:25:00', '2018-05-27 07:32:10'),
(122, 'Bank_Accounts', 'bank_accounts', 'fa fa-angle-double-right', 'module', 70, 33, '2017-04-08 11:44:12', '2018-01-21 12:18:03'),
(123, 'Possible Release Manpower List', 'prml', 'fa-angle-double-right', 'custom', 132, 12, '2017-04-09 08:32:01', '2018-05-27 07:32:11'),
(124, 'Released Manpower List', 'rml', 'fa-angle-double-right', 'custom', 132, 13, '2017-04-09 10:58:40', '2018-05-27 07:32:11'),
(125, 'Designation_Mappings', 'designation_mappings', 'fa fa-angle-double-right', 'module', 37, 17, '2017-04-10 06:38:37', '2017-11-30 07:39:40'),
(126, 'Force & Rank Wise Manpower List', 'frwml', 'fa-angle-double-right', 'custom', 132, 16, '2017-04-10 09:18:48', '2018-05-27 07:32:11'),
(127, 'Force Wise Manpower List', 'fwml', 'fa-angle-double-right', 'custom', 132, 17, '2017-04-11 09:02:27', '2018-05-27 07:32:11'),
(128, 'Rank Wise Manpower List', 'rwml', 'fa-angle-double-right', 'custom', 132, 20, '2017-04-11 09:03:39', '2018-05-27 07:32:11'),
(129, 'Item_Parts', 'item_parts', 'fa fa-angle-double-right', 'module', 64, 7, '2017-04-11 11:13:18', '2017-04-13 08:28:58'),
(130, 'Assign_Stores', 'organization_stores', 'fa fa-angle-double-right', 'module', 64, 2, '2017-04-12 05:16:34', '2017-04-12 05:17:26'),
(131, 'Un-released Posting Order', 'unreleased_posting_order', 'fa-angle-double-right', 'custom', 132, 14, '2017-04-12 09:12:16', '2018-05-27 07:32:11'),
(132, 'Reports', '#', 'fa-bar-chart', 'custom', 54, 3, '2017-04-12 09:13:04', '2017-05-13 04:01:20'),
(133, 'Manpower State of RAB Battalions', 'manpower_state_rab_battalions', 'fa-angle-double-right', 'custom', 132, 21, '2017-04-12 10:56:00', '2018-05-27 07:32:11'),
(134, 'Manpower State Battalion Wings', 'manpower_state_battalion_wings', 'fa-angle-double-right', 'custom', 132, 22, '2017-04-13 11:51:56', '2018-05-27 07:32:11'),
(135, 'Distribution of RAB Forces Manpower', 'rab_manpower_distribution', 'fa-angle-double-right', 'custom', 132, 23, '2017-04-15 03:42:14', '2018-05-27 07:32:11'),
(136, 'Receive_Purchase', 'receive_purchase', 'fa-angle-double-right', 'custom', 119, 1, '2017-04-16 03:58:49', '2017-04-16 07:14:12'),
(137, 'Core Wise Nominal Roll', 'core_wise_nominal_roll', 'fa-angle-double-right', 'custom', 132, 24, '2017-04-17 05:55:17', '2018-05-27 07:32:11'),
(138, 'Currencies', 'currencies', 'fa fa-angle-double-right', 'module', 37, 19, '2017-04-18 05:43:58', '2017-11-30 07:39:40'),
(139, 'Designation Wise Manpower State', 'designation_wise_manpower_state', 'fa-angle-double-right', 'custom', 132, 26, '2017-04-18 11:47:50', '2018-05-27 07:32:11'),
(140, 'Core Wise Monthly State', 'core_wise_monthly_state', 'fa-angle-double-right', 'custom', 132, 27, '2017-04-18 14:33:18', '2018-05-27 07:32:11'),
(141, 'Ledgers', 'ledgers', 'fa-bar-chart', 'custom', 55, 5, '2017-04-19 03:12:36', '2018-05-29 05:39:58'),
(142, 'Officer State', 'officer_state', 'fa-angle-double-right', 'custom', 132, 28, '2017-04-19 03:51:34', '2018-05-27 07:32:11'),
(143, 'Issues', '#', 'fa-angle-double-right', 'custom', 55, 3, '2017-04-19 06:03:32', '2018-05-29 05:39:58'),
(144, 'Store_Issues', 'issues/store_issues', 'fa-angle-double-right', 'custom', 143, 3, '2017-04-19 06:56:28', '2017-08-09 05:06:38'),
(145, 'Academy_Courses', 'academy_courses', 'fa fa-angle-double-right', 'module', 37, 26, '2017-04-19 11:13:52', '2017-11-30 07:39:41'),
(146, 'Daily Parade State Wing', 'daily_parade_state_wing', 'fa-angle-double-right', 'custom', 132, 34, '2017-04-22 06:59:00', '2018-05-27 07:32:11'),
(147, 'Manpower to Join in RAB', 'waiting_to_join_rab', 'fa-angle-double-right', 'custom', 132, 8, '2017-04-23 04:09:27', '2018-05-27 07:32:11'),
(148, 'Hospital_Admissions', 'hospital_admissions', 'fa fa-angle-double-right', 'module', 70, 21, '2017-04-23 06:43:09', '2017-08-09 05:06:37'),
(149, 'Chronic_Diseases', 'chronic_diseases', 'fa fa-angle-double-right', 'module', 70, 22, '2017-04-23 07:17:41', '2017-08-09 05:06:37'),
(150, 'State of Hospital Admission & Discharge', 'hospital_admission_state', 'fa-angle-double-right', 'custom', 132, 33, '2017-04-23 08:22:32', '2018-05-27 07:32:11'),
(151, 'Inter-RAB Posted Manpower', 'inter_posted_manpower', 'fa-angle-double-right', 'custom', 132, 11, '2017-04-24 06:04:29', '2018-05-27 07:32:11'),
(152, 'OR State', 'or_state', 'fa-angle-double-right', 'custom', 132, 29, '2017-04-25 04:29:55', '2018-05-27 07:32:11'),
(153, 'State of Blood Group & Donation', 'blood_group_donation_state', 'fa-angle-double-right', 'custom', 132, 31, '2017-04-25 10:35:59', '2018-05-27 07:32:11'),
(154, 'State of Medical Category', 'medical_category_state', 'fa-angle-double-right', 'custom', 132, 32, '2017-04-25 12:36:28', '2018-05-27 07:32:11'),
(155, 'Daily Parade State Battalion', 'daily_parade_state_battalion', 'fa-angle-double-right', 'custom', 132, 35, '2017-04-26 06:19:25', '2018-05-27 07:32:11'),
(156, 'Private_Purchase_Receive', 'receive/private_purchase_receive', 'fa-angle-double-right', 'custom', 119, 2, '2017-04-26 09:07:12', '2017-04-26 09:07:24'),
(157, 'Fuel_Types', 'fuel_types', 'fa fa-angle-double-right', 'module', 72, 5, '2017-04-26 09:54:24', '2017-05-23 05:51:03'),
(158, 'Repair_Types', 'repair_types', 'fa fa-angle-double-right', 'module', 72, 6, '2017-04-26 10:01:30', '2017-05-23 05:51:03'),
(159, 'Oil_Types', 'oil_types', 'fa fa-angle-double-right', 'module', 72, 7, '2017-04-26 10:07:26', '2017-05-23 05:51:03'),
(160, 'Stakeholder_Ledgers', 'stakeholder_ledgers', 'fa-bar-chart', 'custom', 55, 6, '2017-04-26 11:08:53', '2018-05-29 05:39:58'),
(161, 'Issue_Return_Receive', 'receive/issue_return_receive', 'fa-angle-double-right', 'custom', 119, 3, '2017-04-26 13:15:45', '2017-04-26 13:16:01'),
(162, 'RAL_Infos', 'ral_infos', 'fa fa-angle-double-right', 'module', 70, 28, '2017-04-27 09:00:03', '2017-08-09 05:06:37'),
(163, 'Promotion_Exams', 'promotion_exams', 'fa fa-angle-double-right', 'module', 70, 24, '2017-04-27 10:35:02', '2017-08-09 05:06:37'),
(164, 'Post_Permanents', 'post_permanents', 'fa fa-angle-double-right', 'module', 70, 26, '2017-04-27 11:53:35', '2017-08-09 05:06:37'),
(166, 'Repair_Issues', 'issues/repair_issues', 'fa-angle-double-right', 'custom', 143, 5, '2017-04-29 07:09:27', '2017-08-24 08:49:34'),
(167, 'Nominal Roll of Manpower', 'manpower_nominal_roll', 'fa-angle-double-right', 'custom', 132, 25, '2017-04-29 12:05:06', '2018-05-27 07:32:11'),
(168, 'Repair_Receive', 'receive/repair_receive', 'fa-angle-double-right', 'custom', 119, 4, '2017-04-30 04:39:56', '2017-04-30 04:40:19'),
(169, 'Ration_Categories', 'ration_categories', 'fa fa-angle-double-right', 'module', 292, 1, '2017-05-03 04:56:42', '2018-01-21 11:59:36'),
(170, 'Ration_Infos', 'ration_infos', 'fa fa-angle-double-right', 'module', 290, 1, '2017-05-03 05:07:19', '2018-01-21 12:18:03'),
(171, 'Personnel Statistics of  RAB Forces', 'personal_state_rab_forces', 'fa-angle-double-right', 'custom', 132, 36, '2017-05-06 04:09:40', '2018-05-27 07:32:11'),
(172, 'Battalion and Force Wise Parade State', 'bfwps', 'fa-angle-double-right', 'custom', 132, 37, '2017-05-06 10:52:20', '2018-05-27 07:32:11'),
(173, 'Draft_Posting_Notes', 'posting_notes', 'fa-angle-double-right', 'custom', 70, 5, '2017-05-07 06:52:22', '2017-07-15 07:23:22'),
(174, 'OR State Battalion', 'or_state_batt', 'fa-angle-double-right', 'custom', 132, 30, '2017-05-07 08:59:22', '2018-05-27 07:32:11'),
(175, 'Force Wise Manpower State Battalion', 'fwms_batt', 'fa-angle-double-right', 'custom', 132, 18, '2017-05-07 09:00:26', '2018-05-27 07:32:11'),
(176, 'Manpower Waiting for Posting', 'manpower_waiting_for_posting', 'fa-angle-double-right', 'custom', 132, 9, '2017-05-07 09:40:03', '2018-05-27 07:32:11'),
(177, 'Un-Released Manpower List', 'urml', 'fa-angle-double-right', 'custom', 132, 15, '2017-05-08 11:27:38', '2018-05-27 07:32:11'),
(178, 'Final_Posting_Notes', 'final_posting_notes', 'fa-angle-double-right', 'custom', 70, 6, '2017-05-09 11:41:57', '2017-07-15 07:23:22'),
(180, 'Date Wise Issue Report', 'date_wise_issue_report', 'fa-angle-double-right', 'custom', 181, 2, '2017-05-11 08:47:33', '2017-09-26 06:56:11'),
(181, 'Inventory Report', '#', 'fa-bar-chart', 'custom', 55, 8, '2017-05-13 04:19:21', '2018-06-25 03:42:52'),
(182, 'Date Wise Receive Report', 'date_wise_receive_report', 'fa-angle-double-right', 'custom', 181, 3, '2017-05-13 05:30:33', '2017-09-26 06:56:11'),
(183, 'View_Profile', 'profile', 'fa-angle-double-right', 'custom', 132, 2, '2017-05-13 05:35:45', '2017-08-05 06:15:11'),
(184, 'BAFY1974 Report', 'bafy_1974', 'fa-angle-double-right', 'custom', 132, 38, '2017-05-13 06:45:39', '2018-05-27 07:32:11'),
(185, 'On_Going_Orientation_Training', 'hrm/on_going_orientation_training', 'fa-angle-double-right', 'custom', 132, 39, '2017-05-13 10:54:15', '2018-05-27 07:32:11'),
(186, 'Posting Parade State Force', 'ppsf', 'fa-angle-double-right', 'custom', 132, 45, '2017-05-14 06:01:58', '2018-07-18 06:55:24'),
(187, 'Leave Nominal Roll', 'leave_nom_roll', 'fa-angle-double-right', 'custom', 132, 40, '2017-05-15 06:34:41', '2018-05-27 07:32:12'),
(188, 'Profile_Amendments', 'profile_amendments', 'fa fa-angle-double-right', 'module', 70, 32, '2017-05-16 03:44:23', '2018-01-21 12:18:03'),
(189, 'Profile Amendment Requests', 'profile_amendment_requests', 'fa-angle-double-right', 'custom', 132, 4, '2017-05-16 04:29:12', '2018-05-27 07:32:10'),
(191, 'Posting_Applications', 'posting_applications', 'fa fa-angle-double-right', 'module', 70, 2, '2017-05-16 08:05:55', '2017-05-16 08:06:42'),
(192, 'Posting_Request', 'hrm/posting_request', 'fa-angle-double-right', 'custom', 132, 7, '2017-05-16 11:05:25', '2018-05-27 07:32:10'),
(193, 'Daily Leave Nominal Roll', 'daily_leave_nomroll', 'fa-angle-double-right', 'custom', 132, 41, '2017-05-16 11:27:54', '2018-05-27 07:32:12'),
(194, 'Posting Parade State Officer', 'pps_offr', 'fa-angle-double-right', 'custom', 132, 46, '2017-05-17 04:24:56', '2018-07-18 06:55:25'),
(195, 'Vehicle_Models', 'vehicle_models', 'fa fa-angle-double-right', 'module', 72, 4, '2017-05-18 06:41:53', '2017-05-23 05:51:03'),
(196, 'Vehicle_Receives', 'vehicle/vehicle_receives', 'fa-angle-double-right', 'custom', 205, 1, '2017-05-18 06:55:53', '2017-08-05 05:18:07'),
(197, 'Vehicle_Budgets', 'vehicle_budgets', 'fa fa-angle-double-right', 'module', 72, 8, '2017-05-18 07:02:36', '2017-05-23 05:51:03'),
(198, 'Parts_Categories', 'parts_categories', 'fa fa-angle-double-right', 'module', 72, 9, '2017-05-20 04:29:27', '2017-05-23 05:51:03'),
(199, 'Parts', 'parts', 'fa fa-angle-double-right', 'module', 72, 10, '2017-05-20 04:39:07', '2017-05-23 05:51:03'),
(201, 'Vehicle_Fuels', 'vehicle_fuels', 'fa fa-angle-double-right', 'module', 205, 9, '2017-05-20 05:40:47', '2017-08-12 05:55:26'),
(202, 'Vehicle_Drivers', 'vehicle_drivers', 'fa fa-angle-double-right', 'module', 205, 10, '2017-05-20 06:40:21', '2017-08-12 05:55:26'),
(203, 'KPL_Infos', 'kpl_infos', 'fa fa-angle-double-right', 'module', 205, 11, '2017-05-20 07:06:59', '2017-08-12 05:55:26'),
(204, 'KPL_Members', 'kpl_members', 'fa fa-angle-double-right', 'module', 205, 12, '2017-05-20 08:11:38', '2017-08-12 05:55:26'),
(205, 'Vehicle Management', '#', 'fa-angle-double-right', 'custom', 56, 1, '2017-05-21 11:05:13', '2017-05-21 11:05:27'),
(206, 'Battery_Records', 'battery_records', 'fa fa-angle-double-right', 'module', 205, 13, '2017-05-22 09:10:14', '2017-08-12 05:55:26'),
(207, 'Oil_Change_Records', 'oil_change_records', 'fa fa-angle-double-right', 'module', 205, 14, '2017-05-22 10:14:21', '2017-08-12 05:55:27'),
(208, 'Vehicle_Sources', 'vehicle_sources', 'fa fa-angle-double-right', 'module', 72, 1, '2017-05-23 05:50:38', '2017-05-23 05:51:03'),
(209, 'Draft_Vehicle_Notes', 'vehicle/draft_vehicle_notes', 'fa-angle-double-right', 'custom', 205, 4, '2017-05-23 10:56:46', '2017-08-12 05:06:12'),
(210, 'Daily_Vehicle_Usages', 'daily_vehicle_usages', 'fa fa-angle-double-right', 'module', 205, 15, '2017-05-23 12:21:11', '2017-08-12 05:55:27'),
(211, 'Final_Vehicle_Notes', 'vehicle/final_vehicle_notes', 'fa-angle-double-right', 'custom', 205, 5, '2017-05-24 08:29:10', '2017-08-12 05:06:12'),
(212, 'Vehicle_Assigns', 'vehicle/vehicle_assigns', 'fa-angle-double-right', 'custom', 205, 7, '2017-05-25 07:12:42', '2017-08-12 05:06:12'),
(213, 'Wheel_Rotation_Recs', 'wheel_rotation_recs', 'fa fa-angle-double-right', 'module', 205, 16, '2017-05-29 04:57:46', '2017-08-12 05:55:27'),
(214, 'Tyre_Change_Recs', 'tyre_change_recs', 'fa fa-angle-double-right', 'module', 205, 17, '2017-05-29 05:30:06', '2017-08-12 05:55:27'),
(215, 'Vehicle_Accident_Recs', 'vehicle_accident_recs', 'fa fa-angle-double-right', 'module', 205, 18, '2017-05-29 05:57:09', '2017-08-12 05:55:27'),
(217, 'Vehicle Details', 'vehicle/vehicle_details', 'fa-angle-double-right', 'custom', 205, 2, '2017-05-30 08:52:12', '2017-08-12 05:06:05'),
(218, 'Vehicle Repair', 'vehicle/vehicle_repair', 'fa-angle-double-right', 'custom', 205, 19, '2017-06-01 03:48:55', '2017-08-12 05:55:27'),
(219, 'Vehicle_Parts_Entry', 'vehicle/vehicle_parts_entry', 'fa-angle-double-right', 'custom', 205, 3, '2017-06-03 05:25:28', '2017-08-12 05:06:11'),
(220, 'Manpower_State', 'hrm/manpower_state', 'fa-angle-double-right', 'custom', 132, 6, '2017-06-06 04:57:42', '2018-05-27 07:32:10'),
(221, 'Move_Orders', 'hrm/move_orders', 'fa-angle-double-right', 'custom', 70, 7, '2017-06-08 02:44:14', '2017-07-15 07:23:22'),
(223, 'Manpower_Auths', 'manpower_auths', 'fa fa-angle-double-right', 'module', 1, 10, '2017-06-12 09:24:13', '2018-01-21 11:59:36'),
(224, 'Vehicle Issue', 'vehicle/vehicle_issue', 'fa-angle-double-right', 'custom', 205, 6, '2017-06-13 06:30:21', '2017-08-12 05:06:12'),
(225, 'Parade State By Branch', 'parade_state_branch', 'fa-angle-double-right', 'custom', 132, 47, '2017-06-17 09:23:38', '2018-07-18 06:55:25'),
(226, 'Duty_Roster_Policies', 'duty_roster_policies', 'fa fa-angle-double-right', 'module', 1, 3, '2017-06-19 08:13:47', '2017-06-19 08:14:13'),
(227, 'Daily Vehicle Usage Report', 'daily_veh_usg_rpt', 'fa-angle-double-right', 'custom', 230, 2, '2017-06-20 08:48:33', '2017-08-05 05:18:08'),
(228, 'Security_Duty', 'hrm/security_duty', 'fa-angle-double-right', 'custom', 132, 48, '2017-06-21 04:22:43', '2018-07-18 06:55:25'),
(230, 'Vehicle Reports', '#', 'fa-bar-chart', 'custom', 56, 2, '2017-06-21 08:05:53', '2017-06-21 08:06:32'),
(231, 'Monthly Vehicle Usage Report', 'monthly_veh_usg_rpt', 'fa-angle-double-right', 'custom', 230, 3, '2017-06-21 08:33:53', '2017-08-05 05:18:08'),
(232, 'Core_And_Trade_Wise_Manpower_Statistics', 'hrm/CATWMS', 'fa-angle-double-right', 'custom', 132, 49, '2017-07-03 05:54:39', '2018-07-18 06:55:25'),
(233, 'Nominal Roll of Joined Manpower', 'nomroll_joined_mp', 'fa-angle-double-right', 'custom', 132, 50, '2017-07-03 08:28:26', '2018-07-18 06:55:25'),
(234, 'New_Rab_Member', 'hrm/new_rab_member', 'fa-angle-double-right', 'custom', 132, 51, '2017-07-05 04:47:12', '2018-07-18 06:55:25'),
(235, 'Absent Manpower State', 'absent_manpower_state', 'fa-angle-double-right', 'custom', 132, 52, '2017-07-05 04:47:50', '2018-07-18 06:55:25'),
(236, 'Force_Wise_Manpower_State_Wing', 'hrm/FWMSW', 'fa-angle-double-right', 'custom', 132, 19, '2017-07-05 10:24:04', '2018-05-27 07:32:11'),
(238, 'Battalion Wise Vehicle Distribution', 'batt_wise_veh_dist', 'fa-angle-double-right', 'custom', 230, 4, '2017-07-13 11:11:02', '2017-08-05 05:18:08'),
(239, 'Draft_Posting_Note_Officer', 'hrm/draft_posting_note_officer', 'fa-angle-double-right', 'custom', 70, 3, '2017-07-15 04:37:59', '2017-07-15 04:39:47'),
(240, 'Final_Posting_Notes_Officer', 'hrm/final_posting_notes_officer', 'fa-angle-double-right', 'custom', 70, 4, '2017-07-15 07:22:48', '2017-07-15 07:23:22'),
(241, 'Manpower Waiting for joining', 'manpower_waiting_for_joining', 'fa-angle-double-right', 'custom', 132, 10, '2017-07-15 10:02:17', '2018-05-27 07:32:11'),
(242, 'Wing Wise Vehicle Distribution', 'wing_wise_veh_dist', 'fa-angle-double-right', 'custom', 230, 5, '2017-07-22 03:49:01', '2017-08-05 05:18:08'),
(243, 'Interposted_Out_Manpower', 'hrm/release', 'fa-angle-double-right', 'custom', 70, 11, '2017-07-22 05:09:02', '2017-08-09 05:06:36'),
(244, 'individual_issues', 'issues/individual_issues', 'fa-angle-double-right', 'custom', 143, 2, '2017-07-22 10:12:21', '2017-08-09 05:06:38'),
(246, 'Mali_MT_State', 'mali_mt_state', 'fa-angle-double-right', 'custom', 132, 53, '2017-07-27 05:10:03', '2018-07-18 06:55:26'),
(247, 'Item Wise Report', 'item_wise_report', 'fa-angle-double-right', 'custom', 181, 4, '2017-07-29 04:46:14', '2017-09-26 06:56:11'),
(248, 'Brands', 'brands', 'fa fa-angle-double-right', 'module', 64, 10, '2017-07-30 09:56:27', '2017-07-30 09:56:58'),
(249, 'Vehicle Search', 'vehicle_search', 'fa-angle-double-right', 'custom', 230, 1, '2017-08-05 05:17:09', '2017-08-05 05:18:08'),
(250, 'Manpower_Search', 'hrm/manpower_search', 'fa-angle-double-right', 'custom', 132, 1, '2017-08-05 06:14:55', '2017-08-05 06:15:11'),
(251, 'Repair Unservice', 'repair_unservice_report', 'fa-angle-double-right', 'custom', 181, 6, '2017-08-06 05:52:27', '2017-11-19 09:15:00'),
(252, 'Special_Trade_Wise_Manpower_Statistics', 'hrm/STWMSR', 'fa-angle-double-right', 'custom', 132, 54, '2017-08-07 08:49:15', '2018-07-18 06:55:26'),
(253, 'previous_issues', 'issues/previous_issues', 'fa-angle-double-right', 'custom', 143, 1, '2017-08-09 05:03:40', '2017-08-09 05:06:38'),
(254, 'Inventory_Damages', 'inventory_damages', 'fa-angle-double-right', 'custom', 55, 4, '2017-08-10 06:19:39', '2018-05-29 05:39:58'),
(255, 'vehicle_damage_record', 'vehicle/vehicle_damage', 'fa-angle-double-right', 'custom', 205, 20, '2017-08-10 10:11:38', '2017-08-12 05:55:27'),
(256, 'Vehicle_Allocations', 'vehicle/vehicle_allocations', 'fa-angle-double-right', 'custom', 205, 8, '2017-08-12 05:54:46', '2017-08-12 05:55:26'),
(257, 'Store_Receives', 'inventory/store_receives', 'fa-angle-double-right', 'custom', 119, 6, '2017-08-14 06:43:22', '2017-12-05 05:51:28'),
(258, 'Item to be Expired', 'item_expired', 'fa-angle-double-right', 'custom', 181, 7, '2017-08-19 04:44:58', '2017-11-19 09:15:00'),
(259, 'Payroll_Types', 'payroll_types', 'fa fa-angle-double-right', 'module', 51, 1, '2017-08-23 09:13:52', '2017-08-23 09:14:12'),
(260, 'Payroll_Heads', 'payroll_heads', 'fa fa-angle-double-right', 'module', 51, 2, '2017-08-23 09:36:52', '2017-08-23 09:37:14'),
(261, 'Organization_Issues', 'issues/organization_issues', 'fa-angle-double-right', 'custom', 143, 4, '2017-08-24 08:49:10', '2017-08-24 08:49:34'),
(262, 'Monthly Vehicle Report', 'monthly_vehicle_report', 'fa-angle-double-right', 'custom', 230, 6, '2017-08-30 06:36:14', '2017-08-30 06:36:46'),
(263, 'Salary_Policy', 'payroll/salary_policy', 'fa-angle-double-right', 'custom', 29, 1, '2017-09-09 09:37:20', '2017-09-09 09:57:21'),
(264, 'Others_Issues', 'issues/others_issues', 'fa-angle-double-right', 'custom', 143, 6, '2017-09-11 06:11:55', '2017-09-11 06:13:05'),
(265, 'Officer_Regular_Salary', 'payroll/officer_regular_salary', 'fa-angle-double-right', 'custom', 277, 1, '2017-09-14 09:37:49', '2017-11-16 09:59:39'),
(266, 'Payroll_Allowances', 'payroll_allowances', 'fa fa-angle-double-right', 'module', 51, 5, '2017-09-14 10:50:54', '2017-11-30 07:39:47'),
(267, 'Pay_Scales', 'payroll/pay_scales', 'fa-angle-double-right', 'custom', 51, 4, '2017-09-16 09:51:17', '2017-11-30 07:39:47'),
(268, 'regular_salary_est_afd', 'payroll/regular_salary_est_afd', 'fa-angle-double-right', 'custom', 29, 5, '2017-09-19 05:40:56', '2017-12-18 10:27:07'),
(269, 'Payroll_Deductions', 'payroll_deductions', 'fa-angle-double-right', 'custom', 51, 6, '2017-09-20 08:40:03', '2017-11-30 07:39:47'),
(270, 'Payroll_Hrm', 'payroll_hrm', 'fa-angle-double-right', 'custom', 29, 2, '2017-09-21 08:48:02', '2017-09-21 08:49:05'),
(271, 'regular_salary_est_police', 'payroll/regular_salary_est_police', 'fa-angle-double-right', 'custom', 29, 6, '2017-09-23 05:17:35', '2017-12-18 10:27:07'),
(272, 'item_wise_issue', 'item_wise_issue', 'fa-angle-double-right', 'custom', 181, 8, '2017-09-24 05:06:07', '2017-11-19 09:15:00'),
(273, 'person_wise_issue', 'person_wise_issue', 'fa-angle-double-right', 'custom', 181, 1, '2017-09-26 06:55:36', '2017-09-26 06:56:11'),
(274, 'Salary_Process', 'salary_process', 'fa-angle-double-right', 'custom', 29, 3, '2017-10-03 06:10:42', '2017-10-03 06:11:45'),
(275, 'item_wise_receive', 'item_wise_receive', 'fa-angle-double-right', 'custom', 181, 10, '2017-10-26 08:32:19', '2017-11-20 07:30:03'),
(276, 'Payroll_5221', 'payroll_5221', 'fa-angle-double-right', 'custom', 277, 2, '2017-11-06 09:32:11', '2017-11-16 09:59:39'),
(277, 'Payroll_Reports', '#', 'fa-bar-chart-o', 'custom', 29, 7, '2017-11-06 09:35:12', '2017-12-18 10:27:07'),
(278, 'Regular_Salary_Sheet', 'payroll/regular_salary_sheet', 'fa-angle-double-right', 'custom', 277, 3, '2017-11-09 08:40:25', '2017-11-16 09:59:39'),
(279, 'Installation_Bill', 'payroll/installation_bill', 'fa-angle-double-right', 'custom', 277, 4, '2017-11-13 05:56:00', '2017-11-16 09:59:39'),
(280, 'Attracting_Bill', 'payroll/attracting_bill', 'fa-angle-double-right', 'custom', 277, 5, '2017-11-14 09:19:33', '2017-11-16 09:59:39'),
(281, 'Item Wise Ledger', 'item_wise_ledger', 'fa-angle-double-right', 'custom', 181, 5, '2017-11-19 09:14:26', '2017-11-19 09:15:00'),
(282, 'org_wise_issue', 'org_wise_issue', 'fa-angle-double-right', 'custom', 181, 9, '2017-11-20 07:29:25', '2017-11-20 07:30:03'),
(283, 'Payroll_Sub_Heads', 'payroll_sub_heads', 'fa fa-angle-double-right', 'module', 51, 3, '2017-11-30 07:39:16', '2017-11-30 07:39:47'),
(284, 'Opening_Store_Receives', 'inventory/opening_store_receives', 'fa-angle-double-right', 'custom', 119, 5, '2017-12-05 05:50:55', '2017-12-05 05:51:28'),
(285, 'Payroll_Accounts', 'payroll_accounts', 'fa fa-angle-double-right', 'module', 51, 8, '2017-12-09 11:26:06', '2017-12-18 07:58:23'),
(286, 'Monthly_Payment_Nominal_Roll', 'payroll/mpnr', 'fa-angle-double-right', 'custom', 277, 6, '2017-12-11 07:33:03', '2017-12-11 07:33:29'),
(287, 'Personal_Deduction_Types', 'personal_deduction_types', 'fa fa-angle-double-right', 'module', 51, 7, '2017-12-18 07:57:20', '2017-12-18 07:58:23'),
(288, 'Personal_Deductions', 'payroll/personal_deductions', 'fa-angle-double-right', 'custom', 29, 4, '2017-12-18 10:26:35', '2017-12-18 10:27:07'),
(289, 'Ration_Unit_Setups', 'ration_unit_setups', 'fa fa-angle-double-right', 'module', 292, 2, '2018-01-21 10:06:17', '2018-01-21 11:59:36'),
(290, 'Ration', '#', 'fa-angle-double-right', 'custom', 0, 6, '2018-01-21 11:43:39', '2018-07-29 05:48:01'),
(291, 'Ration_Distributions', 'ration/ration_distributions', 'fa-angle-double-right', 'custom', 290, 2, '2018-01-21 11:56:23', '2018-01-21 12:18:03'),
(292, 'Ration_Settings', '#', 'fa-glass', 'custom', 10, 6, '2018-01-21 11:57:56', '2018-01-21 12:22:38'),
(293, 'Ration_Sells', 'ration/ration_sells', 'fa-angle-double-right', 'custom', 290, 3, '2018-01-25 08:35:43', '2018-01-25 08:36:05'),
(294, 'Bomb Disposal', 'Disposal', 'fa-adjust', 'custom', 0, 7, '2018-05-10 03:43:39', '2018-07-29 05:48:01'),
(295, 'Disposal Management', '#', 'fa-bars', 'custom', 294, 1, '2018-05-10 03:45:12', '2018-05-10 03:50:42'),
(296, 'disposal_record_entry', 'disposal/disposal_record_entry', 'fa-angle-double-right', 'custom', 295, 2, '2018-05-10 03:47:13', '2018-05-12 05:18:01'),
(297, 'disposal_history', 'disposal/disposal_history', 'fa-angle-double-right', 'custom', 295, 3, '2018-05-10 03:49:08', '2018-05-12 05:18:01'),
(298, 'BDMS Settings', '#', 'fa-suitcase', 'custom', 10, 7, '2018-05-12 04:38:19', '2018-05-12 04:38:41'),
(299, 'Crime_Types', 'crime_types', 'fa fa-angle-double-right', 'module', 298, 1, '2018-05-12 04:40:39', '2018-05-12 04:40:57'),
(300, 'IED_Types', 'ied_types', 'fa fa-angle-double-right', 'module', 298, 2, '2018-05-12 04:45:33', '2018-05-12 04:46:04'),
(301, 'Disposal_Records', 'disposal_records', 'fa fa-angle-double-right', 'module', 295, 1, '2018-05-12 05:17:33', '2018-05-12 05:18:01'),
(302, 'bomb_disposal_report', 'bomb_disposal_report', 'fa-angle-double-right', 'custom', 295, 4, '2018-05-13 09:50:54', '2018-05-13 09:51:16'),
(303, 'ration_register', 'ration_register', 'fa-angle-double-right', 'custom', 290, 4, '2018-05-20 04:24:55', '2018-05-20 04:25:11'),
(304, 'Dashboard_Bomb', '#', 'fa-angle-double-right', 'custom', 132, 55, '2018-05-22 08:10:38', '2018-07-18 06:55:26'),
(305, 'Family_Mans', 'ration_family_mans', 'fa-angle-double-right', 'custom', 292, 3, '2018-05-24 03:23:13', '2018-05-24 03:25:52'),
(306, 'ration_purchase_report', 'ration_purchase_report', 'fa-angle-double-right', 'custom', 290, 5, '2018-05-26 06:56:27', '2018-05-26 06:56:38'),
(307, 'Leave_Approvals', 'leave_approvals', 'fa-angle-double-right', 'custom', 112, 5, '2018-05-26 08:30:53', '2018-05-26 08:45:34'),
(308, 'Daily_Outpasses', 'daily_outpasses', 'fa fa-angle-double-right', 'module', 112, 3, '2018-05-26 08:44:40', '2018-05-26 08:45:34'),
(309, 'Daily_Manpower_States', 'report/daily_manpower_states', 'fa-angle-double-right', 'custom', 132, 3, '2018-05-27 07:31:50', '2018-05-27 07:32:10'),
(310, 'ration_crashing', 'ration_crashing', 'fa-angle-double-right', 'custom', 55, 1, '2018-05-29 05:39:13', '2018-05-29 05:39:58'),
(311, 'Daily Training Nominal Roll', 'daily_training_nomroll', 'fa-angle-double-right', 'custom', 132, 42, '2018-06-03 07:31:23', '2018-06-03 07:33:06'),
(312, 'Daily Movement Nominal Roll', 'daily_movement_nomroll', 'fa-angle-double-right', 'custom', 132, 43, '2018-06-03 07:31:58', '2018-06-03 07:33:06'),
(313, 'actual_ledger', 'inventory/actual_ledger', 'fa-angle-double-right', 'custom', 55, 7, '2018-06-25 03:42:25', '2018-06-27 05:46:17'),
(314, 'Daily Hospital Nominal Roll', 'daily_hospital_nominal_roll', 'fa-angle-double-right', 'custom', 132, 44, '2018-07-17 06:46:36', '2018-07-18 06:55:24'),
(315, 'VMS', '#', 'fa-binoculars', 'custom', 0, 8, '2018-07-22 03:52:18', '2018-07-29 05:48:01'),
(316, 'VMS Settings', '#', 'fa-binoculars', 'custom', 10, 8, '2018-07-22 03:53:06', '2018-07-22 03:53:59'),
(317, 'Visiting_Cards', 'visiting_cards', 'fa fa-cc-jcb', 'module', 316, 1, '2018-07-22 04:52:56', '2018-07-22 05:03:33'),
(318, 'MobileBoxes', 'mobileboxes', 'fa fa-angle-double-right', 'module', 316, 2, '2018-07-22 05:13:31', '2018-07-22 05:14:35'),
(319, 'visitor_search', 'vms/visitor_search', 'fa-angle-double-right', 'custom', 321, 1, '2018-07-22 06:17:56', '2018-07-29 05:48:15'),
(320, 'Visitor_Infos', 'vms/visitor_infos', 'fa-angle-double-right', 'custom', 315, 1, '2018-07-22 06:22:23', '2018-07-29 06:36:07'),
(321, 'vms_report', '#', 'fa-area-chart', 'custom', 315, 2, '2018-07-29 05:41:59', '2018-07-29 06:36:07'),
(322, 'date wise visitor', 'vms/date_wise_visitor_search', 'fa-angle-double-right', 'custom', 321, 5, '2018-07-29 05:44:07', '2018-07-30 05:23:57'),
(323, 'wings wise visitor', 'vms/wings_wise_visitor_search', 'fa-angle-double-right', 'custom', 321, 4, '2018-07-29 05:44:49', '2018-07-30 05:45:32'),
(324, 'employee wise visitor', 'vms/employee_wise_visitor_search', 'fa-angle-double-right', 'custom', 321, 2, '2018-07-29 05:46:12', '2018-07-29 06:36:13'),
(325, 'receipient wise visitor', 'vms/receipient_wise_visitor_search', 'fa-angle-double-right', 'custom', 321, 3, '2018-07-30 05:14:48', '2018-07-30 05:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(10) DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `posting_record_id` int(11) DEFAULT NULL COMMENT 'Employee current posting record id',
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `contact_no` text COLLATE utf8_unicode_ci NOT NULL,
  `village` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_process` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  `duration` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_office` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `upazila_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `deleted_at`, `created_at`, `updated_at`, `approved_by`, `approved_date`, `emp_id`, `posting_record_id`, `leave_type_id`, `from_date`, `to_date`, `contact_no`, `village`, `is_process`, `duration`, `post_office`, `district_id`, `upazila_id`) VALUES
(9, NULL, '2018-01-03 06:00:38', '2018-05-26 08:23:31', NULL, NULL, 10151, 13, 2, '2018-01-03', '2018-01-04', '01752', 'Shankarpur', 1, 2, 'Biral', 62, 1),
(10, NULL, '2018-01-03 06:18:33', '2018-01-03 07:04:03', NULL, NULL, 10143, 19, 2, '2018-01-03', '2018-01-05', '555', 'asdf', 0, 3, 'asfdsaf', 1, 345),
(11, NULL, '2018-01-03 06:39:41', '2018-01-27 08:39:18', NULL, NULL, 10143, 19, 2, '2017-12-31', '2018-01-01', '01745240878\r\n', 'villa edit', 0, 2, 'po-569', 2, 205),
(12, NULL, '2018-01-08 10:40:31', '2018-01-27 08:39:38', NULL, NULL, 10151, 13, 2, '2018-01-07', '2018-01-10', '01987544', 'Shankarpur', 1, 4, 'Biral', 61, 453),
(13, NULL, '2018-05-26 08:52:12', '2018-05-26 09:01:12', NULL, NULL, 10151, 13, 2, '2018-05-26', '2018-05-26', '0244', 'Shankarpur', 1, 1, 'Biral', 61, 453),
(14, NULL, '2018-05-26 09:04:01', '2018-05-26 09:04:06', NULL, NULL, 10143, 19, 2, '2018-05-26', '2018-05-26', 'dasf', NULL, 1, 1, NULL, NULL, NULL),
(15, NULL, '2018-05-26 09:06:19', '2018-05-26 09:11:26', NULL, NULL, 10134, 8, 3, '2018-05-26', '2018-05-27', 'ra', NULL, 1, 2, NULL, NULL, NULL),
(16, NULL, '2018-05-27 02:46:59', '2018-05-27 02:46:59', NULL, NULL, 10134, 8, 2, '2018-05-08', '2018-05-08', 'asd', NULL, 0, 1, NULL, NULL, NULL),
(17, NULL, '2018-05-27 03:13:41', '2018-05-27 03:34:54', NULL, NULL, 10151, 13, 3, '2018-05-28', '2018-05-29', 'from 2 day to 1 day..sir it is necessary..plz...ok..granted', 'Shankarpur', 1, 2, 'Biral', 61, 453),
(18, NULL, '2018-05-27 03:50:30', '2018-05-27 04:00:59', 1, '2018-05-27 10:00:59', 1, 1, 2, '2018-05-25', '2018-05-25', '9:58:16', NULL, 1, 1, NULL, NULL, NULL),
(19, NULL, '2018-06-04 05:32:30', '2018-06-04 07:52:36', NULL, '2018-06-04 13:52:36', 10153, 28, 4, '2018-06-22', '2018-06-22', 'asdf', NULL, 1, 1, NULL, NULL, NULL),
(20, NULL, '2018-06-07 07:44:38', '2018-06-07 07:44:38', NULL, NULL, 10153, 28, 2, '2018-06-07', '2018-06-07', 'asdfs', NULL, 0, 1, NULL, NULL, NULL),
(21, NULL, '2018-06-12 04:14:40', '2018-06-12 05:07:53', NULL, '2018-06-12 11:07:53', 10151, 13, 2, '2018-06-12', '2018-06-12', 'sadfaf', 'Shankarpur', 1, 1, 'Biral', 61, 453),
(22, NULL, '2018-06-12 05:16:43', '2018-06-12 05:16:51', NULL, '2018-06-12 11:16:51', 10153, 28, 2, '2018-06-12', '2018-06-12', 'sdfsaf', NULL, 1, 1, NULL, NULL, NULL),
(23, NULL, '2018-06-12 05:36:44', '2018-06-12 05:36:50', NULL, '2018-06-12 11:36:50', 10153, 28, 3, '2018-06-20', '2018-06-20', 'asfsafasf', NULL, 1, 1, NULL, NULL, NULL),
(24, NULL, '2018-06-12 05:40:22', '2018-06-12 05:40:28', NULL, '2018-06-12 11:40:28', 10151, 13, 1, '2018-06-13', '2018-06-13', 'dasfasf', 'Shankarpur', 1, 1, 'Biral', 61, 453),
(25, NULL, '2018-06-12 05:56:46', '2018-06-12 05:56:53', NULL, '2018-06-12 11:56:53', 10151, 13, 3, '2018-06-22', '2018-06-22', 'sdafasf', 'Shankarpur', 1, 1, 'Biral', 61, 453),
(26, NULL, '2018-06-12 06:05:17', '2018-06-12 06:05:25', NULL, '2018-06-12 12:05:25', 10150, 35, 2, '2018-06-12', '2018-06-12', 'sdafsaf', NULL, 1, 1, NULL, NULL, NULL),
(27, NULL, '2018-06-12 06:08:11', '2018-06-12 06:08:18', NULL, '2018-06-12 12:08:18', 10150, 35, 3, '2018-06-13', '2018-06-13', 'asdfsaf', NULL, 1, 1, NULL, NULL, NULL),
(28, NULL, '2018-06-24 05:32:44', '2018-06-24 05:34:28', NULL, NULL, 1, 1, 2, '2018-06-24', '2018-06-24', 'Leave create 11:32:44', NULL, 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `leave_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ltype_short` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_service_book` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `leave_type`, `ltype_short`, `is_service_book`) VALUES
(1, NULL, '2017-03-12 08:52:54', '2017-03-12 09:02:32', 'Causal Leave', 'CL', 'No'),
(2, NULL, '2017-04-09 11:03:19', '2017-04-09 11:03:19', 'Sick Leave', 'SL', 'No'),
(3, NULL, '2017-04-23 10:31:36', '2017-04-23 10:32:02', 'P/L', 'P/L', 'No'),
(4, NULL, '2017-04-23 10:31:54', '2017-04-23 10:31:54', 'C/L', 'C/L', 'No'),
(5, NULL, '2017-04-23 10:33:33', '2017-04-23 10:33:33', 'M/L', 'M/L', 'No'),
(6, NULL, '2017-04-23 10:34:15', '2017-04-23 10:35:45', 'COMD', 'COMD', 'No'),
(7, NULL, '2017-04-23 10:35:35', '2017-04-23 10:35:35', 'Purabary', NULL, 'No'),
(8, NULL, '2017-05-16 06:13:31', '2017-05-16 06:13:31', 'Weekend', 'WK', 'No'),
(9, NULL, '2017-05-16 06:13:57', '2017-05-16 06:13:57', 'Eid Leave', 'EID', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `ledgers`
--

CREATE TABLE `ledgers` (
  `id` int(10) UNSIGNED NOT NULL,
  `organization_store_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `svc_qty` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0',
  `unsvc_qty` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'unsvc_qty=repairable_qty+unrepairable_qty',
  `repairable_qty` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0',
  `unrepairable_qty` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0',
  `damage_qty` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0',
  `maintenace_qty` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'under maintenance qty',
  `private_svc_qty` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0',
  `private_unsvc_qty` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'private_unsvc_qty=private_repairable_qty+private_unrepairable_qty',
  `private_repairable_qty` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0',
  `private_unrepairable_qty` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0',
  `private_damage_qty` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ledgers`
--

INSERT INTO `ledgers` (`id`, `organization_store_id`, `item_id`, `svc_qty`, `unsvc_qty`, `repairable_qty`, `unrepairable_qty`, `damage_qty`, `maintenace_qty`, `private_svc_qty`, `private_unsvc_qty`, `private_repairable_qty`, `private_unrepairable_qty`, `private_damage_qty`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 5, '42', '34', '16', '18', '0', '0', '0', '0', '0', '0', '0', '2017-04-18 14:41:44', '2017-04-19 04:38:42', NULL),
(2, 2, 5, '56', '18', '14', '5', '0', '0', '2', '0', '0', '0', '0', '2017-04-19 05:01:42', '2017-04-30 10:08:02', NULL),
(3, 2, 6, '54', '30', '15', '14', '0', '0', '20', '1', '1', '1', '0', '2017-04-19 05:08:12', '2017-04-30 10:08:10', NULL),
(4, 2, 7, '111', '32', '22', '12', '0', '0', '0', '0', '0', '0', '0', '2017-04-23 04:40:24', '2017-04-30 10:08:10', NULL),
(5, 2, 8, '59', '3', '3', '0', '0', '0', '50', '0', '0', '0', '0', '2017-04-23 04:41:50', '2017-04-26 11:57:16', NULL),
(6, 2, 9, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-04-23 06:32:56', '2017-04-25 04:33:58', NULL),
(7, 2, 11, '6', '10', '3', '5', '0', '1', '0', '0', '0', '0', '0', '2017-04-30 10:07:20', '2017-09-18 06:16:04', NULL),
(8, 2, 12, '261', '104', '44', '50', '0', '5', '0', '0', '0', '0', '0', '2017-04-30 10:37:47', '2017-05-09 12:20:57', NULL),
(9, 2, 14, '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-05-09 12:20:57', '2017-09-18 06:56:29', NULL),
(10, 1, 5, '494', '1', '51', '0', '0', '0', '0', '0', '0', '0', '0', '2017-07-12 07:19:18', '2017-08-27 07:41:34', NULL),
(11, 1, 27, '49', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-07-12 07:19:18', '2017-08-01 04:55:38', NULL),
(12, 1, 31, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-07-26 04:01:39', '2017-08-01 05:29:14', NULL),
(13, 1, 8, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-07-26 05:36:00', '2017-07-26 05:36:00', NULL),
(14, 9, 34, '0', '10', '10', '10', '0', '0', '0', '0', '0', '0', '0', '2017-08-01 04:54:48', '2017-08-05 11:39:28', NULL),
(15, 9, 5, '532', '312', '311', '21', '5', '14', '30', '0', '0', '0', '0', '2017-08-01 04:55:38', '2018-07-08 06:40:04', NULL),
(16, 9, 6, '81', '67', '55', '12', '3', '34', '0', '0', '0', '0', '0', '2017-08-01 04:55:38', '2018-07-23 06:14:39', NULL),
(17, 9, 31, '23', '15', '10', '5', '0', '1', '3', '0', '0', '0', '0', '2017-08-01 05:29:15', '2018-07-18 05:31:22', NULL),
(18, 9, 27, '9', '12', '11', '1', '0', '0', '0', '0', '0', '0', '0', '2017-08-05 11:53:15', '2018-07-17 10:06:27', NULL),
(20, 9, 32, '83', '8', '6', '2', '0', '1', '0', '0', '0', '0', '0', '2017-08-16 10:00:11', '2018-07-09 06:21:57', NULL),
(21, 9, 9, '7', '1', '1', '0', '0', '2', '50', '0', '0', '0', '0', '2017-08-16 10:00:11', '2018-01-08 04:41:17', NULL),
(22, 9, 7, '17', '0', '0', '0', '0', '1', '70', '0', '0', '0', '0', '2017-09-27 05:25:36', '2018-07-08 10:52:35', NULL),
(23, 9, 8, '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-09-27 06:49:26', '2018-06-24 05:53:16', NULL),
(24, 9, 10, '32', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-09-27 06:57:46', '2017-12-24 04:50:17', NULL),
(25, 11, 38, '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2018-05-22 06:20:19', '2018-05-24 05:03:38', NULL),
(26, 11, 39, '1515', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2018-05-22 06:20:19', '2018-05-24 05:07:12', NULL),
(27, 11, 40, '1220', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2018-05-22 06:20:19', '2018-05-24 05:04:44', NULL),
(28, 11, 41, '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2018-05-22 06:20:20', '2018-05-23 05:44:59', NULL),
(29, 11, 42, '1500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2018-05-22 06:20:20', '2018-05-22 06:20:20', NULL),
(31, 12, 38, '400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2018-06-02 08:24:45', '2018-06-02 08:46:25', NULL),
(32, 12, 39, '250', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2018-06-02 08:24:45', '2018-06-02 08:24:45', NULL),
(33, 12, 40, '457', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2018-06-02 08:24:45', '2018-06-02 08:24:45', NULL),
(34, 12, 41, '140', '100', '100', '0', '0', '0', '0', '0', '0', '0', '0', '2018-06-02 08:26:38', '2018-06-02 08:26:38', NULL),
(35, 13, 42, '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2018-06-02 08:50:06', '2018-06-02 08:50:06', NULL),
(37, 5, 27, '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2018-07-22 12:15:12', '2018-07-22 12:15:12', NULL),
(38, 5, 6, '24', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2018-07-22 12:15:12', '2018-07-22 12:30:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manpower_auths`
--

CREATE TABLE `manpower_auths` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mother_force_id` int(10) UNSIGNED DEFAULT NULL,
  `designation_id` int(10) UNSIGNED DEFAULT NULL,
  `battalion_auth` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rab_auth` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `battalion_offr_auth` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rab_offr_auth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manpower_auths`
--

INSERT INTO `manpower_auths` (`id`, `deleted_at`, `created_at`, `updated_at`, `mother_force_id`, `designation_id`, `battalion_auth`, `rab_auth`, `battalion_offr_auth`, `rab_offr_auth`) VALUES
(1, NULL, '2017-06-13 02:30:35', '2017-06-13 02:30:35', 3, 37, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `manpower_budgets`
--

CREATE TABLE `manpower_budgets` (
  `id` int(11) NOT NULL,
  `battalion_id` int(11) NOT NULL,
  `wing_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `sub_branch_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `sub_section_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `manpower` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manpower_budgets`
--

INSERT INTO `manpower_budgets` (`id`, `battalion_id`, `wing_id`, `branch_id`, `sub_branch_id`, `section_id`, `sub_section_id`, `designation_id`, `manpower`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 3, NULL, NULL, NULL, 1, 1, '2017-04-05 14:16:46', '2017-04-15 16:05:05', '0000-00-00 00:00:00'),
(2, 1, 1, 1, 2, 1, 1, 4, 5, '2017-04-10 18:33:16', '2017-10-03 17:48:28', '0000-00-00 00:00:00'),
(3, 1, 2, NULL, NULL, NULL, NULL, 3, 10, '2017-04-10 18:34:10', '2017-04-10 18:34:10', '0000-00-00 00:00:00'),
(4, 1, NULL, 4, NULL, NULL, NULL, 2, 1, '2017-04-11 11:15:41', '2017-04-15 16:09:24', '0000-00-00 00:00:00'),
(5, 1, NULL, 5, NULL, NULL, NULL, 2, 1, '2017-04-11 12:05:57', '2017-04-15 16:10:37', '0000-00-00 00:00:00'),
(6, 1, 6, 8, NULL, NULL, NULL, 4, 1, '2017-04-20 18:27:57', '2017-04-20 18:27:57', '0000-00-00 00:00:00'),
(7, 1, 6, 8, NULL, NULL, NULL, 9, 2, '2017-04-20 18:28:50', '2017-04-20 18:28:50', '0000-00-00 00:00:00'),
(8, 1, 6, 8, NULL, NULL, NULL, 14, 20, '2017-04-20 18:29:30', '2017-04-20 18:29:30', '0000-00-00 00:00:00'),
(9, 1, 6, 8, NULL, NULL, NULL, 19, 28, '2017-04-20 18:30:40', '2017-04-20 18:30:40', '0000-00-00 00:00:00'),
(10, 1, 6, 8, NULL, NULL, NULL, 20, 28, '2017-04-20 18:33:31', '2017-04-20 18:33:31', '0000-00-00 00:00:00'),
(11, 1, 6, 8, NULL, NULL, NULL, 21, 30, '2017-04-20 18:34:09', '2017-04-20 18:34:09', '0000-00-00 00:00:00'),
(12, 1, 6, 8, NULL, NULL, NULL, 23, 3, '2017-04-20 18:34:55', '2017-04-20 18:36:34', '2017-04-20 18:36:34'),
(13, 1, 6, 8, NULL, NULL, NULL, 23, 63, '2017-04-20 18:37:22', '2017-04-20 19:03:45', '0000-00-00 00:00:00'),
(14, 1, 6, 9, NULL, NULL, NULL, 4, 1, '2017-04-20 18:41:50', '2017-04-20 18:41:50', '0000-00-00 00:00:00'),
(15, 1, 6, 9, NULL, NULL, NULL, 14, 5, '2017-04-20 18:42:26', '2017-04-20 18:42:26', '0000-00-00 00:00:00'),
(16, 1, 6, 9, NULL, NULL, NULL, 19, 7, '2017-04-20 18:43:04', '2017-04-20 18:43:04', '0000-00-00 00:00:00'),
(17, 1, 6, 9, NULL, NULL, NULL, 20, 3, '2017-04-20 18:43:31', '2017-04-20 18:43:42', '2017-04-20 18:43:42'),
(18, 1, 6, 9, NULL, NULL, NULL, 20, 10, '2017-04-20 18:44:12', '2017-04-20 18:44:12', '0000-00-00 00:00:00'),
(19, 1, 6, 9, NULL, NULL, NULL, 23, 3, '2017-04-20 18:44:43', '2017-04-20 18:44:43', '0000-00-00 00:00:00'),
(20, 1, 6, 9, NULL, NULL, NULL, 33, 2, '2017-04-20 18:45:17', '2017-04-20 18:45:17', '0000-00-00 00:00:00'),
(21, 1, 1, 1, NULL, NULL, NULL, 4, 1, '2017-04-20 18:50:14', '2017-04-20 18:50:14', '0000-00-00 00:00:00'),
(22, 1, 1, 1, NULL, NULL, NULL, 21, 1, '2017-04-20 18:57:13', '2017-04-20 18:57:13', '0000-00-00 00:00:00'),
(23, 1, 1, 1, NULL, NULL, NULL, 23, 1, '2017-04-20 18:57:58', '2017-04-20 18:57:58', '0000-00-00 00:00:00'),
(24, 1, 2, 13, NULL, NULL, NULL, 4, 1, '2017-04-20 18:57:59', '2017-04-20 18:57:59', '0000-00-00 00:00:00'),
(25, 1, 2, 13, NULL, NULL, NULL, 19, 1, '2017-04-20 18:58:57', '2017-04-20 18:58:57', '0000-00-00 00:00:00'),
(26, 1, 2, 13, NULL, NULL, NULL, 20, 3, '2017-04-20 18:59:34', '2017-04-20 18:59:34', '0000-00-00 00:00:00'),
(27, 1, 6, NULL, NULL, NULL, NULL, 3, 1, '2017-04-20 19:00:12', '2017-04-20 19:00:12', '0000-00-00 00:00:00'),
(28, 1, 2, 13, NULL, NULL, NULL, 23, 1, '2017-04-20 19:00:14', '2017-04-20 19:00:14', '0000-00-00 00:00:00'),
(29, 1, 2, 13, 4, NULL, NULL, 9, 2, '2017-04-20 19:01:16', '2017-04-20 19:01:16', '0000-00-00 00:00:00'),
(30, 1, 6, NULL, NULL, NULL, NULL, 20, 1, '2017-04-20 19:01:44', '2017-04-20 19:01:44', '0000-00-00 00:00:00'),
(31, 1, 2, 13, 4, NULL, NULL, 14, 2, '2017-04-20 19:01:54', '2017-04-20 19:01:54', '0000-00-00 00:00:00'),
(32, 1, 2, 13, 4, NULL, NULL, 19, 4, '2017-04-20 19:02:29', '2017-04-20 19:02:29', '0000-00-00 00:00:00'),
(33, 1, 2, 13, 4, NULL, NULL, 20, 50, '2017-04-20 19:03:25', '2017-04-20 19:03:25', '0000-00-00 00:00:00'),
(34, 1, 2, 13, 4, NULL, NULL, 21, 38, '2017-04-20 19:03:57', '2017-04-20 19:03:57', '0000-00-00 00:00:00'),
(35, 1, 2, 13, 4, NULL, NULL, 23, 35, '2017-04-20 19:04:34', '2017-04-20 19:04:34', '0000-00-00 00:00:00'),
(36, 1, 6, NULL, NULL, NULL, NULL, 23, 2, '2017-04-20 19:05:40', '2017-04-20 19:05:40', '0000-00-00 00:00:00'),
(37, 1, 2, 13, 5, NULL, NULL, 19, 2, '2017-04-20 19:06:45', '2017-04-20 19:06:45', '0000-00-00 00:00:00'),
(38, 1, 1, 1, 7, NULL, NULL, 9, 1, '2017-04-20 19:10:03', '2017-04-20 19:10:03', '0000-00-00 00:00:00'),
(39, 1, 2, 13, 6, NULL, NULL, 20, 1, '2017-04-20 19:10:20', '2017-04-20 19:10:20', '0000-00-00 00:00:00'),
(40, 1, 2, 13, 6, NULL, NULL, 21, 3, '2017-04-20 19:10:50', '2017-04-20 19:10:50', '0000-00-00 00:00:00'),
(41, 1, 1, 1, 7, NULL, NULL, 19, 1, '2017-04-20 19:11:05', '2017-04-20 19:11:05', '0000-00-00 00:00:00'),
(42, 1, 2, 13, 6, NULL, NULL, 23, 3, '2017-04-20 19:11:24', '2017-04-20 19:11:24', '0000-00-00 00:00:00'),
(43, 1, 1, 1, 7, NULL, NULL, 20, 2, '2017-04-20 19:11:39', '2017-04-20 19:11:39', '0000-00-00 00:00:00'),
(44, 1, 1, 1, 7, NULL, NULL, 21, 2, '2017-04-20 19:12:17', '2017-04-20 19:12:17', '0000-00-00 00:00:00'),
(45, 1, 2, 14, NULL, NULL, NULL, 6, 1, '2017-04-20 19:12:22', '2017-04-20 19:12:22', '0000-00-00 00:00:00'),
(46, 1, 1, 1, 7, NULL, NULL, 23, 3, '2017-04-20 19:12:47', '2017-04-20 19:12:47', '0000-00-00 00:00:00'),
(47, 1, 2, 14, NULL, NULL, NULL, 7, 1, '2017-04-20 19:12:57', '2017-04-20 19:12:57', '0000-00-00 00:00:00'),
(48, 1, 1, 1, 8, NULL, NULL, 9, 1, '2017-04-20 19:13:28', '2017-04-20 19:13:28', '0000-00-00 00:00:00'),
(49, 1, 2, 14, NULL, NULL, NULL, 13, 1, '2017-04-20 19:13:37', '2017-04-20 19:13:37', '0000-00-00 00:00:00'),
(50, 1, 2, 14, NULL, NULL, NULL, 19, 1, '2017-04-20 19:14:09', '2017-04-20 19:14:09', '0000-00-00 00:00:00'),
(51, 1, 1, 1, 8, NULL, NULL, 19, 2, '2017-04-20 19:14:21', '2017-04-20 19:14:21', '0000-00-00 00:00:00'),
(52, 1, 2, 14, NULL, NULL, NULL, 20, 10, '2017-04-20 19:14:41', '2017-04-20 19:14:41', '0000-00-00 00:00:00'),
(53, 1, 1, 1, 8, NULL, NULL, 20, 3, '2017-04-20 19:14:58', '2017-04-20 19:14:58', '0000-00-00 00:00:00'),
(54, 1, 2, 14, NULL, NULL, NULL, 21, 2, '2017-04-20 19:15:02', '2017-04-20 19:15:02', '0000-00-00 00:00:00'),
(55, 1, 2, 14, NULL, NULL, NULL, 23, 1, '2017-04-20 19:15:24', '2017-04-20 19:15:24', '0000-00-00 00:00:00'),
(56, 1, 1, 1, 8, NULL, NULL, 21, 2, '2017-04-20 19:15:27', '2017-04-20 19:15:27', '0000-00-00 00:00:00'),
(57, 1, 1, 1, 8, NULL, NULL, 23, 5, '2017-04-20 19:16:07', '2017-04-20 19:16:07', '0000-00-00 00:00:00'),
(58, 1, 1, 1, 9, NULL, NULL, 9, 1, '2017-04-20 19:17:48', '2017-04-20 19:17:48', '0000-00-00 00:00:00'),
(59, 1, 1, 1, 9, NULL, NULL, 19, 1, '2017-04-20 19:18:15', '2017-04-20 19:18:15', '0000-00-00 00:00:00'),
(60, 1, 1, 7, 11, NULL, NULL, 4, 1, '2017-04-20 19:18:28', '2017-04-20 19:18:28', '0000-00-00 00:00:00'),
(61, 1, 1, 1, 9, NULL, NULL, 20, 2, '2017-04-20 19:18:52', '2017-04-20 19:18:52', '0000-00-00 00:00:00'),
(62, 1, 1, 7, 11, NULL, NULL, 23, 1, '2017-04-20 19:18:55', '2017-04-20 19:18:55', '0000-00-00 00:00:00'),
(63, 1, 1, 1, 9, NULL, NULL, 21, 1, '2017-04-20 19:19:42', '2017-04-20 19:19:42', '0000-00-00 00:00:00'),
(64, 1, 1, 7, 11, 9, NULL, 17, 1, '2017-04-20 19:19:59', '2017-04-20 19:19:59', '0000-00-00 00:00:00'),
(65, 1, 1, 1, 9, NULL, NULL, 23, 1, '2017-04-20 19:20:10', '2017-04-20 19:20:10', '0000-00-00 00:00:00'),
(66, 1, 1, 7, 11, 9, NULL, 18, 1, '2017-04-20 19:20:29', '2017-04-20 19:20:29', '0000-00-00 00:00:00'),
(67, 1, 1, 7, 11, 9, NULL, 19, 1, '2017-04-20 19:21:05', '2017-04-20 19:21:05', '0000-00-00 00:00:00'),
(68, 1, 1, 6, 10, NULL, NULL, 9, 1, '2017-04-20 19:21:10', '2017-04-20 19:21:10', '0000-00-00 00:00:00'),
(69, 1, 1, 7, 11, 9, NULL, 30, 1, '2017-04-20 19:21:38', '2017-04-20 19:21:38', '0000-00-00 00:00:00'),
(70, 1, 1, 7, 11, 9, NULL, 31, 1, '2017-04-20 19:22:26', '2017-04-20 19:22:26', '0000-00-00 00:00:00'),
(71, 1, 1, 7, 11, 9, NULL, 20, 2, '2017-04-20 19:23:13', '2017-04-20 19:23:13', '0000-00-00 00:00:00'),
(72, 1, 1, 6, 10, NULL, NULL, 20, 1, '2017-04-20 19:23:38', '2017-04-20 19:23:38', '0000-00-00 00:00:00'),
(73, 1, 1, 7, 11, 9, NULL, 21, 2, '2017-04-20 19:23:38', '2017-04-20 19:23:38', '0000-00-00 00:00:00'),
(74, 1, 1, 6, 10, NULL, NULL, 21, 1, '2017-04-20 19:24:07', '2017-04-20 19:24:07', '0000-00-00 00:00:00'),
(75, 1, 1, 7, 11, 9, NULL, 35, 1, '2017-04-20 19:24:07', '2017-04-20 19:24:07', '0000-00-00 00:00:00'),
(76, 1, 1, 6, 10, NULL, NULL, 23, 3, '2017-04-20 19:24:33', '2017-04-20 19:24:33', '0000-00-00 00:00:00'),
(77, 1, 1, 7, 11, 9, NULL, 23, 5, '2017-04-20 19:24:39', '2017-10-03 17:44:54', '2017-10-03 17:44:54'),
(78, 1, 1, 6, 10, NULL, NULL, 36, 1, '2017-04-20 19:25:38', '2017-10-03 17:44:11', '2017-10-03 17:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `measurement_units`
--

CREATE TABLE `measurement_units` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mm_unit_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mm_unit_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `measurement_units`
--

INSERT INTO `measurement_units` (`id`, `deleted_at`, `created_at`, `updated_at`, `mm_unit_name`, `mm_unit_code`) VALUES
(1, NULL, '2017-03-12 11:18:29', '2017-04-30 05:59:09', 'Pieces', 'Pcs'),
(2, NULL, '2017-04-17 10:19:15', '2017-04-17 10:19:15', 'Dozen', NULL),
(3, NULL, '2018-01-21 10:37:25', '2018-01-21 10:37:25', 'Kg', 'Kg');

-- --------------------------------------------------------

--
-- Table structure for table `medical_categories`
--

CREATE TABLE `medical_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `mcategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_from_date` date NOT NULL DEFAULT '1970-01-01',
  `cat_to_date` date NOT NULL,
  `mtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mcat_disease` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medical_categories`
--

INSERT INTO `medical_categories` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `mcategory`, `cat_from_date`, `cat_to_date`, `mtype`, `mcat_disease`) VALUES
(1, NULL, '2017-05-25 06:32:05', '2017-05-25 06:32:05', 2, 'A', '2017-05-12', '0000-00-00', 'Temporary', 'Fever');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobileboxes`
--

CREATE TABLE `mobileboxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `box_no` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `box_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=free,2=block'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mobileboxes`
--

INSERT INTO `mobileboxes` (`id`, `deleted_at`, `created_at`, `updated_at`, `box_no`, `box_status`) VALUES
(1, NULL, '2018-07-22 05:22:37', '2018-07-22 11:37:26', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'user_name', 'User', 'UsersController', 'fa-group', 1, '2017-02-19 02:34:47', '2017-03-22 12:14:10'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2017-02-19 02:34:49', '2017-02-19 02:35:05'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2017-02-19 02:34:49', '2017-02-21 21:56:13'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2017-02-19 02:34:50', '2017-02-19 02:35:05'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2017-02-19 02:34:51', '2017-03-22 09:40:28'),
(6, 'Organizations', 'Organizations', 'organizations', 'name', 'Organization', 'OrganizationsController', 'fa-university', 1, '2017-02-19 02:34:54', '2017-02-19 02:35:05'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2017-02-19 02:34:56', '2017-02-19 02:35:05'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2017-02-19 02:34:57', '2017-02-19 02:35:05'),
(9, 'Divisions', 'Divisions', 'divisions', 'div_name', 'Division', 'DivisionsController', 'fa-angle-double-right', 1, '2017-02-27 03:00:50', '2017-02-27 03:07:23'),
(10, 'Districts', 'Districts', 'districts', 'dis_name', 'District', 'DistrictsController', 'fa-angle-double-right', 1, '2017-02-27 03:11:51', '2017-02-27 03:14:11'),
(11, 'Upazillas', 'Upazillas', 'upazillas', 'upazilla_name', 'Upazilla', 'UpazillasController', 'fa-angle-double-right', 1, '2017-02-27 03:21:47', '2017-02-27 03:25:26'),
(12, 'Battalions', 'Battalions', 'battalions', 'battalion_name', 'Battalion', 'BattalionsController', 'fa-angle-double-right', 1, '2017-02-28 22:09:42', '2017-02-28 22:28:54'),
(13, 'Wings', 'Wings', 'wings', 'wing_name', 'Wing', 'WingsController', 'fa-angle-double-right', 1, '2017-03-01 21:32:32', '2017-03-02 00:06:08'),
(14, 'Branches', 'Branches', 'branches', 'branch_name', 'Branch', 'BranchesController', 'fa-angle-double-right', 1, '2017-03-02 03:24:24', '2017-03-02 03:34:24'),
(15, 'Mother_Forces', 'Mother_Forces', 'mother_forces', 'mf_name', 'Mother_Force', 'Mother_ForcesController', 'fa-angle-double-right', 1, '2017-03-02 03:57:27', '2017-03-02 04:07:13'),
(16, 'Cores', 'Cores', 'cores', 'core_name', 'Core', 'CoresController', 'fa-angle-double-right', 1, '2017-03-02 04:44:16', '2017-03-02 04:47:29'),
(17, 'Mother_Units', 'Mother_Units', 'mother_units', 'mu_name', 'Mother_Unit', 'Mother_UnitsController', 'fa-angle-double-right', 1, '2017-03-02 04:56:44', '2017-03-02 04:59:00'),
(18, 'Ranks', 'Ranks', 'ranks', 'rank_name', 'Rank', 'RanksController', 'fa-angle-double-right', 1, '2017-03-02 05:09:06', '2017-03-02 05:18:34'),
(19, 'Designations', 'Designations', 'designations', 'designation_name', 'Designation', 'DesignationsController', 'fa-angle-double-right', 1, '2017-03-02 05:32:02', '2017-03-02 05:40:19'),
(20, 'Sub_Branches', 'Sub_Branches', 'sub_branches', 'sb_name', 'Sub_Branch', 'Sub_BranchesController', 'fa-angle-double-right', 1, '2017-03-03 21:12:26', '2017-03-03 21:25:04'),
(21, 'Sections', 'Sections', 'sections', 'section_name', 'Section', 'SectionsController', 'fa-angle-double-right', 1, '2017-03-03 21:31:44', '2017-03-03 21:45:03'),
(22, 'Sub_Sections', 'Sub_Sections', 'sub_sections', 'sub_section_name', 'Sub_Section', 'Sub_SectionsController', 'fa-angle-double-right', 1, '2017-03-03 22:03:59', '2017-03-03 22:13:48'),
(24, 'Role_Users', 'Role_Users', 'role_users', 'user_id', 'Role_User', 'Role_UsersController', 'fa-angle-double-right', 1, '2017-03-04 03:00:53', '2017-03-04 03:03:57'),
(26, 'Trades', 'Trades', 'trades', 'core_name', 'Trade', 'TradesController', 'fa-angle-double-right', 1, '2017-03-07 05:34:59', '2017-03-07 21:22:31'),
(27, 'Countries', 'Countries', 'countries', 'country_name', 'Country', 'CountriesController', 'fa-angle-double-right', 1, '2017-03-11 09:45:59', '2017-03-11 09:49:11'),
(28, 'Banks', 'Banks', 'banks', 'bank_name', 'Bank', 'BanksController', 'fa-angle-double-right', 1, '2017-03-11 10:44:31', '2017-03-11 10:49:17'),
(29, 'Bank_Branches', 'Bank_Branches', 'bank_branches', 'bank_branch_name', 'Bank_Branch', 'Bank_BranchesController', 'fa-angle-double-right', 1, '2017-03-11 12:19:26', '2017-03-11 12:32:52'),
(30, 'Leave_Types', 'Leave_Types', 'leave_types', 'leave_type', 'Leave_Type', 'Leave_TypesController', 'fa-angle-double-right', 1, '2017-03-12 08:49:21', '2017-03-12 08:52:16'),
(31, 'Duty_Types', 'Duty_Types', 'duty_types', 'duty_type', 'Duty_Type', 'Duty_TypesController', 'fa-angle-double-right', 1, '2017-03-12 09:07:16', '2017-03-12 09:09:06'),
(32, 'Movement_Types', 'Movement_Types', 'movement_types', 'movement_type', 'Movement_Type', 'Movement_TypesController', 'fa-angle-double-right', 1, '2017-03-12 09:12:42', '2017-03-12 09:13:45'),
(33, 'Training_Types', 'Training_Types', 'training_types', 'training_type', 'Training_Type', 'Training_TypesController', 'fa-angle-double-right', 1, '2017-03-12 09:18:37', '2017-03-12 09:19:54'),
(34, 'Stores', 'Stores', 'stores', 'store_name', 'Store', 'StoresController', 'fa-angle-double-right', 1, '2017-03-12 10:33:38', '2017-03-12 10:37:06'),
(35, 'Item_Categories', 'Item_Categories', 'item_categories', 'item_cat_name', 'Item_Category', 'Item_CategoriesController', 'fa-angle-double-right', 1, '2017-03-12 10:58:23', '2017-03-12 10:59:49'),
(36, 'Item_Groups', 'Item_Groups', 'item_groups', 'item_group_name', 'Item_Group', 'Item_GroupsController', 'fa-angle-double-right', 1, '2017-03-12 11:02:35', '2017-03-12 11:05:32'),
(37, 'Measurement_Units', 'Measurement_Units', 'measurement_units', 'mm_unit_name', 'Measurement_Unit', 'Measurement_UnitsController', 'fa-angle-double-right', 1, '2017-03-12 11:15:29', '2017-03-12 11:17:34'),
(38, 'Suppliers', 'Suppliers', 'suppliers', 'company_name', 'Supplier', 'SuppliersController', 'fa-angle-double-right', 1, '2017-03-12 11:23:00', '2017-03-12 11:51:10'),
(39, 'Vehicle_Types', 'Vehicle_Types', 'vehicle_types', 'vehicle_type', 'Vehicle_Type', 'Vehicle_TypesController', 'fa-angle-double-right', 1, '2017-03-14 11:46:10', '2017-03-14 11:47:33'),
(40, 'Vehicle_Brands', 'Vehicle_Brands', 'vehicle_brands', 'vehicle_brand_name', 'Vehicle_Brand', 'Vehicle_BrandsController', 'fa-angle-double-right', 1, '2017-03-14 12:07:52', '2017-03-14 12:09:40'),
(43, 'Store_Users', 'Store_Users', 'store_users', 'user_id', 'Store_User', 'Store_UsersController', 'fa-angle-double-right', 1, '2017-03-21 09:09:03', '2017-03-21 09:44:56'),
(44, 'Basic_Informations', 'Basic_Informations', 'basic_informations', 'nationality', 'Basic_Information', 'Basic_InformationsController', 'fa-angle-double-right', 1, '2017-03-23 03:55:00', '2017-03-23 04:16:13'),
(46, 'Addresses', 'Addresses', 'addresses', 'pres_loc', 'Address', 'AddressesController', 'fa-angle-double-right', 1, '2017-03-23 06:14:23', '2017-03-23 06:23:54'),
(47, 'Family_Informations', 'Family_Informations', 'family_informations', 'name', 'Family_Information', 'Family_InformationsController', 'fa-angle-double-right', 1, '2017-03-29 07:28:23', '2017-04-01 03:03:36'),
(48, 'Relations', 'Relations', 'relations', 'name', 'Relation', 'RelationsController', 'fa-angle-double-right', 1, '2017-03-30 10:09:44', '2017-03-30 10:11:13'),
(49, 'Education_Infos', 'Education_Infos', 'education_infos', 'board', 'Education_Info', 'Education_InfosController', 'fa-angle-double-right', 1, '2017-04-01 06:31:49', '2017-04-02 04:41:10'),
(50, 'Courses', 'Courses', 'courses', 'course_short_name', 'Course', 'CoursesController', 'fa-angle-double-right', 1, '2017-04-01 06:36:35', '2017-04-02 11:55:28'),
(51, 'Travel_Informations', 'Travel_Informations', 'travel_informations', 'purpose', 'Travel_Information', 'Travel_InformationsController', 'fa-angle-double-right', 1, '2017-04-01 08:55:19', '2017-04-01 09:18:11'),
(52, 'Training_Infos', 'Training_Infos', 'training_infos', 'title', 'Training_Info', 'Training_InfosController', 'fa-angle-double-right', 1, '2017-04-01 09:24:39', '2017-04-01 09:40:15'),
(53, 'Leaves', 'Leaves', 'leaves', 'contact_no', 'Leaf', 'LeavesController', 'fa-angle-double-right', 1, '2017-04-01 09:48:15', '2017-04-01 09:56:35'),
(54, 'Promotions', 'Promotions', 'promotions', 'promotion_date', 'Promotion', 'PromotionsController', 'fa-angle-double-right', 1, '2017-04-01 10:16:08', '2017-04-01 10:37:12'),
(55, 'Blood_Donations', 'Blood_Donations', 'blood_donations', 'recipient_name', 'Blood_Donation', 'Blood_DonationsController', 'fa-angle-double-right', 1, '2017-04-01 10:45:10', '2017-04-01 10:53:08'),
(56, 'Daily_Duties', 'Daily_Duties', 'daily_duties', 'duty_date', 'Daily_Duty', 'Daily_DutiesController', 'fa-angle-double-right', 1, '2017-04-01 11:14:46', '2017-04-01 11:20:26'),
(57, 'Daily_Movements', 'Daily_Movements', 'daily_movements', 'in_time', 'Daily_Movement', 'Daily_MovementsController', 'fa-angle-double-right', 1, '2017-04-01 11:28:51', '2018-02-06 05:52:16'),
(58, 'Increment_Infos', 'Increment_Infos', 'increment_infos', 'increment_date', 'Increment_Info', 'Increment_InfosController', 'fa-angle-double-right', 1, '2017-04-02 05:12:39', '2017-04-02 05:27:08'),
(59, 'Increment_Types', 'Increment_Types', 'increment_types', 'increment_type', 'Increment_Type', 'Increment_TypesController', 'fa-angle-double-right', 1, '2017-04-02 05:15:36', '2017-04-02 05:16:20'),
(60, 'Daily_Attendences', 'Daily_Attendences', 'daily_attendences', 'date', 'Daily_Attendence', 'Daily_AttendencesController', 'fa-angle-double-right', 1, '2017-04-02 08:07:56', '2017-04-02 09:41:12'),
(61, 'Attendence_Statuses', 'Attendence_Statuses', 'attendence_statuses', 'attend_status', 'Attendence_Status', 'Attendence_StatusesController', 'fa-angle-double-right', 1, '2017-04-02 08:14:26', '2017-04-02 08:18:08'),
(62, 'Training_Weeks', 'Training_Weeks', 'training_weeks', 'from_date', 'Training_Week', 'Training_WeeksController', 'fa-angle-double-right', 1, '2017-04-02 09:52:55', '2017-04-02 10:10:40'),
(64, 'Disciplinary_Actions', 'Disciplinary_Actions', 'disciplinary_actions', 'occurs_type', 'Disciplinary_Action', 'Disciplinary_ActionsController', 'fa-angle-double-right', 1, '2017-04-02 10:13:26', '2017-04-02 10:31:16'),
(65, 'Pre_Trainings', 'Pre_Trainings', 'pre_trainings', 'training_week_id', 'Pre_Training', 'Pre_TrainingsController', 'fa-angle-double-right', 1, '2017-04-02 10:21:59', '2017-04-02 10:30:09'),
(66, 'Certificate_Courses', 'Certificate_Courses', 'certificate_courses', 'course_title', 'Certificate_Course', 'Certificate_CoursesController', 'fa-angle-double-right', 1, '2017-04-02 10:27:26', '2017-04-02 10:36:52'),
(68, 'Resident_Infos', 'Resident_Infos', 'resident_infos', 'resident_address', 'Resident_Info', 'Resident_InfosController', 'fa-angle-double-right', 1, '2017-04-02 11:51:12', '2017-04-02 12:10:29'),
(69, 'Awards', 'Awards', 'awards', 'award_name', 'Award', 'AwardsController', 'fa-angle-double-right', 1, '2017-04-03 04:12:15', '2017-04-03 04:22:47'),
(70, 'Manpower_Budgets', 'Manpower_Budgets', 'manpower_budgets', 'designation_id', 'Manpower_Budget', 'Manpower_BudgetsController', 'fa-angle-double-right', 1, '2017-04-03 05:36:28', '2017-04-03 05:54:17'),
(72, 'Assign_Store_Items', 'Assign_Store_Items', 'assign_store_items', 'store_id', 'Assign_Store_Item', 'Assign_Store_ItemsController', 'fa-angle-double-right', 1, '2017-04-05 06:33:06', '2017-04-05 06:40:19'),
(73, 'Items', 'Items', 'items', 'item_name', 'Item', 'ItemsController', 'fa-angle-double-right', 1, '2017-04-05 08:35:57', '2017-04-05 08:44:26'),
(74, 'Medical_Categories', 'Medical_Categories', 'medical_categories', 'emp_id', 'Medical_Category', 'Medical_CategoriesController', 'fa-angle-double-right', 1, '2017-04-05 11:21:06', '2017-04-05 11:37:11'),
(75, 'Bank_Accounts', 'Bank_Accounts', 'bank_accounts', 'bank_acc_no', 'Bank_Account', 'Bank_AccountsController', 'fa-angle-double-right', 1, '2017-04-08 11:34:55', '2017-04-08 11:44:12'),
(76, 'Designation_Mappings', 'Designation_Mappings', 'designation_mappings', 'designation_id', 'Designation_Mapping', 'Designation_MappingsController', 'fa-angle-double-right', 1, '2017-04-10 06:34:50', '2017-04-10 06:38:37'),
(77, 'Item_Parts', 'Item_Parts', 'item_parts', 'item_part_name', 'Item_Part', 'Item_PartsController', 'fa-angle-double-right', 1, '2017-04-11 11:05:59', '2017-04-11 11:13:18'),
(78, 'Organization_Stores', 'Organization_Stores', 'organization_stores', 'store_id', 'Organization_Store', 'Organization_StoresController', 'fa-angle-double-right', 1, '2017-04-12 05:08:11', '2017-04-12 05:16:35'),
(79, 'Currencies', 'Currencies', 'currencies', 'currency_name', 'Currency', 'CurrenciesController', 'fa-angle-double-right', 1, '2017-04-18 05:41:16', '2017-04-18 05:43:58'),
(80, 'Academy_Courses', 'Academy_Courses', 'academy_courses', 'academy_course_name', 'Academy_Course', 'Academy_CoursesController', 'fa-angle-double-right', 1, '2017-04-19 11:11:33', '2017-04-19 11:13:52'),
(81, 'Hospital_Admissions', 'Hospital_Admissions', 'hospital_admission_infos', 'emp_id', 'Hospital_Admission', 'Hospital_AdmissionsController', 'fa-angle-double-right', 1, '2017-04-23 06:24:26', '2017-04-23 06:43:09'),
(82, 'Chronic_Diseases', 'Chronic_Diseases', 'chronic_diseases', 'emp_id', 'Chronic_Disease', 'Chronic_DiseasesController', 'fa-angle-double-right', 1, '2017-04-23 07:14:10', '2017-04-23 07:17:41'),
(83, 'Fuel_Types', 'Fuel_Types', 'fuel_types', 'fuel_type', 'Fuel_Type', 'Fuel_TypesController', 'fa-angle-double-right', 1, '2017-04-26 09:49:43', '2017-04-26 09:54:24'),
(84, 'Repair_Types', 'Repair_Types', 'vehicle_repair_types', 'repair_type', 'Repair_Type', 'Repair_TypesController', 'fa-angle-double-right', 1, '2017-04-26 10:00:43', '2017-04-26 10:01:30'),
(85, 'Oil_Types', 'Oil_Types', 'oil_types', 'oil_type', 'Oil_Type', 'Oil_TypesController', 'fa-angle-double-right', 1, '2017-04-26 10:06:40', '2017-04-26 10:07:26'),
(86, 'RAL_Infos', 'RAL_Infos', 'ral_infos', 'emp_id', 'RAL_Info', 'RAL_InfosController', 'fa-angle-double-right', 1, '2017-04-27 08:55:43', '2017-04-27 09:00:03'),
(87, 'Promotion_Exams', 'Promotion_Exams', 'promotion_exams', 'emp_id', 'Promotion_Exam', 'Promotion_ExamsController', 'fa-angle-double-right', 1, '2017-04-27 10:30:48', '2017-04-27 10:35:03'),
(88, 'Post_Permanents', 'Post_Permanents', 'post_permanent_infos', 'emp_id', 'Post_Permanent', 'Post_PermanentsController', 'fa-angle-double-right', 1, '2017-04-27 11:48:35', '2017-04-27 11:53:35'),
(89, 'Ration_Categories', 'Ration_Categories', 'ration_categories', 'ration_cat_name', 'Ration_Category', 'Ration_CategoriesController', 'fa-angle-double-right', 1, '2017-05-03 04:54:50', '2017-05-03 04:56:42'),
(90, 'Ration_Infos', 'Ration_Infos', 'ration_infos', 'emp_id', 'Ration_Info', 'Ration_InfosController', 'fa-angle-double-right', 1, '2017-05-03 05:04:11', '2017-05-03 05:07:19'),
(91, 'Profile_Amendments', 'Profile_Amendments', 'profile_amendments', 'emp_id', 'Profile_Amendment', 'Profile_AmendmentsController', 'fa-angle-double-right', 1, '2017-05-15 06:34:36', '2017-05-16 03:44:23'),
(92, 'Posting_Applications', 'Posting_Applications', 'posting_applications', 'emp_id', 'Posting_Application', 'Posting_ApplicationsController', 'fa-angle-double-right', 1, '2017-05-16 08:01:24', '2017-05-16 10:06:42'),
(93, 'Vehicle_Models', 'Vehicle_Models', 'vehicle_models', 'model_name', 'Vehicle_Model', 'Vehicle_ModelsController', 'fa-angle-double-right', 1, '2017-05-18 06:39:02', '2017-05-18 06:41:54'),
(94, 'Vehicle_Budgets', 'Vehicle_Budgets', 'vehicle_budgets', 'vehicle_brand_id', 'Vehicle_Budget', 'Vehicle_BudgetsController', 'fa-angle-double-right', 1, '2017-05-18 06:49:06', '2017-05-18 07:02:36'),
(96, 'Parts_Categories', 'Parts_Categories', 'parts_categories', 'parts_cat_name', 'Parts_Category', 'Parts_CategoriesController', 'fa-angle-double-right', 1, '2017-05-20 04:28:07', '2017-05-20 04:29:27'),
(97, 'Parts', 'Parts', 'parts', 'parts_name', 'Part', 'PartsController', 'fa-angle-double-right', 1, '2017-05-20 04:36:34', '2017-05-20 04:39:07'),
(98, 'Vehicle_Fuels', 'Vehicle_Fuels', 'vehicle_fuels', 'vehicle_id', 'Vehicle_Fuel', 'Vehicle_FuelsController', 'fa-angle-double-right', 1, '2017-05-20 05:36:24', '2017-05-20 05:40:47'),
(99, 'Vehicle_Drivers', 'Vehicle_Drivers', 'vehicle_drivers', 'emp_id', 'Vehicle_Driver', 'Vehicle_DriversController', 'fa-angle-double-right', 1, '2017-05-20 05:46:01', '2017-05-20 06:40:21'),
(100, 'KPL_Infos', 'KPL_Infos', 'kpl_infos', 'vehicle_record_id', 'KPL_Info', 'KPL_InfosController', 'fa-angle-double-right', 1, '2017-05-20 06:42:58', '2017-08-14 06:26:42'),
(101, 'KPL_Members', 'KPL_Members', 'kpl_members', 'kpl_id', 'KPL_Member', 'KPL_MembersController', 'fa-angle-double-right', 1, '2017-05-20 08:05:14', '2017-05-20 08:11:38'),
(102, 'Battery_Records', 'Battery_Records', 'battery_records', 'battery_no', 'Battery_Record', 'Battery_RecordsController', 'fa-angle-double-right', 1, '2017-05-22 08:56:44', '2017-05-22 09:10:14'),
(103, 'Oil_Change_Records', 'Oil_Change_Records', 'oil_change_records', 'vehicle_record_id', 'Oil_Change_Record', 'Oil_Change_RecordsController', 'fa-angle-double-right', 1, '2017-05-22 09:44:58', '2017-05-22 10:14:21'),
(104, 'Vehicle_Sources', 'Vehicle_Sources', 'vehicle_sources', 'name', 'Vehicle_Source', 'Vehicle_SourcesController', 'fa-angle-double-right', 1, '2017-05-23 05:49:21', '2017-05-23 05:50:38'),
(105, 'Daily_Vehicle_Usages', 'Daily_Vehicle_Usages', 'daily_vehicle_usages', 'unit per price', 'Daily_Vehicle_Usage', 'Daily_Vehicle_UsagesController', 'fa-angle-double-right', 1, '2017-05-23 12:18:40', '2017-09-27 10:57:12'),
(106, 'Wheel_Rotation_Recs', 'Wheel_Rotation_Recs', 'wheel_rotation_recs', 'vehicle_record_id', 'Wheel_Rotation_Rec', 'Wheel_Rotation_RecsController', 'fa-cube', 1, '2017-05-29 04:54:38', '2017-05-29 04:57:46'),
(107, 'Tyre_Change_Recs', 'Tyre_Change_Recs', 'tyre_change_recs', 'vehicle_record_id', 'Tyre_Change_Rec', 'Tyre_Change_RecsController', 'fa-angle-double-right', 1, '2017-05-29 05:23:47', '2017-05-29 05:30:06'),
(108, 'Vehicle_Accident_Recs', 'Vehicle_Accident_Recs', 'vehicle_accident_recs', 'vehicle_record_id', 'Vehicle_Accident_Rec', 'Vehicle_Accident_RecsController', 'fa-angle-double-right', 1, '2017-05-29 05:47:08', '2017-05-29 05:57:09'),
(111, 'Manpower_Auths', 'Manpower_Auths', 'manpower_auths', 'mother_force_id', 'Manpower_Auth', 'Manpower_AuthsController', 'fa-angle-double-right', 1, '2017-06-12 09:10:55', '2017-06-12 09:24:13'),
(112, 'Duty_Roster_Policies', 'Duty_Roster_Policies', 'duty_roster_policies', 'name', 'Duty_Roster_Policy', 'Duty_Roster_PoliciesController', 'fa-angle-double-right', 1, '2017-06-19 08:09:09', '2017-06-19 08:13:47'),
(113, 'Brands', 'Brands', 'brands', 'brand_name', 'Brand', 'BrandsController', 'fa-angle-double-right', 1, '2017-07-30 09:54:50', '2017-07-30 09:56:28'),
(114, 'Payroll_Types', 'Payroll_Types', 'payroll_types', 'name', 'Payroll_Type', 'Payroll_TypesController', 'fa-angle-double-right', 1, '2017-08-23 09:12:18', '2017-08-23 09:13:52'),
(116, 'Payroll_Heads', 'Payroll_Heads', 'payroll_heads', 'name', 'Payroll_Head', 'Payroll_HeadsController', 'fa-angle-double-right', 1, '2017-08-23 09:33:19', '2017-08-23 09:36:52'),
(117, 'Payroll_Allowances', 'Payroll_Allowances', 'payroll_allowances', 'allowance_name', 'Payroll_Allowance', 'Payroll_AllowancesController', 'fa-angle-double-right', 1, '2017-09-14 10:34:18', '2017-09-14 10:50:55'),
(118, 'Payroll_Sub_Heads', 'Payroll_Sub_Heads', 'payroll_sub_heads', 'sub_head_name', 'Payroll_Sub_Head', 'Payroll_Sub_HeadsController', 'fa-angle-double-right', 1, '2017-11-30 06:46:24', '2017-11-30 07:39:16'),
(119, 'Payroll_Accounts', 'Payroll_Accounts', 'payroll_accounts', 'emp_id', 'Payroll_Account', 'Payroll_AccountsController', 'fa-angle-double-right', 1, '2017-12-09 11:10:29', '2017-12-09 11:26:06'),
(120, 'Personal_Deduction_Types', 'Personal_Deduction_Types', 'personal_deduction_types', 'name', 'Personal_Deduction_Types', 'Personal_Deduction_TypesController', 'fa-angle-double-right', 1, '2017-12-18 07:55:43', '2017-12-18 07:57:20'),
(121, 'Ration_Unit_Setups', 'Ration_Unit_Setups', 'ration_unit_setups', 'item_id', 'Ration_Unit_Setup', 'Ration_Unit_SetupsController', 'fa-angle-double-right', 1, '2018-01-21 09:54:54', '2018-01-27 09:56:13'),
(122, 'Crime_Types', 'Crime_Types', 'crime_types', 'type_name', 'Crime_Type', 'Crime_TypesController', 'fa-angle-double-right', 1, '2018-05-12 04:39:37', '2018-05-12 04:40:39'),
(123, 'IED_Types', 'IED_Types', 'ied_types', 'type_name', 'IED_Type', 'IED_TypesController', 'fa-angle-double-right', 1, '2018-05-12 04:42:40', '2018-05-12 04:45:33'),
(124, 'Disposal_Records', 'Disposal_Records', 'disposal_records', 'disposal_date', 'Disposal_Record', 'Disposal_RecordsController', 'fa-angle-double-right', 1, '2018-05-12 05:15:35', '2018-05-12 05:17:33'),
(125, 'Daily_Outpasses', 'Daily_Outpasses', 'daily_outpasses', 'posting_record_id', 'Daily_Outpass', 'Daily_OutpassesController', 'fa-angle-double-right', 1, '2018-05-26 08:36:26', '2018-05-26 08:44:40'),
(126, 'Visiting_Cards', 'Visiting_Cards', 'visiting_cards', 'card_no', 'Visiting_Card', 'Visiting_CardsController', 'fa-cc-jcb', 1, '2018-07-22 04:32:11', '2018-07-22 04:52:56'),
(127, 'MobileBoxes', 'MobileBoxes', 'mobileboxes', 'box_no', 'MobileBox', 'MobileBoxesController', 'fa-angle-double-right', 1, '2018-07-22 04:57:13', '2018-07-22 05:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2017-02-19 02:34:47', '2017-02-19 02:34:47'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2017-02-19 02:34:47', '2017-02-19 02:34:47'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2017-02-19 02:34:47', '2017-02-19 02:34:47'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2017-02-19 02:34:47', '2017-02-19 02:34:47'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '["Employee","Client"]', 0, '2017-02-19 02:34:47', '2017-02-19 02:34:47'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2017-02-19 02:34:49', '2017-02-19 02:34:49'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-02-19 02:34:49', '2017-02-19 02:34:49'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2017-02-19 02:34:49', '2017-02-19 02:34:49'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-02-19 02:34:49', '2017-02-19 02:34:49'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2017-02-19 02:34:49', '2017-02-19 02:34:49'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-02-19 02:34:49', '2017-02-19 02:34:49'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2017-02-19 02:34:49', '2017-02-19 02:34:49'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '["Male","Female"]', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2017-02-19 02:34:50', '2017-02-19 02:34:50'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2017-02-19 02:34:51', '2017-02-19 02:34:51'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2017-02-19 02:34:51', '2017-02-19 02:34:51'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2017-02-19 02:34:51', '2017-02-19 02:34:51'),
(35, 'name', 'Name', 6, 16, 1, '', 5, 250, 1, '', 0, '2017-02-19 02:34:54', '2017-02-19 02:34:54'),
(36, 'email', 'Email', 6, 8, 1, '', 0, 250, 0, '', 0, '2017-02-19 02:34:54', '2017-02-19 02:34:54'),
(37, 'phone', 'Phone', 6, 14, 0, '', 0, 20, 0, '', 0, '2017-02-19 02:34:54', '2017-02-19 02:34:54'),
(38, 'website', 'Website', 6, 23, 0, 'http://', 0, 250, 0, '', 0, '2017-02-19 02:34:54', '2017-02-19 02:34:54'),
(39, 'assigned_to', 'Assigned to', 6, 7, 0, '0', 0, 0, 0, '@employees', 0, '2017-02-19 02:34:54', '2017-02-19 02:34:54'),
(40, 'connect_since', 'Connected Since', 6, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2017-02-19 02:34:54', '2017-02-19 02:34:54'),
(41, 'address', 'Address', 6, 1, 0, '', 0, 1000, 1, '', 0, '2017-02-19 02:34:54', '2017-02-19 02:34:54'),
(42, 'city', 'City', 6, 19, 0, '', 0, 250, 1, '', 0, '2017-02-19 02:34:55', '2017-02-19 02:34:55'),
(43, 'description', 'Description', 6, 21, 0, '', 0, 1000, 0, '', 0, '2017-02-19 02:34:55', '2017-02-19 02:34:55'),
(44, 'profile_image', 'Profile Image', 6, 12, 0, '', 0, 250, 0, '', 0, '2017-02-19 02:34:55', '2017-02-19 02:34:55'),
(45, 'profile', 'Company Profile', 6, 9, 0, '', 0, 250, 0, '', 0, '2017-02-19 02:34:55', '2017-02-19 02:34:55'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2017-02-19 02:34:56', '2017-02-19 02:34:56'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2017-02-19 02:34:56', '2017-02-19 02:34:56'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2017-02-19 02:34:56', '2017-02-19 02:34:56'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2017-02-19 02:34:57', '2017-02-19 02:34:57'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2017-02-19 02:34:57', '2017-02-19 02:34:57'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2017-02-19 02:34:57', '2017-02-19 02:34:57'),
(52, 'active', 'Active', 3, 18, 0, 'Yes', 0, 0, 1, '["Yes","No"]', 0, '2017-02-21 21:35:53', '2017-02-21 21:54:29'),
(53, 'div_name', 'Name', 9, 19, 1, '', 0, 255, 1, '', 0, '2017-02-27 03:02:37', '2017-02-27 03:02:37'),
(55, 'division_id', 'Division', 10, 7, 0, NULL, 0, 0, 1, '@divisions', 0, '2017-02-27 03:13:10', '2017-07-08 05:56:49'),
(56, 'dis_name', 'Name', 10, 19, 1, '', 0, 255, 1, '', 0, '2017-02-27 03:13:49', '2017-02-27 03:13:49'),
(57, 'district_id', 'District', 11, 7, 0, '', 0, 0, 1, '@districts', 0, '2017-02-27 03:23:45', '2017-02-27 03:23:45'),
(58, 'upazilla_name', 'Name', 11, 19, 1, NULL, 0, 255, 1, '', 0, '2017-02-27 03:25:10', '2017-04-04 05:47:56'),
(59, 'battalion_name', 'Name', 12, 19, 1, NULL, 0, 255, 1, '', 0, '2017-02-28 22:13:54', '2017-03-02 01:13:10'),
(60, 'battalion_address', 'Location', 12, 1, 0, NULL, 0, 256, 0, '', 0, '2017-02-28 22:15:48', '2017-03-22 11:24:36'),
(61, 'working_area', 'Working Area', 12, 1, 0, NULL, 0, 256, 0, '', 0, '2017-02-28 22:16:58', '2017-03-02 04:28:28'),
(62, 'battalion_phone_no', 'Phone No.', 12, 22, 1, NULL, 0, 255, 0, '', 0, '2017-02-28 22:19:51', '2017-02-28 22:36:49'),
(63, 'battalion_mobile_no', 'Mobile No.', 12, 14, 1, NULL, 0, 15, 0, '', 0, '2017-02-28 22:20:50', '2017-02-28 22:36:56'),
(64, 'battalion_fax', 'Fax', 12, 19, 1, NULL, 0, 255, 0, '', 0, '2017-02-28 22:21:32', '2017-02-28 22:21:32'),
(65, 'battalion_email', 'Email', 12, 8, 1, NULL, 0, 255, 0, '', 0, '2017-02-28 22:22:15', '2017-03-02 01:04:53'),
(66, 'battalion_id', 'Battalion', 13, 7, 0, '', 0, 0, 1, '@battalions', 0, '2017-03-01 21:33:49', '2017-03-01 21:33:49'),
(84, 'wing_name', 'Name', 13, 19, 0, NULL, 0, 255, 1, '', 0, '2017-03-01 23:44:56', '2017-04-23 12:33:34'),
(85, 'wing_address', 'Address', 13, 1, 0, NULL, 0, 256, 0, '', 0, '2017-03-01 23:50:32', '2017-04-04 04:20:08'),
(86, 'wing_working_area', 'Working Area', 13, 1, 0, NULL, 0, 256, 0, '', 0, '2017-03-01 23:54:21', '2017-03-02 04:33:58'),
(87, 'wing_phone_no', 'Phone No.', 13, 19, 1, NULL, 0, 255, 0, '', 0, '2017-03-01 23:57:12', '2017-03-01 23:57:26'),
(88, 'wing_mobile_no', 'Mobile No.', 13, 19, 1, NULL, 0, 255, 0, '', 0, '2017-03-01 23:59:17', '2017-04-04 04:20:20'),
(89, 'wing_fax', 'Fax', 13, 19, 1, NULL, 0, 255, 0, '', 0, '2017-03-01 23:59:52', '2017-03-01 23:59:52'),
(90, 'wing_email', 'Email', 13, 19, 1, NULL, 0, 255, 0, '', 0, '2017-03-02 00:00:48', '2017-04-04 04:21:34'),
(106, 'battalion_id', 'Battalion', 14, 7, 0, NULL, 0, 0, 0, '@battalions', 1, '2017-03-02 03:26:30', '2017-04-04 05:34:40'),
(107, 'wing_id', 'Wing', 14, 7, 0, NULL, 0, 0, 0, '@wings', 2, '2017-03-02 03:27:14', '2017-04-04 05:34:50'),
(108, 'branch_name', 'Name', 14, 19, 0, NULL, 0, 255, 0, '', 3, '2017-03-02 03:28:03', '2017-04-23 12:38:10'),
(109, 'branch_phone_no', 'Phone No.', 14, 19, 1, NULL, 0, 20, 0, '', 6, '2017-03-02 03:29:42', '2017-03-02 03:31:01'),
(110, 'branch_mobile_no', 'Mobile No.', 14, 19, 1, NULL, 0, 20, 0, '', 7, '2017-03-02 03:30:42', '2017-03-02 03:30:42'),
(111, 'branch_fax', 'Fax', 14, 19, 1, NULL, 0, 20, 0, '', 8, '2017-03-02 03:31:59', '2017-03-02 03:31:59'),
(112, 'branch_email', 'Email', 14, 19, 1, NULL, 0, 50, 0, '', 9, '2017-03-02 03:32:55', '2017-04-04 04:23:05'),
(113, 'branch_address', 'Address', 14, 1, 0, NULL, 0, 256, 0, '', 4, '2017-03-02 03:38:26', '2017-04-04 04:22:52'),
(114, 'branch_working_area', 'Working Area', 14, 1, 0, NULL, 0, 256, 0, '', 5, '2017-03-02 03:40:04', '2017-03-02 04:35:16'),
(115, 'mf_name', 'Name', 15, 19, 1, NULL, 0, 255, 1, '', 0, '2017-03-02 03:58:49', '2017-03-02 04:05:06'),
(116, 'mf_address', 'Address', 15, 1, 0, NULL, 0, 256, 0, '', 0, '2017-03-02 03:59:50', '2017-03-02 04:35:45'),
(117, 'mf_phone_no', 'Phone No.', 15, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-02 04:01:23', '2017-03-02 04:01:23'),
(118, 'mf_mobile_no', 'Mobile No.', 15, 19, 1, NULL, 0, 18, 0, '', 0, '2017-03-02 04:02:08', '2017-03-02 04:02:08'),
(119, 'mf_fax', 'Fax', 15, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-02 04:02:52', '2017-03-02 04:02:52'),
(120, 'mf_email', 'E-Mail', 15, 19, 1, NULL, 0, 100, 0, '', 0, '2017-03-02 04:03:37', '2017-03-02 04:03:53'),
(121, 'mf_website', 'Website', 15, 19, 1, NULL, 0, 100, 0, '', 0, '2017-03-02 04:04:43', '2017-03-02 04:04:43'),
(122, 'mother_force_id', 'Mother Force', 16, 7, 0, NULL, 0, 0, 1, '@mother_forces', 1, '2017-03-02 04:45:11', '2017-03-02 04:45:11'),
(123, 'core_name', 'Name', 16, 19, 0, NULL, 0, 255, 1, '', 2, '2017-03-02 04:46:14', '2017-03-02 04:47:22'),
(124, 'core_code', 'Code', 16, 19, 0, NULL, 0, 253, 0, '', 3, '2017-03-02 04:46:56', '2017-03-02 04:46:56'),
(125, 'core_id', 'Core', 17, 7, 0, NULL, 0, 0, 0, '@cores', 2, '2017-03-02 04:57:37', '2017-04-11 11:56:54'),
(126, 'mu_name', 'Name', 17, 19, 0, NULL, 0, 255, 1, '', 3, '2017-03-02 04:58:36', '2017-03-02 04:58:36'),
(127, 'mother_force_id', 'Mother Force', 18, 7, 0, NULL, 0, 0, 1, '@mother_forces', 1, '2017-03-02 05:09:53', '2017-04-04 05:42:04'),
(128, 'rank_name', 'Name', 18, 19, 0, NULL, 0, 255, 1, '', 2, '2017-03-02 05:10:44', '2017-03-02 05:10:44'),
(130, 'rank_level', 'Level', 18, 13, 0, NULL, 1, 11, 1, '', 4, '2017-03-02 05:29:12', '2017-03-02 05:29:12'),
(131, 'designation_name', 'Name', 19, 19, 1, NULL, 0, 255, 1, '', 1, '2017-03-02 05:32:54', '2017-03-02 05:32:54'),
(132, 'designation_level', 'Level', 19, 13, 1, NULL, 1, 11, 1, '', 3, '2017-03-02 05:39:57', '2017-03-02 05:40:07'),
(133, 'branch_id', 'Branch', 20, 7, 0, NULL, 0, 0, 1, '@branches', 0, '2017-03-03 21:16:46', '2017-04-04 05:35:33'),
(134, 'sb_name', 'Name', 20, 19, 0, NULL, 0, 255, 1, '', 0, '2017-03-03 21:17:31', '2017-03-03 21:24:48'),
(135, 'sb_address', 'Address', 20, 1, 0, NULL, 0, 255, 0, '', 0, '2017-03-03 21:18:12', '2017-03-03 21:24:17'),
(136, 'sb_working_area', 'Working Area', 20, 1, 0, NULL, 0, 255, 0, '', 0, '2017-03-03 21:19:06', '2017-03-03 21:19:06'),
(137, 'sb_phone_no', 'Phone No.', 20, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-03 21:20:20', '2017-03-03 21:24:30'),
(138, 'sb_mobile_no', 'Mobile No.', 20, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-03 21:21:47', '2017-03-03 21:23:46'),
(139, 'sb_fax', 'Fax', 20, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-03 21:22:26', '2017-03-03 21:22:26'),
(140, 'sb_email', 'Email', 20, 19, 1, NULL, 0, 100, 0, '', 0, '2017-03-03 21:23:28', '2017-04-04 04:23:50'),
(141, 'sub_branch_id', 'Sub Branch', 21, 7, 0, NULL, 0, 0, 1, '@sub_branches', 0, '2017-03-03 21:34:25', '2017-03-03 21:34:25'),
(142, 'section_name', 'Name', 21, 19, 0, NULL, 0, 255, 1, '', 0, '2017-03-03 21:39:18', '2017-04-08 05:54:48'),
(143, 'section_address', 'Address', 21, 1, 0, NULL, 0, 256, 0, '', 0, '2017-03-03 21:39:57', '2017-03-03 21:39:57'),
(144, 'section_working_area', 'Working Area', 21, 1, 0, NULL, 0, 256, 0, '', 0, '2017-03-03 21:40:27', '2017-03-03 21:44:14'),
(145, 'section_phone_no', 'Phone No.', 21, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-03 21:41:33', '2017-03-03 21:41:33'),
(146, 'section_mobile_no', 'Mobile No.', 21, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-03 21:42:01', '2017-03-03 21:42:01'),
(147, 'section_fax', 'Fax', 21, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-03 21:42:35', '2017-03-03 21:42:35'),
(148, 'section_email', 'Email', 21, 19, 1, NULL, 0, 100, 0, '', 0, '2017-03-03 21:43:14', '2017-04-04 04:24:51'),
(149, 'section_id', 'Section', 22, 7, 0, NULL, 0, 0, 1, '@sections', 0, '2017-03-03 22:05:49', '2017-03-03 22:05:49'),
(150, 'sub_section_name', 'Name', 22, 19, 0, NULL, 0, 255, 1, '', 0, '2017-03-03 22:08:26', '2017-04-06 12:28:19'),
(151, 'sub_section_address', 'Address', 22, 1, 0, NULL, 0, 256, 0, '', 0, '2017-03-03 22:09:08', '2017-03-03 22:09:08'),
(152, 'working_area', 'Working Area', 22, 1, 0, NULL, 0, 256, 0, '', 0, '2017-03-03 22:09:55', '2017-03-03 22:09:55'),
(153, 'sub_section_phone_no', 'Phone No.', 22, 19, 0, NULL, 0, 20, 0, '', 0, '2017-03-03 22:10:44', '2017-03-03 22:10:44'),
(154, 'mobile_no', 'Mobile No.', 22, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-03 22:11:36', '2017-03-03 22:11:46'),
(155, 'sub_section_fax', 'Fax', 22, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-03 22:12:34', '2017-03-03 22:12:34'),
(156, 'sub_section_email', 'Email', 22, 19, 1, NULL, 0, 100, 0, '', 0, '2017-03-03 22:13:21', '2017-04-04 04:25:15'),
(157, 'user_id', 'User', 24, 7, 0, NULL, 0, 0, 0, '@users', 0, '2017-03-04 03:03:01', '2017-03-04 03:03:01'),
(158, 'role_id', 'Role', 24, 7, 0, NULL, 0, 0, 0, '@roles', 0, '2017-03-04 03:03:49', '2017-03-04 03:15:57'),
(162, 'mother_force_id', 'Mother Force', 26, 7, 0, NULL, 0, 0, 1, '@mother_forces', 0, '2017-03-07 05:42:55', '2017-03-07 21:20:26'),
(164, 'core_id', 'Core', 26, 7, 0, NULL, 0, 0, 0, '@cores', 0, '2017-03-07 21:21:40', '2017-04-11 12:24:40'),
(165, 'trade_name', 'Name', 26, 19, 0, NULL, 0, 255, 1, '', 0, '2017-03-07 21:22:16', '2017-03-08 00:38:21'),
(166, 'country_name', 'Name', 27, 19, 1, NULL, 0, 255, 1, '', 0, '2017-03-11 09:46:51', '2017-03-11 09:46:51'),
(167, 'short_name', 'Short Name', 27, 19, 0, NULL, 0, 256, 0, '', 0, '2017-03-11 09:48:36', '2017-03-11 09:48:36'),
(168, 'bank_name', 'Name', 28, 19, 1, NULL, 0, 255, 1, '', 0, '2017-03-11 10:45:05', '2017-03-11 10:45:05'),
(169, 'bank_short_name', 'Short Name', 28, 19, 0, NULL, 0, 256, 0, '', 0, '2017-03-11 10:46:11', '2017-03-11 10:46:11'),
(170, 'bank_address', 'Address', 28, 1, 0, NULL, 0, 256, 0, '', 0, '2017-03-11 10:46:31', '2017-03-11 10:46:31'),
(171, 'bank_cell_no', 'Cell No.', 28, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-11 10:47:23', '2017-03-11 10:47:23'),
(172, 'bank_mobile', 'Mobile No.', 28, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-11 10:47:53', '2017-03-11 10:47:53'),
(173, 'bank_email', 'E-mail', 28, 19, 0, NULL, 0, 100, 0, '', 0, '2017-03-11 10:48:31', '2017-03-11 10:48:31'),
(174, 'bank_website', 'Website', 28, 19, 0, NULL, 0, 255, 0, '', 0, '2017-03-11 10:48:59', '2017-03-11 10:48:59'),
(175, 'bank_branch_name', 'Name', 29, 19, 1, NULL, 0, 255, 1, '', 0, '2017-03-11 12:20:07', '2017-03-11 12:20:07'),
(176, 'bank_id', 'Bank', 29, 7, 0, NULL, 0, 0, 0, '@banks', 0, '2017-03-11 12:20:36', '2017-03-11 12:20:36'),
(177, 'bank_branch_address', 'Address', 29, 1, 0, NULL, 0, 256, 0, '', 0, '2017-03-11 12:21:09', '2017-03-11 12:21:09'),
(178, 'bank_branch_cell', 'Cell No.', 29, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-11 12:31:38', '2017-03-11 12:31:38'),
(179, 'bank_branch_mobile', 'Mobile No.', 29, 19, 1, NULL, 0, 20, 0, '', 0, '2017-03-11 12:32:06', '2017-03-11 12:32:06'),
(180, 'bank_branch_email', 'E-mail', 29, 19, 0, NULL, 0, 100, 0, '', 0, '2017-03-11 12:32:33', '2017-03-11 12:32:33'),
(181, 'leave_type', 'Leave Type', 30, 19, 1, NULL, 0, 50, 1, '', 0, '2017-03-12 08:49:56', '2017-03-12 09:10:10'),
(182, 'ltype_short', 'Short Code', 30, 19, 0, NULL, 0, 5, 0, '', 0, '2017-03-12 08:50:35', '2017-03-12 08:50:35'),
(183, 'is_service_book', 'Added Service Book?', 30, 18, 0, NULL, 0, 0, 0, '["Yes","No"]', 0, '2017-03-12 08:52:04', '2017-03-12 08:52:04'),
(184, 'duty_type', 'Duty Type', 31, 19, 1, NULL, 0, 256, 1, '', 1, '2017-03-12 09:07:58', '2017-03-12 09:07:58'),
(185, 'dtype_short_code', 'Short Code', 31, 19, 0, NULL, 0, 10, 0, '', 2, '2017-03-12 09:08:39', '2017-03-12 09:08:39'),
(186, 'movement_type', 'Movement Type', 32, 19, 1, NULL, 0, 256, 1, '', 0, '2017-03-12 09:13:08', '2017-04-04 06:30:49'),
(187, 'mtype_short_code', 'Short Code', 32, 19, 0, NULL, 0, 10, 0, '', 0, '2017-03-12 09:13:38', '2017-03-12 09:13:38'),
(188, 'training_type', 'Training Type', 33, 19, 1, NULL, 0, 256, 1, '', 0, '2017-03-12 09:19:02', '2017-03-12 09:19:02'),
(189, 'ttype_short_code', 'Short Code', 33, 19, 0, NULL, 0, 10, 0, '', 0, '2017-03-12 09:19:48', '2017-03-12 09:19:48'),
(190, 'store_name', 'Store Name', 34, 19, 1, NULL, 0, 52, 1, '', 0, '2017-03-12 10:34:08', '2017-03-12 10:34:08'),
(191, 'item_cat_name', 'Category Name', 35, 19, 1, NULL, 0, 256, 1, '', 0, '2017-03-12 10:58:56', '2017-03-12 10:58:56'),
(192, 'item_cat_code', 'Category Code', 35, 19, 0, NULL, 0, 10, 0, '', 0, '2017-03-12 10:59:31', '2017-03-12 10:59:31'),
(193, 'item_group_name', 'Group Name', 36, 19, 0, NULL, 0, 100, 1, '', 0, '2017-03-12 11:03:11', '2017-03-12 11:03:11'),
(194, 'item_cat_id', 'Category', 36, 7, 0, NULL, 0, 0, 1, '@item_categories', 0, '2017-03-12 11:04:16', '2017-03-12 11:04:16'),
(195, 'item_group_code', 'Group Code', 36, 19, 0, NULL, 0, 10, 0, '', 0, '2017-03-12 11:04:48', '2017-03-12 11:05:22'),
(196, 'mm_unit_name', 'Unit Name', 37, 19, 1, NULL, 0, 100, 1, '', 0, '2017-03-12 11:16:17', '2017-03-12 11:16:17'),
(197, 'mm_unit_code', 'Unit Code', 37, 19, 0, NULL, 0, 10, 0, '', 0, '2017-03-12 11:17:19', '2017-03-12 11:17:19'),
(198, 'company_name', 'Company Name', 38, 19, 0, NULL, 0, 152, 1, '', 0, '2017-03-12 11:24:26', '2017-03-12 11:24:26'),
(199, 'company_code', 'Short Name', 38, 19, 0, NULL, 0, 10, 0, '', 0, '2017-03-12 11:25:18', '2017-03-12 11:25:18'),
(200, 'contact_person', 'Contact Person', 38, 19, 0, NULL, 0, 256, 1, '', 0, '2017-03-12 11:40:14', '2017-03-12 11:45:27'),
(201, 'cp_designation', 'Designation', 38, 19, 0, NULL, 0, 256, 0, '', 0, '2017-03-12 11:41:05', '2017-03-12 11:41:05'),
(202, 'cp_contact_no', 'Contact No.', 38, 14, 0, NULL, 0, 20, 1, '', 0, '2017-03-12 11:42:20', '2017-03-12 11:45:35'),
(203, 'cp_email', 'E-mail', 38, 8, 0, NULL, 0, 256, 0, '', 0, '2017-03-12 11:42:59', '2017-03-12 11:42:59'),
(204, 'company_contact_no', 'Company Contact', 38, 14, 0, NULL, 0, 20, 1, '', 0, '2017-03-12 11:44:27', '2017-03-12 11:45:43'),
(205, 'company_email', 'Company E-mail', 38, 8, 0, NULL, 0, 256, 0, '', 0, '2017-03-12 11:45:02', '2017-03-12 11:45:02'),
(206, 'company_web', 'Website', 38, 19, 0, NULL, 0, 256, 0, '', 0, '2017-03-12 11:47:05', '2017-03-12 11:47:05'),
(207, 'company_address1', 'Address 1', 38, 1, 0, NULL, 0, 256, 1, '', 0, '2017-03-12 11:47:46', '2017-03-12 11:47:46'),
(208, 'company_address2', 'Address 2', 38, 1, 0, NULL, 0, 256, 0, '', 0, '2017-03-12 11:48:10', '2017-03-12 11:48:10'),
(209, 'company_status', 'Status', 38, 7, 0, NULL, 0, 0, 0, '["Active","Inactive","Black Listed"]', 0, '2017-03-12 11:49:41', '2017-03-12 11:49:41'),
(210, 'vehicle_type', 'Vehicle Type', 39, 19, 0, NULL, 0, 256, 1, '', 0, '2017-03-14 11:46:51', '2017-03-14 11:46:51'),
(211, 'vehicle_type_code', 'Short Name', 39, 19, 0, NULL, 0, 20, 0, '', 0, '2017-03-14 11:47:27', '2017-03-14 11:47:27'),
(212, 'vehicle_brand_name', 'Brand Name', 40, 19, 0, NULL, 0, 256, 1, '', 0, '2017-03-14 12:08:19', '2017-03-14 12:08:19'),
(213, 'vehicle_brand_code', 'Short Name', 40, 19, 0, NULL, 0, 20, 0, '', 0, '2017-03-14 12:09:23', '2017-03-14 12:09:23'),
(236, 'user_id', 'User', 43, 7, 0, NULL, 0, 0, 1, '@users', 0, '2017-03-21 09:11:42', '2017-04-13 06:58:02'),
(238, 'user_name', 'User Name', 1, 19, 0, NULL, 0, 100, 0, '', 0, '2017-03-22 12:12:31', '2017-03-22 12:12:31'),
(239, 'emp_id', 'RAB ID', 44, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-03-23 03:58:20', '2017-03-23 03:58:20'),
(240, 'nationality', 'Nationality', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-03-23 03:59:48', '2017-03-23 03:59:48'),
(241, 'religion', 'Religion', 44, 7, 0, NULL, 0, 256, 0, '["Islam","Christianity","Hinduism","Buddhism","Others"]', 0, '2017-03-23 04:00:40', '2017-04-04 06:02:46'),
(242, 'gender', 'Gender', 44, 7, 0, NULL, 0, 0, 0, '["Male","Female"]', 0, '2017-03-23 04:02:21', '2017-04-04 06:03:22'),
(243, 'marital_status', 'Marital Status', 44, 7, 0, NULL, 0, 0, 0, '["Married","Unmarried","Devorced"]', 0, '2017-03-23 04:03:50', '2017-03-23 04:03:50'),
(244, 'dob', 'Date of Birth', 44, 4, 0, NULL, 0, 0, 0, '', 0, '2017-03-23 04:04:45', '2017-03-23 04:04:45'),
(245, 'birth_place', 'Birth Place', 44, 7, 0, NULL, 0, 0, 0, '@districts', 0, '2017-03-23 04:05:53', '2017-03-23 04:05:53'),
(246, 'height', 'Height', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-03-23 04:06:43', '2017-03-23 04:07:21'),
(247, 'weight', 'Weight', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-03-23 04:07:06', '2017-03-23 04:07:06'),
(248, 'national_id', 'National ID', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-03-23 04:08:14', '2017-03-23 04:08:14'),
(249, 'passport_no', 'Passport No.', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-03-23 04:09:36', '2017-03-23 04:09:36'),
(250, 'id_card_no', 'ID No.', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-03-23 04:10:03', '2017-03-23 04:10:03'),
(251, 'punch_card_no', 'Punch Card No.', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-03-23 04:10:45', '2017-03-23 04:10:45'),
(252, 'driving_license', 'Driving License', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-03-23 04:11:46', '2017-03-23 04:11:46'),
(253, 'job_join_date', 'Joining Date', 44, 4, 0, NULL, 0, 0, 0, '', 0, '2017-03-23 04:12:17', '2017-03-23 04:12:17'),
(254, 'hoby', 'hoby', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-03-23 04:13:36', '2017-03-23 04:13:36'),
(256, 'photo', 'Photo', 44, 12, 0, NULL, 0, 0, 0, '', 0, '2017-03-23 04:29:44', '2017-04-04 12:38:23'),
(268, 'emp_id', 'RAB ID', 46, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-03-23 06:19:06', '2017-03-23 06:19:06'),
(270, 'pres_dist', 'Present District', 46, 7, 0, NULL, 0, 0, 0, '@districts', 0, '2017-03-23 06:43:29', '2017-04-27 12:13:16'),
(271, 'pres_div', 'Present Division', 46, 7, 0, NULL, 0, 0, 0, '@divisions', 0, '2017-03-23 06:44:26', '2017-03-23 06:44:26'),
(272, 'pres_upzila', 'Present Upazila', 46, 7, 0, NULL, 0, 0, 0, '@upazillas', 0, '2017-03-23 06:45:14', '2017-03-23 06:45:14'),
(273, 'pres_road', 'Road No.', 46, 22, 0, NULL, 0, 256, 0, '', 0, '2017-03-23 06:45:51', '2017-04-09 04:20:56'),
(274, 'perm_dist', 'Permanent District', 46, 7, 0, NULL, 0, 0, 0, '@districts', 0, '2017-03-23 06:46:29', '2017-03-23 06:46:29'),
(275, 'perm_div', 'Permanent Division', 46, 7, 0, NULL, 0, 0, 0, '@divisions', 0, '2017-03-23 06:47:39', '2017-03-23 06:47:39'),
(276, 'perm_upzila', 'Permanent Upazilla', 46, 7, 0, NULL, 0, 0, 0, '@upazillas', 0, '2017-03-23 06:48:31', '2017-03-23 06:48:31'),
(277, 'perm_road', 'Road No.', 46, 22, 0, NULL, 0, 256, 0, '', 0, '2017-03-23 06:49:37', '2017-04-09 04:20:27'),
(278, 'emp_id', 'Rab ID', 47, 7, 0, NULL, 0, 0, 1, '@employees_info', 1, '2017-03-29 07:29:09', '2017-03-30 10:58:20'),
(279, 'name', 'Name', 47, 22, 0, NULL, 0, 100, 1, '', 3, '2017-03-29 07:30:15', '2017-06-19 03:10:08'),
(280, 'dob', 'DOB', 47, 4, 0, NULL, 0, 0, 0, '', 5, '2017-03-29 07:31:20', '2017-03-29 07:31:20'),
(281, 'marital_status', 'Marital Status', 47, 7, 0, NULL, 0, 0, 0, '["Married","Unmarried","Divorcee","Widow"]', 6, '2017-03-29 08:39:11', '2017-03-30 11:05:11'),
(282, 'nid', 'NID', 47, 22, 1, NULL, 0, 100, 0, '', 7, '2017-03-29 08:40:04', '2017-03-29 08:40:04'),
(283, 'education', 'Education', 47, 21, 0, NULL, 0, 0, 0, '', 8, '2017-03-29 08:41:05', '2017-03-29 08:41:05'),
(284, 'occupation', 'Occupation', 47, 21, 0, NULL, 0, 0, 0, '', 9, '2017-03-29 08:41:41', '2017-03-29 08:41:41'),
(285, 'contact_no', 'Contact No', 47, 21, 0, NULL, 0, 0, 0, '', 13, '2017-03-29 08:42:48', '2017-03-29 08:42:48'),
(286, 'address', 'Address', 47, 1, 0, NULL, 0, 256, 0, '', 14, '2017-03-29 08:43:14', '2017-03-29 09:14:57'),
(287, 'relation_id', 'Relation', 47, 7, 0, NULL, 0, 0, 1, '@relations', 2, '2017-03-29 08:51:32', '2017-03-30 11:01:34'),
(288, 'name', 'Name', 48, 22, 1, NULL, 0, 256, 1, '', 0, '2017-03-30 10:10:59', '2017-03-30 10:10:59'),
(289, 'bn_name', 'English Name', 47, 22, 0, NULL, 0, 100, 0, '', 4, '2017-03-30 10:53:25', '2017-06-19 03:10:25'),
(290, 'division_id', 'Division', 47, 7, 0, NULL, 0, 0, 0, '@divisions', 10, '2017-03-30 11:06:57', '2017-03-30 11:06:57'),
(291, 'district_id', 'District', 47, 7, 0, NULL, 0, 0, 0, '@districts', 11, '2017-03-30 11:08:15', '2017-03-30 11:08:15'),
(292, 'upazilla_id', 'Upazilla', 47, 7, 0, NULL, 0, 0, 0, '@upazillas', 12, '2017-03-30 11:09:06', '2017-03-30 11:09:06'),
(293, 'emp_id', 'RAB ID', 49, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-04-01 06:32:55', '2017-04-01 06:32:55'),
(296, 'course_short_name', 'Course Name', 50, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-01 06:47:29', '2017-04-02 11:52:06'),
(297, 'course_id', 'Course Name', 49, 7, 0, NULL, 0, 0, 0, '@courses', 0, '2017-04-01 06:52:33', '2017-04-01 06:52:33'),
(298, 'board', 'Board Name', 49, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-01 06:57:58', '2017-04-01 06:57:58'),
(299, 'institute', 'Institute', 49, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-01 06:58:41', '2017-04-01 06:58:41'),
(300, 'emp_id', 'RAB ID', 51, 7, 0, NULL, 0, 0, 1, '@employees_info', 1, '2017-04-01 09:00:35', '2017-04-01 09:00:35'),
(301, 'country_id', 'Country', 51, 7, 0, NULL, 0, 0, 0, '@countries', 5, '2017-04-01 09:01:32', '2017-04-01 09:01:32'),
(302, 'location', 'Location', 51, 21, 0, NULL, 0, 0, 0, '', 6, '2017-04-01 09:02:33', '2017-04-01 09:02:33'),
(303, 'purpose', 'Purpose', 51, 21, 0, NULL, 0, 0, 1, '', 2, '2017-04-01 09:02:58', '2017-04-01 09:17:45'),
(304, 'sponsor', 'Sponsor', 51, 21, 0, NULL, 0, 0, 0, '', 7, '2017-04-01 09:03:24', '2017-04-01 09:03:24'),
(305, 'from_date', 'From', 51, 4, 0, NULL, 0, 0, 1, '', 3, '2017-04-01 09:04:29', '2017-04-01 09:04:51'),
(306, 'to_date', 'To', 51, 4, 0, NULL, 0, 0, 1, '', 4, '2017-04-01 09:05:30', '2017-04-01 09:05:30'),
(307, 'emp_id', 'RAB ID', 52, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-04-01 09:25:19', '2017-04-01 09:42:38'),
(308, 'training_type', 'Type', 52, 7, 0, NULL, 0, 0, 0, '@training_types', 0, '2017-04-01 09:27:32', '2017-04-01 09:27:32'),
(309, 'from_date', 'From', 52, 4, 0, NULL, 0, 0, 1, '', 0, '2017-04-01 09:28:00', '2017-04-01 09:28:00'),
(310, 'to_date', 'To', 52, 4, 0, NULL, 0, 0, 1, '', 0, '2017-04-01 09:28:21', '2017-04-01 09:28:21'),
(311, 'title', 'Title', 52, 22, 0, NULL, 0, 100, 1, '', 0, '2017-04-01 09:29:13', '2017-04-01 09:29:13'),
(312, 'location', 'Location', 52, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-01 09:29:52', '2017-04-01 09:29:52'),
(313, 'country_id', 'Country', 52, 7, 0, NULL, 0, 0, 0, '@countries', 0, '2017-04-01 09:30:53', '2017-04-01 09:30:53'),
(314, 'sponsor', 'Sponsor', 52, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-01 09:31:23', '2017-04-01 09:31:23'),
(315, 'result', 'Result', 52, 22, 0, NULL, 0, 100, 0, '', 0, '2017-04-01 09:32:02', '2017-04-01 09:32:02'),
(316, 'emp_id', 'RAB ID', 53, 7, 0, NULL, 0, 0, 1, '@employees_info', 1, '2017-04-01 09:52:26', '2017-04-01 09:53:28'),
(317, 'leave_type_id', 'Leave Type', 53, 7, 0, NULL, 0, 0, 1, '@leave_types', 2, '2017-04-01 09:53:22', '2017-04-01 09:53:22'),
(318, 'from_date', 'From', 53, 4, 0, NULL, 0, 0, 1, '', 3, '2017-04-01 09:54:12', '2017-04-01 09:54:12'),
(319, 'to_date', 'To', 53, 4, 0, NULL, 0, 0, 1, '', 4, '2017-04-01 09:54:32', '2017-04-01 09:54:32'),
(320, 'contact_no', 'Contact No', 53, 21, 0, NULL, 0, 0, 1, '', 6, '2017-04-01 09:55:18', '2017-04-01 09:55:18'),
(321, 'village', 'Village', 53, 22, 0, NULL, 0, 100, 0, '', 7, '2017-04-01 09:55:43', '2018-01-03 03:58:35'),
(322, 'emp_id', 'RAB ID', 54, 7, 0, NULL, 0, 0, 1, '@employees_info', 1, '2017-04-01 10:16:30', '2017-04-01 10:16:48'),
(323, 'prev_rank_id', 'Previous Rank', 54, 7, 0, NULL, 0, 0, 0, '@ranks', 3, '2017-04-01 10:20:11', '2017-04-01 10:27:57'),
(324, 'pres_rank_id', 'Present Rank', 54, 7, 0, NULL, 0, 0, 0, '@ranks', 4, '2017-04-01 10:21:38', '2017-04-01 10:30:12'),
(327, 'promotion_date', 'Promotion Date', 54, 4, 0, NULL, 0, 0, 1, '', 2, '2017-04-01 10:31:29', '2017-04-01 10:34:25'),
(328, 'emp_id', 'RAB ID', 55, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-04-01 10:47:23', '2017-04-01 10:47:35'),
(329, 'donate_date', 'Donate Date', 55, 4, 0, NULL, 0, 0, 1, '', 0, '2017-04-01 10:50:36', '2017-04-05 03:31:19'),
(330, 'recipient_name', 'Recipient', 55, 22, 0, NULL, 0, 100, 1, '', 0, '2017-04-01 10:51:49', '2017-04-05 03:30:59'),
(331, 'donate_location', 'Location', 55, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-01 10:52:31', '2017-04-01 10:52:31'),
(332, 'emp_id', 'RAB ID', 56, 7, 0, NULL, 0, 0, 1, '@employees_info', 4, '2017-04-01 11:15:13', '2017-04-01 11:15:13'),
(333, 'duty_type_id', 'Duty Type', 56, 7, 0, NULL, 0, 0, 1, '@duty_types', 1, '2017-04-01 11:17:10', '2017-06-19 08:51:41'),
(334, 'duty_date', 'Duty Date', 56, 4, 0, NULL, 0, 0, 1, '', 2, '2017-04-01 11:19:02', '2017-04-01 11:19:45'),
(335, 'emp_id', 'RAB ID', 57, 7, 0, NULL, 0, 0, 1, '@employees_info', 1, '2017-04-01 11:29:29', '2017-04-01 11:29:29'),
(336, 'from_date', 'From Date', 57, 4, 0, NULL, 0, 0, 1, '', 3, '2017-04-01 11:30:29', '2018-06-04 04:15:53'),
(337, 'movement_type_id', 'Movement Type', 57, 7, 0, NULL, 0, 0, 1, '@movement_types', 2, '2017-04-01 11:31:09', '2017-04-01 11:33:53'),
(338, 'out_time', 'Out Time', 57, 5, 0, NULL, 0, 0, 1, '', 5, '2017-04-01 11:35:10', '2017-04-01 11:35:10'),
(339, 'in_time', 'InTime', 57, 5, 0, NULL, 0, 0, 0, '', 6, '2017-04-01 11:35:48', '2018-02-06 05:53:49'),
(340, 'destination', 'Destination', 57, 21, 0, NULL, 0, 0, 1, '', 7, '2017-04-01 11:36:34', '2017-04-01 11:36:34'),
(342, 'major_subject', 'Major Subject', 49, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 03:51:21', '2017-04-02 03:51:21'),
(343, 'passing_year', 'Passing year', 49, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 03:52:20', '2017-04-02 03:52:20'),
(344, 'result', 'Result', 49, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 03:53:37', '2017-04-02 03:53:37'),
(345, 'edu_type', 'Education Type', 49, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 03:55:50', '2017-04-02 03:55:50'),
(346, 'emp_id', 'RAB ID', 58, 7, 0, NULL, 0, 0, 0, '@employees_info', 0, '2017-04-02 05:14:39', '2017-04-02 05:14:39'),
(347, 'increment_type', 'Increment Type', 59, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 05:16:05', '2017-04-02 05:16:05'),
(348, 'increment_type', 'Increment Type', 58, 7, 0, NULL, 0, 0, 0, '@increment_types', 0, '2017-04-02 05:26:11', '2017-04-02 05:26:11'),
(349, 'increment_date', 'Increment Date', 58, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 05:26:46', '2017-04-02 05:26:46'),
(350, 'emp_id', 'RAB ID', 60, 7, 0, NULL, 0, 0, 0, '@employees_info', 0, '2017-04-02 08:09:37', '2017-04-02 08:09:37'),
(351, 'date', 'Date', 60, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 08:10:14', '2017-04-02 08:10:14'),
(352, 'in_time', 'In Time', 60, 5, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 08:10:51', '2017-04-02 08:10:51'),
(353, 'out_time', 'Out Time', 60, 5, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 08:11:36', '2017-04-02 08:11:36'),
(354, 'attend_status', 'Attendence Status', 61, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 08:18:01', '2017-04-02 08:18:01'),
(355, 'attend_status', 'Attendence Status', 60, 7, 0, NULL, 0, 0, 0, '@attendence_statuses', 0, '2017-04-02 09:40:44', '2017-04-02 09:40:44'),
(357, 'traning_week', 'Training Week', 62, 7, 0, NULL, 0, 0, 1, '["1st","2nd"]', 0, '2017-04-02 10:08:55', '2017-04-02 10:08:55'),
(358, 'from_date', 'From', 62, 4, 0, NULL, 0, 0, 1, '', 0, '2017-04-02 10:09:46', '2017-04-02 10:09:46'),
(359, 'to_date', 'To', 62, 4, 0, NULL, 0, 0, 1, '', 0, '2017-04-02 10:10:06', '2017-04-02 10:10:06'),
(362, 'emp_id', 'RAB ID', 64, 7, 0, NULL, 0, 0, 0, '@employees_info', 0, '2017-04-02 10:13:54', '2017-04-02 10:13:54'),
(363, 'occurs_type', 'Occurance Type', 64, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 10:14:50', '2017-04-02 10:14:50'),
(364, 'occurs_date', 'Occurance Date', 64, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 10:15:20', '2017-04-02 10:15:20'),
(367, 'occurs_detail', 'Occurance Details', 64, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 10:17:32', '2017-04-02 10:17:32'),
(370, 'invest_member', 'Investigation Member', 64, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 10:19:04', '2017-04-02 10:19:04'),
(372, 'commtt_form', 'Committee Form', 64, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 10:21:05', '2017-04-02 10:21:05'),
(374, 'invest_start', 'Investigation Start', 64, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 10:22:29', '2017-04-02 10:22:29'),
(375, 'emp_id', 'RAB ID', 65, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-04-02 10:24:04', '2017-04-02 10:24:04'),
(377, 'invest_end', 'Investigation End', 64, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 10:24:55', '2017-04-02 10:24:55'),
(378, 'invest_report', 'Investigation Report', 64, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 10:26:20', '2017-04-02 10:26:20'),
(379, 'investreport_date', 'Report Date', 64, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 10:27:04', '2017-04-02 10:27:04'),
(380, 'training_week_id', 'Training Week', 65, 7, 0, NULL, 0, 0, 1, '@training_weeks', 0, '2017-04-02 10:27:24', '2017-04-02 10:31:11'),
(381, 'emp_id', 'RAB ID', 66, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-04-02 10:28:05', '2017-04-02 10:29:15'),
(382, 'traning_result', 'Result', 65, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 10:28:12', '2017-04-02 10:28:12'),
(383, 'action_type', 'Action Type', 64, 7, 0, NULL, 0, 256, 0, '["Heavy","Light"]', 0, '2017-04-02 10:28:25', '2017-04-09 05:54:29'),
(384, 'action_date', 'Action Date', 64, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 10:28:58', '2017-04-02 10:28:58'),
(385, 'course_title', 'Course Title', 66, 19, 0, NULL, 1, 256, 1, '', 0, '2017-04-02 10:29:08', '2017-04-02 10:29:08'),
(386, 'course_type', 'Course Type', 66, 7, 0, NULL, 0, 0, 0, '["Civil","Defence"]', 0, '2017-04-02 10:30:57', '2017-04-02 10:30:57'),
(387, 'action_by_rab', 'Action By RAB', 64, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 10:30:48', '2017-04-09 05:56:47'),
(388, 'approval_authority', 'Approval Authority', 66, 19, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 10:31:37', '2017-04-02 10:31:37'),
(389, 'date_from', 'From', 66, 4, 0, NULL, 0, 0, 1, '', 0, '2017-04-02 10:32:40', '2017-04-02 10:32:40'),
(390, 'date_to', 'To', 66, 4, 0, NULL, 0, 0, 1, '', 0, '2017-04-02 10:32:55', '2017-04-02 10:32:55'),
(391, 'course_duration', 'Duration', 66, 19, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 10:33:24', '2017-04-02 10:33:24'),
(392, 'vendor_name', 'Vendor Name', 66, 19, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 10:34:25', '2017-04-02 10:34:25'),
(393, 'result', 'Result', 66, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 10:35:29', '2017-04-02 10:35:29'),
(394, 'remarks', 'Remarks', 66, 19, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 10:36:25', '2017-04-02 10:36:25'),
(400, 'course_full_name', 'Full Name', 50, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 11:48:26', '2017-04-02 11:51:31'),
(401, 'emp_id', 'RAB ID', 68, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-04-02 11:51:56', '2017-04-02 11:52:10'),
(402, 'resident_type', 'Resident Type', 68, 7, 0, NULL, 0, 0, 0, '["Govt. Family","Officers Mess","Civil"]', 0, '2017-04-02 11:55:14', '2017-04-02 11:55:14'),
(403, 'resident_address', 'Address', 68, 21, 0, NULL, 0, 0, 1, '', 0, '2017-04-02 11:56:55', '2017-04-02 11:56:55'),
(404, 'taken_date', 'Taken Date', 68, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 11:58:26', '2017-04-02 11:59:06'),
(405, 'leave_date', 'Leave Date', 68, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-02 11:58:58', '2017-04-02 11:58:58'),
(406, 'approval_authority', 'Approval Authority', 68, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-02 12:00:09', '2017-04-02 12:00:20'),
(412, 'emp_id', 'RAB ID', 69, 7, 0, NULL, 0, 0, 0, '@employees_info', 0, '2017-04-03 04:22:02', '2017-04-03 04:22:02'),
(413, 'award_name', 'Name', 69, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-03 04:22:29', '2017-04-03 04:22:29'),
(414, 'award_date', 'Date', 69, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-03 04:23:04', '2017-04-03 04:23:04'),
(415, 'award_authority', 'Authority', 69, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-03 04:23:57', '2017-04-03 04:23:57'),
(416, 'award_detail', 'Details', 69, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-03 04:25:01', '2017-04-03 04:25:01'),
(417, 'battalion_id', 'Battalion', 70, 7, 0, NULL, 0, 0, 1, '@battalions', 0, '2017-04-03 05:37:46', '2017-04-03 05:56:18'),
(418, 'wing_id', 'Wing', 70, 7, 0, NULL, 0, 0, 0, '@wings', 0, '2017-04-03 05:39:31', '2017-04-03 05:39:31'),
(419, 'branch_id', 'Branch', 70, 7, 0, NULL, 0, 0, 0, '@branches', 0, '2017-04-03 05:41:15', '2017-04-03 05:41:15'),
(420, 'sub_branch_id', 'Sub-branch', 70, 7, 0, NULL, 0, 0, 0, '@sub_branches', 0, '2017-04-03 05:43:09', '2017-04-03 05:43:09'),
(421, 'section_id', 'Section', 70, 7, 0, NULL, 0, 0, 0, '@sections', 0, '2017-04-03 05:43:33', '2017-04-03 05:43:33'),
(422, 'sub_section_id', 'Sub-section', 70, 7, 0, NULL, 0, 0, 0, '@sub_sections', 0, '2017-04-03 05:44:42', '2017-04-03 05:44:42'),
(423, 'designation_id', 'Designation', 70, 7, 0, NULL, 0, 0, 0, '@designations', 0, '2017-04-03 05:47:46', '2017-04-03 05:47:46'),
(426, 'manpower', 'Manpower', 70, 13, 0, NULL, 0, 4, 1, '', 0, '2017-04-03 05:52:29', '2017-04-03 05:52:29'),
(427, 'blood_group', 'Blood Group', 44, 7, 0, NULL, 0, 0, 0, '["O+","O-","A+","A-","B+","B-","AB+","AB-"]', 0, '2017-04-04 04:12:28', '2017-04-04 04:12:28'),
(428, 'tel_ofc', 'Telephone Office', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-04 05:27:58', '2017-04-04 05:27:58'),
(429, 'tel_home', 'Telephone Home', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-04 05:29:34', '2017-04-04 05:29:34'),
(430, 'cell_ofc', 'Cell Office', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-04 05:30:40', '2017-04-04 05:30:40'),
(431, 'cell_personal_1', 'Cell Personal 1', 44, 14, 0, NULL, 0, 256, 0, '', 0, '2017-04-04 05:31:31', '2017-04-04 05:43:10'),
(432, 'cell_personal_2', 'Cell Personal 2', 44, 14, 0, NULL, 0, 256, 0, '', 0, '2017-04-04 05:32:02', '2017-04-04 05:43:24'),
(433, 'email_ofc', 'Email Office', 44, 8, 0, NULL, 0, 256, 0, '', 0, '2017-04-04 05:33:06', '2017-04-04 05:33:06'),
(434, 'email_personal', 'Email Personal', 44, 8, 0, NULL, 0, 256, 0, '', 0, '2017-04-04 05:34:00', '2017-04-04 05:34:00'),
(435, 'tribal', 'Tribal', 44, 7, 0, NULL, 0, 0, 0, '["Yes","No"]', 0, '2017-04-04 05:37:19', '2017-04-04 05:37:19'),
(436, 'freedom_fighter', 'Freedom Fighter', 44, 7, 0, NULL, 0, 0, 0, '["Yes","No"]', 0, '2017-04-04 05:39:00', '2017-04-04 05:39:00'),
(437, 'as_short_code', 'Short Code', 61, 22, 0, NULL, 0, 10, 1, '', 0, '2017-04-04 06:32:58', '2017-04-04 06:32:58'),
(453, 'item_cat_id', 'Item Category', 72, 7, 0, NULL, 0, 0, 1, '@item_categories', 2, '2017-04-05 06:38:27', '2017-04-05 06:39:23'),
(454, 'item_cat', 'Catagory', 73, 7, 0, NULL, 0, 0, 0, '@item_categories', 0, '2017-04-05 08:37:25', '2017-04-05 08:37:25'),
(455, 'item_group', 'Group', 73, 7, 0, NULL, 0, 0, 0, '@item_groups', 0, '2017-04-05 08:39:20', '2017-04-05 08:39:20'),
(456, 'item_name', 'Name', 73, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-05 08:44:14', '2017-04-16 04:32:14'),
(457, 'emp_id', 'RAB ID', 74, 7, 0, NULL, 0, 0, 0, '@employees_info', 1, '2017-04-05 11:27:10', '2017-04-05 11:27:10'),
(458, 'mcategory', 'Category', 74, 7, 0, NULL, 0, 0, 0, '["A","B","C","D"]', 2, '2017-04-05 11:31:51', '2017-04-05 11:31:51'),
(459, 'cat_from_date', 'From', 74, 4, 0, NULL, 0, 0, 1, '', 3, '2017-04-05 11:34:43', '2017-04-05 11:34:43'),
(460, 'cat_to_date', 'To', 74, 4, 0, NULL, 0, 0, 0, '', 4, '2017-04-05 11:35:12', '2017-04-05 11:35:12'),
(461, 'mother_force_id', 'Mother Force', 17, 7, 0, NULL, 0, 0, 1, '@mother_forces', 1, '2017-04-06 04:42:40', '2017-04-11 11:57:17'),
(462, 'emp_id', 'RAB ID', 75, 7, 0, NULL, 0, 0, 0, '@employees_info', 0, '2017-04-08 11:37:04', '2017-04-08 11:37:04'),
(463, 'bank_acc_name', 'Account Name', 75, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-08 11:39:33', '2017-04-08 11:39:33'),
(464, 'bank_acc_no', 'Account No.', 75, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-08 11:40:11', '2017-04-08 11:40:11'),
(465, 'bank_id', 'Bank', 75, 7, 0, NULL, 0, 0, 0, '@banks', 0, '2017-04-08 11:41:03', '2017-04-08 11:41:03'),
(466, 'bank_branch', 'Branch', 75, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-08 11:42:36', '2017-04-08 11:42:36'),
(467, 'bank_branch_address', 'Branch Location', 75, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-08 11:43:20', '2017-04-08 11:43:20'),
(468, 'fax_home', 'FAX Resident', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-09 04:01:30', '2017-04-09 07:21:31'),
(469, 'fax_ofc', 'FAX Office', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-09 04:02:15', '2017-04-09 04:02:15'),
(470, 'pabx', 'PABX', 44, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-09 04:02:38', '2017-04-09 04:02:38'),
(471, 'pres_house', 'House No.', 46, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-09 04:18:05', '2017-04-09 04:19:17'),
(472, 'perm_house', 'House No.', 46, 22, 0, NULL, 0, 256, 0, '', 0, '2017-04-09 04:19:50', '2017-04-09 04:19:50'),
(473, 'pres_village', 'Village/Area', 46, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-09 04:22:13', '2017-04-09 04:40:41'),
(474, 'perm_village', 'Village/Area', 46, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-09 04:22:39', '2017-04-09 04:40:57'),
(475, 'pres_postofc', 'Post Office', 46, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-09 04:23:19', '2017-04-09 04:46:03'),
(476, 'perm_postofc', 'Post Office', 46, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-09 04:23:39', '2017-04-09 04:46:13'),
(477, 'action_by_force', 'Action By Force', 64, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-09 05:57:50', '2017-04-09 05:57:50'),
(478, 'removal_from_service', 'Service Removal', 64, 18, 0, NULL, 0, 0, 0, '["Yes","No"]', 0, '2017-04-09 06:05:11', '2017-04-09 06:39:10'),
(479, 'with_jail', 'With Jail?', 64, 18, 0, NULL, 0, 0, 0, '["Yes","No"]', 0, '2017-04-09 06:06:00', '2017-04-09 06:06:00'),
(480, 'release_to_force', 'Release to Force', 64, 18, 0, NULL, 0, 0, 0, '["Yes","No"]', 0, '2017-04-09 06:07:49', '2017-04-09 06:07:49'),
(481, 'rank_short_name', 'Short Name', 18, 22, 0, NULL, 0, 256, 1, '', 3, '2017-04-09 09:47:08', '2017-04-09 09:47:08'),
(482, 'is_officer', 'Officer?', 18, 18, 0, NULL, 0, 0, 1, '["Yes","No"]', 5, '2017-04-09 09:48:06', '2017-04-09 10:22:06'),
(483, 'is_afd', 'AFD?', 15, 18, 0, NULL, 0, 0, 0, '["Yes","No"]', 0, '2017-04-09 10:59:53', '2017-04-09 10:59:53'),
(484, 'duration', 'Duration', 53, 13, 0, NULL, 0, 50, 1, '', 5, '2017-04-09 11:18:17', '2017-04-09 11:24:06'),
(485, 'designation_id', 'Designation', 76, 7, 0, NULL, 0, 0, 0, '@designations', 0, '2017-04-10 06:36:40', '2017-04-10 06:36:40'),
(486, 'mother_force_id', 'Mother Force', 76, 7, 0, NULL, 0, 0, 0, '@mother_forces', 0, '2017-04-10 06:37:58', '2017-04-10 06:37:58'),
(487, 'rank_id', 'Rank', 76, 7, 0, NULL, 0, 0, 0, '@ranks', 0, '2017-04-10 06:38:21', '2017-04-10 06:38:21'),
(488, 'desig_short_name', 'Short Name', 19, 22, 0, NULL, 0, 256, 0, '', 2, '2017-04-10 08:13:27', '2017-04-10 08:13:27'),
(489, 'item_id', 'Item', 77, 7, 0, NULL, 0, 0, 0, '@items', 0, '2017-04-11 11:06:49', '2017-04-11 11:06:49'),
(490, 'item_part_name', 'Name', 77, 22, 0, NULL, 0, 100, 1, '', 0, '2017-04-11 11:08:10', '2017-04-11 11:08:10'),
(491, 'item_part_bn_name', 'Bangla Name', 77, 22, 0, NULL, 0, 100, 0, '', 0, '2017-04-11 11:09:30', '2017-04-11 11:09:30'),
(492, 'barcode', 'Barcode', 77, 1, 0, NULL, 0, 255, 0, '', 0, '2017-04-11 11:12:43', '2017-04-11 11:12:43'),
(493, 'store_id', 'Store', 78, 7, 0, NULL, 0, 0, 1, '@stores', 7, '2017-04-12 05:08:46', '2017-04-12 05:14:35'),
(494, 'battalion_id', 'Battalion', 78, 7, 0, NULL, 0, 0, 1, '@battalions', 1, '2017-04-12 05:09:34', '2017-04-12 05:15:14'),
(495, 'wing_id', 'Wing', 78, 7, 0, NULL, 0, 0, 0, '@wings', 2, '2017-04-12 05:10:03', '2017-04-12 05:10:03'),
(496, 'branch_id', 'Branch', 78, 7, 0, NULL, 0, 0, 0, '@branches', 3, '2017-04-12 05:11:53', '2017-04-12 05:11:53'),
(497, 'sub_branch_id', 'Sub-branch', 78, 7, 0, NULL, 0, 0, 0, '@sub_branches', 4, '2017-04-12 05:12:29', '2017-04-12 05:12:29'),
(498, 'section_id', 'Section', 78, 7, 0, NULL, 0, 0, 0, '@sections', 5, '2017-04-12 05:13:10', '2017-04-12 05:13:10'),
(499, 'sub_section_id', 'Sub-section', 78, 7, 0, NULL, 0, 0, 0, '@sub_sections', 6, '2017-04-12 05:13:52', '2017-04-12 05:13:52'),
(500, 'org_store_id', 'Store', 72, 7, 0, NULL, 0, 0, 1, '@organization_stores', 1, '2017-04-12 09:52:07', '2017-04-12 09:52:07'),
(501, 'org_store_id', 'Store', 43, 7, 0, NULL, 0, 0, 1, '@organization_stores', 0, '2017-04-13 06:57:49', '2017-04-13 06:57:49'),
(502, 'item_bn_name', 'Bangla Name', 73, 22, 0, NULL, 0, 100, 0, '', 0, '2017-04-16 04:03:04', '2017-04-16 04:03:29'),
(503, 'mm_unit_id', 'Unit', 73, 7, 0, NULL, 0, 0, 1, '@measurement_units', 0, '2017-04-16 04:04:31', '2017-04-16 04:09:08'),
(505, 'item_barcode', 'Barcode', 73, 22, 1, NULL, 0, 100, 0, '', 0, '2017-04-16 04:39:40', '2017-04-16 04:43:22'),
(506, 'auth_man', 'Manpower', 76, 13, 0, NULL, 0, 11, 1, '', 0, '2017-04-17 08:17:21', '2017-04-17 09:22:58'),
(507, 'country_id', 'Country', 79, 7, 0, NULL, 0, 0, 1, '@countries', 0, '2017-04-18 05:41:46', '2017-04-18 05:41:59'),
(508, 'currency_name', 'Name', 79, 22, 0, NULL, 0, 100, 1, '', 0, '2017-04-18 05:42:47', '2017-04-18 05:45:44'),
(509, 'currency_short_code', 'Code', 79, 22, 0, NULL, 0, 50, 0, '', 0, '2017-04-18 05:43:43', '2017-04-18 05:48:15'),
(510, 'academy_course_name', 'Name', 80, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-19 11:13:34', '2017-04-19 11:13:34'),
(511, 'academy_course_id', 'Academy Course', 44, 7, 0, NULL, 0, 0, 0, '@academy_courses', 0, '2017-04-19 11:24:26', '2017-04-19 11:24:26'),
(512, 'mtype', 'Type', 74, 7, 0, NULL, 0, 0, 0, '["Temporary","Permanent"]', 5, '2017-04-22 09:56:46', '2017-04-22 09:56:46'),
(513, 'mcat_disease', 'Disease', 74, 22, 0, NULL, 0, 256, 0, '', 6, '2017-04-22 12:30:05', '2017-04-22 12:30:05'),
(514, 'emp_id', 'RAB ID', 81, 7, 0, NULL, 0, 0, 0, '@employees_info', 0, '2017-04-23 06:26:12', '2017-04-23 06:26:12'),
(515, 'disease_name', 'Disease', 81, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-23 06:28:53', '2017-04-23 06:28:53'),
(516, 'admission_date', 'Date of Admission', 81, 5, 0, NULL, 0, 0, 0, '', 0, '2017-04-23 06:37:25', '2017-04-23 06:37:25'),
(517, 'discharge_date', 'Date of Discharge', 81, 5, 0, NULL, 0, 0, 0, '', 0, '2017-04-23 06:37:51', '2017-04-23 06:37:51'),
(518, 'hospital_name', 'Name of Hospital', 81, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-23 06:39:23', '2017-04-23 06:39:23'),
(519, 'disposal', 'Disposal', 81, 21, 0, NULL, 0, 256, 0, '', 0, '2017-04-23 06:42:17', '2017-04-23 06:43:05'),
(520, 'emp_id', 'RAB ID', 82, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-04-23 07:14:43', '2017-04-23 07:14:43'),
(521, 'chronic_disease', 'Disease', 82, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-23 07:15:33', '2017-04-23 07:15:33'),
(522, 'cd_treatment', 'Treatment', 82, 21, 0, NULL, 0, 0, 1, '', 0, '2017-04-23 07:16:18', '2017-04-23 07:16:18'),
(523, 'cd_remarks', 'Remarks', 82, 21, 0, NULL, 0, 0, 0, '', 0, '2017-04-23 07:16:40', '2017-04-23 07:16:40'),
(524, 'fuel_type', 'Type', 83, 22, 1, NULL, 0, 256, 1, '', 0, '2017-04-26 09:53:00', '2017-04-26 09:53:00'),
(525, 'fuel_munit', 'Measurement Unit', 83, 22, 0, NULL, 0, 256, 1, '', 0, '2017-04-26 09:54:05', '2017-04-26 09:54:05'),
(526, 'repair_type', 'Type Name', 84, 22, 1, NULL, 0, 256, 1, '', 0, '2017-04-26 10:01:24', '2017-04-26 10:01:24'),
(527, 'oil_type', 'Oil Types', 85, 22, 1, NULL, 0, 256, 1, '', 0, '2017-04-26 10:07:21', '2017-04-26 10:07:21'),
(528, 'emp_id', 'RAB ID', 86, 7, 0, NULL, 0, 0, 0, '@employees_info', 0, '2017-04-27 08:57:34', '2017-04-27 08:57:34'),
(529, 'ral_date', 'RAL Date', 86, 4, 0, NULL, 0, 0, 1, '', 0, '2017-04-27 08:58:48', '2017-04-27 08:58:48'),
(530, 'ral_no', 'RAL No', 86, 13, 0, NULL, 0, 11, 1, '', 0, '2017-04-27 08:59:55', '2017-04-27 08:59:55'),
(531, 'emp_id', 'RAB ID', 87, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-04-27 10:31:30', '2017-04-27 10:31:30'),
(532, 'exam_date', 'Date', 87, 4, 0, NULL, 0, 0, 0, '', 0, '2017-04-27 10:32:34', '2017-04-27 10:32:34'),
(533, 'marks_obtained', 'Marks Obtained', 87, 10, 0, NULL, 0, 11, 1, '', 0, '2017-04-27 10:33:19', '2017-04-27 10:33:19'),
(534, 'merit_position', 'Merit Position', 87, 13, 0, NULL, 0, 11, 1, '', 0, '2017-04-27 10:34:42', '2017-04-27 10:34:42'),
(535, 'emp_id', 'RAB ID', 88, 7, 0, NULL, 0, 0, 0, '@employees_info', 0, '2017-04-27 11:49:06', '2017-04-27 11:49:06'),
(536, 'rank_id', 'Rank', 88, 7, 0, NULL, 0, 0, 0, '@ranks', 0, '2017-04-27 11:50:25', '2017-04-27 11:50:25'),
(537, 'probation_start_date', 'Probation Start', 88, 4, 0, NULL, 0, 0, 1, '', 0, '2017-04-27 11:52:26', '2017-04-27 11:52:26'),
(538, 'permanent_date', 'Date of Permanent', 88, 4, 0, NULL, 0, 0, 1, '', 0, '2017-04-27 11:53:17', '2017-04-27 11:53:17'),
(539, 'ration_cat_name', 'Category Name', 89, 22, 1, NULL, 0, 256, 1, '', 0, '2017-05-03 04:55:36', '2017-05-03 04:55:36'),
(540, 'rcat_name_bangla', 'Bangla Name', 89, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-03 04:56:31', '2017-05-03 04:56:31'),
(541, 'emp_id', 'RAB ID', 90, 7, 0, NULL, 0, 0, 0, '@employees_info', 0, '2017-05-03 05:04:33', '2017-05-03 05:04:33'),
(542, 'ration_cat_id', 'Ration Category', 90, 7, 0, NULL, 0, 0, 0, '@ration_categories', 0, '2017-05-03 05:05:27', '2017-05-03 05:05:27'),
(543, 'person', 'Person (No)', 90, 13, 0, NULL, 0, 256, 1, '', 0, '2017-05-03 05:06:59', '2017-05-03 05:07:09'),
(544, 'mu_location', 'Location', 17, 22, 0, NULL, 0, 256, 1, '', 4, '2017-05-07 05:30:59', '2017-05-07 05:30:59'),
(545, 'core_location', 'Location', 16, 22, 0, NULL, 0, 256, 1, '', 4, '2017-05-07 06:16:09', '2017-05-07 06:16:09'),
(546, 'emp_id', 'RAB ID', 91, 7, 0, NULL, 0, 0, 0, '@employees_info', 0, '2017-05-15 06:35:23', '2017-05-15 06:35:23'),
(547, 'amendments', 'Amendments', 91, 21, 0, NULL, 0, 0, 1, '', 0, '2017-05-15 06:36:44', '2017-05-15 06:36:44'),
(548, 'emp_id', 'RAB ID', 92, 7, 0, NULL, 0, 0, 1, '@employees_info', 1, '2017-05-16 08:02:53', '2017-05-16 08:02:53'),
(549, 'request_battalion', 'Battalion', 92, 15, 0, NULL, 0, 0, 1, '@battalions', 3, '2017-05-16 08:04:14', '2017-05-16 08:04:14'),
(550, 'reason', 'Reason', 92, 21, 0, NULL, 0, 0, 1, '', 4, '2017-05-16 08:05:08', '2017-05-16 08:05:08');
INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(551, 'application_date', 'Application Date', 92, 4, 0, NULL, 0, 0, 1, '', 2, '2017-05-16 10:12:56', '2017-05-16 10:13:31'),
(552, 'brand_id', 'Brand', 93, 7, 0, NULL, 0, 0, 1, '@vehicle_brands', 0, '2017-05-18 06:39:48', '2017-05-18 06:39:48'),
(553, 'model_name', 'Model', 93, 22, 0, NULL, 0, 100, 1, '', 0, '2017-05-18 06:41:27', '2017-05-18 06:41:27'),
(554, 'vehicle_type_id', 'Vehicle Type', 94, 7, 0, NULL, 0, 0, 1, '@vehicle_types', 0, '2017-05-18 06:52:17', '2017-05-27 11:00:11'),
(555, 'vehicle_brand_id', 'Brand', 94, 7, 0, NULL, 0, 0, 1, '@vehicle_brands', 0, '2017-05-18 06:53:37', '2017-05-27 11:00:21'),
(556, 'battalion_id', 'Battalion', 94, 7, 0, NULL, 0, 0, 1, '@battalions', 0, '2017-05-18 06:55:03', '2017-05-27 11:00:30'),
(557, 'wing_id', 'Wing', 94, 7, 0, NULL, 0, 0, 0, '@wings', 0, '2017-05-18 06:56:05', '2017-05-18 06:56:05'),
(558, 'branch_id', 'Branch', 94, 7, 0, NULL, 0, 0, 0, '@branches', 0, '2017-05-18 06:57:50', '2017-05-18 06:57:50'),
(559, 'sub_branch_id', 'Sub Branch', 94, 7, 0, NULL, 0, 0, 0, '@sub_branches', 0, '2017-05-18 06:58:38', '2017-05-18 06:58:38'),
(560, 'section_id', 'Section', 94, 7, 0, NULL, 0, 0, 0, '@sections', 0, '2017-05-18 06:59:13', '2017-05-18 06:59:13'),
(561, 'sub_section_id', 'Sub Section', 94, 7, 0, NULL, 0, 0, 0, '@sub_sections', 0, '2017-05-18 06:59:47', '2017-05-18 06:59:47'),
(562, 'quantity', 'Quantity', 94, 13, 0, NULL, 0, 11, 1, '', 0, '2017-05-18 07:01:40', '2017-05-27 11:01:36'),
(565, 'parts_cat_name', 'Name', 96, 22, 1, NULL, 0, 256, 1, '', 0, '2017-05-20 04:29:06', '2017-05-20 09:28:10'),
(566, 'parts_cat_id', 'Parts Category', 97, 7, 0, NULL, 0, 0, 1, '@parts_categories', 0, '2017-05-20 04:37:25', '2017-05-20 09:47:22'),
(567, 'parts_name', 'Name', 97, 22, 0, NULL, 0, 256, 1, '', 0, '2017-05-20 04:38:54', '2017-05-20 09:47:34'),
(571, 'vehicle_id', 'Vehicle', 98, 7, 0, NULL, 0, 0, 1, '@vehicle_infos', 0, '2017-05-20 05:39:37', '2017-05-20 05:39:37'),
(572, 'fuel_type_id', 'Fuel Type', 98, 7, 0, NULL, 0, 0, 1, '@fuel_types', 0, '2017-05-20 05:40:36', '2017-05-20 05:40:36'),
(573, 'emp_id', 'RAB ID', 99, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-05-20 06:11:40', '2017-05-20 06:13:12'),
(581, 'fuel_type_id', 'Fuel Type', 100, 7, 0, NULL, 0, 0, 1, '@fuel_types', 2, '2017-05-20 07:04:56', '2017-05-23 11:01:59'),
(582, 'kpl_date', 'Date', 100, 4, 0, NULL, 0, 0, 1, '', 4, '2017-05-20 07:05:32', '2017-08-14 08:10:56'),
(583, 'kp_ref', 'KPL Reference', 100, 22, 0, NULL, 0, 256, 0, '', 5, '2017-05-20 07:06:12', '2017-05-20 07:06:12'),
(584, 'kpl_id', 'KPL ID', 101, 7, 0, NULL, 0, 0, 0, '@kpl_infos', 0, '2017-05-20 08:05:55', '2017-05-20 08:05:55'),
(585, 'chairman', 'Chairman', 101, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-20 08:09:27', '2017-05-20 08:09:27'),
(586, 'member_1', 'Member 1', 101, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-20 08:09:53', '2017-05-20 08:09:53'),
(587, 'member_2', 'Member 2', 101, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-20 08:11:23', '2017-05-20 08:11:23'),
(588, 'vehicle_record_id', 'Vehicle', 102, 7, 0, NULL, 0, 0, 1, '@vehicle_records', 0, '2017-05-22 09:03:06', '2017-05-22 09:03:06'),
(589, 'battery_no', 'Battery No.', 102, 22, 0, NULL, 0, 256, 1, '', 0, '2017-05-22 09:04:07', '2017-05-22 09:07:20'),
(590, 'made_by', 'Made By', 102, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-22 09:04:40', '2017-05-22 09:04:40'),
(591, 'class', 'Class', 102, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-22 09:05:07', '2017-05-22 09:05:07'),
(592, 'volt', 'Volt', 102, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-22 09:05:29', '2017-05-22 09:05:29'),
(593, 'power', 'Power', 102, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-22 09:06:13', '2017-05-22 09:06:13'),
(594, 'plate', 'Plate', 102, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-22 09:06:37', '2017-05-22 09:06:37'),
(595, 'change_date', 'Change Date', 102, 4, 0, NULL, 0, 0, 0, '', 0, '2017-05-22 09:08:45', '2017-05-23 06:00:36'),
(596, 'change_reason', 'Change Reason', 102, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-22 09:09:28', '2017-05-22 09:09:28'),
(597, 'remarks', 'Remarks', 102, 21, 0, NULL, 0, 0, 0, '', 0, '2017-05-22 09:09:52', '2017-05-22 09:09:52'),
(598, 'vehicle_record_id', 'Vehicle', 103, 7, 0, NULL, 0, 0, 1, '@vehicle_records', 0, '2017-05-22 10:02:26', '2017-05-22 10:06:08'),
(599, 'oil_type_id', 'Oil Type', 103, 7, 0, NULL, 0, 0, 1, '@oil_types', 0, '2017-05-22 10:05:58', '2017-05-22 10:06:20'),
(600, 'change_date', 'Change Date', 103, 4, 0, NULL, 0, 0, 0, '', 0, '2017-05-22 10:09:02', '2017-05-22 10:09:02'),
(601, 'km', 'Kilometer', 103, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-22 10:10:59', '2017-05-23 06:06:13'),
(602, 'next_change_date', 'Next Change Date', 103, 4, 0, NULL, 0, 0, 0, '', 0, '2017-05-22 10:12:01', '2017-05-22 10:12:01'),
(603, 'next_km', 'Next Kilometer', 103, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-22 10:12:26', '2017-05-23 06:06:30'),
(604, 'oil_amount', 'Oil Amount', 103, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-22 10:13:19', '2017-05-22 10:13:19'),
(605, 'remarks', 'Remarks', 103, 21, 0, NULL, 0, 0, 0, '', 0, '2017-05-22 10:13:52', '2017-05-22 10:13:52'),
(606, 'name', 'Name', 104, 22, 1, NULL, 0, 256, 1, '', 0, '2017-05-23 05:49:59', '2017-05-23 05:49:59'),
(607, 'address', 'Address', 104, 21, 0, NULL, 0, 0, 0, '', 0, '2017-05-23 05:50:26', '2017-05-23 05:50:26'),
(608, 'vehicle_record_id', 'Vehicle', 105, 7, 0, NULL, 0, 0, 1, '@vehicle_records', 1, '2017-05-23 12:19:35', '2017-05-23 12:19:35'),
(611, 'used_by', 'Used By', 105, 7, 0, NULL, 0, 256, 1, '@employees_info', 3, '2017-05-24 04:32:23', '2017-06-01 03:40:41'),
(612, 'prev_meter', 'Prev Meter Reading', 105, 22, 0, NULL, 0, 256, 1, '', 4, '2017-05-24 04:34:26', '2017-06-21 04:19:36'),
(613, 'last_meter', 'Last Meter Reading', 105, 22, 0, NULL, 0, 256, 1, '', 5, '2017-05-24 04:36:53', '2017-06-21 04:19:48'),
(614, 'purpose', 'Purpose', 105, 22, 0, NULL, 0, 256, 0, '', 13, '2017-05-24 04:37:41', '2017-05-24 04:37:41'),
(615, 'fuel_type_id', 'Fuel Type', 105, 7, 0, NULL, 0, 0, 1, '@fuel_types', 6, '2017-05-24 04:38:45', '2017-06-22 05:42:43'),
(616, 'prev_amount', 'Prev Amount', 105, 22, 0, NULL, 0, 256, 1, '', 7, '2017-05-24 04:41:07', '2017-06-21 04:20:06'),
(617, 'given_amount', 'Given Amount', 105, 22, 0, NULL, 0, 256, 1, '', 8, '2017-05-24 04:41:42', '2017-06-21 04:20:13'),
(618, 'spent_amount', 'Spent Amount', 105, 22, 0, NULL, 0, 256, 1, '', 9, '2017-05-24 04:43:14', '2017-06-21 04:20:20'),
(619, 'kmpl', 'KMPL', 105, 22, 0, NULL, 0, 256, 1, '', 10, '2017-05-24 04:43:53', '2017-06-21 04:20:34'),
(620, 'voucher_no', 'Fuel Voucher No.', 105, 22, 0, NULL, 0, 256, 0, '', 12, '2017-05-24 04:48:58', '2017-05-30 06:19:55'),
(621, 'vehicle_record_id', 'Vehicle', 99, 7, 0, NULL, 0, 0, 1, '@vehicle_records', 0, '2017-05-25 09:08:43', '2017-05-25 09:08:43'),
(624, 'from_date', 'From Date', 99, 4, 0, NULL, 0, 0, 1, '', 0, '2017-05-25 09:22:22', '2017-05-25 09:22:22'),
(626, 'to_date', 'To Date', 99, 4, 0, NULL, 0, 0, 0, '', 0, '2017-05-25 10:56:45', '2017-05-25 10:56:45'),
(628, 'vehicle_record_id', 'Vehicle', 106, 7, 0, NULL, 0, 0, 1, '@vehicle_records', 0, '2017-05-29 05:03:25', '2017-05-29 05:03:25'),
(629, 'rotation_date', 'Rotation Date', 106, 4, 0, NULL, 0, 0, 0, '', 0, '2017-05-29 05:06:58', '2017-05-29 05:06:58'),
(630, 'rotation_km', 'Rotation KM', 106, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:07:32', '2017-05-29 05:07:32'),
(631, 'next_rotation_km', 'Next Rotation KM', 106, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:08:32', '2017-05-29 05:08:32'),
(632, 'remarks', 'Remarks', 106, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:14:28', '2017-05-29 05:14:28'),
(633, 'vehicle_record_id', 'Vehicle', 107, 7, 0, NULL, 0, 0, 1, '@vehicle_records', 0, '2017-05-29 05:24:20', '2017-05-29 05:24:20'),
(634, 'made_type', 'Made Type', 107, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:25:16', '2017-05-29 05:25:16'),
(635, 'tyre_producer', 'Tyre Producer', 107, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:26:08', '2017-05-29 05:26:08'),
(636, 'tyre_no', 'Tyre No', 107, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:27:17', '2017-05-29 05:27:17'),
(637, 'tyre_change_date', 'Change Date', 107, 4, 0, NULL, 0, 0, 0, '', 0, '2017-05-29 05:29:01', '2017-05-29 05:29:01'),
(638, 'tyre_change_reason', 'Change Reason', 107, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:29:34', '2017-05-29 05:29:34'),
(639, 'remarks', 'Remarks', 107, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:29:56', '2017-05-29 05:29:56'),
(640, 'vehicle_record_id', 'Vehicle', 108, 7, 0, NULL, 0, 0, 1, '@vehicle_records', 0, '2017-05-29 05:48:30', '2017-05-29 05:51:05'),
(641, 'vehicle_driver_id', 'Driver', 108, 7, 0, NULL, 0, 0, 1, '@vehicle_drivers', 0, '2017-05-29 05:50:14', '2017-05-29 05:51:13'),
(642, 'accident_date', 'Accident Date', 108, 4, 0, NULL, 0, 0, 1, '', 0, '2017-05-29 05:50:54', '2017-05-29 05:51:23'),
(643, 'accident_des', 'Description', 108, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:52:33', '2017-05-29 05:52:33'),
(644, 'no_of_injury', 'No of Injury', 108, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:54:09', '2017-05-29 05:54:09'),
(645, 'no_of_death', 'No of Death', 108, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:56:38', '2017-05-29 05:56:38'),
(646, 'loss_amount', 'Loss Amount', 108, 22, 0, NULL, 0, 256, 0, '', 0, '2017-05-29 05:57:02', '2017-05-29 05:57:02'),
(648, 'member_1', 'Member 1', 100, 7, 0, NULL, 0, 0, 0, '@employees_info', 6, '2017-05-31 08:40:43', '2017-05-31 08:40:43'),
(649, 'member_2', 'Member 2', 100, 7, 0, NULL, 0, 0, 0, '@employees_info', 7, '2017-05-31 08:42:22', '2017-05-31 08:42:22'),
(650, 'chairman', 'Chairman', 100, 7, 0, NULL, 0, 0, 0, '@employees_info', 8, '2017-05-31 08:44:14', '2017-05-31 08:44:14'),
(651, 'destination', 'Destination', 105, 22, 0, NULL, 0, 256, 0, '', 14, '2017-05-31 08:49:18', '2017-05-31 08:49:18'),
(653, 'mother_force_id', 'Mother Force', 111, 7, 0, NULL, 0, 0, 0, '@mother_forces', 0, '2017-06-12 09:12:06', '2017-06-12 09:21:57'),
(654, 'designation_id', 'Designation', 111, 7, 0, NULL, 0, 0, 0, '@designations', 0, '2017-06-12 09:13:19', '2017-06-12 09:22:39'),
(655, 'battalion_auth', 'Per Battalion Auth', 111, 13, 0, NULL, 0, 11, 0, '', 0, '2017-06-12 09:15:13', '2017-06-12 09:23:02'),
(656, 'rab_auth', 'Rab Auth', 111, 13, 0, '0', 0, 11, 0, '', 0, '2017-06-12 09:16:42', '2017-06-13 02:31:52'),
(657, 'battalion_offr_auth', 'Battalion Offr Auth', 111, 13, 0, NULL, 0, 11, 0, '', 0, '2017-06-12 09:20:13', '2017-06-12 09:20:13'),
(658, 'rab_offr_auth', 'Rab Officer Auth', 111, 13, 0, NULL, 0, 11, 0, '', 0, '2017-06-12 09:21:09', '2017-06-12 09:21:09'),
(659, 'name', 'Name', 112, 22, 0, NULL, 0, 256, 1, '', 0, '2017-06-19 08:10:42', '2017-06-19 08:16:46'),
(660, 'from_time', 'From', 112, 22, 0, NULL, 0, 256, 1, '', 0, '2017-06-19 08:13:10', '2017-06-19 08:16:31'),
(661, 'to_time', 'To', 112, 22, 0, NULL, 0, 256, 1, '', 0, '2017-06-19 08:13:33', '2017-06-19 08:17:16'),
(662, 'duty_roster_id', 'Duty Roster', 56, 7, 0, NULL, 0, 0, 1, '@duty_roster_policies', 3, '2017-06-19 08:50:39', '2017-06-19 08:51:53'),
(663, 'battalion_id', 'Battalion', 31, 7, 0, NULL, 0, 0, 0, '@battalions', 3, '2017-06-19 09:20:55', '2017-06-19 09:21:37'),
(664, 'wing_id', 'Wing', 31, 7, 0, NULL, 0, 0, 0, '@wings', 4, '2017-06-19 09:21:28', '2017-06-19 09:21:28'),
(665, 'vehicle_driver_id', 'Vehicle Driver', 105, 7, 0, NULL, 0, 0, 1, '@vehicle_drivers', 2, '2017-06-20 04:59:07', '2017-06-20 04:59:07'),
(666, 'arms_ammunition', 'Arms and Ammunition', 31, 21, 0, NULL, 0, 0, 0, '', 0, '2017-06-22 02:57:50', '2017-06-22 02:57:50'),
(667, 'date', 'Date', 105, 4, 0, NULL, 0, 0, 1, '', 11, '2017-06-22 05:34:48', '2017-06-22 05:34:48'),
(668, 'kpl', 'KMPL', 100, 22, 0, NULL, 0, 256, 1, '', 3, '2017-07-23 08:23:34', '2017-07-23 08:23:34'),
(669, 'brand_name', 'Brand Name', 113, 22, 1, NULL, 0, 256, 1, '', 0, '2017-07-30 09:55:42', '2017-07-30 09:55:42'),
(670, 'bn_name', 'Bangla Name', 113, 22, 0, NULL, 0, 256, 0, '', 0, '2017-07-30 10:15:11', '2017-07-30 10:15:11'),
(671, 'renewal_month', 'Renewal Month', 73, 13, 0, NULL, 0, 11, 0, '', 0, '2017-08-02 11:16:48', '2017-08-02 11:16:48'),
(672, 'vehicle_record_id', 'Vehicle', 100, 7, 0, NULL, 0, 0, 1, '@vehicle_records', 0, '2017-08-14 06:25:32', '2017-08-14 06:25:44'),
(673, 'name', 'Name', 114, 22, 1, NULL, 0, 256, 1, '', 0, '2017-08-23 09:13:28', '2017-08-23 09:13:28'),
(675, 'name', 'Name', 116, 22, 1, NULL, 0, 256, 1, '', 1, '2017-08-23 09:33:53', '2017-08-23 09:33:53'),
(676, 'payroll_type', 'Type', 116, 7, 0, NULL, 0, 0, 1, '@payroll_types', 3, '2017-08-23 09:35:04', '2017-08-23 09:35:04'),
(677, 'salary_head', 'Salary Head', 116, 2, 0, '0', 0, 0, 0, '', 4, '2017-08-23 09:36:34', '2017-10-26 08:08:25'),
(678, 'code', 'Code', 116, 22, 0, NULL, 0, 100, 1, '', 2, '2017-09-14 09:16:25', '2017-10-26 09:52:32'),
(679, 'allowance_name', 'Name', 117, 22, 1, NULL, 0, 100, 1, '', 0, '2017-09-14 10:35:16', '2017-09-14 10:35:16'),
(680, 'payroll_head_id', 'Payroll Head', 117, 7, 0, NULL, 0, 0, 1, '@payroll_heads', 0, '2017-09-14 10:36:52', '2017-09-14 10:36:52'),
(681, 'salary_head_id', 'Salary Head', 117, 7, 0, NULL, 0, 0, 0, '@payroll_heads', 0, '2017-09-14 10:41:42', '2017-09-14 10:45:01'),
(682, 'allowance_amount', 'Amount', 117, 6, 0, NULL, 0, 11, 1, '', 0, '2017-09-14 10:48:17', '2017-09-14 10:48:17'),
(683, 'allowance_max_amount', 'Maximum Amount', 117, 6, 0, '0', 0, 11, 0, '', 0, '2017-09-14 10:49:07', '2017-09-14 11:06:55'),
(684, 'allowance_min_amount', 'Minimum Amount', 117, 6, 0, '0', 0, 11, 0, '', 0, '2017-09-14 10:49:37', '2017-09-14 11:07:06'),
(687, 'unit_price', 'Unit Price', 105, 10, 0, NULL, 0, 11, 1, '', 0, '2017-09-27 11:01:28', '2017-12-11 07:30:09'),
(688, 'payroll_head_id', 'Payroll Head', 118, 7, 0, NULL, 0, 0, 1, '@payroll_heads', 0, '2017-11-30 06:47:08', '2017-11-30 07:37:38'),
(689, 'sub_head_name', 'Name', 118, 22, 1, NULL, 0, 100, 1, '', 0, '2017-11-30 07:06:32', '2017-11-30 07:06:32'),
(690, 'emp_id', 'RAB ID', 119, 7, 0, NULL, 0, 0, 1, '@employees_info', 0, '2017-12-09 11:12:01', '2017-12-09 11:12:01'),
(691, 'tin_no', 'TIN No', 119, 22, 0, NULL, 0, 52, 0, '', 0, '2017-12-09 11:16:33', '2017-12-09 11:22:07'),
(692, 'etin_no', 'ETIN No', 119, 22, 0, NULL, 0, 52, 0, '', 0, '2017-12-09 11:17:27', '2017-12-09 11:21:58'),
(693, 'salary_id', 'Salary ID', 119, 22, 0, NULL, 0, 52, 0, '', 0, '2017-12-09 11:18:56', '2017-12-09 11:21:39'),
(694, 'volume_no', 'Register Volume', 119, 22, 0, NULL, 0, 52, 0, '', 0, '2017-12-09 11:19:35', '2017-12-09 11:21:28'),
(695, 'page_no', 'Register Page', 119, 22, 0, NULL, 0, 52, 0, '', 0, '2017-12-09 11:20:00', '2017-12-09 11:21:16'),
(696, 'gpf_no', 'GPF No', 119, 22, 0, NULL, 0, 52, 0, '', 0, '2017-12-09 11:21:06', '2017-12-09 11:21:06'),
(697, 'insurance_no', 'Life Insurance', 119, 22, 0, NULL, 0, 52, 0, '', 0, '2017-12-09 11:24:13', '2017-12-09 11:24:13'),
(698, 'name', 'Name', 120, 22, 1, NULL, 0, 256, 1, '', 0, '2017-12-18 07:56:30', '2017-12-18 07:56:30'),
(699, 'post_office', 'Post Office', 53, 22, 0, NULL, 0, 100, 0, '', 0, '2018-01-03 04:40:52', '2018-01-03 04:40:52'),
(700, 'district_id', 'District', 53, 7, 0, NULL, 0, 0, 0, '@districts', 0, '2018-01-03 04:42:01', '2018-01-03 04:42:01'),
(701, 'upazila_id', 'Upazila', 53, 7, 0, NULL, 0, 0, 0, '@upazillas', 0, '2018-01-03 04:42:34', '2018-01-03 04:42:34'),
(702, 'voucher_prefix', 'Voucher Prefix', 78, 22, 1, NULL, 0, 100, 1, '', 8, '2018-01-06 06:24:25', '2018-01-06 06:24:25'),
(703, 'unit', 'Unit', 89, 10, 0, NULL, 0, 11, 1, '', 0, '2018-01-21 09:44:13', '2018-01-21 09:46:56'),
(706, 'price', 'Price', 121, 10, 0, '0', 0, 11, 0, '', 4, '2018-01-21 09:59:54', '2018-01-24 10:20:51'),
(710, 'amount', 'Amount', 121, 10, 0, NULL, 0, 11, 1, '', 3, '2018-01-21 10:16:08', '2018-01-21 10:33:30'),
(716, 'item_id', 'Item', 121, 7, 0, NULL, 0, 0, 1, '@items', 0, '2018-01-27 09:53:42', '2018-01-27 09:53:42'),
(717, 'type_name', 'Type Name', 122, 22, 0, NULL, 0, 256, 1, '', 0, '2018-05-12 04:40:22', '2018-05-12 04:40:22'),
(718, 'type_name', 'Type Name', 123, 22, 0, NULL, 0, 256, 1, '', 0, '2018-05-12 04:45:24', '2018-05-12 04:55:55'),
(719, 'disposal_date', 'Disposal Date', 124, 4, 0, NULL, 0, 0, 1, '', 0, '2018-05-12 05:16:41', '2018-05-12 05:16:41'),
(720, 'emp_id', 'RAB ID', 125, 7, 0, NULL, 0, 0, 1, '@employees_info', 1, '2018-05-26 08:39:34', '2018-05-26 09:26:54'),
(721, 'outpass_date', 'Outpass Date', 125, 4, 0, NULL, 0, 0, 1, '', 2, '2018-05-26 08:40:20', '2018-05-26 08:40:20'),
(722, 'destination', 'Destination', 125, 22, 0, NULL, 0, 256, 0, '', 5, '2018-05-26 08:41:03', '2018-05-26 08:41:03'),
(723, 'out_time', 'From', 125, 5, 0, NULL, 0, 0, 1, '', 3, '2018-05-26 08:41:50', '2018-05-26 08:41:50'),
(724, 'in_time', 'To', 125, 5, 0, NULL, 0, 0, 1, '', 4, '2018-05-26 08:43:07', '2018-05-26 08:43:07'),
(725, 'to_date', 'To Date', 57, 4, 0, NULL, 0, 0, 1, '', 4, '2018-06-04 04:17:07', '2018-06-04 04:17:07'),
(726, 'battalion_id', 'Battalion', 126, 7, 0, NULL, 0, 0, 0, '@battalions', 2, '2018-07-22 04:49:55', '2018-07-22 04:49:55'),
(727, 'wing_id', 'Wing', 126, 7, 0, NULL, 0, 0, 0, '@wings', 3, '2018-07-22 04:50:20', '2018-07-22 04:50:20'),
(728, 'branch_id', 'Branch', 126, 7, 0, NULL, 0, 0, 0, '@branches', 4, '2018-07-22 04:50:42', '2018-07-22 04:50:42'),
(729, 'sub_branch_id', 'Sub-branch', 126, 7, 0, NULL, 0, 0, 0, '@sub_branches', 5, '2018-07-22 04:51:05', '2018-07-22 04:51:05'),
(730, 'section_id', 'Section', 126, 7, 0, NULL, 0, 0, 0, '@sections', 6, '2018-07-22 04:51:22', '2018-07-22 04:51:22'),
(731, 'sub_section_id', 'Sub-section', 126, 7, 0, NULL, 0, 0, 0, '@sub_sections', 7, '2018-07-22 04:51:44', '2018-07-22 04:51:44'),
(732, 'card_no', 'Card No', 126, 22, 0, NULL, 0, 32, 1, '', 1, '2018-07-22 04:52:30', '2018-07-22 04:52:30'),
(733, 'box_no', 'box_no', 127, 22, 1, NULL, 0, 32, 1, '', 0, '2018-07-22 04:58:53', '2018-07-22 04:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(2, 'Checkbox', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(3, 'Currency', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(4, 'Date', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(5, 'Datetime', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(6, 'Decimal', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(7, 'Dropdown', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(8, 'Email', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(9, 'File', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(10, 'Float', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(11, 'HTML', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(12, 'Image', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(13, 'Integer', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(14, 'Mobile', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(15, 'Multiselect', '2017-02-19 02:34:45', '2017-02-19 02:34:45'),
(16, 'Name', '2017-02-19 02:34:46', '2017-02-19 02:34:46'),
(17, 'Password', '2017-02-19 02:34:46', '2017-02-19 02:34:46'),
(18, 'Radio', '2017-02-19 02:34:46', '2017-02-19 02:34:46'),
(19, 'String', '2017-02-19 02:34:46', '2017-02-19 02:34:46'),
(20, 'Taginput', '2017-02-19 02:34:46', '2017-02-19 02:34:46'),
(21, 'Textarea', '2017-02-19 02:34:46', '2017-02-19 02:34:46'),
(22, 'TextField', '2017-02-19 02:34:46', '2017-02-19 02:34:46'),
(23, 'URL', '2017-02-19 02:34:46', '2017-02-19 02:34:46'),
(24, 'Files', '2017-02-19 02:34:46', '2017-02-19 02:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `mother_forces`
--

CREATE TABLE `mother_forces` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mf_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mf_address` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mf_phone_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mf_mobile_no` varchar(18) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mf_fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mf_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mf_website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_afd` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mother_forces`
--

INSERT INTO `mother_forces` (`id`, `deleted_at`, `created_at`, `updated_at`, `mf_name`, `mf_address`, `mf_phone_no`, `mf_mobile_no`, `mf_fax`, `mf_email`, `mf_website`, `is_afd`) VALUES
(1, NULL, '2017-03-02 04:14:38', '2017-05-21 10:34:36', 'সেনাবাহিনী', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes'),
(2, NULL, '2017-03-02 04:26:55', '2017-05-08 08:59:28', 'Navy', 'Cant., Dhaka', '0145', NULL, NULL, NULL, NULL, 'Yes'),
(3, NULL, '2017-03-13 04:50:59', '2017-05-08 08:59:37', 'Air Force', 'Tejgaon, Dhaka', NULL, NULL, NULL, NULL, NULL, 'Yes'),
(4, NULL, '2017-03-13 04:51:14', '2017-05-08 08:59:47', 'Police', 'Rajarbag, Dhaka', NULL, NULL, NULL, NULL, NULL, 'No'),
(5, NULL, '2017-04-09 09:34:10', '2017-04-09 09:34:10', 'Ansar', NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(6, NULL, '2017-04-09 09:34:20', '2017-04-09 09:34:20', 'BGB', NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(7, NULL, '2017-04-09 09:34:30', '2017-04-09 09:34:30', 'Coast Gurd', NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(8, NULL, '2017-04-19 09:22:45', '2017-04-19 09:22:45', 'Civil', NULL, NULL, NULL, NULL, NULL, NULL, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `mother_units`
--

CREATE TABLE `mother_units` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `core_id` int(10) DEFAULT NULL,
  `mu_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mother_force_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `mu_location` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mother_units`
--

INSERT INTO `mother_units` (`id`, `deleted_at`, `created_at`, `updated_at`, `core_id`, `mu_name`, `mother_force_id`, `mu_location`) VALUES
(1, NULL, '2017-03-02 04:59:38', '2017-05-10 11:22:59', 1, 'সদর দপ্তর', 1, 'ঢাকা সেনানিবাস'),
(2, NULL, '2017-03-02 05:06:11', '2017-03-02 05:06:11', 1, 'Unit 2', 1, ''),
(3, NULL, '2017-03-07 03:44:32', '2017-03-07 03:44:58', 1, 'Unit 3', 1, ''),
(4, NULL, '2017-03-13 04:49:41', '2017-03-13 04:49:41', 3, 'Unit 1', 1, ''),
(5, NULL, '2017-03-13 04:49:50', '2017-05-10 10:51:13', 2, '৬০ স্বতন্ত্র এসএএম ব্যাটারী আর্টিলারি', 1, 'রাজেন্দ্রপুর সেনানিবাস'),
(6, NULL, '2017-03-13 04:50:00', '2017-05-10 10:53:54', 2, '২৯ ডিভ লকেটিং ব্যাটারী আর্টিলারি', 1, 'বগুড়া সেনানিবাস'),
(7, NULL, '2017-03-13 04:50:08', '2017-05-10 11:03:46', 4, '২ সিগন্যাল ব্যাটালিয়ন', 1, 'রংপুর সেনানিবাস'),
(8, NULL, '2017-05-10 10:45:45', '2017-05-10 10:45:45', NULL, 'বিমান বাহিনী ঘাঁটি বাশার', 3, 'ঢাকা সেনানিবাস'),
(9, NULL, '2017-05-10 10:59:54', '2017-05-10 11:06:46', NULL, 'বানৌজা হাজী মহসিন', 2, 'চট্টগ্রাম');

-- --------------------------------------------------------

--
-- Table structure for table `movement_types`
--

CREATE TABLE `movement_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `movement_type` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mtype_short_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movement_types`
--

INSERT INTO `movement_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `movement_type`, `mtype_short_code`) VALUES
(1, NULL, '2017-03-12 09:16:35', '2017-05-21 11:44:32', 'Tohol', 'm'),
(2, NULL, '2017-04-10 10:25:07', '2017-04-10 10:25:07', 'Regular', NULL),
(3, NULL, '2017-05-02 10:39:23', '2017-05-02 10:39:23', 'temporary duty', 'TD');

-- --------------------------------------------------------

--
-- Table structure for table `move_orders`
--

CREATE TABLE `move_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `posting_rec_id` int(11) DEFAULT NULL,
  `movement_date_time` datetime DEFAULT NULL,
  `railway_order` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_bonus` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `move_order_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=all,2=training school, 3 = Release',
  `destinations` text COLLATE utf8_unicode_ci,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `move_orders`
--

INSERT INTO `move_orders` (`id`, `posting_rec_id`, `movement_date_time`, `railway_order`, `salary_bonus`, `remarks`, `move_order_type`, `destinations`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 13, '2017-06-14 17:00:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', 'tyyf\r\nsadf', 1, NULL, NULL, NULL, '2017-06-14 05:27:06', '2017-06-14 05:27:06', NULL),
(2, 12, '2017-06-14 15:00:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', 'safasf\r\nsadf', 1, NULL, NULL, NULL, '2017-06-14 05:34:48', '2017-06-14 05:34:48', NULL),
(3, 12, '2017-06-17 18:00:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', NULL, 2, NULL, NULL, NULL, '2017-06-14 05:41:56', '2017-06-14 05:41:56', NULL),
(4, 14, '2017-07-15 00:00:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', 'vbnbvn', 1, NULL, NULL, NULL, '2017-07-15 06:06:59', '2017-07-15 06:06:59', NULL),
(6, 15, '2017-07-16 14:30:00', 'প্রদান করা হয় নাই', 'এলপিসি মোতাবেক', 'remarks done', 3, 'মাতৃবাহিনী', NULL, NULL, '2017-07-15 08:39:00', '2017-07-16 08:26:10', NULL),
(7, 16, '2017-07-15 16:00:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', 'hello', 1, NULL, NULL, NULL, '2017-07-15 09:17:08', '2017-07-15 09:17:08', NULL),
(8, 7, '2017-07-15 04:30:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', 'ok', 1, NULL, NULL, NULL, '2017-07-15 09:56:54', '2017-07-15 09:56:54', NULL),
(9, 9, '2017-07-15 19:32:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', 'hello ok', 1, NULL, NULL, NULL, '2017-07-15 09:57:25', '2017-07-15 09:57:25', NULL),
(10, 19, '2017-07-15 16:00:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', NULL, 1, NULL, NULL, NULL, '2017-07-15 10:47:42', '2017-07-15 10:47:42', NULL),
(11, 19, '2017-07-16 20:00:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', 'dfdsafa', 2, NULL, NULL, NULL, '2017-07-15 10:57:49', '2017-07-15 10:57:49', NULL),
(12, 20, '2017-07-15 15:00:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', 'esdf', 1, NULL, NULL, NULL, '2017-07-15 11:21:35', '2017-07-15 11:21:35', NULL),
(13, 21, '2017-07-15 16:08:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', 'problem', 1, NULL, NULL, NULL, '2017-07-15 11:31:48', '2017-07-15 11:31:48', NULL),
(14, 9, '2017-08-07 18:04:00', 'প্রদান করা হয় নাই', 'অপ্রযোজ্য', 'উক্ত ডিএডি আন্তঃ র‍্যাব স্থায়ীভাবে বদলী হয়ে র‍্যাব ফোর্সেস সদর দপ্তর, যোগাযোগ উইং, ঢাকা গমন করেছেন। গমনের প্রাক্কালে তাকে ২৬ এবং ২৭ নভেম্বর ২০১৬ তারিখ ০২ দিনের যাত্রা বিরতি মঞ্জুর করা হল। তাকে ২৬ নভেম্বর ২০১৬ তারিখ হতে অত্র ব্যাটালিয়নের রশদ এবং ২৮ নভেম্বর ২০১৬ তারিখ হতে অত্র ব্যাটালিয়নের  জনবলে কমতি করা হল।', 2, NULL, NULL, NULL, '2017-08-07 11:32:33', '2017-08-07 11:32:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oil_change_records`
--

CREATE TABLE `oil_change_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_record_id` int(10) UNSIGNED NOT NULL,
  `oil_type_id` int(10) UNSIGNED NOT NULL,
  `change_date` date DEFAULT NULL,
  `km` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_change_date` date DEFAULT NULL,
  `next_km` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oil_amount` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oil_types`
--

CREATE TABLE `oil_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `oil_type` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `assigned_to` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `connect_since` date NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organization_stores`
--

CREATE TABLE `organization_stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `battalion_id` int(10) UNSIGNED NOT NULL,
  `wing_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_branch_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_section_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=active,1=in active',
  `voucher_prefix` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organization_stores`
--

INSERT INTO `organization_stores` (`id`, `deleted_at`, `created_at`, `updated_at`, `store_id`, `battalion_id`, `wing_id`, `branch_id`, `sub_branch_id`, `section_id`, `sub_section_id`, `status`, `voucher_prefix`) VALUES
(1, NULL, '2017-04-12 09:56:49', '2017-07-29 10:49:50', 1, 1, 2, NULL, NULL, NULL, NULL, 0, ''),
(2, NULL, '2017-04-12 12:17:51', '2017-09-18 04:34:45', 2, 1, 1, NULL, NULL, NULL, NULL, 1, ''),
(3, '2017-07-29 11:57:34', '2017-04-13 08:28:32', '2017-07-29 11:57:34', 2, 2, NULL, NULL, NULL, NULL, NULL, 0, ''),
(4, '2017-07-29 11:59:21', '2017-04-18 11:04:17', '2017-07-29 11:59:21', 4, 1, 1, 1, NULL, NULL, NULL, 0, ''),
(5, NULL, '2017-04-24 10:59:50', '2018-07-22 12:08:56', 1, 1, 1, NULL, NULL, NULL, NULL, 1, 'HQ-AD-MIS'),
(6, '2017-07-29 11:51:15', '2017-04-24 11:56:23', '2017-07-29 11:51:15', 1, 1, 1, 1, 2, 1, 1, 0, ''),
(7, '2017-07-29 11:42:33', '2017-07-29 10:18:52', '2017-07-29 11:42:33', 2, 1, 2, NULL, NULL, NULL, NULL, 0, ''),
(8, '2017-07-29 11:40:49', '2017-07-29 10:19:42', '2017-07-29 11:40:49', 2, 1, NULL, NULL, NULL, NULL, NULL, 0, ''),
(9, NULL, '2017-07-29 11:44:44', '2017-09-21 06:07:28', 1, 3, NULL, NULL, NULL, NULL, NULL, 1, 'HQ-AD'),
(10, NULL, '2018-01-06 07:04:08', '2018-01-07 04:35:39', 1, 1, 2, 14, NULL, NULL, NULL, 0, 'HQ-CM-MIS-MIS-STORE'),
(11, NULL, '2018-05-20 03:45:58', '2018-05-20 03:48:03', 5, 1, NULL, NULL, NULL, NULL, NULL, 1, 'RS'),
(12, NULL, '2018-06-02 07:44:08', '2018-06-02 07:44:46', 5, 2, NULL, NULL, NULL, NULL, NULL, 1, 'RS'),
(13, NULL, '2018-06-02 07:44:24', '2018-06-02 07:44:56', 5, 4, NULL, NULL, NULL, NULL, NULL, 1, 'RS');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parts_cat_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `parts_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `deleted_at`, `created_at`, `updated_at`, `parts_cat_id`, `parts_name`) VALUES
(1, '2017-05-20 10:11:10', '2017-05-20 04:56:44', '2017-05-20 10:11:10', 1, 'Engine'),
(2, NULL, '2017-05-20 04:56:58', '2017-05-20 04:56:58', 1, 'Water Pump'),
(3, NULL, '2017-05-20 04:57:07', '2017-05-20 04:57:07', 1, 'Radiator'),
(4, NULL, '2017-05-20 04:58:56', '2017-05-20 04:58:56', 1, 'Alternator'),
(5, NULL, '2017-05-20 04:59:05', '2017-05-20 04:59:05', 1, 'Starter'),
(6, NULL, '2017-05-20 04:59:20', '2017-05-20 04:59:20', 1, 'Intake'),
(7, NULL, '2017-05-20 04:59:35', '2017-05-20 04:59:35', 1, 'Exhaust'),
(8, NULL, '2017-05-20 04:59:46', '2017-05-20 04:59:46', 1, 'Ignition'),
(9, NULL, '2017-05-20 05:00:04', '2017-05-20 05:00:04', 2, 'Transmission'),
(10, NULL, '2017-05-20 05:00:16', '2017-05-20 05:00:16', 2, 'DriveShaft');

-- --------------------------------------------------------

--
-- Table structure for table `parts_categories`
--

CREATE TABLE `parts_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parts_cat_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parts_categories`
--

INSERT INTO `parts_categories` (`id`, `deleted_at`, `created_at`, `updated_at`, `parts_cat_name`) VALUES
(1, NULL, '2017-05-20 04:32:10', '2017-05-20 04:54:49', 'Engine Parts'),
(2, NULL, '2017-05-20 04:55:10', '2017-05-20 04:55:10', 'Chasis Parts'),
(3, NULL, '2017-05-20 04:55:27', '2017-05-20 04:55:27', 'Body Parts'),
(4, NULL, '2017-05-20 04:55:46', '2017-05-20 09:29:44', 'Electrical');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('akebulr@gmail.com', '39db44802e4c1be71e762d2354d9408d59b39333f03fdce27fb3550c8bb76323', '2017-03-11 05:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_accounts`
--

CREATE TABLE `payroll_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `tin_no` varchar(52) COLLATE utf8_unicode_ci DEFAULT NULL,
  `etin_no` varchar(52) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_id` varchar(52) COLLATE utf8_unicode_ci DEFAULT NULL,
  `volume_no` varchar(52) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_no` varchar(52) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gpf_no` varchar(52) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insurance_no` varchar(52) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_accounts`
--

INSERT INTO `payroll_accounts` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `tin_no`, `etin_no`, `salary_id`, `volume_no`, `page_no`, `gpf_no`, `insurance_no`) VALUES
(1, NULL, '2017-12-09 11:47:17', '2017-12-09 11:54:18', 10143, '634525729897', NULL, '2223223', '7 Kha', '101', '312364565', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_allowances`
--

CREATE TABLE `payroll_allowances` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `allowance_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=fixed,2=percentage',
  `payroll_head_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `payroll_sub_head_id` int(10) UNSIGNED DEFAULT NULL,
  `salary_head_id` int(10) UNSIGNED DEFAULT NULL,
  `allowance_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `allowance_max_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `allowance_min_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `time_interval` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=monthly,2=daily,3=weekly,4=Quarterly'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_allowances`
--

INSERT INTO `payroll_allowances` (`id`, `deleted_at`, `created_at`, `updated_at`, `allowance_name`, `type`, `payroll_head_id`, `payroll_sub_head_id`, `salary_head_id`, `allowance_amount`, `allowance_max_amount`, `allowance_min_amount`, `time_interval`) VALUES
(15, NULL, '2017-10-26 04:54:17', '2017-10-26 04:54:17', 'বাড়ীভাড়া ভাতা', 2, 2, NULL, 1, '40.00', '0.00', '0.00', 1),
(16, '2017-12-21 04:05:29', '2017-10-26 04:57:16', '2017-12-21 04:05:29', 'চিকিৎসা ভাতা', 1, 20, NULL, NULL, '1500.00', '0.00', '0.00', 1),
(17, NULL, '2017-10-26 07:23:16', '2017-10-26 07:23:16', 'মহার্ঘ ভাতা', 1, 12, NULL, NULL, '2604.00', '0.00', '0.00', 1),
(18, NULL, '2017-10-26 07:24:04', '2017-10-26 07:24:04', 'যাতায়াত ভাতা', 1, 11, NULL, NULL, '150.00', '0.00', '0.00', 1),
(19, NULL, '2017-10-26 09:58:07', '2017-12-12 07:00:57', 'ক্ষৌর ও ধৌত ভাতা ', 1, 22, 6, NULL, '490.00', '0.00', '0.00', 1),
(20, NULL, '2017-10-26 10:00:32', '2017-12-12 07:00:16', 'ব্যাটম্যান ভাতা', 2, 22, 5, 1, '20.00', '0.00', '0.00', 1),
(21, NULL, '2017-10-26 10:01:28', '2017-11-30 11:35:28', 'প্রতিরক্ষা ভাতা', 2, 22, 4, 1, '10.00', '0.00', '0.00', 1),
(22, NULL, '2017-10-26 10:02:20', '2017-12-12 07:00:44', 'দক্ষতা ভাতা', 2, 22, 3, 1, '15.00', '0.00', '0.00', 1),
(23, NULL, '2017-10-26 10:02:44', '2017-11-30 11:00:44', 'সুআচরণ ভাতা', 2, 22, 2, 1, '5.00', '0.00', '0.00', 1),
(24, NULL, '2017-10-26 10:05:02', '2017-11-30 11:00:28', 'র‍্যাব ভাতা-2500', 2, 22, 1, 1, '2500.00', '0.00', '0.00', 1),
(25, NULL, '2017-11-30 10:17:46', '2017-11-30 10:59:13', 'র‍্যাব ভাতা-6000', 1, 22, 1, NULL, '6000.00', '0.00', '0.00', 1),
(26, NULL, '2017-12-24 04:28:02', '2017-12-24 04:31:57', 'র‍্যাব ভাতা-8000', 1, 22, 1, NULL, '8000.00', '0.00', '0.00', 1),
(27, NULL, '2017-12-24 04:28:38', '2017-12-24 04:28:38', 'র‍্যাব ভাতা-9000', 2, 22, 1, 1, '50.00', '0.00', '0.00', 1),
(28, NULL, '2017-12-24 04:29:47', '2017-12-24 04:29:47', 'র‍্যাব ভাতা-10000', 2, 22, 1, 1, '60.00', '10000.00', '5000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_deductions`
--

CREATE TABLE `payroll_deductions` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deduction_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=fixed,2=percentage',
  `payroll_head_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `salary_head_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'allowance_id,0=basic',
  `deduction_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deduction_max_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deduction_min_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `time_interval` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=monthly,2=daily,3=weekly,4=Quarterly'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_deductions`
--

INSERT INTO `payroll_deductions` (`id`, `deleted_at`, `created_at`, `updated_at`, `deduction_name`, `type`, `payroll_head_id`, `salary_head_id`, `deduction_amount`, `deduction_max_amount`, `deduction_min_amount`, `time_interval`) VALUES
(1, '2017-11-06 09:46:31', '2017-10-26 10:33:41', '2017-10-26 10:33:41', 'সাধারণ ভবিষ্য তহবিল', 1, 19, NULL, '500.00', '0.00', '0.00', 1),
(2, NULL, '2017-10-26 10:48:31', '2017-11-01 08:28:35', 'বাড়ীভাড়া', 2, 23, 0, '40.00', '0.00', '0.00', 1),
(3, NULL, '2017-10-26 10:50:30', '2017-10-26 10:50:30', 'গ্যাস', 1, 6, NULL, '950.00', '0.00', '0.00', 1),
(4, NULL, '2017-10-26 10:51:02', '2017-10-26 10:51:02', 'পানি ও পয়ঃপ্রনালী', 1, 5, NULL, '500.00', '0.00', '0.00', 1),
(5, NULL, '2017-11-01 09:30:29', '2017-11-01 09:31:57', 'মোটর সাইকেলের  অগ্রিমের কিস্তি পরিশোধ', 2, 7, 15, '10.00', '0.00', '0.00', 1),
(6, NULL, '2017-12-14 06:15:45', '2017-12-14 06:15:45', 'সরকারি কর্মচারীগণের কল্যাণ তহবিল-50', 1, 18, NULL, '50.00', '0.00', '0.00', 1),
(7, NULL, '2017-12-14 06:17:17', '2017-12-14 06:17:17', 'সাধারণ ভবিষ্যৎ তহবিল-5000', 1, 19, NULL, '5000.00', '0.00', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_heads`
--

CREATE TABLE `payroll_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payroll_type` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1=earning,2=deduction,3=Taxation,4=festival earning',
  `salary_head` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=salary head,0=not salary head',
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_heads`
--

INSERT INTO `payroll_heads` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `payroll_type`, `salary_head`, `code`) VALUES
(1, NULL, '2017-08-23 09:47:57', '2017-10-26 10:52:23', 'মূল বেতন', 1, 1, '৪৬০১'),
(2, NULL, '2017-08-23 09:48:20', '2017-10-26 08:45:10', 'বাড়ীভাড়া  ভাতা', 1, 1, '৪৭০৫'),
(3, NULL, '2017-08-23 09:48:46', '2017-10-26 10:13:54', 'মোটর গাড়ীর  অগ্রিমের কিস্তি পরিশোধ', 2, 0, '১-০৯৬৫-০০০১-৩৯১১'),
(4, NULL, '2017-08-23 09:49:05', '2017-10-26 10:13:03', 'গৃহ নির্মাণ অগ্রিমের কিস্তি পরিশোধ', 2, 0, '১-০৯৬৫-০০০১-৩৯০১'),
(5, NULL, '2017-08-23 09:49:24', '2017-10-26 08:58:47', 'পানি ও পয়ঃপ্রনালী ', 2, 0, '১-৩২৩৭-০০১-২১২৩'),
(6, NULL, '2017-08-23 09:51:39', '2017-10-26 08:58:19', 'গ্যাস', 2, 0, '১-৩২৩৭-০০১-২১১৫'),
(7, NULL, '2017-08-23 09:52:26', '2017-10-26 10:15:05', 'মোটর সাইকেলের  অগ্রিমের কিস্তি পরিশোধ', 2, 0, '১-০৯৬৫-০০০১-৩৯২১'),
(8, NULL, '2017-09-14 09:18:33', '2017-10-26 10:15:43', 'বাই সাইকেলের  অগ্রিমের কিস্তি পরিশোধ', 2, 0, '১-০৯৬৫-০০০১-৩৯৩১'),
(9, NULL, '2017-09-20 09:24:34', '2017-10-26 10:16:28', 'করমচারিদেরকে প্রদত্ত ঋণের সুদ পরিশোধ', 2, 0, '১-০৯৬৫-০০০১-১৬৩১'),
(10, NULL, '2017-09-20 09:25:12', '2017-10-26 10:16:56', 'জরিমানা ও দণ্ড ', 2, 0, '১-২২১১-০০০০-১৯০১'),
(11, NULL, '2017-10-26 05:08:22', '2017-10-26 10:12:06', 'যাতায়াত  ভাতা', 1, 0, '৪৭৬৫'),
(12, NULL, '2017-10-26 07:21:55', '2017-10-26 08:44:48', 'মহার্ঘ ভাতা', 1, 0, '৪৭০১'),
(13, NULL, '2017-10-26 07:32:31', '2017-10-26 10:11:34', 'পৌরকর কর্তন', 2, 0, '১-৩২৩৭-০০০০-২১২৭'),
(14, NULL, '2017-10-26 07:33:46', '2017-10-26 10:11:01', 'অতিরিক্ত গৃহীত কর্তন', 2, 0, '১-২২১১-০০০০-২৬৭১'),
(15, NULL, '2017-10-26 07:34:21', '2017-10-26 08:47:22', 'শিক্ষা ভাতা', 1, 0, '৪৭৭৩'),
(16, NULL, '2017-10-26 07:34:49', '2017-10-26 10:10:12', 'ডাক জীবন বীমা কিস্তি', 2, 0, '৬-৫৪৩১-০০০০-৮০৪১'),
(17, NULL, '2017-10-26 08:12:47', '2017-10-26 10:09:33', 'সরকারি কর্মচারীগণের গোষ্ঠী বীমা', 2, 0, '৬-০৭৭১-০০০১-৮২৪৬'),
(18, NULL, '2017-10-26 08:21:32', '2017-10-26 10:09:02', 'সরকারি কর্মচারীগণের কল্যাণ তহবিল', 2, 0, '৬-০৭৭১-০০০১-৮২৪১'),
(19, NULL, '2017-10-26 08:22:09', '2017-10-26 10:08:30', 'সাধারণ ভবিষ্যৎ তহবিল', 2, 0, '৬-০৯৩৭-০০০০-৮১০১'),
(20, NULL, '2017-10-26 08:46:26', '2017-10-26 08:46:26', 'চিকিৎসা ভাতা', 1, 0, '৪৭১৭'),
(21, NULL, '2017-10-26 08:47:05', '2017-10-26 08:47:05', 'টিফিন ভাতা', 1, 0, '৪৭৫৫'),
(22, NULL, '2017-10-26 08:48:33', '2017-10-26 09:08:50', 'অন্যান্য ভাতা', 1, 0, '৪৭৯৫'),
(23, NULL, '2017-10-26 08:56:46', '2018-01-06 07:11:30', 'বাড়ীভাড়া', 2, 0, '১-৩২৩৭-০০১২১১১'),
(24, '2017-12-12 06:05:23', '2017-11-30 11:27:02', '2017-12-12 06:05:23', 'Private Deduction', 2, 0, '014789');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_hrm`
--

CREATE TABLE `payroll_hrm` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_id` int(11) NOT NULL,
  `pay_scale_id` int(10) UNSIGNED NOT NULL,
  `basic_salary` decimal(10,2) NOT NULL,
  `effective_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `payroll_hrm_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=edit disable,1=edit enable',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_hrm`
--

INSERT INTO `payroll_hrm` (`id`, `emp_id`, `pay_scale_id`, `basic_salary`, `effective_date`, `end_date`, `payroll_hrm_status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10151, 1, '22000.00', '2017-10-01', NULL, 1, 1, 1, '2017-10-30 04:27:32', '2017-10-30 04:28:29', NULL),
(2, 1, 2, '35500.00', '2017-10-15', NULL, 1, 1, 1, '2017-10-30 04:32:01', '2017-10-30 10:21:58', NULL),
(3, 10143, 5, '16000.00', '2017-08-10', NULL, 1, 1, 1, '2017-10-30 04:37:34', '2017-10-30 04:39:02', NULL),
(4, 1, 1, '22000.00', '2017-03-03', '2017-10-14', 0, 1, NULL, '2017-10-31 06:45:45', '2017-10-31 06:45:45', NULL),
(5, 10153, 1, '22000.00', '2018-05-31', NULL, 1, NULL, NULL, '2018-05-31 05:48:16', '2018-05-31 05:48:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_hrm_details`
--

CREATE TABLE `payroll_hrm_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `payroll_hrm_id` int(10) UNSIGNED NOT NULL,
  `payroll_allowance_id` int(10) UNSIGNED DEFAULT NULL,
  `payroll_deduction_id` int(10) UNSIGNED DEFAULT NULL,
  `payroll_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=allowance,2=deduction',
  `effective_from_date` date DEFAULT NULL,
  `effective_to_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active,2=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_hrm_details`
--

INSERT INTO `payroll_hrm_details` (`id`, `payroll_hrm_id`, `payroll_allowance_id`, `payroll_deduction_id`, `payroll_type`, `effective_from_date`, `effective_to_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 17, NULL, 1, NULL, NULL, 1, '2017-10-30 04:27:32', '2017-10-30 04:27:32', NULL),
(2, 1, 15, NULL, 1, NULL, NULL, 1, '2017-10-30 04:27:32', '2017-10-30 04:27:32', NULL),
(3, 1, 16, NULL, 1, NULL, NULL, 1, '2017-10-30 04:27:32', '2017-10-30 04:27:32', NULL),
(4, 1, 23, NULL, 1, NULL, NULL, 1, '2017-10-30 04:27:32', '2017-10-30 04:27:32', NULL),
(5, 1, 19, NULL, 1, NULL, NULL, 1, '2017-10-30 04:27:32', '2017-10-30 04:27:32', NULL),
(6, 1, 24, NULL, 1, NULL, NULL, 1, '2017-10-30 04:27:32', '2017-10-30 04:27:32', NULL),
(7, 1, NULL, 3, 2, NULL, NULL, 1, '2017-10-30 04:28:29', '2017-10-30 04:28:29', NULL),
(8, 1, NULL, 4, 2, NULL, NULL, 1, '2017-10-30 04:28:29', '2017-10-30 04:28:29', NULL),
(9, 2, 15, NULL, 1, NULL, NULL, 1, '2017-10-30 04:32:01', '2018-02-28 05:07:45', NULL),
(10, 2, 16, NULL, 1, NULL, NULL, 1, '2017-10-30 04:32:01', '2018-02-28 05:02:41', '2018-02-28 05:02:41'),
(11, 2, 19, NULL, 1, NULL, NULL, 1, '2017-10-30 04:32:01', '2018-02-28 05:07:45', NULL),
(12, 2, 18, NULL, 1, NULL, NULL, 1, '2017-10-30 04:32:01', '2017-10-30 04:32:01', NULL),
(13, 2, 17, NULL, 1, NULL, NULL, 1, '2017-10-30 04:32:01', '2017-10-30 04:32:01', NULL),
(14, 2, 20, NULL, 1, NULL, NULL, 1, '2017-10-30 04:32:01', '2017-10-30 04:32:01', NULL),
(15, 2, 22, NULL, 1, NULL, NULL, 1, '2017-10-30 04:32:01', '2017-10-30 04:32:01', NULL),
(16, 2, 24, NULL, 1, NULL, NULL, 1, '2017-10-30 04:32:01', '2017-10-30 04:32:01', NULL),
(17, 2, NULL, 3, 2, NULL, NULL, 1, '2017-10-30 04:32:01', '2017-10-30 10:21:59', NULL),
(18, 3, 16, NULL, 1, NULL, NULL, 1, '2017-10-30 04:37:34', '2017-10-30 04:37:34', NULL),
(19, 3, 17, NULL, 1, NULL, NULL, 1, '2017-10-30 04:37:34', '2017-10-30 04:37:34', NULL),
(20, 3, 18, NULL, 1, NULL, NULL, 1, '2017-10-30 04:37:34', '2017-10-30 04:37:34', NULL),
(21, 3, 19, NULL, 1, NULL, NULL, 1, '2017-10-30 04:37:34', '2017-10-30 04:37:34', NULL),
(22, 3, 20, NULL, 1, NULL, NULL, 1, '2017-10-30 04:37:34', '2017-10-30 04:37:34', NULL),
(23, 3, 22, NULL, 1, NULL, NULL, 1, '2017-10-30 04:37:34', '2017-10-30 04:37:34', NULL),
(24, 3, NULL, 1, 2, NULL, NULL, 1, '2017-10-30 04:37:34', '2017-12-14 07:32:52', '2017-12-14 07:32:52'),
(25, 3, NULL, 2, 2, NULL, NULL, 1, '2017-10-30 04:37:34', '2017-11-04 05:57:55', '2017-11-04 05:57:55'),
(26, 3, 15, NULL, 1, NULL, NULL, 1, '2017-10-31 05:54:42', '2017-10-31 05:54:42', NULL),
(27, 4, 15, NULL, 1, NULL, NULL, 1, '2017-10-31 06:45:45', '2017-10-31 06:45:45', NULL),
(28, 4, 17, NULL, 1, NULL, NULL, 1, '2017-10-31 06:45:45', '2017-10-31 06:45:45', NULL),
(29, 4, 21, NULL, 1, NULL, NULL, 1, '2017-10-31 06:45:45', '2017-10-31 06:45:45', NULL),
(30, 4, NULL, 3, 2, NULL, NULL, 1, '2017-10-31 06:45:45', '2017-10-31 06:45:45', NULL),
(31, 4, NULL, 4, 2, NULL, NULL, 1, '2017-10-31 06:45:45', '2017-10-31 06:45:45', NULL),
(32, 3, NULL, 2, 2, NULL, NULL, 1, '2017-11-04 06:27:15', '2017-11-04 06:27:15', NULL),
(33, 2, NULL, 4, 2, NULL, NULL, 1, '2017-11-04 09:00:11', '2017-11-04 09:00:11', NULL),
(34, 3, NULL, 7, 2, NULL, NULL, 1, '2017-12-14 07:32:52', '2017-12-14 07:32:52', NULL),
(35, 3, NULL, 6, 2, NULL, NULL, 1, '2017-12-14 07:33:12', '2017-12-14 07:33:12', NULL),
(36, 5, 15, NULL, 1, '2018-05-01', '2018-05-31', 1, '2018-05-31 05:48:16', '2018-05-31 05:48:16', NULL),
(37, 5, 17, NULL, 1, '2018-05-15', '2018-06-21', 1, '2018-05-31 05:48:17', '2018-05-31 05:48:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_pay_scales`
--

CREATE TABLE `payroll_pay_scales` (
  `id` int(10) UNSIGNED NOT NULL,
  `pay_scale_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `payroll_head_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Basic',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_pay_scales`
--

INSERT INTO `payroll_pay_scales` (`id`, `pay_scale_name`, `payroll_head_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '22000-53060', 1, '2017-10-30 04:15:46', '2017-10-30 04:19:08', NULL),
(2, '35500-67000', 1, '2017-10-30 04:17:34', '2017-10-30 04:17:34', NULL),
(3, '43000-69850', 1, '2017-10-30 04:18:27', '2017-10-30 04:18:27', NULL),
(4, '56500-74400', 1, '2017-10-30 04:19:45', '2017-10-30 04:19:45', NULL),
(5, '16000-38640', 1, '2017-10-30 04:20:10', '2017-10-30 04:20:10', NULL),
(6, '12500-30230', 1, '2017-10-30 04:20:48', '2017-10-30 04:20:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_pay_scale_details`
--

CREATE TABLE `payroll_pay_scale_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `pay_scale_id` int(10) UNSIGNED NOT NULL,
  `pay_scale_year` tinyint(4) NOT NULL COMMENT '1=1st,2=2nd,3=3rd,4=4th....',
  `pay_scale_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_pay_scale_details`
--

INSERT INTO `payroll_pay_scale_details` (`id`, `pay_scale_id`, `pay_scale_year`, `pay_scale_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '22000.00', '2017-10-30 04:15:46', '2017-10-30 04:19:08', '2017-10-30 04:19:08'),
(2, 2, 1, '35500.00', '2017-10-30 04:17:34', '2017-10-30 04:17:34', NULL),
(3, 3, 1, '43000.00', '2017-10-30 04:18:27', '2017-10-30 04:18:27', NULL),
(4, 1, 1, '22000.00', '2017-10-30 04:19:08', '2017-10-30 04:19:08', NULL),
(5, 4, 1, '56500.00', '2017-10-30 04:19:45', '2017-10-30 04:19:45', NULL),
(6, 5, 1, '16000.00', '2017-10-30 04:20:10', '2017-10-30 04:20:10', NULL),
(7, 6, 1, '12500.00', '2017-10-30 04:20:48', '2017-10-30 04:20:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_policy`
--

CREATE TABLE `payroll_policy` (
  `id` int(10) UNSIGNED NOT NULL,
  `policy_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `policy_type` tinyint(4) NOT NULL COMMENT '1=salary policy',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_policy`
--

INSERT INTO `payroll_policy` (`id`, `policy_name`, `policy_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, '10th grade', 1, '2017-09-13 11:06:17', '2017-09-13 11:06:17', NULL),
(14, '9th', 1, '2017-09-13 11:13:56', '2017-09-13 11:29:09', NULL),
(15, 'asdfasf', 1, '2017-09-13 11:56:32', '2017-09-13 11:56:32', NULL),
(16, '9700 dhaka city', 1, '2017-09-14 06:32:24', '2017-09-14 06:32:24', NULL),
(17, 'Test Policy', 1, '2018-01-27 06:24:01', '2018-01-27 06:24:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_policy_details`
--

CREATE TABLE `payroll_policy_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `policy_id` int(10) UNSIGNED NOT NULL,
  `payroll_head` int(10) UNSIGNED NOT NULL,
  `salary_head` int(10) UNSIGNED DEFAULT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1=Fixed,2=Percentage',
  `amount` decimal(10,2) DEFAULT NULL,
  `salary_amount` decimal(10,2) NOT NULL COMMENT 'update by process',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_policy_details`
--

INSERT INTO `payroll_policy_details` (`id`, `policy_id`, `payroll_head`, `salary_head`, `type`, `amount`, `salary_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 13, 2, 1, 2, '10.00', '2000.00', '2017-09-13 11:06:17', '2017-09-13 11:11:09', '2017-09-13 11:11:09'),
(2, 13, 1, NULL, 1, '20000.00', '20000.00', '2017-09-13 11:06:17', '2017-09-13 11:11:10', '2017-09-13 11:11:10'),
(3, 13, 2, 1, 2, '10.00', '2000.00', '2017-09-13 11:11:10', '2017-09-13 11:11:10', NULL),
(4, 13, 1, NULL, 1, '20000.00', '20000.00', '2017-09-13 11:11:10', '2017-09-13 11:11:10', NULL),
(5, 13, 3, 2, 2, '5.00', '100.00', '2017-09-13 11:11:10', '2017-09-13 11:11:10', NULL),
(6, 14, 1, 1, 2, '15000.00', '0.00', '2017-09-13 11:13:56', '2017-09-13 11:14:26', '2017-09-13 11:14:26'),
(7, 14, 2, 3, 2, '10.00', '0.00', '2017-09-13 11:13:56', '2017-09-13 11:14:26', '2017-09-13 11:14:26'),
(8, 14, 3, 2, 2, '5.00', '0.00', '2017-09-13 11:13:56', '2017-09-13 11:14:26', '2017-09-13 11:14:26'),
(9, 14, 1, NULL, 1, '15000.00', '15000.00', '2017-09-13 11:14:26', '2017-09-13 11:15:19', '2017-09-13 11:15:19'),
(10, 14, 2, 3, 2, '10.00', '0.00', '2017-09-13 11:14:27', '2017-09-13 11:15:19', '2017-09-13 11:15:19'),
(11, 14, 3, 2, 2, '5.00', '0.00', '2017-09-13 11:14:27', '2017-09-13 11:15:19', '2017-09-13 11:15:19'),
(12, 14, 1, NULL, 1, '15000.00', '15000.00', '2017-09-13 11:15:19', '2017-09-13 11:15:36', '2017-09-13 11:15:36'),
(13, 14, 2, 3, 2, '10.00', '0.00', '2017-09-13 11:15:19', '2017-09-13 11:15:36', '2017-09-13 11:15:36'),
(14, 14, 3, 2, 2, '5.00', '0.00', '2017-09-13 11:15:19', '2017-09-13 11:15:36', '2017-09-13 11:15:36'),
(15, 14, 5, NULL, 1, '500.00', '500.00', '2017-09-13 11:15:19', '2017-09-13 11:15:36', '2017-09-13 11:15:36'),
(16, 14, 1, NULL, 1, '15000.00', '15000.00', '2017-09-13 11:15:36', '2017-09-13 11:15:51', '2017-09-13 11:15:51'),
(17, 14, 2, 2, 2, '10.00', '0.00', '2017-09-13 11:15:36', '2017-09-13 11:15:51', '2017-09-13 11:15:51'),
(18, 14, 3, 2, 2, '5.00', '0.00', '2017-09-13 11:15:36', '2017-09-13 11:15:51', '2017-09-13 11:15:51'),
(19, 14, 5, NULL, 1, '500.00', '500.00', '2017-09-13 11:15:36', '2017-09-13 11:15:51', '2017-09-13 11:15:51'),
(20, 14, 1, NULL, 1, '15000.00', '15000.00', '2017-09-13 11:15:51', '2017-09-13 11:18:23', '2017-09-13 11:18:23'),
(21, 14, 2, 1, 2, '10.00', '1500.00', '2017-09-13 11:15:51', '2017-09-13 11:18:23', '2017-09-13 11:18:23'),
(22, 14, 3, 2, 2, '5.00', '75.00', '2017-09-13 11:15:52', '2017-09-13 11:18:23', '2017-09-13 11:18:23'),
(23, 14, 5, NULL, 1, '500.00', '500.00', '2017-09-13 11:15:52', '2017-09-13 11:18:23', '2017-09-13 11:18:23'),
(24, 14, 1, NULL, 1, '15000.00', '15000.00', '2017-09-13 11:18:23', '2017-09-13 11:29:09', '2017-09-13 11:29:09'),
(25, 14, 2, 3, 2, '10.00', '75.00', '2017-09-13 11:18:23', '2017-09-13 11:29:09', '2017-09-13 11:29:09'),
(26, 14, 3, 1, 2, '5.00', '750.00', '2017-09-13 11:18:23', '2017-09-13 11:29:09', '2017-09-13 11:29:09'),
(27, 14, 5, NULL, 1, '500.00', '500.00', '2017-09-13 11:18:24', '2017-09-13 11:29:09', '2017-09-13 11:29:09'),
(28, 14, 1, NULL, 1, '15000.00', '15000.00', '2017-09-13 11:29:09', '2017-09-13 11:53:40', '2017-09-13 11:53:40'),
(29, 14, 2, 3, 2, '10.00', '75.00', '2017-09-13 11:29:09', '2017-09-13 11:53:40', '2017-09-13 11:53:40'),
(30, 14, 3, 1, 2, '5.00', '750.00', '2017-09-13 11:29:09', '2017-09-13 11:53:40', '2017-09-13 11:53:40'),
(31, 14, 5, NULL, 1, '500.00', '500.00', '2017-09-13 11:29:09', '2017-09-13 11:53:40', '2017-09-13 11:53:40'),
(32, 14, 1, NULL, 1, '15000.00', '15000.00', '2017-09-13 11:53:40', '2017-09-13 11:54:14', '2017-09-13 11:54:14'),
(33, 14, 2, 3, 2, '10.00', '75.00', '2017-09-13 11:53:40', '2017-09-13 11:54:14', '2017-09-13 11:54:14'),
(34, 14, 3, 1, 2, '5.00', '750.00', '2017-09-13 11:53:40', '2017-09-13 11:54:14', '2017-09-13 11:54:14'),
(35, 14, 5, NULL, 1, '500.00', '500.00', '2017-09-13 11:53:40', '2017-09-13 11:54:15', '2017-09-13 11:54:15'),
(36, 14, 4, 2, 2, '2.00', '0.00', '2017-09-13 11:53:40', '2017-09-13 11:54:15', '2017-09-13 11:54:15'),
(37, 14, 1, NULL, 1, '15000.00', '15000.00', '2017-09-13 11:54:15', '2017-09-13 11:55:46', '2017-09-13 11:55:46'),
(38, 14, 2, 3, 2, '10.00', '75.00', '2017-09-13 11:54:15', '2017-09-13 11:55:46', '2017-09-13 11:55:46'),
(39, 14, 3, 1, 2, '5.00', '750.00', '2017-09-13 11:54:15', '2017-09-13 11:55:46', '2017-09-13 11:55:46'),
(40, 14, 5, NULL, 1, '500.00', '500.00', '2017-09-13 11:54:15', '2017-09-13 11:55:46', '2017-09-13 11:55:46'),
(41, 14, 4, 1, 2, '2.00', '300.00', '2017-09-13 11:54:15', '2017-09-13 11:55:46', '2017-09-13 11:55:46'),
(42, 14, 1, NULL, 1, '15000.00', '15000.00', '2017-09-13 11:55:46', '2017-09-13 11:55:47', NULL),
(43, 14, 2, 3, 2, '10.00', '75.00', '2017-09-13 11:55:46', '2017-09-13 11:55:47', NULL),
(44, 14, 3, 1, 2, '5.00', '750.00', '2017-09-13 11:55:46', '2017-09-13 11:55:47', NULL),
(45, 14, 5, NULL, 1, '500.00', '500.00', '2017-09-13 11:55:46', '2017-09-13 11:55:47', NULL),
(46, 14, 4, 3, 2, '2.00', '15.00', '2017-09-13 11:55:46', '2017-09-13 11:55:47', NULL),
(47, 15, 1, NULL, 1, '50000.00', '50000.00', '2017-09-13 11:56:32', '2017-09-13 11:56:32', NULL),
(48, 15, 2, 1, 2, '40.00', '20000.00', '2017-09-13 11:56:32', '2017-09-13 11:56:32', NULL),
(49, 16, 1, NULL, 1, '97000.00', '97000.00', '2017-09-14 06:32:24', '2017-09-14 06:32:50', '2017-09-14 06:32:50'),
(50, 16, 2, 1, 2, '60.00', '58200.00', '2017-09-14 06:32:24', '2017-09-14 06:32:50', '2017-09-14 06:32:50'),
(51, 16, 1, NULL, 1, '9700.00', '9700.00', '2017-09-14 06:32:50', '2017-09-14 06:32:50', NULL),
(52, 16, 2, 1, 2, '60.00', '5820.00', '2017-09-14 06:32:50', '2017-09-14 06:32:50', NULL),
(53, 17, 1, NULL, 1, '1500.00', '1500.00', '2018-01-27 06:24:01', '2018-01-27 06:24:01', NULL),
(54, 17, 2, 1, 2, '10.00', '150.00', '2018-01-27 06:24:01', '2018-01-27 06:24:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salary_process`
--

CREATE TABLE `payroll_salary_process` (
  `id` int(10) UNSIGNED NOT NULL,
  `posting_rec_id` int(11) NOT NULL,
  `salary_date` date NOT NULL,
  `salary_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_salary_process`
--

INSERT INTO `payroll_salary_process` (`id`, `posting_rec_id`, `salary_date`, `salary_amount`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2017-10-01', '56472.71', 1, NULL, '2017-11-04 08:36:15', '2017-11-04 09:02:44', NULL),
(2, 13, '2017-10-01', '40544.00', 1, NULL, '2017-11-04 08:36:16', '2017-11-04 08:36:17', NULL),
(3, 19, '2017-10-01', '30903.67', 1, NULL, '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(4, 1, '2017-11-01', '75022.33', 1, NULL, '2017-11-04 09:19:36', '2017-11-04 09:19:37', NULL),
(5, 19, '2017-11-01', '29600.67', 1, NULL, '2017-11-20 08:48:14', '2017-11-20 08:48:14', NULL),
(6, 19, '2017-12-01', '26044.00', 1, NULL, '2017-12-14 07:30:57', '2017-12-14 07:33:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salary_process_details`
--

CREATE TABLE `payroll_salary_process_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `salary_process_id` int(10) UNSIGNED NOT NULL,
  `payroll_hrm_id` int(10) UNSIGNED NOT NULL,
  `pay_scale_id` int(10) UNSIGNED DEFAULT NULL,
  `allowance_id` int(10) UNSIGNED DEFAULT NULL,
  `deduction_id` int(10) UNSIGNED DEFAULT NULL,
  `process_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=allowance,2=deduction,3=pay scale',
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `basic_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_salary_process_details`
--

INSERT INTO `payroll_salary_process_details` (`id`, `salary_process_id`, `payroll_hrm_id`, `pay_scale_id`, `allowance_id`, `deduction_id`, `process_type`, `from_date`, `to_date`, `amount`, `basic_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 2, NULL, NULL, 3, '2017-10-15', '2017-10-31', '19467.74', '35500.00', '2017-11-04 08:36:15', '2017-11-04 09:11:38', NULL),
(2, 1, 2, NULL, NULL, 3, 2, '2017-11-04', '2017-11-10', '214.52', '0.00', '2017-11-04 08:36:15', '2017-11-04 08:47:47', '2017-11-04 08:47:47'),
(3, 1, 2, NULL, 15, NULL, 1, '2017-10-15', '2017-10-31', '7787.10', '0.00', '2017-11-04 08:36:15', '2017-11-04 09:11:38', NULL),
(4, 1, 2, NULL, 18, NULL, 1, '2017-10-15', '2017-10-31', '82.26', '0.00', '2017-11-04 08:36:15', '2017-11-04 09:11:38', NULL),
(5, 1, 2, NULL, 17, NULL, 1, '2017-10-15', '2017-10-31', '1428.00', '0.00', '2017-11-04 08:36:15', '2017-11-04 09:11:38', NULL),
(6, 1, 2, NULL, 16, NULL, 1, '2017-10-15', '2017-10-31', '822.58', '0.00', '2017-11-04 08:36:15', '2017-11-04 09:11:39', NULL),
(7, 1, 2, NULL, 24, NULL, 1, '2017-10-15', '2017-10-31', '4866.94', '0.00', '2017-11-04 08:36:15', '2017-11-04 09:11:39', NULL),
(8, 1, 2, NULL, 20, NULL, 1, '2017-10-15', '2017-10-31', '3893.55', '0.00', '2017-11-04 08:36:16', '2017-11-04 09:11:39', NULL),
(9, 1, 2, NULL, 19, NULL, 1, '2017-10-15', '2017-10-31', '268.71', '0.00', '2017-11-04 08:36:16', '2017-11-04 09:11:39', NULL),
(10, 1, 2, NULL, 22, NULL, 1, '2017-10-15', '2017-10-31', '2920.16', '0.00', '2017-11-04 08:36:16', '2017-11-04 09:11:39', NULL),
(11, 1, 4, 1, NULL, NULL, 3, '2017-10-01', '2017-10-14', '9935.48', '22000.00', '2017-11-04 08:36:16', '2017-11-04 09:11:39', NULL),
(12, 1, 4, NULL, NULL, 4, 2, '2017-10-01', '2017-10-14', '225.81', '0.00', '2017-11-04 08:36:16', '2017-11-04 09:11:39', NULL),
(13, 1, 4, NULL, NULL, 3, 2, '2017-10-01', '2017-10-14', '429.03', '0.00', '2017-11-04 08:36:16', '2017-11-04 09:11:39', NULL),
(14, 1, 4, NULL, 15, NULL, 1, '2017-10-01', '2017-10-14', '3974.19', '0.00', '2017-11-04 08:36:16', '2017-11-04 09:11:39', NULL),
(15, 1, 4, NULL, 17, NULL, 1, '2017-10-01', '2017-10-14', '1176.00', '0.00', '2017-11-04 08:36:16', '2017-11-04 09:11:39', NULL),
(16, 1, 4, NULL, 21, NULL, 1, '2017-10-01', '2017-10-14', '993.55', '0.00', '2017-11-04 08:36:16', '2017-11-04 09:11:39', NULL),
(17, 2, 1, 1, NULL, NULL, 3, '2017-10-01', '2017-10-31', '22000.00', '22000.00', '2017-11-04 08:36:16', '2017-11-04 08:36:16', NULL),
(18, 2, 1, NULL, NULL, 4, 2, '2017-10-01', '2017-10-31', '500.00', '0.00', '2017-11-04 08:36:16', '2017-11-04 08:36:16', NULL),
(19, 2, 1, NULL, NULL, 3, 2, '2017-10-01', '2017-10-31', '950.00', '0.00', '2017-11-04 08:36:16', '2017-11-04 08:36:16', NULL),
(20, 2, 1, NULL, 15, NULL, 1, '2017-10-01', '2017-10-31', '8800.00', '0.00', '2017-11-04 08:36:16', '2017-11-04 08:36:16', NULL),
(21, 2, 1, NULL, 17, NULL, 1, '2017-10-01', '2017-10-31', '2604.00', '0.00', '2017-11-04 08:36:16', '2017-11-04 08:36:16', NULL),
(22, 2, 1, NULL, 16, NULL, 1, '2017-10-01', '2017-10-31', '1500.00', '0.00', '2017-11-04 08:36:16', '2017-11-04 08:36:16', NULL),
(23, 2, 1, NULL, 23, NULL, 1, '2017-10-01', '2017-10-31', '1100.00', '0.00', '2017-11-04 08:36:16', '2017-11-04 08:36:16', NULL),
(24, 2, 1, NULL, 19, NULL, 1, '2017-10-01', '2017-10-31', '490.00', '0.00', '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(25, 2, 1, NULL, 24, NULL, 1, '2017-10-01', '2017-10-31', '5500.00', '0.00', '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(26, 3, 3, 5, NULL, NULL, 3, '2017-10-01', '2017-10-31', '16000.00', '16000.00', '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(27, 3, 3, NULL, NULL, 1, 2, '2017-10-01', '2017-10-31', '500.00', '0.00', '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(28, 3, 3, NULL, 15, NULL, 1, '2017-10-01', '2017-10-31', '6400.00', '0.00', '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(29, 3, 3, NULL, 18, NULL, 1, '2017-10-17', '2017-10-20', '19.35', '0.00', '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(30, 3, 3, NULL, 17, NULL, 1, '2017-10-01', '2017-10-31', '2604.00', '0.00', '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(31, 3, 3, NULL, 16, NULL, 1, '2017-10-10', '2017-10-15', '290.32', '0.00', '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(32, 3, 3, NULL, 19, NULL, 1, '2017-10-01', '2017-10-31', '490.00', '0.00', '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(33, 3, 3, NULL, 20, NULL, 1, '2017-10-01', '2017-10-31', '3200.00', '0.00', '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(34, 3, 3, NULL, 22, NULL, 1, '2017-10-01', '2017-10-31', '2400.00', '0.00', '2017-11-04 08:36:17', '2017-11-04 08:36:17', NULL),
(35, 1, 2, NULL, NULL, 4, 2, '2017-10-15', '2017-10-31', '274.19', '0.00', '2017-11-04 09:02:44', '2017-11-04 09:11:38', NULL),
(36, 4, 2, 2, NULL, NULL, 3, '2017-11-01', '2017-11-30', '35500.00', '35500.00', '2017-11-04 09:19:36', '2017-11-13 09:22:55', NULL),
(37, 4, 2, NULL, NULL, 4, 2, '2017-11-01', '2017-11-30', '500.00', '0.00', '2017-11-04 09:19:36', '2017-11-13 09:22:56', NULL),
(38, 4, 2, NULL, NULL, 3, 2, '2017-11-04', '2017-11-10', '221.67', '0.00', '2017-11-04 09:19:36', '2017-11-13 09:22:56', NULL),
(39, 4, 2, NULL, 15, NULL, 1, '2017-11-01', '2017-11-30', '14200.00', '0.00', '2017-11-04 09:19:36', '2017-11-13 09:22:56', NULL),
(40, 4, 2, NULL, 18, NULL, 1, '2017-11-01', '2017-11-30', '150.00', '0.00', '2017-11-04 09:19:36', '2017-11-13 09:22:56', NULL),
(41, 4, 2, NULL, 17, NULL, 1, '2017-11-01', '2017-11-30', '2604.00', '0.00', '2017-11-04 09:19:36', '2017-11-13 09:22:56', NULL),
(42, 4, 2, NULL, 16, NULL, 1, '2017-11-01', '2017-11-30', '1500.00', '0.00', '2017-11-04 09:19:36', '2017-11-13 09:22:56', NULL),
(43, 4, 2, NULL, 24, NULL, 1, '2017-11-01', '2017-11-30', '8875.00', '0.00', '2017-11-04 09:19:36', '2017-11-13 09:22:56', NULL),
(44, 4, 2, NULL, 20, NULL, 1, '2017-11-01', '2017-11-30', '7100.00', '0.00', '2017-11-04 09:19:36', '2017-11-13 09:22:56', NULL),
(45, 4, 2, NULL, 19, NULL, 1, '2017-11-01', '2017-11-30', '490.00', '0.00', '2017-11-04 09:19:36', '2017-11-13 09:22:56', NULL),
(46, 4, 2, NULL, 22, NULL, 1, '2017-11-01', '2017-11-30', '5325.00', '0.00', '2017-11-04 09:19:37', '2017-11-13 09:22:56', NULL),
(47, 5, 3, 5, NULL, NULL, 3, '2017-11-01', '2017-11-30', '16000.00', '16000.00', '2017-11-20 08:48:14', '2017-11-20 08:48:14', NULL),
(48, 5, 3, NULL, NULL, 2, 2, '2017-11-14', '2017-11-20', '1493.33', '0.00', '2017-11-20 08:48:14', '2017-11-20 08:48:14', NULL),
(49, 5, 3, NULL, 15, NULL, 1, '2017-11-01', '2017-11-30', '6400.00', '0.00', '2017-11-20 08:48:14', '2017-11-20 08:48:14', NULL),
(50, 5, 3, NULL, 17, NULL, 1, '2017-11-01', '2017-11-30', '2604.00', '0.00', '2017-11-20 08:48:14', '2017-11-20 08:48:14', NULL),
(51, 5, 3, NULL, 22, NULL, 1, '2017-11-01', '2017-11-30', '2400.00', '0.00', '2017-11-20 08:48:14', '2017-11-20 08:48:14', NULL),
(52, 5, 3, NULL, 19, NULL, 1, '2017-11-01', '2017-11-30', '490.00', '0.00', '2017-11-20 08:48:14', '2017-11-20 08:48:14', NULL),
(53, 5, 3, NULL, 20, NULL, 1, '2017-11-01', '2017-11-30', '3200.00', '0.00', '2017-11-20 08:48:14', '2017-11-20 08:48:14', NULL),
(54, 6, 3, 5, NULL, NULL, 3, '2017-12-01', '2017-12-31', '16000.00', '16000.00', '2017-12-14 07:30:58', '2017-12-14 07:33:34', NULL),
(55, 6, 3, NULL, 15, NULL, 1, '2017-12-01', '2017-12-31', '6400.00', '0.00', '2017-12-14 07:30:58', '2017-12-14 07:33:34', NULL),
(56, 6, 3, NULL, 17, NULL, 1, '2017-12-01', '2017-12-31', '2604.00', '0.00', '2017-12-14 07:30:58', '2017-12-14 07:33:34', NULL),
(57, 6, 3, NULL, 22, NULL, 1, '2017-12-01', '2017-12-31', '2400.00', '0.00', '2017-12-14 07:30:58', '2017-12-14 07:33:34', NULL),
(58, 6, 3, NULL, 19, NULL, 1, '2017-12-01', '2017-12-31', '490.00', '0.00', '2017-12-14 07:30:58', '2017-12-14 07:33:34', NULL),
(59, 6, 3, NULL, 20, NULL, 1, '2017-12-01', '2017-12-31', '3200.00', '0.00', '2017-12-14 07:30:58', '2017-12-14 07:33:34', NULL),
(60, 6, 3, NULL, NULL, 6, 2, '2017-12-01', '2017-12-31', '50.00', '0.00', '2017-12-14 07:33:34', '2017-12-14 07:33:34', NULL),
(61, 6, 3, NULL, NULL, 7, 2, '2017-12-01', '2017-12-31', '5000.00', '0.00', '2017-12-14 07:33:34', '2017-12-14 07:33:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_sub_heads`
--

CREATE TABLE `payroll_sub_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payroll_head_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `sub_head_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_sub_heads`
--

INSERT INTO `payroll_sub_heads` (`id`, `deleted_at`, `created_at`, `updated_at`, `payroll_head_id`, `sub_head_name`) VALUES
(1, NULL, '2017-11-30 07:41:12', '2017-11-30 07:41:12', 22, 'র‍্যাব ভাতা'),
(2, NULL, '2017-11-30 07:41:37', '2017-11-30 07:41:37', 22, 'সুআচরণ ভাতা'),
(3, NULL, '2017-11-30 07:41:48', '2017-11-30 07:42:38', 22, 'দক্ষতা ভাতা'),
(4, NULL, '2017-11-30 07:42:00', '2017-11-30 07:42:27', 22, 'প্রতিরক্ষা ভাতা'),
(5, NULL, '2017-11-30 07:42:16', '2017-11-30 07:42:16', 22, 'ব্যাটম্যান ভাতা'),
(6, NULL, '2017-11-30 07:43:07', '2017-11-30 07:43:07', 22, 'ক্ষৌর ও ধৌত ভাতা '),
(7, '2017-12-13 06:47:06', '2017-12-13 06:35:53', '2017-12-13 06:47:06', 1, 'rtt'),
(8, '2017-12-13 06:47:13', '2017-12-13 06:36:15', '2017-12-13 06:47:13', 22, 'ভাতা'),
(9, '2017-12-13 06:47:19', '2017-12-13 06:37:03', '2017-12-13 06:47:19', 22, 'ধৌত ভাতা '),
(10, NULL, '2017-12-13 06:46:52', '2017-12-13 06:46:52', 22, 'অন্যান্য ভাতা');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_types`
--

CREATE TABLE `payroll_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_types`
--

INSERT INTO `payroll_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, '2017-08-23 09:18:09', '2017-08-23 09:18:09', 'Earning'),
(2, NULL, '2017-08-23 09:18:36', '2017-08-23 09:18:36', 'Deduction'),
(3, NULL, '2017-08-23 09:22:31', '2017-08-23 09:22:31', 'Taxation'),
(4, NULL, '2017-08-23 09:22:51', '2017-08-23 09:22:51', 'Festival Earning');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2017-02-19 02:35:04', '2017-02-19 02:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_deductions`
--

CREATE TABLE `personal_deductions` (
  `id` int(10) UNSIGNED NOT NULL,
  `posting_rec_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personal_deductions`
--

INSERT INTO `personal_deductions` (`id`, `posting_rec_id`, `date`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 13, '2017-12-01', 1, NULL, '2017-12-19 09:43:08', '2017-12-23 08:37:36', '2017-12-23 08:37:36'),
(4, 13, '2017-11-01', 1, NULL, '2017-12-19 09:47:54', '2017-12-23 08:36:43', '2017-12-23 08:36:43'),
(5, 19, '2017-11-01', 1, 1, '2017-12-19 09:51:00', '2017-12-23 03:14:44', '2017-12-23 03:14:44'),
(6, 19, '2017-09-01', 1, 1, '2017-12-19 09:59:48', '2017-12-23 03:11:49', NULL),
(7, 13, '2017-06-01', 1, NULL, '2017-12-19 10:01:52', '2017-12-21 08:42:20', '2017-12-21 08:42:20'),
(8, 19, '2017-11-01', 1, 1, '2017-12-19 10:15:51', '2017-12-21 03:49:07', '2017-12-21 03:49:07'),
(9, 1, '2017-12-01', 1, 1, '2017-12-21 08:43:49', '2017-12-23 08:40:34', '2017-12-23 08:40:34'),
(10, 1, '2017-11-01', 1, NULL, '2017-12-21 09:23:27', '2017-12-21 09:23:27', NULL),
(11, 19, '2017-11-01', 1, NULL, '2017-12-21 09:24:53', '2017-12-21 09:24:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_deduction_details`
--

CREATE TABLE `personal_deduction_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `personal_deduction_id` int(10) UNSIGNED NOT NULL,
  `personal_deduction_type_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(10,2) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personal_deduction_details`
--

INSERT INTO `personal_deduction_details` (`id`, `personal_deduction_id`, `personal_deduction_type_id`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 2, '1.00', '2017-12-19 09:59:49', '1970-01-01 00:00:01', NULL),
(2, 7, 1, '1.00', '2017-12-19 10:01:52', '2017-12-21 08:42:20', '2017-12-21 08:42:20'),
(3, 8, 1, '4.00', '2017-12-19 10:15:51', '2017-12-19 10:16:19', '2017-12-19 10:16:19'),
(4, 8, 2, '159.00', '2017-12-19 10:16:19', '2017-12-21 03:49:07', '2017-12-21 03:49:07'),
(5, 8, 1, '22.00', '2017-12-20 09:10:48', '2017-12-21 03:49:07', '2017-12-21 03:49:07'),
(6, 9, 1, '555.00', '2017-12-21 08:43:49', '2017-12-23 08:40:34', '2017-12-23 08:40:34'),
(7, 9, 2, '300.00', '2017-12-21 08:43:49', '2017-12-23 08:40:34', '2017-12-23 08:40:34'),
(8, 10, 1, '300.00', '2017-12-21 09:23:27', '2017-12-21 09:23:27', NULL),
(9, 10, 2, '200.00', '2017-12-21 09:23:27', '2017-12-21 09:23:27', NULL),
(10, 11, 1, '6000.00', '2017-12-21 09:24:53', '2017-12-23 03:15:28', NULL),
(11, 11, 2, '11111.00', '2017-12-21 09:24:53', '2017-12-23 03:15:28', NULL),
(12, 5, 1, '3523.00', '2017-12-23 02:59:30', '2017-12-23 03:14:43', '2017-12-23 03:14:43'),
(13, 5, 2, '5678.00', '2017-12-23 03:00:29', '2017-12-23 03:14:43', '2017-12-23 03:14:43'),
(14, 6, 1, '50.00', '2017-12-23 03:11:50', '2017-12-23 03:11:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_deduction_types`
--

CREATE TABLE `personal_deduction_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personal_deduction_types`
--

INSERT INTO `personal_deduction_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, '2017-12-18 09:02:09', '2017-12-18 09:02:09', 'Printer Bill'),
(2, NULL, '2017-12-18 09:08:27', '2017-12-18 09:08:27', 'Router Bill');

-- --------------------------------------------------------

--
-- Table structure for table `posting_applications`
--

CREATE TABLE `posting_applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `request_battalion` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `application_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posting_applications`
--

INSERT INTO `posting_applications` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `request_battalion`, `reason`, `application_date`) VALUES
(1, NULL, '2017-05-25 06:02:03', '2017-05-25 06:02:03', 2, '["1"]', 'Reason', '2017-05-25'),
(2, '2017-07-22 10:45:22', '2017-07-22 10:41:22', '2017-07-22 10:45:22', 10151, '["2"]', 'reason', '2017-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `posting_notes`
--

CREATE TABLE `posting_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_posting_note_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'draft posting not id',
  `force_order_no` int(10) NOT NULL COMMENT 'every year start from 1',
  `date` datetime NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `reference_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=active,1=in active',
  `created_by` int(10) NOT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_officer` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=non officer,1=officer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posting_notes`
--

INSERT INTO `posting_notes` (`id`, `parent_posting_note_id`, `force_order_no`, `date`, `note`, `reference_no`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `is_officer`) VALUES
(1, NULL, 1, '2017-05-27 16:16:05', NULL, '', 1, 1, NULL, '2017-05-27 10:16:05', '2017-05-27 10:16:34', NULL, 0),
(2, 1, 1, '2017-05-27 16:16:34', NULL, '', 0, 1, NULL, '2017-05-27 10:16:34', '2017-05-27 10:16:34', NULL, 0),
(3, NULL, 3, '2017-06-08 09:30:31', NULL, '', 1, 1, NULL, '2017-06-08 03:30:31', '2017-06-08 03:31:07', NULL, 0),
(4, 3, 3, '2017-06-08 09:31:07', NULL, '', 1, 1, NULL, '2017-06-08 03:31:07', '2017-06-08 03:31:21', NULL, 0),
(5, NULL, 5, '2017-06-10 08:33:48', NULL, '', 1, 1, NULL, '2017-06-10 02:33:28', '2017-06-10 02:42:58', NULL, 0),
(6, NULL, 6, '2017-06-09 08:44:46', NULL, '', 1, 1, NULL, '2017-06-10 02:44:46', '2017-06-10 02:45:10', NULL, 0),
(7, 6, 6, '2017-06-10 08:45:10', NULL, '', 1, 1, NULL, '2017-06-10 02:45:10', '2017-06-10 02:45:26', NULL, 0),
(8, NULL, 8, '2017-06-08 08:56:25', NULL, '', 1, 1, NULL, '2017-06-10 02:56:25', '2017-06-10 02:56:42', NULL, 0),
(9, 8, 8, '2017-06-10 08:56:42', NULL, '', 1, 1, NULL, '2017-06-10 02:56:42', '2017-06-10 02:56:53', NULL, 0),
(10, NULL, 10, '2017-06-10 09:31:15', NULL, '', 1, 1, NULL, '2017-06-10 03:30:39', '2017-06-10 03:31:33', NULL, 0),
(11, 10, 10, '2017-06-10 09:31:33', NULL, '', 1, 1, NULL, '2017-06-10 03:31:33', '2017-06-10 03:31:45', NULL, 0),
(12, NULL, 12, '2017-06-09 16:05:50', NULL, '', 1, 1, NULL, '2017-06-10 10:05:50', '2017-06-10 10:06:14', NULL, 0),
(13, 12, 12, '2017-06-10 16:06:15', NULL, '', 1, 1, NULL, '2017-06-10 10:06:15', '2017-06-10 10:06:21', NULL, 0),
(14, NULL, 14, '2017-06-10 16:26:45', NULL, '', 1, 1, NULL, '2017-06-10 10:26:45', '2017-06-10 10:39:30', NULL, 0),
(15, NULL, 15, '2017-06-09 16:43:15', NULL, '', 1, 1, NULL, '2017-06-10 10:40:17', '2017-06-10 10:43:53', NULL, 0),
(16, 15, 15, '2017-06-10 16:43:53', NULL, '', 1, 1, NULL, '2017-06-10 10:43:53', '2017-06-10 10:44:10', NULL, 0),
(17, NULL, 17, '2017-06-11 10:55:38', NULL, '', 1, 1, NULL, '2017-06-12 04:16:12', '2017-06-12 05:23:07', NULL, 0),
(18, 17, 17, '2017-06-11 12:37:48', NULL, '', 0, 1, NULL, '2017-06-12 05:23:07', '2017-06-12 06:37:48', NULL, 0),
(19, NULL, 19, '2017-06-12 12:43:27', NULL, '', 1, 1, NULL, '2017-06-12 06:02:26', '2017-06-12 06:45:10', NULL, 0),
(20, 19, 19, '2017-06-12 12:45:48', NULL, '', 0, 1, NULL, '2017-06-12 06:45:10', '2017-06-12 06:45:48', NULL, 0),
(21, NULL, 21, '2017-06-14 10:56:42', NULL, '', 1, 1, NULL, '2017-06-14 04:56:42', '2017-06-14 04:57:14', NULL, 0),
(22, 21, 21, '2017-06-14 10:57:14', NULL, '', 1, 1, NULL, '2017-06-14 04:57:14', '2017-06-14 04:57:23', NULL, 0),
(23, NULL, 23, '2017-06-14 11:01:49', NULL, '', 1, 1, NULL, '2017-06-14 05:01:49', '2017-06-14 05:02:06', NULL, 0),
(24, 23, 23, '2017-06-14 11:02:06', NULL, '', 1, 1, NULL, '2017-06-14 05:02:06', '2017-06-14 05:02:12', NULL, 0),
(25, NULL, 25, '2017-06-14 11:26:17', NULL, '', 1, 1, NULL, '2017-06-14 05:26:17', '2017-06-14 05:26:30', NULL, 0),
(26, 25, 25, '2017-06-14 11:26:30', NULL, '', 1, 1, NULL, '2017-06-14 05:26:30', '2017-06-14 05:26:40', NULL, 0),
(27, NULL, 27, '2017-07-15 09:46:52', NULL, '', 0, 1, NULL, '2017-07-15 03:46:52', '2017-07-15 03:46:52', NULL, 0),
(28, NULL, 28, '2017-07-15 11:22:14', NULL, '', 0, 1, NULL, '2017-07-15 05:22:14', '2017-07-15 05:22:14', NULL, 0),
(29, NULL, 29, '2017-07-15 12:54:28', NULL, '', 0, 1, NULL, '2017-07-15 05:24:09', '2017-07-15 06:54:37', '2017-07-15 06:54:37', 1),
(30, NULL, 30, '2017-07-02 12:03:42', NULL, '', 1, 1, NULL, '2017-07-15 06:03:42', '2017-07-15 06:04:34', NULL, 0),
(31, 30, 30, '2017-07-02 12:04:34', NULL, '', 1, 1, NULL, '2017-07-15 06:04:34', '2017-07-15 06:10:29', NULL, 0),
(32, NULL, 31, '2017-07-15 12:55:03', NULL, '', 1, 1, NULL, '2017-07-15 06:55:03', '2017-07-15 08:00:35', NULL, 1),
(33, 32, 31, '2017-07-15 14:00:35', NULL, '', 0, 1, NULL, '2017-07-15 08:00:35', '2017-07-15 08:00:35', NULL, 0),
(34, NULL, 33, '2017-07-15 14:03:28', NULL, '', 1, 1, NULL, '2017-07-15 08:03:28', '2017-07-15 08:03:47', NULL, 1),
(35, 34, 33, '2017-07-15 14:03:47', NULL, '', 1, 1, NULL, '2017-07-15 08:03:47', '2017-08-01 09:36:43', NULL, 0),
(36, NULL, 35, '2017-07-15 14:06:51', NULL, '', 1, 1, NULL, '2017-07-15 08:06:51', '2017-07-15 08:07:03', NULL, 1),
(37, 36, 35, '2017-07-15 14:07:03', NULL, '', 1, 1, NULL, '2017-07-15 08:07:03', '2017-08-01 08:28:26', NULL, 0),
(38, NULL, 37, '2017-07-15 14:09:03', NULL, '', 1, 1, NULL, '2017-07-15 08:09:03', '2017-07-15 08:09:15', NULL, 1),
(39, 38, 37, '2017-07-15 14:12:14', NULL, '', 1, 1, NULL, '2017-07-15 08:09:15', '2017-07-15 08:15:47', NULL, 1),
(40, NULL, 39, '2017-07-15 12:49:02', NULL, '', 0, 0, NULL, '2017-07-15 08:29:33', '2018-01-09 06:49:02', NULL, 1),
(41, NULL, 40, '2017-07-15 15:11:59', NULL, '', 1, 1, NULL, '2017-07-15 09:11:50', '2017-07-15 09:12:45', NULL, 1),
(42, 41, 40, '2017-07-15 15:12:17', NULL, '', 0, 1, NULL, '2017-07-15 09:12:17', '2017-07-15 09:12:30', '2017-07-15 09:12:30', 1),
(43, 41, 40, '2017-07-15 15:12:46', NULL, '', 1, 1, NULL, '2017-07-15 09:12:46', '2017-07-15 09:12:56', NULL, 1),
(44, NULL, 42, '2017-07-15 16:46:58', NULL, '', 1, 1, NULL, '2017-07-15 10:46:58', '2017-07-15 10:47:14', NULL, 1),
(45, 44, 42, '2017-07-15 16:47:14', NULL, '', 1, 1, NULL, '2017-07-15 10:47:14', '2017-07-15 10:47:19', NULL, 1),
(46, NULL, 44, '2017-07-15 17:20:52', NULL, '', 1, 1, NULL, '2017-07-15 11:20:52', '2017-07-15 11:21:10', NULL, 0),
(47, 46, 44, '2017-07-15 17:21:11', NULL, '', 1, 1, NULL, '2017-07-15 11:21:11', '2017-07-15 11:21:18', NULL, 0),
(48, NULL, 46, '2017-07-15 17:31:02', NULL, '', 1, 1, NULL, '2017-07-15 11:31:02', '2017-07-15 11:31:18', NULL, 0),
(49, 48, 46, '2017-07-15 17:31:18', NULL, '', 1, 1, NULL, '2017-07-15 11:31:18', '2017-07-15 11:31:24', NULL, 0),
(50, NULL, 48, '2017-08-01 13:25:05', 'asdfasdf\r\nasdfasdf\r\n', '', 1, 1, NULL, '2017-08-01 07:24:54', '2017-08-06 10:51:01', NULL, 0),
(51, NULL, 49, '2017-08-01 15:42:51', 'sadfasf\r\nasdfasdf', '', 1, 1, NULL, '2017-08-01 09:42:51', '2017-08-01 09:43:27', NULL, 0),
(52, 51, 49, '2017-08-01 15:43:27', NULL, '', 1, 1, NULL, '2017-08-01 09:43:27', '2017-08-01 09:44:03', NULL, 0),
(53, NULL, 51, '2017-08-02 12:53:00', 'safasfsaf\r\nasff', '', 1, 1, NULL, '2017-08-02 06:53:00', '2017-08-02 06:53:16', NULL, 0),
(54, 53, 51, '2017-08-02 12:53:16', NULL, '', 1, 1, NULL, '2017-08-02 06:53:16', '2017-08-02 06:53:41', NULL, 0),
(55, NULL, 500, '2017-08-05 10:26:50', 'sdaff\r\nfdfafs', '', 1, 1, NULL, '2017-08-05 04:26:39', '2017-08-06 10:49:34', NULL, 0),
(56, NULL, 501, '2017-08-05 10:27:15', NULL, '', 1, 1, NULL, '2017-08-05 04:27:15', '2017-08-05 05:21:17', NULL, 0),
(57, 56, 501, '2017-08-05 16:47:53', 'আমি মুন্না', '', 0, 0, NULL, '2017-08-05 05:21:17', '2017-08-06 10:47:53', NULL, 0),
(58, 50, 48, '2017-08-06 16:51:01', 'asdfasdf\r\nasdfasdf\r\n', '', 0, 1, NULL, '2017-08-06 10:51:01', '2017-08-06 10:51:01', NULL, 0),
(59, NULL, 502, '2017-08-07 09:27:49', 'asdf', '', 1, 1, NULL, '2017-08-07 03:27:49', '2017-08-07 03:28:02', NULL, 0),
(60, 59, 502, '2017-08-07 09:28:02', 'asdf', '', 1, 1, NULL, '2017-08-07 03:28:02', '2017-08-07 03:28:18', NULL, 0),
(61, NULL, 503, '2017-08-07 12:54:04', 'আমি ভাল আছি।\r\n ওকে।', '', 0, 0, NULL, '2017-08-07 05:35:49', '2018-01-09 06:54:04', NULL, 0),
(62, NULL, 504, '2017-08-07 12:31:55', 'আমি\r\nমুন্না', 'র‍্যাব ফোর্সেস সদর দপ্তর/প্রশাসন/পার্সোঃ/1', 1, 1, NULL, '2017-08-07 06:29:11', '2017-08-07 06:55:04', NULL, 0),
(63, 62, 504, '2017-08-07 12:55:04', 'আমি\r\nমুন্না', '', 0, 1, NULL, '2017-08-07 06:55:04', '2017-08-07 06:55:04', NULL, 0),
(64, NULL, 505, '2017-08-07 12:59:22', 'আমি ভাল আছি। ওকে।', 'র‍্যাব ফোর্সেস সদর দপ্তর/প্রশাসন/পার্সোঃ/2', 1, 1, NULL, '2017-08-07 06:58:46', '2017-08-07 07:00:51', NULL, 0),
(65, 64, 505, '2017-08-07 13:00:51', 'আমি ভাল আছি। ওকে।ক', 'র‍্যাব ফোর্সেস সদর দপ্তর/প্রশাসন/পার্সোঃ/2', 0, 1, NULL, '2017-08-07 07:00:51', '2017-08-07 07:00:51', NULL, 0),
(66, NULL, 506, '2017-08-07 13:07:00', 'asdfafa\r\nsadf', 'র‍্যাব ফোর্সেস সদর দপ্তর/প্রশাসন/পার্সোঃ/5', 1, 1, NULL, '2017-08-07 07:07:00', '2017-08-07 07:07:29', NULL, 0),
(67, 66, 506, '2017-08-07 13:07:49', 'asdfafa\r\nsadf', 'র‍্যাব ফোর্সেস সদর দপ্তর/প্রশাসন/পার্সোঃ/5', 0, 1, NULL, '2017-08-07 07:07:29', '2017-08-07 07:07:49', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posting_note_details`
--

CREATE TABLE `posting_note_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `posting_note_id` int(10) UNSIGNED DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `battalion_id` int(10) UNSIGNED DEFAULT NULL,
  `wing_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_branch_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_section_id` int(10) UNSIGNED DEFAULT NULL,
  `remarks` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=active,1=cancel'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posting_note_details`
--

INSERT INTO `posting_note_details` (`id`, `posting_note_id`, `emp_id`, `battalion_id`, `wing_id`, `branch_id`, `sub_branch_id`, `section_id`, `sub_section_id`, `remarks`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 1, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-27 10:16:05', '2017-05-27 10:16:05', NULL, 0),
(2, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-27 10:16:34', '2017-05-27 10:16:34', NULL, 0),
(3, 3, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-08 03:30:31', '2017-06-08 03:30:31', NULL, 0),
(4, 4, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-08 03:31:07', '2017-06-08 03:31:07', NULL, 0),
(5, 5, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 02:33:28', '2017-06-10 02:33:48', '2017-06-10 02:33:48', 0),
(6, 5, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 02:33:48', '2017-06-10 02:33:48', NULL, 0),
(7, 6, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 02:44:46', '2017-06-10 02:44:46', NULL, 0),
(8, 7, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 02:45:10', '2017-06-10 02:45:10', NULL, 0),
(9, 8, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 02:56:26', '2017-06-10 02:56:26', NULL, 0),
(10, 9, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 02:56:42', '2017-06-10 02:56:42', NULL, 0),
(11, 10, 4, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 03:30:39', '2017-06-10 03:31:15', '2017-06-10 03:31:15', 0),
(12, 10, 4, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 03:31:15', '2017-06-10 03:31:15', NULL, 0),
(13, 10, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 03:31:15', '2017-06-10 03:31:15', NULL, 0),
(14, 11, 4, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 03:31:33', '2017-06-10 03:31:33', NULL, 0),
(15, 11, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 03:31:33', '2017-06-10 03:31:33', NULL, 0),
(16, 12, 10134, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 10:05:50', '2017-06-10 10:05:50', NULL, 0),
(17, 13, 10134, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 10:06:15', '2017-06-10 10:06:15', NULL, 0),
(18, 14, 10133, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 10:26:45', '2017-06-10 10:26:45', NULL, 0),
(19, 14, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 10:26:45', '2017-06-10 10:26:45', NULL, 0),
(20, 15, 10133, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 10:40:17', '2017-06-10 10:43:15', '2017-06-10 10:43:15', 0),
(21, 15, 42, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 10:40:17', '2017-06-10 10:43:15', '2017-06-10 10:43:15', 0),
(22, 15, 10133, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 10:43:15', '2017-06-10 10:43:15', NULL, 0),
(23, 15, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 10:43:15', '2017-06-10 10:43:15', NULL, 0),
(24, 16, 10133, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 10:43:53', '2017-06-10 10:43:53', NULL, 0),
(25, 16, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 10:43:53', '2017-06-10 10:43:53', NULL, 0),
(26, 17, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 04:16:12', '2017-06-12 04:16:34', '2017-06-12 04:16:34', 0),
(27, 17, 10133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 04:16:35', '2017-06-12 04:18:41', '2017-06-12 04:18:41', 0),
(28, 17, 10132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 04:18:41', '2017-06-12 04:20:38', '2017-06-12 04:20:38', 0),
(29, 17, 10132, NULL, NULL, NULL, NULL, NULL, NULL, 'recomended', '2017-06-12 04:20:39', '2017-06-12 04:55:38', '2017-06-12 04:55:38', 0),
(30, 17, 10132, NULL, NULL, NULL, NULL, NULL, NULL, 'recomended', '2017-06-12 04:55:38', '2017-06-12 04:55:38', NULL, 0),
(31, 17, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'ok', '2017-06-12 04:55:38', '2017-06-12 04:55:38', NULL, 0),
(32, 18, 10132, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 05:23:07', '2017-06-12 05:24:05', '2017-06-12 05:24:05', 0),
(33, 18, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 05:23:07', '2017-06-12 05:24:05', '2017-06-12 05:24:05', 0),
(34, 18, 10132, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-06-12 05:24:05', '2017-06-12 05:58:24', '2017-06-12 05:58:24', 0),
(35, 18, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 05:24:05', '2017-06-12 05:58:24', '2017-06-12 05:58:24', 0),
(36, 18, 10132, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-06-12 05:58:24', '2017-06-12 06:00:40', '2017-06-12 06:00:40', 0),
(37, 18, 3, 1, 10, NULL, NULL, NULL, NULL, NULL, '2017-06-12 05:58:25', '2017-06-12 06:00:40', '2017-06-12 06:00:40', 0),
(38, 18, 10132, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:00:40', '2017-06-12 06:37:48', '2017-06-12 06:37:48', 0),
(39, 18, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:00:40', '2017-06-12 06:37:48', '2017-06-12 06:37:48', 0),
(40, 19, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:02:26', '2017-06-12 06:42:27', '2017-06-12 06:42:27', 0),
(41, 19, 42, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:02:27', '2017-06-12 06:42:27', '2017-06-12 06:42:27', 0),
(42, 18, 10132, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:37:48', '2017-06-12 06:37:48', NULL, 0),
(43, 18, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:37:48', '2017-06-12 06:37:48', NULL, 0),
(44, 19, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:42:27', '2017-06-12 06:43:26', '2017-06-12 06:43:26', 0),
(45, 19, 42, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:42:28', '2017-06-12 06:43:26', '2017-06-12 06:43:26', 0),
(46, 19, 10133, 1, 2, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:42:28', '2017-06-12 06:43:27', '2017-06-12 06:43:27', 0),
(47, 19, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:43:27', '2017-06-12 06:43:27', NULL, 0),
(48, 19, 10132, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:43:27', '2017-06-12 06:43:27', NULL, 0),
(49, 19, 10133, 1, 2, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:43:27', '2017-06-12 06:43:27', NULL, 0),
(50, 20, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:45:10', '2017-06-12 06:45:33', '2017-06-12 06:45:33', 0),
(51, 20, 10132, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:45:11', '2017-06-12 06:45:33', '2017-06-12 06:45:33', 0),
(52, 20, 10133, 1, 2, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:45:11', '2017-06-12 06:45:33', '2017-06-12 06:45:33', 0),
(53, 20, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:45:33', '2017-06-12 06:45:48', '2017-06-12 06:45:48', 0),
(54, 20, 10132, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:45:33', '2017-06-12 06:45:48', '2017-06-12 06:45:48', 0),
(55, 20, 10133, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:45:33', '2017-06-12 06:45:48', '2017-06-12 06:45:48', 0),
(56, 20, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:45:48', '2017-06-12 06:45:48', NULL, 0),
(57, 20, 10132, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:45:48', '2017-06-12 06:45:48', NULL, 0),
(58, 20, 10133, 1, 2, NULL, NULL, NULL, NULL, NULL, '2017-06-12 06:45:48', '2017-06-12 06:45:48', NULL, 0),
(59, 21, 10143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-14 04:56:42', '2017-06-14 04:56:42', NULL, 0),
(60, 22, 10143, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-14 04:57:14', '2017-06-14 04:57:14', NULL, 0),
(61, 23, 10152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-14 05:01:49', '2017-06-14 05:01:49', NULL, 0),
(62, 24, 10152, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-14 05:02:06', '2017-06-14 05:02:06', NULL, 0),
(63, 25, 10151, 1, 4, NULL, NULL, NULL, NULL, NULL, '2017-06-14 05:26:17', '2017-06-14 05:26:17', NULL, 0),
(64, 26, 10151, 1, 4, NULL, NULL, NULL, NULL, NULL, '2017-06-14 05:26:30', '2017-06-14 05:26:30', NULL, 0),
(65, 27, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 03:46:52', '2017-07-15 03:46:52', NULL, 0),
(66, 28, 10153, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 05:22:14', '2017-07-15 05:22:14', NULL, 0),
(67, 29, 10153, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 05:24:09', '2017-07-15 05:25:38', '2017-07-15 05:25:38', 0),
(68, 29, 10153, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 05:25:38', '2017-07-15 05:25:49', '2017-07-15 05:25:49', 0),
(69, 29, 10153, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 05:25:49', '2017-07-15 05:35:53', '2017-07-15 05:35:53', 0),
(70, 29, 10153, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 05:35:53', '2017-07-15 06:54:28', '2017-07-15 06:54:28', 0),
(71, 30, 10154, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 06:03:43', '2017-07-15 06:03:43', NULL, 0),
(72, 31, 10154, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 06:04:34', '2017-07-15 06:04:34', NULL, 0),
(73, 29, 10153, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 06:54:28', '2017-07-15 06:54:37', '2017-07-15 06:54:37', 0),
(74, 32, 10153, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 06:55:03', '2017-07-15 06:55:03', NULL, 0),
(75, 33, 10153, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 08:00:35', '2017-07-15 08:00:35', NULL, 0),
(76, 34, 10153, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 08:03:28', '2017-07-15 08:03:28', NULL, 0),
(77, 35, 10153, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 08:03:47', '2017-08-01 09:37:34', NULL, 1),
(78, 36, 10153, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 08:06:52', '2017-07-15 08:06:52', NULL, 0),
(79, 37, 10153, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 08:07:03', '2017-08-01 09:17:28', NULL, 0),
(80, 38, 10153, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 08:09:03', '2017-07-15 08:09:03', NULL, 0),
(81, 39, 10153, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 08:09:15', '2017-07-15 08:10:01', '2017-07-15 08:10:01', 0),
(82, 39, 10153, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 08:10:02', '2017-07-15 08:10:19', '2017-07-15 08:10:19', 0),
(83, 39, 10153, 1, 1, 1, 2, 1, 1, NULL, '2017-07-15 08:10:19', '2017-07-15 08:11:33', '2017-07-15 08:11:33', 0),
(84, 39, 10153, 2, NULL, NULL, 2, 1, 1, NULL, '2017-07-15 08:11:33', '2017-07-15 08:12:14', '2017-07-15 08:12:14', 0),
(85, 39, 10153, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 08:12:14', '2017-07-15 08:12:14', NULL, 0),
(86, 40, 10153, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 08:29:33', '2018-01-09 06:49:02', '2018-01-09 06:49:01', 0),
(87, 41, 10153, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 09:11:50', '2017-07-15 09:11:59', '2017-07-15 09:11:59', 0),
(88, 41, 10153, 15, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 09:11:59', '2017-07-15 09:11:59', NULL, 0),
(89, 42, 10153, 15, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 09:12:17', '2017-07-15 09:12:30', '2017-07-15 09:12:30', 0),
(90, 43, 10153, 15, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 09:12:46', '2017-07-15 09:12:46', NULL, 0),
(91, 44, 10143, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-07-15 10:46:58', '2017-07-15 10:46:58', NULL, 0),
(92, 45, 10143, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-07-15 10:47:15', '2017-07-15 10:47:15', NULL, 0),
(93, 46, 10132, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 11:20:52', '2017-07-15 11:20:52', NULL, 0),
(94, 47, 10132, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 11:21:11', '2017-07-15 11:21:11', NULL, 0),
(95, 48, 10152, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 11:31:02', '2017-07-15 11:31:02', NULL, 0),
(96, 49, 10152, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-15 11:31:18', '2017-08-01 08:26:17', NULL, 0),
(97, 50, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-01 07:24:54', '2017-08-01 07:25:05', '2017-08-01 07:25:05', 0),
(98, 50, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-01 07:25:05', '2017-08-01 07:25:05', NULL, 0),
(99, 51, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-01 09:42:51', '2017-08-01 09:42:51', NULL, 0),
(100, 51, 10132, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-01 09:42:51', '2017-08-01 09:42:51', NULL, 0),
(101, 52, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-01 09:43:27', '2017-08-02 06:50:54', NULL, 0),
(102, 52, 10132, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-01 09:43:27', '2017-08-01 09:44:49', NULL, 1),
(103, 53, 10132, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-02 06:53:00', '2017-08-02 06:53:00', NULL, 0),
(104, 53, 10133, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-02 06:53:00', '2017-08-02 06:53:00', NULL, 0),
(105, 54, 10132, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-02 06:53:16', '2017-08-02 07:12:56', NULL, 1),
(106, 54, 10133, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-02 06:53:16', '2017-08-02 07:12:56', NULL, 0),
(107, 55, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-08-05 04:26:39', '2017-08-05 04:26:49', '2017-08-05 04:26:49', 0),
(108, 55, 3, 1, 1, NULL, NULL, NULL, NULL, 'adgsdaf', '2017-08-05 04:26:50', '2017-08-05 04:26:50', NULL, 0),
(109, 56, 10132, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-05 04:27:15', '2017-08-05 04:27:15', NULL, 0),
(110, 57, 10132, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-05 05:21:17', '2017-08-06 10:45:12', '2017-08-06 10:45:12', 0),
(111, 57, 10132, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-06 10:45:12', '2017-08-06 10:47:53', '2017-08-06 10:47:53', 0),
(112, 57, 10132, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-06 10:47:53', '2017-08-06 10:47:53', NULL, 0),
(113, 58, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-06 10:51:01', '2017-08-06 10:51:01', NULL, 0),
(114, 59, 10158, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-07 03:27:49', '2017-08-07 03:27:49', NULL, 0),
(115, 60, 10158, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-07 03:28:02', '2017-08-07 03:28:02', NULL, 0),
(116, 61, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-07 05:35:49', '2017-08-07 05:45:31', '2017-08-07 05:45:31', 0),
(117, 61, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-07 05:45:31', '2018-01-09 06:49:37', '2018-01-09 06:49:37', 0),
(118, 62, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'asfsadf', '2017-08-07 06:29:11', '2017-08-07 06:31:55', '2017-08-07 06:31:55', 0),
(119, 62, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'asfsadf', '2017-08-07 06:31:55', '2017-08-07 06:31:55', NULL, 0),
(120, 63, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-07 06:55:04', '2017-08-07 06:55:04', NULL, 0),
(121, 64, 10132, NULL, NULL, NULL, NULL, NULL, NULL, 'আসদফাস্ফ', '2017-08-07 06:58:46', '2017-08-07 06:59:22', '2017-08-07 06:59:22', 0),
(122, 64, 10132, NULL, NULL, NULL, NULL, NULL, NULL, 'আসদফাস্ফ', '2017-08-07 06:59:22', '2017-08-07 06:59:22', NULL, 0),
(123, 64, 10152, NULL, NULL, NULL, NULL, NULL, NULL, 'দসাফসদাফ', '2017-08-07 06:59:22', '2017-08-07 06:59:22', NULL, 0),
(124, 65, 10132, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-07 07:00:52', '2017-08-07 07:00:52', NULL, 0),
(125, 65, 10152, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-07 07:00:52', '2017-08-07 07:00:52', NULL, 0),
(126, 66, 10133, NULL, NULL, NULL, NULL, NULL, NULL, 'sadfsaf', '2017-08-07 07:07:00', '2017-08-07 07:07:00', NULL, 0),
(127, 67, 10133, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-07 07:07:30', '2017-08-07 07:07:49', '2017-08-07 07:07:49', 0),
(128, 67, 10133, 1, 2, NULL, NULL, NULL, NULL, NULL, '2017-08-07 07:07:49', '2017-08-07 07:07:49', NULL, 0),
(129, 40, 10152, 2, NULL, NULL, NULL, NULL, NULL, 'munna ', '2018-01-09 06:49:02', '2018-01-09 06:49:02', NULL, 0),
(130, 61, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-09 06:49:37', '2018-01-09 06:54:04', '2018-01-09 06:54:04', 0),
(131, 61, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-09 06:54:04', '2018-01-09 06:54:04', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posting_record`
--

CREATE TABLE `posting_record` (
  `posting_rec_id` int(10) NOT NULL,
  `parent_posting_rec_id` int(10) DEFAULT NULL COMMENT 'prev posting record',
  `emp_id` int(10) NOT NULL,
  `battalion_id` int(10) UNSIGNED DEFAULT NULL,
  `wing_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_branch_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_section_id` int(10) UNSIGNED DEFAULT NULL,
  `posting_order_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `posting_order_date` datetime DEFAULT NULL,
  `possible_joining_date` datetime DEFAULT NULL,
  `post_joining_date` datetime DEFAULT NULL,
  `post_release_date` datetime DEFAULT NULL,
  `is_joined` tinyint(4) DEFAULT '0' COMMENT '1=join,0=not join,2=released,3=cancel',
  `posting_note_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'final posting note id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posting_record`
--

INSERT INTO `posting_record` (`posting_rec_id`, `parent_posting_rec_id`, `emp_id`, `battalion_id`, `wing_id`, `branch_id`, `sub_branch_id`, `section_id`, `sub_section_id`, `posting_order_no`, `posting_order_date`, `possible_joining_date`, `post_joining_date`, `post_release_date`, `is_joined`, `posting_note_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'po1255', '2017-05-21 17:19:23', '2017-05-21 17:19:23', '2017-05-21 17:20:09', NULL, 1, NULL, '2017-05-21 17:19:23', '2017-05-21 17:20:09', NULL),
(2, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, '3', '2017-06-08 09:31:07', '2017-06-15 09:31:07', '2018-06-02 13:40:28', NULL, 1, 4, '2017-06-08 09:31:21', '2018-06-02 13:40:28', NULL),
(3, 6, 4, 4, NULL, NULL, NULL, NULL, NULL, '6', '2017-06-10 08:45:10', '2017-06-17 08:45:10', '2018-06-02 13:41:48', NULL, 1, 7, '2017-06-10 08:45:26', '2018-06-02 13:41:48', NULL),
(4, NULL, 4, 5, NULL, NULL, NULL, NULL, NULL, '8', '2017-06-10 08:56:42', '2017-06-17 08:56:42', NULL, NULL, 0, 9, '2017-06-10 08:56:53', '2017-06-10 08:56:53', NULL),
(5, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, '9', '2017-06-10 09:11:39', '2017-06-10 09:11:39', NULL, NULL, 0, NULL, '2017-06-10 09:11:39', '2017-06-10 09:11:39', NULL),
(6, NULL, 4, 8, NULL, NULL, NULL, NULL, NULL, '10', '2017-06-10 09:31:33', '2017-06-17 09:31:33', '2017-06-10 11:31:34', '2017-07-22 15:03:02', 2, 11, '2017-06-10 09:31:45', '2018-06-02 13:41:48', NULL),
(7, NULL, 3, 4, NULL, NULL, NULL, NULL, NULL, '10', '2017-06-10 09:31:33', '2017-06-17 09:31:33', NULL, NULL, 0, 11, '2017-06-10 09:31:45', '2017-06-10 09:31:45', NULL),
(8, NULL, 10134, 3, NULL, NULL, NULL, NULL, NULL, '12', '2017-06-10 16:06:15', '2017-06-17 16:06:15', '2017-06-11 16:09:29', NULL, 1, 13, '2017-06-10 16:06:21', '2017-06-10 16:09:29', NULL),
(9, NULL, 10133, 4, NULL, NULL, NULL, NULL, NULL, '15', '2017-06-10 16:43:53', '2017-06-17 16:43:53', '2018-06-02 13:32:37', NULL, 1, 16, '2017-06-10 16:44:10', '2018-06-02 13:32:37', NULL),
(10, NULL, 3, 8, NULL, NULL, NULL, NULL, NULL, '15', '2017-06-10 16:43:53', '2017-06-17 16:43:53', NULL, NULL, 0, 16, '2017-06-10 16:44:10', '2017-07-04 15:25:43', '2017-07-04 15:25:43'),
(11, NULL, 10143, 2, NULL, NULL, NULL, NULL, NULL, '21', '2017-06-14 10:57:14', '2017-06-21 10:57:14', NULL, NULL, 0, 22, '2017-06-14 10:57:23', '2017-06-14 10:57:23', NULL),
(12, NULL, 10152, 2, NULL, NULL, NULL, NULL, NULL, '23', '2017-06-14 11:02:06', '2017-06-21 11:02:06', NULL, NULL, 0, 24, '2017-06-14 11:02:12', '2017-06-14 11:02:12', NULL),
(13, NULL, 10151, 1, 4, NULL, NULL, NULL, NULL, '25', '2017-06-14 11:26:30', '2017-06-21 11:26:30', '2017-06-14 11:28:02', NULL, 1, 26, '2017-06-14 11:26:40', '2017-06-14 11:28:02', NULL),
(14, NULL, 2, 3, 15, 19, NULL, NULL, NULL, 'hgjghjghj', '2017-07-11 11:38:16', '2017-07-13 11:38:23', '2017-07-13 14:53:57', NULL, 1, 31, NULL, '2017-07-23 14:53:57', NULL),
(15, 15, 10154, 1, 1, 1, 2, 1, 1, '30', '2017-07-02 12:04:34', '2017-07-09 12:04:34', '2017-07-03 14:47:21', '2017-07-03 14:47:21', 1, 31, '2017-07-15 12:10:29', '2017-07-23 14:47:21', NULL),
(16, NULL, 10153, 2, NULL, NULL, NULL, NULL, NULL, '37', '2017-07-15 14:12:14', '2017-07-22 14:12:14', NULL, NULL, 0, 39, '2017-07-15 14:15:47', '2017-07-15 14:15:47', NULL),
(17, NULL, 10156, 2, 10, NULL, NULL, NULL, NULL, 'gfhgfhfhgfhgfhggfhfh', '2017-07-15 15:10:21', '2017-07-18 15:10:21', '2017-07-15 15:24:52', NULL, 1, NULL, '2017-07-15 15:10:21', '2017-07-15 15:24:52', NULL),
(18, NULL, 10153, 15, NULL, NULL, NULL, NULL, NULL, '40', '2017-07-15 15:12:46', '2017-07-22 15:12:46', '2017-07-15 15:15:38', NULL, 2, 43, '2017-07-15 15:12:56', '2017-08-01 15:38:20', NULL),
(19, NULL, 10143, 3, 1, NULL, NULL, NULL, NULL, '42', '2017-07-15 16:47:14', '2017-07-22 16:47:14', '2017-08-22 14:32:02', NULL, 1, 45, '2017-07-15 16:47:18', '2017-08-22 14:32:02', NULL),
(20, NULL, 10132, 2, NULL, NULL, NULL, NULL, NULL, '44', '2017-07-15 17:21:11', '2017-07-22 17:21:11', NULL, NULL, 0, 47, '2017-07-15 17:21:18', '2017-08-01 13:00:53', '2017-08-01 13:00:53'),
(21, NULL, 10152, 3, NULL, NULL, NULL, NULL, NULL, '46', '2017-07-15 17:31:18', '2017-07-22 17:31:18', NULL, NULL, 0, 49, '2017-07-15 17:31:24', '2017-08-01 12:55:52', '2017-08-01 12:55:52'),
(22, NULL, 10152, 3, NULL, NULL, NULL, NULL, NULL, 'fgdfsg', '2017-07-19 12:20:08', '2017-07-19 12:20:08', NULL, NULL, 0, NULL, '2017-07-19 12:20:08', '2017-07-19 12:20:08', NULL),
(23, NULL, 10152, 3, 15, NULL, NULL, NULL, NULL, 'dsfaf', '2017-07-19 12:20:35', '2017-07-19 12:20:35', NULL, NULL, 0, NULL, '2017-07-19 12:20:35', '2017-07-19 12:20:35', NULL),
(24, NULL, 10152, 3, 15, 19, NULL, NULL, NULL, 'waqer', '2017-07-19 12:27:32', '2017-07-19 12:27:32', NULL, NULL, 0, NULL, '2017-07-19 12:27:32', '2017-07-19 12:27:32', NULL),
(25, NULL, 4, 3, NULL, NULL, NULL, NULL, NULL, 'dafasf', '2017-07-22 13:13:11', '2017-07-22 13:13:11', NULL, NULL, 0, NULL, '2017-07-22 13:13:11', '2017-07-22 13:13:11', NULL),
(26, NULL, 10151, 2, 10, NULL, NULL, NULL, NULL, 'PO-22072017446', '2017-07-22 16:46:28', '2017-07-25 16:46:28', NULL, NULL, 0, NULL, '2017-07-22 16:46:28', '2017-07-22 16:46:28', NULL),
(27, NULL, 10151, 3, 15, NULL, NULL, NULL, NULL, 'PO-22072017530', '2017-07-26 17:31:12', '2017-07-31 17:31:12', NULL, NULL, 0, NULL, '2017-07-22 17:31:12', '2017-07-22 17:31:12', NULL),
(28, 18, 10153, 2, NULL, NULL, NULL, NULL, NULL, '35', '2017-07-15 14:07:03', '2017-07-22 14:07:03', '2017-08-01 15:38:21', NULL, 1, 37, '2017-08-01 14:28:26', '2017-08-01 15:38:21', NULL),
(29, NULL, 10153, 3, NULL, NULL, NULL, NULL, NULL, '33', '2017-07-15 14:03:47', '2017-07-22 14:03:47', NULL, NULL, 0, 35, '2017-08-01 15:36:43', '2017-08-01 15:37:34', '2017-08-01 15:37:34'),
(30, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, '49', '2017-08-01 15:43:27', '2017-08-08 15:43:27', NULL, NULL, 0, 52, '2017-08-01 15:44:02', '2017-08-01 15:44:02', NULL),
(31, NULL, 10132, 4, NULL, NULL, NULL, NULL, NULL, '49', '2017-08-01 15:43:27', '2017-08-08 15:43:27', NULL, NULL, 0, 52, '2017-08-01 15:44:02', '2017-08-01 15:44:49', '2017-08-01 15:44:49'),
(32, NULL, 10132, 4, NULL, NULL, NULL, NULL, NULL, '51', '2017-08-02 12:53:16', '2017-08-09 12:53:16', NULL, NULL, 3, 54, '2017-08-02 12:53:41', '2017-08-02 13:12:56', NULL),
(33, NULL, 10133, 7, NULL, NULL, NULL, NULL, NULL, '51', '2017-08-02 12:53:16', '2017-08-09 12:53:16', NULL, NULL, 0, 54, '2017-08-02 12:53:41', '2017-08-02 13:12:36', NULL),
(34, NULL, 10158, 2, NULL, NULL, NULL, NULL, NULL, '502', '2017-08-07 09:28:02', '2017-08-14 09:28:02', NULL, NULL, 0, 60, '2017-08-07 09:28:18', '2017-08-07 09:28:18', NULL),
(35, NULL, 10150, 9, NULL, NULL, NULL, NULL, NULL, 'khjkhkhjhj hjkhjkhj 2018', '2018-01-27 12:32:25', '2018-01-27 12:32:25', '2018-01-27 12:33:22', NULL, 1, NULL, '2018-01-27 12:32:25', '2018-01-27 12:33:22', NULL),
(36, NULL, 10160, 1, 1, NULL, NULL, NULL, NULL, '8050381', '2018-07-04 10:05:13', '2018-07-04 10:05:13', '2018-07-04 10:05:31', NULL, 1, NULL, '2018-07-04 10:05:13', '2018-07-04 10:05:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_permanent_infos`
--

CREATE TABLE `post_permanent_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `probation_start_date` date NOT NULL DEFAULT '1970-01-01',
  `permanent_date` date NOT NULL DEFAULT '1970-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_permanent_infos`
--

INSERT INTO `post_permanent_infos` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `rank_id`, `probation_start_date`, `permanent_date`) VALUES
(1, NULL, '2017-05-25 06:35:29', '2017-05-25 06:35:29', 2, 1, '2017-05-31', '2017-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `pre_trainings`
--

CREATE TABLE `pre_trainings` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `training_week_id` int(10) UNSIGNED DEFAULT NULL,
  `traning_result` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pre_trainings`
--

INSERT INTO `pre_trainings` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `training_week_id`, `traning_result`) VALUES
(1, NULL, '2017-07-27 06:57:16', '2017-07-27 06:57:16', 3, 6, NULL),
(2, NULL, '2017-07-27 09:19:50', '2017-07-27 09:19:50', 1, 6, NULL),
(3, NULL, '2017-07-27 09:19:50', '2017-07-27 09:19:50', 2, 6, NULL),
(4, NULL, '2017-07-27 09:20:42', '2017-07-27 09:20:42', 4, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_amendments`
--

CREATE TABLE `profile_amendments` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `amendments` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile_amendments`
--

INSERT INTO `profile_amendments` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `amendments`) VALUES
(1, NULL, '2017-05-25 06:40:15', '2017-05-25 06:40:15', 1, 'Amendments');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `prev_rank_id` int(10) UNSIGNED DEFAULT NULL,
  `pres_rank_id` int(10) UNSIGNED DEFAULT NULL,
  `prev_desig_id` int(11) NOT NULL,
  `pres_desig_id` int(11) NOT NULL,
  `promotion_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `prev_rank_id`, `pres_rank_id`, `prev_desig_id`, `pres_desig_id`, `promotion_date`) VALUES
(1, NULL, '2017-05-25 06:34:58', '2017-05-25 06:34:58', 2, 1, 3, 0, 0, '2017-05-26'),
(2, '2017-10-19 08:53:11', '2017-10-19 08:27:24', '2017-10-19 08:53:11', 10152, 19, 3, 0, 0, '2017-10-19'),
(3, '2017-10-19 08:53:06', '2017-10-19 08:49:00', '2017-10-19 08:53:06', 10151, 3, 3, 4, 4, '2017-10-19'),
(4, NULL, '2017-10-19 08:53:37', '2017-10-19 08:53:37', 10152, 1, 3, 2, 4, '2017-10-19'),
(5, NULL, '2017-10-23 12:26:45', '2017-10-25 04:54:11', 1, 1, 18, 3, 19, '2017-10-23'),
(6, NULL, '2017-11-09 04:18:19', '2017-11-09 04:18:19', 10152, 3, 1, 4, 3, '2017-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_exams`
--

CREATE TABLE `promotion_exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `exam_date` date NOT NULL,
  `marks_obtained` double(8,2) NOT NULL DEFAULT '0.00',
  `merit_position` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promotion_exams`
--

INSERT INTO `promotion_exams` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `exam_date`, `marks_obtained`, `merit_position`) VALUES
(1, NULL, '2017-05-25 06:34:36', '2017-05-25 06:34:36', 2, '2017-04-30', 95.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ral_infos`
--

CREATE TABLE `ral_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ral_date` date NOT NULL DEFAULT '1970-01-01',
  `ral_no` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ral_infos`
--

INSERT INTO `ral_infos` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `ral_date`, `ral_no`) VALUES
(1, NULL, '2017-05-25 06:36:04', '2017-05-25 06:36:04', 2, '2017-06-02', 51);

-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mother_force_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rank_level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank_short_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_officer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`id`, `deleted_at`, `created_at`, `updated_at`, `mother_force_id`, `rank_name`, `rank_level`, `rank_short_name`, `is_officer`) VALUES
(1, NULL, '2017-03-02 05:23:14', '2017-04-19 10:01:37', 1, 'Lieutenant Colonel', 1, 'Lt. Colonel', 'Yes'),
(3, NULL, '2017-03-02 05:25:53', '2017-04-09 10:13:24', 1, 'Major', 2, 'Major', 'Yes'),
(5, NULL, '2017-03-02 05:30:34', '2017-04-19 09:25:30', 1, 'RMO', 3, 'RMO', 'Yes'),
(6, NULL, '2017-04-09 09:45:01', '2017-04-09 10:13:42', 1, 'Captain', 4, 'Captain', 'Yes'),
(7, NULL, '2017-04-09 10:14:14', '2017-04-19 10:20:19', 2, 'Commander', 1, 'Cmdr', 'Yes'),
(8, NULL, '2017-04-09 10:15:26', '2017-04-19 10:01:52', 2, 'Lieutenant Commander', 2, 'Lt. Com', 'Yes'),
(9, NULL, '2017-04-09 10:15:59', '2017-04-19 10:02:55', 2, 'Lieutenant', 3, 'Lt.', 'Yes'),
(10, NULL, '2017-04-09 10:18:27', '2017-04-09 10:18:27', 3, 'Wing Commander', 1, 'Wing Cmdr', 'Yes'),
(11, NULL, '2017-04-09 10:19:50', '2017-04-09 10:21:42', 3, 'Squadron Leader', 2, 'Sqd. Leader', 'Yes'),
(12, NULL, '2017-04-09 10:20:20', '2017-04-19 10:03:06', 3, 'Flight Lieutenant', 3, 'Flight Lt.', 'Yes'),
(13, NULL, '2017-04-09 10:21:00', '2017-04-20 03:48:46', 4, 'Additional IG', 2, 'Addl. IG', 'Yes'),
(14, NULL, '2017-04-09 10:21:32', '2017-04-20 03:53:35', 4, 'Additional SP', 6, 'Addl. SP', 'Yes'),
(15, NULL, '2017-04-09 10:23:25', '2017-04-20 03:54:17', 4, 'Senior ASP', 7, 'Senior ASP', 'Yes'),
(16, NULL, '2017-04-09 10:24:13', '2017-04-20 03:54:37', 4, 'ASP', 8, 'ASP', 'Yes'),
(17, NULL, '2017-04-12 12:35:40', '2017-04-12 12:35:40', 4, 'Divisional Police Officer', 5, 'DPO', 'Yes'),
(18, NULL, '2017-04-19 08:23:35', '2017-04-19 08:41:14', 1, 'Senior Warrant Officer', 5, 'SWO', 'No'),
(19, NULL, '2017-04-19 08:23:47', '2017-04-19 08:25:07', 1, 'Warrent Officer', 6, 'WO', 'No'),
(20, NULL, '2017-04-19 08:24:06', '2017-04-19 08:25:12', 1, 'RT', 7, 'RT', 'No'),
(21, NULL, '2017-04-19 08:24:28', '2017-04-19 10:23:10', 1, 'Sergeant', 8, 'Sgt.', 'No'),
(22, NULL, '2017-04-19 08:24:45', '2017-04-19 08:25:22', 1, 'Corporal', 9, 'Cpl', 'No'),
(23, NULL, '2017-04-19 08:26:00', '2017-04-20 03:25:46', 1, 'Lance Corporal', 10, 'L/Cpl', 'No'),
(24, NULL, '2017-04-19 08:27:00', '2017-04-20 08:55:35', 1, 'Sainik', 11, 'Snk', 'No'),
(25, NULL, '2017-04-19 08:27:51', '2017-04-19 08:27:51', 1, 'Cook', 12, 'Cook', 'No'),
(26, NULL, '2017-04-19 08:28:06', '2017-04-19 08:29:04', 1, 'MLSS', 13, 'MLSS', 'No'),
(27, NULL, '2017-04-19 08:28:45', '2017-04-19 08:29:17', 1, 'Mess Waiter', 14, 'Mess Waiter', 'No'),
(28, NULL, '2017-04-19 08:29:41', '2017-04-19 08:29:41', 1, 'Mali', 15, 'Mali', 'No'),
(29, NULL, '2017-04-19 08:29:58', '2017-04-19 08:29:58', 1, 'Ward Boy', 16, 'Ward Boy', 'No'),
(30, NULL, '2017-04-19 08:30:22', '2017-04-19 08:30:22', 1, 'Mosalcy', 17, 'Mosalcy', 'No'),
(31, NULL, '2017-04-19 08:31:23', '2017-04-19 08:31:23', 1, 'Lab Assistant', 18, 'L/A', 'No'),
(32, NULL, '2017-04-19 08:31:41', '2017-04-19 08:31:58', 1, 'NCE', 19, 'NCE', 'No'),
(33, NULL, '2017-04-19 08:33:10', '2017-04-19 08:33:24', 2, 'CPO', 4, 'CPO', 'No'),
(34, NULL, '2017-04-19 08:33:51', '2017-04-19 08:33:51', 2, 'RT', 5, 'RT', 'No'),
(35, NULL, '2017-04-19 08:34:04', '2017-04-19 08:34:04', 2, 'PO', 6, 'PO', 'No'),
(36, NULL, '2017-04-19 08:34:23', '2017-04-19 08:34:23', 2, 'LS', 7, 'LS', 'No'),
(37, NULL, '2017-04-19 08:35:01', '2017-04-19 08:35:28', 2, 'AB', 8, 'A/B', 'No'),
(38, NULL, '2017-04-19 08:37:23', '2017-04-19 08:37:23', 2, 'OD', 9, 'O/D', 'No'),
(39, NULL, '2017-04-19 08:37:40', '2017-04-19 08:37:40', 2, 'Cook', 10, 'Cook', 'No'),
(40, NULL, '2017-04-19 08:38:02', '2017-04-19 08:38:02', 2, 'Mess Waiter', 12, 'Mess Waiter', 'No'),
(41, NULL, '2017-04-19 08:38:48', '2017-04-19 08:38:48', 2, 'NCE', 13, 'NCE', 'No'),
(42, NULL, '2017-04-19 08:41:01', '2017-04-19 08:41:01', 3, 'Senior Warrant Officer', 4, 'SWO', 'No'),
(43, NULL, '2017-04-19 08:41:35', '2017-04-19 08:41:35', 3, 'Warrant Officer', 5, 'WO', 'No'),
(44, NULL, '2017-04-19 08:41:59', '2017-04-19 08:41:59', 3, 'RT', 6, 'RT', 'No'),
(45, NULL, '2017-04-19 08:42:21', '2017-04-19 10:23:17', 3, 'Sergeant', 7, 'Sgt.', 'No'),
(46, NULL, '2017-04-19 08:43:13', '2017-04-19 08:43:13', 3, 'Corporal', 8, 'Cpl', 'No'),
(47, NULL, '2017-04-19 08:43:58', '2017-04-19 08:43:58', 3, 'LAC', 9, 'LAC', 'No'),
(48, NULL, '2017-04-19 08:44:35', '2017-04-19 08:44:35', 3, 'Cook', 10, 'Cook', 'No'),
(49, NULL, '2017-04-19 08:44:56', '2017-04-19 08:45:09', 3, 'Mess Waiter', 11, 'Mess Waiter', 'No'),
(50, NULL, '2017-04-19 08:45:30', '2017-04-19 08:45:30', 3, 'NCE', 12, 'NCE', 'No'),
(51, NULL, '2017-04-19 08:46:19', '2017-04-20 03:55:41', 4, 'Inspector', 9, 'Insp', 'No'),
(52, NULL, '2017-04-19 08:47:16', '2017-04-20 03:56:05', 4, 'Sub Inspector', 10, 'SI', 'No'),
(53, NULL, '2017-04-19 08:49:13', '2017-04-20 03:58:42', 4, 'Sergeant', 11, 'Addl. SI', 'No'),
(54, NULL, '2017-04-19 08:49:58', '2017-04-20 03:56:46', 4, 'Assistant Sub Inspector', 12, 'ASI', 'No'),
(55, NULL, '2017-04-19 08:50:57', '2017-04-20 04:01:03', 4, 'Havildar', 15, 'Hav', 'No'),
(56, NULL, '2017-04-19 08:51:18', '2017-04-20 03:59:17', 4, 'Nayek', 13, 'Nk', 'No'),
(57, NULL, '2017-04-19 08:51:42', '2017-04-20 03:59:31', 4, 'Constable', 14, 'Const', 'No'),
(58, NULL, '2017-04-19 08:51:58', '2017-04-20 04:00:39', 4, 'Cook', 15, 'Cook', 'No'),
(59, NULL, '2017-04-19 08:52:23', '2017-04-20 04:00:23', 4, 'Accountant', 16, 'Acct', 'No'),
(60, NULL, '2017-04-19 09:05:39', '2017-07-16 09:31:41', 5, 'Deputy Director', 1, 'DD', 'Yes'),
(61, NULL, '2017-04-19 09:06:18', '2017-07-16 09:46:39', 5, 'Deputy Assistant Director ', 2, 'DAD', 'Yes'),
(62, NULL, '2017-04-19 09:08:02', '2017-04-19 09:08:02', 5, 'SA', 3, 'SA', 'No'),
(63, NULL, '2017-04-19 09:08:21', '2017-04-19 09:08:21', 5, 'UP', 4, 'UP', 'No'),
(64, NULL, '2017-04-19 09:08:38', '2017-04-19 09:08:38', 5, 'PC', 5, 'PC', 'No'),
(65, NULL, '2017-04-19 09:08:57', '2017-04-19 09:08:57', 5, 'APC', 6, 'APC', 'No'),
(66, NULL, '2017-04-19 09:09:15', '2017-04-19 09:09:15', 5, 'Havildar', 7, 'Hav', 'No'),
(67, NULL, '2017-04-19 09:09:34', '2017-04-19 09:09:34', 5, 'Nayek', 8, 'Nk', 'No'),
(68, NULL, '2017-04-19 09:10:01', '2017-04-19 09:10:01', 5, 'Lance Nayek', 9, 'L/Nk', 'No'),
(69, NULL, '2017-04-19 09:10:48', '2017-04-19 09:10:48', 5, 'Mess Waiter', 10, 'Mess Waiter', 'No'),
(70, NULL, '2017-04-19 09:11:08', '2017-04-19 09:11:08', 5, 'Accountant', 11, 'Acct', 'No'),
(71, NULL, '2017-04-19 09:11:37', '2017-04-19 09:11:37', 5, 'MLSS', 12, 'MLSS', 'No'),
(72, NULL, '2017-04-19 09:13:57', '2017-04-19 09:13:57', 6, 'Subedar Major', 1, 'SM', 'No'),
(73, NULL, '2017-04-19 09:14:20', '2017-04-19 09:14:20', 6, 'Subedar', 2, 'Subedar', 'No'),
(74, NULL, '2017-04-19 09:14:54', '2017-04-19 09:14:54', 6, 'Nayek Subedar', 3, 'Nk Sb', 'No'),
(75, NULL, '2017-04-19 09:15:15', '2017-04-19 09:15:15', 6, 'RT', 4, 'RT', 'No'),
(76, NULL, '2017-04-19 09:15:34', '2017-04-19 09:15:34', 6, 'Havildar', 5, 'Hav', 'No'),
(77, NULL, '2017-04-19 09:15:58', '2017-04-19 09:15:58', 6, 'Nayek', 6, 'Nk', 'No'),
(78, NULL, '2017-04-19 09:16:27', '2017-04-19 09:16:27', 6, 'Lance Nayek', 7, 'Ln/Nk', 'No'),
(79, NULL, '2017-04-19 09:18:36', '2017-04-19 09:18:36', 6, 'Sipahee', 8, 'Sipahee', 'No'),
(80, NULL, '2017-04-19 09:19:04', '2017-04-19 09:19:04', 6, 'MLSS', 9, 'MLSS', 'No'),
(81, NULL, '2017-04-19 09:19:24', '2017-04-19 09:19:24', 6, 'Mali', 10, 'Mali', 'No'),
(82, NULL, '2017-04-19 09:20:04', '2017-04-19 09:20:04', 6, 'Cook', 11, 'Cook', 'No'),
(83, NULL, '2017-04-19 09:20:22', '2017-04-19 09:20:22', 6, 'Mess Waiter', 12, 'Mess Waiter', 'No'),
(84, NULL, '2017-04-19 09:20:56', '2017-04-19 09:20:56', 6, 'NCE', 13, 'NCE', 'No'),
(85, NULL, '2017-04-19 09:45:26', '2017-04-19 09:47:42', 8, 'Officer', 1, 'Officer', 'Yes'),
(86, NULL, '2017-04-19 09:48:01', '2017-04-19 09:48:01', 8, 'Magistrate', 2, 'Magistrate', 'Yes'),
(87, NULL, '2017-04-19 09:48:28', '2017-04-19 09:48:28', 8, 'Budget Officer', 3, 'Budget Officer', 'Yes'),
(88, NULL, '2017-04-19 09:48:49', '2017-04-19 09:48:49', 8, 'Accounts Officer', 4, 'Accounts Officer', 'Yes'),
(89, NULL, '2017-04-19 09:51:57', '2017-04-20 03:49:36', 4, 'Additional DIG', 4, 'Addl. DIG', 'Yes'),
(90, NULL, '2017-04-19 10:44:55', '2017-04-19 10:44:55', 1, 'Technician', 20, 'Technician', 'No'),
(91, NULL, '2017-04-20 03:47:41', '2017-04-20 03:47:41', 4, 'Inspector General', 1, 'IG', 'Yes'),
(92, NULL, '2017-04-20 03:48:14', '2017-04-20 03:48:14', 4, 'Deputy Inspector General', 3, 'DIG', 'Yes'),
(93, NULL, '2017-04-20 03:51:00', '2017-04-20 03:51:00', 4, 'Superintendent of Police', 5, 'SP', 'Yes'),
(94, NULL, '2017-04-20 07:25:05', '2017-04-20 07:25:05', 5, 'Circle Adjutant', 11, 'C/Adj.', 'No'),
(95, NULL, '2017-04-20 08:10:04', '2017-04-20 08:10:04', 7, 'PC', 1, 'PC', 'No'),
(96, NULL, '2017-04-20 08:10:40', '2017-04-20 08:10:40', 7, 'APC', 2, 'APC', 'No'),
(97, NULL, '2017-04-20 08:11:30', '2017-04-20 08:11:30', 7, 'Constable', 3, 'Const.', 'No'),
(98, NULL, '2017-04-20 09:24:19', '2017-04-20 09:24:19', 5, 'Sipahee', 14, 'Sipahee', 'No'),
(99, NULL, '2017-04-20 09:29:30', '2017-04-20 09:29:30', 1, 'Sub Assistant Engineer', 21, 'Sub Asst. Engr.', 'No'),
(100, NULL, '2017-04-20 09:38:21', '2017-04-20 09:38:21', 4, 'MLSS', 18, 'MLSS', 'No'),
(101, NULL, '2017-04-20 09:40:15', '2017-04-20 09:40:15', 6, 'Accountant', 15, 'Acct', 'No'),
(102, NULL, '2017-04-20 09:42:27', '2017-04-20 09:42:27', 8, 'Accountant', 9, 'Acct', 'No'),
(103, NULL, '2017-05-15 12:43:00', '2017-05-15 12:43:00', 6, 'RT', 0, 'RT', 'Yes'),
(104, NULL, '2017-05-15 12:43:00', '2017-05-15 12:43:00', 7, 'RT', 0, 'RT', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `ration_categories`
--

CREATE TABLE `ration_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ration_cat_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rcat_name_bangla` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ration_categories`
--

INSERT INTO `ration_categories` (`id`, `deleted_at`, `created_at`, `updated_at`, `ration_cat_name`, `rcat_name_bangla`, `unit`) VALUES
(1, NULL, '2017-05-03 05:02:19', '2018-01-21 09:47:15', 'Wife', 'স্ত্রী', 1.00),
(2, NULL, '2017-05-03 05:02:47', '2018-01-21 09:47:35', 'Child above 12 years', 'সন্তান ১২ বছরের উপরে', 1.00),
(3, NULL, '2017-05-03 05:03:11', '2018-01-21 09:47:54', 'Child under 12 years', 'সন্তান ১২ বছরের নীচে', 0.50),
(4, NULL, '2017-05-03 05:03:19', '2017-05-03 12:49:38', 'Child under 3 years', 'সন্তান ৩ বছরের নীচে', 0.00),
(5, NULL, '2018-01-21 09:45:51', '2018-01-21 09:45:51', 'Self', 'নিজ', 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `ration_crashing_details`
--

CREATE TABLE `ration_crashing_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ration_crashing_id` int(10) UNSIGNED NOT NULL,
  `crashing_product_id` int(10) UNSIGNED NOT NULL,
  `crashing_amount` decimal(10,3) NOT NULL DEFAULT '0.000',
  `output_product_id` int(10) UNSIGNED NOT NULL,
  `output_amount` decimal(10,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ration_crashing_details`
--

INSERT INTO `ration_crashing_details` (`id`, `deleted_at`, `created_at`, `updated_at`, `ration_crashing_id`, `crashing_product_id`, `crashing_amount`, `output_product_id`, `output_amount`) VALUES
(1, '2018-05-30 06:17:49', '2018-05-30 04:22:18', '2018-05-30 06:17:49', 1, 38, '120.000', 39, '110.000'),
(2, '2018-05-30 06:18:58', '2018-05-30 06:17:50', '2018-05-30 06:18:58', 2, 38, '120.000', 39, '110.000'),
(3, '2018-05-30 06:18:58', '2018-05-30 06:17:50', '2018-05-30 06:18:58', 2, 40, '25.000', 41, '40.000'),
(4, NULL, '2018-05-30 06:18:58', '2018-05-30 06:18:58', 2, 38, '120.000', 39, '110.000'),
(5, NULL, '2018-05-30 06:18:58', '2018-05-30 06:18:58', 2, 42, '25.000', 41, '40.000');

-- --------------------------------------------------------

--
-- Table structure for table `ration_crashing_infos`
--

CREATE TABLE `ration_crashing_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `crashing_date` date NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ration_crashing_infos`
--

INSERT INTO `ration_crashing_infos` (`id`, `deleted_at`, `created_at`, `updated_at`, `created_by`, `crashing_date`, `store_id`) VALUES
(1, '2018-05-30 06:20:11', '2018-05-30 04:22:18', '2018-05-30 06:20:11', 1, '2018-05-30', 5),
(2, NULL, '2018-05-30 06:17:49', '2018-05-30 06:17:49', 1, '2018-05-30', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ration_distributions`
--

CREATE TABLE `ration_distributions` (
  `id` int(10) UNSIGNED NOT NULL,
  `posting_rec_id` int(11) NOT NULL,
  `ration_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ration_distributions`
--

INSERT INTO `ration_distributions` (`id`, `posting_rec_id`, `ration_date`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2018-07-01', 1, NULL, '2018-07-17 07:30:13', '2018-07-17 07:30:13', NULL),
(2, 1, '2018-05-01', 1, NULL, '2018-07-17 07:31:11', '2018-07-17 07:31:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ration_distribution_details`
--

CREATE TABLE `ration_distribution_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `ration_distribution_id` int(10) UNSIGNED NOT NULL,
  `ration_unit_setup_id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,3) NOT NULL DEFAULT '0.000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ration_distribution_details`
--

INSERT INTO `ration_distribution_details` (`id`, `ration_distribution_id`, `ration_unit_setup_id`, `days`, `unit`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 27, '1.00', '9.204', '2018-07-17 07:30:13', '2018-07-17 07:34:11', NULL),
(2, 1, 2, 27, '1.00', '7.671', '2018-07-17 07:30:14', '2018-07-17 07:34:11', NULL),
(3, 1, 3, 27, '1.00', '2.286', '2018-07-17 07:30:14', '2018-07-17 07:34:11', NULL),
(4, 1, 4, 27, '1.00', '1.534', '2018-07-17 07:30:14', '2018-07-17 07:34:12', NULL),
(5, 2, 1, 31, '1.00', '10.568', '2018-07-17 07:31:11', '2018-07-17 07:31:11', NULL),
(6, 2, 2, 31, '1.00', '8.807', '2018-07-17 07:31:11', '2018-07-17 07:31:11', NULL),
(7, 2, 3, 31, '1.00', '2.625', '2018-07-17 07:31:11', '2018-07-17 07:31:11', NULL),
(8, 2, 4, 31, '1.00', '1.761', '2018-07-17 07:31:11', '2018-07-17 07:31:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ration_infos`
--

CREATE TABLE `ration_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ration_infos`
--

INSERT INTO `ration_infos` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`) VALUES
(1, NULL, '2018-06-05 09:21:59', '2018-06-05 09:21:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ration_info_details`
--

CREATE TABLE `ration_info_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `ration_info_id` int(10) UNSIGNED NOT NULL,
  `ration_category_id` int(10) UNSIGNED NOT NULL,
  `person` int(11) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ration_info_details`
--

INSERT INTO `ration_info_details` (`id`, `ration_info_id`, `ration_category_id`, `person`, `effective_date`, `approved_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, '2018-01-01', NULL, NULL, NULL, NULL),
(2, 1, 2, 1, '2018-01-01', NULL, NULL, NULL, NULL),
(3, 1, 5, 1, '2018-01-01', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ration_sells`
--

CREATE TABLE `ration_sells` (
  `id` int(10) UNSIGNED NOT NULL,
  `posting_rec_id` int(11) NOT NULL,
  `ration_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ration_sells`
--

INSERT INTO `ration_sells` (`id`, `posting_rec_id`, `ration_date`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2018-05-01', 1, NULL, '2018-05-30 09:29:41', '2018-05-30 09:29:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ration_sell_details`
--

CREATE TABLE `ration_sell_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `ration_sell_id` int(10) UNSIGNED NOT NULL,
  `ration_unit_setup_id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,3) NOT NULL DEFAULT '0.000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ration_sell_details`
--

INSERT INTO `ration_sell_details` (`id`, `ration_sell_id`, `ration_unit_setup_id`, `days`, `unit`, `price`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 31, '3.00', '57.09', '31.704', '2018-05-30 09:29:41', '2018-05-30 09:29:41', NULL),
(2, 1, 2, 31, '3.00', '39.63', '26.421', '2018-05-30 09:29:41', '2018-05-30 09:29:41', NULL),
(3, 1, 3, 31, '3.00', '58.00', '7.874', '2018-05-30 09:29:41', '2018-05-30 09:29:41', NULL),
(4, 1, 4, 31, '3.00', '16.96', '5.282', '2018-05-30 09:29:41', '2018-05-30 09:29:41', NULL),
(5, 1, 5, 31, '3.00', '6.32', '4.650', '2018-05-30 09:29:41', '2018-05-30 09:29:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ration_unit_setups`
--

CREATE TABLE `ration_unit_setups` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ration_unit_setups`
--

INSERT INTO `ration_unit_setups` (`id`, `deleted_at`, `created_at`, `updated_at`, `price`, `amount`, `item_id`) VALUES
(1, NULL, '2018-01-21 10:14:15', '2018-01-27 10:05:51', 18.415, 10.227, 38),
(2, NULL, '2018-01-21 10:22:08', '2018-01-27 10:06:12', 12.785, 8.523, 39),
(3, NULL, '2018-01-21 10:47:32', '2018-01-27 10:06:32', 18.71, 2.54, 40),
(4, NULL, '2018-01-21 10:48:34', '2018-01-27 10:09:35', 5.47, 1.704, 42),
(5, NULL, '2018-01-21 10:49:12', '2018-01-27 10:10:33', 2.04, 1.5, 41),
(6, '2018-01-27 10:11:19', '2018-01-24 10:21:58', '2018-01-25 11:00:25', 18.415, 10.568, 1),
(7, '2018-01-27 10:11:30', '2018-01-24 10:29:48', '2018-01-25 10:59:33', 18.71, 2.625, 1),
(8, '2018-01-27 10:11:36', '2018-01-24 10:30:14', '2018-01-25 10:59:18', 2.04, 1.761, 1),
(9, '2018-01-27 10:11:41', '2018-01-24 10:33:20', '2018-01-24 10:33:20', 2.04, 1.7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `receive_infos`
--

CREATE TABLE `receive_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `receive_type` tinyint(4) NOT NULL COMMENT '1=purchase,2=Private purchase,3=store receive,4=Issue Return,5=Repair return,6=Opening Store Receive',
  `receive_date` date NOT NULL,
  `receive_voucher_no` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `organization_store_id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `purchase_order_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `challan_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_voucher_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_voucher_id` int(10) UNSIGNED DEFAULT NULL,
  `from_organization_store_id` int(11) UNSIGNED DEFAULT NULL,
  `from_employee_id` int(10) DEFAULT NULL COMMENT 'FK with posting_record table of posting_rec_id',
  `receive_from` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL COMMENT 'FK with posting_record table of posting_rec_id',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL COMMENT 'FK with posting_record table of posting_rec_id',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receive_infos`
--

INSERT INTO `receive_infos` (`id`, `receive_type`, `receive_date`, `receive_voucher_no`, `organization_store_id`, `supplier_id`, `purchase_order_no`, `challan_no`, `issue_voucher_no`, `issue_voucher_id`, `from_organization_store_id`, `from_employee_id`, `receive_from`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 1, '2017-07-12', 'v1', 1, 2, 'po1', 'ch1', NULL, NULL, NULL, NULL, NULL, '2017-07-12 07:19:17', 1, '2017-07-12 07:19:17', NULL, NULL),
(2, 2, '2017-07-02', 'PP1', 9, 1, '123456', '147852', NULL, NULL, NULL, NULL, NULL, '2017-07-26 03:48:14', 1, '2017-08-01 04:55:38', NULL, NULL),
(3, 4, '2017-07-26', 'IRR 01', 9, NULL, NULL, NULL, '147852', NULL, NULL, NULL, 'Receive From', '2017-07-26 04:01:39', 1, '2017-08-01 05:29:15', NULL, NULL),
(4, 5, '2017-07-26', '963', 1, 2, '1111', '111', '2541', 2, NULL, NULL, NULL, '2017-07-26 05:36:00', 1, '2017-07-26 05:36:00', NULL, NULL),
(5, 1, '2017-08-01', 'v_01', 9, 1, '25', 'c0120', NULL, NULL, NULL, NULL, NULL, '2017-08-01 04:54:47', 1, '2017-08-01 04:54:47', NULL, NULL),
(6, 4, '2017-08-05', 'test-1452', 9, NULL, NULL, NULL, 'ttsdafasf', NULL, NULL, NULL, 'asdf', '2017-08-05 11:49:53', 1, '2017-09-17 04:58:52', NULL, NULL),
(7, 1, '2017-08-05', 'test-1450', 9, 1, '2589', '7412', NULL, NULL, NULL, NULL, NULL, '2017-08-05 11:53:14', 1, '2017-08-05 11:53:14', NULL, NULL),
(8, 2, '2017-08-05', 'test-1451', 9, 1, '36589', '159357', NULL, NULL, NULL, NULL, NULL, '2017-08-05 11:57:16', 1, '2017-10-30 08:25:39', 1, NULL),
(9, 1, '2017-08-14', 'dasf', 9, NULL, 'sadf', NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-14 09:40:56', 1, '2017-08-14 09:40:56', NULL, NULL),
(10, 3, '2017-08-14', '11', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-14 11:57:35', 1, '2017-08-14 11:57:35', NULL, NULL),
(11, 3, '2017-08-14', '12', 1, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2017-08-14 12:06:47', 1, '2017-08-27 08:22:42', NULL, '2017-08-27 08:22:42'),
(12, 3, '2017-08-14', '15', 1, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2017-08-14 12:14:54', 1, '2017-08-14 12:14:54', NULL, NULL),
(14, 1, '2017-08-16', 'pv-0001', 9, 1, 'p-00001', 'CT/001', NULL, NULL, NULL, NULL, NULL, '2017-08-16 10:00:11', 1, '2017-08-16 10:00:11', NULL, NULL),
(15, 5, '2017-08-28', 'dfgadd', 9, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, '2017-08-28 10:49:15', 1, '2017-08-28 10:49:15', NULL, NULL),
(16, 5, '2017-08-28', 'repair edit check RR', 9, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, '2017-08-28 11:13:03', 1, '2017-08-28 11:13:03', NULL, NULL),
(17, 5, '2017-08-28', 'repair edit ok', 9, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, '2017-08-28 11:18:15', 1, '2017-08-28 11:18:15', NULL, NULL),
(18, 4, '2017-09-17', 'v 455', 9, NULL, NULL, NULL, 'io 1235', NULL, NULL, 10143, NULL, '2017-09-17 04:56:14', 1, '2017-09-17 04:56:14', NULL, NULL),
(19, 4, '2017-09-18', 'v n', 2, NULL, NULL, NULL, 'i v n', NULL, NULL, 10151, 'saf', '2017-09-18 04:36:49', 10143, '2017-09-18 06:16:04', NULL, NULL),
(20, 4, '2017-09-18', 'sdfaasf', 2, NULL, NULL, NULL, 'asdf', NULL, NULL, 10143, 'sadf edit a', '2017-09-18 06:37:47', 10143, '2017-09-18 06:56:29', NULL, NULL),
(21, 4, '2017-09-23', 'IR from', 9, NULL, NULL, NULL, 'sadf', NULL, NULL, 19, 'safd', '2017-09-23 09:46:27', 1, '2017-09-23 10:49:20', 1, NULL),
(22, 1, '2017-09-23', 'create check pr', 9, 1, 'sdf', 'sadf', NULL, NULL, NULL, NULL, NULL, '2017-09-23 11:01:51', 1, '2017-09-23 11:02:01', 1, NULL),
(23, 2, '2017-09-23', 'create ppr check', 9, 2, 'pp', 'ch', NULL, NULL, NULL, NULL, NULL, '2017-09-23 11:03:13', 1, '2017-09-23 11:03:22', 1, NULL),
(24, 5, '2017-09-23', 'rr create check ', 9, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, '2017-09-23 11:05:35', 1, '2017-09-23 11:05:35', NULL, NULL),
(25, 3, '2017-09-23', 'v01', 9, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2017-09-23 11:06:16', 1, '2017-10-30 08:27:28', 1, NULL),
(26, 1, '2017-09-27', 'delete remove', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-09-27 04:23:46', 1, '2017-09-27 04:25:06', 1, NULL),
(27, 1, '2017-09-27', 'delete remove 2', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-09-27 04:47:37', 1, '2017-09-27 04:48:45', 1, NULL),
(28, 1, '2017-09-27', 'delete check 3', 9, 1, '1452', '36', NULL, NULL, NULL, NULL, NULL, '2017-09-27 06:53:45', 1, '2017-10-08 07:09:33', 1, NULL),
(29, 5, '2017-10-01', 'sp 1', 9, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, '2017-10-01 08:38:26', 1, '2017-10-01 08:38:26', NULL, NULL),
(30, 5, '2017-10-01', '5 mon RR', 9, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, '2017-10-01 08:42:08', 1, '2017-10-01 08:42:41', 1, NULL),
(31, 5, '2017-10-01', '2 mon 2 RR', 9, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, '2017-10-01 09:06:29', 1, '2017-10-01 09:07:03', 1, NULL),
(32, 5, '2017-10-01', '72,73', 9, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, '2017-10-01 09:47:09', 1, '2017-11-25 11:00:20', 1, '2017-11-25 11:00:20'),
(33, 4, '2017-10-03', 'IR-123', 9, NULL, NULL, NULL, 'v-123', NULL, NULL, 1, 'Receive From\r\n', '2017-10-03 05:25:07', 1, '2017-10-08 07:23:32', 1, NULL),
(34, 3, '2017-10-30', '1452', 9, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, '2017-10-30 08:48:57', 1, '2017-10-30 08:51:19', 1, NULL),
(35, 5, '2017-11-25', 'm_check', 9, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, '2017-11-25 11:01:03', 1, '2017-11-25 11:01:03', NULL, NULL),
(36, 5, '2017-11-28', 'unsvr r', 9, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, '2017-11-28 10:11:38', 1, '2017-11-28 10:11:38', NULL, NULL),
(37, 6, '2017-12-05', 'osr-1', 9, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2017-12-05 08:20:03', 1, '2017-12-05 08:20:03', NULL, NULL),
(38, 6, '2017-12-05', 'OSR-2', 9, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2017-12-05 08:41:03', 1, '2017-12-05 08:41:03', NULL, NULL),
(39, 6, '2017-12-05', 'OSR-3', 9, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2017-12-05 08:43:41', 1, '2017-12-05 11:18:37', 1, NULL),
(40, 6, '2017-12-05', 'OSR-4', 9, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2017-12-05 09:04:23', 1, '2017-12-05 10:46:37', NULL, '2017-12-05 10:46:37'),
(41, 6, '2017-12-05', '5 edit', 9, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2017-12-05 09:05:25', 1, '2017-12-05 09:41:43', 1, '2017-12-05 09:41:43'),
(43, 6, '2017-12-05', 'OSR-5', 9, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2017-12-05 11:11:37', 1, '2017-12-05 11:13:16', 1, '2017-12-05 11:13:16'),
(46, 6, '2017-12-05', 'OSR-4', 9, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2017-12-05 11:33:22', 1, '2017-12-05 11:34:08', 1, NULL),
(47, 1, '2018-01-08', 'HQ-AD-RV-2018-1', 9, NULL, 'asf', 'edit', NULL, NULL, NULL, NULL, NULL, '2018-01-08 04:29:03', 1, '2018-01-08 04:30:40', 1, NULL),
(48, 2, '2018-01-08', 'HQ-AD-RV-2018-2', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-08 04:39:41', 1, '2018-01-08 04:41:17', 1, NULL),
(49, 4, '2018-01-08', 'HQ-AD-RV-2018-3', 9, NULL, NULL, NULL, 'edit', NULL, NULL, NULL, NULL, '2018-01-08 04:51:02', 1, '2018-01-08 04:51:31', 1, NULL),
(50, 5, '2018-01-08', 'HQ-AD-RV-2018-4', 9, NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, '2018-01-08 04:57:42', 1, '2018-01-08 04:57:42', NULL, NULL),
(51, 6, '2018-01-08', 'HQ-AD-RV-2018-5', 9, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2018-01-08 05:07:27', 1, '2018-01-08 05:07:59', 1, NULL),
(52, 3, '2018-01-09', 'HQ-AD-RV-2018-6', 9, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, '2018-01-08 05:12:27', 1, '2018-01-08 05:13:12', 1, NULL),
(53, 1, '2018-01-08', 'HQ-AD-RV-2018-7', 9, NULL, 'sdaf', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-08 05:54:53', 1, '2018-01-08 05:54:53', NULL, NULL),
(54, 5, '2018-01-28', 'HQ-AD-RV-2018-8', 9, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, '2018-01-28 06:01:56', 1, '2018-01-28 06:05:40', 1, NULL),
(55, 1, '2018-05-22', 'RS-RV-2018-1', 11, 1, '254136', '789695', NULL, NULL, NULL, NULL, NULL, '2018-05-22 06:20:18', 1, '2018-05-22 06:20:18', NULL, NULL),
(56, 1, '2018-04-02', 'RS-RV-2018-2', 11, 2, '85236', '1222', NULL, NULL, NULL, NULL, NULL, '2018-05-23 05:43:02', 1, '2018-05-23 05:43:02', NULL, NULL),
(57, 1, '2018-02-09', 'RS-RV-2018-3', 11, 1, '800', '300', NULL, NULL, NULL, NULL, NULL, '2018-05-23 05:44:59', 1, '2018-05-23 05:44:59', NULL, NULL),
(58, 1, '2018-05-24', 'RS-RV-2018-4', 11, 1, '12543', '1563', NULL, NULL, NULL, NULL, NULL, '2018-05-24 05:03:38', 1, '2018-05-24 05:03:38', NULL, NULL),
(59, 1, '2018-05-25', 'RS-RV-2018-5', 11, 2, NULL, '2541', NULL, NULL, NULL, NULL, NULL, '2018-05-24 05:04:44', 1, '2018-05-24 05:04:44', NULL, NULL),
(60, 1, '2018-05-24', 'RS-RV-2018-6', 11, 2, '4523', '741', NULL, NULL, NULL, NULL, NULL, '2018-05-24 05:07:12', 1, '2018-05-24 05:07:12', NULL, NULL),
(61, 1, '2018-06-01', 'RS-RV-2018-1', 12, 1, '51236', '42365', NULL, NULL, NULL, NULL, NULL, '2018-06-02 08:24:45', 2, '2018-06-02 08:24:45', NULL, NULL),
(62, 1, '2018-06-02', 'RS-RV-2018-2', 12, 2, '145236', '251', NULL, NULL, NULL, NULL, NULL, '2018-06-02 08:26:37', 2, '2018-06-02 08:26:37', NULL, NULL),
(63, 1, '2018-06-02', 'RS-RV-2018-3', 12, 2, '2125', '36200', NULL, NULL, NULL, NULL, NULL, '2018-06-02 08:46:25', 2, '2018-06-02 08:46:25', NULL, NULL),
(64, 1, '2018-06-01', 'RS-RV-2018-1', 13, 1, '8521', '14700', NULL, NULL, NULL, NULL, NULL, '2018-06-02 08:50:06', 3, '2018-06-02 08:50:06', NULL, NULL),
(65, 1, '2018-07-02', 'HQ-AD-RV-2018-9', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-02 09:03:23', 1, '2018-07-02 09:03:23', NULL, NULL),
(66, 1, '2018-07-02', 'HQ-AD-RV-2018-10', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-02 09:10:01', 1, '2018-07-02 09:10:01', NULL, NULL),
(67, 1, '2018-07-02', 'HQ-AD-RV-2018-11', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-02 09:12:11', 1, '2018-07-02 09:12:11', NULL, NULL),
(68, 1, '2018-07-02', 'HQ-AD-RV-2018-12', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-02 09:15:33', 1, '2018-07-02 09:15:33', NULL, NULL),
(69, 1, '2018-07-02', 'HQ-AD-RV-2018-13', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-02 09:18:23', 1, '2018-07-02 09:18:23', NULL, NULL),
(70, 1, '2018-07-02', 'HQ-AD-RV-2018-14', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-02 09:34:30', 1, '2018-07-02 09:34:30', NULL, NULL),
(71, 1, '2018-07-02', 'HQ-AD-RV-2018-15', 9, NULL, 'barcode+w', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-02 09:57:19', 1, '2018-07-02 11:27:39', 1, NULL),
(72, 1, '2018-07-02', 'HQ-AD-RV-2018-16', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-02 10:16:01', 1, '2018-07-02 10:16:01', NULL, NULL),
(73, 1, '2018-07-02', 'HQ-AD-RV-2018-17', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-02 11:45:32', 1, '2018-07-03 09:29:52', 1, NULL),
(74, 2, '2018-07-11', 'HQ-AD-RV-2018-18', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-11 08:19:24', 1, '2018-07-11 08:55:00', 1, NULL),
(75, 1, '2018-07-12', 'HQ-AD-RV-2018-19', 9, 1, '6', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-12 08:43:26', 1, '2018-07-12 08:51:25', 1, NULL),
(76, 1, '2018-07-22', 'HQ-AD-MIS-RV-2018-1', 5, 2, 'PO1234', 'CH1234', NULL, NULL, NULL, NULL, NULL, '2018-07-22 12:15:12', 36, '2018-07-22 12:15:12', NULL, NULL),
(77, 3, '2018-07-23', 'HQ-AD-RV-2018-20', 9, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, '2018-07-23 06:14:39', 1, '2018-07-23 06:14:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receive_items`
--

CREATE TABLE `receive_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `receive_id` int(10) UNSIGNED NOT NULL COMMENT 'Foreign key - receive_info: receive_id',
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Foreign Key - items: id',
  `measurement_unit_id` int(10) UNSIGNED NOT NULL COMMENT 'Foreign Key -  measurement_units: id',
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `svc_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unsvc_qty` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'unsvc_qty=repairable_qty+unrepairable_qty',
  `repairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unrepairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `private_svc_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `private_unsvc_qty` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'private_unsvc_qty=private_repairable_qty+private_unrepairable_qty',
  `private_repairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `private_unrepairable_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `country_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'origin',
  `brand_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `expire_date` date DEFAULT NULL,
  `specification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barcode_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receive_items`
--

INSERT INTO `receive_items` (`id`, `receive_id`, `item_id`, `measurement_unit_id`, `currency_id`, `unit_price`, `total_price`, `svc_qty`, `unsvc_qty`, `repairable_qty`, `unrepairable_qty`, `private_svc_qty`, `private_unsvc_qty`, `private_repairable_qty`, `private_unrepairable_qty`, `country_id`, `brand_id`, `total_qty`, `expire_date`, `specification`, `barcode_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 1, NULL, '0.00', '0.00', '500.00', '19.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 47, NULL, '500.00', '2017-07-12', NULL, NULL, '2017-07-12 07:19:18', '2017-07-12 07:19:18', NULL),
(2, 1, 27, 1, NULL, '0.00', '0.00', '50.00', '0.00', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00', 4, NULL, '50.00', '2017-07-12', NULL, NULL, '2017-07-12 07:19:18', '2017-07-12 07:19:18', NULL),
(3, 2, 5, 1, 1, '100000.00', '1000000.00', '0.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', 108, NULL, '10.00', '2017-08-24', NULL, NULL, '2017-07-26 03:48:14', '2017-08-01 04:55:38', '0000-00-00 00:00:00'),
(4, 2, 27, 1, NULL, '150000.00', '750000.00', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', 226, NULL, '5.00', '2019-12-18', NULL, NULL, '2017-07-26 03:48:14', '2017-08-01 04:55:38', '0000-00-00 00:00:00'),
(5, 3, 31, 1, NULL, '0.00', '0.00', '25.00', '15.00', '10.00', '5.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '40.00', '2017-08-25', NULL, NULL, '2017-07-26 04:01:39', '2017-08-01 05:29:15', '0000-00-00 00:00:00'),
(6, 4, 8, 1, 1, '8000.00', '64000.00', '0.00', '10.00', '0.00', '0.00', '5.00', '3.00', '3.00', '0.00', 108, NULL, '8.00', '2017-07-29', NULL, NULL, '2017-07-26 05:36:00', '2017-07-26 05:36:00', NULL),
(7, 5, 34, 1, NULL, '2500.00', '25000.00', '0.00', '10.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2, '1', '10.00', '2017-08-01', NULL, NULL, '2017-08-01 04:54:47', '2017-08-05 11:39:28', '0000-00-00 00:00:00'),
(8, 2, 5, 1, 1, '100000.00', '1000000.00', '5.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', 108, '1', '10.00', '2019-12-18', NULL, NULL, '2017-08-01 04:55:38', '2017-08-01 06:14:42', '0000-00-00 00:00:00'),
(9, 2, 6, 1, NULL, '150000.00', '750000.00', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', 226, '2', '5.00', '2019-12-18', NULL, NULL, '2017-08-01 04:55:38', '2017-08-01 06:14:42', '0000-00-00 00:00:00'),
(10, 3, 31, 1, NULL, '0.00', '0.00', '25.00', '15.00', '10.00', '5.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '40.00', NULL, NULL, NULL, '2017-08-01 05:29:15', '2017-08-01 05:31:10', '0000-00-00 00:00:00'),
(11, 3, 31, 1, NULL, '0.00', '0.00', '25.00', '15.00', '10.00', '5.00', '0.00', '0.00', '0.00', '0.00', NULL, '1', '40.00', NULL, NULL, NULL, '2017-08-01 05:31:10', '2017-08-05 11:49:16', '0000-00-00 00:00:00'),
(12, 2, 5, 1, 1, '100000.00', '1000000.00', '0.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', 108, '1', '10.00', '2017-08-21', NULL, NULL, '2017-08-01 06:14:42', '2017-08-05 11:45:35', '0000-00-00 00:00:00'),
(13, 2, 6, 1, NULL, '150000.00', '750000.00', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', 226, '', '5.00', '2019-12-18', NULL, NULL, '2017-08-01 06:14:42', '2017-08-05 11:45:35', '0000-00-00 00:00:00'),
(14, 5, 34, 1, NULL, '2500.00', '25000.00', '0.00', '10.00', '10.00', '10.00', '0.00', '0.00', '0.00', '0.00', 2, NULL, '10.00', '2017-08-22', NULL, NULL, '2017-08-05 11:39:28', '2017-08-05 11:39:28', NULL),
(15, 2, 5, 1, 1, '100000.00', '1000000.00', '6.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', 108, NULL, '10.00', '2019-12-18', NULL, NULL, '2017-08-05 11:45:36', '2017-08-05 11:45:36', NULL),
(16, 2, 6, 1, NULL, '150000.00', '750000.00', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', 226, NULL, '5.00', '2019-12-18', NULL, NULL, '2017-08-05 11:45:36', '2017-08-05 11:45:36', NULL),
(17, 3, 31, 1, NULL, '0.00', '0.00', '25.00', '15.00', '10.00', '5.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '40.00', NULL, NULL, NULL, '2017-08-05 11:49:16', '2017-08-05 11:49:16', NULL),
(18, 6, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-08-05 11:49:53', '2017-08-05 11:50:04', '0000-00-00 00:00:00'),
(19, 6, 5, 1, NULL, '0.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2.00', NULL, NULL, NULL, '2017-08-05 11:50:04', '2017-09-17 04:58:52', '0000-00-00 00:00:00'),
(20, 7, 6, 1, NULL, '0.00', '0.00', '6.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1, NULL, '6.00', '2017-08-05', NULL, NULL, '2017-08-05 11:53:14', '2017-08-05 11:53:14', NULL),
(21, 7, 27, 1, NULL, '0.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 108, NULL, '2.00', '2019-12-18', NULL, NULL, '2017-08-05 11:53:14', '2017-08-05 11:53:14', NULL),
(22, 8, 5, 1, 1, '250000.00', '1250000.00', '0.00', '0.00', '0.00', '0.00', '2.00', '3.00', '2.00', '1.00', 98, NULL, '5.00', '2017-08-25', '', NULL, '2017-08-05 11:57:16', '2017-10-30 08:26:00', NULL),
(23, 9, 6, 1, NULL, '0.00', '0.00', '88.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '88.00', '2017-08-19', NULL, NULL, '2017-08-14 09:40:56', '2017-08-14 09:40:56', NULL),
(24, 10, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-08-14 11:57:36', '2017-08-14 11:57:36', NULL),
(25, 11, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-08-14 12:06:47', '2017-08-27 07:37:47', '0000-00-00 00:00:00'),
(26, 12, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-08-14 12:14:54', '2017-08-27 07:41:33', '0000-00-00 00:00:00'),
(28, 14, 32, 1, 1, '250.00', '25000.00', '90.00', '10.00', '8.00', '2.00', '0.00', '0.00', '0.00', '0.00', 81, NULL, '100.00', '2018-03-01', NULL, NULL, '2017-08-16 10:00:11', '2017-08-16 10:00:11', NULL),
(29, 14, 9, 1, 1, '25000.00', '175000.00', '5.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', 108, NULL, '7.00', '2023-02-01', NULL, NULL, '2017-08-16 10:00:11', '2017-08-16 10:00:11', NULL),
(30, 12, 5, 1, NULL, '0.00', '0.00', '0.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-08-27 07:41:34', '2017-08-27 07:41:34', NULL),
(31, 15, 6, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-08-28 10:49:15', '2017-08-28 10:49:15', NULL),
(32, 16, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-08-28 11:13:03', '2017-08-28 11:13:03', NULL),
(33, 17, 6, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-08-28 11:18:15', '2017-08-28 11:18:15', NULL),
(34, 18, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-17 04:56:14', '2017-09-17 04:56:14', NULL),
(35, 6, 5, 1, NULL, '0.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2.00', NULL, NULL, NULL, '2017-09-17 04:58:52', '2017-09-17 05:01:26', '0000-00-00 00:00:00'),
(36, 6, 5, 1, NULL, '0.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2.00', NULL, NULL, NULL, '2017-09-17 05:01:26', '2017-09-17 05:01:26', NULL),
(37, 19, 11, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-18 04:36:49', '2017-09-18 06:16:04', '0000-00-00 00:00:00'),
(38, 19, 11, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-18 06:16:04', '2017-09-18 06:16:04', NULL),
(39, 20, 14, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-18 06:37:47', '2017-09-18 06:52:12', '0000-00-00 00:00:00'),
(40, 20, 14, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-18 06:52:12', '2017-09-18 06:55:52', '0000-00-00 00:00:00'),
(41, 20, 14, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-18 06:55:52', '2017-09-18 06:56:28', '0000-00-00 00:00:00'),
(42, 20, 14, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-18 06:56:29', '2017-09-18 06:56:29', NULL),
(43, 21, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-23 09:46:27', '2017-09-23 10:40:08', '0000-00-00 00:00:00'),
(44, 21, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-23 10:40:08', '2017-09-23 10:41:49', '0000-00-00 00:00:00'),
(45, 21, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-23 10:40:08', '2017-09-23 10:41:49', '0000-00-00 00:00:00'),
(46, 21, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-23 10:41:49', '2017-09-23 10:44:56', '0000-00-00 00:00:00'),
(47, 21, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-23 10:44:57', '2017-09-23 10:49:03', '0000-00-00 00:00:00'),
(48, 21, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-23 10:44:57', '2017-09-23 10:49:03', '0000-00-00 00:00:00'),
(49, 21, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-23 10:49:03', '2017-09-23 10:49:20', '0000-00-00 00:00:00'),
(50, 21, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-23 10:49:20', '2017-09-23 10:49:20', NULL),
(51, 22, 5, 1, NULL, '0.00', '0.00', '550.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '550.00', NULL, NULL, NULL, '2017-09-23 11:01:51', '2017-09-23 11:02:01', '0000-00-00 00:00:00'),
(52, 22, 5, 1, NULL, '0.00', '0.00', '550.00', '10.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '560.00', NULL, NULL, NULL, '2017-09-23 11:02:01', '2017-09-23 11:02:01', NULL),
(53, 23, 27, 1, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '955.00', '0.00', '0.00', '0.00', NULL, NULL, '955.00', NULL, NULL, NULL, '2017-09-23 11:03:13', '2017-09-23 11:03:22', '0000-00-00 00:00:00'),
(54, 23, 27, 1, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '955.00', '50.00', '0.00', '50.00', NULL, NULL, '1005.00', NULL, 'YES ', NULL, '2017-09-23 11:03:22', '2017-10-08 07:23:15', NULL),
(55, 24, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-09-23 11:05:35', '2017-09-23 11:05:35', NULL),
(56, 25, 6, 1, NULL, '0.00', '0.00', '0.00', '2.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2.00', NULL, NULL, NULL, '2017-09-23 11:06:16', '2017-10-30 08:31:25', NULL),
(57, 26, 9, 1, NULL, '0.00', '0.00', '40.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '40.00', NULL, NULL, NULL, '2017-09-27 04:23:46', '2017-09-27 04:45:00', NULL),
(58, 27, 9, 1, NULL, '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '5.00', NULL, NULL, NULL, '2017-09-27 04:47:37', '2017-09-27 04:48:45', NULL),
(59, 27, 6, 1, NULL, '0.00', '0.00', '6.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '6.00', NULL, NULL, NULL, '2017-09-27 04:47:37', '2017-09-27 05:25:36', '0000-00-00 00:00:00'),
(60, 27, 7, 1, NULL, '0.00', '0.00', '6.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '6.00', NULL, NULL, NULL, '2017-09-27 05:25:36', '2017-09-27 05:25:36', NULL),
(61, 27, 27, 1, NULL, '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '5.00', NULL, NULL, NULL, '2017-09-27 05:30:01', '2017-09-27 05:35:37', '2017-09-27 05:35:37'),
(62, 27, 8, 1, NULL, '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '5.00', NULL, NULL, NULL, '2017-09-27 06:49:26', '2017-09-27 06:50:04', '2017-09-27 06:50:04'),
(63, 28, 6, 1, NULL, '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '10.00', NULL, 'test specification 1', NULL, '2017-09-27 06:53:45', '2017-10-08 07:09:33', NULL),
(64, 28, 8, 1, NULL, '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '5.00', NULL, NULL, NULL, '2017-09-27 06:53:45', '2017-09-27 06:57:45', '2017-09-27 06:57:45'),
(65, 28, 7, 1, NULL, '0.00', '0.00', '6.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '6.00', NULL, NULL, NULL, '2017-09-27 06:55:03', '2017-09-27 06:59:10', '2017-09-27 06:59:10'),
(66, 28, 10, 1, NULL, '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '5.00', NULL, 'test specification 2', NULL, '2017-09-27 06:57:46', '2017-10-08 07:09:33', NULL),
(67, 28, 8, 1, NULL, '0.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2.00', NULL, 'test specification 3', NULL, '2017-09-27 07:22:04', '2017-10-08 07:09:33', NULL),
(68, 29, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, 'hello 1', NULL, '2017-10-01 08:38:27', '2017-10-01 08:38:27', NULL),
(69, 30, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, '1 item enter against 5 monitor', NULL, '2017-10-01 08:42:09', '2017-10-01 08:42:41', NULL),
(70, 31, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, '1 monitor receive edit', NULL, '2017-10-01 09:06:29', '2017-10-01 09:07:03', NULL),
(71, 31, 6, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, 'Hp monitor receive edit', NULL, '2017-10-01 09:06:30', '2017-10-01 09:07:04', NULL),
(72, 32, 6, 1, NULL, '0.00', '0.00', '0.00', '1.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, '2 maintenance 1 receive edit hp', NULL, '2017-10-01 09:47:10', '2017-11-25 11:00:20', '2017-11-25 11:00:20'),
(73, 32, 5, 1, NULL, '0.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2.00', NULL, '1 maintenance 1 receive edit monitor edit', NULL, '2017-10-01 09:47:10', '2017-11-25 11:00:20', '2017-11-25 11:00:20'),
(74, 33, 5, 1, NULL, '0.00', '0.00', '2.00', '4.00', '3.00', '1.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '6.00', NULL, 'YES', NULL, '2017-10-03 05:25:07', '2017-10-30 08:26:30', NULL),
(75, 34, 6, 1, NULL, '0.00', '0.00', '0.00', '2.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2.00', NULL, 'un rep 2 edit', NULL, '2017-10-30 08:48:57', '2017-10-30 08:51:19', NULL),
(76, 35, 5, 1, NULL, '0.00', '0.00', '0.00', '1.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-11-25 11:01:03', '2017-11-25 11:01:03', NULL),
(77, 35, 6, 1, NULL, '0.00', '0.00', '0.00', '1.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2017-11-25 11:01:03', '2017-11-25 11:01:03', NULL),
(78, 36, 6, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, 'SL-1', NULL, '2017-11-28 10:11:38', '2017-11-28 10:11:38', NULL),
(79, 38, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, 'ok', NULL, '2017-12-05 08:41:03', '2017-12-05 08:41:03', NULL),
(80, 39, 5, 1, NULL, '0.00', '0.00', '3.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '3.00', NULL, '', NULL, '2017-12-05 08:43:41', '2017-12-05 11:19:15', '2017-12-05 11:19:15'),
(81, 40, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, '', NULL, '2017-12-05 09:04:23', '2017-12-05 10:46:37', '2017-12-05 10:46:37'),
(82, 41, 10, 1, NULL, '0.00', '0.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '4.00', NULL, '', NULL, '2017-12-05 09:05:25', '2017-12-05 09:41:43', '2017-12-05 09:41:43'),
(83, 43, 10, 1, NULL, '0.00', '0.00', '50.00', '51.00', '30.00', '21.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '101.00', NULL, 'ok', NULL, '2017-12-05 11:11:37', '2017-12-05 11:13:16', '2017-12-05 11:13:16'),
(84, 39, 8, 1, NULL, '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '5.00', NULL, '', NULL, '2017-12-05 11:18:37', '2017-12-05 11:18:37', NULL),
(85, 39, 10, 1, NULL, '0.00', '0.00', '3.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '3.00', NULL, '', NULL, '2017-12-05 11:19:15', '2017-12-05 11:19:52', '2017-12-05 11:19:52'),
(86, 39, 7, 1, NULL, '0.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2.00', NULL, '', NULL, '2017-12-05 11:19:52', '2017-12-05 11:19:52', NULL),
(87, 46, 10, 1, NULL, '0.00', '0.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '30.00', NULL, '', NULL, '2017-12-05 11:33:22', '2017-12-05 11:33:22', NULL),
(88, 46, 8, 1, NULL, '0.00', '0.00', '15.00', '20.00', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '35.00', NULL, '', NULL, '2017-12-05 11:34:08', '2017-12-05 11:40:07', '2017-12-05 11:40:07'),
(89, 46, 7, 1, NULL, '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '5.00', NULL, '', NULL, '2017-12-05 11:40:07', '2017-12-05 11:40:07', NULL),
(90, 47, 5, 1, NULL, '0.00', '0.00', '0.00', '20.00', '20.00', '20.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '20.00', NULL, '', NULL, '2018-01-08 04:29:03', '2018-01-08 04:30:40', NULL),
(91, 47, 6, 1, NULL, '0.00', '0.00', '0.00', '60.00', '60.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '60.00', NULL, '', NULL, '2018-01-08 04:34:28', '2018-01-08 04:34:28', NULL),
(92, 48, 5, 1, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0.00', '0.00', NULL, NULL, '30.00', NULL, '', NULL, '2018-01-08 04:39:41', '2018-01-08 04:39:41', NULL),
(93, 48, 7, 1, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '70.00', '0.00', '0.00', '0.00', NULL, NULL, '70.00', NULL, '', NULL, '2018-01-08 04:39:41', '2018-01-08 04:39:41', NULL),
(94, 48, 9, 1, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '50.00', '0.00', '0.00', '0.00', NULL, NULL, '50.00', NULL, '', NULL, '2018-01-08 04:41:17', '2018-01-08 04:41:17', NULL),
(95, 49, 5, 1, NULL, '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '5.00', NULL, '', NULL, '2018-01-08 04:51:02', '2018-01-08 04:51:02', NULL),
(96, 49, 7, 1, NULL, '0.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2.00', NULL, '', NULL, '2018-01-08 04:51:02', '2018-01-08 04:51:02', NULL),
(97, 49, 6, 1, NULL, '0.00', '0.00', '3.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '3.00', NULL, '', NULL, '2018-01-08 04:51:31', '2018-01-08 04:51:31', NULL),
(98, 50, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2018-01-08 04:57:42', '2018-01-08 04:57:42', NULL),
(99, 50, 6, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, NULL, '2018-01-08 04:57:42', '2018-01-08 04:57:42', NULL),
(100, 51, 5, 1, NULL, '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '5.00', NULL, '', NULL, '2018-01-08 05:07:27', '2018-01-08 05:07:27', NULL),
(101, 51, 6, 1, NULL, '0.00', '0.00', '3.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '3.00', NULL, '', NULL, '2018-01-08 05:07:27', '2018-01-08 05:07:27', NULL),
(102, 51, 7, 1, NULL, '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '10.00', NULL, '', NULL, '2018-01-08 05:07:59', '2018-01-08 05:07:59', NULL),
(103, 52, 5, 1, NULL, '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, 'rtgtfd', NULL, '2018-01-08 05:12:27', '2018-01-08 05:13:21', NULL),
(104, 53, 5, 1, NULL, '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '10.00', NULL, '', NULL, '2018-01-08 05:54:53', '2018-01-08 05:54:53', NULL),
(105, 54, 5, 1, NULL, '0.00', '0.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '4.00', NULL, NULL, NULL, '2018-01-28 06:01:56', '2018-01-28 06:31:42', '2018-01-28 06:31:42'),
(106, 54, 6, 1, NULL, '0.00', '0.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '4.00', NULL, NULL, NULL, '2018-01-28 06:05:40', '2018-01-28 06:31:42', NULL),
(107, 55, 38, 3, NULL, '0.00', '0.00', '1600.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 18, NULL, '1600.00', NULL, '', NULL, '2018-05-22 06:20:18', '2018-05-22 06:20:18', NULL),
(108, 55, 39, 3, NULL, '0.00', '0.00', '1000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 18, NULL, '1000.00', NULL, '', NULL, '2018-05-22 06:20:19', '2018-05-22 06:20:19', NULL),
(109, 55, 40, 3, NULL, '0.00', '0.00', '500.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '500.00', NULL, '', NULL, '2018-05-22 06:20:19', '2018-05-22 06:20:19', NULL),
(110, 55, 41, 3, NULL, '0.00', '0.00', '750.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '750.00', NULL, '', NULL, '2018-05-22 06:20:19', '2018-05-22 06:20:19', NULL),
(111, 55, 42, 3, NULL, '0.00', '0.00', '1500.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 18, NULL, '1500.00', NULL, '', NULL, '2018-05-22 06:20:19', '2018-05-22 06:20:19', NULL),
(112, 56, 38, 3, NULL, '0.00', '0.00', '150.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '150.00', NULL, '', NULL, '2018-05-23 05:43:02', '2018-05-23 05:43:02', NULL),
(113, 56, 39, 3, NULL, '0.00', '0.00', '365.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '365.00', NULL, '', NULL, '2018-05-23 05:43:02', '2018-05-23 05:43:02', NULL),
(114, 56, 40, 3, NULL, '0.00', '0.00', '360.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '360.00', NULL, '', NULL, '2018-05-23 05:43:02', '2018-05-23 05:43:02', NULL),
(115, 56, 0, 3, NULL, '0.00', '0.00', '300.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '300.00', NULL, '', NULL, '2018-05-23 05:43:02', '2018-05-23 05:43:02', NULL),
(116, 56, 42, 3, NULL, '0.00', '0.00', '1000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '1000.00', NULL, '', NULL, '2018-05-23 05:43:02', '2018-05-23 05:43:02', NULL),
(117, 57, 41, 3, NULL, '0.00', '0.00', '250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '250.00', NULL, '', NULL, '2018-05-23 05:44:59', '2018-05-23 05:44:59', NULL),
(118, 58, 38, 3, NULL, '0.00', '0.00', '250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1, NULL, '250.00', '2018-05-24', '', NULL, '2018-05-24 05:03:38', '2018-05-24 05:03:38', NULL),
(119, 59, 40, 3, NULL, '0.00', '0.00', '360.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2, NULL, '360.00', NULL, '', NULL, '2018-05-24 05:04:44', '2018-05-24 05:04:44', NULL),
(120, 60, 39, 3, NULL, '0.00', '0.00', '150.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 5, NULL, '150.00', NULL, '', NULL, '2018-05-24 05:07:12', '2018-05-24 05:07:12', NULL),
(121, 61, 38, 3, NULL, '0.00', '0.00', '150.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 5, NULL, '150.00', '2018-06-02', '', NULL, '2018-06-02 08:24:45', '2018-06-02 08:24:45', NULL),
(122, 61, 39, 3, NULL, '0.00', '0.00', '250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 17, NULL, '250.00', NULL, '', NULL, '2018-06-02 08:24:45', '2018-06-02 08:24:45', NULL),
(123, 61, 40, 3, NULL, '0.00', '0.00', '457.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '457.00', NULL, '', NULL, '2018-06-02 08:24:45', '2018-06-02 08:24:45', NULL),
(124, 62, 41, 3, NULL, '0.00', '0.00', '140.00', '100.00', '100.00', '0.00', '0.00', '0.00', '0.00', '0.00', 16, NULL, '240.00', NULL, '', NULL, '2018-06-02 08:26:38', '2018-06-02 08:26:38', NULL),
(125, 63, 38, 3, NULL, '0.00', '0.00', '250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 20, NULL, '250.00', '2018-06-02', '', NULL, '2018-06-02 08:46:25', '2018-06-02 08:46:25', NULL),
(126, 64, 42, 3, NULL, '0.00', '0.00', '150.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2, NULL, '150.00', NULL, '', NULL, '2018-06-02 08:50:06', '2018-06-02 08:50:06', NULL),
(127, 65, 6, 1, NULL, '0.00', '0.00', '4.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '6.00', NULL, '', NULL, '2018-07-02 09:03:23', '2018-07-02 09:03:23', NULL),
(128, 65, 0, 0, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, '', NULL, '2018-07-02 09:03:23', '2018-07-02 09:03:23', NULL),
(129, 69, 6, 1, NULL, '0.00', '0.00', '5.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '7.00', NULL, '', NULL, '2018-07-02 09:18:23', '2018-07-02 09:18:23', NULL),
(130, 70, 6, 1, NULL, '0.00', '0.00', '5.00', '6.00', '6.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '11.00', NULL, '', NULL, '2018-07-02 09:34:30', '2018-07-02 09:34:30', NULL),
(131, 70, 27, 1, NULL, '0.00', '0.00', '3.00', '5.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '8.00', NULL, '', NULL, '2018-07-02 09:34:30', '2018-07-02 09:34:30', NULL),
(132, 71, 6, 1, NULL, '0.00', '0.00', '4.00', '3.00', '3.00', '3.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '7.00', NULL, '', '6', '2018-07-02 09:57:20', '2018-07-03 07:34:27', NULL),
(133, 71, 27, 1, NULL, '0.00', '0.00', '2.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '3.00', NULL, '', NULL, '2018-07-02 09:57:20', '2018-07-02 11:27:39', NULL),
(134, 72, 6, 1, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, '', '6', '2018-07-02 10:16:01', '2018-07-02 10:16:01', NULL),
(135, 73, 6, 1, NULL, '0.00', '0.00', '5.00', '2.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '7.00', NULL, '', '6', '2018-07-02 11:45:32', '2018-07-03 09:30:50', NULL),
(136, 73, 27, 1, NULL, '0.00', '0.00', '5.00', '4.00', '4.00', '4.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '9.00', NULL, '', NULL, '2018-07-02 11:45:32', '2018-07-03 09:29:52', NULL),
(137, 73, 31, 1, NULL, '0.00', '0.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '4.00', NULL, '', NULL, '2018-07-03 09:33:40', '2018-07-03 09:33:40', NULL),
(138, 74, 27, 1, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', NULL, NULL, '5.00', NULL, '', NULL, '2018-07-11 08:19:24', '2018-07-12 06:27:47', '2018-07-12 06:27:47'),
(139, 74, 6, 1, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, '', NULL, '2018-07-11 08:19:24', '2018-07-12 06:27:47', '2018-07-12 06:27:47'),
(140, 74, 31, 1, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00', '0.00', '0.00', '0.00', NULL, NULL, '3.00', NULL, '', NULL, '2018-07-11 09:28:42', '2018-07-11 09:28:42', NULL),
(141, 75, 27, 1, NULL, '0.00', '0.00', '2.00', '2.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '4.00', NULL, '', NULL, '2018-07-12 08:43:26', '2018-07-12 09:02:01', NULL),
(142, 75, 6, 1, NULL, '0.00', '0.00', '4.00', '8.00', '3.00', '5.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '12.00', NULL, '', NULL, '2018-07-12 08:43:26', '2018-07-12 09:02:01', NULL),
(143, 75, 31, 1, NULL, '0.00', '0.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2.00', NULL, '', NULL, '2018-07-12 08:51:25', '2018-07-12 08:51:25', NULL),
(144, 76, 27, 1, NULL, '0.00', '0.00', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '20.00', NULL, '', NULL, '2018-07-22 12:15:12', '2018-07-22 12:15:12', NULL),
(145, 76, 6, 1, NULL, '0.00', '0.00', '29.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '29.00', NULL, '', NULL, '2018-07-22 12:15:12', '2018-07-22 12:15:12', NULL),
(146, 77, 6, 1, NULL, '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '5.00', NULL, '', NULL, '2018-07-23 06:14:39', '2018-07-23 06:14:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, '2017-03-30 10:12:49', '2017-03-30 10:12:49', 'Father'),
(2, NULL, '2017-03-30 10:12:57', '2017-03-30 10:12:57', 'Mother'),
(3, NULL, '2017-04-18 11:20:09', '2017-04-18 11:20:09', 'Spouse'),
(4, NULL, '2017-04-26 13:46:18', '2017-04-26 13:46:18', 'Children'),
(5, NULL, '2017-04-26 13:47:11', '2017-04-26 13:47:11', 'Father in Law'),
(6, NULL, '2017-04-26 13:47:23', '2017-04-26 13:47:23', 'Mother in Law');

-- --------------------------------------------------------

--
-- Table structure for table `resident_infos`
--

CREATE TABLE `resident_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `resident_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resident_address` text COLLATE utf8_unicode_ci NOT NULL,
  `taken_date` date NOT NULL,
  `leave_date` date NOT NULL,
  `approval_authority` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `resident_infos`
--

INSERT INTO `resident_infos` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `resident_type`, `resident_address`, `taken_date`, `leave_date`, `approval_authority`) VALUES
(1, NULL, '2017-05-25 06:39:39', '2017-05-25 06:39:39', 2, 'Govt. Family', 'Address', '2017-05-25', '2017-05-25', 'Defense Ministry');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', NULL, '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(2, 'ADMIN', 'Admin', '', NULL, '2017-02-27 03:58:32', '2017-02-27 03:58:32'),
(3, 'WING_HR', 'WING HR', NULL, NULL, '2017-02-28 05:00:01', '2017-04-22 09:35:05'),
(4, 'WING_INVENTORY', 'Wing Inventory', 'des', NULL, '2017-04-19 04:55:11', '2017-04-19 04:55:11'),
(5, 'WING_ADMIN', 'Wing Admin', NULL, NULL, '2017-04-22 11:39:28', '2017-04-22 11:39:28'),
(6, 'BATTALION_ADMIN', 'Battalion Admin', NULL, NULL, '2017-04-26 09:12:48', '2017-04-26 09:12:48'),
(7, 'EMPLOYEE', 'Employee', 'Employee', NULL, '2017-05-13 05:19:12', '2017-05-13 05:19:12'),
(13, 'ADMIN_PERSONNEL', 'Admin Personnel', NULL, NULL, '2017-05-18 09:44:07', '2017-05-18 09:44:07'),
(14, 'VEHICLE_EMPLOYEE', 'VEHICLE_EMPLOYEE', NULL, NULL, '2017-05-25 10:12:22', '2017-05-25 10:12:22'),
(15, 'TRAINING_SCHOOL', 'TRAINING_SCHOOL', NULL, NULL, '2017-06-14 05:32:55', '2017-06-14 05:32:55'),
(16, 'BOMB_ADMIN', 'Bomb Admin', 'Manages the activities related to Bomb Disposal Unit.', NULL, '2018-05-21 08:20:30', '2018-05-21 09:04:17'),
(17, 'BOMB_OPERATOR', 'Bomb Operator', 'Entry bomb disposal record from battalion other than HQ', NULL, '2018-05-21 09:05:35', '2018-05-21 09:05:35'),
(18, 'Ration', 'Ration', 'To manage ration related issue', NULL, '2018-06-02 07:54:00', '2018-06-02 07:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_menu`
--

CREATE TABLE `role_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_menu`
--

INSERT INTO `role_menu` (`id`, `role_id`, `menu_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 30, 1, 1, 1, 1, '2017-03-04 18:00:00', '2017-03-06 22:23:04', NULL),
(2, 1, 33, 1, 0, 0, 0, '2017-03-04 18:00:00', '2017-03-06 22:52:35', '2017-03-06 21:54:22'),
(3, 1, 18, 1, 1, 1, 1, '2017-03-04 18:00:00', '2017-03-06 22:23:04', '2017-03-06 21:58:39'),
(4, 1, 1, 1, 1, 1, 1, NULL, '2017-03-06 22:23:04', NULL),
(5, 1, 2, 1, 1, 1, 1, NULL, '2017-03-06 22:23:04', NULL),
(6, 1, 4, 1, 1, 1, 1, '2017-03-04 18:00:00', '2017-03-06 22:23:04', NULL),
(7, 1, 29, 1, 1, 1, 1, NULL, '2017-03-06 22:23:04', NULL),
(8, 1, 35, 1, 1, 1, 1, '2017-03-05 18:00:00', '2017-03-07 00:23:13', NULL),
(9, 1, 10, 1, 0, 0, 0, NULL, '2017-03-06 23:39:01', NULL),
(11, 1, 11, 1, 1, 1, 1, NULL, '2017-03-06 22:23:04', NULL),
(12, 1, 13, 1, 1, 1, 1, NULL, '2017-03-06 22:23:04', NULL),
(13, 2, 3, 1, 0, 0, 0, '2017-03-06 05:29:00', '2017-03-07 00:03:30', NULL),
(14, 2, 4, 1, 0, 1, 0, '2017-03-06 05:29:00', '2017-03-07 00:18:44', NULL),
(15, 2, 5, 1, 0, 0, 0, '2017-03-06 05:29:00', NULL, NULL),
(16, 3, 3, 1, 0, 0, 0, '2017-03-06 05:29:00', NULL, NULL),
(17, 3, 4, 1, 1, 0, 0, '2017-03-06 05:29:00', '2017-03-06 05:43:49', NULL),
(18, 3, 5, 1, 1, 0, 0, '2017-03-06 05:29:00', '2017-03-22 06:33:38', NULL),
(19, 2, 6, 1, 0, 0, 0, '2017-03-06 05:29:30', NULL, NULL),
(20, 3, 7, 1, 0, 0, 1, '2017-03-06 05:44:28', '2017-04-22 10:04:14', '2017-04-22 10:04:14'),
(21, 2, 7, 1, 0, 0, 1, '2017-03-06 05:45:17', NULL, NULL),
(22, 2, 14, 1, 0, 0, 1, '2017-03-06 05:45:17', NULL, NULL),
(23, 2, 20, 1, 0, 0, 1, '2017-03-06 05:45:17', NULL, NULL),
(24, 3, 14, 1, 0, 0, 1, '2017-03-06 05:45:17', '2017-04-22 10:04:31', '2017-04-22 10:04:31'),
(25, 3, 20, 1, 0, 0, 1, '2017-03-06 05:45:17', '2017-03-06 21:52:21', '2017-03-06 21:52:21'),
(26, 1, 3, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(27, 1, 5, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(28, 1, 6, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(29, 1, 7, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(30, 1, 8, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(31, 1, 14, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(32, 1, 19, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(33, 1, 20, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(34, 1, 21, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(35, 1, 22, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(36, 1, 23, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(37, 1, 24, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(38, 1, 25, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(39, 1, 26, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(40, 1, 27, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(41, 1, 28, 1, 1, 1, 1, '2017-03-06 22:23:04', NULL, NULL),
(42, 1, 32, 1, 0, 0, 0, '2017-03-06 22:52:35', '2017-03-06 22:58:37', '2017-03-06 22:58:37'),
(43, 1, 32, 1, 0, 0, 1, '2017-03-06 23:03:46', '2017-03-06 23:04:04', '2017-03-06 23:04:04'),
(44, 1, 32, 0, 0, 0, 0, '2017-03-06 23:04:20', '2018-07-22 10:11:33', NULL),
(45, 2, 2, 1, 0, 0, 0, '2017-03-07 00:02:38', '2017-03-07 00:03:18', NULL),
(46, 1, 37, 1, 0, 0, 0, '2017-03-07 02:07:17', '2017-03-07 02:07:17', NULL),
(47, 1, 51, 1, 0, 0, 0, '2017-03-07 02:09:34', '2017-03-07 02:09:34', NULL),
(48, 1, 52, 1, 1, 1, 1, '2017-03-07 21:22:31', '2017-03-07 21:22:31', NULL),
(49, 1, 53, 1, 1, 1, 1, '2017-03-07 21:56:13', '2017-03-15 05:48:02', NULL),
(50, 1, 18, 1, 1, 1, 1, '2017-03-09 12:09:44', '2017-03-09 12:09:44', NULL),
(51, 1, 54, 1, 1, 1, 0, '2017-03-11 09:33:08', '2017-03-11 09:33:08', NULL),
(52, 1, 55, 1, 1, 1, 0, '2017-03-11 09:33:08', '2017-03-11 09:33:08', NULL),
(53, 1, 56, 1, 1, 1, 1, '2017-03-11 09:33:08', '2017-05-18 06:57:21', NULL),
(54, 1, 57, 1, 1, 1, 1, '2017-03-11 09:49:11', '2017-03-11 09:49:11', NULL),
(55, 1, 58, 1, 1, 1, 1, '2017-03-11 10:49:17', '2017-03-11 10:49:17', NULL),
(56, 1, 59, 1, 1, 1, 1, '2017-03-11 12:32:52', '2017-03-11 12:32:52', NULL),
(57, 1, 60, 1, 1, 1, 1, '2017-03-12 08:52:16', '2017-03-12 08:52:16', NULL),
(58, 1, 61, 1, 1, 1, 1, '2017-03-12 09:09:06', '2017-03-12 09:09:06', NULL),
(59, 1, 62, 1, 1, 1, 1, '2017-03-12 09:13:45', '2017-03-12 09:13:45', NULL),
(60, 1, 63, 1, 1, 1, 1, '2017-03-12 09:19:54', '2017-03-12 09:19:54', NULL),
(61, 1, 64, 1, 1, 1, 0, '2017-03-12 10:13:47', '2017-03-12 10:13:47', NULL),
(62, 1, 65, 1, 1, 1, 1, '2017-03-12 10:37:06', '2017-03-12 10:37:06', NULL),
(63, 1, 66, 1, 1, 1, 1, '2017-03-12 10:59:49', '2017-03-12 10:59:49', NULL),
(64, 1, 67, 1, 1, 1, 1, '2017-03-12 11:05:32', '2017-03-12 11:05:32', NULL),
(65, 1, 68, 1, 1, 1, 1, '2017-03-12 11:17:34', '2017-03-12 11:17:34', NULL),
(66, 1, 69, 1, 1, 1, 1, '2017-03-12 11:51:10', '2017-03-12 11:51:10', NULL),
(67, 1, 70, 1, 0, 0, 0, '2017-03-12 12:14:39', '2017-03-12 12:14:39', NULL),
(68, 1, 71, 1, 1, 1, 1, '2017-03-14 11:47:33', '2017-03-14 11:47:33', NULL),
(69, 1, 72, 1, 1, 1, 1, '2017-03-14 11:49:48', '2017-09-28 05:11:44', '2017-09-28 05:11:44'),
(70, 1, 73, 1, 1, 1, 1, '2017-03-14 12:09:40', '2017-03-14 12:09:40', NULL),
(72, 1, 75, 1, 1, 1, 1, '2017-03-16 06:02:20', '2017-03-16 06:02:32', NULL),
(73, 1, 76, 1, 1, 0, 0, '2017-03-20 03:59:15', '2017-03-20 03:59:43', NULL),
(74, 1, 81, 1, 1, 1, 1, '2017-03-21 09:44:56', '2017-03-21 09:44:56', NULL),
(77, 1, 88, 1, 1, 1, 1, '2017-03-23 04:16:13', '2017-03-23 04:16:13', NULL),
(79, 1, 90, 1, 1, 1, 1, '2017-03-23 06:23:54', '2017-03-23 06:23:54', NULL),
(80, 1, 91, 1, 1, 1, 1, '2017-03-29 08:54:46', '2017-03-29 08:54:46', NULL),
(81, 1, 92, 1, 1, 1, 1, '2017-03-30 10:11:13', '2017-03-30 10:11:13', NULL),
(82, 1, 93, 1, 1, 1, 1, '2017-04-01 06:41:15', '2017-04-01 06:41:15', NULL),
(83, 1, 94, 1, 1, 1, 1, '2017-04-01 09:07:03', '2017-04-01 09:07:03', NULL),
(84, 1, 95, 1, 1, 1, 1, '2017-04-01 09:40:15', '2017-04-01 09:40:15', NULL),
(85, 1, 96, 1, 1, 1, 1, '2017-04-01 09:56:35', '2017-04-01 09:56:35', NULL),
(86, 1, 97, 1, 1, 1, 1, '2017-04-01 10:32:08', '2017-04-01 10:32:08', NULL),
(87, 1, 98, 1, 1, 1, 1, '2017-04-01 10:53:09', '2017-04-01 10:53:09', NULL),
(88, 1, 99, 1, 1, 1, 1, '2017-04-01 11:20:26', '2017-04-01 11:20:26', NULL),
(89, 1, 100, 1, 1, 1, 1, '2017-04-01 11:37:23', '2017-04-01 11:37:23', NULL),
(90, 1, 101, 1, 1, 1, 1, '2017-04-02 03:56:19', '2017-04-02 03:56:19', NULL),
(91, 1, 102, 1, 1, 1, 1, '2017-04-02 05:16:20', '2017-04-02 05:16:20', NULL),
(92, 1, 103, 1, 1, 1, 1, '2017-04-02 05:27:09', '2017-04-02 05:27:09', NULL),
(93, 1, 104, 1, 1, 1, 1, '2017-04-02 08:18:09', '2017-04-02 08:18:09', NULL),
(94, 1, 105, 1, 1, 1, 1, '2017-04-02 09:41:12', '2017-04-02 09:41:12', NULL),
(95, 1, 106, 1, 1, 1, 1, '2017-04-02 10:10:40', '2017-04-02 10:10:40', NULL),
(96, 1, 107, 1, 1, 1, 1, '2017-04-02 10:30:10', '2017-04-02 10:30:10', NULL),
(97, 1, 108, 1, 1, 1, 1, '2017-04-02 10:31:16', '2017-04-02 10:31:16', NULL),
(98, 1, 109, 1, 1, 1, 1, '2017-04-02 10:36:52', '2017-04-02 10:36:52', NULL),
(100, 1, 111, 1, 1, 1, 1, '2017-04-02 12:10:29', '2017-04-02 12:10:29', NULL),
(101, 1, 112, 1, 1, 1, 1, '2017-04-03 03:48:28', '2017-04-03 03:48:28', NULL),
(102, 1, 113, 1, 1, 1, 1, '2017-04-03 04:19:38', '2017-04-03 04:19:38', NULL),
(103, 1, 114, 1, 1, 1, 1, '2017-04-03 05:54:17', '2017-06-06 05:06:47', NULL),
(104, 3, 10, 1, 0, 0, 0, '2017-04-03 08:36:09', '2017-04-03 09:11:50', NULL),
(105, 2, 1, 1, 0, 0, 0, '2017-04-03 08:37:21', '2017-04-03 08:37:21', NULL),
(106, 3, 1, 1, 0, 0, 0, '2017-04-03 08:37:35', '2017-04-03 09:06:24', NULL),
(107, 3, 60, 1, 0, 0, 0, '2017-04-03 08:39:33', '2017-04-03 09:08:57', NULL),
(108, 3, 62, 0, 0, 0, 0, '2017-04-03 09:09:33', '2017-04-03 09:09:52', NULL),
(110, 1, 116, 1, 1, 1, 1, '2017-04-05 06:40:20', '2017-04-05 06:40:20', NULL),
(111, 1, 117, 1, 1, 1, 1, '2017-04-05 08:44:26', '2017-04-05 08:44:26', NULL),
(112, 1, 118, 1, 1, 1, 1, '2017-04-05 11:37:11', '2017-04-05 11:37:11', NULL),
(113, 1, 119, 1, 1, 1, 1, '2017-04-05 11:52:23', '2017-04-05 11:52:23', NULL),
(114, 1, 120, 1, 1, 1, 1, '2017-04-06 04:39:24', '2017-04-06 04:39:25', NULL),
(115, 1, 122, 1, 1, 1, 1, '2017-04-08 11:44:12', '2017-04-08 11:44:12', NULL),
(116, 1, 123, 1, 1, 1, 1, '2017-04-09 08:36:04', '2017-04-09 08:36:04', NULL),
(117, 1, 124, 1, 1, 1, 1, '2017-04-09 10:59:19', '2017-04-09 10:59:19', NULL),
(118, 1, 125, 1, 1, 1, 1, '2017-04-10 06:38:37', '2017-04-10 06:38:37', NULL),
(119, 1, 126, 1, 0, 0, 0, '2017-04-10 09:33:47', '2017-04-10 09:33:47', NULL),
(120, 1, 127, 1, 1, 1, 1, '2017-04-11 09:04:58', '2017-04-11 09:04:58', NULL),
(121, 1, 128, 1, 1, 1, 1, '2017-04-11 09:05:13', '2017-04-11 09:05:13', NULL),
(122, 1, 129, 1, 1, 1, 1, '2017-04-11 11:13:18', '2017-04-11 11:13:18', NULL),
(123, 1, 130, 1, 1, 1, 1, '2017-04-12 05:16:35', '2017-04-12 05:16:35', NULL),
(124, 1, 132, 1, 1, 1, 1, '2017-04-12 09:19:13', '2017-04-12 09:19:13', NULL),
(125, 1, 131, 1, 1, 1, 1, '2017-04-12 09:26:59', '2017-04-12 09:26:59', NULL),
(126, 1, 133, 1, 1, 0, 0, '2017-04-12 10:57:52', '2017-04-12 10:57:52', NULL),
(127, 1, 134, 1, 1, 0, 0, '2017-04-13 11:53:21', '2017-04-13 11:53:21', NULL),
(128, 1, 135, 1, 1, 0, 0, '2017-04-15 04:20:49', '2017-04-15 04:20:49', NULL),
(129, 1, 136, 1, 1, 1, 1, '2017-04-16 07:15:33', '2017-04-16 07:15:33', NULL),
(130, 1, 137, 1, 1, 1, 1, '2017-04-17 06:06:29', '2017-04-17 06:06:29', NULL),
(131, 2, 137, 1, 1, 1, 1, '2017-04-17 06:06:29', '2017-04-17 06:06:29', NULL),
(132, 1, 138, 1, 1, 1, 1, '2017-04-18 05:43:58', '2017-04-18 05:43:58', NULL),
(133, 1, 139, 1, 1, 0, 0, '2017-04-18 11:48:35', '2017-04-18 11:48:35', NULL),
(134, 1, 140, 1, 1, 1, 1, '2017-04-18 14:35:53', '2017-04-18 14:35:53', NULL),
(135, 1, 141, 1, 1, 1, 1, '2017-04-19 03:17:21', '2017-04-19 03:18:44', NULL),
(136, 1, 142, 1, 1, 1, 1, '2017-04-19 03:52:56', '2017-04-19 03:52:56', NULL),
(137, 4, 119, 1, 1, 1, 1, '2017-04-19 04:56:39', '2017-04-19 04:56:39', NULL),
(138, 4, 136, 1, 1, 1, 1, '2017-04-19 04:56:39', '2017-04-19 04:56:39', NULL),
(139, 4, 141, 1, 1, 1, 1, '2017-04-19 04:56:39', '2017-04-19 04:56:40', NULL),
(140, 4, 10, 1, 1, 1, 1, '2017-04-19 04:57:35', '2017-04-19 04:57:35', NULL),
(141, 4, 55, 1, 1, 1, 1, '2017-04-19 04:57:35', '2017-04-19 04:57:35', NULL),
(142, 4, 64, 1, 1, 1, 1, '2017-04-19 04:57:35', '2017-04-19 04:57:35', NULL),
(143, 1, 143, 1, 0, 0, 0, '2017-04-19 06:06:15', '2017-04-19 06:06:15', NULL),
(144, 4, 143, 1, 0, 0, 0, '2017-04-19 06:06:15', '2017-04-19 06:06:15', NULL),
(145, 1, 144, 1, 1, 1, 1, '2017-04-19 06:57:42', '2017-04-19 06:57:42', NULL),
(146, 4, 144, 1, 1, 1, 1, '2017-04-19 06:57:42', '2017-04-19 06:57:42', NULL),
(147, 1, 145, 1, 1, 1, 1, '2017-04-19 11:13:52', '2017-04-19 11:15:40', NULL),
(148, 1, 146, 1, 1, 1, 1, '2017-04-22 08:13:07', '2017-04-26 08:50:25', NULL),
(149, 2, 146, 1, 1, 1, 1, '2017-04-22 08:13:07', '2017-04-26 08:50:25', NULL),
(150, 3, 146, 1, 1, 1, 1, '2017-04-22 08:13:07', '2017-04-22 08:13:07', NULL),
(151, 4, 146, 1, 1, 1, 1, '2017-04-22 08:13:07', '2017-05-11 07:05:40', '2017-05-11 07:05:40'),
(152, 3, 105, 1, 1, 1, 1, '2017-04-22 09:38:19', '2017-04-22 09:38:19', NULL),
(153, 3, 132, 1, 1, 1, 1, '2017-04-22 09:40:39', '2017-04-22 09:40:39', NULL),
(154, 3, 112, 1, 0, 0, 0, '2017-04-22 09:59:51', '2017-04-22 09:59:51', NULL),
(155, 3, 54, 1, 0, 0, 0, '2017-04-22 10:03:46', '2017-04-22 10:03:46', NULL),
(156, 3, 96, 1, 1, 1, 0, '2017-04-22 10:06:24', '2017-04-22 10:14:09', NULL),
(157, 3, 100, 1, 1, 1, 0, '2017-04-22 10:06:37', '2017-04-22 10:13:58', NULL),
(158, 3, 98, 1, 0, 0, 0, '2017-04-22 10:07:59', '2017-04-22 10:07:59', NULL),
(159, 3, 88, 1, 1, 1, 0, '2017-04-22 10:08:33', '2017-04-22 10:09:23', NULL),
(160, 3, 99, 1, 1, 1, 0, '2017-04-22 10:11:54', '2017-04-22 10:12:07', NULL),
(161, 3, 76, 1, 0, 0, 0, '2017-04-22 10:57:06', '2017-04-22 10:57:06', NULL),
(162, 3, 70, 1, 0, 0, 0, '2017-04-22 10:57:54', '2017-04-22 10:57:54', NULL),
(163, 5, 54, 1, 1, 1, 1, '2017-04-22 11:42:31', '2017-04-22 11:43:49', '2017-04-22 11:43:49'),
(164, 5, 76, 1, 0, 0, 0, '2017-04-22 11:43:02', '2017-04-22 11:44:26', '2017-04-22 11:44:26'),
(165, 5, 54, 1, 0, 0, 0, '2017-04-22 11:48:28', '2017-04-22 11:48:28', NULL),
(166, 5, 70, 1, 0, 0, 0, '2017-04-22 11:48:28', '2017-04-22 11:48:28', NULL),
(167, 5, 76, 1, 1, 1, 1, '2017-04-22 11:48:28', '2017-05-10 03:39:51', NULL),
(168, 5, 88, 1, 1, 1, 1, '2017-04-22 12:03:43', '2017-04-22 12:03:43', NULL),
(169, 5, 91, 1, 1, 1, 1, '2017-04-22 12:03:43', '2017-04-22 12:03:43', NULL),
(170, 5, 53, 1, 1, 1, 1, '2017-04-22 12:05:12', '2017-04-22 12:05:12', NULL),
(171, 1, 147, 1, 1, 0, 0, '2017-04-23 04:11:20', '2017-04-23 04:11:20', NULL),
(172, 1, 148, 1, 1, 1, 1, '2017-04-23 06:43:09', '2017-04-23 06:44:02', NULL),
(173, 1, 149, 1, 1, 1, 1, '2017-04-23 07:17:41', '2017-04-23 07:18:35', NULL),
(174, 1, 150, 1, 1, 0, 0, '2017-04-23 08:23:45', '2017-04-23 08:23:45', NULL),
(175, 1, 151, 1, 1, 0, 0, '2017-04-24 06:05:33', '2017-04-24 06:05:33', NULL),
(176, 1, 152, 1, 1, 1, 1, '2017-04-25 04:47:39', '2017-04-25 04:47:39', NULL),
(177, 1, 153, 1, 1, 0, 0, '2017-04-25 10:45:18', '2017-04-25 10:45:18', NULL),
(178, 1, 154, 1, 1, 0, 0, '2017-04-25 12:37:28', '2017-04-25 12:37:28', NULL),
(179, 1, 156, 1, 1, 1, 1, '2017-04-26 09:08:15', '2017-04-26 09:08:15', NULL),
(180, 4, 156, 1, 1, 1, 1, '2017-04-26 09:08:15', '2017-04-26 09:08:15', NULL),
(181, 6, 54, 1, 1, 1, 1, '2017-04-26 09:18:26', '2017-04-26 09:18:26', NULL),
(182, 6, 132, 1, 1, 1, 1, '2017-04-26 09:18:26', '2017-04-26 09:18:26', NULL),
(183, 6, 155, 1, 1, 1, 1, '2017-04-26 09:18:26', '2017-04-26 11:33:32', NULL),
(184, 1, 157, 1, 1, 1, 1, '2017-04-26 09:54:24', '2017-04-26 09:55:20', NULL),
(185, 1, 158, 1, 1, 1, 1, '2017-04-26 10:01:30', '2017-04-26 10:02:19', NULL),
(186, 1, 159, 1, 1, 1, 1, '2017-04-26 10:07:26', '2017-04-26 10:09:19', NULL),
(187, 4, 160, 1, 1, 1, 1, '2017-04-26 11:24:23', '2017-04-26 11:24:23', NULL),
(189, 4, 161, 1, 1, 1, 1, '2017-04-26 13:30:47', '2017-04-26 13:30:47', NULL),
(190, 5, 100, 1, 1, 1, 1, '2017-04-27 06:21:22', '2017-04-27 06:21:22', NULL),
(191, 5, 112, 1, 0, 0, 0, '2017-04-27 06:22:13', '2017-04-27 06:22:13', NULL),
(192, 1, 162, 1, 1, 1, 1, '2017-04-27 09:00:04', '2017-04-27 09:01:15', NULL),
(193, 1, 163, 1, 1, 1, 1, '2017-04-27 10:35:03', '2017-04-27 10:35:57', NULL),
(194, 1, 164, 1, 1, 1, 1, '2017-04-27 11:53:35', '2017-04-27 11:54:38', NULL),
(196, 4, 166, 1, 1, 1, 1, '2017-04-29 07:20:33', '2017-04-29 07:20:33', NULL),
(197, 4, 117, 1, 1, 1, 1, '2017-04-30 03:00:13', '2017-04-30 03:00:13', NULL),
(198, 1, 167, 1, 1, 0, 0, '2017-04-30 05:07:04', '2017-04-30 05:07:04', NULL),
(199, 4, 168, 1, 1, 1, 1, '2017-04-30 06:08:42', '2017-04-30 06:08:42', NULL),
(200, 6, 96, 1, 1, 1, 1, '2017-04-30 11:35:22', '2017-04-30 11:35:22', NULL),
(201, 6, 99, 1, 1, 1, 1, '2017-04-30 11:35:22', '2017-04-30 11:35:22', NULL),
(202, 6, 100, 1, 1, 1, 1, '2017-04-30 11:35:22', '2017-04-30 11:35:22', NULL),
(203, 6, 105, 1, 1, 1, 1, '2017-04-30 11:35:22', '2017-04-30 11:35:22', NULL),
(204, 6, 112, 1, 1, 1, 1, '2017-04-30 11:35:22', '2017-04-30 11:35:22', NULL),
(205, 1, 169, 1, 1, 1, 1, '2017-05-03 04:56:42', '2017-05-03 04:58:09', NULL),
(206, 1, 170, 1, 1, 1, 1, '2017-05-03 05:07:19', '2017-05-03 05:07:19', NULL),
(207, 1, 171, 1, 1, 1, 1, '2017-05-06 04:41:15', '2017-05-06 04:41:15', NULL),
(208, 2, 171, 1, 1, 1, 1, '2017-05-06 04:41:15', '2017-05-06 04:41:15', NULL),
(209, 1, 172, 1, 1, 1, 1, '2017-05-06 11:21:15', '2017-05-06 11:21:15', NULL),
(210, 2, 172, 1, 1, 1, 1, '2017-05-06 11:21:15', '2017-05-06 11:21:15', NULL),
(211, 1, 173, 1, 1, 1, 1, '2017-05-07 07:34:34', '2017-05-07 07:34:34', NULL),
(212, 1, 174, 1, 1, 1, 1, '2017-05-07 09:03:39', '2017-05-07 09:03:39', NULL),
(213, 1, 175, 1, 1, 1, 1, '2017-05-07 09:03:39', '2017-05-07 09:03:39', NULL),
(214, 1, 176, 1, 1, 0, 0, '2017-05-07 09:41:31', '2017-05-07 09:41:31', NULL),
(215, 1, 177, 1, 1, 1, 1, '2017-05-08 11:29:50', '2017-05-08 11:29:50', NULL),
(216, 2, 177, 1, 1, 1, 1, '2017-05-08 11:29:50', '2017-05-08 11:29:50', NULL),
(217, 1, 178, 1, 1, 1, 1, '2017-05-09 11:42:58', '2017-05-09 11:42:58', NULL),
(218, 5, 2, 1, 1, 1, 1, '2017-05-10 03:33:40', '2017-05-10 03:33:40', NULL),
(219, 4, 132, 1, 1, 1, 1, '2017-05-11 06:44:09', '2017-05-13 04:20:35', '2017-05-13 04:20:35'),
(220, 4, 146, 1, 1, 1, 1, '2017-05-11 07:06:29', '2017-05-11 07:06:29', NULL),
(221, 4, 180, 1, 1, 1, 1, '2017-05-11 08:50:49', '2017-05-11 08:50:49', NULL),
(222, 4, 181, 1, 1, 1, 1, '2017-05-13 04:21:17', '2017-05-13 04:21:17', NULL),
(223, 1, 183, 1, 1, 1, 1, '2017-05-13 05:38:41', '2017-05-13 05:38:41', NULL),
(224, 4, 182, 1, 1, 1, 1, '2017-05-13 05:39:39', '2017-05-13 05:39:39', NULL),
(225, 6, 184, 1, 1, 1, 1, '2017-05-13 07:06:08', '2017-05-13 07:06:08', NULL),
(226, 1, 185, 1, 0, 0, 0, '2017-05-13 10:59:40', '2017-05-13 10:59:40', NULL),
(227, 2, 185, 1, 0, 0, 0, '2017-05-13 10:59:40', '2017-05-13 10:59:41', NULL),
(228, 1, 186, 1, 1, 1, 1, '2017-05-14 06:03:03', '2017-05-14 06:03:03', NULL),
(229, 2, 186, 1, 1, 1, 1, '2017-05-14 06:03:03', '2017-05-14 06:03:03', NULL),
(230, 1, 187, 1, 1, 1, 1, '2017-05-15 06:35:51', '2017-05-15 06:35:51', NULL),
(231, 2, 187, 1, 1, 1, 1, '2017-05-15 06:35:51', '2017-05-15 06:35:51', NULL),
(232, 5, 187, 1, 1, 1, 1, '2017-05-15 09:39:13', '2017-05-15 09:39:13', NULL),
(233, 6, 187, 1, 1, 1, 1, '2017-05-15 09:39:13', '2017-05-15 09:39:13', NULL),
(234, 1, 188, 1, 1, 1, 1, '2017-05-16 03:44:23', '2017-05-16 03:51:11', NULL),
(235, 7, 188, 1, 1, 1, 1, '2017-05-16 03:51:56', '2017-05-16 03:51:56', NULL),
(236, 7, 183, 1, 1, 0, 0, '2017-05-16 03:52:54', '2017-05-16 03:52:54', NULL),
(237, 5, 96, 1, 1, 1, 1, '2017-05-16 04:11:18', '2017-05-16 04:11:18', NULL),
(238, 1, 189, 1, 1, 0, 0, '2017-05-16 04:30:54', '2017-05-16 04:30:54', NULL),
(239, 5, 132, 1, 1, 1, 1, '2017-05-16 04:34:36', '2017-05-16 04:34:36', NULL),
(241, 1, 191, 1, 1, 1, 1, '2017-05-16 08:05:55', '2017-05-16 08:05:55', NULL),
(242, 5, 193, 1, 1, 1, 1, '2017-05-16 11:28:44', '2017-05-16 11:28:44', NULL),
(243, 1, 192, 1, 0, 0, 0, '2017-05-16 11:31:20', '2017-05-16 11:31:20', NULL),
(244, 1, 194, 1, 1, 1, 1, '2017-05-17 04:29:47', '2017-05-17 04:29:47', NULL),
(245, 2, 194, 1, 1, 1, 1, '2017-05-17 04:29:47', '2017-05-17 04:29:47', NULL),
(246, 1, 195, 1, 1, 1, 1, '2017-05-18 06:41:54', '2017-05-18 06:41:54', NULL),
(247, 1, 196, 1, 1, 1, 1, '2017-05-18 06:59:30', '2017-05-18 06:59:30', NULL),
(248, 1, 197, 1, 1, 1, 1, '2017-05-18 07:02:36', '2017-05-18 07:02:36', NULL),
(249, 7, 191, 1, 1, 1, 0, '2017-05-18 09:46:27', '2017-05-18 09:46:27', NULL),
(250, 1, 198, 1, 1, 1, 1, '2017-05-20 04:29:27', '2017-05-20 04:29:27', NULL),
(251, 1, 199, 1, 1, 1, 1, '2017-05-20 04:39:07', '2017-05-20 04:39:07', NULL),
(253, 1, 201, 1, 1, 1, 1, '2017-05-20 05:40:47', '2017-05-20 05:40:47', NULL),
(254, 1, 202, 1, 1, 1, 1, '2017-05-20 06:40:21', '2017-05-20 06:40:21', NULL),
(255, 1, 203, 1, 1, 1, 1, '2017-05-20 07:06:59', '2017-05-20 07:06:59', NULL),
(256, 1, 204, 1, 1, 1, 1, '2017-05-20 08:11:38', '2017-05-20 08:11:38', NULL),
(257, 1, 205, 1, 1, 1, 1, '2017-05-21 11:08:11', '2017-05-21 11:08:11', NULL),
(258, 2, 205, 1, 1, 1, 1, '2017-05-21 11:08:11', '2017-05-21 11:08:11', NULL),
(259, 1, 206, 1, 1, 1, 1, '2017-05-22 09:10:14', '2017-05-22 09:10:14', NULL),
(260, 1, 207, 1, 1, 1, 1, '2017-05-22 10:14:22', '2017-05-25 10:13:50', '2017-05-25 10:13:50'),
(261, 1, 208, 1, 1, 1, 1, '2017-05-23 05:50:38', '2017-05-23 05:50:38', NULL),
(262, 1, 209, 1, 1, 1, 1, '2017-05-23 11:00:45', '2017-05-23 11:00:45', NULL),
(263, 1, 210, 1, 1, 1, 1, '2017-05-23 12:21:11', '2017-05-23 12:21:11', NULL),
(264, 1, 211, 1, 1, 1, 1, '2017-05-24 08:33:11', '2017-05-24 08:33:11', NULL),
(265, 1, 212, 1, 1, 1, 1, '2017-05-25 07:13:57', '2017-05-25 07:13:57', NULL),
(266, 14, 207, 1, 1, 1, 1, '2017-05-25 10:14:44', '2017-05-25 10:14:44', NULL),
(267, 1, 213, 1, 1, 1, 1, '2017-05-29 04:57:46', '2017-05-29 04:57:46', NULL),
(268, 1, 214, 1, 1, 1, 1, '2017-05-29 05:30:07', '2017-05-29 05:30:07', NULL),
(269, 1, 215, 1, 1, 1, 1, '2017-05-29 05:57:09', '2017-05-29 05:57:09', NULL),
(271, 1, 217, 1, 1, 1, 1, '2017-05-30 08:53:49', '2017-05-30 08:53:49', NULL),
(272, 2, 217, 1, 1, 1, 1, '2017-05-30 08:53:49', '2017-05-30 08:53:50', NULL),
(273, 1, 218, 1, 1, 1, 1, '2017-06-01 03:57:33', '2017-06-01 03:57:33', NULL),
(274, 2, 218, 1, 1, 1, 1, '2017-06-01 03:57:33', '2017-06-01 03:57:33', NULL),
(275, 1, 219, 1, 1, 1, 1, '2017-06-03 05:37:57', '2017-06-03 05:37:57', NULL),
(276, 1, 220, 1, 1, 1, 1, '2017-06-06 05:08:48', '2017-06-06 05:08:48', NULL),
(277, 1, 221, 1, 1, 1, 1, '2017-06-08 03:14:04', '2017-06-08 03:14:04', NULL),
(278, 1, 223, 1, 1, 1, 1, '2017-06-12 09:24:13', '2017-06-12 09:24:13', NULL),
(279, 1, 224, 1, 1, 1, 0, '2017-06-13 06:32:02', '2017-06-13 06:32:02', NULL),
(280, 15, 54, 1, 1, 1, 1, '2017-06-14 05:34:03', '2017-06-17 08:28:23', NULL),
(281, 15, 70, 1, 1, 1, 1, '2017-06-14 05:34:03', '2017-06-14 05:34:03', NULL),
(282, 15, 221, 1, 1, 1, 1, '2017-06-14 05:34:03', '2018-02-24 07:01:22', '2018-02-24 07:01:22'),
(283, 15, 146, 1, 1, 1, 1, '2017-06-17 08:28:23', '2017-06-17 08:28:23', NULL),
(284, 15, 132, 1, 1, 1, 1, '2017-06-17 08:30:14', '2017-06-17 08:30:14', NULL),
(285, 14, 54, 1, 1, 1, 1, '2017-06-17 08:32:53', '2017-06-17 08:32:53', NULL),
(286, 14, 132, 1, 1, 1, 1, '2017-06-17 08:32:53', '2017-06-17 08:32:53', NULL),
(287, 14, 155, 1, 1, 1, 1, '2017-06-17 08:32:53', '2017-06-17 08:32:53', NULL),
(288, 1, 225, 1, 1, 1, 1, '2017-06-18 05:16:59', '2017-06-18 05:16:59', NULL),
(289, 1, 226, 1, 1, 1, 1, '2017-06-19 08:13:47', '2017-06-19 08:13:47', NULL),
(290, 1, 227, 1, 1, 1, 1, '2017-06-20 08:51:05', '2017-06-20 08:51:05', NULL),
(291, 2, 227, 1, 1, 1, 1, '2017-06-20 08:51:05', '2017-06-20 08:51:05', NULL),
(292, 5, 227, 1, 1, 1, 1, '2017-06-20 08:51:05', '2017-06-20 08:51:05', NULL),
(293, 6, 227, 1, 1, 1, 1, '2017-06-20 08:51:05', '2017-06-20 08:51:05', NULL),
(294, 1, 228, 1, 0, 0, 0, '2017-06-21 04:32:29', '2017-06-21 04:32:29', NULL),
(295, 1, 230, 1, 1, 1, 1, '2017-06-21 08:08:15', '2017-06-21 08:08:15', NULL),
(296, 2, 230, 1, 1, 1, 1, '2017-06-21 08:08:15', '2017-06-21 08:08:15', NULL),
(297, 5, 230, 1, 1, 1, 1, '2017-06-21 08:08:15', '2017-06-21 08:08:15', NULL),
(298, 6, 230, 1, 1, 1, 1, '2017-06-21 08:08:15', '2017-06-21 08:08:15', NULL),
(299, 1, 231, 1, 1, 1, 1, '2017-06-21 08:34:53', '2017-06-21 08:34:53', NULL),
(300, 2, 231, 1, 1, 1, 1, '2017-06-21 08:34:53', '2017-06-21 08:34:53', NULL),
(301, 5, 231, 1, 1, 1, 1, '2017-06-21 08:34:53', '2017-06-21 08:34:53', NULL),
(302, 6, 231, 1, 1, 1, 1, '2017-06-21 08:34:53', '2017-06-21 08:34:53', NULL),
(303, 1, 232, 1, 1, 1, 1, '2017-07-03 06:05:15', '2017-07-03 06:05:15', NULL),
(304, 1, 233, 1, 1, 1, 1, '2017-07-03 08:55:26', '2017-07-03 08:55:26', NULL),
(305, 2, 233, 1, 1, 1, 1, '2017-07-03 08:55:26', '2017-07-03 08:55:26', NULL),
(306, 5, 233, 1, 1, 1, 1, '2017-07-03 08:55:26', '2017-07-03 08:55:26', NULL),
(307, 6, 233, 1, 1, 1, 1, '2017-07-03 08:55:26', '2017-07-03 08:55:26', NULL),
(308, 1, 234, 1, 0, 0, 0, '2017-07-05 04:48:27', '2017-07-05 04:48:27', NULL),
(309, 1, 235, 1, 1, 1, 1, '2017-07-05 05:53:40', '2017-07-05 05:53:40', NULL),
(310, 2, 235, 1, 1, 1, 1, '2017-07-05 05:53:40', '2017-07-05 05:53:40', NULL),
(311, 5, 235, 1, 1, 1, 1, '2017-07-05 05:53:40', '2017-07-05 05:53:41', NULL),
(312, 6, 235, 1, 1, 1, 1, '2017-07-05 05:53:40', '2017-07-05 05:53:41', NULL),
(313, 1, 236, 1, 0, 0, 0, '2017-07-05 10:26:52', '2017-07-05 10:26:52', NULL),
(314, 1, 161, 1, 1, 1, 1, '2017-07-12 07:04:20', '2017-07-12 07:04:20', NULL),
(315, 1, 168, 1, 1, 1, 1, '2017-07-12 07:04:20', '2017-07-12 07:04:20', NULL),
(316, 1, 166, 1, 1, 1, 1, '2017-07-12 07:05:13', '2017-07-12 07:05:13', NULL),
(317, 1, 238, 1, 1, 1, 1, '2017-07-13 11:40:51', '2017-07-13 11:40:51', NULL),
(318, 2, 238, 1, 1, 1, 1, '2017-07-13 11:40:51', '2017-07-13 11:40:51', NULL),
(319, 6, 238, 1, 1, 1, 1, '2017-07-13 11:40:51', '2017-07-13 11:40:51', NULL),
(320, 1, 239, 1, 1, 1, 1, '2017-07-15 04:41:49', '2017-07-15 04:41:49', NULL),
(321, 1, 240, 1, 1, 1, 1, '2017-07-15 07:24:02', '2017-07-15 07:24:02', NULL),
(322, 1, 241, 1, 1, 0, 0, '2017-07-15 10:07:08', '2017-07-15 10:07:08', NULL),
(323, 1, 242, 1, 1, 1, 1, '2017-07-22 04:13:49', '2017-07-22 04:13:49', NULL),
(324, 2, 242, 1, 1, 1, 1, '2017-07-22 04:13:49', '2017-07-22 04:13:49', NULL),
(325, 5, 242, 1, 1, 1, 1, '2017-07-22 04:13:49', '2017-07-22 04:13:50', NULL),
(326, 1, 243, 1, 1, 1, 1, '2017-07-22 05:16:35', '2017-07-22 05:16:35', NULL),
(327, 4, 244, 1, 1, 1, 1, '2017-07-22 10:15:46', '2017-07-22 10:16:49', NULL),
(328, 1, 244, 1, 1, 1, 1, '2017-07-22 10:21:24', '2017-07-22 10:21:24', NULL),
(330, 14, 56, 1, 1, 1, 1, '2017-07-24 04:42:20', '2017-07-24 04:42:20', NULL),
(331, 14, 196, 1, 1, 1, 1, '2017-07-24 04:43:16', '2017-07-24 04:43:16', NULL),
(332, 14, 209, 1, 1, 1, 1, '2017-07-24 04:43:16', '2017-07-24 04:43:16', NULL),
(333, 14, 211, 1, 1, 1, 1, '2017-07-24 04:43:16', '2017-07-24 04:43:16', NULL),
(334, 14, 201, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:51', NULL),
(335, 14, 202, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(336, 14, 203, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(337, 14, 205, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(338, 14, 206, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(339, 14, 210, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(340, 14, 212, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(341, 14, 213, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(342, 14, 214, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(343, 14, 215, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(344, 14, 217, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(345, 14, 218, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(346, 14, 219, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(347, 14, 224, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(348, 14, 227, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(349, 14, 230, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(350, 14, 231, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(351, 14, 238, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:52', NULL),
(352, 14, 242, 1, 1, 1, 1, '2017-07-24 04:52:51', '2017-07-24 04:52:53', NULL),
(353, 1, 246, 1, 0, 0, 0, '2017-07-27 05:11:41', '2017-07-27 05:11:41', NULL),
(354, 4, 247, 1, 0, 0, 0, '2017-07-29 04:50:58', '2017-07-29 04:52:38', NULL),
(355, 1, 248, 1, 1, 1, 1, '2017-07-30 09:56:28', '2017-07-30 09:56:28', NULL),
(356, 1, 249, 1, 1, 1, 1, '2017-08-05 05:18:58', '2017-08-05 05:18:58', NULL),
(357, 2, 249, 1, 1, 1, 1, '2017-08-05 05:18:58', '2017-08-05 05:18:58', NULL),
(358, 14, 249, 1, 1, 1, 1, '2017-08-05 05:18:58', '2017-08-05 05:18:58', NULL),
(359, 1, 250, 1, 1, 1, 1, '2017-08-05 06:21:14', '2017-08-05 06:21:14', NULL),
(360, 4, 251, 1, 1, 1, 1, '2017-08-06 06:05:48', '2017-08-06 09:37:01', NULL),
(361, 1, 252, 1, 1, 1, 1, '2017-08-07 08:52:38', '2017-08-07 08:52:38', NULL),
(362, 4, 253, 1, 1, 1, 1, '2017-08-09 05:07:28', '2017-08-09 05:07:28', NULL),
(363, 1, 254, 1, 1, 1, 1, '2017-08-10 06:20:42', '2017-08-10 06:20:42', NULL),
(364, 14, 255, 1, 1, 1, 1, '2017-08-10 10:15:50', '2017-08-10 10:15:50', NULL),
(365, 14, 256, 1, 1, 1, 1, '2017-08-12 05:56:24', '2017-08-12 05:56:24', NULL),
(366, 4, 257, 1, 1, 1, 1, '2017-08-14 07:27:56', '2017-08-14 07:27:56', NULL),
(367, 4, 258, 1, 1, 1, 1, '2017-08-19 04:46:44', '2017-08-19 04:46:44', NULL),
(368, 1, 259, 1, 1, 1, 1, '2017-08-23 09:13:52', '2017-08-23 09:15:39', NULL),
(369, 1, 260, 1, 1, 1, 1, '2017-08-23 09:36:52', '2017-08-23 09:36:52', NULL),
(370, 1, 261, 1, 1, 1, 1, '2017-08-24 08:51:43', '2017-08-24 08:51:43', NULL),
(371, 2, 262, 1, 1, 1, 1, '2017-08-30 06:45:08', '2017-08-30 06:45:08', NULL),
(372, 5, 262, 1, 1, 1, 1, '2017-08-30 06:45:08', '2017-08-30 06:45:08', NULL),
(373, 6, 262, 1, 1, 1, 1, '2017-08-30 06:45:08', '2017-08-30 06:45:08', NULL),
(374, 14, 262, 1, 1, 1, 1, '2017-08-30 06:45:08', '2017-08-30 06:45:08', NULL),
(375, 1, 263, 1, 1, 1, 1, '2017-09-09 09:38:32', '2017-09-09 09:38:32', NULL),
(376, 4, 264, 1, 1, 1, 1, '2017-09-11 06:14:06', '2017-09-11 06:14:06', NULL),
(377, 1, 265, 1, 1, 1, 1, '2017-09-14 09:40:10', '2017-09-14 09:40:11', NULL),
(378, 1, 266, 1, 1, 1, 1, '2017-09-14 10:50:55', '2017-09-14 10:50:55', NULL),
(379, 1, 267, 1, 1, 1, 1, '2017-09-16 10:31:38', '2017-09-16 10:31:38', NULL),
(380, 1, 268, 1, 1, 1, 1, '2017-09-19 06:38:37', '2017-09-19 06:38:37', NULL),
(381, 1, 269, 1, 1, 1, 1, '2017-09-20 08:41:03', '2017-09-20 08:41:03', NULL),
(382, 1, 270, 1, 1, 1, 1, '2017-09-21 08:49:54', '2017-09-21 08:49:54', NULL),
(383, 1, 271, 1, 1, 1, 1, '2017-09-23 05:19:27', '2017-09-23 05:19:27', NULL),
(384, 4, 272, 1, 1, 1, 1, '2017-09-24 05:08:03', '2017-09-24 05:08:03', NULL),
(385, 4, 273, 1, 1, 1, 1, '2017-09-26 06:58:56', '2017-09-26 06:58:56', NULL),
(386, 1, 72, 1, 1, 1, 1, '2017-09-28 05:12:52', '2017-11-15 08:56:12', NULL),
(387, 1, 274, 1, 1, 1, 1, '2017-10-03 06:12:37', '2017-10-03 06:12:37', NULL),
(388, 4, 275, 1, 1, 1, 0, '2017-10-26 08:34:54', '2017-10-26 08:34:54', NULL),
(389, 1, 276, 1, 1, 1, 1, '2017-11-06 09:37:59', '2017-11-06 09:37:59', NULL),
(390, 1, 277, 1, 1, 1, 1, '2017-11-06 09:37:59', '2017-11-06 09:37:59', NULL),
(391, 1, 278, 1, 1, 1, 0, '2017-11-09 08:41:20', '2017-11-09 08:41:20', NULL),
(392, 1, 279, 1, 1, 0, 0, '2017-11-13 05:56:55', '2017-11-13 05:56:55', NULL),
(393, 1, 280, 1, 1, 0, 0, '2017-11-14 09:20:32', '2017-11-14 09:20:33', NULL),
(394, 4, 281, 1, 1, 1, 1, '2017-11-19 09:17:42', '2017-11-19 09:17:42', NULL),
(395, 1, 181, 1, 1, 1, 1, '2017-11-19 11:04:23', '2017-11-19 11:04:23', NULL),
(396, 1, 281, 1, 1, 1, 1, '2017-11-19 11:04:23', '2017-11-19 11:04:23', NULL),
(397, 4, 282, 1, 1, 1, 1, '2017-11-20 07:30:43', '2017-11-20 07:30:43', NULL),
(398, 1, 283, 1, 1, 1, 1, '2017-11-30 07:39:16', '2017-11-30 07:39:16', NULL),
(399, 1, 284, 1, 1, 1, 1, '2017-12-05 06:04:43', '2017-12-05 06:04:43', NULL),
(400, 1, 285, 1, 1, 1, 1, '2017-12-09 11:26:06', '2017-12-09 11:26:06', NULL),
(401, 1, 286, 1, 1, 1, 1, '2017-12-11 07:34:25', '2017-12-11 07:34:25', NULL),
(402, 1, 287, 1, 1, 1, 1, '2017-12-18 07:57:20', '2017-12-18 07:57:20', NULL),
(403, 1, 288, 1, 1, 1, 1, '2017-12-18 10:27:47', '2017-12-18 10:27:47', NULL),
(404, 1, 289, 1, 1, 1, 1, '2018-01-21 10:06:17', '2018-01-21 10:06:17', NULL),
(405, 1, 290, 1, 1, 1, 1, '2018-01-21 12:01:09', '2018-01-21 12:01:09', NULL),
(406, 1, 291, 1, 1, 1, 1, '2018-01-21 12:01:09', '2018-01-21 12:01:09', NULL),
(407, 1, 292, 1, 1, 1, 1, '2018-01-21 12:01:09', '2018-01-21 12:01:09', NULL),
(408, 1, 293, 1, 1, 1, 1, '2018-01-25 08:36:42', '2018-01-25 08:36:42', NULL),
(409, 1, 294, 1, 1, 1, 1, '2018-05-10 04:12:09', '2018-05-10 04:12:09', NULL),
(410, 1, 295, 1, 1, 1, 1, '2018-05-10 04:12:09', '2018-05-10 04:12:09', NULL),
(411, 1, 296, 1, 1, 1, 1, '2018-05-10 04:12:09', '2018-05-10 04:12:09', NULL),
(412, 1, 297, 1, 1, 1, 1, '2018-05-10 04:12:09', '2018-05-10 04:12:09', NULL),
(413, 1, 299, 1, 1, 1, 1, '2018-05-12 04:40:39', '2018-05-12 04:40:39', NULL),
(414, 1, 300, 1, 1, 1, 1, '2018-05-12 04:45:33', '2018-05-12 04:45:33', NULL),
(415, 1, 298, 1, 0, 0, 0, '2018-05-12 04:47:03', '2018-05-12 04:47:03', NULL),
(416, 1, 301, 1, 1, 1, 1, '2018-05-12 05:17:33', '2018-05-12 05:17:33', NULL),
(417, 1, 302, 1, 1, 1, 1, '2018-05-13 09:54:58', '2018-05-13 09:54:58', NULL),
(418, 2, 302, 1, 1, 1, 1, '2018-05-13 09:54:58', '2018-05-13 09:54:58', NULL),
(419, 1, 303, 1, 1, 1, 1, '2018-05-20 04:33:28', '2018-05-20 04:33:28', NULL),
(420, 16, 294, 1, 1, 1, 0, '2018-05-21 08:26:59', '2018-05-21 08:26:59', NULL),
(421, 16, 295, 1, 1, 1, 0, '2018-05-21 08:26:59', '2018-05-21 08:26:59', NULL),
(422, 16, 298, 1, 1, 1, 0, '2018-05-21 08:26:59', '2018-05-21 08:26:59', NULL),
(423, 16, 299, 1, 1, 1, 0, '2018-05-21 08:26:59', '2018-05-21 08:26:59', NULL),
(424, 16, 300, 1, 1, 1, 0, '2018-05-21 08:26:59', '2018-05-21 08:26:59', NULL),
(425, 16, 301, 1, 1, 1, 0, '2018-05-21 08:26:59', '2018-05-21 08:26:59', NULL),
(426, 16, 302, 1, 1, 1, 0, '2018-05-21 08:26:59', '2018-05-21 08:27:00', NULL),
(427, 16, 10, 1, 1, 1, 0, '2018-05-21 09:03:23', '2018-05-21 09:03:23', NULL),
(428, 17, 295, 1, 1, 1, 0, '2018-05-21 09:06:54', '2018-05-21 09:06:54', NULL),
(429, 17, 301, 1, 1, 1, 0, '2018-05-21 09:06:54', '2018-05-21 09:06:54', NULL),
(430, 16, 304, 0, 1, 0, 0, '2018-05-22 08:11:46', '2018-05-22 08:13:14', NULL),
(431, 1, 305, 1, 1, 1, 1, '2018-05-24 04:04:09', '2018-05-24 04:04:09', NULL),
(432, 1, 306, 1, 1, 1, 1, '2018-05-26 06:57:43', '2018-05-26 06:57:43', NULL),
(433, 1, 307, 1, 1, 1, 1, '2018-05-26 08:31:59', '2018-05-26 08:31:59', NULL),
(434, 1, 308, 1, 1, 1, 1, '2018-05-26 08:44:40', '2018-05-26 08:44:40', NULL),
(435, 1, 309, 1, 1, 1, 1, '2018-05-27 07:35:56', '2018-05-27 07:35:56', NULL),
(436, 1, 310, 1, 1, 1, 1, '2018-05-29 05:45:53', '2018-05-29 05:45:53', NULL),
(437, 17, 294, 1, 1, 1, 0, '2018-06-02 05:51:59', '2018-06-02 05:51:59', NULL),
(438, 18, 55, 1, 1, 1, 0, '2018-06-02 07:55:34', '2018-06-02 07:55:34', NULL),
(439, 18, 119, 1, 1, 1, 1, '2018-06-02 07:55:34', '2018-06-02 08:00:13', NULL),
(440, 18, 136, 1, 1, 1, 1, '2018-06-02 07:55:34', '2018-06-02 08:00:13', NULL),
(441, 18, 303, 1, 1, 1, 1, '2018-06-02 07:55:34', '2018-06-02 07:58:09', NULL),
(442, 18, 306, 1, 1, 1, 1, '2018-06-02 07:55:34', '2018-06-02 07:58:09', NULL),
(443, 18, 310, 1, 1, 1, 1, '2018-06-02 07:55:34', '2018-06-02 07:58:09', NULL),
(444, 18, 289, 1, 1, 1, 1, '2018-06-02 07:58:09', '2018-06-02 07:58:09', NULL),
(445, 18, 290, 1, 1, 1, 1, '2018-06-02 07:58:09', '2018-06-02 07:58:09', NULL),
(446, 18, 291, 1, 1, 1, 1, '2018-06-02 07:58:09', '2018-06-02 07:58:09', NULL),
(447, 18, 292, 1, 1, 1, 1, '2018-06-02 07:58:09', '2018-06-02 07:58:09', NULL),
(448, 18, 293, 1, 1, 1, 1, '2018-06-02 07:58:09', '2018-06-02 07:58:09', NULL),
(449, 18, 170, 1, 1, 1, 1, '2018-06-02 08:07:09', '2018-06-02 08:07:09', NULL),
(450, 5, 311, 1, 1, 1, 1, '2018-06-03 07:34:35', '2018-06-03 07:34:35', NULL),
(451, 5, 312, 1, 1, 1, 1, '2018-06-03 07:34:35', '2018-06-03 07:34:35', NULL),
(452, 4, 313, 1, 1, 1, 1, '2018-06-25 03:44:02', '2018-06-25 03:44:02', NULL),
(453, 1, 313, 1, 1, 1, 1, '2018-06-25 03:48:03', '2018-06-25 03:48:03', NULL),
(454, 2, 313, 1, 1, 1, 1, '2018-06-25 03:48:03', '2018-06-25 03:48:03', NULL),
(455, 3, 311, 1, 1, 1, 0, '2018-07-17 06:47:58', '2018-07-17 06:47:58', NULL),
(456, 3, 312, 1, 1, 1, 0, '2018-07-17 06:47:58', '2018-07-17 06:47:58', NULL),
(457, 3, 314, 1, 1, 1, 0, '2018-07-17 06:47:58', '2018-07-17 06:47:58', NULL),
(458, 1, 317, 1, 1, 1, 1, '2018-07-22 04:52:56', '2018-07-22 05:13:35', NULL),
(459, 1, 315, 1, 1, 1, 1, '2018-07-22 05:04:05', '2018-07-22 05:04:05', NULL),
(460, 1, 316, 1, 1, 1, 1, '2018-07-22 05:04:05', '2018-07-22 05:04:05', NULL),
(461, 1, 318, 1, 1, 1, 1, '2018-07-22 05:13:31', '2018-07-22 05:18:17', NULL),
(462, 1, 319, 1, 1, 1, 1, '2018-07-22 06:36:11', '2018-07-22 06:36:11', NULL),
(463, 1, 320, 1, 1, 1, 1, '2018-07-22 08:59:53', '2018-07-22 08:59:53', NULL),
(464, 2, 321, 1, 1, 1, 1, '2018-07-29 05:50:10', '2018-07-29 05:50:11', NULL),
(465, 2, 322, 1, 1, 1, 1, '2018-07-29 05:50:10', '2018-07-29 05:55:44', NULL),
(466, 2, 323, 1, 1, 1, 1, '2018-07-29 05:50:10', '2018-07-29 05:55:44', NULL),
(467, 2, 324, 1, 1, 1, 1, '2018-07-29 05:50:10', '2018-07-29 05:55:44', NULL),
(468, 1, 321, 1, 1, 1, 1, '2018-07-29 06:32:49', '2018-07-29 06:32:49', NULL),
(469, 1, 322, 1, 1, 1, 1, '2018-07-29 06:32:49', '2018-07-29 06:32:49', NULL),
(470, 1, 323, 1, 1, 1, 1, '2018-07-29 06:32:49', '2018-07-29 06:32:49', NULL),
(471, 1, 324, 1, 1, 1, 1, '2018-07-29 06:32:49', '2018-07-29 06:32:49', NULL),
(472, 1, 325, 1, 1, 1, 1, '2018-07-30 05:15:38', '2018-07-30 05:15:38', NULL),
(473, 2, 325, 1, 1, 1, 1, '2018-07-30 05:15:38', '2018-07-30 05:15:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(2, 1, 2, 1, 1, 1, 1, '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(3, 1, 3, 1, 1, 1, 1, '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(4, 1, 4, 1, 1, 1, 1, '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(5, 1, 5, 1, 1, 1, 1, '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(6, 1, 6, 1, 1, 1, 1, '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(7, 1, 7, 1, 1, 1, 1, '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(8, 1, 8, 1, 1, 1, 1, '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(9, 1, 9, 1, 1, 1, 1, '2017-02-27 03:07:23', '2017-02-27 03:07:23'),
(10, 1, 10, 1, 1, 1, 1, '2017-02-27 03:14:11', '2017-02-27 03:14:11'),
(11, 1, 11, 1, 1, 1, 1, '2017-02-27 03:25:26', '2017-02-27 03:25:26'),
(12, 2, 1, 1, 0, 0, 0, '2017-02-27 03:58:32', '2017-02-27 03:58:32'),
(13, 2, 2, 1, 0, 0, 0, '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(14, 2, 3, 1, 0, 0, 0, '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(15, 2, 4, 1, 0, 0, 0, '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(16, 2, 5, 1, 0, 0, 0, '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(17, 2, 6, 1, 0, 0, 0, '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(18, 2, 7, 1, 0, 0, 0, '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(19, 2, 8, 1, 0, 0, 0, '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(20, 2, 9, 1, 1, 1, 1, '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(21, 2, 10, 0, 0, 0, 0, '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(22, 2, 11, 1, 0, 0, 0, '2017-02-27 03:58:35', '2017-02-27 03:58:35'),
(24, 3, 1, 1, 0, 0, 0, '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(25, 3, 2, 1, 0, 0, 0, '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(26, 3, 3, 1, 0, 0, 0, '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(27, 3, 4, 1, 0, 0, 0, '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(28, 3, 5, 1, 0, 0, 0, '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(29, 3, 6, 1, 0, 0, 0, '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(30, 3, 7, 1, 0, 0, 0, '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(31, 3, 8, 1, 0, 0, 0, '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(32, 3, 9, 1, 0, 0, 0, '2017-02-28 05:00:03', '2017-02-28 05:00:03'),
(33, 3, 10, 0, 0, 0, 0, '2017-02-28 05:00:03', '2017-02-28 05:00:03'),
(34, 3, 11, 1, 0, 0, 0, '2017-02-28 05:00:03', '2017-02-28 05:00:03'),
(35, 1, 12, 1, 1, 1, 1, '2017-02-28 22:28:54', '2017-02-28 22:28:54'),
(36, 1, 13, 1, 1, 1, 1, '2017-03-02 00:06:08', '2017-03-02 00:06:08'),
(37, 1, 14, 1, 1, 1, 1, '2017-03-02 03:34:24', '2017-03-02 03:34:24'),
(38, 1, 15, 1, 1, 1, 1, '2017-03-02 04:07:13', '2017-03-02 04:07:13'),
(39, 1, 16, 1, 1, 1, 1, '2017-03-02 04:47:29', '2017-03-02 04:47:29'),
(40, 1, 17, 1, 1, 1, 1, '2017-03-02 04:59:00', '2017-03-02 04:59:00'),
(41, 1, 18, 1, 1, 1, 1, '2017-03-02 05:18:34', '2017-03-02 05:18:34'),
(42, 1, 19, 1, 1, 1, 1, '2017-03-02 05:40:19', '2017-03-02 05:40:19'),
(43, 1, 20, 1, 1, 1, 1, '2017-03-03 21:25:04', '2017-03-03 21:25:04'),
(44, 1, 21, 1, 1, 1, 1, '2017-03-03 21:45:03', '2017-03-03 21:45:03'),
(45, 1, 22, 1, 1, 1, 1, '2017-03-03 22:13:48', '2017-03-03 22:13:48'),
(46, 1, 24, 1, 1, 1, 1, '2017-03-04 03:03:57', '2017-03-04 03:03:57'),
(47, 2, 24, 0, 0, 0, 0, '2017-03-04 03:10:29', '2017-03-04 03:10:29'),
(48, 3, 24, 0, 0, 0, 0, '2017-03-04 03:10:29', '2017-03-04 03:10:29'),
(49, 1, 26, 1, 1, 1, 1, '2017-03-07 21:22:31', '2017-03-07 21:22:31'),
(50, 1, 27, 1, 1, 1, 1, '2017-03-11 09:49:11', '2017-03-11 09:49:11'),
(51, 1, 28, 1, 1, 1, 1, '2017-03-11 10:49:17', '2017-03-11 10:49:17'),
(52, 1, 29, 1, 1, 1, 1, '2017-03-11 12:32:52', '2017-03-11 12:32:52'),
(53, 1, 30, 1, 1, 1, 1, '2017-03-12 08:52:16', '2017-03-12 08:52:16'),
(54, 1, 31, 1, 1, 1, 1, '2017-03-12 09:09:06', '2017-03-12 09:09:06'),
(55, 1, 32, 1, 1, 1, 1, '2017-03-12 09:13:45', '2017-03-12 09:13:45'),
(56, 1, 33, 1, 1, 1, 1, '2017-03-12 09:19:54', '2017-03-12 09:19:54'),
(57, 1, 34, 1, 1, 1, 1, '2017-03-12 10:37:06', '2017-03-12 10:37:06'),
(58, 1, 35, 1, 1, 1, 1, '2017-03-12 10:59:49', '2017-03-12 10:59:49'),
(59, 1, 36, 1, 1, 1, 1, '2017-03-12 11:05:32', '2017-03-12 11:05:32'),
(60, 1, 37, 1, 1, 1, 1, '2017-03-12 11:17:34', '2017-03-12 11:17:34'),
(61, 1, 38, 1, 1, 1, 1, '2017-03-12 11:51:10', '2017-03-12 11:51:10'),
(62, 1, 39, 1, 1, 1, 1, '2017-03-14 11:47:33', '2017-03-14 11:47:33'),
(63, 1, 40, 1, 1, 1, 1, '2017-03-14 12:09:40', '2017-03-14 12:09:40'),
(65, 1, 43, 1, 1, 1, 1, '2017-03-21 09:44:56', '2017-03-21 09:44:56'),
(66, 1, 44, 1, 1, 1, 1, '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(68, 1, 46, 1, 1, 1, 1, '2017-03-23 06:23:54', '2017-03-23 06:23:54'),
(69, 1, 47, 1, 1, 1, 1, '2017-03-29 08:54:46', '2017-03-29 08:54:46'),
(70, 1, 48, 1, 1, 1, 1, '2017-03-30 10:11:13', '2017-03-30 10:11:13'),
(71, 1, 50, 1, 1, 1, 1, '2017-04-01 06:41:15', '2017-04-01 06:41:15'),
(72, 1, 51, 1, 1, 1, 1, '2017-04-01 09:07:03', '2017-04-01 09:07:03'),
(73, 1, 52, 1, 1, 1, 1, '2017-04-01 09:40:15', '2017-04-01 09:40:15'),
(74, 1, 53, 1, 1, 1, 1, '2017-04-01 09:56:35', '2017-04-01 09:56:35'),
(75, 1, 54, 1, 1, 1, 1, '2017-04-01 10:32:08', '2017-04-01 10:32:08'),
(76, 1, 55, 1, 1, 1, 1, '2017-04-01 10:53:09', '2017-04-01 10:53:09'),
(77, 1, 56, 1, 1, 1, 1, '2017-04-01 11:20:26', '2017-04-01 11:20:26'),
(78, 1, 57, 1, 1, 1, 1, '2017-04-01 11:37:23', '2017-04-01 11:37:23'),
(79, 1, 49, 1, 1, 1, 1, '2017-04-02 03:56:19', '2017-04-02 03:56:19'),
(80, 1, 59, 1, 1, 1, 1, '2017-04-02 05:16:20', '2017-04-02 05:16:20'),
(81, 1, 58, 1, 1, 1, 1, '2017-04-02 05:27:09', '2017-04-02 05:27:09'),
(82, 1, 61, 1, 1, 1, 1, '2017-04-02 08:18:09', '2017-04-02 08:18:09'),
(83, 1, 60, 1, 1, 1, 1, '2017-04-02 09:41:12', '2017-04-02 09:41:12'),
(84, 1, 62, 1, 1, 1, 1, '2017-04-02 10:10:40', '2017-04-02 10:10:40'),
(85, 1, 65, 1, 1, 1, 1, '2017-04-02 10:30:10', '2017-04-02 10:30:10'),
(86, 1, 64, 1, 1, 1, 1, '2017-04-02 10:31:16', '2017-04-02 10:31:16'),
(87, 1, 66, 1, 1, 1, 1, '2017-04-02 10:36:52', '2017-04-02 10:36:52'),
(89, 1, 68, 1, 1, 1, 1, '2017-04-02 12:10:29', '2017-04-02 12:10:29'),
(90, 1, 69, 1, 1, 1, 1, '2017-04-03 04:19:38', '2017-04-03 04:19:38'),
(91, 1, 70, 1, 1, 1, 1, '2017-04-03 05:54:17', '2017-04-03 05:54:17'),
(93, 1, 72, 1, 1, 1, 1, '2017-04-05 06:40:20', '2017-04-05 06:40:20'),
(94, 1, 73, 1, 1, 1, 1, '2017-04-05 08:44:26', '2017-04-05 08:44:26'),
(95, 1, 74, 1, 1, 1, 1, '2017-04-05 11:37:11', '2017-04-05 11:37:11'),
(96, 1, 75, 1, 1, 1, 1, '2017-04-08 11:44:12', '2017-04-08 11:44:12'),
(97, 1, 76, 1, 1, 1, 1, '2017-04-10 06:38:37', '2017-04-10 06:38:37'),
(98, 1, 77, 1, 1, 1, 1, '2017-04-11 11:13:18', '2017-04-11 11:13:18'),
(99, 1, 78, 1, 1, 1, 1, '2017-04-12 05:16:35', '2017-04-12 05:16:35'),
(100, 1, 79, 1, 1, 1, 1, '2017-04-18 05:43:58', '2017-04-18 05:43:58'),
(101, 1, 80, 1, 1, 1, 1, '2017-04-19 11:13:52', '2017-04-19 11:13:52'),
(102, 1, 81, 1, 1, 1, 1, '2017-04-23 06:43:09', '2017-04-23 06:43:09'),
(103, 1, 82, 1, 1, 1, 1, '2017-04-23 07:17:41', '2017-04-23 07:17:41'),
(104, 1, 83, 1, 1, 1, 1, '2017-04-26 09:54:24', '2017-04-26 09:54:24'),
(105, 1, 84, 1, 1, 1, 1, '2017-04-26 10:01:30', '2017-04-26 10:01:30'),
(106, 1, 85, 1, 1, 1, 1, '2017-04-26 10:07:26', '2017-04-26 10:07:26'),
(107, 1, 86, 1, 1, 1, 1, '2017-04-27 09:00:04', '2017-04-27 09:00:04'),
(108, 1, 87, 1, 1, 1, 1, '2017-04-27 10:35:03', '2017-04-27 10:35:03'),
(109, 1, 88, 1, 1, 1, 1, '2017-04-27 11:53:35', '2017-04-27 11:53:35'),
(110, 1, 89, 1, 1, 1, 1, '2017-05-03 04:56:42', '2017-05-03 04:56:42'),
(111, 1, 90, 1, 1, 1, 1, '2017-05-03 05:07:19', '2017-05-03 05:07:19'),
(112, 1, 91, 1, 1, 1, 1, '2017-05-16 03:44:23', '2017-05-16 03:44:23'),
(113, 1, 92, 1, 1, 1, 1, '2017-05-16 08:05:55', '2017-05-16 08:05:55'),
(114, 1, 93, 1, 1, 1, 1, '2017-05-18 06:41:54', '2017-05-18 06:41:54'),
(115, 1, 94, 1, 1, 1, 1, '2017-05-18 07:02:36', '2017-05-18 07:02:36'),
(116, 1, 96, 1, 1, 1, 1, '2017-05-20 04:29:27', '2017-05-20 04:29:27'),
(117, 1, 97, 1, 1, 1, 1, '2017-05-20 04:39:07', '2017-05-20 04:39:07'),
(119, 1, 98, 1, 1, 1, 1, '2017-05-20 05:40:47', '2017-05-20 05:40:47'),
(120, 1, 99, 1, 1, 1, 1, '2017-05-20 06:40:21', '2017-05-20 06:40:21'),
(121, 1, 100, 1, 1, 1, 1, '2017-05-20 07:06:59', '2017-05-20 07:06:59'),
(122, 1, 101, 1, 1, 1, 1, '2017-05-20 08:11:38', '2017-05-20 08:11:38'),
(123, 1, 102, 1, 1, 1, 1, '2017-05-22 09:10:14', '2017-05-22 09:10:14'),
(124, 1, 103, 1, 1, 1, 1, '2017-05-22 10:14:22', '2017-05-22 10:14:22'),
(125, 1, 104, 1, 1, 1, 1, '2017-05-23 05:50:38', '2017-05-23 05:50:38'),
(126, 1, 105, 1, 1, 1, 1, '2017-05-23 12:21:11', '2017-05-23 12:21:11'),
(127, 1, 106, 1, 1, 1, 1, '2017-05-29 04:57:46', '2017-05-29 04:57:46'),
(128, 1, 107, 1, 1, 1, 1, '2017-05-29 05:30:07', '2017-05-29 05:30:07'),
(129, 1, 108, 1, 1, 1, 1, '2017-05-29 05:57:09', '2017-05-29 05:57:09'),
(131, 1, 111, 1, 1, 1, 1, '2017-06-12 09:24:13', '2017-06-12 09:24:13'),
(132, 1, 112, 1, 1, 1, 1, '2017-06-19 08:13:47', '2017-06-19 08:13:47'),
(133, 1, 113, 1, 1, 1, 1, '2017-07-30 09:56:28', '2017-07-30 09:56:28'),
(134, 1, 114, 1, 1, 1, 1, '2017-08-23 09:13:52', '2017-08-23 09:13:52'),
(135, 1, 116, 1, 1, 1, 1, '2017-08-23 09:36:52', '2017-08-23 09:36:52'),
(136, 1, 117, 1, 1, 1, 1, '2017-09-14 10:50:55', '2017-09-14 10:50:55'),
(137, 1, 118, 1, 1, 1, 1, '2017-11-30 07:39:16', '2017-11-30 07:39:16'),
(138, 1, 119, 1, 1, 1, 1, '2017-12-09 11:26:06', '2017-12-09 11:26:06'),
(139, 1, 120, 1, 1, 1, 1, '2017-12-18 07:57:20', '2017-12-18 07:57:20'),
(140, 1, 121, 1, 1, 1, 1, '2018-01-21 10:06:17', '2018-01-21 10:06:17'),
(141, 1, 122, 1, 1, 1, 1, '2018-05-12 04:40:39', '2018-05-12 04:40:39'),
(142, 1, 123, 1, 1, 1, 1, '2018-05-12 04:45:33', '2018-05-12 04:45:33'),
(143, 1, 124, 1, 1, 1, 1, '2018-05-12 05:17:33', '2018-05-12 05:17:33'),
(144, 1, 125, 1, 1, 1, 1, '2018-05-26 08:44:40', '2018-05-26 08:44:40'),
(145, 1, 126, 1, 1, 1, 1, '2018-07-22 04:52:56', '2018-07-22 04:52:56'),
(146, 1, 127, 1, 1, 1, 1, '2018-07-22 05:13:31', '2018-07-22 05:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(2, 1, 2, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(3, 1, 3, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(4, 1, 4, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(5, 1, 5, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(6, 1, 6, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(7, 1, 7, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(8, 1, 8, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(9, 1, 9, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(10, 1, 10, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(11, 1, 11, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(12, 1, 12, 'write', '2017-02-19 02:35:02', '2017-02-19 02:35:02'),
(13, 1, 13, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(14, 1, 14, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(15, 1, 15, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(16, 1, 16, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(17, 1, 17, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(18, 1, 18, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(19, 1, 19, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(20, 1, 20, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(21, 1, 21, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(22, 1, 22, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(23, 1, 23, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(24, 1, 24, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(25, 1, 25, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(26, 1, 26, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(27, 1, 27, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(28, 1, 28, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(29, 1, 29, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(30, 1, 30, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(31, 1, 31, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(32, 1, 32, 'write', '2017-02-19 02:35:03', '2017-02-19 02:35:03'),
(35, 1, 35, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(36, 1, 36, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(37, 1, 37, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(38, 1, 38, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(39, 1, 39, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(40, 1, 40, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(41, 1, 41, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(42, 1, 42, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(43, 1, 43, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(44, 1, 44, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(45, 1, 45, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(46, 1, 46, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(47, 1, 47, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(48, 1, 48, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(49, 1, 49, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(50, 1, 50, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(51, 1, 51, 'write', '2017-02-19 02:35:04', '2017-02-19 02:35:04'),
(52, 1, 52, 'write', '2017-02-21 21:35:54', '2017-02-21 21:35:54'),
(53, 1, 53, 'write', '2017-02-27 03:02:38', '2017-02-27 03:02:38'),
(55, 1, 55, 'write', '2017-02-27 03:13:11', '2017-02-27 03:13:11'),
(56, 1, 56, 'write', '2017-02-27 03:13:50', '2017-02-27 03:13:50'),
(57, 1, 57, 'write', '2017-02-27 03:23:47', '2017-02-27 03:23:47'),
(58, 1, 58, 'write', '2017-02-27 03:25:11', '2017-02-27 03:25:11'),
(59, 2, 1, 'readonly', '2017-02-27 03:58:32', '2017-02-27 03:58:32'),
(60, 2, 2, 'readonly', '2017-02-27 03:58:32', '2017-02-27 03:58:32'),
(61, 2, 3, 'readonly', '2017-02-27 03:58:32', '2017-02-27 03:58:32'),
(62, 2, 4, 'readonly', '2017-02-27 03:58:32', '2017-02-27 03:58:32'),
(63, 2, 5, 'readonly', '2017-02-27 03:58:32', '2017-02-27 03:58:32'),
(64, 2, 6, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(65, 2, 7, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(66, 2, 8, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(67, 2, 9, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(68, 2, 10, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(69, 2, 11, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(70, 2, 12, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(71, 2, 13, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(72, 2, 14, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(73, 2, 15, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(74, 2, 52, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(75, 2, 16, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(76, 2, 17, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(77, 2, 18, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(78, 2, 19, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(79, 2, 20, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(80, 2, 21, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(81, 2, 22, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(82, 2, 23, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(83, 2, 24, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(84, 2, 25, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(85, 2, 26, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(86, 2, 27, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(87, 2, 28, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(88, 2, 29, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(89, 2, 30, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(90, 2, 31, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(91, 2, 32, 'readonly', '2017-02-27 03:58:33', '2017-02-27 03:58:33'),
(94, 2, 35, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(95, 2, 36, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(96, 2, 37, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(97, 2, 38, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(98, 2, 39, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(99, 2, 40, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(100, 2, 41, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(101, 2, 42, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(102, 2, 43, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(103, 2, 44, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(104, 2, 45, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(105, 2, 46, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(106, 2, 47, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(107, 2, 48, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(108, 2, 49, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(109, 2, 50, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(110, 2, 51, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(111, 2, 53, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(113, 2, 55, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(114, 2, 56, 'readonly', '2017-02-27 03:58:34', '2017-02-27 03:58:34'),
(115, 2, 57, 'readonly', '2017-02-27 03:58:35', '2017-02-27 03:58:35'),
(116, 2, 58, 'readonly', '2017-02-27 03:58:35', '2017-02-27 03:58:35'),
(119, 3, 1, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(120, 3, 2, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(121, 3, 3, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(122, 3, 4, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(123, 3, 5, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(124, 3, 6, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(125, 3, 7, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(126, 3, 8, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(127, 3, 9, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(128, 3, 10, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(129, 3, 11, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(130, 3, 12, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(131, 3, 13, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(132, 3, 14, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(133, 3, 15, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(134, 3, 52, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(135, 3, 16, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(136, 3, 17, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(137, 3, 18, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(138, 3, 19, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(139, 3, 20, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(140, 3, 21, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(141, 3, 22, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(142, 3, 23, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(143, 3, 24, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(144, 3, 25, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(145, 3, 26, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(146, 3, 27, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(147, 3, 28, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(148, 3, 29, 'readonly', '2017-02-28 05:00:01', '2017-02-28 05:00:01'),
(149, 3, 30, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(150, 3, 31, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(151, 3, 32, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(154, 3, 35, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(155, 3, 36, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(156, 3, 37, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(157, 3, 38, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(158, 3, 39, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(159, 3, 40, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(160, 3, 41, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(161, 3, 42, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(162, 3, 43, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(163, 3, 44, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(164, 3, 45, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(165, 3, 46, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(166, 3, 47, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(167, 3, 48, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(168, 3, 49, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(169, 3, 50, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(170, 3, 51, 'readonly', '2017-02-28 05:00:02', '2017-02-28 05:00:02'),
(171, 3, 53, 'readonly', '2017-02-28 05:00:03', '2017-02-28 05:00:03'),
(173, 3, 55, 'readonly', '2017-02-28 05:00:03', '2017-02-28 05:00:03'),
(174, 3, 56, 'readonly', '2017-02-28 05:00:03', '2017-02-28 05:00:03'),
(175, 3, 57, 'readonly', '2017-02-28 05:00:03', '2017-02-28 05:00:03'),
(176, 3, 58, 'readonly', '2017-02-28 05:00:03', '2017-02-28 05:00:03'),
(177, 1, 59, 'write', '2017-02-28 22:13:55', '2017-02-28 22:13:55'),
(178, 1, 60, 'write', '2017-02-28 22:15:48', '2017-02-28 22:15:48'),
(179, 1, 61, 'write', '2017-02-28 22:16:59', '2017-02-28 22:16:59'),
(180, 1, 62, 'write', '2017-02-28 22:19:52', '2017-02-28 22:19:52'),
(181, 1, 63, 'write', '2017-02-28 22:20:50', '2017-02-28 22:20:50'),
(182, 1, 64, 'write', '2017-02-28 22:21:33', '2017-02-28 22:21:33'),
(183, 1, 65, 'write', '2017-02-28 22:22:15', '2017-02-28 22:22:15'),
(184, 1, 66, 'write', '2017-03-01 21:33:50', '2017-03-01 21:33:50'),
(200, 1, 84, 'write', '2017-03-01 23:44:57', '2017-03-01 23:44:57'),
(201, 1, 85, 'write', '2017-03-01 23:50:32', '2017-03-01 23:50:32'),
(202, 1, 86, 'write', '2017-03-01 23:54:22', '2017-03-01 23:54:22'),
(203, 1, 87, 'write', '2017-03-01 23:57:13', '2017-03-01 23:57:13'),
(204, 1, 88, 'write', '2017-03-01 23:59:18', '2017-03-01 23:59:18'),
(205, 1, 89, 'write', '2017-03-01 23:59:53', '2017-03-01 23:59:53'),
(206, 1, 90, 'write', '2017-03-02 00:00:48', '2017-03-02 00:00:48'),
(221, 1, 106, 'write', '2017-03-02 03:26:31', '2017-03-02 03:26:31'),
(222, 1, 107, 'write', '2017-03-02 03:27:15', '2017-03-02 03:27:15'),
(223, 1, 108, 'write', '2017-03-02 03:28:04', '2017-03-02 03:28:04'),
(224, 1, 109, 'write', '2017-03-02 03:29:43', '2017-03-02 03:29:43'),
(225, 1, 110, 'write', '2017-03-02 03:30:43', '2017-03-02 03:30:43'),
(226, 1, 111, 'write', '2017-03-02 03:32:00', '2017-03-02 03:32:00'),
(227, 1, 112, 'write', '2017-03-02 03:32:56', '2017-03-02 03:32:56'),
(228, 1, 113, 'write', '2017-03-02 03:38:27', '2017-03-02 03:38:27'),
(229, 1, 114, 'write', '2017-03-02 03:40:04', '2017-03-02 03:40:04'),
(230, 1, 115, 'write', '2017-03-02 03:58:49', '2017-03-02 03:58:49'),
(231, 1, 116, 'write', '2017-03-02 03:59:50', '2017-03-02 03:59:50'),
(232, 1, 117, 'write', '2017-03-02 04:01:24', '2017-03-02 04:01:24'),
(233, 1, 118, 'write', '2017-03-02 04:02:08', '2017-03-02 04:02:08'),
(234, 1, 119, 'write', '2017-03-02 04:02:53', '2017-03-02 04:02:53'),
(235, 1, 120, 'write', '2017-03-02 04:03:38', '2017-03-02 04:03:38'),
(236, 1, 121, 'write', '2017-03-02 04:04:44', '2017-03-02 04:04:44'),
(237, 1, 122, 'write', '2017-03-02 04:45:12', '2017-03-02 04:45:12'),
(238, 1, 123, 'write', '2017-03-02 04:46:14', '2017-03-02 04:46:14'),
(239, 1, 124, 'write', '2017-03-02 04:46:56', '2017-03-02 04:46:56'),
(240, 1, 125, 'write', '2017-03-02 04:57:38', '2017-03-02 04:57:38'),
(241, 1, 126, 'write', '2017-03-02 04:58:36', '2017-03-02 04:58:36'),
(242, 1, 127, 'write', '2017-03-02 05:09:55', '2017-03-02 05:09:55'),
(243, 1, 128, 'write', '2017-03-02 05:10:45', '2017-03-02 05:10:45'),
(245, 1, 130, 'write', '2017-03-02 05:29:12', '2017-03-02 05:29:12'),
(246, 1, 131, 'write', '2017-03-02 05:32:55', '2017-03-02 05:32:55'),
(247, 1, 132, 'write', '2017-03-02 05:39:57', '2017-03-02 05:39:57'),
(248, 1, 133, 'write', '2017-03-03 21:16:47', '2017-03-03 21:16:47'),
(249, 1, 134, 'write', '2017-03-03 21:17:31', '2017-03-03 21:17:31'),
(250, 1, 135, 'write', '2017-03-03 21:18:13', '2017-03-03 21:18:13'),
(251, 1, 136, 'write', '2017-03-03 21:19:06', '2017-03-03 21:19:06'),
(252, 1, 137, 'write', '2017-03-03 21:20:20', '2017-03-03 21:20:20'),
(253, 1, 138, 'write', '2017-03-03 21:21:47', '2017-03-03 21:21:47'),
(254, 1, 139, 'write', '2017-03-03 21:22:26', '2017-03-03 21:22:26'),
(255, 1, 140, 'write', '2017-03-03 21:23:29', '2017-03-03 21:23:29'),
(256, 1, 141, 'write', '2017-03-03 21:34:26', '2017-03-03 21:34:26'),
(257, 1, 142, 'write', '2017-03-03 21:39:18', '2017-03-03 21:39:18'),
(258, 1, 143, 'write', '2017-03-03 21:39:57', '2017-03-03 21:39:57'),
(259, 1, 144, 'write', '2017-03-03 21:40:39', '2017-03-03 21:40:39'),
(260, 1, 145, 'write', '2017-03-03 21:41:34', '2017-03-03 21:41:34'),
(261, 1, 146, 'write', '2017-03-03 21:42:02', '2017-03-03 21:42:02'),
(262, 1, 147, 'write', '2017-03-03 21:42:35', '2017-03-03 21:42:35'),
(263, 1, 148, 'write', '2017-03-03 21:43:15', '2017-03-03 21:43:15'),
(264, 1, 149, 'write', '2017-03-03 22:05:51', '2017-03-03 22:05:51'),
(265, 1, 150, 'write', '2017-03-03 22:08:26', '2017-03-03 22:08:26'),
(266, 1, 151, 'write', '2017-03-03 22:09:09', '2017-03-03 22:09:09'),
(267, 1, 152, 'write', '2017-03-03 22:09:55', '2017-03-03 22:09:55'),
(268, 1, 153, 'write', '2017-03-03 22:10:45', '2017-03-03 22:10:45'),
(269, 1, 154, 'write', '2017-03-03 22:11:36', '2017-03-03 22:11:36'),
(270, 1, 155, 'write', '2017-03-03 22:12:35', '2017-03-03 22:12:35'),
(271, 1, 156, 'write', '2017-03-03 22:13:22', '2017-03-03 22:13:22'),
(272, 1, 157, 'write', '2017-03-04 03:03:02', '2017-03-04 03:03:02'),
(273, 1, 158, 'write', '2017-03-04 03:03:50', '2017-03-04 03:03:50'),
(274, 2, 157, 'invisible', '2017-03-04 03:10:29', '2017-03-04 03:10:29'),
(275, 2, 158, 'invisible', '2017-03-04 03:10:29', '2017-03-04 03:10:29'),
(276, 3, 157, 'invisible', '2017-03-04 03:10:29', '2017-03-04 03:10:29'),
(277, 3, 158, 'invisible', '2017-03-04 03:10:29', '2017-03-04 03:10:29'),
(281, 1, 162, 'write', '2017-03-07 05:42:56', '2017-03-07 05:42:56'),
(283, 1, 164, 'write', '2017-03-07 21:21:40', '2017-03-07 21:21:40'),
(284, 1, 165, 'write', '2017-03-07 21:22:17', '2017-03-07 21:22:17'),
(285, 1, 166, 'write', '2017-03-11 09:46:51', '2017-03-11 09:46:51'),
(286, 1, 167, 'write', '2017-03-11 09:48:36', '2017-03-11 09:48:36'),
(287, 1, 168, 'write', '2017-03-11 10:45:05', '2017-03-11 10:45:05'),
(288, 1, 169, 'write', '2017-03-11 10:46:11', '2017-03-11 10:46:11'),
(289, 1, 170, 'write', '2017-03-11 10:46:32', '2017-03-11 10:46:32'),
(290, 1, 171, 'write', '2017-03-11 10:47:23', '2017-03-11 10:47:23'),
(291, 1, 172, 'write', '2017-03-11 10:47:53', '2017-03-11 10:47:53'),
(292, 1, 173, 'write', '2017-03-11 10:48:31', '2017-03-11 10:48:31'),
(293, 1, 174, 'write', '2017-03-11 10:48:59', '2017-03-11 10:48:59'),
(294, 1, 175, 'write', '2017-03-11 12:20:08', '2017-03-11 12:20:08'),
(295, 1, 176, 'write', '2017-03-11 12:20:36', '2017-03-11 12:20:36'),
(296, 1, 177, 'write', '2017-03-11 12:21:09', '2017-03-11 12:21:09'),
(297, 1, 178, 'write', '2017-03-11 12:31:39', '2017-03-11 12:31:39'),
(298, 1, 179, 'write', '2017-03-11 12:32:06', '2017-03-11 12:32:06'),
(299, 1, 180, 'write', '2017-03-11 12:32:34', '2017-03-11 12:32:34'),
(300, 1, 181, 'write', '2017-03-12 08:49:56', '2017-03-12 08:49:56'),
(301, 1, 182, 'write', '2017-03-12 08:50:35', '2017-03-12 08:50:35'),
(302, 1, 183, 'write', '2017-03-12 08:52:04', '2017-03-12 08:52:04'),
(303, 1, 184, 'write', '2017-03-12 09:07:58', '2017-03-12 09:07:58'),
(304, 1, 185, 'write', '2017-03-12 09:08:40', '2017-03-12 09:08:40'),
(305, 1, 186, 'write', '2017-03-12 09:13:08', '2017-03-12 09:13:08'),
(306, 1, 187, 'write', '2017-03-12 09:13:38', '2017-03-12 09:13:38'),
(307, 1, 188, 'write', '2017-03-12 09:19:02', '2017-03-12 09:19:02'),
(308, 1, 189, 'write', '2017-03-12 09:19:48', '2017-03-12 09:19:48'),
(309, 1, 190, 'write', '2017-03-12 10:34:09', '2017-03-12 10:34:09'),
(310, 1, 191, 'write', '2017-03-12 10:58:57', '2017-03-12 10:58:57'),
(311, 1, 192, 'write', '2017-03-12 10:59:31', '2017-03-12 10:59:31'),
(312, 1, 193, 'write', '2017-03-12 11:03:12', '2017-03-12 11:03:12'),
(313, 1, 194, 'write', '2017-03-12 11:04:16', '2017-03-12 11:04:16'),
(314, 1, 195, 'write', '2017-03-12 11:04:48', '2017-03-12 11:04:48'),
(315, 1, 196, 'write', '2017-03-12 11:16:17', '2017-03-12 11:16:17'),
(316, 1, 197, 'write', '2017-03-12 11:17:20', '2017-03-12 11:17:20'),
(317, 1, 198, 'write', '2017-03-12 11:24:26', '2017-03-12 11:24:26'),
(318, 1, 199, 'write', '2017-03-12 11:25:18', '2017-03-12 11:25:18'),
(319, 1, 200, 'write', '2017-03-12 11:40:16', '2017-03-12 11:40:16'),
(320, 1, 201, 'write', '2017-03-12 11:41:06', '2017-03-12 11:41:06'),
(321, 1, 202, 'write', '2017-03-12 11:42:21', '2017-03-12 11:42:21'),
(322, 1, 203, 'write', '2017-03-12 11:42:59', '2017-03-12 11:42:59'),
(323, 1, 204, 'write', '2017-03-12 11:44:27', '2017-03-12 11:44:27'),
(324, 1, 205, 'write', '2017-03-12 11:45:02', '2017-03-12 11:45:02'),
(325, 1, 206, 'write', '2017-03-12 11:47:05', '2017-03-12 11:47:05'),
(326, 1, 207, 'write', '2017-03-12 11:47:46', '2017-03-12 11:47:46'),
(327, 1, 208, 'write', '2017-03-12 11:48:10', '2017-03-12 11:48:10'),
(328, 1, 209, 'write', '2017-03-12 11:49:41', '2017-03-12 11:49:41'),
(329, 1, 210, 'write', '2017-03-14 11:46:52', '2017-03-14 11:46:52'),
(330, 1, 211, 'write', '2017-03-14 11:47:28', '2017-03-14 11:47:28'),
(331, 1, 212, 'write', '2017-03-14 12:08:19', '2017-03-14 12:08:19'),
(332, 1, 213, 'write', '2017-03-14 12:09:23', '2017-03-14 12:09:23'),
(352, 1, 236, 'write', '2017-03-21 09:11:43', '2017-03-21 09:11:43'),
(354, 1, 239, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(355, 1, 240, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(356, 1, 241, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(357, 1, 242, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(358, 1, 243, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(359, 1, 244, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(360, 1, 245, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(361, 1, 246, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(362, 1, 247, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(363, 1, 248, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(364, 1, 249, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(365, 1, 250, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(366, 1, 251, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(367, 1, 252, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(368, 1, 253, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(369, 1, 254, 'write', '2017-03-23 04:16:13', '2017-03-23 04:16:13'),
(371, 1, 256, 'write', '2017-03-23 04:29:44', '2017-03-23 04:29:44'),
(383, 1, 268, 'write', '2017-03-23 06:23:54', '2017-03-23 06:23:54'),
(384, 1, 270, 'write', '2017-03-23 06:43:29', '2017-03-23 06:43:29'),
(385, 1, 271, 'write', '2017-03-23 06:44:27', '2017-03-23 06:44:27'),
(386, 1, 272, 'write', '2017-03-23 06:45:15', '2017-03-23 06:45:15'),
(387, 1, 273, 'write', '2017-03-23 06:45:52', '2017-03-23 06:45:52'),
(388, 1, 274, 'write', '2017-03-23 06:46:29', '2017-03-23 06:46:29'),
(389, 1, 275, 'write', '2017-03-23 06:47:40', '2017-03-23 06:47:40'),
(390, 1, 276, 'write', '2017-03-23 06:48:32', '2017-03-23 06:48:32'),
(391, 1, 277, 'write', '2017-03-23 06:49:37', '2017-03-23 06:49:37'),
(392, 1, 279, 'write', '2017-03-29 07:30:15', '2017-03-29 07:30:15'),
(393, 1, 280, 'write', '2017-03-29 07:31:20', '2017-03-29 07:31:20'),
(394, 1, 281, 'write', '2017-03-29 08:39:11', '2017-03-29 08:39:11'),
(395, 1, 282, 'write', '2017-03-29 08:40:04', '2017-03-29 08:40:04'),
(396, 1, 283, 'write', '2017-03-29 08:41:05', '2017-03-29 08:41:05'),
(397, 1, 284, 'write', '2017-03-29 08:41:41', '2017-03-29 08:41:41'),
(398, 1, 285, 'write', '2017-03-29 08:42:49', '2017-03-29 08:42:49'),
(399, 1, 286, 'write', '2017-03-29 08:43:15', '2017-03-29 08:43:15'),
(400, 1, 287, 'write', '2017-03-29 08:51:32', '2017-03-29 08:51:32'),
(401, 1, 278, 'write', '2017-03-29 08:54:46', '2017-03-29 08:54:46'),
(402, 1, 288, 'write', '2017-03-30 10:11:00', '2017-03-30 10:11:00'),
(403, 1, 289, 'write', '2017-03-30 10:53:26', '2017-03-30 10:53:26'),
(404, 1, 290, 'write', '2017-03-30 11:06:58', '2017-03-30 11:06:58'),
(405, 1, 291, 'write', '2017-03-30 11:08:16', '2017-03-30 11:08:16'),
(406, 1, 292, 'write', '2017-03-30 11:09:06', '2017-03-30 11:09:06'),
(407, 1, 293, 'write', '2017-04-01 06:33:24', '2017-04-01 06:33:24'),
(410, 1, 296, 'write', '2017-04-01 06:47:29', '2017-04-01 06:47:29'),
(411, 1, 297, 'write', '2017-04-01 06:52:34', '2017-04-01 06:52:34'),
(412, 1, 298, 'write', '2017-04-01 06:57:58', '2017-04-01 06:57:58'),
(413, 1, 299, 'write', '2017-04-01 06:58:41', '2017-04-01 06:58:41'),
(414, 1, 301, 'write', '2017-04-01 09:01:33', '2017-04-01 09:01:33'),
(415, 1, 302, 'write', '2017-04-01 09:02:34', '2017-04-01 09:02:34'),
(416, 1, 303, 'write', '2017-04-01 09:02:58', '2017-04-01 09:02:58'),
(417, 1, 304, 'write', '2017-04-01 09:03:25', '2017-04-01 09:03:25'),
(418, 1, 305, 'write', '2017-04-01 09:04:29', '2017-04-01 09:04:29'),
(419, 1, 306, 'write', '2017-04-01 09:05:31', '2017-04-01 09:05:31'),
(420, 1, 300, 'write', '2017-04-01 09:07:03', '2017-04-01 09:07:03'),
(421, 1, 308, 'write', '2017-04-01 09:27:32', '2017-04-01 09:27:32'),
(422, 1, 309, 'write', '2017-04-01 09:28:00', '2017-04-01 09:28:00'),
(423, 1, 310, 'write', '2017-04-01 09:28:21', '2017-04-01 09:28:21'),
(424, 1, 311, 'write', '2017-04-01 09:29:13', '2017-04-01 09:29:13'),
(425, 1, 312, 'write', '2017-04-01 09:29:53', '2017-04-01 09:29:53'),
(426, 1, 313, 'write', '2017-04-01 09:30:54', '2017-04-01 09:30:54'),
(427, 1, 314, 'write', '2017-04-01 09:31:23', '2017-04-01 09:31:23'),
(428, 1, 315, 'write', '2017-04-01 09:32:02', '2017-04-01 09:32:02'),
(429, 1, 307, 'write', '2017-04-01 09:40:15', '2017-04-01 09:40:15'),
(430, 1, 317, 'write', '2017-04-01 09:53:22', '2017-04-01 09:53:22'),
(431, 1, 318, 'write', '2017-04-01 09:54:12', '2017-04-01 09:54:12'),
(432, 1, 319, 'write', '2017-04-01 09:54:32', '2017-04-01 09:54:32'),
(433, 1, 320, 'write', '2017-04-01 09:55:18', '2017-04-01 09:55:18'),
(434, 1, 321, 'write', '2017-04-01 09:55:43', '2017-04-01 09:55:43'),
(435, 1, 316, 'write', '2017-04-01 09:56:35', '2017-04-01 09:56:35'),
(436, 1, 323, 'write', '2017-04-01 10:20:11', '2017-04-01 10:20:11'),
(437, 1, 324, 'write', '2017-04-01 10:21:38', '2017-04-01 10:21:38'),
(440, 1, 327, 'write', '2017-04-01 10:31:29', '2017-04-01 10:31:29'),
(441, 1, 322, 'write', '2017-04-01 10:32:08', '2017-04-01 10:32:08'),
(442, 1, 329, 'write', '2017-04-01 10:50:36', '2017-04-01 10:50:36'),
(443, 1, 330, 'write', '2017-04-01 10:51:49', '2017-04-01 10:51:49'),
(444, 1, 331, 'write', '2017-04-01 10:52:31', '2017-04-01 10:52:31'),
(445, 1, 328, 'write', '2017-04-01 10:53:09', '2017-04-01 10:53:09'),
(446, 1, 333, 'write', '2017-04-01 11:17:10', '2017-04-01 11:17:10'),
(447, 1, 334, 'write', '2017-04-01 11:19:03', '2017-04-01 11:19:03'),
(448, 1, 332, 'write', '2017-04-01 11:20:26', '2017-04-01 11:20:26'),
(449, 1, 336, 'write', '2017-04-01 11:30:30', '2017-04-01 11:30:30'),
(450, 1, 337, 'write', '2017-04-01 11:31:09', '2017-04-01 11:31:09'),
(451, 1, 340, 'write', '2017-04-01 11:36:34', '2017-04-01 11:36:34'),
(452, 1, 335, 'write', '2017-04-01 11:37:23', '2017-04-01 11:37:23'),
(453, 1, 338, 'write', '2017-04-01 11:37:23', '2017-04-01 11:37:23'),
(454, 1, 339, 'write', '2017-04-01 11:37:23', '2017-04-01 11:37:23'),
(456, 1, 342, 'write', '2017-04-02 03:51:22', '2017-04-02 03:51:22'),
(457, 1, 343, 'write', '2017-04-02 03:52:20', '2017-04-02 03:52:20'),
(458, 1, 344, 'write', '2017-04-02 03:53:37', '2017-04-02 03:53:37'),
(459, 1, 345, 'write', '2017-04-02 03:55:50', '2017-04-02 03:55:50'),
(460, 1, 346, 'write', '2017-04-02 05:14:53', '2017-04-02 05:14:53'),
(461, 1, 347, 'write', '2017-04-02 05:16:05', '2017-04-02 05:16:05'),
(462, 1, 348, 'write', '2017-04-02 05:26:11', '2017-04-02 05:26:11'),
(463, 1, 349, 'write', '2017-04-02 05:26:47', '2017-04-02 05:26:47'),
(464, 1, 350, 'write', '2017-04-02 08:09:46', '2017-04-02 08:09:46'),
(465, 1, 351, 'write', '2017-04-02 08:10:15', '2017-04-02 08:10:15'),
(466, 1, 352, 'write', '2017-04-02 08:10:51', '2017-04-02 08:10:51'),
(467, 1, 353, 'write', '2017-04-02 08:11:36', '2017-04-02 08:11:36'),
(468, 1, 354, 'write', '2017-04-02 08:18:02', '2017-04-02 08:18:02'),
(469, 1, 355, 'write', '2017-04-02 09:40:45', '2017-04-02 09:40:45'),
(471, 1, 357, 'write', '2017-04-02 10:08:55', '2017-04-02 10:08:55'),
(472, 1, 358, 'write', '2017-04-02 10:09:47', '2017-04-02 10:09:47'),
(473, 1, 359, 'write', '2017-04-02 10:10:06', '2017-04-02 10:10:06'),
(475, 1, 362, 'write', '2017-04-02 10:14:00', '2017-04-02 10:14:00'),
(476, 1, 363, 'write', '2017-04-02 10:14:50', '2017-04-02 10:14:50'),
(477, 1, 364, 'write', '2017-04-02 10:15:20', '2017-04-02 10:15:20'),
(480, 1, 367, 'write', '2017-04-02 10:17:33', '2017-04-02 10:17:33'),
(483, 1, 370, 'write', '2017-04-02 10:19:04', '2017-04-02 10:19:04'),
(485, 1, 372, 'write', '2017-04-02 10:21:05', '2017-04-02 10:21:05'),
(487, 1, 374, 'write', '2017-04-02 10:22:29', '2017-04-02 10:22:29'),
(489, 1, 377, 'write', '2017-04-02 10:24:56', '2017-04-02 10:24:56'),
(490, 1, 378, 'write', '2017-04-02 10:26:20', '2017-04-02 10:26:20'),
(491, 1, 379, 'write', '2017-04-02 10:27:04', '2017-04-02 10:27:04'),
(492, 1, 380, 'write', '2017-04-02 10:27:25', '2017-04-02 10:27:25'),
(493, 1, 382, 'write', '2017-04-02 10:28:12', '2017-04-02 10:28:12'),
(494, 1, 383, 'write', '2017-04-02 10:28:25', '2017-04-02 10:28:25'),
(495, 1, 384, 'write', '2017-04-02 10:28:58', '2017-04-02 10:28:58'),
(496, 1, 385, 'write', '2017-04-02 10:29:08', '2017-04-02 10:29:08'),
(497, 1, 375, 'write', '2017-04-02 10:30:10', '2017-04-02 10:30:10'),
(498, 1, 386, 'write', '2017-04-02 10:30:57', '2017-04-02 10:30:57'),
(499, 1, 387, 'write', '2017-04-02 10:30:48', '2017-04-02 10:30:48'),
(500, 1, 388, 'write', '2017-04-02 10:31:37', '2017-04-02 10:31:37'),
(501, 1, 389, 'write', '2017-04-02 10:32:41', '2017-04-02 10:32:41'),
(502, 1, 390, 'write', '2017-04-02 10:32:55', '2017-04-02 10:32:55'),
(503, 1, 391, 'write', '2017-04-02 10:33:24', '2017-04-02 10:33:24'),
(504, 1, 392, 'write', '2017-04-02 10:34:26', '2017-04-02 10:34:26'),
(505, 1, 393, 'write', '2017-04-02 10:35:29', '2017-04-02 10:35:29'),
(506, 1, 394, 'write', '2017-04-02 10:36:25', '2017-04-02 10:36:25'),
(507, 1, 381, 'write', '2017-04-02 10:36:52', '2017-04-02 10:36:52'),
(513, 1, 400, 'write', '2017-04-02 11:48:26', '2017-04-02 11:48:26'),
(514, 1, 402, 'write', '2017-04-02 11:55:14', '2017-04-02 11:55:14'),
(515, 1, 403, 'write', '2017-04-02 11:56:55', '2017-04-02 11:56:55'),
(516, 1, 404, 'write', '2017-04-02 11:58:27', '2017-04-02 11:58:27'),
(517, 1, 405, 'write', '2017-04-02 11:58:58', '2017-04-02 11:58:58'),
(518, 1, 406, 'write', '2017-04-02 12:00:09', '2017-04-02 12:00:09'),
(519, 1, 401, 'write', '2017-04-02 12:10:29', '2017-04-02 12:10:29'),
(525, 1, 412, 'write', '2017-04-03 04:22:06', '2017-04-03 04:22:06'),
(526, 1, 413, 'write', '2017-04-03 04:22:29', '2017-04-03 04:22:29'),
(527, 1, 414, 'write', '2017-04-03 04:23:05', '2017-04-03 04:23:05'),
(528, 1, 415, 'write', '2017-04-03 04:23:57', '2017-04-03 04:23:57'),
(529, 1, 416, 'write', '2017-04-03 04:25:01', '2017-04-03 04:25:01'),
(530, 1, 417, 'write', '2017-04-03 05:37:47', '2017-04-03 05:37:47'),
(531, 1, 418, 'write', '2017-04-03 05:39:31', '2017-04-03 05:39:31'),
(532, 1, 419, 'write', '2017-04-03 05:41:15', '2017-04-03 05:41:15'),
(533, 1, 420, 'write', '2017-04-03 05:43:09', '2017-04-03 05:43:09'),
(534, 1, 421, 'write', '2017-04-03 05:43:34', '2017-04-03 05:43:34'),
(535, 1, 422, 'write', '2017-04-03 05:44:42', '2017-04-03 05:44:42'),
(536, 1, 423, 'write', '2017-04-03 05:47:47', '2017-04-03 05:47:47'),
(539, 1, 426, 'write', '2017-04-03 05:52:30', '2017-04-03 05:52:30'),
(540, 1, 427, 'write', '2017-04-04 04:12:29', '2017-04-04 04:12:29'),
(541, 1, 428, 'write', '2017-04-04 05:27:59', '2017-04-04 05:27:59'),
(542, 1, 429, 'write', '2017-04-04 05:29:35', '2017-04-04 05:29:35'),
(543, 1, 430, 'write', '2017-04-04 05:30:41', '2017-04-04 05:30:41'),
(544, 1, 431, 'write', '2017-04-04 05:31:31', '2017-04-04 05:31:31'),
(545, 1, 432, 'write', '2017-04-04 05:32:03', '2017-04-04 05:32:03'),
(546, 1, 433, 'write', '2017-04-04 05:33:06', '2017-04-04 05:33:06'),
(547, 1, 434, 'write', '2017-04-04 05:34:01', '2017-04-04 05:34:01'),
(548, 1, 435, 'write', '2017-04-04 05:37:20', '2017-04-04 05:37:20'),
(549, 1, 436, 'write', '2017-04-04 05:39:01', '2017-04-04 05:39:01'),
(550, 1, 437, 'write', '2017-04-04 06:32:58', '2017-04-04 06:32:58'),
(566, 1, 453, 'write', '2017-04-05 06:38:28', '2017-04-05 06:38:28'),
(567, 1, 454, 'write', '2017-04-05 08:37:26', '2017-04-05 08:37:26'),
(568, 1, 455, 'write', '2017-04-05 08:39:21', '2017-04-05 08:39:21'),
(569, 1, 456, 'write', '2017-04-05 08:44:15', '2017-04-05 08:44:15'),
(570, 1, 458, 'write', '2017-04-05 11:31:51', '2017-04-05 11:31:51'),
(571, 1, 459, 'write', '2017-04-05 11:34:43', '2017-04-05 11:34:43'),
(572, 1, 460, 'write', '2017-04-05 11:35:12', '2017-04-05 11:35:12'),
(573, 1, 457, 'write', '2017-04-05 11:37:11', '2017-04-05 11:37:11'),
(574, 1, 461, 'write', '2017-04-06 04:42:41', '2017-04-06 04:42:41'),
(575, 1, 463, 'write', '2017-04-08 11:39:34', '2017-04-08 11:39:34'),
(576, 1, 464, 'write', '2017-04-08 11:40:11', '2017-04-08 11:40:11'),
(577, 1, 465, 'write', '2017-04-08 11:41:03', '2017-04-08 11:41:03'),
(578, 1, 466, 'write', '2017-04-08 11:42:36', '2017-04-08 11:42:36'),
(579, 1, 467, 'write', '2017-04-08 11:43:20', '2017-04-08 11:43:20'),
(580, 1, 462, 'write', '2017-04-08 11:44:12', '2017-04-08 11:44:12'),
(581, 1, 468, 'write', '2017-04-09 04:01:31', '2017-04-09 04:01:31'),
(582, 1, 469, 'write', '2017-04-09 04:02:15', '2017-04-09 04:02:15'),
(583, 1, 470, 'write', '2017-04-09 04:02:38', '2017-04-09 04:02:38'),
(584, 1, 471, 'write', '2017-04-09 04:18:05', '2017-04-09 04:18:05'),
(585, 1, 472, 'write', '2017-04-09 04:19:50', '2017-04-09 04:19:50'),
(586, 1, 473, 'write', '2017-04-09 04:22:13', '2017-04-09 04:22:13'),
(587, 1, 474, 'write', '2017-04-09 04:22:39', '2017-04-09 04:22:39'),
(588, 1, 475, 'write', '2017-04-09 04:23:19', '2017-04-09 04:23:19'),
(589, 1, 476, 'write', '2017-04-09 04:23:40', '2017-04-09 04:23:40'),
(590, 1, 477, 'write', '2017-04-09 05:57:50', '2017-04-09 05:57:50'),
(591, 1, 478, 'write', '2017-04-09 06:05:11', '2017-04-09 06:05:11'),
(592, 1, 479, 'write', '2017-04-09 06:06:00', '2017-04-09 06:06:00'),
(593, 1, 480, 'write', '2017-04-09 06:07:49', '2017-04-09 06:07:49'),
(594, 1, 481, 'write', '2017-04-09 09:47:08', '2017-04-09 09:47:08'),
(595, 1, 482, 'write', '2017-04-09 09:48:07', '2017-04-09 09:48:07'),
(596, 1, 483, 'write', '2017-04-09 10:59:53', '2017-04-09 10:59:53'),
(597, 1, 484, 'write', '2017-04-09 11:18:17', '2017-04-09 11:18:17'),
(598, 1, 485, 'write', '2017-04-10 06:36:41', '2017-04-10 06:36:41'),
(599, 1, 486, 'write', '2017-04-10 06:37:59', '2017-04-10 06:37:59'),
(600, 1, 487, 'write', '2017-04-10 06:38:21', '2017-04-10 06:38:21'),
(601, 1, 488, 'write', '2017-04-10 08:13:28', '2017-04-10 08:13:28'),
(602, 1, 489, 'write', '2017-04-11 11:06:50', '2017-04-11 11:06:50'),
(603, 1, 490, 'write', '2017-04-11 11:08:10', '2017-04-11 11:08:10'),
(604, 1, 491, 'write', '2017-04-11 11:09:30', '2017-04-11 11:09:30'),
(605, 1, 492, 'write', '2017-04-11 11:12:44', '2017-04-11 11:12:44'),
(606, 1, 493, 'write', '2017-04-12 05:08:47', '2017-04-12 05:08:47'),
(607, 1, 494, 'write', '2017-04-12 05:09:34', '2017-04-12 05:09:34'),
(608, 1, 495, 'write', '2017-04-12 05:10:03', '2017-04-12 05:10:03'),
(609, 1, 496, 'write', '2017-04-12 05:11:53', '2017-04-12 05:11:53'),
(610, 1, 497, 'write', '2017-04-12 05:12:29', '2017-04-12 05:12:29'),
(611, 1, 498, 'write', '2017-04-12 05:13:10', '2017-04-12 05:13:10'),
(612, 1, 499, 'write', '2017-04-12 05:13:52', '2017-04-12 05:13:52'),
(613, 1, 500, 'write', '2017-04-12 09:52:08', '2017-04-12 09:52:08'),
(614, 1, 501, 'write', '2017-04-13 06:57:50', '2017-04-13 06:57:50'),
(615, 1, 502, 'write', '2017-04-16 04:03:04', '2017-04-16 04:03:04'),
(616, 1, 503, 'write', '2017-04-16 04:04:34', '2017-04-16 04:04:34'),
(617, 1, 505, 'write', '2017-04-16 04:39:40', '2017-04-16 04:39:40'),
(618, 1, 506, 'write', '2017-04-17 08:17:22', '2017-04-17 08:17:22'),
(619, 1, 507, 'write', '2017-04-18 05:41:46', '2017-04-18 05:41:46'),
(620, 1, 508, 'write', '2017-04-18 05:42:48', '2017-04-18 05:42:48'),
(621, 1, 509, 'write', '2017-04-18 05:43:43', '2017-04-18 05:43:43'),
(622, 1, 510, 'write', '2017-04-19 11:13:34', '2017-04-19 11:13:34'),
(623, 1, 511, 'write', '2017-04-19 11:24:26', '2017-04-19 11:24:26'),
(624, 1, 512, 'write', '2017-04-22 09:56:47', '2017-04-22 09:56:47'),
(625, 1, 513, 'write', '2017-04-22 12:30:05', '2017-04-22 12:30:05'),
(626, 1, 515, 'write', '2017-04-23 06:28:54', '2017-04-23 06:28:54'),
(627, 1, 516, 'write', '2017-04-23 06:37:26', '2017-04-23 06:37:26'),
(628, 1, 517, 'write', '2017-04-23 06:37:52', '2017-04-23 06:37:52'),
(629, 1, 518, 'write', '2017-04-23 06:39:23', '2017-04-23 06:39:23'),
(630, 1, 519, 'write', '2017-04-23 06:42:17', '2017-04-23 06:42:17'),
(631, 1, 514, 'write', '2017-04-23 06:43:09', '2017-04-23 06:43:09'),
(632, 1, 521, 'write', '2017-04-23 07:15:33', '2017-04-23 07:15:33'),
(633, 1, 522, 'write', '2017-04-23 07:16:19', '2017-04-23 07:16:19'),
(634, 1, 523, 'write', '2017-04-23 07:16:40', '2017-04-23 07:16:40'),
(635, 1, 520, 'write', '2017-04-23 07:17:41', '2017-04-23 07:17:41'),
(636, 1, 524, 'write', '2017-04-26 09:53:01', '2017-04-26 09:53:01'),
(637, 1, 525, 'write', '2017-04-26 09:54:05', '2017-04-26 09:54:05'),
(638, 1, 526, 'write', '2017-04-26 10:01:24', '2017-04-26 10:01:24'),
(639, 1, 527, 'write', '2017-04-26 10:07:22', '2017-04-26 10:07:22'),
(640, 1, 529, 'write', '2017-04-27 08:58:48', '2017-04-27 08:58:48'),
(641, 1, 530, 'write', '2017-04-27 08:59:56', '2017-04-27 08:59:56'),
(642, 1, 528, 'write', '2017-04-27 09:00:04', '2017-04-27 09:00:04'),
(643, 1, 532, 'write', '2017-04-27 10:32:35', '2017-04-27 10:32:35'),
(644, 1, 533, 'write', '2017-04-27 10:33:20', '2017-04-27 10:33:20'),
(645, 1, 534, 'write', '2017-04-27 10:34:43', '2017-04-27 10:34:43'),
(646, 1, 531, 'write', '2017-04-27 10:35:03', '2017-04-27 10:35:03'),
(647, 1, 536, 'write', '2017-04-27 11:50:25', '2017-04-27 11:50:25'),
(648, 1, 537, 'write', '2017-04-27 11:52:26', '2017-04-27 11:52:26'),
(649, 1, 538, 'write', '2017-04-27 11:53:17', '2017-04-27 11:53:17'),
(650, 1, 535, 'write', '2017-04-27 11:53:35', '2017-04-27 11:53:35'),
(651, 1, 539, 'write', '2017-05-03 04:55:37', '2017-05-03 04:55:37'),
(652, 1, 540, 'write', '2017-05-03 04:56:31', '2017-05-03 04:56:31'),
(653, 1, 542, 'write', '2017-05-03 05:05:27', '2017-05-03 05:05:27'),
(654, 1, 543, 'write', '2017-05-03 05:07:00', '2017-05-03 05:07:00'),
(655, 1, 541, 'write', '2017-05-03 05:07:19', '2017-05-03 05:07:19'),
(656, 1, 544, 'write', '2017-05-07 05:30:59', '2017-05-07 05:30:59'),
(657, 1, 545, 'write', '2017-05-07 06:16:10', '2017-05-07 06:16:10'),
(658, 1, 547, 'write', '2017-05-15 06:36:45', '2017-05-15 06:36:45'),
(659, 1, 546, 'write', '2017-05-16 03:44:23', '2017-05-16 03:44:23'),
(660, 1, 549, 'write', '2017-05-16 08:04:14', '2017-05-16 08:04:14'),
(661, 1, 550, 'write', '2017-05-16 08:05:08', '2017-05-16 08:05:08'),
(662, 1, 548, 'write', '2017-05-16 08:05:55', '2017-05-16 08:05:55'),
(663, 1, 551, 'write', '2017-05-16 10:12:56', '2017-05-16 10:12:56'),
(664, 1, 552, 'write', '2017-05-18 06:39:49', '2017-05-18 06:39:49'),
(665, 1, 553, 'write', '2017-05-18 06:41:28', '2017-05-18 06:41:28'),
(666, 1, 554, 'write', '2017-05-18 06:52:18', '2017-05-18 06:52:18'),
(667, 1, 555, 'write', '2017-05-18 06:53:38', '2017-05-18 06:53:38'),
(668, 1, 556, 'write', '2017-05-18 06:55:04', '2017-05-18 06:55:04'),
(669, 1, 557, 'write', '2017-05-18 06:56:06', '2017-05-18 06:56:06'),
(670, 1, 558, 'write', '2017-05-18 06:57:51', '2017-05-18 06:57:51'),
(671, 1, 559, 'write', '2017-05-18 06:58:39', '2017-05-18 06:58:39'),
(672, 1, 560, 'write', '2017-05-18 06:59:14', '2017-05-18 06:59:14'),
(673, 1, 561, 'write', '2017-05-18 06:59:48', '2017-05-18 06:59:48'),
(674, 1, 562, 'write', '2017-05-18 07:01:41', '2017-05-18 07:01:41'),
(677, 1, 565, 'write', '2017-05-20 04:29:07', '2017-05-20 04:29:07'),
(678, 1, 566, 'write', '2017-05-20 04:37:26', '2017-05-20 04:37:26'),
(679, 1, 567, 'write', '2017-05-20 04:38:55', '2017-05-20 04:38:55'),
(683, 1, 571, 'write', '2017-05-20 05:39:38', '2017-05-20 05:39:38'),
(684, 1, 572, 'write', '2017-05-20 05:40:37', '2017-05-20 05:40:37'),
(691, 1, 573, 'write', '2017-05-20 06:40:21', '2017-05-20 06:40:21'),
(693, 1, 581, 'write', '2017-05-20 07:04:57', '2017-05-20 07:04:57'),
(694, 1, 582, 'write', '2017-05-20 07:05:32', '2017-05-20 07:05:32'),
(695, 1, 583, 'write', '2017-05-20 07:06:12', '2017-05-20 07:06:12'),
(696, 1, 584, 'write', '2017-05-20 08:05:56', '2017-05-20 08:05:56'),
(697, 1, 585, 'write', '2017-05-20 08:09:27', '2017-05-20 08:09:27'),
(698, 1, 586, 'write', '2017-05-20 08:09:53', '2017-05-20 08:09:53'),
(699, 1, 587, 'write', '2017-05-20 08:11:24', '2017-05-20 08:11:24'),
(700, 1, 588, 'write', '2017-05-22 09:03:07', '2017-05-22 09:03:07'),
(701, 1, 589, 'write', '2017-05-22 09:04:08', '2017-05-22 09:04:08'),
(702, 1, 590, 'write', '2017-05-22 09:04:40', '2017-05-22 09:04:40'),
(703, 1, 591, 'write', '2017-05-22 09:05:07', '2017-05-22 09:05:07'),
(704, 1, 592, 'write', '2017-05-22 09:05:29', '2017-05-22 09:05:29'),
(705, 1, 593, 'write', '2017-05-22 09:06:13', '2017-05-22 09:06:13'),
(706, 1, 594, 'write', '2017-05-22 09:06:37', '2017-05-22 09:06:37'),
(707, 1, 595, 'write', '2017-05-22 09:08:45', '2017-05-22 09:08:45'),
(708, 1, 596, 'write', '2017-05-22 09:09:28', '2017-05-22 09:09:28'),
(709, 1, 597, 'write', '2017-05-22 09:09:52', '2017-05-22 09:09:52'),
(710, 1, 598, 'write', '2017-05-22 10:02:27', '2017-05-22 10:02:27'),
(711, 1, 599, 'write', '2017-05-22 10:05:58', '2017-05-22 10:05:58'),
(712, 1, 600, 'write', '2017-05-22 10:09:03', '2017-05-22 10:09:03'),
(713, 1, 601, 'write', '2017-05-22 10:10:59', '2017-05-22 10:10:59'),
(714, 1, 602, 'write', '2017-05-22 10:12:01', '2017-05-22 10:12:01'),
(715, 1, 603, 'write', '2017-05-22 10:12:26', '2017-05-22 10:12:26'),
(716, 1, 604, 'write', '2017-05-22 10:13:19', '2017-05-22 10:13:19'),
(717, 1, 605, 'write', '2017-05-22 10:13:52', '2017-05-22 10:13:52'),
(718, 1, 606, 'write', '2017-05-23 05:49:59', '2017-05-23 05:49:59'),
(719, 1, 607, 'write', '2017-05-23 05:50:26', '2017-05-23 05:50:26'),
(720, 1, 608, 'write', '2017-05-23 12:19:36', '2017-05-23 12:19:36'),
(722, 1, 611, 'write', '2017-05-24 04:32:23', '2017-05-24 04:32:23'),
(723, 1, 612, 'write', '2017-05-24 04:34:26', '2017-05-24 04:34:26'),
(724, 1, 613, 'write', '2017-05-24 04:36:53', '2017-05-24 04:36:53'),
(725, 1, 614, 'write', '2017-05-24 04:37:42', '2017-05-24 04:37:42'),
(726, 1, 615, 'write', '2017-05-24 04:38:46', '2017-05-24 04:38:46'),
(727, 1, 616, 'write', '2017-05-24 04:41:08', '2017-05-24 04:41:08'),
(728, 1, 617, 'write', '2017-05-24 04:41:42', '2017-05-24 04:41:42'),
(729, 1, 618, 'write', '2017-05-24 04:43:14', '2017-05-24 04:43:14'),
(730, 1, 619, 'write', '2017-05-24 04:43:53', '2017-05-24 04:43:53'),
(731, 1, 620, 'write', '2017-05-24 04:48:58', '2017-05-24 04:48:58'),
(732, 1, 621, 'write', '2017-05-25 09:08:43', '2017-05-25 09:08:43'),
(733, 1, 624, 'write', '2017-05-25 09:22:22', '2017-05-25 09:22:22'),
(735, 1, 626, 'write', '2017-05-25 10:56:46', '2017-05-25 10:56:46'),
(737, 1, 628, 'write', '2017-05-29 05:04:28', '2017-05-29 05:04:28'),
(738, 1, 629, 'write', '2017-05-29 05:06:58', '2017-05-29 05:06:58'),
(739, 1, 630, 'write', '2017-05-29 05:07:32', '2017-05-29 05:07:32'),
(740, 1, 631, 'write', '2017-05-29 05:08:33', '2017-05-29 05:08:33'),
(741, 1, 632, 'write', '2017-05-29 05:14:28', '2017-05-29 05:14:28'),
(742, 1, 633, 'write', '2017-05-29 05:24:21', '2017-05-29 05:24:21'),
(743, 1, 634, 'write', '2017-05-29 05:25:16', '2017-05-29 05:25:16'),
(744, 1, 635, 'write', '2017-05-29 05:26:08', '2017-05-29 05:26:08'),
(745, 1, 636, 'write', '2017-05-29 05:27:17', '2017-05-29 05:27:17'),
(746, 1, 637, 'write', '2017-05-29 05:29:01', '2017-05-29 05:29:01'),
(747, 1, 638, 'write', '2017-05-29 05:29:34', '2017-05-29 05:29:34'),
(748, 1, 639, 'write', '2017-05-29 05:29:57', '2017-05-29 05:29:57'),
(749, 1, 640, 'write', '2017-05-29 05:48:31', '2017-05-29 05:48:31'),
(750, 1, 641, 'write', '2017-05-29 05:50:15', '2017-05-29 05:50:15'),
(751, 1, 642, 'write', '2017-05-29 05:50:54', '2017-05-29 05:50:54'),
(752, 1, 643, 'write', '2017-05-29 05:52:33', '2017-05-29 05:52:33'),
(753, 1, 644, 'write', '2017-05-29 05:54:09', '2017-05-29 05:54:09'),
(754, 1, 645, 'write', '2017-05-29 05:56:38', '2017-05-29 05:56:38'),
(755, 1, 646, 'write', '2017-05-29 05:57:02', '2017-05-29 05:57:02'),
(757, 1, 651, 'write', '2017-05-31 08:49:19', '2017-05-31 08:49:19'),
(759, 1, 653, 'write', '2017-06-12 09:12:07', '2017-06-12 09:12:07'),
(760, 1, 654, 'write', '2017-06-12 09:13:19', '2017-06-12 09:13:19'),
(761, 1, 655, 'write', '2017-06-12 09:15:13', '2017-06-12 09:15:13'),
(762, 1, 656, 'write', '2017-06-12 09:16:42', '2017-06-12 09:16:42'),
(763, 1, 657, 'write', '2017-06-12 09:20:13', '2017-06-12 09:20:13'),
(764, 1, 658, 'write', '2017-06-12 09:21:09', '2017-06-12 09:21:09'),
(765, 1, 659, 'write', '2017-06-19 08:10:42', '2017-06-19 08:10:42'),
(766, 1, 660, 'write', '2017-06-19 08:13:10', '2017-06-19 08:13:10'),
(767, 1, 661, 'write', '2017-06-19 08:13:33', '2017-06-19 08:13:33'),
(768, 1, 662, 'write', '2017-06-19 08:50:40', '2017-06-19 08:50:40'),
(769, 1, 663, 'write', '2017-06-19 09:20:55', '2017-06-19 09:20:55'),
(770, 1, 664, 'write', '2017-06-19 09:21:29', '2017-06-19 09:21:29'),
(771, 1, 665, 'write', '2017-06-20 04:59:08', '2017-06-20 04:59:08'),
(772, 1, 666, 'write', '2017-06-22 02:57:51', '2017-06-22 02:57:51'),
(773, 1, 667, 'write', '2017-06-22 05:34:49', '2017-06-22 05:34:49'),
(774, 1, 668, 'write', '2017-07-23 08:23:34', '2017-07-23 08:23:34'),
(775, 1, 669, 'write', '2017-07-30 09:55:45', '2017-07-30 09:55:45'),
(776, 1, 670, 'write', '2017-07-30 10:15:12', '2017-07-30 10:15:12'),
(777, 1, 671, 'write', '2017-08-02 11:16:49', '2017-08-02 11:16:49'),
(778, 1, 672, 'write', '2017-08-14 06:25:32', '2017-08-14 06:25:32'),
(779, 1, 673, 'write', '2017-08-23 09:13:30', '2017-08-23 09:13:30'),
(781, 1, 675, 'write', '2017-08-23 09:33:53', '2017-08-23 09:33:53'),
(782, 1, 676, 'write', '2017-08-23 09:35:04', '2017-08-23 09:35:04'),
(783, 1, 677, 'write', '2017-08-23 09:36:34', '2017-08-23 09:36:34'),
(784, 1, 679, 'write', '2017-09-14 10:35:17', '2017-09-14 10:35:17'),
(785, 1, 680, 'write', '2017-09-14 10:36:53', '2017-09-14 10:36:53'),
(786, 1, 681, 'write', '2017-09-14 10:41:43', '2017-09-14 10:41:43'),
(787, 1, 682, 'write', '2017-09-14 10:48:17', '2017-09-14 10:48:17'),
(788, 1, 683, 'write', '2017-09-14 10:49:07', '2017-09-14 10:49:07'),
(789, 1, 684, 'write', '2017-09-14 10:49:38', '2017-09-14 10:49:38'),
(792, 1, 687, 'write', '2017-09-27 11:01:29', '2017-09-27 11:01:29'),
(793, 1, 688, 'write', '2017-11-30 06:47:09', '2017-11-30 06:47:09'),
(794, 1, 689, 'write', '2017-11-30 07:06:32', '2017-11-30 07:06:32'),
(795, 1, 690, 'write', '2017-12-09 11:14:30', '2017-12-09 11:14:30'),
(796, 1, 691, 'write', '2017-12-09 11:16:33', '2017-12-09 11:16:33'),
(797, 1, 692, 'write', '2017-12-09 11:17:27', '2017-12-09 11:17:27'),
(798, 1, 693, 'write', '2017-12-09 11:18:56', '2017-12-09 11:18:56'),
(799, 1, 694, 'write', '2017-12-09 11:19:36', '2017-12-09 11:19:36'),
(800, 1, 695, 'write', '2017-12-09 11:20:00', '2017-12-09 11:20:00'),
(801, 1, 696, 'write', '2017-12-09 11:21:06', '2017-12-09 11:21:06'),
(802, 1, 697, 'write', '2017-12-09 11:24:13', '2017-12-09 11:24:13'),
(803, 1, 698, 'write', '2017-12-18 07:56:31', '2017-12-18 07:56:31'),
(804, 1, 699, 'write', '2018-01-03 04:40:52', '2018-01-03 04:40:52'),
(805, 1, 700, 'write', '2018-01-03 04:42:02', '2018-01-03 04:42:02'),
(806, 1, 701, 'write', '2018-01-03 04:42:35', '2018-01-03 04:42:35'),
(807, 1, 703, 'write', '2018-01-21 09:44:33', '2018-01-21 09:44:33'),
(810, 1, 706, 'write', '2018-01-21 09:59:54', '2018-01-21 09:59:54'),
(814, 1, 710, 'write', '2018-01-21 10:16:08', '2018-01-21 10:16:08'),
(815, 1, 717, 'write', '2018-05-12 04:40:23', '2018-05-12 04:40:23'),
(816, 1, 718, 'write', '2018-05-12 04:45:24', '2018-05-12 04:45:24'),
(817, 1, 719, 'write', '2018-05-12 05:16:41', '2018-05-12 05:16:41'),
(818, 1, 720, 'write', '2018-05-12 05:17:25', '2018-05-12 05:17:25'),
(819, 1, 721, 'write', '2018-05-26 08:40:20', '2018-05-26 08:40:20'),
(820, 1, 722, 'write', '2018-05-26 08:41:04', '2018-05-26 08:41:04'),
(821, 1, 723, 'write', '2018-05-26 08:42:09', '2018-05-26 08:42:09'),
(822, 1, 724, 'write', '2018-05-26 08:43:28', '2018-05-26 08:43:28'),
(823, 1, 725, 'write', '2018-06-04 04:17:07', '2018-06-04 04:17:07'),
(824, 1, 726, 'write', '2018-07-22 04:49:55', '2018-07-22 04:49:55'),
(825, 1, 727, 'write', '2018-07-22 04:50:20', '2018-07-22 04:50:20'),
(826, 1, 728, 'write', '2018-07-22 04:50:42', '2018-07-22 04:50:42'),
(827, 1, 729, 'write', '2018-07-22 04:51:05', '2018-07-22 04:51:05'),
(828, 1, 730, 'write', '2018-07-22 04:51:22', '2018-07-22 04:51:22'),
(829, 1, 731, 'write', '2018-07-22 04:51:44', '2018-07-22 04:51:44'),
(830, 1, 732, 'write', '2018-07-22 04:52:30', '2018-07-22 04:52:30'),
(831, 1, 733, 'write', '2018-07-22 04:58:53', '2018-07-22 04:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `deleted_at`, `created_at`, `updated_at`, `user_id`, `role_id`) VALUES
(1, NULL, '2017-05-20 08:29:02', '2017-05-20 08:29:02', 1, 1),
(2, NULL, '2017-05-21 11:23:50', '2017-07-22 12:25:58', 19, 4),
(3, NULL, '2017-05-25 10:12:42', '2017-05-25 10:12:42', 19, 14),
(4, NULL, '2017-06-14 05:33:15', '2017-06-14 05:33:15', 20, 15),
(5, NULL, '2017-07-08 10:31:43', '2017-07-08 10:31:43', 20, 5),
(6, NULL, '2017-08-01 07:24:22', '2017-09-11 05:44:18', 19, 6),
(7, '2018-06-02 05:39:33', '2017-08-22 08:34:56', '2018-06-02 05:39:33', 23, 1),
(8, NULL, '2017-10-04 10:27:21', '2017-10-04 10:27:21', 19, 1),
(9, NULL, '2018-05-21 08:28:35', '2018-05-21 08:28:35', 20, 16),
(10, NULL, '2018-06-02 05:39:49', '2018-06-02 05:39:49', 23, 17),
(11, NULL, '2018-06-02 05:49:25', '2018-06-02 05:49:25', 25, 17),
(12, NULL, '2018-06-02 05:56:33', '2018-06-02 05:56:33', 24, 17),
(13, NULL, '2018-06-02 07:54:51', '2018-06-02 07:54:51', 27, 18),
(14, NULL, '2018-06-02 07:55:01', '2018-06-02 07:55:01', 28, 18),
(15, NULL, '2018-07-18 06:53:58', '2018-07-18 06:53:58', 19, 3),
(16, NULL, '2018-07-22 12:09:53', '2018-07-22 12:09:53', 29, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_branch_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `section_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `section_address` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_working_area` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_phone_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_mobile_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `deleted_at`, `created_at`, `updated_at`, `sub_branch_id`, `section_name`, `section_address`, `section_working_area`, `section_phone_no`, `section_mobile_no`, `section_fax`, `section_email`) VALUES
(1, NULL, '2017-03-03 21:55:04', '2017-04-06 12:21:52', 2, 'Section 1', 'sdf', 'gfhgfhgfh', NULL, NULL, NULL, NULL),
(2, NULL, '2017-04-19 13:35:31', '2017-04-22 04:47:26', 12, 'Section-1', NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '2017-04-19 13:36:17', '2017-04-19 13:36:17', 12, 'Section-2(11)', NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '2017-04-19 13:37:12', '2017-04-19 13:37:12', 12, 'Section-3(11)', NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, '2017-04-19 13:37:50', '2017-04-22 04:47:56', 12, 'Section-4', NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, '2017-04-19 13:38:55', '2017-04-22 04:46:56', 12, 'Officer’s Mess', NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, '2017-04-19 13:40:32', '2017-04-22 04:46:35', 14, 'Record Section-1(AFD)', NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '2017-04-19 13:41:44', '2017-04-22 04:46:17', 14, 'Record Section-2(police and other)', NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, '2017-04-19 13:48:19', '2017-04-22 04:45:57', 11, 'Budget and accounts section', NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, '2017-04-19 13:51:36', '2017-04-22 04:45:19', 11, 'Procurement Section', NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, '2017-04-19 13:52:50', '2017-04-19 13:52:50', 16, 'Overall', NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, '2017-04-19 13:55:07', '2017-04-19 13:55:07', 16, 'Running repair ', NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, '2017-04-19 13:55:49', '2017-04-19 13:55:49', 16, 'Electrical', NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, '2017-04-19 13:56:37', '2017-04-19 13:56:37', 16, 'Battery', NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, '2017-04-19 14:11:21', '2017-04-19 14:11:21', 25, 'Emty Line ', NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, '2017-04-19 14:12:40', '2017-04-26 12:08:26', 25, 'Ground Cure ', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_name` varchar(52) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `deleted_at`, `created_at`, `updated_at`, `store_name`) VALUES
(1, NULL, '2017-03-12 10:37:55', '2017-03-12 10:37:55', 'MIS Store'),
(2, NULL, '2017-04-11 05:09:08', '2017-04-11 05:09:08', 'General Store'),
(3, NULL, '2017-04-30 10:25:57', '2017-04-30 10:25:57', 'Signal Store'),
(4, NULL, '2017-04-30 10:26:14', '2017-04-30 10:26:14', 'Central Store'),
(5, NULL, '2018-05-20 03:42:26', '2018-05-20 03:42:26', 'Ration Store');

-- --------------------------------------------------------

--
-- Table structure for table `store_users`
--

CREATE TABLE `store_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `org_store_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `store_users`
--

INSERT INTO `store_users` (`id`, `deleted_at`, `created_at`, `updated_at`, `user_id`, `org_store_id`) VALUES
(1, '2017-09-21 06:07:17', '2017-07-12 07:08:54', '2017-09-21 06:07:17', 19, 1),
(2, NULL, '2017-07-29 10:50:25', '2017-07-29 10:50:25', 19, 8),
(3, '2017-07-29 11:45:27', '2017-07-29 11:44:58', '2017-07-29 11:45:27', 19, 9),
(4, '2017-09-21 06:07:14', '2017-07-29 11:47:54', '2017-09-21 06:07:14', 19, 9),
(5, NULL, '2017-08-22 08:33:47', '2017-09-18 04:34:45', 23, 2),
(6, '2017-09-17 06:34:36', '2017-08-22 08:36:49', '2017-09-17 06:34:36', 23, 2),
(7, NULL, '2017-09-21 06:07:28', '2017-09-21 06:07:28', 19, 9),
(8, NULL, '2018-05-20 03:48:03', '2018-05-20 03:48:03', 19, 11),
(9, NULL, '2018-06-02 07:44:46', '2018-06-02 07:44:46', 27, 12),
(10, NULL, '2018-06-02 07:44:56', '2018-06-02 07:44:56', 28, 13),
(11, NULL, '2018-07-22 12:08:56', '2018-07-22 12:08:56', 29, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sub_branches`
--

CREATE TABLE `sub_branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `sb_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `sb_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sb_working_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sb_phone_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sb_mobile_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sb_fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sb_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_branches`
--

INSERT INTO `sub_branches` (`id`, `deleted_at`, `created_at`, `updated_at`, `branch_id`, `sb_name`, `sb_address`, `sb_working_area`, `sb_phone_no`, `sb_mobile_no`, `sb_fax`, `sb_email`) VALUES
(1, '2017-04-08 05:59:33', '2017-03-03 21:27:28', '2017-03-03 21:27:44', 1, 'sub branch 1', 'sadf', 'sadf', '025', NULL, NULL, NULL),
(2, NULL, '2017-03-03 21:46:21', '2017-04-19 13:35:14', 1, 'Admin', NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '2017-04-06 06:23:01', '2017-04-19 13:31:03', 18, 'Armament', NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '2017-04-19 13:18:51', '2017-04-22 04:44:54', 13, 'Switching Center', NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, '2017-04-19 13:19:53', '2017-04-19 13:19:53', 13, 'Signal Center', NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, '2017-04-19 13:20:21', '2017-04-19 13:20:21', 13, 'Communication', NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, '2017-04-19 13:23:13', '2017-04-19 13:23:13', 1, 'Central logistic ', NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '2017-04-19 13:24:08', '2017-04-19 13:24:08', 1, 'Personal discipline and welfare ', NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, '2017-04-19 13:24:50', '2017-04-19 13:24:50', 1, 'General ', NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, '2017-04-19 13:25:31', '2017-04-19 13:25:31', 6, 'Health ', NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, '2017-04-19 13:25:31', '2017-04-19 13:25:31', 7, 'Finance', NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, '2017-04-19 13:25:54', '2017-04-19 13:25:54', 6, 'Admin', NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, '2017-04-19 13:26:02', '2017-04-19 13:26:02', 7, 'Development', NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, '2017-04-19 13:26:17', '2017-04-19 13:26:17', 6, 'Record', NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, '2017-04-19 13:27:22', '2017-04-19 13:27:22', 18, 'Admin', NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, '2017-04-19 13:37:26', '2017-04-19 13:37:26', 18, 'Transport', NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, '2017-04-19 13:42:04', '2017-04-19 13:42:04', 18, 'Telecommunication', NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, '2017-04-19 13:46:26', '2017-04-19 13:46:26', 18, 'Issue/Recieve and Quality Control', NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, '2017-04-19 13:47:36', '2017-04-19 13:47:36', 18, 'Document', NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, '2017-04-19 13:48:16', '2017-04-19 13:48:16', 18, 'Recovery', NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, '2017-04-19 13:49:27', '2017-04-19 13:49:27', 18, 'Store Procurement and Management', NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, '2017-04-19 14:07:47', '2017-04-22 04:44:07', 19, 'Flying unit', NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, '2017-04-19 14:08:33', '2017-04-26 12:30:13', 19, 'Office Staff', NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, '2017-04-19 14:09:28', '2017-04-26 12:29:10', 19, 'Flight Line', NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, '2017-04-19 14:10:17', '2017-04-26 12:29:06', 19, 'Line Headquarter', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sections`
--

CREATE TABLE `sub_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `section_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `sub_section_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sub_section_address` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `working_area` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_section_phone_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_section_fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_section_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_sections`
--

INSERT INTO `sub_sections` (`id`, `deleted_at`, `created_at`, `updated_at`, `section_id`, `sub_section_name`, `sub_section_address`, `working_area`, `sub_section_phone_no`, `mobile_no`, `sub_section_fax`, `sub_section_email`) VALUES
(1, NULL, '2017-03-03 22:14:39', '2017-04-26 12:11:14', 1, 'Sub Section 1', 'A', NULL, 'gfjghjghj', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(152) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `cp_designation` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp_contact_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cp_email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `company_contact_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company_email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `company_web` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_address1` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company_address2` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `deleted_at`, `created_at`, `updated_at`, `company_name`, `company_code`, `contact_person`, `cp_designation`, `cp_contact_no`, `cp_email`, `company_contact_no`, `company_email`, `company_web`, `company_address1`, `company_address2`, `company_status`) VALUES
(1, NULL, '2017-03-12 11:54:57', '2017-03-12 12:01:17', 'Logic Software Limited', 'LSL', 'Shumon Khan', NULL, '01744121212', 'shumon.khan@asrotex.com', '029192151', 'info@logicsoftbd.com', 'www.logicsoftbd.com', 'H#85, R#4, Block-B, Banani, Dhaka-1213', NULL, 'Active'),
(2, NULL, '2017-04-30 10:45:11', '2018-07-23 05:39:07', 'Global Brands Bangladesh Limited', 'GBBL', 'Abdul Hi', 'Sales Manager', '01555', 'sales@globalbrandbd.com', '0114523', 'info@globalbrandbd.com', 'www.globalbrandbd.com', '19/2, West Panthapath (3rd ~ 7th floor)\r\nDhanmondi, Dhaka-1205', 'ggbggfb', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `trades`
--

CREATE TABLE `trades` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mother_force_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_id` int(10) UNSIGNED DEFAULT NULL,
  `trade_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trades`
--

INSERT INTO `trades` (`id`, `deleted_at`, `created_at`, `updated_at`, `mother_force_id`, `core_id`, `trade_name`) VALUES
(1, NULL, '2017-03-07 21:26:00', '2017-04-19 11:01:19', 1, 8, 'SMT'),
(2, NULL, '2017-03-08 02:21:28', '2017-04-19 11:01:35', 1, 8, 'TBV'),
(3, NULL, '2017-03-08 02:22:28', '2017-04-19 11:01:52', 1, 8, 'Armorar'),
(4, NULL, '2017-04-19 11:02:13', '2017-04-19 11:02:13', 1, 8, 'Medical Assistant'),
(5, NULL, '2017-07-03 06:32:02', '2017-07-03 06:32:02', 1, 1, 'Trade 1'),
(6, NULL, '2017-07-03 07:23:00', '2017-07-03 07:23:00', 1, 1, 'Trade 2');

-- --------------------------------------------------------

--
-- Table structure for table `training_infos`
--

CREATE TABLE `training_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `training_type` int(10) UNSIGNED DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `sponsor` text COLLATE utf8_unicode_ci,
  `result` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `training_infos`
--

INSERT INTO `training_infos` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `training_type`, `from_date`, `to_date`, `title`, `location`, `country_id`, `sponsor`, `result`) VALUES
(1, NULL, '2017-05-25 06:34:07', '2017-05-25 06:34:07', 2, 1, '2017-05-06', '2017-05-07', 'Firing training at base camp', NULL, 18, NULL, 'Good'),
(2, NULL, '2017-08-26 04:17:00', '2017-08-26 04:17:17', 10156, 1, '2017-08-26', '2017-09-09', 'Shooting Training', NULL, 18, NULL, NULL),
(3, NULL, '2017-10-25 06:57:51', '2017-10-25 11:12:10', 10153, 1, '2017-10-26', '2017-10-27', 'asdf', 'asdfa', 1, NULL, NULL),
(4, NULL, '2017-10-25 07:19:16', '2017-10-25 12:16:47', 1, 1, '2018-06-02', '2018-06-06', 'Training', NULL, 13, NULL, NULL),
(5, NULL, '2017-10-25 11:51:18', '2017-10-25 11:52:16', 10152, 1, '2017-10-27', '2017-10-30', 'Training', NULL, 15, NULL, NULL),
(7, NULL, '2017-10-26 03:38:57', '2017-10-26 03:38:57', 3, 1, '2017-10-27', '2017-10-29', 'Firing Training ', NULL, 5, NULL, NULL),
(9, NULL, '2017-10-28 06:39:15', '2017-10-28 06:39:52', 10143, 1, '2017-10-29', '2017-11-01', 'asdf', NULL, 1, NULL, NULL),
(10, NULL, '2017-10-28 11:39:03', '2017-10-28 11:58:50', 1, 1, '2018-06-02', '2018-06-08', 'lkjjkl', NULL, 1, NULL, NULL),
(11, NULL, '2018-05-27 09:05:50', '2018-05-27 09:05:50', 10152, 1, '2018-06-02', '2018-06-08', 'OH of 02 x RD-33 eng of MiG-29B/UB ac ', NULL, 18, NULL, NULL),
(12, NULL, '2018-06-11 06:20:59', '2018-06-11 06:20:59', 10134, 1, '2018-06-11', '2018-06-11', 'dsaff', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `training_type` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ttype_short_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `training_types`
--

INSERT INTO `training_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `training_type`, `ttype_short_code`) VALUES
(1, NULL, '2017-03-12 09:20:42', '2017-03-12 09:21:21', 'Firing', 'IPFT/RFT');

-- --------------------------------------------------------

--
-- Table structure for table `training_weeks`
--

CREATE TABLE `training_weeks` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `traning_week` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `training_weeks`
--

INSERT INTO `training_weeks` (`id`, `deleted_at`, `created_at`, `updated_at`, `traning_week`, `from_date`, `to_date`) VALUES
(1, '2017-04-02 10:18:07', '2017-04-02 10:12:46', '2017-04-02 10:18:07', '1st', '2017-04-02', '2017-04-04'),
(2, NULL, '2017-04-02 10:18:13', '2017-04-02 10:18:13', '2nd', '2017-04-02', '2017-04-02'),
(3, NULL, '2017-04-03 11:28:22', '2017-04-03 11:28:22', '1st', '2017-04-01', '2017-04-07'),
(4, NULL, '2017-04-03 11:56:03', '2017-04-03 11:56:03', '1st', '2017-04-04', '2017-04-25'),
(5, NULL, '2017-04-04 04:30:28', '2017-04-04 04:30:28', '1st', '2017-04-28', '2017-05-01'),
(6, NULL, '2017-05-10 05:34:18', '2017-05-10 05:34:18', '1st', '2017-05-10', '2017-05-17'),
(7, NULL, '2017-07-27 04:56:55', '2017-07-27 04:56:55', '1st', '2017-07-25', '2017-08-01'),
(8, NULL, '2017-08-07 03:29:18', '2017-08-07 03:29:18', '1st', '2017-08-01', '2017-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `travel_informations`
--

CREATE TABLE `travel_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emp_id` int(10) NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci,
  `purpose` text COLLATE utf8_unicode_ci,
  `sponsor` text COLLATE utf8_unicode_ci,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `travel_informations`
--

INSERT INTO `travel_informations` (`id`, `deleted_at`, `created_at`, `updated_at`, `emp_id`, `country_id`, `location`, `purpose`, `sponsor`, `from_date`, `to_date`) VALUES
(1, NULL, '2017-05-25 06:24:03', '2017-05-25 06:24:03', 2, 226, 'America', 'Visit', NULL, '2017-05-25', '2017-05-26'),
(2, NULL, '2017-10-25 08:27:17', '2017-10-25 08:27:17', 10151, 1, NULL, 'Mission', NULL, '2017-10-26', '2017-10-27'),
(3, NULL, '2017-10-25 08:28:23', '2017-10-25 11:09:42', 10151, 1, NULL, 'Mission', NULL, '2017-10-26', '2017-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `tyre_change_recs`
--

CREATE TABLE `tyre_change_recs` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_record_id` int(10) UNSIGNED NOT NULL,
  `made_type` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tyre_producer` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tyre_no` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tyre_change_date` date DEFAULT NULL,
  `tyre_change_reason` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tyre_change_recs`
--

INSERT INTO `tyre_change_recs` (`id`, `deleted_at`, `created_at`, `updated_at`, `vehicle_record_id`, `made_type`, `tyre_producer`, `tyre_no`, `tyre_change_date`, `tyre_change_reason`, `remarks`) VALUES
(1, NULL, '2017-05-30 04:29:45', '2017-05-30 04:45:40', 3, 'fasdsj', 'MRF', 'MRF-963185', '2017-05-31', 'Puncture', 'Remarks');

-- --------------------------------------------------------

--
-- Table structure for table `upazillas`
--

CREATE TABLE `upazillas` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `district_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `upazilla_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `upazillas`
--

INSERT INTO `upazillas` (`id`, `deleted_at`, `created_at`, `updated_at`, `district_id`, `upazilla_name`) VALUES
(1, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 51, 'Muladi'),
(2, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 51, 'Babuganj'),
(3, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 51, 'Airport'),
(4, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 51, 'Agailjhara'),
(5, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 51, 'Sadar'),
(6, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 51, 'Bakerganj'),
(7, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 51, 'Banaripara'),
(8, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 51, 'Gaurnadi'),
(9, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 51, 'Hizla'),
(10, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 51, 'Mehendiganj'),
(11, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 51, 'Wazirpur'),
(12, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 53, 'Amtali'),
(13, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 53, 'Bamna'),
(14, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 53, 'Sadar'),
(15, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 53, 'Betagi'),
(16, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 53, 'Patharghata'),
(17, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 53, 'Taltali'),
(18, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 52, 'Sadar'),
(19, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 52, 'Daulatkhan'),
(20, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 52, 'Burhanuddin'),
(21, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 52, 'Tazumuddin'),
(22, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 52, 'Lalmohan'),
(23, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 52, 'Char Fasson'),
(24, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 52, 'Manpura'),
(25, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 56, 'Sadar'),
(26, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 56, 'Kathalia'),
(27, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 56, 'Nalchity'),
(28, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 56, 'Rajapur'),
(29, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 55, 'Kalapara'),
(30, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 55, 'Mirzaganj'),
(31, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 55, 'Sadar'),
(32, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 55, 'Dumki'),
(33, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 55, 'Rangabali'),
(34, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 55, 'Bauphal'),
(35, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 55, 'Dashmina'),
(36, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 55, 'Galachipa'),
(37, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 54, 'Bhandaria'),
(38, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 54, 'Kawkhali'),
(39, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 54, 'Mathbaria'),
(40, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 54, 'Nazirpur'),
(41, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 54, 'Nesarabad'),
(42, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 54, 'Sadar'),
(43, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 54, 'Zianagar'),
(44, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 26, 'Sadar'),
(45, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 26, 'Ashuganj'),
(46, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 26, 'Nasirnagar'),
(47, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 26, 'Nabinagar'),
(48, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 26, 'Sarail'),
(49, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 26, 'Kasba'),
(50, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 26, 'Akhaura'),
(51, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 26, 'Bancharampur'),
(52, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 26, 'Bijoynagar'),
(53, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Meghna'),
(54, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Muradnagar'),
(55, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Nangalkot'),
(56, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Comilla Sadar Dakshin Upazila'),
(57, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Titas'),
(58, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Barura'),
(59, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Brahmanpara'),
(60, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Burichong'),
(61, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Chandina'),
(62, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Chauddagram'),
(63, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Daudkandi'),
(64, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Debidwar'),
(65, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Homna'),
(66, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Sadar'),
(67, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Laksam'),
(68, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 27, 'Monohorgonj'),
(69, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 21, 'Sadar'),
(70, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 21, 'Faridganj'),
(71, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 21, 'Haimchar'),
(72, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 21, 'Haziganj'),
(73, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 21, 'Kachua'),
(74, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 21, 'Matlab Uttar Upazila'),
(75, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 21, 'Matlab Dakkhin'),
(76, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 21, 'Shahrasti'),
(77, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 19, 'Sadar'),
(78, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 19, 'Raipur'),
(79, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 19, 'Ramganj'),
(80, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 19, 'Ramgati'),
(81, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 19, 'Kamalnagar'),
(82, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 20, 'Sadar'),
(83, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 20, 'Begumganj'),
(84, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 20, 'Chatkhil'),
(85, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 20, 'Companiganj'),
(86, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 20, 'Senbagh'),
(87, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 20, 'Hatiya'),
(88, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 20, 'Kabirhat'),
(89, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 20, 'Sonaimuri'),
(90, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 20, 'Suborno Char'),
(91, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 25, 'Parshuram'),
(92, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 25, 'Sadar'),
(93, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 25, 'Fulgazi'),
(94, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 25, 'Sonagazi'),
(95, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 25, 'Chagalnaiya'),
(96, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 25, 'Daganbhuiyan'),
(97, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Anwara'),
(98, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Banshkhali'),
(99, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Boalkhali'),
(100, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Chandanaish'),
(101, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Fatikchhari'),
(102, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Hathazari'),
(103, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Lohagara'),
(104, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Mirsharai'),
(105, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Patiya'),
(106, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Rangunia'),
(107, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Raozan'),
(108, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Sandwip'),
(109, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Satkania'),
(110, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 22, 'Sitakunda'),
(111, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 18, 'Dighinala'),
(112, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 18, 'Sadar'),
(113, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 18, 'Lakshmichhari'),
(114, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 18, 'Mahalchhari'),
(115, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 18, 'Manikchhari'),
(116, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 18, 'Matiranga'),
(117, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 18, 'Panchhari'),
(118, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 18, 'Ramgarh'),
(119, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 23, 'kaukhali'),
(120, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 23, 'Sadar'),
(121, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 23, 'Belaichhari'),
(122, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 23, 'Bagaichhari'),
(123, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 23, 'Barkal'),
(124, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 23, 'Juraichhari'),
(125, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 23, 'Rajasthali'),
(126, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 23, 'Kaptai'),
(127, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 23, 'Langadu'),
(128, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 23, 'Naniarchar'),
(129, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 24, 'Sadar'),
(130, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 24, 'Thanchi'),
(131, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 24, 'Lama'),
(132, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 24, 'Naikhongchhari'),
(133, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 24, 'Ali kadam'),
(134, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 24, 'Rowangchhari'),
(135, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 24, 'Ruma'),
(136, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 28, 'Chakaria'),
(137, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 28, 'Sadar'),
(138, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 28, 'Kutubdia'),
(139, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 28, 'Maheshkhali'),
(140, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 28, 'Ramu'),
(141, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 28, 'Teknaf'),
(142, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 28, 'Ukhia'),
(143, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 28, 'Pekua'),
(144, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Gendaria'),
(145, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Khilkhet'),
(146, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Gulshan'),
(147, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Khilgaon'),
(148, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Hazaribagh'),
(149, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Lalbagh'),
(150, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Jatrabari'),
(151, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Mirpur'),
(152, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Kadamtali'),
(153, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Mohammadpur'),
(154, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Motijheel'),
(155, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Kafrul'),
(156, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'New Market'),
(157, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Kalabagan'),
(158, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Pallabi'),
(159, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Kamringir Char'),
(160, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Paltan'),
(161, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Ramna'),
(162, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Rampura'),
(163, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Sabujbagh'),
(164, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Shah Ali'),
(165, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Shahbagh'),
(166, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Sher-e-Bangla Nagor'),
(167, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Shyampur'),
(168, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Sutrapur'),
(169, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Dhamrai'),
(170, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Tejgaon'),
(171, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Dohar'),
(172, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Tejgaon Industrial Area'),
(173, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Keraniganj'),
(174, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Turag'),
(175, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Nawabganj'),
(176, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Uttar Khan'),
(177, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Savar'),
(178, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Uttara'),
(179, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Adabor'),
(180, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Badda'),
(181, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Biman Bandar'),
(182, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Bangshal'),
(183, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Cantonment'),
(184, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Chawkbazar Model'),
(185, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Dakshinkhan'),
(186, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Darus Salam'),
(187, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Dhanmondi'),
(188, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Demra'),
(189, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 7, 'Kotwali'),
(190, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 6, 'Sadar'),
(191, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 6, 'Boalmari'),
(192, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 6, 'Alfadanga'),
(193, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 6, 'Bhanga'),
(194, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 6, 'Nagarkanda'),
(195, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 6, 'Charbhadrasan'),
(196, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 6, 'Sadarpur'),
(197, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 6, 'Shaltha'),
(198, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 3, 'Sadar'),
(199, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 3, 'Tongi'),
(200, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 3, 'Sreepur'),
(201, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 3, 'Kaliakoir'),
(202, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 3, 'Kapasia'),
(203, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 3, 'Kaligonj'),
(204, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 2, 'Sadar'),
(205, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 2, 'Kashiani'),
(206, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 2, 'Kotalipara Upazila'),
(207, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 2, 'Muksudpur Upazila'),
(208, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 2, 'Tungipara Upazila'),
(209, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Astagram'),
(210, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Bajitpur'),
(211, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Bhairab'),
(212, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Hossainpur'),
(213, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Itna'),
(214, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Karimganj'),
(215, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Katiadi'),
(216, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Sadar'),
(217, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Kuliarchar'),
(218, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Mithamain'),
(219, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Nikli'),
(220, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Pakundia'),
(221, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 8, 'Tarail'),
(222, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 11, 'Sadar'),
(223, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 11, 'Kalkini'),
(224, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 11, 'Rajoir'),
(225, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 11, 'Shibchar'),
(226, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 14, 'Harirampur'),
(227, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 14, 'Ghior'),
(228, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 14, 'Daulatpur'),
(229, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 14, 'Sadar'),
(230, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 14, 'Singair'),
(231, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 14, 'Shibalaya'),
(232, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 14, 'Saturia'),
(233, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 12, 'Lohajang'),
(234, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 12, 'Sreenagar'),
(235, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 12, 'Sadar'),
(236, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 12, 'Sirajdikhan'),
(237, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 12, 'Tongibari'),
(238, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 12, 'Gazaria'),
(239, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 5, 'Araihazar'),
(240, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 5, 'Sonargaon'),
(241, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 5, 'Bandar'),
(242, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 5, 'Sadar'),
(243, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 5, 'Rupganj'),
(244, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 15, 'Belabo'),
(245, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 15, 'Monohardi'),
(246, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 15, 'Sadar'),
(247, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 15, 'Palash'),
(248, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 15, 'Raipura'),
(249, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 15, 'Shibpur'),
(250, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 4, 'Baliakandi'),
(251, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 4, 'Goalandaghat'),
(252, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 4, 'Pangsha'),
(253, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 4, 'Kalukhali'),
(254, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 4, 'Sadar'),
(255, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 10, 'Sadar'),
(256, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 10, 'Damudya'),
(257, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 10, 'Naria'),
(258, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 10, 'Zajira'),
(259, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 10, 'Bhedarganj'),
(260, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 10, 'Gosairhat'),
(261, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 10, 'Shakhipur'),
(262, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Sadar'),
(263, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Sakhipur'),
(264, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Basail'),
(265, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Madhupur'),
(266, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Ghatail'),
(267, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Kalihati'),
(268, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Nagarpur'),
(269, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Mirzapur'),
(270, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Gopalpur'),
(271, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Delduar'),
(272, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Bhuapur'),
(273, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Dhanbari'),
(274, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 13, 'Madhukhali'),
(275, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 43, 'Sadar'),
(276, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 43, 'Chitalmari'),
(277, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 43, 'Fakirhat'),
(278, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 43, 'Kachua'),
(279, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 43, 'Mollahat'),
(280, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 43, 'Mongla'),
(281, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 43, 'Morrelganj'),
(282, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 43, 'Rampal'),
(283, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 43, 'Sarankhola'),
(284, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 45, 'Sadar'),
(285, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 45, 'Jibannagar'),
(286, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 45, 'Damurhuda'),
(287, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 45, 'Alamdanga'),
(288, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 40, 'Abhaynagar'),
(289, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 40, 'Bagherpara'),
(290, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 40, 'Chaugachha'),
(291, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 40, 'Sadar'),
(292, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 40, 'Jhikargachha'),
(293, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 40, 'Keshabpur'),
(294, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 40, 'Manirampur'),
(295, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 40, 'Sharsha'),
(296, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 38, 'Sadar'),
(297, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 38, 'Maheshpur'),
(298, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 38, 'Kaliganj'),
(299, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 38, 'Kotchandpur'),
(300, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 38, 'Shailkupa'),
(301, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 38, 'Harinakunda'),
(302, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 46, 'Terokhada'),
(303, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 46, 'Batiaghata'),
(304, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 46, 'Dacope'),
(305, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 46, 'Dumuria'),
(306, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 46, 'Dighalia'),
(307, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 46, 'Koyra'),
(308, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 46, 'Paikgachha'),
(309, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 46, 'Phultala'),
(310, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 46, 'Rupsa'),
(311, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 46, 'khanjahan ali'),
(312, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 44, 'Mirpur'),
(313, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 44, 'Sadar'),
(314, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 44, 'Kumarkhali'),
(315, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 44, 'Bheramara'),
(316, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 44, 'Khoksa'),
(317, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 44, 'Daulatpur'),
(318, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 42, 'Sadar'),
(319, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 42, 'Mohammadpur'),
(320, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 42, 'Shalikha'),
(321, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 42, 'Sreepur'),
(322, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 41, 'Gangni'),
(323, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 41, 'Sadar'),
(324, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 41, 'Mujibnagar'),
(325, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 37, 'Sadar'),
(326, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 37, 'Kalia'),
(327, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 37, 'Lohagara'),
(328, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 39, 'Sadar'),
(329, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 39, 'Assasuni'),
(330, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 39, 'Debhata'),
(331, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 39, 'Tala'),
(332, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 39, 'Kalaroa'),
(333, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 39, 'Kaliganj'),
(334, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 39, 'Shyamnagar'),
(335, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 9, 'Dewanganj'),
(336, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 9, 'Baksiganj'),
(337, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 9, 'Islampur'),
(338, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 9, 'Sadar'),
(339, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 9, 'Madarganj'),
(340, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 9, 'Melandaha'),
(341, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 9, 'Sarishabari'),
(342, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 9, 'Narundi Police I.C'),
(343, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Bhaluka'),
(344, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Trishal'),
(345, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Haluaghat'),
(346, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Muktagachha'),
(347, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Dhobaura'),
(348, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Fulbaria'),
(349, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Gaffargaon'),
(350, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Gauripur'),
(351, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Ishwarganj'),
(352, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Mymensingh Sadar'),
(353, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Nandail'),
(354, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Phulpur'),
(355, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 1, 'Tarakanda'),
(356, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 17, 'Kalmakanda'),
(357, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 17, 'Kendua'),
(358, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 17, 'Madan'),
(359, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 17, 'Mohanganj'),
(360, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 17, 'Netrokona Sadar'),
(361, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 17, 'Purbadhala'),
(362, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 17, 'Atpara'),
(363, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 17, 'Barhatta'),
(364, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 17, 'Durgapur'),
(365, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 17, 'Khaliajuri'),
(366, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 16, 'Nalitabari'),
(367, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 16, 'Sadar'),
(368, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 16, 'Sreebardi'),
(369, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 16, 'Jhenaigati'),
(370, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 16, 'Nakla'),
(371, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 34, 'Joypurhat Sadar'),
(372, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 34, 'Akkelpur'),
(373, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 34, 'Kalai'),
(374, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 34, 'Khetlal'),
(375, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 34, 'Panchbibi'),
(376, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Sariakandi'),
(377, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Gabtali'),
(378, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Sonatala'),
(379, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Dhunat'),
(380, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Adamdighi'),
(381, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Bogra Sadar'),
(382, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Sherpur'),
(383, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Kahaloo'),
(384, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Dhupchanchia'),
(385, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Shibganj'),
(386, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Nandigram'),
(387, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 33, 'Shajahanpur'),
(388, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 30, 'Sadar'),
(389, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 30, 'Mohadevpur'),
(390, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 30, 'Manda'),
(391, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 30, 'Niamatpur'),
(392, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 30, 'Atrai'),
(393, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 30, 'Raninagar'),
(394, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 30, 'Patnitala'),
(395, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 30, 'Dhamoirhat'),
(396, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 30, 'Sapahar'),
(397, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 30, 'Porsha'),
(398, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 30, 'Badalgachhi'),
(399, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 31, 'Singra'),
(400, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 31, 'Gurudaspur'),
(401, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 31, 'Sadar'),
(402, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 31, 'Baraigram'),
(403, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 31, 'Bagatipara'),
(404, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 31, 'Lalpur'),
(405, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 31, 'Naldanga'),
(406, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 32, 'Bholahat'),
(407, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 32, 'Gomastapur'),
(408, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 32, 'Nachole'),
(409, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 32, 'Shibganj'),
(410, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 32, 'Sadar'),
(411, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 35, 'Sujanagar'),
(412, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 35, 'Atgharia'),
(413, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 35, 'Bera'),
(414, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 35, 'Bhangura'),
(415, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 35, 'Chatmohar'),
(416, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 35, 'Faridpur'),
(417, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 35, 'Ishwardi'),
(418, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 35, 'Sadar'),
(419, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 35, 'Santhia'),
(420, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 36, 'Puthia'),
(421, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 36, 'Bagha'),
(422, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 36, 'Tanore'),
(423, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 36, 'Bagmara'),
(424, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 36, 'Charghat'),
(425, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 36, 'Durgapur'),
(426, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 36, 'Godagari'),
(427, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 36, 'Mohanpur'),
(428, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 36, 'Paba'),
(429, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 29, 'Sadar'),
(430, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 29, 'Ullahpara'),
(431, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 29, 'Shahjadpur'),
(432, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 29, 'Raiganj'),
(433, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 29, 'Kamarkhanda'),
(434, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 29, 'Tarash'),
(435, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 29, 'Belkuchi'),
(436, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 29, 'Chauhali'),
(437, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 29, 'Kazipur'),
(438, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 62, 'Badarganj'),
(439, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 62, 'Mithapukur'),
(440, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 62, 'Gangachara'),
(441, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 62, 'Kaunia'),
(442, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 62, 'Rangpur Sadar'),
(443, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 62, 'Pirgachha'),
(444, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 62, 'Pirganj'),
(445, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 62, 'Taraganj'),
(446, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Ghoraghat'),
(447, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Hakimpur'),
(448, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Kaharole'),
(449, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Khansama'),
(450, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Nawabganj'),
(451, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Parbatipur'),
(452, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Phulbari'),
(453, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Biral'),
(454, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Birampur'),
(455, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Birganj'),
(456, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Bochaganj'),
(457, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Chirirbandar'),
(458, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 61, 'Sadar'),
(459, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 59, 'Sadar'),
(460, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 59, 'Nageshwari'),
(461, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 59, 'Bhurungamari'),
(462, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 59, 'Phulbari'),
(463, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 59, 'Rajarhat'),
(464, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 59, 'Ulipur'),
(465, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 59, 'Chilmari'),
(466, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 59, 'Raomari'),
(467, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 59, 'Char Rajibpur'),
(468, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 63, 'Char Rajibpur'),
(469, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 63, 'Sadar'),
(470, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 63, 'Gobindaganj'),
(471, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 63, 'Palashbari'),
(472, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 63, 'Sadullapur'),
(473, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 63, 'Saghata'),
(474, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 63, 'Sundarganj'),
(475, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 58, 'Sadar'),
(476, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 58, 'Saidpur'),
(477, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 58, 'Jaldhaka'),
(478, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 58, 'Kishoreganj'),
(479, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 58, 'Domar'),
(480, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 58, 'Dimla'),
(481, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 60, 'Atwari'),
(482, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 60, 'Tetulia'),
(483, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 60, 'Sadar'),
(484, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 60, 'Debiganj'),
(485, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 60, 'Boda'),
(486, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 64, 'Sadar'),
(487, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 64, 'Pirganj'),
(488, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 64, 'Baliadangi'),
(489, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 64, 'Haripur'),
(490, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 64, 'Ranisankail'),
(491, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 57, 'Patgram'),
(492, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 57, 'Hatibandha'),
(493, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 57, 'Kaligonj'),
(494, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 57, 'Aditmari'),
(495, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 57, 'Sadar'),
(496, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 47, 'Ajmiriganj'),
(497, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 47, 'Baniachang'),
(498, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 47, 'Bahubal'),
(499, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 47, 'Chunarughat'),
(500, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 47, 'Sadar'),
(501, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 47, 'Lakhai'),
(502, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 47, 'Madhabpur'),
(503, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 47, 'Nabiganj'),
(504, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 47, 'Shaistagonj'),
(505, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 50, 'Sadar'),
(506, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 50, 'Barlekha'),
(507, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 50, 'Juri'),
(508, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 50, 'Kamalganj'),
(509, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 50, 'Kulaura'),
(510, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 50, 'Rajnagar'),
(511, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 50, 'Sreemangal'),
(512, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 48, 'Bishwamvarpur'),
(513, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 48, 'Chhatak'),
(514, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 48, 'Derai'),
(515, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 48, 'Dharampasha'),
(516, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 48, 'Dowarabazar'),
(517, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 48, 'Jagannathpur'),
(518, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 48, 'Jamalganj'),
(519, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 48, 'Sullah'),
(520, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 48, 'Sadar'),
(521, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 48, 'Dokkin Sunamganj'),
(522, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 48, 'Tahirpur'),
(523, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Golapganj'),
(524, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Osmani Nagar'),
(525, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Balaganj'),
(526, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Bishwanath'),
(527, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Beanibazar'),
(528, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Companiganj'),
(529, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Gowainghat'),
(530, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Jaintiapur'),
(531, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Kanaighat'),
(532, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Zakiganj'),
(533, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Fenchuganj'),
(534, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'Sadar'),
(535, NULL, '2017-04-27 06:35:57', '2017-04-27 06:35:57', 49, 'South Surma');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `caption`, `user_id`, `hash`, `public`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'download.jpg', 'E:\\xampp\\htdocs\\rab-erp\\storage\\uploads\\2017-03-15-184025-download.jpg', 'jpg', '', 1, 'ap0dhttktoeequd89trr', 0, '2017-04-04 11:00:18', '2017-03-15 12:40:25', '2017-04-04 11:00:18'),
(2, 'download.jpg', 'E:\\xampp\\htdocs\\rab-erp\\storage\\uploads\\2017-03-15-184119-download.jpg', 'jpg', '', 1, 'futzyrboogm9krrq64io', 0, '2017-04-04 11:00:24', '2017-03-15 12:41:19', '2017-04-04 11:00:24'),
(3, 'download.jpg', 'E:\\wamp\\www\\rab-erp\\storage\\uploads\\2017-03-23-102405-download.jpg', 'jpg', '', 1, 'micsegtzp3miy7koyvwb', 0, '2017-04-04 11:00:28', '2017-03-23 04:24:05', '2017-04-04 11:00:28'),
(4, 'download.jpg', 'E:\\wamp\\www\\rab-erp\\storage\\uploads\\2017-03-23-102417-download.jpg', 'jpg', '', 1, 'yyj0pczzbqgpnhvkr9wu', 0, NULL, '2017-03-23 04:24:17', '2017-03-23 04:24:17'),
(5, 'download.jpg', 'E:\\wamp\\www\\rab-erp\\storage\\uploads\\2017-03-23-103120-download.jpg', 'jpg', '', 1, 'rj171kz9wjjmagdy9fzj', 0, NULL, '2017-03-23 04:31:20', '2017-03-23 04:31:20'),
(6, '4437cd540892fa32be7d8ec59235b9aa-58d167ca3d171.jpg', 'D:\\xampp\\htdocs\\rab-erp\\storage\\uploads\\2017-03-23-104824-4437cd540892fa32be7d8ec59235b9aa-58d167ca3d171.jpg', 'jpg', 'Test', 1, 'qf2vmtv0zlucgwvpdjjm', 0, '2017-03-23 05:26:45', '2017-03-23 04:48:24', '2017-03-23 05:26:45'),
(7, 'user.png', 'E:\\wamp\\www\\rab-erp\\storage\\uploads\\2017-03-29-165623-user.png', 'png', '', 1, 'a9ujfrf9k1hedvfxn0ue', 0, NULL, '2017-03-29 10:56:23', '2017-03-29 10:56:23'),
(8, '4437cd540892fa32be7d8ec59235b9aa-58d167ca3d171.jpg', 'D:\\xampp\\htdocs\\rab-erp\\storage\\uploads\\2017-04-02-124957-4437cd540892fa32be7d8ec59235b9aa-58d167ca3d171.jpg', 'jpg', 'Uploaded Image', 1, 'umbifyd0vbithr6qswdj', 0, NULL, '2017-04-02 06:49:57', '2017-04-04 11:06:42'),
(9, 'user.png', 'E:\\wamp\\www\\rab-erp\\storage\\uploads\\2017-04-04-132018-user.png', 'png', '', 1, 'opv4mnn0cahd5tl7pdqz', 0, NULL, '2017-04-04 07:20:18', '2017-04-04 07:20:18'),
(10, '4437cd540892fa32be7d8ec59235b9aa-58d167ca3d171.jpg', 'D:\\xampp\\htdocs\\rab-erp\\storage\\uploads\\2017-04-04-181136-4437cd540892fa32be7d8ec59235b9aa-58d167ca3d171.jpg', 'jpg', '', 1, 'hchb8pwquezvxqlsltbn', 0, NULL, '2017-04-04 12:11:36', '2017-04-04 12:11:36'),
(11, 'user.png', 'E:\\wamp\\www\\rab-erp\\storage\\uploads\\2017-05-25-120912-user.png', 'png', '', 1, 'yqilkn8l0p8h49xb870q', 0, NULL, '2017-05-25 06:09:12', '2017-05-25 06:09:12'),
(12, '21369141_1293670534070213_5419430949716946692_n.jpg', '/var/www/html/project/rab-erp/storage/uploads/2017-09-28-153016-21369141_1293670534070213_5419430949716946692_n.jpg', 'jpg', '', 1, 'un9g8gcgjkyrbz6ecycr', 0, NULL, '2017-09-28 09:30:17', '2017-09-28 09:30:17'),
(13, 'Image_from_Skype.jpg', '/var/www/html/project/rab-erp/storage/uploads/2017-09-28-155121-Image_from_Skype.jpg', 'jpg', '', 1, 'pvsn7ouwb8rriut0abwl', 0, NULL, '2017-09-28 09:51:21', '2017-09-28 09:51:21'),
(14, 'avro-phonetic-preferences.png', '/var/www/html/project/rab-erp/storage/uploads/2017-09-28-155146-avro-phonetic-preferences.png', 'png', '', 1, 'pq6o5b5ccp1jdw384ms6', 0, NULL, '2017-09-28 09:51:46', '2017-09-28 09:51:46'),
(15, 'rsz_passportpic.jpg', 'E:\\xampp\\htdocs\\rab-erp\\storage\\uploads\\2018-05-12-111953-rsz_passportpic.jpg', 'jpg', '', 1, 'iohadl64cqahuvlbapnv', 0, NULL, '2018-05-12 05:19:54', '2018-05-12 05:19:54'),
(16, 'rsz_passportpic.jpg', 'E:\\xampp\\htdocs\\rab-erp\\storage\\uploads\\2018-05-12-112011-rsz_passportpic.jpg', 'jpg', '', 1, 'o1muh4usladwo0dvzewl', 0, NULL, '2018-05-12 05:20:11', '2018-05-12 05:20:11'),
(17, 'rsz_passportpic.jpg', 'E:\\xampp\\htdocs\\rab-erp\\storage\\uploads\\2018-05-12-112110-rsz_passportpic.jpg', 'jpg', '', 1, 'n6vo6nvxsozsqupfxwyg', 0, NULL, '2018-05-12 05:21:10', '2018-05-12 05:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `emp_id` int(10) DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_level` tinyint(4) NOT NULL DEFAULT '4' COMMENT '0=Super Admin,1=Central Admin,2=Admin,3=Co-Admin,4=Employee',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `emp_id`, `email`, `user_name`, `password`, `type`, `remember_token`, `user_level`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'akebul', 1, NULL, 'akebulr@gmail.com', 'akebul', '$2y$10$lhA9VpYOcEpQwpghPFbUYOGDXP7995LcljguFYCBnKJNii4BNbmey', 'Employee', 'nvYKHNCdV5hMZGBFs2YEGDedvspuFT3sjir9asEGJqocf8HRrkPU89CeGWPA', 0, NULL, '2017-02-19 02:35:37', '2017-10-14 04:05:57'),
(19, 'RAB-1234', 0, 1, NULL, 'RAB-1234', '$2y$10$52RUYi9FMHUs.G5lM.KamOfr/pIU3Cnb.3y7BR1lgr/5ApQYeYnUi', 'Employee', 'DdwdYMGPVG3ajB5cNFZiTqqt95ydrmCGeamZK5D0Tu96vuf73kybef7xSSR1', 3, NULL, '2017-05-21 11:21:48', '2018-07-29 06:44:31'),
(20, 'RAB-2356', 0, 10151, NULL, 'RAB-2356', '$2y$10$sdgHGnC4nQXhDVAmiug2e..FxZ.D5.OX6nEf495bl1qIWi64R4rKq', 'Employee', NULL, 1, NULL, '2017-06-14 05:31:20', '2017-06-14 05:38:08'),
(21, '123123', 0, 10156, NULL, '123123', '$2y$10$qenY.b99ggZptpeuWvuSvei0idceIepfidtPAI0U2RpzAfR6eZQW2', 'Employee', NULL, 2, NULL, '2017-07-23 09:51:21', '2017-07-23 09:51:21'),
(22, 'RAB-HQ001', 0, 10154, NULL, 'RAB-HQ001', '$2y$10$Kw20CIf1y0ROwbvV3vkCkecwCerwCfmMS3MkQaswMENoU3u7Ew1NG', 'Employee', NULL, 2, NULL, '2017-07-23 09:51:58', '2017-07-23 09:51:58'),
(23, 'RAB-1', 0, 10143, NULL, 'RAB-1', '$2y$10$GxasZ8YPgkDsByhf1iwDruQOxO6HSqjjQryEZX1RWR1AwvLFxordO', 'Employee', NULL, 2, NULL, '2017-08-22 08:32:32', '2017-08-22 08:32:32'),
(24, 'RAB-8', 0, 10150, NULL, 'RAB-8', '$2y$10$U2KWloTGLlYpWFUu4e7g0eYa9tYIMzQsjleRguTLKuWg5msAsnB5i', 'Employee', NULL, 2, NULL, '2018-01-27 06:33:44', '2018-01-27 06:33:44'),
(25, 'Rab-12345678', 0, 10134, NULL, 'Rab-12345678', '$2y$10$LYCVX84y1XaqJdv9P3gSOuLvDE0f4cu7EbS8dKp7jDuREjCtlxKk2', 'Employee', NULL, 3, NULL, '2018-06-02 05:37:51', '2018-06-02 05:37:51'),
(26, 'RAB456', 0, 10133, NULL, 'RAB456', '$2y$10$eosH1LtiAJZiV9rCtFuY0uR0iGPAnsTgbiggS3QOCMDcj96mMleVu', 'Employee', NULL, 2, NULL, '2018-06-02 07:32:52', '2018-06-02 07:32:52'),
(27, 'Rab-12', 0, 3, NULL, 'Rab-12', '$2y$10$PLIdoR5jV0DBpOd3VHgag.BSSg8hJBrta4mcwspMoPEi6EtwbJUCC', 'Employee', NULL, 2, NULL, '2018-06-02 07:41:07', '2018-06-02 07:41:07'),
(28, 'RAB-123456', 0, 4, NULL, 'RAB-123456', '$2y$10$hfXPfph.FnH.GsOBRisVcepWPZvddAYhqYqgAmweXGg49HVxZsxxq', 'Employee', NULL, 2, NULL, '2018-06-02 07:42:23', '2018-06-02 07:42:23'),
(29, 'RAB-805038', 0, 10160, NULL, 'RAB-805038', '$2y$10$czD4Vh3CMPyMOZ8bN2eabu67bg8tBH3IIvclN.w4iZA/IeeKzvTOa', 'Employee', NULL, 2, NULL, '2018-07-22 12:08:33', '2018-07-22 12:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_accident_recs`
--

CREATE TABLE `vehicle_accident_recs` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_record_id` int(10) UNSIGNED NOT NULL,
  `vehicle_driver_id` int(10) UNSIGNED NOT NULL,
  `accident_date` date NOT NULL,
  `accident_des` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_injury` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_death` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loss_amount` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_accident_recs`
--

INSERT INTO `vehicle_accident_recs` (`id`, `deleted_at`, `created_at`, `updated_at`, `vehicle_record_id`, `vehicle_driver_id`, `accident_date`, `accident_des`, `no_of_injury`, `no_of_death`, `loss_amount`) VALUES
(1, NULL, '2017-05-31 05:28:47', '2017-08-02 05:54:24', 3, 13, '2017-05-31', 'Brake Fail', '3', NULL, '20000');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_allocations`
--

CREATE TABLE `vehicle_allocations` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `posting_rec_id` int(10) NOT NULL,
  `vehicle_record_id` int(10) UNSIGNED NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_allocations`
--

INSERT INTO `vehicle_allocations` (`id`, `deleted_at`, `created_at`, `updated_at`, `posting_rec_id`, `vehicle_record_id`, `from_date`, `to_date`) VALUES
(8, NULL, '2017-10-14 10:53:09', '2017-10-14 12:07:45', 1, 4, '2017-10-14 18:07:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_brands`
--

CREATE TABLE `vehicle_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_brand_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vehicle_brand_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_brands`
--

INSERT INTO `vehicle_brands` (`id`, `deleted_at`, `created_at`, `updated_at`, `vehicle_brand_name`, `vehicle_brand_code`) VALUES
(1, '2017-07-18 05:28:40', '2017-03-14 12:11:03', '2017-07-18 05:28:40', 'Nissan', 'NN'),
(2, NULL, '2017-05-24 11:17:57', '2017-05-24 11:17:57', 'Mitsubishi', 'Mitsubishi'),
(3, NULL, '2017-07-17 12:21:40', '2017-07-17 12:21:40', 'Toyota', 'Toyota'),
(4, NULL, '2017-07-17 12:23:02', '2017-07-17 12:23:02', 'Hyundai', 'Hyundai'),
(5, NULL, '2017-07-17 12:27:37', '2017-07-17 12:27:37', 'Nissan', 'Nissan'),
(6, NULL, '2017-07-17 12:28:16', '2017-07-17 12:28:16', 'Mitsubishi Pajero', 'Mitsubishi Pajero'),
(7, NULL, '2017-07-17 12:28:33', '2017-07-17 12:28:33', 'Mitsubishi Sport', 'Mitsubishi Sport'),
(8, NULL, '2017-07-17 12:29:48', '2017-07-17 12:29:48', 'HiAce', 'HiAce'),
(9, NULL, '2017-07-18 04:38:06', '2017-07-18 04:38:06', 'Ministry Transport', 'Ministry Transport'),
(10, NULL, '2017-07-18 04:39:15', '2017-07-18 04:39:15', 'Purchased from Provident Fund (HiAce)', 'HiAce'),
(11, NULL, '2017-07-18 04:43:25', '2017-07-18 04:43:25', 'Hilux S. Cabin', 'Hilux'),
(12, NULL, '2017-07-18 04:43:38', '2017-07-18 04:43:38', 'Hilux D. Cabin', 'Hilux'),
(13, NULL, '2017-07-18 04:44:06', '2017-07-18 04:44:06', 'Nissan Car', 'Nissan Car'),
(14, NULL, '2017-07-18 04:44:16', '2017-07-18 04:44:16', 'Nissan Cab', 'Nissan Cab'),
(15, NULL, '2017-07-18 04:44:27', '2017-07-18 04:44:27', 'Toyota Cab', 'Toyota Cab'),
(16, NULL, '2017-07-18 04:46:06', '2017-07-18 04:46:06', 'Mitsubishi Lancer', 'Mitsubishi Lancer'),
(17, NULL, '2017-07-18 04:46:42', '2017-07-18 04:46:42', 'Isuzu', 'Isuzu'),
(18, NULL, '2017-07-18 04:47:15', '2017-07-18 04:47:15', 'Arunima', 'Arunima'),
(19, NULL, '2017-07-18 04:48:53', '2017-07-18 04:48:53', 'Bajaj', 'Bajaj'),
(20, NULL, '2017-07-18 04:49:26', '2017-07-18 04:49:26', 'Jensen', 'Jensen'),
(21, NULL, '2017-07-18 04:49:55', '2017-07-18 04:49:55', 'Hero Passion', 'Hero Passion'),
(22, NULL, '2017-07-18 11:50:00', '2017-07-19 11:41:11', 'Wrecker 30 ton', NULL),
(23, NULL, '2017-07-19 11:40:17', '2017-07-19 11:40:58', 'Ambulance', NULL),
(24, NULL, '2017-07-19 11:40:44', '2017-07-19 11:40:44', 'Speed Boat', NULL),
(25, NULL, '2017-07-19 11:41:26', '2017-07-19 11:41:26', 'Troller', NULL),
(26, NULL, '2017-07-19 11:41:42', '2017-07-19 11:41:42', 'Dog Van', NULL),
(27, NULL, '2017-07-19 11:42:00', '2017-07-19 11:42:00', 'Water Trailer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_budgets`
--

CREATE TABLE `vehicle_budgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_type_id` int(10) UNSIGNED NOT NULL,
  `vehicle_brand_id` int(10) UNSIGNED NOT NULL,
  `battalion_id` int(10) UNSIGNED NOT NULL,
  `wing_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_branch_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_section_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_budgets`
--

INSERT INTO `vehicle_budgets` (`id`, `deleted_at`, `created_at`, `updated_at`, `vehicle_type_id`, `vehicle_brand_id`, `battalion_id`, `wing_id`, `branch_id`, `sub_branch_id`, `section_id`, `sub_section_id`, `quantity`) VALUES
(1, '2017-05-29 04:30:46', '2017-05-27 11:05:01', '2017-05-29 04:30:46', 1, 2, 1, NULL, NULL, NULL, NULL, NULL, 15),
(2, NULL, '2017-05-29 04:41:29', '2017-07-18 04:58:20', 1, 6, 1, NULL, NULL, NULL, NULL, NULL, 17),
(3, NULL, '2017-07-18 04:57:23', '2017-07-18 04:57:23', 1, 3, 1, NULL, NULL, NULL, NULL, NULL, 4),
(4, NULL, '2017-07-18 04:58:44', '2017-07-18 04:58:44', 1, 4, 1, NULL, NULL, NULL, NULL, NULL, 19),
(5, NULL, '2017-07-18 04:59:03', '2017-07-18 04:59:03', 1, 5, 1, NULL, NULL, NULL, NULL, NULL, 21),
(6, NULL, '2017-07-18 04:59:24', '2017-07-18 04:59:24', 1, 7, 1, NULL, NULL, NULL, NULL, NULL, 16),
(7, NULL, '2017-07-18 04:59:46', '2017-07-18 04:59:46', 1, 9, 1, NULL, NULL, NULL, NULL, NULL, 3),
(8, NULL, '2017-07-18 05:00:01', '2017-07-18 05:00:01', 2, 5, 1, NULL, NULL, NULL, NULL, NULL, 6),
(9, NULL, '2017-07-18 05:00:36', '2017-07-18 05:00:36', 2, 2, 1, NULL, NULL, NULL, NULL, NULL, 20),
(10, NULL, '2017-07-18 05:00:52', '2017-07-18 05:00:52', 2, 9, 1, NULL, NULL, NULL, NULL, NULL, 2),
(11, NULL, '2017-07-18 05:01:12', '2017-07-18 05:01:12', 2, 8, 1, NULL, NULL, NULL, NULL, NULL, 12),
(12, NULL, '2017-07-18 05:01:39', '2017-07-18 05:01:39', 2, 10, 1, NULL, NULL, NULL, NULL, NULL, 0),
(13, NULL, '2017-07-18 05:02:21', '2017-07-18 05:02:21', 1, 3, 2, NULL, NULL, NULL, NULL, NULL, 0),
(14, NULL, '2017-07-18 05:02:38', '2017-07-18 05:02:38', 1, 4, 2, NULL, NULL, NULL, NULL, NULL, 6),
(15, NULL, '2017-07-18 05:02:53', '2017-07-18 05:02:53', 1, 5, 2, NULL, NULL, NULL, NULL, NULL, 6),
(16, NULL, '2017-07-18 05:03:21', '2017-07-18 05:03:21', 1, 6, 2, NULL, NULL, NULL, NULL, NULL, 3),
(17, NULL, '2017-07-18 05:03:35', '2017-07-18 05:03:35', 1, 7, 2, NULL, NULL, NULL, NULL, NULL, 2),
(18, NULL, '2017-07-18 05:04:00', '2017-07-18 05:04:00', 1, 9, 2, NULL, NULL, NULL, NULL, NULL, 4),
(19, NULL, '2017-07-18 05:04:17', '2017-07-18 05:04:17', 2, 5, 2, NULL, NULL, NULL, NULL, NULL, 1),
(20, NULL, '2017-07-18 05:04:39', '2017-07-18 05:04:39', 2, 2, 2, NULL, NULL, NULL, NULL, NULL, 8),
(21, NULL, '2017-07-18 05:04:55', '2017-07-18 05:05:33', 2, 9, 2, NULL, NULL, NULL, NULL, NULL, 0),
(22, NULL, '2017-07-18 05:05:21', '2017-07-18 05:05:21', 2, 8, 2, NULL, NULL, NULL, NULL, NULL, 1),
(23, NULL, '2017-07-18 05:05:55', '2017-07-18 05:05:55', 2, 10, 2, NULL, NULL, NULL, NULL, NULL, 0),
(24, NULL, '2017-07-18 10:24:02', '2017-07-22 06:14:37', 3, 3, 1, NULL, NULL, NULL, NULL, NULL, 15),
(25, NULL, '2017-07-18 10:24:17', '2017-07-22 06:15:01', 3, 5, 1, NULL, NULL, NULL, NULL, NULL, 45),
(26, NULL, '2017-07-18 10:24:35', '2017-07-22 06:15:20', 3, 2, 1, NULL, NULL, NULL, NULL, NULL, 16),
(27, NULL, '2017-07-18 10:34:38', '2017-07-22 06:16:28', 3, 7, 1, NULL, NULL, NULL, NULL, NULL, 54),
(28, NULL, '2017-07-18 10:34:56', '2017-07-22 06:16:43', 3, 11, 1, NULL, NULL, NULL, NULL, NULL, 4),
(29, NULL, '2017-07-18 10:35:15', '2017-07-22 06:17:23', 3, 12, 1, NULL, NULL, NULL, NULL, NULL, 7),
(30, NULL, '2017-07-18 10:37:19', '2017-07-22 06:17:45', 3, 9, 1, NULL, NULL, NULL, NULL, NULL, 3),
(31, NULL, '2017-07-18 10:38:15', '2017-07-22 06:31:26', 5, 5, 1, NULL, NULL, NULL, NULL, NULL, 5),
(32, NULL, '2017-07-18 10:38:30', '2017-07-22 06:31:56', 5, 9, 1, NULL, NULL, NULL, NULL, NULL, 1),
(33, NULL, '2017-07-18 10:38:47', '2017-07-22 06:34:00', 6, 17, 1, NULL, NULL, NULL, NULL, NULL, 9),
(34, NULL, '2017-07-18 10:39:01', '2017-07-18 10:39:01', 6, 18, 1, NULL, NULL, NULL, NULL, NULL, 0),
(35, NULL, '2017-07-18 10:39:24', '2017-07-22 06:18:16', 3, 3, 2, NULL, NULL, NULL, NULL, NULL, 15),
(36, NULL, '2017-07-18 10:39:39', '2017-07-22 06:18:46', 3, 5, 2, NULL, NULL, NULL, NULL, NULL, 45),
(37, NULL, '2017-07-18 10:40:19', '2017-07-22 06:19:11', 3, 2, 2, NULL, NULL, NULL, NULL, NULL, 16),
(38, NULL, '2017-07-18 10:40:36', '2017-07-22 06:19:37', 3, 7, 2, NULL, NULL, NULL, NULL, NULL, 55),
(39, NULL, '2017-07-18 10:40:51', '2017-07-22 06:20:04', 3, 11, 2, NULL, NULL, NULL, NULL, NULL, 4),
(40, NULL, '2017-07-18 10:41:06', '2017-07-22 06:20:21', 3, 12, 2, NULL, NULL, NULL, NULL, NULL, 7),
(41, NULL, '2017-07-18 10:41:26', '2017-07-22 06:20:46', 3, 9, 2, NULL, NULL, NULL, NULL, NULL, 4),
(42, NULL, '2017-07-18 10:41:53', '2017-07-22 06:34:33', 5, 5, 2, NULL, NULL, NULL, NULL, NULL, 6),
(43, NULL, '2017-07-18 10:42:11', '2017-07-18 10:42:11', 5, 9, 2, NULL, NULL, NULL, NULL, NULL, 0),
(44, NULL, '2017-07-18 10:42:33', '2017-07-22 06:35:21', 6, 17, 2, NULL, NULL, NULL, NULL, NULL, 10),
(45, NULL, '2017-07-18 10:42:46', '2017-07-22 06:35:57', 6, 18, 2, NULL, NULL, NULL, NULL, NULL, 1),
(46, NULL, '2017-07-18 11:47:20', '2017-07-22 06:29:27', 4, 13, 1, NULL, NULL, NULL, NULL, NULL, 36),
(47, NULL, '2017-07-18 11:47:34', '2017-07-22 06:29:46', 4, 14, 1, NULL, NULL, NULL, NULL, NULL, 4),
(48, NULL, '2017-07-18 11:47:55', '2017-07-22 06:30:03', 4, 15, 1, NULL, NULL, NULL, NULL, NULL, 13),
(49, NULL, '2017-07-18 11:48:17', '2017-07-22 06:30:34', 4, 16, 1, NULL, NULL, NULL, NULL, NULL, 7),
(50, NULL, '2017-07-18 11:48:36', '2017-07-22 06:30:52', 4, 9, 1, NULL, NULL, NULL, NULL, NULL, 1),
(51, NULL, '2017-07-18 11:50:53', '2017-07-19 10:40:04', 7, 22, 1, NULL, NULL, NULL, NULL, NULL, 1),
(52, NULL, '2017-07-19 11:42:50', '2017-07-19 11:42:50', 8, 23, 1, NULL, NULL, NULL, NULL, NULL, 7),
(53, NULL, '2017-07-19 11:55:29', '2017-07-19 12:05:29', 9, 24, 1, NULL, NULL, NULL, NULL, NULL, 9),
(54, NULL, '2017-07-19 11:56:06', '2017-07-19 12:05:55', 10, 25, 1, NULL, NULL, NULL, NULL, NULL, 4),
(55, NULL, '2017-07-19 12:06:18', '2017-07-19 12:06:18', 11, 26, 1, NULL, NULL, NULL, NULL, NULL, 5),
(56, NULL, '2017-07-19 12:06:34', '2017-07-19 12:06:34', 12, 27, 1, NULL, NULL, NULL, NULL, NULL, 13),
(57, NULL, '2017-07-19 12:10:22', '2017-07-19 12:10:22', 13, 19, 1, NULL, NULL, NULL, NULL, NULL, 199),
(58, NULL, '2017-07-19 12:11:27', '2017-07-19 12:11:27', 13, 20, 1, NULL, NULL, NULL, NULL, NULL, 209),
(59, NULL, '2017-07-19 12:12:08', '2017-07-19 12:12:08', 13, 21, 1, NULL, NULL, NULL, NULL, NULL, 82),
(60, NULL, '2017-07-22 06:37:01', '2017-07-22 06:37:01', 4, 13, 2, NULL, NULL, NULL, NULL, NULL, 36),
(61, NULL, '2017-07-22 06:38:35', '2017-07-22 06:38:35', 4, 14, 2, NULL, NULL, NULL, NULL, NULL, 5),
(62, NULL, '2017-07-22 06:38:53', '2017-07-22 06:38:53', 4, 15, 2, NULL, NULL, NULL, NULL, NULL, 13),
(63, NULL, '2017-07-22 06:39:31', '2017-07-22 06:39:31', 4, 16, 2, NULL, NULL, NULL, NULL, NULL, 8),
(64, NULL, '2017-07-22 06:39:52', '2017-07-22 06:39:52', 4, 9, 2, NULL, NULL, NULL, NULL, NULL, 4),
(65, NULL, '2017-08-12 10:26:31', '2017-08-12 10:26:31', 1, 5, 1, NULL, 3, NULL, NULL, NULL, 1),
(66, NULL, '2017-08-12 10:27:41', '2017-08-12 10:27:41', 1, 3, 1, NULL, 3, NULL, NULL, NULL, 1),
(67, NULL, '2017-08-12 10:28:50', '2017-08-12 10:28:50', 1, 4, 1, NULL, 3, NULL, NULL, NULL, 0),
(68, NULL, '2017-08-12 10:32:52', '2017-08-12 10:32:52', 1, 6, 1, NULL, 3, NULL, NULL, NULL, 0),
(69, NULL, '2017-08-12 10:33:18', '2017-08-12 10:33:18', 1, 7, 1, NULL, 3, NULL, NULL, NULL, 0),
(70, NULL, '2017-08-12 10:35:22', '2017-08-12 10:35:22', 1, 9, 1, NULL, 3, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_damage_infos`
--

CREATE TABLE `vehicle_damage_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `damage_date` date NOT NULL,
  `reference_no` text COLLATE utf8_unicode_ci,
  `committee_members` text COLLATE utf8_unicode_ci,
  `damage_reason` text CHARACTER SET utf8,
  `created_by` int(10) NOT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_damage_infos`
--

INSERT INTO `vehicle_damage_infos` (`id`, `damage_date`, `reference_no`, `committee_members`, `damage_reason`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2017-08-12', 'Ref-0123', 'Member', 'Reason', 19, NULL, '2017-08-12 10:12:21', '2017-08-12 10:12:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_drivers`
--

CREATE TABLE `vehicle_drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `posting_rec_id` int(10) UNSIGNED NOT NULL,
  `vehicle_record_id` int(10) UNSIGNED NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_drivers`
--

INSERT INTO `vehicle_drivers` (`id`, `deleted_at`, `created_at`, `updated_at`, `posting_rec_id`, `vehicle_record_id`, `from_date`, `to_date`) VALUES
(10, NULL, '2017-05-27 07:21:02', '2017-05-27 07:24:15', 1, 3, '2017-05-27 13:24:15', '2017-05-28 13:24:15'),
(11, NULL, '2017-05-27 07:21:31', '2017-05-27 08:30:56', 2, 3, '2017-05-29 14:30:56', '2017-05-30 14:30:56'),
(12, NULL, '2017-05-27 08:30:31', '2017-05-31 06:55:18', 1, 3, '2017-05-31 14:30:31', '2017-05-31 12:55:18'),
(13, NULL, '2017-05-31 06:55:18', '2017-05-31 06:55:18', 2, 3, '2017-05-31 12:55:18', NULL),
(14, NULL, '2017-10-14 05:26:53', '2017-10-14 05:46:57', 13, 5, '2017-10-14 11:46:57', NULL),
(15, NULL, '2017-12-11 08:51:00', '2017-12-11 08:51:00', 19, 23, '2017-12-01 14:51:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_fuels`
--

CREATE TABLE `vehicle_fuels` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `fuel_type_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_fuels`
--

INSERT INTO `vehicle_fuels` (`id`, `deleted_at`, `created_at`, `updated_at`, `vehicle_id`, `fuel_type_id`) VALUES
(1, '2017-07-23 04:47:53', '2017-05-21 10:10:05', '2017-07-23 04:47:53', 3, 1),
(3, '2017-05-22 08:01:05', '2017-05-22 07:55:56', '2017-05-22 08:01:05', 3, 1),
(4, NULL, '2017-05-23 08:47:32', '2017-05-23 08:47:32', 4, 2),
(5, NULL, '2017-07-23 04:47:33', '2017-07-23 04:47:33', 5, 2),
(6, NULL, '2017-07-23 04:50:04', '2017-07-23 04:50:04', 6, 3),
(7, NULL, '2017-07-23 05:32:41', '2017-07-23 05:32:41', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_infos`
--

CREATE TABLE `vehicle_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_record_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Last record id',
  `vehicle_source_id` int(10) UNSIGNED DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `model_id` int(10) UNSIGNED DEFAULT NULL,
  `engine_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `chassis_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `registration_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `receive_voucher_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `receive_date` date NOT NULL,
  `producer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `produce_year` date DEFAULT NULL,
  `body_color` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doors` tinyint(4) DEFAULT NULL,
  `seats` tinyint(4) DEFAULT NULL,
  `sylinders` tinyint(4) DEFAULT NULL,
  `start_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `battery_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fuel_tank_capacity` tinyint(4) DEFAULT NULL,
  `tyre_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1 - Service, 2 - Unservice Repairable, 3 - Damaged, 4 - Unservice Unrepairable',
  `created_by` int(10) NOT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_infos`
--

INSERT INTO `vehicle_infos` (`id`, `vehicle_record_id`, `vehicle_source_id`, `type_id`, `brand_id`, `country_id`, `model_id`, `engine_no`, `chassis_no`, `registration_no`, `registration_date`, `receive_voucher_no`, `receive_date`, `producer`, `produce_year`, `body_color`, `doors`, `seats`, `sylinders`, `start_type`, `battery_type`, `fuel_tank_capacity`, `tyre_type`, `barcode`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 'b', 'c', 'd edit', NULL, 'a', '2017-05-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, 42, '2017-05-20 05:40:32', '2017-05-20 07:21:41', '2017-05-20 07:21:41'),
(3, 3, 1, 1, 1, NULL, NULL, 'a', 'sadf', NULL, NULL, 'sdafsaf', '2017-05-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, NULL, '2017-05-20 07:22:34', '2017-06-11 09:13:25', NULL),
(4, NULL, 1, 1, NULL, NULL, NULL, 'sadfasf', 'sadfsagfg', 'asdf edit', NULL, 'sadfaf', '2017-05-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-05-23 06:17:16', '2017-05-23 06:17:36', NULL),
(5, NULL, 1, 1, 2, 108, 2, '000EMPSJ', 'PILSUVKH4W1501510', 'reg-551212212', '2017-06-08', 'V-5242017', '2017-05-24', 'Suzuki', '2017-06-01', 'Black', 4, 6, 2, 'Ignition', 'Diesel', 5, 'MRF', '8941212', NULL, 1, NULL, '2017-05-24 11:25:51', '2017-06-12 06:47:05', NULL),
(6, NULL, 1, NULL, NULL, NULL, NULL, '12369857', '123598746', NULL, NULL, 'safasf', '2017-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-06-17 05:31:27', '2017-06-17 05:31:27', NULL),
(7, NULL, 1, NULL, NULL, NULL, NULL, '126984', '26988414252', NULL, NULL, 'sadfsf', '2017-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-06-17 05:42:25', '2017-06-17 05:42:25', NULL),
(8, 4, 1, 1, 3, NULL, NULL, 'E-240720171053', 'C-240720171053', 'R-240720171053', NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-07-24 04:54:11', '2017-08-10 05:14:43', NULL),
(9, 5, 1, 1, 3, NULL, NULL, 'E-100820171139', 'C-100820171139', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 05:39:53', '2017-08-10 05:49:04', NULL),
(10, 6, 1, 1, 4, NULL, NULL, 'E-100820171152', 'C-100820171152', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 05:52:38', '2017-08-10 05:54:20', NULL),
(11, 7, 1, 13, 19, NULL, NULL, 'E-100820171231', 'C-100820171231', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 06:31:56', '2017-08-10 06:35:28', NULL),
(12, 8, 1, 13, 19, NULL, NULL, 'E-100820171235', 'C-100820171235', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 06:36:13', '2017-08-10 06:41:19', NULL),
(13, 9, 1, 13, 20, NULL, NULL, 'E-100820171236', 'C-100820171236', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 06:36:48', '2017-08-10 06:42:07', NULL),
(14, 10, 1, 7, 22, NULL, NULL, 'E-100820171237', 'C-100820171237', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 06:37:29', '2017-08-10 06:42:31', NULL),
(15, 11, 1, 2, 2, NULL, NULL, 'E-100820171259', 'C-100820171259', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 07:00:20', '2017-08-10 07:06:05', NULL),
(16, 12, 1, 2, 2, NULL, NULL, 'E-100820170100', 'C-100820170100', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-08-10 07:01:02', '2017-08-10 07:06:35', NULL),
(17, 13, 1, 2, 8, NULL, NULL, 'E-100820170101', 'C-100820170101', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 07:01:35', '2017-08-10 07:06:54', NULL),
(18, 14, 1, 3, 9, NULL, NULL, 'E-100820170102', 'C-100820170102', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 07:02:47', '2017-08-10 07:07:45', NULL),
(19, 15, 1, 1, 4, NULL, NULL, 'E-100820170205', 'C-100820170205', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 08:03:59', '2017-08-10 08:28:49', NULL),
(20, 16, 1, 2, 2, NULL, NULL, 'E-100820170225', 'C-100820170225', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 08:25:42', '2017-08-10 08:29:11', NULL),
(21, 17, 1, 2, 8, NULL, NULL, 'E-100820170226', 'C-100820170226', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 08:26:27', '2017-08-10 08:29:24', NULL),
(22, 18, 1, 3, 9, NULL, NULL, 'E-100820170227', 'C-100820170227', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 08:26:50', '2017-08-10 08:29:57', NULL),
(23, 19, 1, 13, 19, NULL, NULL, 'E-100820170230', 'C-100820170230', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 08:30:32', '2017-08-10 08:32:09', NULL),
(24, 20, 1, 13, 20, NULL, NULL, 'E-100820170231', 'C-100820170231', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 08:30:53', '2017-08-10 08:32:22', NULL),
(25, 21, 1, 7, 22, NULL, NULL, 'E-100820170456', 'C-100820170456', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-10 10:56:45', '2017-08-10 10:57:58', NULL),
(26, 22, 1, 1, 5, NULL, NULL, 'E-120820171252', 'C-120820171252', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-12 06:52:42', '2017-08-12 08:39:54', NULL),
(27, 23, 1, 1, 5, NULL, NULL, 'E-120820171253', 'C-120820171253', NULL, NULL, 'V-240720171053', '2017-07-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-08-12 06:53:08', '2017-08-12 08:40:06', NULL),
(28, NULL, 1, 1, 2, 206, 2, 'E-10252017', 'C-10252017', 'R-10252017', '2017-10-25', 'v-10/25/2017', '2017-10-25', NULL, '2012-02-21', 'Black', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-10-26 04:31:37', '2017-10-26 04:36:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_models`
--

CREATE TABLE `vehicle_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `model_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_models`
--

INSERT INTO `vehicle_models` (`id`, `deleted_at`, `created_at`, `updated_at`, `brand_id`, `model_name`) VALUES
(1, NULL, '2017-05-18 06:43:12', '2017-05-18 06:43:12', 1, 'X-Corrolla'),
(2, NULL, '2017-05-24 11:18:33', '2017-05-24 11:18:33', 2, 'Pajero Sport');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_notes`
--

CREATE TABLE `vehicle_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_vehicle_note_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'draft vehicle note id',
  `ref_no` int(10) NOT NULL COMMENT 'every year start from 1',
  `date` datetime NOT NULL,
  `collection_date` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=active,1=in active',
  `created_by` int(10) NOT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_notes`
--

INSERT INTO `vehicle_notes` (`id`, `parent_vehicle_note_id`, `ref_no`, `date`, `collection_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 1, '2017-05-24 14:34:30', NULL, 1, 1, NULL, '2017-05-24 08:34:30', '2017-05-27 07:19:39', NULL),
(2, NULL, 2, '2017-05-24 16:00:33', NULL, 1, 1, NULL, '2017-05-24 10:00:33', '2017-05-24 12:14:57', NULL),
(3, 2, 2, '2017-05-24 17:08:05', NULL, 0, 1, 1, '2017-05-24 10:11:07', '2017-05-24 11:14:35', '2017-05-24 11:14:35'),
(4, 2, 2, '2017-05-24 18:14:57', NULL, 1, 1, NULL, '2017-05-24 12:14:57', '2017-05-24 12:30:10', NULL),
(5, 1, 1, '2017-05-27 13:21:00', '2017-06-10 13:21:00', 0, 1, NULL, '2017-05-27 07:19:39', '2017-05-27 07:21:00', NULL),
(6, NULL, 2147483647, '2017-07-24 10:55:42', NULL, 0, 1, NULL, '2017-07-24 04:55:42', '2017-08-05 05:09:24', '2017-08-05 05:09:24'),
(7, NULL, 6, '2017-08-05 10:46:29', NULL, 0, 1, NULL, '2017-08-05 04:46:29', '2017-08-05 05:09:18', '2017-08-05 05:09:18'),
(8, NULL, 7, '2017-08-05 10:47:23', NULL, 0, 1, NULL, '2017-08-05 04:47:23', '2017-08-05 05:09:16', '2017-08-05 05:09:16'),
(9, NULL, 8, '2017-08-05 10:48:05', NULL, 0, 1, NULL, '2017-08-05 04:48:05', '2017-08-05 05:09:18', '2017-08-05 05:09:18'),
(10, NULL, 9, '2017-08-06 11:08:49', NULL, 0, 1, NULL, '2017-08-05 05:08:49', '2017-08-05 05:09:14', '2017-08-05 05:09:14'),
(11, NULL, 5, '2017-08-05 11:09:51', NULL, 1, 1, NULL, '2017-08-05 05:09:51', '2017-08-05 05:10:32', NULL),
(12, 11, 5, '2017-08-05 11:10:32', '2017-08-05 11:10:32', 1, 1, NULL, '2017-08-05 05:10:32', '2017-08-05 05:10:54', NULL),
(13, NULL, 7, '2017-08-10 11:40:31', NULL, 1, 1, NULL, '2017-08-10 05:40:31', '2017-08-10 05:41:20', NULL),
(14, 13, 7, '2017-08-10 11:41:20', '2017-08-10 11:41:20', 1, 1, NULL, '2017-08-10 05:41:20', '2017-08-10 05:41:31', NULL),
(15, NULL, 9, '2017-08-10 11:53:06', NULL, 1, 1, NULL, '2017-08-10 05:53:06', '2017-08-10 05:53:21', NULL),
(16, 15, 9, '2017-08-10 11:53:22', '2017-08-10 11:53:22', 1, 1, NULL, '2017-08-10 05:53:22', '2017-08-10 05:53:29', NULL),
(17, NULL, 11, '2017-08-10 12:32:33', NULL, 1, 1, NULL, '2017-08-10 06:32:33', '2017-08-10 06:32:47', NULL),
(18, 17, 11, '2017-08-10 12:32:47', '2017-08-10 12:32:47', 1, 1, NULL, '2017-08-10 06:32:47', '2017-08-10 06:32:53', NULL),
(19, NULL, 13, '2017-08-10 12:39:52', NULL, 1, 1, NULL, '2017-08-10 06:39:52', '2017-08-10 06:40:21', NULL),
(20, 19, 13, '2017-08-10 12:40:21', '2017-08-10 12:40:21', 1, 1, NULL, '2017-08-10 06:40:21', '2017-08-10 06:40:37', NULL),
(21, NULL, 15, '2017-08-10 13:03:56', NULL, 1, 1, NULL, '2017-08-10 07:03:56', '2017-08-10 07:04:29', NULL),
(22, 21, 15, '2017-08-10 13:04:29', '2017-08-10 13:04:29', 1, 1, NULL, '2017-08-10 07:04:29', '2017-08-10 07:04:39', NULL),
(23, NULL, 17, '2017-08-10 14:27:37', NULL, 1, 1, NULL, '2017-08-10 08:27:37', '2017-08-10 08:27:51', NULL),
(24, 23, 17, '2017-08-10 14:27:51', '2017-08-10 14:27:51', 1, 1, NULL, '2017-08-10 08:27:51', '2017-08-10 08:27:59', NULL),
(25, NULL, 19, '2017-08-10 14:31:13', NULL, 1, 1, NULL, '2017-08-10 08:31:13', '2017-08-10 08:31:29', NULL),
(26, 25, 19, '2017-08-10 14:31:29', '2017-08-10 14:31:29', 1, 1, NULL, '2017-08-10 08:31:29', '2017-08-10 08:31:32', NULL),
(27, NULL, 21, '2017-08-10 16:57:04', NULL, 1, 1, NULL, '2017-08-10 10:57:04', '2017-08-10 10:57:17', NULL),
(28, 27, 21, '2017-08-10 16:57:17', '2017-08-10 16:57:17', 1, 1, NULL, '2017-08-10 10:57:17', '2017-08-10 10:57:20', NULL),
(29, NULL, 23, '2017-08-12 12:59:43', NULL, 1, 1, NULL, '2017-08-12 06:59:43', '2017-08-12 07:00:25', NULL),
(30, 29, 23, '2017-08-12 13:00:25', '2017-08-12 13:00:25', 1, 1, NULL, '2017-08-12 07:00:25', '2017-08-12 07:00:42', NULL),
(31, NULL, 25, '2017-09-26 08:47:31', NULL, 1, 1, NULL, '2017-09-26 02:47:31', '2017-09-26 02:48:32', NULL),
(32, 31, 25, '2017-09-26 08:48:32', '2017-09-26 08:48:32', 1, 1, NULL, '2017-09-26 02:48:32', '2017-09-26 02:49:32', NULL),
(33, NULL, 27, '2017-10-26 10:46:31', NULL, 1, 1, NULL, '2017-10-26 04:46:31', '2017-10-26 04:47:19', NULL),
(34, 33, 27, '2017-10-26 10:47:19', '2017-10-30 10:47:19', 1, 1, NULL, '2017-10-26 04:47:19', '2017-10-26 04:47:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_note_details`
--

CREATE TABLE `vehicle_note_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_note_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `battalion_id` int(10) UNSIGNED DEFAULT NULL,
  `wing_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_branch_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_section_id` int(10) UNSIGNED DEFAULT NULL,
  `remarks` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_note_details`
--

INSERT INTO `vehicle_note_details` (`id`, `vehicle_note_id`, `vehicle_id`, `battalion_id`, `wing_id`, `branch_id`, `sub_branch_id`, `section_id`, `sub_section_id`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 5, 3, 2, NULL, NULL, NULL, NULL, NULL, 'edit', '2017-05-24 06:17:47', '2017-05-27 07:20:48', '2017-05-27 07:20:48'),
(10, 5, 4, 1, 1, NULL, NULL, NULL, NULL, 'edit ok', '2017-05-24 06:17:47', '2017-05-27 07:20:48', '2017-05-27 07:20:48'),
(11, 1, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-05-24 08:34:30', '2017-05-24 08:34:30', NULL),
(12, 1, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-24 08:34:30', '2017-05-24 08:34:30', NULL),
(13, 2, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-24 10:00:33', '2017-05-24 10:00:33', NULL),
(14, 3, 3, 2, NULL, NULL, NULL, NULL, NULL, 'ok', '2017-05-24 10:11:07', '2017-05-24 11:07:11', '2017-05-24 11:07:11'),
(15, 3, 3, 2, NULL, NULL, NULL, NULL, NULL, 'ok edit', '2017-05-24 11:08:05', '2017-05-24 11:14:35', '2017-05-24 11:14:35'),
(16, 4, 3, 2, NULL, NULL, NULL, NULL, NULL, 'create', '2017-05-24 12:14:57', '2017-05-24 12:14:57', NULL),
(17, 5, 4, 1, 3, NULL, NULL, NULL, NULL, NULL, '2017-05-27 05:32:01', '2017-05-27 07:20:48', '2017-05-27 07:20:48'),
(18, 5, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-27 05:32:01', '2017-05-27 07:20:48', '2017-05-27 07:20:48'),
(19, 5, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-27 05:49:06', '2017-05-27 07:20:48', '2017-05-27 07:20:48'),
(20, 5, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-05-27 07:19:39', '2017-05-27 07:20:48', '2017-05-27 07:20:48'),
(21, 5, 4, 2, NULL, NULL, NULL, NULL, NULL, 'sdf', '2017-05-27 07:19:39', '2017-05-27 07:20:48', '2017-05-27 07:20:48'),
(22, 5, 3, 2, NULL, NULL, NULL, NULL, NULL, 'edit', '2017-05-27 07:20:48', '2017-05-27 07:21:00', '2017-05-27 07:21:00'),
(23, 5, 3, 2, NULL, NULL, NULL, NULL, NULL, 'edit', '2017-05-27 07:21:00', '2017-05-27 07:21:00', NULL),
(24, 8, 8, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-08-05 04:47:23', '2017-08-05 05:09:16', '2017-08-05 05:09:16'),
(25, 10, 8, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-08-05 05:08:49', '2017-08-05 05:09:14', '2017-08-05 05:09:14'),
(26, 11, 8, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-08-05 05:09:51', '2017-08-05 05:09:51', NULL),
(27, 12, 8, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-08-05 05:10:32', '2017-08-05 05:10:32', NULL),
(28, 13, 9, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 05:40:31', '2017-08-10 05:40:31', NULL),
(29, 14, 9, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 05:41:20', '2017-08-10 05:41:20', NULL),
(30, 15, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 05:53:06', '2017-08-10 05:53:06', NULL),
(31, 16, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 05:53:22', '2017-08-10 05:53:22', NULL),
(32, 17, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 06:32:33', '2017-08-10 06:32:33', NULL),
(33, 18, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 06:32:48', '2017-08-10 06:32:48', NULL),
(34, 19, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 06:39:52', '2017-08-10 06:39:52', NULL),
(35, 19, 13, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 06:39:52', '2017-08-10 06:39:52', NULL),
(36, 19, 14, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 06:39:52', '2017-08-10 06:39:52', NULL),
(37, 20, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 06:40:22', '2017-08-10 06:40:22', NULL),
(38, 20, 13, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 06:40:22', '2017-08-10 06:40:22', NULL),
(39, 20, 14, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 06:40:22', '2017-08-10 06:40:22', NULL),
(40, 21, 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 07:03:56', '2017-08-10 07:03:56', NULL),
(41, 21, 16, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 07:03:56', '2017-08-10 07:03:56', NULL),
(42, 21, 17, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 07:03:56', '2017-08-10 07:03:56', NULL),
(43, 21, 18, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 07:03:56', '2017-08-10 07:03:56', NULL),
(44, 22, 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 07:04:29', '2017-08-10 07:04:29', NULL),
(45, 22, 16, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 07:04:29', '2017-08-10 07:04:29', NULL),
(46, 22, 17, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 07:04:29', '2017-08-10 07:04:29', NULL),
(47, 22, 18, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 07:04:29', '2017-08-10 07:04:29', NULL),
(48, 23, 19, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:27:37', '2017-08-10 08:27:37', NULL),
(49, 23, 20, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:27:37', '2017-08-10 08:27:37', NULL),
(50, 23, 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:27:37', '2017-08-10 08:27:37', NULL),
(51, 23, 22, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:27:37', '2017-08-10 08:27:37', NULL),
(52, 24, 19, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:27:51', '2017-08-10 08:27:51', NULL),
(53, 24, 20, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:27:51', '2017-08-10 08:27:51', NULL),
(54, 24, 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:27:51', '2017-08-10 08:27:51', NULL),
(55, 24, 22, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:27:51', '2017-08-10 08:27:51', NULL),
(56, 25, 23, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:31:13', '2017-08-10 08:31:13', NULL),
(57, 25, 24, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:31:13', '2017-08-10 08:31:13', NULL),
(58, 26, 23, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:31:29', '2017-08-10 08:31:29', NULL),
(59, 26, 24, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 08:31:29', '2017-08-10 08:31:29', NULL),
(60, 27, 25, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 10:57:04', '2017-08-10 10:57:04', NULL),
(61, 28, 25, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 10:57:17', '2017-08-10 10:57:17', NULL),
(62, 29, 26, 1, NULL, 3, NULL, NULL, NULL, NULL, '2017-08-12 06:59:43', '2017-08-12 06:59:43', NULL),
(63, 29, 27, 1, NULL, 4, NULL, NULL, NULL, NULL, '2017-08-12 06:59:43', '2017-08-12 06:59:43', NULL),
(64, 30, 26, 1, NULL, 3, NULL, NULL, NULL, NULL, '2017-08-12 07:00:25', '2017-08-12 07:00:25', NULL),
(65, 30, 27, 1, NULL, 4, NULL, NULL, NULL, NULL, '2017-08-12 07:00:25', '2017-08-12 07:00:25', NULL),
(66, 31, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-09-26 02:47:31', '2017-09-26 02:47:31', NULL),
(67, 32, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-09-26 02:48:32', '2017-09-26 02:48:32', NULL),
(68, 33, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-26 04:46:31', '2017-10-26 04:46:31', NULL),
(69, 34, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-26 04:47:19', '2017-10-26 04:47:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_parts`
--

CREATE TABLE `vehicle_parts` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `parts_id` int(10) UNSIGNED NOT NULL,
  `parts_quantity` int(11) NOT NULL DEFAULT '1',
  `attach_date` date DEFAULT NULL,
  `last_change_date` date DEFAULT NULL,
  `next_change_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_parts`
--

INSERT INTO `vehicle_parts` (`id`, `deleted_at`, `created_at`, `updated_at`, `vehicle_id`, `parts_id`, `parts_quantity`, `attach_date`, `last_change_date`, `next_change_date`) VALUES
(8, NULL, '2017-05-22 06:49:04', '2017-06-03 09:27:14', 3, 2, 1, '0000-00-00', '0000-00-00', '0000-00-00'),
(9, NULL, '2017-05-23 06:59:07', '2017-05-23 06:59:07', 4, 3, 1, '2017-05-23', '0000-00-00', '0000-00-00'),
(12, NULL, '2017-06-03 09:17:04', '2017-06-03 09:27:14', 3, 3, 1, NULL, NULL, NULL),
(13, NULL, '2017-06-03 09:18:41', '2017-06-03 09:27:14', 3, 4, 1, NULL, NULL, NULL),
(14, NULL, '2017-06-03 09:27:14', '2017-06-03 09:29:37', 3, 5, 1, NULL, NULL, NULL),
(15, NULL, '2017-06-03 09:29:37', '2017-06-03 09:29:37', 3, 6, 1, NULL, NULL, NULL),
(16, NULL, '2017-06-03 09:29:37', '2017-06-03 09:29:37', 3, 7, 1, NULL, NULL, NULL),
(17, '2017-06-17 04:52:25', '2017-06-10 04:24:56', '2017-06-17 04:52:25', 5, 2, 1, '2017-06-10', NULL, NULL),
(18, '2017-06-17 04:52:25', '2017-06-10 04:24:56', '2017-06-17 04:52:25', 5, 10, 1, '2017-06-09', NULL, NULL),
(19, '2017-06-17 05:16:14', '2017-06-17 04:52:25', '2017-06-17 05:16:14', 5, 2, 1, '2017-06-10', NULL, NULL),
(20, '2017-06-17 05:16:14', '2017-06-17 04:52:25', '2017-06-17 05:16:14', 5, 10, 1, '2017-06-09', NULL, NULL),
(21, '2017-06-17 05:16:14', '2017-06-17 04:52:25', '2017-06-17 05:16:14', 5, 6, 1, '2017-06-17', NULL, NULL),
(22, '2017-06-17 05:27:28', '2017-06-17 05:16:14', '2017-06-17 05:27:28', 5, 2, 4, '2017-06-10', NULL, NULL),
(23, '2017-06-17 05:27:29', '2017-06-17 05:16:14', '2017-06-17 05:27:29', 5, 10, 1, '2017-06-09', NULL, NULL),
(24, '2017-06-17 05:27:29', '2017-06-17 05:16:15', '2017-06-17 05:27:29', 5, 6, 2, '2017-06-17', NULL, NULL),
(25, NULL, '2017-06-17 05:27:29', '2017-06-17 05:27:29', 5, 2, 4, '2017-06-10', NULL, NULL),
(26, NULL, '2017-06-17 05:27:29', '2017-06-17 05:27:29', 5, 10, 1, '2017-06-09', NULL, NULL),
(27, NULL, '2017-06-17 05:27:29', '2017-06-17 05:27:29', 5, 6, 2, '2017-06-17', NULL, NULL),
(28, NULL, '2017-06-17 05:27:29', '2017-06-17 05:27:29', 5, 5, 4, NULL, NULL, NULL),
(29, '2017-06-17 07:09:58', '2017-06-17 05:33:42', '2017-06-17 07:09:58', 6, 3, 3, NULL, NULL, NULL),
(30, NULL, '2017-06-17 07:09:58', '2017-06-17 07:09:58', 6, 3, 3, NULL, NULL, NULL),
(31, NULL, '2017-06-17 07:09:59', '2017-06-17 07:09:59', 6, 9, 1, '2017-06-17', NULL, NULL),
(32, '2017-07-22 12:52:19', '2017-07-22 12:51:41', '2017-07-22 12:52:19', 7, 2, 1, '2017-07-22', NULL, NULL),
(33, '2017-07-22 12:52:19', '2017-07-22 12:51:41', '2017-07-22 12:52:19', 7, 3, 4, '2017-07-22', NULL, NULL),
(34, '2017-07-22 12:52:38', '2017-07-22 12:52:19', '2017-07-22 12:52:38', 7, 2, 1, '2017-07-22', NULL, NULL),
(35, '2017-07-22 12:52:38', '2017-07-22 12:52:19', '2017-07-22 12:52:38', 7, 3, 4, '2017-07-22', NULL, NULL),
(36, NULL, '2017-07-22 12:52:38', '2017-07-22 12:52:38', 7, 2, 1, '2017-07-22', NULL, NULL),
(37, NULL, '2017-07-22 12:52:38', '2017-07-22 12:52:38', 7, 3, 4, '2017-07-22', NULL, NULL),
(38, NULL, '2017-07-22 12:52:38', '2017-07-22 12:52:38', 7, 5, 1, NULL, NULL, NULL),
(39, NULL, '2017-08-12 05:04:08', '2017-08-12 05:04:08', 25, 2, 1, '2017-08-12', NULL, NULL),
(40, NULL, '2017-08-12 05:04:09', '2017-08-12 05:04:09', 25, 3, 1, '2017-08-12', NULL, NULL),
(41, NULL, '2017-08-12 05:04:09', '2017-08-12 05:04:09', 25, 5, 1, '2017-08-12', NULL, NULL),
(42, NULL, '2017-08-12 05:04:09', '2017-08-12 05:04:09', 25, 9, 1, '2017-08-12', NULL, NULL),
(43, NULL, '2017-08-12 05:04:09', '2017-08-12 05:04:09', 25, 10, 1, '2017-08-12', NULL, NULL),
(44, NULL, '2017-10-26 04:45:07', '2017-10-26 04:45:07', 28, 2, 1, '2017-10-26', NULL, NULL),
(45, NULL, '2017-10-26 04:45:07', '2017-10-26 04:45:07', 28, 4, 1, '2017-10-26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_records`
--

CREATE TABLE `vehicle_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_vehicle_rec_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'prev vehicle record whose status=1',
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `battalion_id` int(10) UNSIGNED DEFAULT NULL,
  `wing_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_branch_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_section_id` int(10) UNSIGNED DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `receive_date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '0=order for issue,1=received,2=issued',
  `vehicle_note_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'final vehicle note id',
  `ref_no` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_records`
--

INSERT INTO `vehicle_records` (`id`, `parent_vehicle_rec_id`, `vehicle_id`, `battalion_id`, `wing_id`, `branch_id`, `sub_branch_id`, `section_id`, `sub_section_id`, `issue_date`, `receive_date`, `status`, `vehicle_note_id`, `ref_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 2, '2017-05-24 18:19:32', '2017-05-24 18:19:32', NULL),
(2, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, '2017-05-25 15:09:10', NULL, 2, 4, 2, '2017-05-24 18:28:22', '2017-05-25 15:09:10', NULL),
(3, 2, 3, 2, 11, NULL, NULL, NULL, NULL, NULL, '2017-05-25 15:09:10', 1, 4, 2, '2017-05-24 18:30:10', '2017-05-25 15:09:10', NULL),
(4, NULL, 8, 1, 1, NULL, NULL, NULL, NULL, NULL, '2017-08-05 11:11:48', 1, 12, 5, '2017-08-05 11:10:53', '2017-08-05 11:11:48', NULL),
(5, NULL, 9, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 11:42:11', 1, 14, 7, '2017-08-10 11:41:30', '2017-08-10 11:42:11', NULL),
(6, NULL, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 11:53:45', 1, 16, 9, '2017-08-10 11:53:29', '2017-08-10 11:53:45', NULL),
(7, NULL, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 12:33:02', 1, 18, 11, '2017-08-10 12:32:53', '2017-08-10 12:33:02', NULL),
(8, NULL, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 12:40:46', 1, 20, 13, '2017-08-10 12:40:37', '2017-08-10 12:40:46', NULL),
(9, NULL, 13, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 12:40:50', 1, 20, 13, '2017-08-10 12:40:37', '2017-08-10 12:40:50', NULL),
(10, NULL, 14, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 12:40:54', 1, 20, 13, '2017-08-10 12:40:37', '2017-08-10 12:40:54', NULL),
(11, NULL, 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 13:05:14', 1, 22, 15, '2017-08-10 13:04:39', '2017-08-10 13:05:14', NULL),
(12, NULL, 16, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 13:05:19', 1, 22, 15, '2017-08-10 13:04:39', '2017-08-10 13:05:19', NULL),
(13, NULL, 17, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 13:05:23', 1, 22, 15, '2017-08-10 13:04:39', '2017-08-10 13:05:23', NULL),
(14, NULL, 18, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 13:05:28', 1, 22, 15, '2017-08-10 13:04:39', '2017-08-10 13:05:28', NULL),
(15, NULL, 19, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 14:28:05', 1, 24, 17, '2017-08-10 14:27:58', '2017-08-10 14:28:05', NULL),
(16, NULL, 20, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 14:28:09', 1, 24, 17, '2017-08-10 14:27:58', '2017-08-10 14:28:09', NULL),
(17, NULL, 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 14:28:14', 1, 24, 17, '2017-08-10 14:27:59', '2017-08-10 14:28:14', NULL),
(18, NULL, 22, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 14:28:17', 1, 24, 17, '2017-08-10 14:27:59', '2017-08-10 14:28:17', NULL),
(19, NULL, 23, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 14:31:44', 1, 26, 19, '2017-08-10 14:31:32', '2017-08-10 14:31:44', NULL),
(20, NULL, 24, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 14:31:48', 1, 26, 19, '2017-08-10 14:31:32', '2017-08-10 14:31:48', NULL),
(21, NULL, 25, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 16:57:33', 1, 28, 21, '2017-08-10 16:57:20', '2017-08-10 16:57:33', NULL),
(22, NULL, 26, 1, NULL, 3, NULL, NULL, NULL, NULL, '2017-08-12 14:39:54', 1, 30, 23, '2017-08-12 13:00:42', '2017-08-12 14:39:54', NULL),
(23, NULL, 27, 1, NULL, 4, NULL, NULL, NULL, NULL, '2017-08-12 14:40:06', 1, 30, 23, '2017-08-12 13:00:42', '2017-08-12 14:40:06', NULL),
(24, NULL, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 32, 25, '2017-09-26 08:49:32', '2017-09-26 08:49:32', NULL),
(25, NULL, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 34, 27, '2017-10-26 10:47:45', '2017-10-26 10:47:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_repair`
--

CREATE TABLE `vehicle_repair` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_record_id` int(10) UNSIGNED NOT NULL,
  `vehicle_repair_type_id` int(10) UNSIGNED NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `repair_cost` decimal(11,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_repair`
--

INSERT INTO `vehicle_repair` (`id`, `vehicle_record_id`, `vehicle_repair_type_id`, `from_date`, `to_date`, `description`, `repair_cost`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 3, 1, '2017-06-06', '2017-06-10', NULL, '15000.00', '2017-06-03 12:54:48', '2017-06-12 10:26:03', NULL),
(7, 3, 1, '2017-05-29', '2017-06-03', NULL, '15000.00', '2017-06-03 13:58:53', '2017-06-03 14:07:26', '2017-06-03 14:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_repair_detail`
--

CREATE TABLE `vehicle_repair_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_repair_id` int(10) UNSIGNED NOT NULL,
  `parts_id` int(10) UNSIGNED NOT NULL,
  `change_date` date DEFAULT NULL,
  `next_change_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_repair_detail`
--

INSERT INTO `vehicle_repair_detail` (`id`, `vehicle_repair_id`, `parts_id`, `change_date`, `next_change_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 4, 3, '2017-06-03', '2017-06-29', '2017-06-03 12:54:48', '2017-06-05 09:57:19', '2017-06-05 09:57:19'),
(7, 7, 2, '2017-06-03', '2017-06-23', '2017-06-03 13:58:53', '2017-06-03 14:07:26', '2017-06-03 14:07:26'),
(8, 7, 10, NULL, NULL, '2017-06-03 13:58:53', '2017-06-03 14:07:26', '2017-06-03 14:07:26'),
(9, 4, 3, '2017-06-03', '2017-06-29', '2017-06-05 09:57:19', '2017-06-12 10:26:03', '2017-06-12 10:26:03'),
(10, 4, 10, NULL, NULL, '2017-06-05 09:57:19', '2017-06-12 10:26:03', '2017-06-12 10:26:03'),
(11, 4, 3, '2017-06-03', '2017-06-29', '2017-06-12 10:26:03', '2017-06-12 10:26:03', NULL),
(12, 4, 10, NULL, NULL, '2017-06-12 10:26:03', '2017-06-12 10:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_repair_types`
--

CREATE TABLE `vehicle_repair_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `repair_type` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_repair_types`
--

INSERT INTO `vehicle_repair_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `repair_type`) VALUES
(1, NULL, '2017-04-26 10:22:48', '2017-04-26 10:26:23', 'Overhall');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_sources`
--

CREATE TABLE `vehicle_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_sources`
--

INSERT INTO `vehicle_sources` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `address`) VALUES
(1, NULL, '2017-05-23 05:51:59', '2017-05-23 05:54:52', 'Police', 'Uttara, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_types`
--

CREATE TABLE `vehicle_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_type` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vehicle_type_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_types`
--

INSERT INTO `vehicle_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `vehicle_type`, `vehicle_type_code`) VALUES
(1, NULL, '2017-03-14 12:05:34', '2017-05-18 10:56:40', 'Jeep', 'Jeep'),
(2, NULL, '2017-07-13 12:00:54', '2017-07-13 12:01:49', 'Micro Bus', 'Micro Bus'),
(3, NULL, '2017-07-13 12:01:30', '2017-07-13 12:01:30', 'Pick Up', 'Pick Up'),
(4, NULL, '2017-07-13 12:02:19', '2017-07-13 12:02:19', 'Car/Taxicab', 'Car/Taxicab'),
(5, NULL, '2017-07-13 12:02:39', '2017-07-13 12:02:39', 'Coster', 'Coster'),
(6, NULL, '2017-07-13 12:02:50', '2017-07-13 12:03:08', 'Truck 3 Ton', 'Truck 3 Ton'),
(7, NULL, '2017-07-13 12:03:18', '2017-07-13 12:03:18', 'Wrecker', 'Wrecker'),
(8, NULL, '2017-07-13 12:03:36', '2017-07-13 12:03:36', 'Ambulance', 'Ambulance'),
(9, NULL, '2017-07-13 12:03:49', '2017-07-13 12:03:49', 'Speed Boat', 'Speed Boat'),
(10, NULL, '2017-07-13 12:04:59', '2017-07-13 12:04:59', 'Troller (Civil)', 'Troller (Civil)'),
(11, NULL, '2017-07-13 12:05:14', '2017-07-13 12:05:14', 'Dog Van', 'Dog Van'),
(12, NULL, '2017-07-13 12:07:11', '2017-07-13 12:07:11', 'Water Trailer', 'Water Trailer'),
(13, NULL, '2017-07-13 12:07:56', '2017-07-13 12:07:56', 'Motorcycle', 'Motorcycle');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_item_balance`
-- (See below for the actual view)
--
CREATE TABLE `view_item_balance` (
`item_id` int(10) unsigned
,`item_cat` int(10) unsigned
,`item_group` int(10) unsigned
,`user_id` int(10) unsigned
,`pre_blance` decimal(33,2)
,`receive_date` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_item_issue`
-- (See below for the actual view)
--
CREATE TABLE `view_item_issue` (
`item_id` int(10) unsigned
,`item_cat` int(10) unsigned
,`item_group` int(10) unsigned
,`item_name` varchar(256)
,`item_cat_name` varchar(256)
,`item_group_name` varchar(100)
,`user_id` int(10) unsigned
,`issue_date` date
,`svc_qty` decimal(32,2)
,`unsvc_qty` decimal(32,2)
,`repairable_qty` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_item_receive`
-- (See below for the actual view)
--
CREATE TABLE `view_item_receive` (
`item_id` int(10) unsigned
,`item_cat` int(10) unsigned
,`item_group` int(10) unsigned
,`item_name` varchar(256)
,`item_cat_name` varchar(256)
,`item_group_name` varchar(100)
,`user_id` int(10) unsigned
,`receive_date` date
,`organization_store_id` int(10) unsigned
,`svc_qty` decimal(32,2)
,`unsvc_qty` decimal(32,2)
,`repairable_qty` decimal(32,2)
,`unrepairable_qty` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `visiting_cards`
--

CREATE TABLE `visiting_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `battalion_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `wing_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_branch_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_section_id` int(10) UNSIGNED DEFAULT NULL,
  `card_no` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `card_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=free,2=block'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visiting_cards`
--

INSERT INTO `visiting_cards` (`id`, `deleted_at`, `created_at`, `updated_at`, `battalion_id`, `wing_id`, `branch_id`, `sub_branch_id`, `section_id`, `sub_section_id`, `card_no`, `card_status`) VALUES
(1, NULL, '2018-07-22 05:27:23', '2018-07-30 06:45:08', 1, 2, NULL, NULL, NULL, NULL, 'Card 001', 2),
(2, NULL, '2018-07-22 05:38:09', '2018-07-23 10:48:07', 1, 2, NULL, NULL, NULL, NULL, 'Card 002', 2),
(3, NULL, '2018-07-24 09:03:10', '2018-07-24 09:27:52', 1, 1, NULL, NULL, NULL, NULL, '005', 2);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_infos`
--

CREATE TABLE `visitor_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `mobile_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `purpose` text COLLATE utf8_unicode_ci,
  `entry_time` timestamp NOT NULL,
  `out_time` timestamp NULL DEFAULT NULL,
  `card_id` int(10) UNSIGNED NOT NULL,
  `box_id` int(10) UNSIGNED DEFAULT NULL,
  `device` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `battalion_id` int(10) UNSIGNED DEFAULT NULL,
  `wing_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `designation_id` int(10) UNSIGNED DEFAULT NULL,
  `to_posting_rec_id` int(10) DEFAULT NULL,
  `to_recipient_id` int(10) DEFAULT NULL,
  `other_person` tinyint(4) NOT NULL DEFAULT '0',
  `image_path` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitor_infos`
--

INSERT INTO `visitor_infos` (`id`, `date`, `mobile_no`, `name`, `address`, `purpose`, `entry_time`, `out_time`, `card_id`, `box_id`, `device`, `battalion_id`, `wing_id`, `branch_id`, `designation_id`, `to_posting_rec_id`, `to_recipient_id`, `other_person`, `image_path`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2018-07-23', '145574', 'sadfsaf', 'asfdd', 'fasf', '2018-07-23 10:38:09', '2018-07-23 10:51:39', 1, NULL, 'asdfsaf', 1, 2, NULL, NULL, NULL, NULL, 0, NULL, 1, '2018-07-23 10:38:09', '2018-07-23 10:51:39', NULL),
(2, '2018-07-23', '1745240878', 'Munna', 'Logic', 'Software', '2018-07-23 10:48:07', NULL, 2, NULL, 'Mobile', 1, 2, NULL, NULL, NULL, NULL, 1, NULL, 1, '2018-07-23 10:48:07', '2018-07-23 10:48:07', NULL),
(3, '2018-07-24', '2', 'Munna', 'asdfasf', 'asdf', '2018-07-24 09:27:52', NULL, 3, NULL, 'Device', 1, 1, 6, 21, 36, 15, 1, NULL, 1, '2018-07-24 09:27:52', '2018-07-24 09:27:52', NULL),
(4, '2018-07-30', '174524', 'Munna', 'Address\r\nAddress', 'Purpose\r\nPurpose', '2018-07-30 06:45:08', NULL, 1, NULL, 'Device', 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, '2018-07-30 06:45:08', '2018-07-30 06:45:08', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_after_posting_in_rab_but_before_join_in_position`
-- (See below for the actual view)
--
CREATE TABLE `vw_after_posting_in_rab_but_before_join_in_position` (
`emp_id` int(10)
,`rab_id` varchar(100)
,`battalion_id` int(10) unsigned
,`wing_id` int(10) unsigned
,`branch_id` int(10) unsigned
,`sub_branch_id` int(10) unsigned
,`section_id` int(10) unsigned
,`sub_section_id` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_present_employee_location`
-- (See below for the actual view)
--
CREATE TABLE `vw_present_employee_location` (
`posting_rec_id` int(10)
,`parent_posting_rec_id` int(10)
,`emp_id` int(10)
,`posting_order_no` varchar(100)
,`posting_order_date` datetime
,`possible_joining_date` datetime
,`post_joining_date` datetime
,`post_release_date` datetime
,`posting_note_id` int(10) unsigned
,`battalion_id` int(10) unsigned
,`wing_id` int(10) unsigned
,`branch_id` int(10) unsigned
,`sub_branch_id` int(10) unsigned
,`section_id` int(10) unsigned
,`sub_section_id` int(10) unsigned
,`battalion_name` varchar(255)
,`wing_name` varchar(255)
,`branch_name` varchar(255)
,`sb_name` varchar(255)
,`section_name` varchar(255)
,`sub_section_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_present_vehicle_location`
-- (See below for the actual view)
--
CREATE TABLE `vw_present_vehicle_location` (
`id` int(10) unsigned
,`parent_vehicle_rec_id` int(10) unsigned
,`vehicle_id` int(10) unsigned
,`battalion_id` int(10) unsigned
,`wing_id` int(10) unsigned
,`branch_id` int(10) unsigned
,`sub_branch_id` int(10) unsigned
,`section_id` int(10) unsigned
,`sub_section_id` int(10) unsigned
,`issue_date` datetime
,`receive_date` datetime
,`vehicle_note_id` int(10) unsigned
,`ref_no` int(10)
,`battalion_name` varchar(255)
,`wing_name` varchar(255)
,`branch_name` varchar(255)
,`sb_name` varchar(255)
,`section_name` varchar(255)
,`sub_section_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `wheel_rotation_recs`
--

CREATE TABLE `wheel_rotation_recs` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_record_id` int(10) UNSIGNED NOT NULL,
  `rotation_date` date DEFAULT NULL,
  `rotation_km` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_rotation_km` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wheel_rotation_recs`
--

INSERT INTO `wheel_rotation_recs` (`id`, `deleted_at`, `created_at`, `updated_at`, `vehicle_record_id`, `rotation_date`, `rotation_km`, `next_rotation_km`, `remarks`) VALUES
(1, NULL, '2017-05-30 03:16:05', '2017-05-30 04:15:51', 3, '2017-05-30', '1500', '500', 'Remarks');

-- --------------------------------------------------------

--
-- Table structure for table `wings`
--

CREATE TABLE `wings` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `battalion_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `wing_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `wing_address` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wing_working_area` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wing_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wing_mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wing_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wing_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wings`
--

INSERT INTO `wings` (`id`, `deleted_at`, `created_at`, `updated_at`, `battalion_id`, `wing_name`, `wing_address`, `wing_working_area`, `wing_phone_no`, `wing_mobile_no`, `wing_fax`, `wing_email`) VALUES
(1, NULL, '2017-03-02 03:22:13', '2017-04-19 09:43:28', 1, 'Admin & Finance Wing', 'RAB HQ', 'RAB HQ', NULL, '02444', NULL, NULL),
(2, NULL, '2017-03-16 12:07:46', '2017-04-19 09:30:33', 1, 'Communication & MIS Wing', NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '2017-04-19 09:31:05', '2017-04-19 09:31:05', 1, 'Investigation & Forensic Wing', NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '2017-04-19 09:31:33', '2017-04-19 09:31:33', 1, 'Training & Orientation Wing', NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, '2017-04-19 09:31:52', '2017-04-19 09:31:52', 1, 'Operation Wing', NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, '2017-04-19 09:32:33', '2017-04-19 09:32:33', 1, 'Intelligence Wing', NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, '2017-04-19 09:33:01', '2017-04-19 09:33:01', 1, 'Legal & Media Wing', NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '2017-04-19 09:33:12', '2017-04-19 09:33:12', 1, 'Air Wing', NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, '2017-04-19 09:33:51', '2017-04-19 09:39:13', 1, 'R & D Cell', NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, '2017-04-19 09:34:10', '2017-04-19 09:39:21', 2, 'Headquarter Company', NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, '2017-04-19 09:34:25', '2017-04-19 09:39:35', 2, 'CPC 1', NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, '2017-04-19 09:34:35', '2017-04-19 09:39:44', 2, 'CPC 2', NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, '2017-04-19 09:38:36', '2017-04-19 09:40:17', 2, 'CPC 3', NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, '2017-04-19 09:40:27', '2017-04-19 09:40:27', 2, 'CPSC', NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, '2017-04-19 13:59:01', '2017-04-23 12:36:13', 3, 'Headquarter Company', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `view_item_balance`
--
DROP TABLE IF EXISTS `view_item_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_item_balance`  AS  select `ri`.`item_id` AS `item_id`,`ri`.`item_cat` AS `item_cat`,`ri`.`item_group` AS `item_group`,`ri`.`user_id` AS `user_id`,(`ri`.`svc_qty` - `ii`.`svc_qty`) AS `pre_blance`,`ri`.`receive_date` AS `receive_date` from (`view_item_receive` `ri` left join `view_item_issue` `ii` on(((`ri`.`item_id` = `ii`.`item_id`) and (`ri`.`user_id` = `ii`.`user_id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_item_issue`
--
DROP TABLE IF EXISTS `view_item_issue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_item_issue`  AS  (select `iitm`.`item_id` AS `item_id`,`i`.`item_cat` AS `item_cat`,`i`.`item_group` AS `item_group`,`i`.`item_name` AS `item_name`,`icat`.`item_cat_name` AS `item_cat_name`,`igp`.`item_group_name` AS `item_group_name`,`su`.`user_id` AS `user_id`,`ii`.`issue_date` AS `issue_date`,ifnull(sum(`iitm`.`svc_qty`),0) AS `svc_qty`,ifnull(sum(`iitm`.`unsvc_qty`),0) AS `unsvc_qty`,ifnull(sum(`iitm`.`repairable_qty`),0) AS `repairable_qty` from (((((`issue_items` `iitm` join `items` `i` on((`iitm`.`item_id` = `i`.`id`))) join `item_categories` `icat` on((`i`.`item_cat` = `icat`.`id`))) join `item_groups` `igp` on((`i`.`item_group` = `igp`.`id`))) join `issue_infos` `ii` on((`iitm`.`issue_id` = `ii`.`id`))) join `store_users` `su` on((`ii`.`organization_store_id` = `su`.`org_store_id`))) where (isnull(`ii`.`deleted_at`) and isnull(`iitm`.`deleted_at`) and isnull(`i`.`deleted_at`) and isnull(`icat`.`deleted_at`) and isnull(`igp`.`deleted_at`) and isnull(`su`.`deleted_at`)) group by `iitm`.`item_id`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_item_receive`
--
DROP TABLE IF EXISTS `view_item_receive`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_item_receive`  AS  (select `ritm`.`item_id` AS `item_id`,`i`.`item_cat` AS `item_cat`,`i`.`item_group` AS `item_group`,`i`.`item_name` AS `item_name`,`icat`.`item_cat_name` AS `item_cat_name`,`igp`.`item_group_name` AS `item_group_name`,`su`.`user_id` AS `user_id`,`ri`.`receive_date` AS `receive_date`,`ri`.`organization_store_id` AS `organization_store_id`,ifnull(sum(`ritm`.`svc_qty`),0) AS `svc_qty`,ifnull(sum(`ritm`.`unsvc_qty`),0) AS `unsvc_qty`,ifnull(sum(`ritm`.`repairable_qty`),0) AS `repairable_qty`,ifnull(sum(`ritm`.`unrepairable_qty`),0) AS `unrepairable_qty` from (((((`receive_items` `ritm` join `items` `i` on((`ritm`.`item_id` = `i`.`id`))) join `item_categories` `icat` on((`i`.`item_cat` = `icat`.`id`))) join `item_groups` `igp` on((`i`.`item_group` = `igp`.`id`))) join `receive_infos` `ri` on((`ritm`.`receive_id` = `ri`.`id`))) join `store_users` `su` on((`ri`.`organization_store_id` = `su`.`org_store_id`))) where (isnull(`ri`.`deleted_at`) and isnull(`ritm`.`deleted_at`) and isnull(`i`.`deleted_at`) and isnull(`icat`.`deleted_at`) and isnull(`igp`.`deleted_at`) and isnull(`su`.`deleted_at`)) group by `ritm`.`item_id`) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_after_posting_in_rab_but_before_join_in_position`
--
DROP TABLE IF EXISTS `vw_after_posting_in_rab_but_before_join_in_position`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_after_posting_in_rab_but_before_join_in_position`  AS  select `ei`.`emp_id` AS `emp_id`,`ei`.`rab_id` AS `rab_id`,`pr`.`battalion_id` AS `battalion_id`,`pr`.`wing_id` AS `wing_id`,`pr`.`branch_id` AS `branch_id`,`pr`.`sub_branch_id` AS `sub_branch_id`,`pr`.`section_id` AS `section_id`,`pr`.`sub_section_id` AS `sub_section_id` from (`employees_info` `ei` join `posting_record` `pr` on((`pr`.`posting_rec_id` = `ei`.`posting_rec_id`))) where ((`ei`.`joining_date` is not null) and isnull(`ei`.`release_date`) and isnull(`ei`.`deleted_at`) and (`pr`.`is_joined` = 0) and isnull(`pr`.`deleted_at`) and (not(`ei`.`emp_id` in (select `pr`.`emp_id` from `posting_record` `pr` where ((`pr`.`emp_id` = `ei`.`emp_id`) and isnull(`pr`.`deleted_at`) and (`pr`.`is_joined` = 1)))))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_present_employee_location`
--
DROP TABLE IF EXISTS `vw_present_employee_location`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_present_employee_location`  AS  select `pr`.`posting_rec_id` AS `posting_rec_id`,`pr`.`parent_posting_rec_id` AS `parent_posting_rec_id`,`pr`.`emp_id` AS `emp_id`,`pr`.`posting_order_no` AS `posting_order_no`,`pr`.`posting_order_date` AS `posting_order_date`,`pr`.`possible_joining_date` AS `possible_joining_date`,`pr`.`post_joining_date` AS `post_joining_date`,`pr`.`post_release_date` AS `post_release_date`,`pr`.`posting_note_id` AS `posting_note_id`,`pr`.`battalion_id` AS `battalion_id`,`pr`.`wing_id` AS `wing_id`,`pr`.`branch_id` AS `branch_id`,`pr`.`sub_branch_id` AS `sub_branch_id`,`pr`.`section_id` AS `section_id`,`pr`.`sub_section_id` AS `sub_section_id`,`b`.`battalion_name` AS `battalion_name`,`w`.`wing_name` AS `wing_name`,`br`.`branch_name` AS `branch_name`,`sbr`.`sb_name` AS `sb_name`,`s`.`section_name` AS `section_name`,`ss`.`sub_section_name` AS `sub_section_name` from (((((((`posting_record` `pr` join `battalions` `b` on((`b`.`id` = `pr`.`battalion_id`))) join `employees_info` `ei` on((`ei`.`posting_rec_id` = `pr`.`posting_rec_id`))) left join `wings` `w` on((`w`.`id` = `pr`.`wing_id`))) left join `branches` `br` on((`br`.`id` = `pr`.`branch_id`))) left join `sub_branches` `sbr` on((`sbr`.`id` = `pr`.`sub_branch_id`))) left join `sections` `s` on((`s`.`id` = `pr`.`section_id`))) left join `sub_sections` `ss` on((`ss`.`id` = `pr`.`sub_section_id`))) where ((`pr`.`is_joined` = 1) and isnull(`ei`.`release_date`) and isnull(`pr`.`deleted_at`) and isnull(`b`.`deleted_at`) and isnull(`ei`.`deleted_at`) and isnull(`w`.`deleted_at`) and isnull(`br`.`deleted_at`) and isnull(`sbr`.`deleted_at`) and isnull(`s`.`deleted_at`) and isnull(`ss`.`deleted_at`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_present_vehicle_location`
--
DROP TABLE IF EXISTS `vw_present_vehicle_location`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_present_vehicle_location`  AS  select `vr`.`id` AS `id`,`vr`.`parent_vehicle_rec_id` AS `parent_vehicle_rec_id`,`vr`.`vehicle_id` AS `vehicle_id`,`vr`.`battalion_id` AS `battalion_id`,`vr`.`wing_id` AS `wing_id`,`vr`.`branch_id` AS `branch_id`,`vr`.`sub_branch_id` AS `sub_branch_id`,`vr`.`section_id` AS `section_id`,`vr`.`sub_section_id` AS `sub_section_id`,`vr`.`issue_date` AS `issue_date`,`vr`.`receive_date` AS `receive_date`,`vr`.`vehicle_note_id` AS `vehicle_note_id`,`vr`.`ref_no` AS `ref_no`,`b`.`battalion_name` AS `battalion_name`,`w`.`wing_name` AS `wing_name`,`br`.`branch_name` AS `branch_name`,`sbr`.`sb_name` AS `sb_name`,`s`.`section_name` AS `section_name`,`ss`.`sub_section_name` AS `sub_section_name` from (((((((`vehicle_records` `vr` join `battalions` `b` on((`b`.`id` = `vr`.`battalion_id`))) join `vehicle_infos` `vi` on((`vi`.`id` = `vr`.`vehicle_id`))) left join `wings` `w` on((`w`.`id` = `vr`.`wing_id`))) left join `branches` `br` on((`br`.`id` = `vr`.`branch_id`))) left join `sub_branches` `sbr` on((`sbr`.`id` = `vr`.`sub_branch_id`))) left join `sections` `s` on((`s`.`id` = `vr`.`section_id`))) left join `sub_sections` `ss` on((`ss`.`id` = `vr`.`sub_section_id`))) where ((`vr`.`status` = 1) and isnull(`vr`.`deleted_at`) and isnull(`b`.`deleted_at`) and isnull(`w`.`deleted_at`) and isnull(`br`.`deleted_at`) and isnull(`sbr`.`deleted_at`) and isnull(`s`.`deleted_at`) and isnull(`ss`.`deleted_at`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academy_courses`
--
ALTER TABLE `academy_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_store_items`
--
ALTER TABLE `assign_store_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_store_items_item_cat_id_foreign` (`item_cat_id`),
  ADD KEY `assign_store_items_org_store_id_foreign` (`org_store_id`);

--
-- Indexes for table `attendence_statuses`
--
ALTER TABLE `attendence_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banks_bank_name_unique` (`bank_name`),
  ADD UNIQUE KEY `banks_bank_cell_no_unique` (`bank_cell_no`),
  ADD UNIQUE KEY `banks_bank_mobile_unique` (`bank_mobile`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_accounts_bank_id_foreign` (`bank_id`);

--
-- Indexes for table `bank_branches`
--
ALTER TABLE `bank_branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_branches_bank_branch_name_unique` (`bank_branch_name`),
  ADD UNIQUE KEY `bank_branches_bank_branch_cell_unique` (`bank_branch_cell`),
  ADD UNIQUE KEY `bank_branches_bank_branch_mobile_unique` (`bank_branch_mobile`),
  ADD KEY `bank_branches_bank_id_foreign` (`bank_id`);

--
-- Indexes for table `basic_informations`
--
ALTER TABLE `basic_informations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `basic_informations_national_id_unique` (`national_id`),
  ADD KEY `basic_informations_birth_place_foreign` (`birth_place`),
  ADD KEY `basic_informations_academy_course_id_foreign` (`academy_course_id`);

--
-- Indexes for table `battalions`
--
ALTER TABLE `battalions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `battalions_battalion_phone_no_unique` (`battalion_phone_no`),
  ADD UNIQUE KEY `battalions_battalion_mobile_no_unique` (`battalion_mobile_no`),
  ADD UNIQUE KEY `battalions_battalion_email_unique` (`battalion_email`),
  ADD UNIQUE KEY `battalions_battalion_name_unique` (`battalion_name`),
  ADD UNIQUE KEY `battalions_battalion_fax_unique` (`battalion_fax`);

--
-- Indexes for table `battery_records`
--
ALTER TABLE `battery_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `battery_records_vehicle_record_id_foreign` (`vehicle_record_id`);

--
-- Indexes for table `blood_donations`
--
ALTER TABLE `blood_donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branches_branch_phone_unique` (`branch_phone_no`),
  ADD UNIQUE KEY `branches_branch_mobile_no_unique` (`branch_mobile_no`),
  ADD UNIQUE KEY `branches_branch_fax_unique` (`branch_fax`),
  ADD UNIQUE KEY `branches_branch_email_unique` (`branch_email`),
  ADD KEY `branches_battalion_id_foreign` (`battalion_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificate_courses`
--
ALTER TABLE `certificate_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chronic_diseases`
--
ALTER TABLE `chronic_diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cores`
--
ALTER TABLE `cores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cores_mother_force_id_foreign` (`mother_force_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_country_name_unique` (`country_name`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crime_types`
--
ALTER TABLE `crime_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_country_id_foreign` (`country_id`);

--
-- Indexes for table `daily_attendences`
--
ALTER TABLE `daily_attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attend_status_id` (`attend_status_id`);

--
-- Indexes for table `daily_duties`
--
ALTER TABLE `daily_duties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_duties_duty_type_id_foreign` (`duty_type_id`),
  ADD KEY `daily_duties_duty_roster_id_foreign` (`duty_roster_id`);

--
-- Indexes for table `daily_movements`
--
ALTER TABLE `daily_movements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_outpasses`
--
ALTER TABLE `daily_outpasses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_outpasses_emp_id_foreign` (`emp_id`);

--
-- Indexes for table `daily_vehicle_usages`
--
ALTER TABLE `daily_vehicle_usages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_vehicle_usages_vehicle_record_id_foreign` (`vehicle_record_id`),
  ADD KEY `daily_vehicle_usages_vehicle_driver_id_foreign` (`vehicle_driver_id`),
  ADD KEY `daily_vehicle_usages_fuel_type_id_foreign` (`fuel_type_id`);

--
-- Indexes for table `damaged_vehicles`
--
ALTER TABLE `damaged_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `veh_damage_info_id` (`veh_damage_info_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_designation_name_unique` (`designation_name`),
  ADD UNIQUE KEY `designations_designation_level_unique` (`designation_level`);

--
-- Indexes for table `designation_mappings`
--
ALTER TABLE `designation_mappings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation_mappings_designation_id_foreign` (`designation_id`),
  ADD KEY `designation_mappings_mother_force_id_foreign` (`mother_force_id`),
  ADD KEY `designation_mappings_rank_id_foreign` (`rank_id`);

--
-- Indexes for table `disciplinary_actions`
--
ALTER TABLE `disciplinary_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disposal_records`
--
ALTER TABLE `disposal_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `battalion_id` (`battalion_id`),
  ADD KEY `district_id` (`district_id`),
  ADD KEY `upazila_id` (`upazila_id`),
  ADD KEY `crime_type_id` (`crime_type_id`);

--
-- Indexes for table `disposal_record_details`
--
ALTER TABLE `disposal_record_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disposal_record_id` (`disposal_record_id`,`ied_type_id`),
  ADD KEY `ied_type_id` (`ied_type_id`);

--
-- Indexes for table `disposal_record_images`
--
ALTER TABLE `disposal_record_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_dis_name_unique` (`dis_name`),
  ADD KEY `districts_division_id_foreign` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `divisions_div_name_unique` (`div_name`);

--
-- Indexes for table `duty_roster_policies`
--
ALTER TABLE `duty_roster_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duty_types`
--
ALTER TABLE `duty_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `duty_types_wing_id_foreign` (`wing_id`),
  ADD KEY `duty_types_battalion_id_foreign` (`battalion_id`);

--
-- Indexes for table `education_infos`
--
ALTER TABLE `education_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_infos_course_id_foreign` (`course_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `employees_info`
--
ALTER TABLE `employees_info`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `rank_id` (`rank_id`),
  ADD KEY `fk_employees_info_mf_id` (`mother_force_id`),
  ADD KEY `fk_employees_info_core_id` (`core_id`),
  ADD KEY `fk_employees_info_trade_id` (`trade_id`),
  ADD KEY `fk_employees_info_mother_unit_id` (`mother_unit_id`),
  ADD KEY `posting_rec_id` (`posting_rec_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `release_mother_unit_id` (`release_mother_unit_id`);

--
-- Indexes for table `family_informations`
--
ALTER TABLE `family_informations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `family_informations_nid_unique` (`nid`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `relation_id` (`relation_id`),
  ADD KEY `division_id` (`division_id`),
  ADD KEY `district_id` (`district_id`),
  ADD KEY `upazilla_id` (`upazilla_id`);

--
-- Indexes for table `fuel_types`
--
ALTER TABLE `fuel_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_admission_infos`
--
ALTER TABLE `hospital_admission_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ied_types`
--
ALTER TABLE `ied_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `increment_infos`
--
ALTER TABLE `increment_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `increment_infos_increment_type_foreign` (`increment_type`);

--
-- Indexes for table `increment_types`
--
ALTER TABLE `increment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_damage_infos`
--
ALTER TABLE `inventory_damage_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `inventory_damage_items`
--
ALTER TABLE `inventory_damage_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_damage_info_id` (`inventory_damage_info_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `mm_unit_id` (`mm_unit_id`);

--
-- Indexes for table `inventory_opening_balance`
--
ALTER TABLE `inventory_opening_balance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_opening_organization_store_id_item_id` (`organization_store_id`,`item_id`),
  ADD KEY `organization_store_id` (`organization_store_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `issue_infos`
--
ALTER TABLE `issue_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organization_store_id` (`organization_store_id`),
  ADD KEY `to_organization_store_id` (`to_organization_store_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `to_battalion_id` (`to_battalion_id`),
  ADD KEY `to_wing_id` (`to_wing_id`),
  ADD KEY `to_branch_id` (`to_branch_id`),
  ADD KEY `to_sub_branch_id` (`to_sub_branch_id`),
  ADD KEY `to_section_id` (`to_section_id`),
  ADD KEY `to_sub_section_id` (`to_sub_section_id`),
  ADD KEY `issue_to_employee_id` (`issue_to_employee_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Indexes for table `issue_items`
--
ALTER TABLE `issue_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issue_id` (`issue_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `mm_unit_id` (`mm_unit_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_barcode` (`item_barcode`),
  ADD KEY `items_item_cat_foreign` (`item_cat`),
  ADD KEY `items_item_group_foreign` (`item_group`),
  ADD KEY `items_mm_unit_id_foreign` (`mm_unit_id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_groups`
--
ALTER TABLE `item_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_groups_item_cat_id_foreign` (`item_cat_id`);

--
-- Indexes for table `item_parts`
--
ALTER TABLE `item_parts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_parts_item_id_foreign` (`item_id`);

--
-- Indexes for table `kpl_infos`
--
ALTER TABLE `kpl_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kpl_infos_fuel_type_id_foreign` (`fuel_type_id`),
  ADD KEY `kpl_infos_vehicle_record_id_foreign` (`vehicle_record_id`);

--
-- Indexes for table `kpl_members`
--
ALTER TABLE `kpl_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kpl_members_kpl_id_foreign` (`kpl_id`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_leave_type_id_foreign` (`leave_type_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `leaves_district_id_foreign` (`district_id`),
  ADD KEY `upazila_id` (`upazila_id`),
  ADD KEY `approved_by` (`approved_by`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_ledger_organization_store_id_item_id` (`organization_store_id`,`item_id`),
  ADD KEY `organization_store_id` (`organization_store_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `manpower_auths`
--
ALTER TABLE `manpower_auths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manpower_auths_mother_force_id_foreign` (`mother_force_id`),
  ADD KEY `manpower_auths_designation_id_foreign` (`designation_id`);

--
-- Indexes for table `manpower_budgets`
--
ALTER TABLE `manpower_budgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measurement_units`
--
ALTER TABLE `measurement_units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `measurement_units_mm_unit_name_unique` (`mm_unit_name`);

--
-- Indexes for table `medical_categories`
--
ALTER TABLE `medical_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobileboxes`
--
ALTER TABLE `mobileboxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobileboxes_box_no_unique` (`box_no`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mother_forces`
--
ALTER TABLE `mother_forces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mother_forces_mother_force_unique` (`mf_name`),
  ADD UNIQUE KEY `mother_forces_mf_phone_no_unique` (`mf_phone_no`),
  ADD UNIQUE KEY `mother_forces_mf_mobile_no_unique` (`mf_mobile_no`),
  ADD UNIQUE KEY `mother_forces_mf_fax_unique` (`mf_fax`),
  ADD UNIQUE KEY `mother_forces_mf_email_unique` (`mf_email`),
  ADD UNIQUE KEY `mother_forces_mf_website_unique` (`mf_website`);

--
-- Indexes for table `mother_units`
--
ALTER TABLE `mother_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mother_units_mother_force_id_foreign` (`mother_force_id`);

--
-- Indexes for table `movement_types`
--
ALTER TABLE `movement_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `move_orders`
--
ALTER TABLE `move_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posting_rec_id` (`posting_rec_id`);

--
-- Indexes for table `oil_change_records`
--
ALTER TABLE `oil_change_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oil_change_records_vehicle_record_id_foreign` (`vehicle_record_id`),
  ADD KEY `oil_change_records_oil_type_id_foreign` (`oil_type_id`);

--
-- Indexes for table `oil_types`
--
ALTER TABLE `oil_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`),
  ADD UNIQUE KEY `organizations_email_unique` (`email`),
  ADD KEY `organizations_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `organization_stores`
--
ALTER TABLE `organization_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organization_stores_wing_id_foreign` (`wing_id`),
  ADD KEY `organization_stores_branch_id_foreign` (`branch_id`),
  ADD KEY `organization_stores_sub_branch_id_foreign` (`sub_branch_id`),
  ADD KEY `organization_stores_section_id_foreign` (`section_id`),
  ADD KEY `organization_stores_sub_section_id_foreign` (`sub_section_id`),
  ADD KEY `organization_stores_store_id_foreign` (`store_id`),
  ADD KEY `organization_stores_battalion_id_foreign` (`battalion_id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parts_parts_cat_id_foreign` (`parts_cat_id`);

--
-- Indexes for table `parts_categories`
--
ALTER TABLE `parts_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payroll_accounts`
--
ALTER TABLE `payroll_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_allowances`
--
ALTER TABLE `payroll_allowances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_allowances_allowance_name_unique` (`allowance_name`),
  ADD KEY `payroll_allowances_payroll_head_id_foreign` (`payroll_head_id`),
  ADD KEY `salary_head_id` (`salary_head_id`);

--
-- Indexes for table `payroll_deductions`
--
ALTER TABLE `payroll_deductions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_deductions_deduction_name_unique` (`deduction_name`),
  ADD KEY `payroll_deductions_payroll_head_id_foreign` (`payroll_head_id`);

--
-- Indexes for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_heads_payroll_type_foreign` (`payroll_type`);

--
-- Indexes for table `payroll_hrm`
--
ALTER TABLE `payroll_hrm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `pay_scale_id` (`pay_scale_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `payroll_hrm_details`
--
ALTER TABLE `payroll_hrm_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_hrm_id` (`payroll_hrm_id`),
  ADD KEY `payroll_allowance_id` (`payroll_allowance_id`),
  ADD KEY `payroll_deduction_id` (`payroll_deduction_id`);

--
-- Indexes for table `payroll_pay_scales`
--
ALTER TABLE `payroll_pay_scales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_head_id` (`payroll_head_id`);

--
-- Indexes for table `payroll_pay_scale_details`
--
ALTER TABLE `payroll_pay_scale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_scale_id` (`pay_scale_id`);

--
-- Indexes for table `payroll_policy`
--
ALTER TABLE `payroll_policy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `policy_name` (`policy_name`);

--
-- Indexes for table `payroll_policy_details`
--
ALTER TABLE `payroll_policy_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `policy_id` (`policy_id`),
  ADD KEY `payroll_head` (`payroll_head`),
  ADD KEY `salary_head` (`salary_head`);

--
-- Indexes for table `payroll_salary_process`
--
ALTER TABLE `payroll_salary_process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posting_rec_id` (`posting_rec_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `payroll_salary_process_details`
--
ALTER TABLE `payroll_salary_process_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_process_id` (`salary_process_id`),
  ADD KEY `pay_scale_id` (`pay_scale_id`),
  ADD KEY `allowance_id` (`allowance_id`),
  ADD KEY `dedeuction_id` (`deduction_id`),
  ADD KEY `payroll_hrm_id` (`payroll_hrm_id`);

--
-- Indexes for table `payroll_sub_heads`
--
ALTER TABLE `payroll_sub_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_sub_heads_sub_head_name_unique` (`sub_head_name`),
  ADD KEY `payroll_head_id` (`payroll_head_id`);

--
-- Indexes for table `payroll_types`
--
ALTER TABLE `payroll_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `personal_deductions`
--
ALTER TABLE `personal_deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posting_rec_id` (`posting_rec_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `personal_deduction_details`
--
ALTER TABLE `personal_deduction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personal_deduction_id` (`personal_deduction_id`),
  ADD KEY `personal_deduction_type_id` (`personal_deduction_type_id`);

--
-- Indexes for table `personal_deduction_types`
--
ALTER TABLE `personal_deduction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posting_applications`
--
ALTER TABLE `posting_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `posting_notes`
--
ALTER TABLE `posting_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_posting_note_id` (`parent_posting_note_id`);

--
-- Indexes for table `posting_note_details`
--
ALTER TABLE `posting_note_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `battalion_id` (`battalion_id`),
  ADD KEY `wing_id` (`wing_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `sub_branch_id` (`sub_branch_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `sub_section_id` (`sub_section_id`),
  ADD KEY `posting_note_id` (`posting_note_id`);

--
-- Indexes for table `posting_record`
--
ALTER TABLE `posting_record`
  ADD PRIMARY KEY (`posting_rec_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `battalion_id` (`battalion_id`),
  ADD KEY `wing_id` (`wing_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `sub_branch_id` (`sub_branch_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `sub_section_id` (`sub_section_id`),
  ADD KEY `posting_note_id` (`posting_note_id`),
  ADD KEY `parent_posting_rec_id` (`parent_posting_rec_id`);

--
-- Indexes for table `post_permanent_infos`
--
ALTER TABLE `post_permanent_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_permanents_rank_id_foreign` (`rank_id`);

--
-- Indexes for table `pre_trainings`
--
ALTER TABLE `pre_trainings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pre_trainings_training_week_id_foreign` (`training_week_id`);

--
-- Indexes for table `profile_amendments`
--
ALTER TABLE `profile_amendments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `prev_rank_id` (`prev_rank_id`),
  ADD KEY `pres_rank_id` (`pres_rank_id`);

--
-- Indexes for table `promotion_exams`
--
ALTER TABLE `promotion_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ral_infos`
--
ALTER TABLE `ral_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ranks_mother_force_id_foreign` (`mother_force_id`);

--
-- Indexes for table `ration_categories`
--
ALTER TABLE `ration_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ration_crashing_details`
--
ALTER TABLE `ration_crashing_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ration_crashing_details_1_idx` (`crashing_product_id`),
  ADD KEY `fk_ration_crashing_details_2_idx` (`output_product_id`);

--
-- Indexes for table `ration_crashing_infos`
--
ALTER TABLE `ration_crashing_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ration_distributions`
--
ALTER TABLE `ration_distributions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posting_rec_id` (`posting_rec_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `ration_distribution_details`
--
ALTER TABLE `ration_distribution_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ration_id` (`ration_distribution_id`,`ration_unit_setup_id`),
  ADD KEY `ration_unit_setup_id` (`ration_unit_setup_id`);

--
-- Indexes for table `ration_infos`
--
ALTER TABLE `ration_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ration_info_details`
--
ALTER TABLE `ration_info_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ration_info_id` (`ration_info_id`,`ration_category_id`),
  ADD KEY `ration_category_id` (`ration_category_id`);

--
-- Indexes for table `ration_sells`
--
ALTER TABLE `ration_sells`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posting_rec_id` (`posting_rec_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `ration_sell_details`
--
ALTER TABLE `ration_sell_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ration_id` (`ration_sell_id`,`ration_unit_setup_id`),
  ADD KEY `ration_unit_setup_id` (`ration_unit_setup_id`);

--
-- Indexes for table `ration_unit_setups`
--
ALTER TABLE `ration_unit_setups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receive_infos`
--
ALTER TABLE `receive_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `organization_store_id` (`organization_store_id`),
  ADD KEY `from_organization_store_id` (`from_organization_store_id`),
  ADD KEY `from_emp_id` (`from_employee_id`),
  ADD KEY `issue_voucher_id` (`issue_voucher_id`);

--
-- Indexes for table `receive_items`
--
ALTER TABLE `receive_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `origin` (`country_id`),
  ADD KEY `receive_id` (`receive_id`),
  ADD KEY `measurement_unit_id` (`measurement_unit_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resident_infos`
--
ALTER TABLE `resident_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_menu`
--
ALTER TABLE `role_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`menu_id`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_foreign` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_section_name_unique` (`section_name`),
  ADD UNIQUE KEY `sections_section_phone_no_unique` (`section_phone_no`),
  ADD UNIQUE KEY `sections_section_mobile_no_unique` (`section_mobile_no`),
  ADD UNIQUE KEY `sections_section_fax_unique` (`section_fax`),
  ADD UNIQUE KEY `sections_section_email_unique` (`section_email`),
  ADD KEY `sections_sub_branch_id_foreign` (`sub_branch_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_store_name_unique` (`store_name`);

--
-- Indexes for table `store_users`
--
ALTER TABLE `store_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_users_user_id_foreign` (`user_id`),
  ADD KEY `store_users_org_store_id_foreign` (`org_store_id`);

--
-- Indexes for table `sub_branches`
--
ALTER TABLE `sub_branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_branches_sb_fax_unique` (`sb_fax`),
  ADD UNIQUE KEY `sub_branches_sb_email_unique` (`sb_email`),
  ADD KEY `sub_branches_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `sub_sections`
--
ALTER TABLE `sub_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_sections_sub_section_name_unique` (`sub_section_name`),
  ADD UNIQUE KEY `sub_sections_mobile_no_unique` (`mobile_no`),
  ADD UNIQUE KEY `sub_sections_sub_section_fax_unique` (`sub_section_fax`),
  ADD UNIQUE KEY `sub_sections_sub_section_email_unique` (`sub_section_email`),
  ADD KEY `sub_sections_section_id_foreign` (`section_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trades`
--
ALTER TABLE `trades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trades_mother_force_id_foreign` (`mother_force_id`);

--
-- Indexes for table `training_infos`
--
ALTER TABLE `training_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `training_infos_training_type_foreign` (`training_type`),
  ADD KEY `training_infos_country_id_foreign` (`country_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_weeks`
--
ALTER TABLE `training_weeks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_informations`
--
ALTER TABLE `travel_informations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_informations_country_id_foreign` (`country_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `tyre_change_recs`
--
ALTER TABLE `tyre_change_recs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tyre_change_recs_vehicle_record_id_foreign` (`vehicle_record_id`);

--
-- Indexes for table `upazillas`
--
ALTER TABLE `upazillas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upazillas_district_id_foreign` (`district_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `vehicle_accident_recs`
--
ALTER TABLE `vehicle_accident_recs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_accident_recs_vehicle_record_id_foreign` (`vehicle_record_id`),
  ADD KEY `vehicle_accident_recs_vehicle_driver_id_foreign` (`vehicle_driver_id`);

--
-- Indexes for table `vehicle_allocations`
--
ALTER TABLE `vehicle_allocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_drivers_vehicle_record_id_foreign` (`vehicle_record_id`),
  ADD KEY `emp_posting_rec_id` (`posting_rec_id`);

--
-- Indexes for table `vehicle_brands`
--
ALTER TABLE `vehicle_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_budgets`
--
ALTER TABLE `vehicle_budgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_budgets_wing_id_foreign` (`wing_id`),
  ADD KEY `vehicle_budgets_branch_id_foreign` (`branch_id`),
  ADD KEY `vehicle_budgets_sub_branch_id_foreign` (`sub_branch_id`),
  ADD KEY `vehicle_budgets_section_id_foreign` (`section_id`),
  ADD KEY `vehicle_budgets_sub_section_id_foreign` (`sub_section_id`),
  ADD KEY `vehicle_budgets_vehicle_type_id_foreign` (`vehicle_type_id`),
  ADD KEY `vehicle_budgets_vehicle_brand_id_foreign` (`vehicle_brand_id`),
  ADD KEY `vehicle_budgets_battalion_id_foreign` (`battalion_id`);

--
-- Indexes for table `vehicle_damage_infos`
--
ALTER TABLE `vehicle_damage_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_drivers`
--
ALTER TABLE `vehicle_drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_drivers_vehicle_record_id_foreign` (`vehicle_record_id`);

--
-- Indexes for table `vehicle_fuels`
--
ALTER TABLE `vehicle_fuels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_fuels_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `vehicle_fuels_fuel_type_id_foreign` (`fuel_type_id`);

--
-- Indexes for table `vehicle_infos`
--
ALTER TABLE `vehicle_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `vehicle_source_id` (`vehicle_source_id`),
  ADD KEY `vehicle_record_id` (`vehicle_record_id`);

--
-- Indexes for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_models_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `vehicle_notes`
--
ALTER TABLE `vehicle_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_posting_note_id` (`parent_vehicle_note_id`);

--
-- Indexes for table `vehicle_note_details`
--
ALTER TABLE `vehicle_note_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `battalion_id` (`battalion_id`),
  ADD KEY `wing_id` (`wing_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `sub_branch_id` (`sub_branch_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `sub_section_id` (`sub_section_id`),
  ADD KEY `vehicle_note_id` (`vehicle_note_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `vehicle_parts`
--
ALTER TABLE `vehicle_parts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_parts_parts_id_foreign` (`parts_id`),
  ADD KEY `vehicle_parts_vehicle_id_foreign` (`vehicle_id`);

--
-- Indexes for table `vehicle_records`
--
ALTER TABLE `vehicle_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `battalion_id` (`battalion_id`),
  ADD KEY `wing_id` (`wing_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `sub_branch_id` (`sub_branch_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `sub_section_id` (`sub_section_id`);

--
-- Indexes for table `vehicle_repair`
--
ALTER TABLE `vehicle_repair`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vehicle_record_idx` (`vehicle_record_id`),
  ADD KEY `fk_vehicle_repair_type_id_idx` (`vehicle_repair_type_id`);

--
-- Indexes for table `vehicle_repair_detail`
--
ALTER TABLE `vehicle_repair_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vehicle_repair_id_idx` (`vehicle_repair_id`),
  ADD KEY `fk_parts_id_idx` (`parts_id`);

--
-- Indexes for table `vehicle_repair_types`
--
ALTER TABLE `vehicle_repair_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_sources`
--
ALTER TABLE `vehicle_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visiting_cards`
--
ALTER TABLE `visiting_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visiting_cards_battalion_id_foreign` (`battalion_id`),
  ADD KEY `visiting_cards_wing_id_foreign` (`wing_id`),
  ADD KEY `visiting_cards_branch_id_foreign` (`branch_id`),
  ADD KEY `visiting_cards_sub_branch_id_foreign` (`sub_branch_id`),
  ADD KEY `visiting_cards_section_id_foreign` (`section_id`),
  ADD KEY `visiting_cards_sub_section_id_foreign` (`sub_section_id`);

--
-- Indexes for table `visitor_infos`
--
ALTER TABLE `visitor_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `battalion_id` (`battalion_id`),
  ADD KEY `wing_id` (`wing_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `designation_id` (`designation_id`),
  ADD KEY `to_posting_rec_id` (`to_posting_rec_id`),
  ADD KEY `to_recipient_id` (`to_recipient_id`),
  ADD KEY `card_id` (`card_id`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `wheel_rotation_recs`
--
ALTER TABLE `wheel_rotation_recs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wheel_rotation_recs_vehicle_record_id_foreign` (`vehicle_record_id`);

--
-- Indexes for table `wings`
--
ALTER TABLE `wings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wings_wing_phone_no_unique` (`wing_phone_no`),
  ADD UNIQUE KEY `wings_wing_mobile_no_unique` (`wing_mobile_no`),
  ADD UNIQUE KEY `wings_wing_fax_unique` (`wing_fax`),
  ADD UNIQUE KEY `wings_wing_email_unique` (`wing_email`),
  ADD KEY `wings_battalion_id_foreign` (`battalion_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academy_courses`
--
ALTER TABLE `academy_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `assign_store_items`
--
ALTER TABLE `assign_store_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `attendence_statuses`
--
ALTER TABLE `attendence_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bank_branches`
--
ALTER TABLE `bank_branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `basic_informations`
--
ALTER TABLE `basic_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `battalions`
--
ALTER TABLE `battalions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `battery_records`
--
ALTER TABLE `battery_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blood_donations`
--
ALTER TABLE `blood_donations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `certificate_courses`
--
ALTER TABLE `certificate_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `chronic_diseases`
--
ALTER TABLE `chronic_diseases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cores`
--
ALTER TABLE `cores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `crime_types`
--
ALTER TABLE `crime_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `daily_attendences`
--
ALTER TABLE `daily_attendences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `daily_duties`
--
ALTER TABLE `daily_duties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `daily_movements`
--
ALTER TABLE `daily_movements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `daily_outpasses`
--
ALTER TABLE `daily_outpasses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `daily_vehicle_usages`
--
ALTER TABLE `daily_vehicle_usages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `damaged_vehicles`
--
ALTER TABLE `damaged_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `designation_mappings`
--
ALTER TABLE `designation_mappings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `disciplinary_actions`
--
ALTER TABLE `disciplinary_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `disposal_records`
--
ALTER TABLE `disposal_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `disposal_record_details`
--
ALTER TABLE `disposal_record_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `disposal_record_images`
--
ALTER TABLE `disposal_record_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `duty_roster_policies`
--
ALTER TABLE `duty_roster_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `duty_types`
--
ALTER TABLE `duty_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `education_infos`
--
ALTER TABLE `education_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employees_info`
--
ALTER TABLE `employees_info`
  MODIFY `emp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10161;
--
-- AUTO_INCREMENT for table `family_informations`
--
ALTER TABLE `family_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `fuel_types`
--
ALTER TABLE `fuel_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hospital_admission_infos`
--
ALTER TABLE `hospital_admission_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ied_types`
--
ALTER TABLE `ied_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `increment_infos`
--
ALTER TABLE `increment_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `increment_types`
--
ALTER TABLE `increment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inventory_damage_infos`
--
ALTER TABLE `inventory_damage_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inventory_damage_items`
--
ALTER TABLE `inventory_damage_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `inventory_opening_balance`
--
ALTER TABLE `inventory_opening_balance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `issue_infos`
--
ALTER TABLE `issue_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `issue_items`
--
ALTER TABLE `issue_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `item_groups`
--
ALTER TABLE `item_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `item_parts`
--
ALTER TABLE `item_parts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kpl_infos`
--
ALTER TABLE `kpl_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `kpl_members`
--
ALTER TABLE `kpl_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ledgers`
--
ALTER TABLE `ledgers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `manpower_auths`
--
ALTER TABLE `manpower_auths`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `manpower_budgets`
--
ALTER TABLE `manpower_budgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `measurement_units`
--
ALTER TABLE `measurement_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `medical_categories`
--
ALTER TABLE `medical_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mobileboxes`
--
ALTER TABLE `mobileboxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=734;
--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `mother_forces`
--
ALTER TABLE `mother_forces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mother_units`
--
ALTER TABLE `mother_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `movement_types`
--
ALTER TABLE `movement_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `move_orders`
--
ALTER TABLE `move_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `oil_change_records`
--
ALTER TABLE `oil_change_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oil_types`
--
ALTER TABLE `oil_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organization_stores`
--
ALTER TABLE `organization_stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `parts_categories`
--
ALTER TABLE `parts_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `payroll_accounts`
--
ALTER TABLE `payroll_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payroll_allowances`
--
ALTER TABLE `payroll_allowances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `payroll_deductions`
--
ALTER TABLE `payroll_deductions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `payroll_hrm`
--
ALTER TABLE `payroll_hrm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `payroll_hrm_details`
--
ALTER TABLE `payroll_hrm_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `payroll_pay_scales`
--
ALTER TABLE `payroll_pay_scales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `payroll_pay_scale_details`
--
ALTER TABLE `payroll_pay_scale_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `payroll_policy`
--
ALTER TABLE `payroll_policy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `payroll_policy_details`
--
ALTER TABLE `payroll_policy_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `payroll_salary_process`
--
ALTER TABLE `payroll_salary_process`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `payroll_salary_process_details`
--
ALTER TABLE `payroll_salary_process_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `payroll_sub_heads`
--
ALTER TABLE `payroll_sub_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `payroll_types`
--
ALTER TABLE `payroll_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `personal_deductions`
--
ALTER TABLE `personal_deductions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `personal_deduction_details`
--
ALTER TABLE `personal_deduction_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `personal_deduction_types`
--
ALTER TABLE `personal_deduction_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posting_applications`
--
ALTER TABLE `posting_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posting_notes`
--
ALTER TABLE `posting_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `posting_note_details`
--
ALTER TABLE `posting_note_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `posting_record`
--
ALTER TABLE `posting_record`
  MODIFY `posting_rec_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `post_permanent_infos`
--
ALTER TABLE `post_permanent_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pre_trainings`
--
ALTER TABLE `pre_trainings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profile_amendments`
--
ALTER TABLE `profile_amendments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `promotion_exams`
--
ALTER TABLE `promotion_exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ral_infos`
--
ALTER TABLE `ral_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `ration_categories`
--
ALTER TABLE `ration_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ration_crashing_details`
--
ALTER TABLE `ration_crashing_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ration_crashing_infos`
--
ALTER TABLE `ration_crashing_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ration_distributions`
--
ALTER TABLE `ration_distributions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ration_distribution_details`
--
ALTER TABLE `ration_distribution_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ration_infos`
--
ALTER TABLE `ration_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ration_info_details`
--
ALTER TABLE `ration_info_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ration_sells`
--
ALTER TABLE `ration_sells`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ration_sell_details`
--
ALTER TABLE `ration_sell_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ration_unit_setups`
--
ALTER TABLE `ration_unit_setups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `receive_infos`
--
ALTER TABLE `receive_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `receive_items`
--
ALTER TABLE `receive_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `resident_infos`
--
ALTER TABLE `resident_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `role_menu`
--
ALTER TABLE `role_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;
--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=832;
--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `store_users`
--
ALTER TABLE `store_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sub_branches`
--
ALTER TABLE `sub_branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `sub_sections`
--
ALTER TABLE `sub_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `trades`
--
ALTER TABLE `trades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `training_infos`
--
ALTER TABLE `training_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `training_weeks`
--
ALTER TABLE `training_weeks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `travel_informations`
--
ALTER TABLE `travel_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tyre_change_recs`
--
ALTER TABLE `tyre_change_recs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `upazillas`
--
ALTER TABLE `upazillas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `vehicle_accident_recs`
--
ALTER TABLE `vehicle_accident_recs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vehicle_allocations`
--
ALTER TABLE `vehicle_allocations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `vehicle_brands`
--
ALTER TABLE `vehicle_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `vehicle_budgets`
--
ALTER TABLE `vehicle_budgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `vehicle_damage_infos`
--
ALTER TABLE `vehicle_damage_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vehicle_drivers`
--
ALTER TABLE `vehicle_drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `vehicle_fuels`
--
ALTER TABLE `vehicle_fuels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `vehicle_infos`
--
ALTER TABLE `vehicle_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vehicle_notes`
--
ALTER TABLE `vehicle_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `vehicle_note_details`
--
ALTER TABLE `vehicle_note_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `vehicle_parts`
--
ALTER TABLE `vehicle_parts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `vehicle_records`
--
ALTER TABLE `vehicle_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `vehicle_repair`
--
ALTER TABLE `vehicle_repair`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `vehicle_repair_detail`
--
ALTER TABLE `vehicle_repair_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `vehicle_repair_types`
--
ALTER TABLE `vehicle_repair_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vehicle_sources`
--
ALTER TABLE `vehicle_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `visiting_cards`
--
ALTER TABLE `visiting_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `visitor_infos`
--
ALTER TABLE `visitor_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wheel_rotation_recs`
--
ALTER TABLE `wheel_rotation_recs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wings`
--
ALTER TABLE `wings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_store_items`
--
ALTER TABLE `assign_store_items`
  ADD CONSTRAINT `assign_store_items_item_cat_id_foreign` FOREIGN KEY (`item_cat_id`) REFERENCES `item_categories` (`id`),
  ADD CONSTRAINT `assign_store_items_org_store_id_foreign` FOREIGN KEY (`org_store_id`) REFERENCES `organization_stores` (`id`);

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees_info` (`emp_id`);

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `bank_branches`
--
ALTER TABLE `bank_branches`
  ADD CONSTRAINT `bank_branches_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `basic_informations`
--
ALTER TABLE `basic_informations`
  ADD CONSTRAINT `basic_informations_ibfk_1` FOREIGN KEY (`birth_place`) REFERENCES `districts` (`id`);

--
-- Constraints for table `battery_records`
--
ALTER TABLE `battery_records`
  ADD CONSTRAINT `battery_records_vehicle_record_id_foreign` FOREIGN KEY (`vehicle_record_id`) REFERENCES `vehicle_records` (`id`);

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_battalion_id_foreign` FOREIGN KEY (`battalion_id`) REFERENCES `battalions` (`id`);

--
-- Constraints for table `cores`
--
ALTER TABLE `cores`
  ADD CONSTRAINT `cores_mother_force_id_foreign` FOREIGN KEY (`mother_force_id`) REFERENCES `mother_forces` (`id`);

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `currencies_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `daily_attendences`
--
ALTER TABLE `daily_attendences`
  ADD CONSTRAINT `daily_attendences_ibfk_1` FOREIGN KEY (`attend_status_id`) REFERENCES `attendence_statuses` (`id`);

--
-- Constraints for table `daily_duties`
--
ALTER TABLE `daily_duties`
  ADD CONSTRAINT `daily_duties_duty_roster_id_foreign` FOREIGN KEY (`duty_roster_id`) REFERENCES `duty_roster_policies` (`id`),
  ADD CONSTRAINT `daily_duties_duty_type_id_foreign` FOREIGN KEY (`duty_type_id`) REFERENCES `duty_types` (`id`);

--
-- Constraints for table `daily_vehicle_usages`
--
ALTER TABLE `daily_vehicle_usages`
  ADD CONSTRAINT `daily_vehicle_usages_fuel_type_id_foreign` FOREIGN KEY (`fuel_type_id`) REFERENCES `fuel_types` (`id`),
  ADD CONSTRAINT `daily_vehicle_usages_vehicle_driver_id_foreign` FOREIGN KEY (`vehicle_driver_id`) REFERENCES `vehicle_drivers` (`id`),
  ADD CONSTRAINT `daily_vehicle_usages_vehicle_record_id_foreign` FOREIGN KEY (`vehicle_record_id`) REFERENCES `vehicle_records` (`id`);

--
-- Constraints for table `designation_mappings`
--
ALTER TABLE `designation_mappings`
  ADD CONSTRAINT `designation_mappings_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`),
  ADD CONSTRAINT `designation_mappings_mother_force_id_foreign` FOREIGN KEY (`mother_force_id`) REFERENCES `mother_forces` (`id`),
  ADD CONSTRAINT `designation_mappings_rank_id_foreign` FOREIGN KEY (`rank_id`) REFERENCES `ranks` (`id`);

--
-- Constraints for table `disposal_records`
--
ALTER TABLE `disposal_records`
  ADD CONSTRAINT `disposal_records_ibfk_1` FOREIGN KEY (`battalion_id`) REFERENCES `battalions` (`id`),
  ADD CONSTRAINT `disposal_records_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`),
  ADD CONSTRAINT `disposal_records_ibfk_3` FOREIGN KEY (`upazila_id`) REFERENCES `upazillas` (`id`),
  ADD CONSTRAINT `disposal_records_ibfk_4` FOREIGN KEY (`crime_type_id`) REFERENCES `crime_types` (`id`);

--
-- Constraints for table `disposal_record_details`
--
ALTER TABLE `disposal_record_details`
  ADD CONSTRAINT `disposal_record_details_ibfk_1` FOREIGN KEY (`disposal_record_id`) REFERENCES `disposal_records` (`id`),
  ADD CONSTRAINT `disposal_record_details_ibfk_2` FOREIGN KEY (`ied_type_id`) REFERENCES `ied_types` (`id`);

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`);

--
-- Constraints for table `duty_types`
--
ALTER TABLE `duty_types`
  ADD CONSTRAINT `duty_types_battalion_id_foreign` FOREIGN KEY (`battalion_id`) REFERENCES `battalions` (`id`),
  ADD CONSTRAINT `duty_types_wing_id_foreign` FOREIGN KEY (`wing_id`) REFERENCES `wings` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `employees_info`
--
ALTER TABLE `employees_info`
  ADD CONSTRAINT `employees_info_ibfk_1` FOREIGN KEY (`posting_rec_id`) REFERENCES `posting_record` (`posting_rec_id`),
  ADD CONSTRAINT `employees_info_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `employees_info_ibfk_3` FOREIGN KEY (`release_mother_unit_id`) REFERENCES `mother_units` (`id`),
  ADD CONSTRAINT `fk_employees_info_core_id` FOREIGN KEY (`core_id`) REFERENCES `cores` (`id`),
  ADD CONSTRAINT `fk_employees_info_mf_id` FOREIGN KEY (`mother_force_id`) REFERENCES `mother_forces` (`id`),
  ADD CONSTRAINT `fk_employees_info_mother_unit_id` FOREIGN KEY (`mother_unit_id`) REFERENCES `mother_units` (`id`),
  ADD CONSTRAINT `fk_employees_info_rank_id` FOREIGN KEY (`rank_id`) REFERENCES `ranks` (`id`),
  ADD CONSTRAINT `fk_employees_info_trade_id` FOREIGN KEY (`trade_id`) REFERENCES `trades` (`id`);

--
-- Constraints for table `family_informations`
--
ALTER TABLE `family_informations`
  ADD CONSTRAINT `family_informations_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees_info` (`emp_id`),
  ADD CONSTRAINT `family_informations_ibfk_2` FOREIGN KEY (`relation_id`) REFERENCES `relations` (`id`),
  ADD CONSTRAINT `family_informations_ibfk_3` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  ADD CONSTRAINT `family_informations_ibfk_4` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`);

--
-- Constraints for table `increment_infos`
--
ALTER TABLE `increment_infos`
  ADD CONSTRAINT `increment_infos_increment_type_foreign` FOREIGN KEY (`increment_type`) REFERENCES `increment_types` (`id`);

--
-- Constraints for table `inventory_damage_infos`
--
ALTER TABLE `inventory_damage_infos`
  ADD CONSTRAINT `inventory_damage_infos_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `employees_info` (`emp_id`),
  ADD CONSTRAINT `inventory_damage_infos_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `employees_info` (`emp_id`);

--
-- Constraints for table `inventory_damage_items`
--
ALTER TABLE `inventory_damage_items`
  ADD CONSTRAINT `inventory_damage_items_ibfk_1` FOREIGN KEY (`inventory_damage_info_id`) REFERENCES `inventory_damage_infos` (`id`),
  ADD CONSTRAINT `inventory_damage_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `inventory_damage_items_ibfk_3` FOREIGN KEY (`mm_unit_id`) REFERENCES `measurement_units` (`id`);

--
-- Constraints for table `issue_infos`
--
ALTER TABLE `issue_infos`
  ADD CONSTRAINT `issue_infos_ibfk_1` FOREIGN KEY (`organization_store_id`) REFERENCES `organization_stores` (`id`),
  ADD CONSTRAINT `issue_infos_ibfk_10` FOREIGN KEY (`to_section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `issue_infos_ibfk_11` FOREIGN KEY (`to_sub_section_id`) REFERENCES `sub_sections` (`id`),
  ADD CONSTRAINT `issue_infos_ibfk_12` FOREIGN KEY (`issue_to_employee_id`) REFERENCES `posting_record` (`posting_rec_id`),
  ADD CONSTRAINT `issue_infos_ibfk_2` FOREIGN KEY (`to_organization_store_id`) REFERENCES `organization_stores` (`id`),
  ADD CONSTRAINT `issue_infos_ibfk_6` FOREIGN KEY (`to_battalion_id`) REFERENCES `battalions` (`id`),
  ADD CONSTRAINT `issue_infos_ibfk_7` FOREIGN KEY (`to_wing_id`) REFERENCES `wings` (`id`),
  ADD CONSTRAINT `issue_infos_ibfk_8` FOREIGN KEY (`to_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `issue_infos_ibfk_9` FOREIGN KEY (`to_sub_branch_id`) REFERENCES `sub_branches` (`id`);

--
-- Constraints for table `issue_items`
--
ALTER TABLE `issue_items`
  ADD CONSTRAINT `issue_items_ibfk_1` FOREIGN KEY (`issue_id`) REFERENCES `issue_infos` (`id`),
  ADD CONSTRAINT `issue_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `issue_items_ibfk_3` FOREIGN KEY (`mm_unit_id`) REFERENCES `measurement_units` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_item_cat_foreign` FOREIGN KEY (`item_cat`) REFERENCES `item_categories` (`id`),
  ADD CONSTRAINT `items_item_group_foreign` FOREIGN KEY (`item_group`) REFERENCES `item_groups` (`id`),
  ADD CONSTRAINT `items_mm_unit_id_foreign` FOREIGN KEY (`mm_unit_id`) REFERENCES `measurement_units` (`id`);

--
-- Constraints for table `item_groups`
--
ALTER TABLE `item_groups`
  ADD CONSTRAINT `item_groups_item_cat_id_foreign` FOREIGN KEY (`item_cat_id`) REFERENCES `item_categories` (`id`);

--
-- Constraints for table `item_parts`
--
ALTER TABLE `item_parts`
  ADD CONSTRAINT `item_parts_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `kpl_infos`
--
ALTER TABLE `kpl_infos`
  ADD CONSTRAINT `kpl_infos_fuel_type_id_foreign` FOREIGN KEY (`fuel_type_id`) REFERENCES `fuel_types` (`id`),
  ADD CONSTRAINT `kpl_infos_vehicle_record_id_foreign` FOREIGN KEY (`vehicle_record_id`) REFERENCES `vehicle_records` (`id`);

--
-- Constraints for table `kpl_members`
--
ALTER TABLE `kpl_members`
  ADD CONSTRAINT `kpl_members_kpl_id_foreign` FOREIGN KEY (`kpl_id`) REFERENCES `kpl_infos` (`id`);

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`),
  ADD CONSTRAINT `leaves_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees_info` (`emp_id`),
  ADD CONSTRAINT `leaves_ibfk_2` FOREIGN KEY (`upazila_id`) REFERENCES `upazillas` (`id`),
  ADD CONSTRAINT `leaves_ibfk_3` FOREIGN KEY (`approved_by`) REFERENCES `posting_record` (`posting_rec_id`),
  ADD CONSTRAINT `leaves_leave_type_id_foreign` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`);

--
-- Constraints for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD CONSTRAINT `ledgers_ibfk_1` FOREIGN KEY (`organization_store_id`) REFERENCES `organization_stores` (`id`),
  ADD CONSTRAINT `ledgers_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `manpower_auths`
--
ALTER TABLE `manpower_auths`
  ADD CONSTRAINT `manpower_auths_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`),
  ADD CONSTRAINT `manpower_auths_mother_force_id_foreign` FOREIGN KEY (`mother_force_id`) REFERENCES `mother_forces` (`id`);

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mother_units`
--
ALTER TABLE `mother_units`
  ADD CONSTRAINT `mother_units_mother_force_id_foreign` FOREIGN KEY (`mother_force_id`) REFERENCES `mother_forces` (`id`);

--
-- Constraints for table `move_orders`
--
ALTER TABLE `move_orders`
  ADD CONSTRAINT `move_orders_ibfk_1` FOREIGN KEY (`posting_rec_id`) REFERENCES `posting_record` (`posting_rec_id`);

--
-- Constraints for table `oil_change_records`
--
ALTER TABLE `oil_change_records`
  ADD CONSTRAINT `oil_change_records_oil_type_id_foreign` FOREIGN KEY (`oil_type_id`) REFERENCES `oil_types` (`id`),
  ADD CONSTRAINT `oil_change_records_vehicle_record_id_foreign` FOREIGN KEY (`vehicle_record_id`) REFERENCES `vehicle_records` (`id`);

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`);

--
-- Constraints for table `organization_stores`
--
ALTER TABLE `organization_stores`
  ADD CONSTRAINT `organization_stores_battalion_id_foreign` FOREIGN KEY (`battalion_id`) REFERENCES `battalions` (`id`),
  ADD CONSTRAINT `organization_stores_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `organization_stores_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `organization_stores_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `organization_stores_sub_branch_id_foreign` FOREIGN KEY (`sub_branch_id`) REFERENCES `sub_branches` (`id`),
  ADD CONSTRAINT `organization_stores_sub_section_id_foreign` FOREIGN KEY (`sub_section_id`) REFERENCES `sub_sections` (`id`),
  ADD CONSTRAINT `organization_stores_wing_id_foreign` FOREIGN KEY (`wing_id`) REFERENCES `wings` (`id`);

--
-- Constraints for table `parts`
--
ALTER TABLE `parts`
  ADD CONSTRAINT `parts_parts_cat_id_foreign` FOREIGN KEY (`parts_cat_id`) REFERENCES `parts_categories` (`id`);

--
-- Constraints for table `ration_crashing_details`
--
ALTER TABLE `ration_crashing_details`
  ADD CONSTRAINT `fk_ration_crashing_details_1` FOREIGN KEY (`crashing_product_id`) REFERENCES `items` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ration_crashing_details_2` FOREIGN KEY (`output_product_id`) REFERENCES `items` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `visitor_infos`
--
ALTER TABLE `visitor_infos`
  ADD CONSTRAINT `visitor_infos_ibfk_1` FOREIGN KEY (`battalion_id`) REFERENCES `battalions` (`id`),
  ADD CONSTRAINT `visitor_infos_ibfk_2` FOREIGN KEY (`wing_id`) REFERENCES `wings` (`id`),
  ADD CONSTRAINT `visitor_infos_ibfk_3` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `visitor_infos_ibfk_4` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`),
  ADD CONSTRAINT `visitor_infos_ibfk_5` FOREIGN KEY (`to_posting_rec_id`) REFERENCES `posting_record` (`posting_rec_id`),
  ADD CONSTRAINT `visitor_infos_ibfk_6` FOREIGN KEY (`to_recipient_id`) REFERENCES `posting_record` (`posting_rec_id`),
  ADD CONSTRAINT `visitor_infos_ibfk_7` FOREIGN KEY (`card_id`) REFERENCES `visiting_cards` (`id`),
  ADD CONSTRAINT `visitor_infos_ibfk_8` FOREIGN KEY (`box_id`) REFERENCES `mobileboxes` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
