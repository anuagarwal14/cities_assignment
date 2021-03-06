-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 12:57 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `area` decimal(10,2) NOT NULL,
  `population` text NOT NULL,
  `height` int(11) NOT NULL,
  `population_density` decimal(10,2) NOT NULL,
  `births` decimal(10,2) NOT NULL,
  `growth_rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `area`, `population`, `height`, `population_density`, `births`, `growth_rate`) VALUES
(1, 'Kanpur', '403.70', '2920067', 126, '7233.26', '80.74', '83.98'),
(2, 'Lucknow', '2528.00', '2901474', 123, '1147.73', '505.60', '84.72'),
(3, 'Ghaziabad', '133.30', '2358525', 214, '17693.36', '26.66', '93.81'),
(4, 'Agra', '188.40', '1746467', 171, '9269.99', '37.68', '64.61'),
(5, 'Varanasi', '1550.00', '1435113', 81, '925.88', '310.00', '80.31'),
(6, 'Meerut', '450.00', '1424908', 256, '3166.46', '90.00', '78.29'),
(7, 'Allahabad', '70.50', '1216719', 98, '17258.43', '14.10', '86.06'),
(8, 'Bareilly', '235.00', '979933', 268, '4169.93', '47.00', '70.97'),
(9, 'Aligarh', '725.00', '909559', 178, '1254.56', '145.00', '70.54'),
(10, 'Moradabad', '3493.00', '889810', 198, '254.74', '698.60', '70.65'),
(11, 'Saharanpur', '3860.00', '703345', 284, '182.21', '772.00', '77.94'),
(12, 'Gorakhpur', '5484.00', '692519', 84, '126.28', '1096.80', '85.64'),
(13, 'Faizabad', '150.00', '642381', 97, '4282.54', '30.00', '88.58'),
(14, 'Jhansi', '5024.00', '549391', 285, '109.35', '1004.80', '84.41'),
(15, 'Muzaffarnagar', '150.00', '494792', 272, '3298.61', '30.00', '80.99'),
(16, 'Mathura', '3709.00', '454937', 174, '122.66', '741.80', '77.11'),
(17, 'Budaun', '81.00', '369221', 164, '4558.28', '16.20', '83.00'),
(18, 'Rampur', '2367.00', '359062', 288, '151.69', '473.40', '79.56'),
(19, 'Shahjahanpur', '4575.00', '356103', 194, '77.84', '915.00', '79.81'),
(20, 'Farrukhabad-cum-Fategarh', '2279.00', '318540', 167, '139.77', '455.80', '75.60'),
(21, 'Maunath Bhanjan', '180.00', '279060', 45, '1550.33', '36.00', '78.60'),
(22, 'Hapur', '660.00', '262801', 216, '398.18', '132.00', '75.34'),
(23, 'Noida', '203.00', '259160', 200, '1276.65', '40.60', '88.58'),
(24, 'Etawah', '2434.00', '256790', 197, '105.50', '486.80', '82.89'),
(25, 'Mirzapur-cum-Vindhyachal', '4521.00', '245817', 80, '54.37', '904.20', '77.85'),
(26, 'Bulandshahr', '4441.00', '235310', 195, '52.99', '888.20', '78.37'),
(27, 'Sambhal', '16.00', '221334', 293, '13833.38', '3.20', '49.51'),
(28, 'Amroha', '2321.00', '197135', 185, '84.94', '464.20', '63.88'),
(29, 'Hardoi', '5947.00', '197046', 141, '33.13', '1189.40', '83.27'),
(30, 'Fatehpur', '4152.00', '193801', 110, '46.68', '830.40', '77.69'),
(31, 'Raebareli', '4609.00', '191625', 0, '41.58', '921.80', '82.97'),
(32, 'Orai', '4565.00', '190625', 131, '41.76', '913.00', '83.35'),
(33, 'Sitapur', '5743.00', '188230', 138, '32.78', '1148.60', '83.02'),
(34, 'Bahraich', '34.00', '186241', 126, '5477.68', '6.80', '75.30'),
(35, 'Modinagar', '133.30', '182811', 214, '1371.43', '26.66', '87.03'),
(36, 'Unnao', '70.00', '178681', 98, '2552.59', '14.00', '83.72'),
(37, 'Jaunpur', '4038.00', '168128', 82, '41.64', '807.60', '82.11'),
(38, 'Lakhimpur', '7680.00', '164925', 7, '21.47', '1536.00', '83.80'),
(39, 'Hathras', '1840.00', '161289', 178, '87.66', '368.00', '78.05'),
(40, 'Banda', '443.10', '160432', 123, '362.07', '88.62', '83.61'),
(41, 'Pilibhit', '47.00', '160146', 20, '3407.36', '9.40', '72.30'),
(42, 'Mughalsarai', '16.00', '154692', 65, '9668.25', '3.20', '78.08'),
(43, 'Barabanki', '3894.00', '154692', 125, '39.73', '778.80', '81.15'),
(44, 'Khurja', '85.00', '142636', 0, '1678.07', '17.00', '72.75'),
(45, 'Gonda', '13.00', '138929', 120, '10686.85', '2.60', '80.32'),
(46, 'Mainpuri', '2745.00', '133078', 153, '48.48', '549.00', '85.66'),
(47, 'Lalitpur', '5039.00', '133041', 428, '26.40', '1007.80', '83.96'),
(48, 'Etah', '4446.00', '131023', 170, '29.47', '889.20', '85.62'),
(49, 'Deoria', '2535.00', '129570', 68, '51.11', '507.00', '93.73'),
(50, 'Ujhani', '48.00', '126000', 192, '2625.00', '9.60', '87.00'),
(51, 'Ghazipur', '20.00', '121136', 70, '6056.80', '4.00', '84.97'),
(52, 'Sultanpur', '4436.00', '116211', 95, '26.20', '887.20', '87.61'),
(53, 'Azamgarh', '1219.00', '116165', 64, '95.30', '243.80', '86.27'),
(54, 'Bijnor', '4049.00', '115381', 225, '28.50', '809.80', '77.90'),
(55, 'Sahaswan', '52.00', '114921', 172, '2210.02', '10.40', '71.00'),
(56, 'Basti', '4309.00', '114651', 105, '26.61', '861.80', '85.29'),
(57, 'Chandausi', '16.00', '114254', 284, '7140.88', '3.20', '72.63'),
(58, 'Akbarpur', '2520.00', '111594', 133, '44.28', '504.00', '76.94'),
(59, 'Ballia', '1981.00', '111287', 159, '56.18', '396.20', '86.65'),
(60, 'Tanda', '1250.00', '109539', 78, '87.63', '250.00', '69.25'),
(61, 'Greater Noida', '1442.00', '107676', 144, '74.67', '288.40', '86.54'),
(62, 'Shikohabad', '1425.00', '107300', 163, '75.30', '285.00', '81.68'),
(63, 'Shamli', '1063.00', '147233', 248, '138.51', '212.60', '81.97'),
(64, 'Khair', '261.00', '102106', 188, '391.21', '52.20', '71.44'),
(65, 'Kasganj', '2218.00', '101241', 120, '45.65', '443.60', '78.56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
