-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2023 at 09:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crimedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `abusedpersons`
--

CREATE TABLE `abusedpersons` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `street_address_home` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `ab_fname` varchar(255) NOT NULL,
  `ab_lname` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `incident_date` varchar(255) NOT NULL,
  `incident_location` varchar(255) NOT NULL,
  `ab_address` text NOT NULL,
  `ab_city` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `abused_by` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `narrative` text NOT NULL,
  `rand` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `criminals`
--

CREATE TABLE `criminals` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_04_20_132856_create_robberies_table', 1),
('2016_04_22_021428_create_missingpersons_table', 1),
('2016_04_22_023515_create_abusedpersons_table', 1),
('2016_08_15_035833_create_criminals_table', 1),
('2016_08_15_090919_create_statistics_table', 1),
('2016_08_15_170228_create_policestations_table', 1),
('2016_08_17_035753_create_police_table', 1),
('2016_08_17_051222_create_offenders_table', 1),
('2016_08_18_071605_create_policenumbers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `missingpersons`
--

CREATE TABLE `missingpersons` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `street_address_home` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `mis_fname` varchar(255) NOT NULL,
  `mis_lname` varchar(255) NOT NULL,
  `mis_gender` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `missing_date` varchar(255) NOT NULL,
  `missing_location` varchar(255) NOT NULL,
  `mp_address` text NOT NULL,
  `mp_city` varchar(255) NOT NULL,
  `mp_phone` varchar(255) NOT NULL,
  `mp_occupation` varchar(255) NOT NULL,
  `mp_height` varchar(255) NOT NULL,
  `mp_remarks` text NOT NULL,
  `narrative` text NOT NULL,
  `rand` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offenders`
--

CREATE TABLE `offenders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `offender_name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `fathers_name` varchar(255) NOT NULL,
  `mothers_name` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `identification_mask` varchar(255) NOT NULL,
  `present_address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `criminal_activities` varchar(255) NOT NULL,
  `case_details` varchar(255) NOT NULL,
  `rand` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `police_name` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `place_of_position` varchar(255) NOT NULL,
  `complaint` varchar(255) NOT NULL,
  `rand` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policenumbers`
--

CREATE TABLE `policenumbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `division` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `thana` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policestations`
--

CREATE TABLE `policestations` (
  `id` int(10) UNSIGNED NOT NULL,
  `area` varchar(255) NOT NULL,
  `lon` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dutyofficer` varchar(255) NOT NULL,
  `dmp` varchar(255) NOT NULL,
  `tnt` varchar(255) NOT NULL,
  `cell` varchar(255) NOT NULL,
  `inspectorinvestigationcell` varchar(255) NOT NULL,
  `inchargedmp` varchar(255) NOT NULL,
  `inchargecell` varchar(255) NOT NULL,
  `inchargefax` varchar(255) NOT NULL,
  `inchargeemail` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `robberies`
--

CREATE TABLE `robberies` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `street_address_home` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `street_address_incident` varchar(255) NOT NULL,
  `city_incident` varchar(255) NOT NULL,
  `zip_code_incident` varchar(255) NOT NULL,
  `incident_start` varchar(255) NOT NULL,
  `incident_end` varchar(255) NOT NULL,
  `witness` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `how_many` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `narrative` text NOT NULL,
  `rand` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `robberies`
--

INSERT INTO `robberies` (`id`, `first_name`, `last_name`, `street_address_home`, `city`, `zip_code`, `phone_number`, `email`, `gender`, `day`, `month`, `year`, `street_address_incident`, `city_incident`, `zip_code_incident`, `incident_start`, `incident_end`, `witness`, `type`, `brand`, `model`, `color`, `serial_no`, `how_many`, `description`, `narrative`, `rand`, `created_at`, `updated_at`) VALUES
(2, 'agrha', 'fdhah', 'fahah', 'fdhahbr', '2242', '01861211983', 'arjinaakther@gmail.com', 'Female', '14', '07', '2001', 'jkdkyuh', 'yhcfks', '4523', '08/08/2023 1:18 AM', '08/08/2023 1:30 AM', 'Yes', 'ID Card', 'sdgjts', 'snmrttj', 'gray', '34275467275', '1', 'fmhsmm ngfgm tgdsj dfhmk sjt', 'xmgsmfmsfhm fgfjmsmnfyh', 3852, '2023-08-06 13:19:15', '2023-08-06 13:19:15'),
(3, 'gfsdjjsgfs', 'dgsjtsjs', 'sgjjts', 'ctg', '4664', '01861211983', 'sheik@gmail.com', 'Male', '09', '03', '2000', 'dfhmx ', 'fmgs', '3575', '08/06/2023 1:22 AM', '08/07/2023 1:22 AM', 'Yes', 'Motor Bike', 'dtykstm', 'dtgkydkt', 'light green', '547475757', '1', 'ghjmcghfhmnfhj', 'ghfgfgydryfyhfg', 7932, '2023-08-06 13:22:49', '2023-08-06 13:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `robbery` int(11) NOT NULL,
  `kidnapping` int(11) NOT NULL,
  `women_childabuse` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sheik Salauddin Biswas', 'salauddi1biswas@gmail.com', '$2y$10$tY4.lzQYKHLSG/fUYgM0Ee6Ci3bQgQt9j2os06AlHVQqUzPJIMJpq', NULL, '2023-08-06 11:02:12', '2023-08-06 11:02:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abusedpersons`
--
ALTER TABLE `abusedpersons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criminals`
--
ALTER TABLE `criminals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missingpersons`
--
ALTER TABLE `missingpersons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offenders`
--
ALTER TABLE `offenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policenumbers`
--
ALTER TABLE `policenumbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policestations`
--
ALTER TABLE `policestations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `robberies`
--
ALTER TABLE `robberies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
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
-- AUTO_INCREMENT for table `abusedpersons`
--
ALTER TABLE `abusedpersons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `criminals`
--
ALTER TABLE `criminals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `missingpersons`
--
ALTER TABLE `missingpersons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offenders`
--
ALTER TABLE `offenders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policenumbers`
--
ALTER TABLE `policenumbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policestations`
--
ALTER TABLE `policestations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `robberies`
--
ALTER TABLE `robberies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
