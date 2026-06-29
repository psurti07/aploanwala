-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2026 at 05:00 AM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 8.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aploannw_maindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrations`
--

CREATE TABLE `administrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `rec_date` datetime NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `staff_code` varchar(99) DEFAULT NULL,
  `position` varchar(299) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1 COMMENT '0=Admin,1=OfficeStaff, 2=Hire-Support-Staff,3=ItStaff,4=Accounting, 5=Self-Support-Staff, 7=Assistant-Support-Staff\r\n',
  `isActive` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 = No, 1 = Yes',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = No, 1 = Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrations`
--

INSERT INTO `administrations` (`id`, `rec_date`, `fullname`, `dob`, `mobile`, `emailid`, `password`, `staff_code`, `position`, `role`, `isActive`, `isDelete`) VALUES
(1, '2023-10-12 05:03:22', 'Verloop Web', NULL, '9408881214', 'info@verloopweb.com', '$2y$12$e/6aFA1FMkil8hF0msGqGeO7wc8GbdbElaaT2fgDkZ6wYLdXpEBJ6', NULL, NULL, 6, 1, 0),
(2, '2026-03-25 11:24:52', 'Aploanwala', NULL, '9271759598', 'info@aploanwala.com', '$2y$12$9jeMVAZr66kZMMqX7oSMge5FLTEEeDSl5V39FbEQgrxMYHVgMNBYO', '6584', NULL, 0, 1, 0),
(3, '2026-03-25 11:25:54', 'Indiakarobar', NULL, '9998841926', 'admin@indiakarobar.com', '$2y$12$7NTj.kUVNrujm/ZIXFHHOOTJdLiyz8AjQSA1ywZ5I1d1YMHuhLl6O', '8395', NULL, 0, 1, 0),
(4, '2026-04-23 10:49:30', 'Self Apply Staff', NULL, '9271759598', 'staff@aploannwala.com', '$2y$12$FjCd13wufVw4U1FMN8qlkeLq3Ke740Sb1SMaEJc5e3rwJ9KYGvRLq', '5913', NULL, 5, 1, 0),
(5, '2026-04-23 10:51:31', 'Loan Agent Staff', NULL, '9271759598', 'support@aploannwala.com', '$2y$12$FrLznt/6xLlrQBQUaJmQNuSdpR66xl5M/7nh3oObOfQ4YXhwOEoMa', '0996', NULL, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `adscontent`
--

CREATE TABLE `adscontent` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `ad_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=text, 2=image',
  `ad_content` longtext NOT NULL,
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `airpay_entry`
--

CREATE TABLE `airpay_entry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `entryfor` int(11) NOT NULL DEFAULT 0 COMMENT '1=Customer, 2=Channel, 11=Digital PL, 12=Digital BL',
  `userid` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `statuscode` varchar(256) DEFAULT NULL,
  `transactionid` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aisensy_settings`
--

CREATE TABLE `aisensy_settings` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `product` varchar(55) NOT NULL COMMENT 'SA, LA, LAT',
  `type` varchar(99) NOT NULL COMMENT 'remarketing, buy now, pgsuccess, pgfailed',
  `api_key` longtext NOT NULL,
  `campaign_name` varchar(99) NOT NULL,
  `media_url` varchar(255) NOT NULL,
  `media_filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aisensy_settings`
--

INSERT INTO `aisensy_settings` (`id`, `rec_date`, `product`, `type`, `api_key`, `campaign_name`, `media_url`, `media_filename`) VALUES
(1, '2025-08-19 18:13:52', 'SA', 'remarketing', '#', '#', '#', '#'),
(2, '2025-08-19 18:13:52', 'LA', 'remarketing', '#', '#', '#', '#'),
(3, '2025-08-19 18:15:10', 'LAT', 'remarketing', '#', '#', '#', '#'),
(4, '2025-08-19 19:21:03', 'LA', 'getoffer', '#', '#', '#', '#'),
(5, '2025-08-19 19:34:15', 'LAT', 'getoffer', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `application_remarks`
--

CREATE TABLE `application_remarks` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `entry_at` datetime DEFAULT NULL,
  `service` tinyint(4) DEFAULT NULL,
  `subject` varchar(256) NOT NULL,
  `notes` longtext DEFAULT NULL,
  `application_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applylink_criteria`
--

CREATE TABLE `applylink_criteria` (
  `id` int(11) NOT NULL,
  `applylink_id` int(11) NOT NULL,
  `criteria_id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bankapplylink`
--

CREATE TABLE `bankapplylink` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `bankid` int(11) NOT NULL,
  `roi` float(10,2) DEFAULT NULL,
  `tenures` tinyint(4) DEFAULT NULL,
  `status_type` int(11) DEFAULT NULL,
  `option1` varchar(599) DEFAULT NULL,
  `option2` varchar(599) DEFAULT NULL,
  `option3` varchar(599) DEFAULT NULL,
  `option4` varchar(599) DEFAULT NULL,
  `option5` varchar(599) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `applyurl` varchar(256) NOT NULL,
  `is_recommended` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=false,1=true',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bankapplylink`
--

INSERT INTO `bankapplylink` (`id`, `rec_date`, `bankid`, `roi`, `tenures`, `status_type`, `option1`, `option2`, `option3`, `option4`, `option5`, `title`, `applyurl`, `is_recommended`, `isDelete`) VALUES
(1, '2025-05-01 20:23:29', 17, 10.50, 60, NULL, '100% Online Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Pre-Approved Loan Offer | Quick Process', 'https://www.cholamandalam.com/get-consumer-small-enterprise-loans', 0, 1),
(2, '2025-05-01 20:37:10', 15, 11.00, 60, NULL, '100% Online Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'You\'re Eligible For Pre-Approved Offer | Easy Application', 'https://www.dealsofloan.com/personal-loan', 0, 1),
(3, '2025-05-01 20:41:21', 18, 11.50, 60, NULL, '100% Online Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Profile Matches The Criteria | Easy Digital Process', 'https://www.mymudra.com/loan/personal-loan', 0, 1),
(4, '2025-05-01 21:18:20', 13, 10.50, 60, NULL, '100% Online Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Pre-Approved Loan Offer | Digital Process', 'https://pq.faircent.com/', 0, 1),
(5, '2025-05-03 15:52:03', 20, 11.00, 48, NULL, '100% Online Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'Your Criteria Matched For Pre-Approved Loan Offer | Quick Process', 'https://www.herofincorp.com/personal-loans', 0, 1),
(6, '2025-05-03 15:55:27', 36, 11.50, 48, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Criteria Matched For Pre-Approved Loan Offer | Quick Process', 'https://www.piramalfinance.com/loan', 0, 1),
(7, '2025-05-03 15:57:46', 38, 10.50, 60, NULL, 'Simple Online Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://www.incred.com/personal-loan/', 0, 0),
(8, '2025-05-03 16:01:29', 21, 11.50, 36, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://maximus.axisbank.co.in/external/customer/login?product=personal', 0, 1),
(9, '2025-05-03 16:04:55', 22, 11.00, 60, NULL, '100% Online Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'You’re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://www.bajajfinserv.in/personal-loan', 0, 1),
(10, '2025-05-03 16:08:34', 37, 10.50, 48, NULL, 'Simple Online Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'Your Pre-Approved Loan Offer | Quick Process', 'https://www.ujjivansfb.in/individual-loans?type=Personal-Individual-Loan', 0, 1),
(11, '2025-05-03 16:10:24', 23, 11.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://onlineapply.sbi.co.in/personal-banking/personal-loan', 0, 1),
(12, '2025-05-03 16:15:21', 24, 10.50, 48, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'You’re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://www.idbibank.in/personal-loan.aspx', 0, 1),
(13, '2025-05-03 16:23:55', 13, 11.00, 60, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Criteria Matched For Pre-Approved Loan Offer | Quick Process', 'https://pq.faircent.com/', 0, 1),
(14, '2025-05-03 16:26:05', 14, 10.50, 60, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://apply.finnable.com/login', 0, 1),
(15, '2025-05-03 16:31:00', 27, 10.00, 60, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'You’re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://www.lendingkart.com/business-loan/check-eligibility', 0, 1),
(16, '2025-05-03 17:04:30', 11, 10.50, 60, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://partner.werize.com/MyBusiness/KREDBAZ%20SERVICE%20INDIA%20PRIVATE%20LIMITED/d2266f89-d2b0-4956-ba75-e95eca9cd08a', 1, 0),
(17, '2025-05-03 17:13:29', 28, 11.50, 48, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Criteria Matched For Pre-Approved Loan Offer | Quick Process', 'https://app.upwards.in/login', 0, 1),
(18, '2025-05-03 17:15:19', 29, 11.00, 36, NULL, 'Simple Online Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'You’re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://moneyview.in/personal-loan', 0, 0),
(19, '2025-05-03 17:17:31', 39, 11.50, 48, NULL, 'Simple Online Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://www.smfgindiacredit.com/personal-loan.aspx', 0, 1),
(20, '2025-05-03 17:19:02', 40, 10.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://www.fibe.in/personal-loan/', 0, 0),
(21, '2025-05-03 17:23:18', 30, 11.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://induseasycredit.indusind.com/customer/personal-loan/new-lead', 0, 1),
(22, '2025-05-03 17:27:31', 31, 10.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Pre-Approved Loan Offer | Quick Process', 'https://v.hdfcbank.com/personal-business-loan.html', 0, 1),
(23, '2025-05-03 17:29:46', 32, 11.50, 48, NULL, 'Simple Online Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://www.tatacapital.com/online/loans/personal-loans/apply-now-personal-loan', 0, 1),
(24, '2025-05-03 17:32:08', 33, 10.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://finance.adityabirlacapital.com/personal-finance/personal-loan', 0, 1),
(25, '2025-05-03 17:34:11', 41, 11.50, 48, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'Your Pre-Approved Loan Offer | Quick Process', 'https://personalloan.federalbank.co.in/', 0, 1),
(26, '2025-05-03 17:42:28', 34, 11.00, 48, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'You’re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://www.icicibank.com/personal-banking/loans/personal-loan', 0, 1),
(27, '2025-05-03 17:44:15', 42, 10.50, 48, NULL, 'Simple Online Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Criteria Matched For Pre-Approved Loan Offer | Quick Process', 'https://poonawallafincorp.com/personal-loan/apply-for-loan', 0, 1),
(28, '2025-05-03 17:52:25', 35, 10.50, 60, NULL, '100% Online Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://www.yesbank.in/personal-banking/loans/personal-loan', 0, 1),
(29, '2025-06-05 12:49:55', 8, 10.50, 60, NULL, '100% Online Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'You\'re Eligible For Pre-Approved Loan Offer | Quick Process', 'https://www.prefr.com/personal-loan', 1, 0),
(30, '2025-06-07 20:56:34', 45, 10.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'You\'re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://web.moneytap.com/', 0, 0),
(31, '2025-06-07 20:58:24', 46, 11.00, 48, NULL, '100% Online Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://applyonline.ramfincorp.com/', 0, 0),
(32, '2025-06-28 16:05:55', 13, 10.50, 60, NULL, '100% Online Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Easy & Quick Process', 'https://in.faircentpro.com/?utm_source=wl&utm_medium=Mailer&campaign_name=Borrower_Partner&agf=WLA113767', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `bank_name` varchar(100) NOT NULL,
  `bank_image` varchar(255) NOT NULL,
  `order_no` int(11) NOT NULL DEFAULT 0,
  `isActive` int(11) NOT NULL DEFAULT 1,
  `isDelete` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `rec_date`, `bank_name`, `bank_image`, `order_no`, `isActive`, `isDelete`) VALUES
(1, '2025-03-30 16:20:24', 'Moneyview', '1706270037.png', 1, 0, 1),
(2, '2024-01-26 09:47:04', 'Cashe', '1706262434.png', 2, 0, 0),
(4, '2024-06-17 10:30:11', 'prayosha', '1718600399.png', 0, 0, 1),
(5, '2024-06-27 18:13:13', 'sef', '1719492202.jpg', 0, 1, 1),
(6, '2025-01-07 14:33:41', 'InvestKraft', '1736240636.jpg', 3, 1, 1),
(7, '2025-01-07 14:34:23', 'InvestKraft', '1736240673.jpg', 3, 1, 1),
(8, '2025-02-04 13:03:49', 'Prfer', '1738654938.png', 0, 1, 0),
(9, '2025-02-04 13:03:49', 'Prfer', '1738654938.png', 0, 1, 1),
(10, '2025-02-04 13:03:49', 'Prfer', '1738654938.png', 0, 1, 1),
(11, '2025-05-02 12:46:54', 'Werize', '1746170219.png', 0, 1, 0),
(12, '2025-02-04 13:14:07', 'Fibe', '1738655067.png', 0, 0, 0),
(13, '2025-05-02 12:46:14', 'Faircent', '1746170179.png', 0, 1, 0),
(14, '2025-02-04 13:15:16', 'Finnable', '1738655142.png', 0, 1, 0),
(15, '2025-05-02 12:46:01', 'Deals Of Loan', '1746170165.png', 0, 0, 1),
(16, '2025-05-02 12:46:46', 'Urbanmoney', '1746170211.png', 0, 1, 0),
(17, '2025-05-02 12:45:31', 'Cholamandalam', '1746170140.png', 0, 1, 0),
(18, '2025-05-02 12:46:26', 'My Mudra', '1746170191.png', 0, 0, 1),
(19, '2025-05-02 13:50:22', 'IIFL', '1746174044.png', 0, 0, 0),
(20, '2025-05-02 17:15:59', 'Hero Fincorp', '1746186387.png', 0, 0, 0),
(21, '2025-05-02 17:16:48', 'Axis Bank', '1746186577.png', 0, 0, 0),
(22, '2025-05-02 17:19:51', 'Bajaj Finserv', '1746186617.png', 0, 0, 0),
(23, '2025-05-02 17:20:45', 'SBI', '1746186746.png', 0, 0, 0),
(24, '2025-05-02 17:22:43', 'IDBI Bank', '1746186780.png', 0, 0, 0),
(25, '2025-05-02 17:23:20', 'Finnable', '1746186824.png', 0, 0, 0),
(26, '2025-05-02 17:24:03', 'PaySense', '1746186861.png', 0, 0, 1),
(27, '2025-05-02 17:33:31', 'LendingKart', '1746187457.png', 0, 0, 0),
(28, '2025-05-02 17:34:40', 'Upwards', '1746187511.png', 0, 0, 0),
(29, '2025-05-02 17:35:25', 'MoneyView', '1746187540.png', 0, 0, 0),
(30, '2025-05-02 17:35:58', 'IndusInd Bank', '1746187764.png', 0, 0, 0),
(31, '2025-05-02 17:39:40', 'HDFC Bank', '1746187798.png', 0, 0, 0),
(32, '2025-05-02 17:49:42', 'Tata Capital', '1746188400.png', 0, 0, 0),
(33, '2025-05-02 17:50:15', 'Aditya Birla Capital', '1746188435.png', 0, 0, 0),
(34, '2025-05-02 17:50:48', 'ICICI Bank', '1746188529.png', 0, 0, 0),
(35, '2025-05-02 17:52:23', 'Yes Bank', '1746188633.png', 0, 0, 0),
(36, '2025-05-02 17:55:06', 'Piramal Finance', '1746188726.png', 0, 0, 0),
(37, '2025-05-02 17:55:27', 'Ujjivan Small Finance', '1746188745.png', 0, 0, 0),
(38, '2025-05-02 18:30:43', 'InCred Finance', '1746190862.png', 0, 0, 0),
(39, '2025-05-02 18:31:26', 'SMFG India Credit', '1746191024.png', 0, 0, 0),
(40, '2025-05-02 18:34:00', 'Fibe', '1746191054.png', 0, 0, 0),
(41, '2025-05-02 18:34:35', 'Federal Bank', '1746191097.png', 0, 0, 0),
(42, '2025-05-02 18:35:15', 'Poonawalla Fincorp', '1746191145.png', 0, 0, 0),
(43, '2025-06-05 12:07:07', 'MoneyTap', '1749105801.png', 0, 0, 0),
(44, '2025-06-05 12:13:24', 'Ram Fincorp', '1749105817.png', 0, 0, 0),
(45, '2025-06-07 18:22:41', 'Freo (by MoneyTap)', '1749300818.png', 0, 0, 0),
(46, '2025-06-07 18:23:51', 'Ram Fincorp', '1749300844.png', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bulksms`
--

CREATE TABLE `bulksms` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `fullname` varchar(250) NOT NULL,
  `mobile` varchar(80) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `isDnd` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no dnd, 1 = dnd',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=not delete, 1 = delete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cardoffer`
--

CREATE TABLE `cardoffer` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 0,
  `offerpage` int(11) NOT NULL DEFAULT 1 COMMENT '1 - la offer 1,\r\n2 - la offer 2,\r\n3 - la offer 3,\r\n4 - sa offer 1,\r\n5 - sa offer 2,\r\n6 - sa offer 3,\r\n7 - sa offer 4,\r\n8 - la offer 4,\r\n9 - sa offer 5,\r\n10 - la offer 5',
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `mobile` varchar(256) NOT NULL,
  `emailid` varchar(256) NOT NULL,
  `card_number` varchar(256) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `amount` float(11,2) NOT NULL,
  `paymentid` varchar(50) DEFAULT NULL,
  `isCustomer` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes',
  `isActive` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes',
  `isDelete` int(11) NOT NULL DEFAULT 0 COMMENT '0=No. 1=Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `descriptions` longtext NOT NULL,
  `isActive` int(11) NOT NULL DEFAULT 1,
  `isDelete` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career_enquiries`
--

CREATE TABLE `career_enquiries` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `applyfor` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `qualifications` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `keyskills` longtext NOT NULL,
  `city` varchar(256) DEFAULT NULL,
  `server_ip` varchar(256) DEFAULT NULL,
  `isDelete` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cashfree_entry`
--

CREATE TABLE `cashfree_entry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `entryfor` int(11) NOT NULL DEFAULT 0 COMMENT '1=Customer,2=Channel,11=SelfApply,12=Loan Agent, 3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4,21=SA_Offer_5,22=LA_Offer_5,31=SA_OFFER_6,32=LA_OFFER_6,41=SA_OFFER_7,42=LA_OFFER_7	',
  `userid` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channel_partners`
--

CREATE TABLE `channel_partners` (
  `id` int(11) NOT NULL,
  `rec_date` datetime DEFAULT NULL,
  `first_name` varchar(155) NOT NULL,
  `last_name` varchar(155) NOT NULL,
  `mobile` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `password` text NOT NULL,
  `company_code` varchar(99) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `vat_gst_no` varchar(99) DEFAULT NULL,
  `phone` varchar(99) NOT NULL,
  `website` varchar(155) NOT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(99) DEFAULT NULL,
  `state` varchar(99) DEFAULT NULL,
  `pincode` varchar(99) DEFAULT NULL,
  `country` varchar(99) NOT NULL DEFAULT 'IN',
  `isActive` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active,0=deactive',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cipherpayentry`
--

CREATE TABLE `cipherpayentry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `entryfor` int(11) NOT NULL COMMENT '1=Customer,2=Channel,11=SelfApply,12=Loan Agent, 3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4',
  `userid` int(11) NOT NULL,
  `orderid` varchar(99) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(99) DEFAULT NULL,
  `paymentmode` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `click_counts`
--

CREATE TABLE `click_counts` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `applylink_id` int(11) NOT NULL,
  `counts` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_enquiry`
--

CREATE TABLE `contact_enquiry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `fullname` varchar(225) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `server_ip` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `criteria_list`
--

CREATE TABLE `criteria_list` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `criteria` varchar(99) NOT NULL,
  `isDelete` tinyint(4) NOT NULL DEFAULT 0,
  `isActive` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enroll_services`
--

CREATE TABLE `enroll_services` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL,
  `serviceid` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `valid_upto` date NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `paymentid` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fb_ads_entry`
--

CREATE TABLE `fb_ads_entry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) DEFAULT NULL,
  `fbclid` varchar(299) DEFAULT NULL,
  `send_data` longtext DEFAULT NULL,
  `received_data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `important_update`
--

CREATE TABLE `important_update` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `tags` varchar(256) NOT NULL,
  `descriptions` longtext NOT NULL,
  `isActive` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes',
  `isDelete` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `important_update`
--

INSERT INTO `important_update` (`id`, `rec_date`, `tags`, `descriptions`, `isActive`, `isDelete`) VALUES
(1, '2025-02-28 15:58:45', 'hello', '<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:22px\"><strong>Hello Worlds</strong></span></span></p>', 0, 1),
(2, '2025-02-28 17:02:52', 'hello', '<p><span style=\"font-size:22px\"><strong>Hello World</strong></span></p>', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `info_pages`
--

CREATE TABLE `info_pages` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext DEFAULT NULL,
  `rec_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `info_pages`
--

INSERT INTO `info_pages` (`id`, `slug`, `content`, `rec_date`, `status`) VALUES
(1, 'privacy-policy', '<p dir=\"ltr\">The privacy of every user of AP Loannwala is important for the company. This Privacy Policy mentions the data and information we collect about you, how we treat it, with whom we share it, and how we preserve and protect it.</p>\r\n\r\n<p dir=\"ltr\">In the regular course of our business through this website, we gather your personal information through several sources, including:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Information from you, such as applications or other sources that include your name, address, marital status, employment, assets and income; and</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Information about you, your accounts, and your holdings and transactions that we receive from you or others, such as account custodians, brokers, other financial services firms, banks, etc.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">We&#39;re also dedicated to protecting the users of our website by addressing potential privacy concerns. Our privacy guidelines apply to all users globally. This policy applies to all information, in whatever form, relating to AP Loannwala&rsquo;s business activities across the world and to all information handled by AP Loannwala relating to other companies and organizations with whom it deals. It also covers all IT and information communications facilities operated by AP Loannwala or on its behalf.</p>\r\n\r\n<p dir=\"ltr\">This Privacy Policy covers the security, information, IT equipment, and use of AP Loannwala, a company incorporated under the laws presently in force in India and having its registered office at Maharastra -&nbsp;India, and its affiliates. It also includes the use of email, internet, voice, and mobile IT equipment. This policy applies to all AP Loannwala Users, Clients, and employees (hereafter referred to as &#39;individuals&#39;).</p>\r\n\r\n<p dir=\"ltr\">Subject to arbitration, only the courts and tribunals of Maharastra, India, shall have exclusive jurisdiction with respect to any suit, action, or any other proceeding arising out of or in relation to the Loan Documents. Nothing contained in this clause shall limit any right of the Lender to commence any legal action or proceedings arising in relation to the Loan or the Loan Documents in any other court, tribunal, or another appropriate forum, competent jurisdiction, and the Borrower and/or the Guarantor hereby consent to that jurisdiction.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>How AP Loannwala manages and protects Your Personal Information?</strong></span></h3>\r\n\r\n<p dir=\"ltr\">AP Loannwala doesn&rsquo;t sell or trade information about current or former clients to third parties. We may disclose your personal information as necessary to:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Effect, administer, or enforce a transaction that you request or authorize;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Process or service a financial product or service that you request or authorize; or</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Maintain or service your account with us or with another entity.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">AP Loannwala may also disclose your personal information and data for everyday business purposes to organizations or firms that provide consulting, technology, or other services for us and agree to maintain its confidentiality; others, such as attorneys, trustees, family members, or others who are authorized to represent you, your estate, or a joint or co-owner of your account; regulatory agencies; or as we are otherwise permitted or required by law or process of law.</p>\r\n\r\n<p dir=\"ltr\">AP Loannwala restricts access to your personal information to our employees and to permitted third parties who need to know that information to provide products or services for us or to provide, process, or maintain any security, account, or investment product, service, or program for you or your benefit. To protect your personal information from unauthorized access and use, we have adopted administrative, technical, and physical security procedures that comply with the Laws in India. These measures include computer safeguards and secured files and buildings.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>What AP Loannwala can do with your personal information:</strong></span></h3>\r\n\r\n<p dir=\"ltr\">We may use your personal information that we collect or that is provided to us for the following reasons:</p>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Considering any application for an account or service;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Carrying out our business functions and activities;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Collecting amounts you owe us, including taking enforcement action;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Exercising our rights and fulfilling our obligations under any agreement with you;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Exercising our rights and fulfilling our obligations for the purposes of complying with all applicable laws, including those relating to money laundering, terrorist financing, bribery, corruption, tax evasion, fraud, and similar; and managing all economic and trade sanction risks;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Generally administering and monitoring services provided to you (or any related entity); and</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Providing you with information about our other services, or the services of selected third parties in which we think you may have an interest, including by post, telephone, and electronic message &ndash; you can opt-out of receiving information about our other services and/or the services of selected third parties by informing us in writing.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>Sharing of Personal Information with Third Parties:</strong></span></h3>\r\n\r\n<p dir=\"ltr\">AP Loannwala does not sell, trade, or otherwise transfer to outside parties your personally identifiable information. This does not include trusted third parties who assist us in operating our website, conducting our business, or servicing you, so long as those parties agree to keep this information confidential. We may also release your information when we believe release is appropriate to comply with the law, enforce our site policies, or protect our or others&#39; rights, property, or safety. However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>Security and Confidentiality:</strong></span></h3>\r\n\r\n<p dir=\"ltr\">The protection and security of your personal information are important to us. We generally follow industry-standard information security tools and measures, as well as internal procedures and strict guidelines, to prevent information submitted to us, both during transmission and once we receive it, from misuse and data leakage. No method of transmission over the internet or method of electronic storage is 100% secure, however. Therefore, while we strive to use commercially acceptable means to protect your personal information, which considerably reduces the risks of data misuse, we cannot guarantee its absolute security. To notify the company about any security vulnerability or potential data breach, please contact us at info@aploannwala.com, and we will take the appropriate measures to address such an incident, as deemed necessary.</p>\r\n\r\n<p dir=\"ltr\">Our employees can access the information on a &quot;need-to-know&quot; basis and are subject to confidentiality obligations.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>DATA ACCURACY</strong></span></h3>\r\n\r\n<p dir=\"ltr\">Personal data must be accurate and, where necessary, kept up-to-date. It must be corrected or deleted without delay when inaccurate. It is advisable that you ensure that the personal data we use and hold is accurate, complete, kept up-to-date, and relevant to the purpose for which we collected it. You must check the accuracy of any personal data at the point of collection and at regular intervals afterwards. You must take all reasonable steps to destroy or amend inaccurate or out-of-date personal data.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>LIMIT OF LIABILITY</strong></span></h3>\r\n\r\n<p dir=\"ltr\">We shall not be liable for any confusion caused as a result of any of your actions or omissions of any action or anything as a result of your viewing, reading, or listening to any content. Although we will do our best to provide constant, uninterrupted access to our website, we accept no responsibility or liability for any interruption or delay.<br />\r\nIn no event will our total liability to you for all damages arising from your use of the service or information, materials, or products included on or otherwise made available to you through the service exceed the amount you paid for the service related to your claim.</p>\r\n\r\n<p dir=\"ltr\">We have no liability for any loss, damage, or misappropriation of your files under any circumstances or for any consequences related to changes, restrictions, suspension, or termination of your service or the agreement. These liabilities shall apply to you even if their remedies shall fail their essential purpose.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>USAGE OF ADVERTISING ID</strong></span></h3>\r\n\r\n<p dir=\"ltr\">When you are using our application that incorporates our services, we may also automatically record your Google and/or any other Advertising ID (if you are using an Android device) or your Advertising Identifier (IDFA - if you are using an IOS device; together with the Google and/or any other Advertising ID-&quot;Mobile Advertising IDs&quot;), for advertising or analytics purposes. The said Advertising ID is an anonymous identifier, provided by Google. If your device has an Advertising ID, we may collect and use it for advertising and user analytics purposes. If your device does not have an Advertising ID, we may use other persistent identifiers. The information collected may also be stored on your device. You can reset your mobile Advertising ID or opt-out of receiving targeted ads through your mobile Advertising IDs which are provided in our settings.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>COMPLIANCE &amp; COOPERATION WITH REGULATORS</strong></span></h3>\r\n\r\n<p dir=\"ltr\">We regularly review this Privacy Policy and make sure that we process your personal information in ways that comply with regulations currently in force in India. We firmly comply with legal frameworks, including data protection laws relating to the transfer of data.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>CONSENT</strong></span></h3>\r\n\r\n<p dir=\"ltr\">By using our website, you consent to our website&#39;s Privacy Policy. The usage of the website shall be construed as an acceptance of the Privacy Policy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>GRIEVANCES</strong></span></h3>\r\n\r\n<p dir=\"ltr\">For any complaints and/or inquiries, you can send us formal written inquiries or complaints at info@aploannwala.com. All inquiries and/or complaints shall be examined and will be resolved expeditiously. Our team of experts will respond by contacting the person who made such inquiries and/or complaints. We work with the appropriate regulatory authorities, including local data protection authorities, to resolve any complaints regarding the transfer of your data that we cannot resolve with you directly.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>MODIFICATION OF THE POLICY</strong></span></h3>\r\n\r\n<p dir=\"ltr\">We reserve the right to modify this Privacy Policy at our own independent decision at any time. If the changes are significant, the Company shall spare no efforts to apprise its clientele and provide a prominent notice (including, for certain services, email notification of Privacy Policy changes). It is pertinent to remember that it shall be the Clients&#39; responsibility to read the Policy as amended every once in a while.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>USAGE OF COOKIES/COOKIES POLICY</strong></span></h3>\r\n\r\n<p dir=\"ltr\">Cookies are small files that a site or its service provider transfers to your computer&#39;s hard drive through your web browser with your permission, which enables the site or service provider&#39;s systems to recognize your browser and capture and remember certain information. We use cookies to help us understand and save your preferences for future visits, keep track of advertisements, and compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools in the future.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:1339px; position:absolute; top:252.75px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '2024-01-26 12:27:05', 1);
INSERT INTO `info_pages` (`id`, `slug`, `content`, `rec_date`, `status`) VALUES
(2, 'terms-conditions', '<p dir=\"ltr\">In these Terms &amp; Conditions, the words such as &ldquo;we&rdquo;, &ldquo;our&rdquo;, &ldquo;company&rdquo;, and &ldquo;us&rdquo; refer to AP Loannwala and its undertaken system. And the words such as &ldquo;you&rdquo;, &ldquo;your&rdquo; refer to AP Loannwala users, customers, etc.</p>\r\n\r\n<p dir=\"ltr\">Here are the terms and conditions for Customers, Employees, and every user of our website - aploannwala.com. So, the terms and conditions are applied as per your role. You must read all the below-mentioned Terms &amp; Conditions carefully.</p>\r\n\r\n<p dir=\"ltr\">The Company wishes to offer the services under the terms and conditions set forth and the user/customer wishes to be associated unconditionally with these terms and conditions.<br />\r\nTherefore, in consideration of the agreements contained in this, the parties, intending to be legally bound, agree to the correctness and authenticity of the following details given to the company:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Information from you, such as applications or other forms (which include your name, address, marital status, employment, assets and income); and</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Information about you, your accounts, and your holdings and transactions that we receive from you or others, such as account custodians, brokers, and other financial services firms, banks, etc.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">If the company by any source finds out anyone bad-mouthing or defaming the company&#39;s reputation or company&#39;s members then strict legal action will be taken against the individual or group.<br />\r\nWe&#39;re also serious about protecting our users by addressing potential privacy concerns. Our terms and condition guidelines apply to all users across the world. These terms and conditions apply to all information, in whatever form, relating to AP Loannwala&#39;s business activities worldwide, and to all information handled by AP Loannwala, relating to other organizations with whom it deals. It also covers all IT and information communications facilities operated by AP Loannwala or on its behalf.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>SUBSCRIPTION TERMS AND CONDITIONS:</strong></span></h3>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The payment of subscription fees is refundable only in accordance with the company&#39;s Cancellation &amp; Refund Policy.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">AP Loannwala subscription is not transferable and is only valid up to its date of expiry (valid as per subscription) and the subscription may not be used by any person other than the purchaser.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Renewal terms and conditions are at the discretion of AP Loannwala.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The subscription can only be used on/for our website.</p>\r\n	</li>\r\n</ol>\r\n\r\n<h3 dir=\"ltr\">&nbsp;</h3>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>CUSTOMER TERMS AND CONDITIONS:</strong></span></h3>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The payment of Subscription fees is refundable only in accordance with the company&#39;s Cancellation &amp; Refund Policy.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company only takes the cost of the Subscription. No other tip of service is charged.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Customers can use the Subscription only for loan purposes with given benefits. Also, buying a Subscription lets you apply for a loan and it doesn&rsquo;t guarantee loan approval as the final loan approval depends on the banks and the customer profile. If the loan is rejected, you can still avail other benefits of the Subscription.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If a customer is viewing any advertisement/promotional content of the company and then approaching the company thinking that he/she will get the loan approval based on the advertisement, then it must be noted that a loan application will only be submitted once the customer buys AP Loannwala&rsquo;s Subscription. Even after buying the Subscription, the final loan approval depends on the bank(s) and customer profile. If the customer&rsquo;s profile doesn&rsquo;t match loan eligibility criteria, he/she won&rsquo;t be able to get a loan. Still, they can avail other benefits of the Subscription.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Subscription can be used only by the persons who have purchased it and not by any other person(s), source or third party.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If a customer reference does payment through the customer&#39;s own referral link which is provided by the company and if that shows in the customer&#39;s portal then the only company will give the reference payout of that customer.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If the customer loan is approved in our company and he/she denies that loan approval then also Subscription payment would not be refundable.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The documents, cheques, and OTP that the company&#39;s employee asks the customer are for the processing of the loan only and the company never misuses them. Just for security, after completing the loan process, the customer can go to the concerned bank and cancel their cheque. The company is not responsible if any problems/disputes arise in the future.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If you do not give the OTP, documents, or document query for verification to the company&#39;s employee for the loan process, then your file will be rejected. (According to the criteria, if your file matches without OTP, your loan will be processed).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If our company&#39;s executive asks you for any payment transaction OTP, do not provide it. If the customer pays any charges other than the charge of the Subscription, the company won&rsquo;t be responsible for the same.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If a customer has any queries regarding the loan process then he/she would have to contact the department where their files are in process.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">We will verify your documents in multiple banks; so whatever documents are submitted by customers in our company that will match with any bank criteria, in that bank only we will proceed with the loan process. For example, if your file will match in 2 banks then our company&#39;s login department will login your document only in that 2 banks. The verification is done by the company&#39;s employee and there is no proof available for the same.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The document will be verified by the company in multiple banks. If your documents match the criteria of the bank, then the login process will be done in that bank. If your documents do not match the criteria of a bank, the company will give you a solution. You can take the solution and reapply after a certain period (as per Subscription) - and this will be shown on the customer portal.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">It is not fixed that the customer file will be logged in only in the banks listed on the company website. It may be logged in/verified in other banks also, depending on the customer file.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our company is not taking extra charges other than Subscription charges. If any third-party charges you then our company is not responsible for that.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">There are no processing or file charges for customer loan approval. There is only one charge and that&#39;s only for the Subscription - validity as per Subscription.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our company will log in customer files as per their requirements. (Example: If customer requirement is INR 1 lakh and if some bank criteria is up to INR 50,000 then we will not log in their file in that bank).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Wherever the customer file is logged in by the company, these details will not be given to any customer in written or digital form.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Loan offers and the pre-approval loans process depend only on the bank&#39;s rules and that type of loan is given only on customer behaviour. So, there is so much difference between that type of process and the company&#39;s process. If that loan is rejected in our company but gets approved by another company/source then the customer can&#39;t blame our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Loan approval depends on your profile so if your documents are perfect and as per the bank criteria then you will get a loan through our company</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The loan information is only given to the person who has applied for the loan.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">During the loan processing time, if any customer would not be in contact with us for 3 days, then that file will be rejected by our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If your file is rejected in our company, then the customer has to make sure that they have to re-submit their documents, with the implemented company-suggested solution, in our company after a certain period (as per Subscription).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company is not responsible if the customer loan is rejected by any queries.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If the customer will apply for the first time but his/her loan is rejected in our company then the company will give them a reason and solution for that. So at re-applying time if the customer will not resubmit a file with the solution implemented then the file will be again rejected in our company for the same reason. Still, the final loan approval will depend on the customer profile and the bank&#39;s criteria and rules &amp; regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will provide only the reason for rejection to the customer and it would not be provided in the form of hard or soft copy - it will only be shown in the customer portal. Some banks only provide general reasons, they don&#39;t give us any specific reason so the customer should not complain about that.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The customer has to give correct information about their CIBIL SCORE and PROFILE. If the customer gives wrong information, then the company will not be responsible for loan rejection.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will not be providing any CIBIL REPORT in digital or hard copy to any customer in any situation.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Bank charges are applicable as per banks&#39; rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will take legal action against the customer who submitted fake documents. And the company won&rsquo;t take any responsibility for the loan process in this case.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">After the customer&rsquo;s file is logged in, the customer has to contact only the login department and coordinate with them &ndash; not any telecaller or other department of the company. The further process has to be done according to the login department.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">During the loan process if the rules of any bank change, then we have to follow those new rules.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The customer has to give their registered phone number for being contacted by the login department.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">During the loan processing time, if the company gets any queries and it is not solving that in the given time, then the company has the authority to take more time to address the query. So, the customer must not complain about the same.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If the customer wants to reapply in our company after file rejection or approval, then he/she has to re-submit their documents in the customer portal.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">When you are applying for a loan on our website, we are showing you only your Eligibility for the loan. So whatever details you enter on the website are accepted by software only, and that only shows your pre-approval and not your final loan approval. Approval only depends on your documents and the banks&#39; rules and regulations. We are not giving you any guarantee for the final loan approval.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">All the detailed criteria, terms, and information behind any of the company&rsquo;s concise promotional content (social media ads, banners, SMS, advertisements, emails, etc.) are stated in the Terms &amp; Conditions and Privacy Policy sections of the website. Any concerned person (customer, employee, etc.) must check and accept all the rules and regulations before availing any of the company&rsquo;s services. If any person has confusion, they can call on the company&rsquo;s customer care number to gain clarity before availing company&rsquo;s services.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The customer&#39;s payment is executed by third-party payment sources. So whenever payment would be received by the company then only a Subscription will be activated for the customer. If a customer&#39;s payment would be debited from his/her account but we don&#39;t receive any payment in the company&#39;s account then the company will not be responsible for that.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">For any reference customer&#39;s payout, their account verification is compulsory. After verification, if the payout amount is debited from the company&rsquo;s account and if it does not credit/reflect in the reference customer&rsquo;s account &ndash; the company won&rsquo;t be responsible for this issue.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our company is a private limited company and we are tied up with banks and corporate DSA. We are providing loans through banks only.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Multiple partnered banks&#39; logos are shown on our website and our promotional content across many mediums &ndash; these are shown only for our company&#39;s marketing purpose. It might be possible that certain banks, whose logos are shown on our website/promotional content, are not partnered with our company. Also, these should not be assumed as any bank&#39;s advertisement.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If anyone takes any legal action against the company then only our legal advisor would be dealing with that and Maharastra, India, will only remain the junction for any legal procedure. No one would be able to contact any employee or director of our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any person has a doubt/question regarding any of the company&rsquo;s terms and conditions, they can contact the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The eligibility age for buying a Subscription is 18 - 62 years. The persons in this age bracket can avail benefits of the Subscription.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">For the Reference Customers who have given customer referrals to the company, it would be compulsory for them to submit their Payout Documents to the company within 30 days. If not submitted, all the payouts of the Reference Customer will be automatically cancelled. To get the cancelled payout, you can contact the company and discuss it.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Every reference payout will have a deduction of 5% TDS.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">For the loan process, the company will only coordinate with the person who has purchased the Subscription and has an ongoing loan process &ndash; the company won&rsquo;t coordinate with any third party.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Every bank payout will have tax deductions as per the bank&rsquo;s rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Company&#39;s authorized person can change any rules and regulations at any time; the concerned person must be regularly updated with the company&rsquo;s terms and conditions and has to accept them unconditionally.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will provide the appropriate loan services but the responsibility of customer handling will be of the reference customer.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any bank&#39;s rules or company&#39;s rules are changing during the processing time of the loan then the customer has to follow those new rules.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The office holidays and bank holidays will not be counted as working days/business days. The company&rsquo;s office work will be done on working days only.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our promotional content may communicate messages like &#39;Get Personal Loan in 30 mins&#39; or &#39;Get Rs.5,00,000 in 5 mins&#39; on our company&rsquo;s social media, blogs/articles, ads, websites, emails, SMS, or any other medium &ndash; it must be carefully noted that these messages are only meant for marketing and promotional purposes. All the numerical values that depict time/number of steps/number of clicks &ndash; are for marketing and promotional purposes only. The final loan approval and process depend on the customer profile and the bank/NBFCs&rsquo; rules, regulations and criteria. If you have any sort of doubt before starting the process, you can call our customer care number (10 am to 5 pm &ndash; Monday to Saturday).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">As per the details/information entered by the user, even if the actual pre-approved amount is lesser than 2 Lakhs, the pre-approved amount shown on the website will be Rs.2 Lakhs (minimum). And, even if the actual pre-approved amount is more than 8.5 Lakhs, the pre-approved amount shown on the website will be Rs.8.5 Lakhs (maximum). The pre-approved amount/pre-approved loan offers are tentative &ndash; the final loan approval, loan sanction, and disbursement depend on the customer profile and the NBFCs&rsquo; rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The first login of the customer&rsquo;s file will be handled and executed by the company. To avail the reapplying option, the customer will have to perform the self-login(s).</p>\r\n	</li>\r\n</ol>\r\n\r\n<h3 dir=\"ltr\">&nbsp;</h3>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>REFERENCE TERMS AND CONDITIONS:</strong></span></h3>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Reference payout would be given to reference customers as per rules and regulations of our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our company will give payout only on Subscription; it does not depend on the reference customer&#39;s loan approval or rejection.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Whether the customer loan will be approved or not depends on the customer profile and the company does not give any guarantee for that.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If customers are giving a reference in our company for loan purposes, for that we have some criteria. The customer has to give a reference based on that criteria. The company is not giving you any type of guarantee for the loan approval in any situation at any cost so customers who give a reference have to agree with the decision of that file&#39;s login department.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will take legal action against the reference partner/customer who submitted fake documents. And the company won&rsquo;t take any responsibility for the loan process in this case.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;The Customer&#39;s terms and conditions are also applicable to the reference person&#39;s customers.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Reference customer&#39;s payment is done through third-party payment sources. So whenever payment would be received by the company then only the Subscription will be activated. If the customer&#39;s payment is debited from his/her account but the company doesn&#39;t receive any payment in the company&#39;s account then the company will not be responsible for any queries.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">During loan offers, if any reference person will do the online loan process then the company will give the payout up to 35% per Subscription to the reference person. But before that, invoice generation is most important for any payout process.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If the customer of reference will do an online process then the customer&#39;s payout will be given to the referral partner. But during processing time, if the company would refund that amount to the customer for any reason, then that customer&#39;s payout will be cut out from the reference person&#39;s next payout.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Whatever documents are submitted by a reference person, they will be secure in our company. If documents will be misused by any other sources in future then our company is not responsible for that.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">For the Reference Customers who have given customer referrals to the company, it would be compulsory for them to submit their Payout Documents to the company within 30 days. If not submitted, all the payouts of the Reference Customer will be automatically cancelled. To get the cancelled payout, you can contact the company and discuss it.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If anyone takes any legal action against the company then only our legal advisor would be dealing with that, and Maharastra, India, remains the only junction for any legal procedure. No one can contact any employee or director of our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any person has a doubt/question regarding any of the company&rsquo;s terms and conditions, they can contact the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Every reference payout will have a deduction of 5% TDS.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The office holidays and bank holidays will not be counted as working days/business days. The company&rsquo;s office work will be done on working days only.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Company will have no responsibility for the promotions conducted and undertaken by the Customer Reference. The Customer Reference agrees that the promotions done by them are at their own risk, and the Customer Reference cannot hold the Company responsible for any sort of losses faced due to the promotions.</p>\r\n	</li>\r\n</ol>\r\n\r\n<h3 dir=\"ltr\">&nbsp;</h3>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>GENERAL TERMS AND CONDITIONS:</strong></span></h3>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If the login department fails to solve the customer queries with accuracy, dedication and responsibility, then the login department agency will be cancelled by the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Customer&#39;s loan process will take more days due to any festival.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If anyone has GST then they have to add the GST number in their portal so that the company can provide a GST Return to them. If you haven&rsquo;t received your GST Return &ndash; you can raise a request or call on company&rsquo;s customer care number between 10 AM to 5 PM (Monday to Saturday &ndash; only business days).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Company is using Blogs for their advertising, so that content could be of the third party, so the company doesn&#39;t take guarantee of the information to be correct or incorrect.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If customers, employees, any other person, or any other party has a problem with the company then they have to inform that problem to our company through notice; so, we can try to give you a solution of that but after that, any of them want to take a legal action then they have to inform the company through notice. Only then, the legal process will be started.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If customers, employees, any other person, any other third party has a problem/dispute/misunderstanding with the company, the right to take the final decision over the concerned issue is reserved with the company and the concerned person will have to accept the solution provided by the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The documents, cheques, and OTP that the company&#39;s employee asks the customer are for the processing of the loan, the company is not responsible if any problems/disputes arise in the future.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">During any process on the website, if there is any kind of mistake that happens due to the software or website technical problems, the final decision on such disputes can only be taken by the company and it has to be accepted by anyone concerned.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Company&#39;s authorized person can change any rules and regulations at any time; the concerned person must be regularly updated with the company&rsquo;s terms and conditions and has to accept them unconditionally.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">All the commitments made by the company&rsquo;s employees (any employee/person from the company), telecallers, or salespersons, etc. should be cross-checked by any concerned person (customer/any other person) from the Terms &amp; Conditions section of aploannwala.com&nbsp;before availing any of the company&rsquo;s services. Only the rules and regulations stated on the company website will be considered official.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">All the detailed criteria, terms, and information behind any of the company&rsquo;s concise promotional content (social media ads, banners, SMS, advertisements, emails, etc.) are stated in the Terms &amp; Conditions and Privacy Policy sections of the website. Any concerned person (customer, employee, etc.) must check and accept all the rules and regulations before availing any of the company&rsquo;s services. If any person has confusion, they can call on the company&rsquo;s customer care number to gain clarity before availing company&rsquo;s services.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any Customer Referral&rsquo;s customer gets a refund (due to any dispute like payment gateway problem or any other issue) then the referral payout will not be provided (if provided, it would be deducted from the next payout of the customer referral).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">While generating the payout for Customer Referrals, the company uses a third-party payment gateway. So, if the payout is stuck and put on hold due to any payment gateway issue (or any other issue), then the payout would be delayed and all the terms and conditions of the third-party payment gateway would be applied. In such cases, the payout will be released only when the third-party payment gateway releases the stuck payment. In case of a payout dispute with any bank, the bank&rsquo;s criteria will be applied and the payout will be released only when the bank approves the payment.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If there is any dispute that arises between any concerned user (customer, customer referral, etc.) and the company, their account will be disabled immediately by the company. In such a case, the user would be needed to contact the company for any query.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;All of the promotional content put and shared by the company, either on its website or any platform, is only for advertisement purposes. Any person should not assume it as the final loan approval or details of the loan. The final loan approval and specifics of the loan depend on the rules and regulations of various banks (or the concerned bank) and the customer profile. Every customer, or any other user must accept this clause and consider the bank&rsquo;s loan processing time only.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The loan-related figures, rates, and information used in the promotional content of the company are general and for promotional purposes. The final nature and specifics of the loan in terms of the loan amount, interest rate, repayment tenure, loan processing fees, loan insurance, etc., depends solely on the customer profile and the rules and regulations stated by the concerned bank. The final loan details depend on the criteria set by the concerned bank(s).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">AP Loannwala&#39;s company name, logo, content, business concept, software and system, pattern, website structure and design, and business process and offers are copyrighted with the company. If any individual or organization uses/copies any of the above-mentioned by even 1%, legal action may be taken against them.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any person (customer, employee, etc.) is involved in any of the company&#39;s processes then the company is authorized to record the phone calls with that person.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any customer applies for a loan in our company and if any other external person/organization commits fraud with that customer in terms of taking money from you or in any other way then, it will not be the company&rsquo;s responsibility for any kind of loss faced by the customer.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Whatever loan offer is given to the customer is according to the customer profile. The customer will have to compulsorily accept the loan offer &ndash; he/she cannot deny the loan offer.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company has full authority to use the customer&rsquo;s information for purposes such as testimonials, advertisements, marketing, SMS, etc. The customer agrees that regulations of Do Not Disturb(DND)/National Do Not Call(NDNC) won&rsquo;t be applied in such practices.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any person (user, customer, etc.) visits our website and indulges in any activity &ndash; like clicking a button, link, filling forms, or any other activity on the website, it will clearly mean and express that the person agrees to and acknowledges all terms &amp; conditions, rules &amp; regulations, and policies of the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">After the loan approval, the bank charges will be applied as per the bank&rsquo;s rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;No customer can contact the bank&rsquo;s employees to inquire about/get any information on the loan file processes.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The customer, whose loan has been approved, must read and understand the bank agreement and the bank&rsquo;s terms and conditions carefully. After the loan process is done, the company can&rsquo;t be held responsible or liable for anything.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will take legal action against the customer, reference customer, or any other person who submitted fake documents. And the company won&#39;t take any responsibility for the loan process in this case.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Multiple partnered banks&#39; logos are shown on our website and our promotional content across many mediums &ndash; these are shown only for our company&#39;s marketing purpose. It might be possible that certain banks, whose logos are shown on our website/promotional content, are not partnered with our company. Also, these should not be assumed as any bank&#39;s advertisement.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If anyone takes any legal action against the company then only our legal advisor would be dealing with that and&nbsp; Maharastra, India, will only remain the junction for any legal procedure. No one would be able to contact any employee or director of our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Any wrong/fake commitment or vocal statement given by the company&rsquo;s employees, etc. would be considered invalid. Only the solutions or solution-related vocal statements would be considered valid. All the company&rsquo;s Terms &amp; Conditions, Privacy Policy, Disclaimer, all other rules will be final and have to be followed.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any person has a doubt/question regarding any of the company&rsquo;s terms and conditions, they can contact the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;The office holidays and bank holidays will not be counted as working days/business days. The company&rsquo;s office work will be done on working days only.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Loan processing time might get delayed because of any public holiday, technical problems, customer issues, etc.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Company will not be providing any proof for rejection in hard or soft copy.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">It might be possible that the content/figures/information shown on our website are not updated. So, to get the exact information regarding any of our website&rsquo;s content, Terms &amp; Conditions, Privacy Policy, Disclaimer, etc., you can call on our customer care number.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;After the purchase of the Subscription, the Company Executive will call the concerned person within 24-48 hours (it could be delayed due to any reason) for the loan process or partner process. If the concerned person doesn&rsquo;t get a call, they can call on the company&rsquo;s customer care number.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If the login process is going on and there has been no response from the login department, then the customer can call on the company&rsquo;s customer care number.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The content and any process on the website can be changed or modified at any instance. So, the older version of the content and process won&rsquo;t be functional, valid, or a subject of argument for any person &ndash; and the customers, users, etc. have to stay timely updated and accept all the changes unconditionally. Only the current content and process of the website will be considered valid.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;By accessing our website, you affirm your age as 18 years or more. If you&rsquo;re someone below 18 years, we advise you not to access our website or the services</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Any processes regarding the loan might get delayed due to public holidays, technical problems/software issues, etc.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;In case the update email/message regarding the processes of loan is not received by the customer due to a delay because of technical problems, software issues, or any other issue &ndash; they can call on the company&rsquo;s customer care between 10 AM to 5 PM (Monday to Saturday &ndash; only business days).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;In case the user, customer, any other person, or organization has a query/problem/issue or wants to raise a dispute with the company &ndash; they can either raise a request ticket or call on the company&rsquo;s customer care number between 10 AM to 5 PM (Monday to Saturday &ndash; only business days).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Due to a software/system issue, it might happen that the dates mentioned in the Loan Status are late by 3-4 days.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">To get the TDS Return, the reference customer has to submit all the details/documents asked in their portal. Note: The TDS Return will be given starting from the financial year in which all the details/documents are submitted. The TDS Return won&rsquo;t be provided for the financial year(s) that are prior to the financial year in which the details/documents were submitted.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The general criteria to apply for a personal loan by a salaried individual are &ndash; Min. Age: 21 years; Min. Salary: Rs.15,000/month (credited in the bank account); Salary Slips available; and Job Stability proof available. Final loan approval completely depends on the customer profile and the bank&rsquo;s rules and criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;The general criteria to apply for a personal loan by a self-employed individual are &ndash; Min. Age: 21 years; IT Returns available (min. 1 year); Business Stability proof available; and Current Account in a bank. Final loan approval completely depends on the customer profile and the bank&rsquo;s rules and criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The general criteria to apply for a business loan by a small business person are &ndash; Min. Age: 21 years; IT Returns available (min. 1 year); and Business Stability proof available (min. 1 year). Final loan approval completely depends on the customer profile and the bank&rsquo;s rules and criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The general criteria to apply for a business loan by an audited report business person are &ndash; Min. Age: 21 years; Min. Rs.1 Crore+ Yearly Turnover; and Min. 2 Years Audited Report. Final loan approval completely depends on the customer profile and the bank&rsquo;s rules and criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;The eligible age for buying a Subscription is 18 - 62 years. The persons in this age bracket can avail benefits of the Subscription offered by the company. The company only offers Subscription and provides its benefits to the customers. The final loan approval depends on the customer profile and the bank&rsquo;s rules and criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">For the Reference Customers who have given customer referrals to the company, it would be compulsory for them to submit their Payout Documents to the company within 30 days. If not submitted, all the payouts of the Reference Customers will be automatically cancelled. To get the cancelled payout, you can contact the company and discuss it.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Any information/flow/system regarding our website shown in the videos posted on social media (or any platform) may be inaccurate, outdated, or different from our actual website. Only the most updated version of the website, terms &amp; conditions, and other policies shall be valid.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The banks&rsquo; logos used in our ads, social media posts, blogs, emails, or any other medium is for promotional purposes only. The process will be done in that bank only under whose criteria the customer profile gets matched. The final loan approval and final loan process completely depend on the customer profile and the bank&rsquo;s criteria and rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The banks&rsquo; logos shown on our website and the pre-approved offer displayed on our website are tentative only. The process will be done in that bank only under whose criteria the customer profile gets matched. The final loan approval and final loan process completely depend on the customer profile and the bank&rsquo;s criteria and rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">By purchasing the company&rsquo;s Subscription, the customer is applying to get the company&rsquo;s services. All the benefits of the Subscription will be given to the customer by the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any customer data &amp; information, KYC documents, or OTP is misused in future by any third-party, our company and its directors, employees, or any individuals associated with the company cannot be held responsible for the same in any matter whatsoever including any loss, harm, or damage due to the usage of information from the portal. Customers are advised to bring in their own discretion in such matters. The information provided on the website is of financial nature. It is a mutual understanding that customers association with the website will be at the customer&#39;s will, preference and risk.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any customer&rsquo;s documents are found to be fraud by the bank/financial institution or there&rsquo;s any sort of an issue with any customer&rsquo;s repayment of the loan to the banks/financial institution &ndash; then these matters have to be solely between the customer and the bank/financial institution. Our company and its directors, employees, or any other individual associated with the company cannot be held responsible in such cases. If the customer documents are found to be fake and fraud and are used anywhere for any purpose, the company cannot be held responsible for the same.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any third-party gets a loan approved on someone else&rsquo;s identity and documents, then our company and its directors, employees, or any other individual associated with the company cannot be held responsible.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any of the company&rsquo;s customers or any third-party wants a legal course, action and proceedings with the company, then only the company&rsquo;s legal team can be involved. There will absolutely be no involvement of the company&rsquo;s directors, any other individual associated with the company, or employees in any legal proceeding. For any legal action or proceeding involving our company, Maharastra, India, shall remain the only jurisdiction.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">TDS will be given only to the ones whose referral payout has been generated. If your TDS is deducted, you can contact your CA. If your TDS has been deducted and it&rsquo;s not showing, then you can contact the company&rsquo;s customer care number between 10 AM to 5 PM &ndash; Monday to Saturday (only business days).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any person enters incorrect information and starts the loan process on our website, and if this leads to any sort of fraud in future, the company, its directors, employees, any other individual associated with the company cannot be held responsible for the same.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The pre-approved loan offers shown are from those banks/NBFCs that have eligibility criteria to which the customer&rsquo;s profile matches (profile evaluated as per the information entered by the customer). These pre-approved loan offers are tentative only &ndash; the final loan approval, loan sanction, and disbursement depend on the NBFC(s) and their rules and regulations. The company will only log in the customer&rsquo;s file in those NBFCs with which the company has tie-ups/partnerships/collaborations and where the customer&rsquo;s profile matches the NBFC eligibility criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our company&rsquo;s services are strictly for the residents of India only &ndash; not for the non-residents. If any non-resident purchases our Subscription, they can request for a refund as per the company&rsquo;s Cancellation &amp; Refund Policy.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">In case a customer has mistakenly made more than a single payment, the customer will be eligible to get a refund. The customer will have to request a refund within 48 hours of the payment through the Raising A Request section of the website or by calling on the company&rsquo;s registered contact number.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">In case a customer has bought Subscriptions from multiple companies that belong to our group of companies, the customer will be eligible to get a refund. The customer will have to request a refund within 48 hours of the payment through the Raising A Request section of the website or by calling on the company&rsquo;s registered contact number.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>PRE-APPROVAL LOAN OFFER TERMS AND CONDITIONS:</strong></span></h3>\r\n\r\n<p dir=\"ltr\">The Pre-Approved Loan Offer and the amount mentioned in it are solely shown based on the software calculation done on Monthly Income and Current Monthly EMI entered by the person. This &quot;Pre-Approved Loan Offer&quot; is tentative and not the final loan approval (this is already mentioned on the Pre-Approved loan Offer page) &ndash; as the final loan approval is given by the bank only; based on the bank&rsquo;s rules and regulations and the customer profile. And this is clearly stated in the company&rsquo;s Terms &amp; Conditions which is agreed by the person before registration.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Here&#39;s an example to know how the &lsquo;Pre-Approved Loan Offer&rsquo; is shown:</p>\r\n\r\n<p dir=\"ltr\"><br />\r\nConsider that a person (named &lsquo;Rajesh&rsquo;) enters the following details in our website:</p>\r\n\r\n<p dir=\"ltr\"><br />\r\nMonthly Income: Rs.1,00,000<br />\r\nCurrent Monthly EMI: Rs.30,000</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Based on these details, Rajesh is left with Rs.70,000 in hand (deducting current EMI) every month. So, according to the general rules of the banks, the EMI of 50% of the in-hand amount can be approved. So, the loan amount that allows a maximum of Rs.35,000 (70,000/2) EMI can be approved. And based on the EMI and rate of interest (11% tentatively), the eligible amount is shown in the Pre-Approved Loan Offer. And based on this Rs.1903/lakh EMI is shown.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>CANDIDATE TERMS AND CONDITIONS</strong></span></h3>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The interview time is fixed.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The interview can&#39;t be taken any other time than the time decided by the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;The Company can ask any questions in the interview.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The candidate will have to appear for the interview as many times as the company asks.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">A resume (Xerox) will be mandatory for the interview. The resume will not be returned. There will be no misuse of the resume.</p>\r\n	</li>\r\n</ol>\r\n\r\n<h3 dir=\"ltr\">&nbsp;</h3>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>USAGE OF COOKIES / COOKIES POLICY</strong></span></h3>\r\n\r\n<p dir=\"ltr\">Cookies are small files that a site or its service provider transfers to your computer&#39;s hard drive through your web browser with your permission which enables the site or service provider&#39;s systems to recognize your browser and capture and remember certain information. We use cookies to help us understand and save your preferences for future visits, keep track of advertisements and compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools in the future.</p>\r\n\r\n<p dir=\"ltr\">The user, customer, or any other person accessing our website clearly expresses and agrees that they have fully read and understood the Terms &amp; Conditions and Privacy Policy of AP Loannwala &ndash; and they accept them unconditionally.</p>', '2024-01-26 12:27:05', 1);
INSERT INTO `info_pages` (`id`, `slug`, `content`, `rec_date`, `status`) VALUES
(3, 'disclaimer', '<p dir=\"ltr\">AP Loannwala and its customers and employees use and present www.aploannwala.com (the &ldquo;Website&rdquo;) for personal and informational purposes only. In addition, we further expressly disclaim any warranties or representations (expressed or implied) in respect of quality, suitability, accuracy, reliability, completeness, timeliness, performance for a particular purpose, or legality of the services listed or displayed or transacted or the content on the website. You must not perceive and construe any such information or other material as legal, tax, investment, financial, or other advice. You completely acknowledge and undertake that you are accessing the services on the AP Loannwala&rsquo;s website and transacting at your own risk only and are using your best and most prudent judgement before entering into and making any transactions through the website. You alone assume the sole responsibility of evaluating the merits and risks associated with the use of any information or other Content contained on the AP Loannwala&rsquo;s Website before making any decisions based on such information or other Content.</p>\r\n\r\n<p dir=\"ltr\">Nothing contained on our Website constitutes a solicitation, recommendation, endorsement, or offer by AP Loannwala to buy or sell any securities or other financial instruments in this or in any other jurisdiction in which such solicitation or offer would be unlawful under the securities laws of such jurisdiction. You further acknowledge that at no time shall any right, title, or interest in the services sold through or displayed on the website vest with AP Loannwala, nor shall AP Loannwala have any obligations or liabilities in respect of any transactions on the website.</p>\r\n\r\n<p dir=\"ltr\">After you enter your details on our website for any purpose, the company takes no responsibility in case you come across instances of data misusage of any form.</p>', '2024-01-26 12:27:54', 1),
(4, 'refund-policy', '<p dir=\"ltr\"><span style=\"font-size:20px\"><strong>We believe in putting customer satisfaction first!</strong></span><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:20px\"><strong>What circumstances make the AP Loannwala Subscription Plan fee refundable?</strong></span></p>\r\n\r\n<p dir=\"ltr\">&middot; A customer can be eligible for a refund if an e-mail requesting a refund is sent by the customer (with the registered email ID) to info@aploannwala.com within 30 days of purchasing the Subscription Plan. The customer will receive their refund (if eligible) within 24 to 48 hours of receiving the mail.</p>\r\n\r\n<p dir=\"ltr\">&middot; Our company does not provide services in all areas. If you purchased the Subscription Plan and live in one of these areas/locations, you can request a refund within 30 days of purchase. To know the areas where our company does not provide services, please call on +91-9271759598.</p>\r\n\r\n<p dir=\"ltr\">&middot; A customer might get a refund of the Subscription Plan fee if the company hasn&rsquo;t started the &lsquo;Customer Service Initiation&rsquo; (explained below) within 48 hours of the payment and a request for the same has been raised through Raise A Request within 30 days of the payment.</p>\r\n\r\n<p dir=\"ltr\">&middot; If the customer is unable to communicate with the company in English, Hindi, or Gujarati, they can apply for a refund within 30 days of purchasing the Subscription Plan.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:20px\"><strong>What does Customer Service Initiation mean?</strong></span></p>\r\n\r\n<p dir=\"ltr\">It is the first process done by the company that includes calling the customer for verification within 24-48 hours of the Subscription Plan payment. Even if the customer does not respond to the verification call, the Customer Service Initiation is considered started, and the update has been shown in the customer portal.</p>\r\n\r\n<p dir=\"ltr\">If you have any questions about our Cancellation and Refund Policy, please contact us between 10 am and 5 pm (only business days):</p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\"><span style=\"font-family:Arial\">● By email: <a href=\"mailto:info@aploanwala.com?subject=Refund%20Regarding\">info@aploanwala.com</a></span></span></span><br />\r\n<span dir=\"LTR\"><span style=\"font-family:Arial\"><span style=\"font-family:Arial\">● By call: </span><strong><a href=\"tel:+919271759598\">+91 92717 59598</a></strong></span></span></span></span></p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:135px; position:absolute; top:484.125px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '2024-01-26 12:27:54', 1),
(5, 'welcome-message', '<h1 dir=\"ltr\">&nbsp;</h1>\r\n\r\n<h4 dir=\"ltr\" style=\"text-align:center\"><span style=\"font-size:16px\"><strong>Happy Ganesh Visarjan</strong></span></h4>\r\n\r\n<h4 dir=\"ltr\" style=\"text-align:center\"><br />\r\n<span style=\"font-size:14px\">Hello, Our Office will Remain closed on 06/09/2025 due to Ganesh Visarjan&nbsp;Thanks, aploanwala</span></h4>', '2024-02-23 06:00:52', 2),
(6, 'account-message', '<p style=\"text-align:center\"><strong>Happy Holi</strong><strong> </strong><br />\r\nHello, our Office will remain closed on 14/03/2025 due to Holi Thanks,aploanwala</p>', '2024-02-23 06:50:30', 1),
(7, 'sa_facebookdomain', '#', '2024-02-23 07:10:20', 1),
(8, 'sa_facebookpixelkey', '#', '2024-02-23 07:10:20', 1),
(9, 'sa_facebookaccesstoken', '#', '2024-02-23 07:10:45', 1),
(10, 'sa_facebookeventname', '#', '2024-02-23 07:11:04', 1),
(11, 'sa_facebookeventid', '#', '2024-02-23 07:11:19', 1),
(12, 'la_facebookdomain', '#', '2024-11-21 08:37:01', 1),
(13, 'la_facebookpixelkey', '#', '2024-11-21 08:37:01', 1),
(14, 'la_facebookaccesstoken', '#', '2024-11-21 08:37:01', 1),
(15, 'la_facebookeventname', '#', '2024-11-21 08:37:01', 1),
(16, 'la_facebookeventid', '#', '2024-11-21 08:37:01', 1),
(17, 'sa-wp-remarketing', '#', '2025-02-27 20:11:42', 1),
(18, 'sa-wp-getoffer', '#', '2025-02-27 20:11:42', 1),
(19, 'sa-wp-payment-success', '#', '2025-02-27 20:11:42', 1),
(20, 'sa-wp-username-password', '#', '2025-02-27 20:11:42', 1),
(21, 'la-wp-remarketing', '#', '2025-02-27 20:11:42', 1),
(22, 'la-wp-getoffer', '#', '2025-02-27 20:11:42', 1),
(23, 'la-wp-payment-success', '#', '2025-02-27 20:11:42', 1),
(24, 'la-wp-username-password', '#', '2025-02-27 20:11:42', 1),
(25, 'self-apply', NULL, '2025-03-13 22:20:08', 1),
(26, 'loan-agent', NULL, '2025-03-13 22:20:08', 1),
(27, 'sa-senderid', '#', '2025-05-21 20:29:37', 1),
(28, 'la-senderid', '#', '2025-05-21 20:29:37', 1),
(29, 'common-senderid', '#', '2025-05-21 20:31:39', 1),
(30, 'sa-senderid-otp', '#', '2025-05-21 20:29:37', 1),
(31, 'la-senderid-otp', '#', '2025-05-21 20:29:37', 1),
(32, 'lat-senderid', '#', '2025-07-24 09:49:41', 1),
(33, 'lat-senderid-otp', '#', '2025-07-24 09:49:41', 1),
(34, 'lat_facebookdomain', '#', '2025-08-02 10:51:01', 1),
(35, 'lat_facebookpixelkey', '#', '2025-08-02 10:50:51', 1),
(36, 'lat_facebookaccesstoken', '#', '2025-08-02 10:51:50', 1),
(37, 'lat_facebookeventname', '#', '2025-08-02 10:52:00', 1),
(38, 'lat_facebookeventid', '#', '2025-08-02 10:53:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `interakt_settings`
--

CREATE TABLE `interakt_settings` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `product` varchar(255) NOT NULL COMMENT 'SA, LA',
  `type` varchar(199) NOT NULL COMMENT 'remarketing, getoffer, pgsuccess,pgfailed',
  `template_name` varchar(255) DEFAULT NULL,
  `img_url` text DEFAULT NULL,
  `api_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interakt_settings`
--

INSERT INTO `interakt_settings` (`id`, `rec_date`, `product`, `type`, `template_name`, `img_url`, `api_key`) VALUES
(1, '2025-06-24 18:09:01', 'SA', 'remarketing', '#', '#', '#'),
(2, '2025-06-24 18:09:01', 'LA', 'remarketing', '#', '#', '#'),
(3, '2025-06-24 18:13:32', 'SA', 'getoffer', '#', '#', '#'),
(4, '2025-06-24 18:14:15', 'LA', 'getoffer', '#', '#', '#'),
(5, '2025-07-18 20:59:04', 'SA', 'blog', '#', '#', '#'),
(6, '2025-07-24 18:24:58', 'LAT', 'getoffer', '#', '#', '#'),
(7, '2025-08-07 18:28:24', 'LAT', 'remarketing', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  `cardid` int(11) NOT NULL,
  `inv_prefix` varchar(55) DEFAULT NULL,
  `inv_number` int(11) DEFAULT NULL,
  `inv_date` date NOT NULL,
  `inv_price` double NOT NULL DEFAULT 0,
  `inv_cgst` double NOT NULL DEFAULT 0,
  `inv_sgst` double NOT NULL DEFAULT 0,
  `inv_igst` double NOT NULL DEFAULT 0,
  `inv_grandtotal` double NOT NULL DEFAULT 0,
  `remarks` longtext DEFAULT NULL,
  `is_refund` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=not, 1=refund',
  `isdelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=active,1=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loanstatus`
--

CREATE TABLE `loanstatus` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `statusname` varchar(256) NOT NULL,
  `priorityno` int(11) NOT NULL DEFAULT 1,
  `colorclass` varchar(50) NOT NULL,
  `isDelete` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loanstatus`
--

INSERT INTO `loanstatus` (`id`, `rec_date`, `statusname`, `priorityno`, `colorclass`, `isDelete`) VALUES
(1, '2020-10-13 19:30:40', 'Approved', 2, 'success', 0),
(2, '2020-10-13 19:30:40', 'Rejected', 3, 'danger', 0),
(3, '2020-10-13 19:30:40', 'In Process', 1, 'info', 0),
(4, '2021-08-28 08:03:33', 'Query Process', 4, 'warning', 0),
(5, '2021-10-29 05:37:03', 'File Reopen', 5, 'info', 0),
(6, '2022-06-03 09:50:19', 'Verification', 1, 'success', 0),
(7, '2025-05-19 14:00:40', 'Service Calls', 1, 'info', 0),
(8, '2025-05-19 14:00:40', 'Initiated Calls', 1, 'primary', 0),
(9, '2025-05-19 14:00:51', 'Other Calls', 1, 'warning', 0),
(10, '2025-05-19 14:01:49', 'Closed', 1, 'danger', 0),
(11, '2025-07-18 15:04:21', 'Account Closed', 1, 'danger', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loanstatus_remarks`
--

CREATE TABLE `loanstatus_remarks` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `title` varchar(256) NOT NULL,
  `remarks` longtext NOT NULL,
  `statusid` int(11) NOT NULL DEFAULT 0,
  `isDelete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_applications`
--

CREATE TABLE `loan_applications` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `loan_amount` bigint(20) NOT NULL DEFAULT 0,
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=none, 1=salaried, 2=selfemployed',
  `loan_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = personal loan, 2 = business loan',
  `monthly_income` varchar(255) NOT NULL DEFAULT '0',
  `cibilscore` int(11) NOT NULL DEFAULT 0,
  `loan_purpose` varchar(255) NOT NULL DEFAULT 'Personal Use',
  `currentemi` bigint(20) NOT NULL DEFAULT 0,
  `emibounce` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes',
  `application_number` varchar(99) DEFAULT NULL,
  `loantenure` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=New, 2=Approve, 3=Reject',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=active, 1=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_application_status`
--

CREATE TABLE `loan_application_status` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `applicationid` int(11) NOT NULL,
  `statusid` int(11) NOT NULL,
  `statusdate` date DEFAULT NULL,
  `bankid` int(11) NOT NULL,
  `loanamount` int(11) DEFAULT NULL,
  `loanroi` varchar(256) DEFAULT NULL,
  `loanterms` varchar(256) DEFAULT NULL,
  `processfees` int(11) DEFAULT NULL,
  `insurance` varchar(256) DEFAULT NULL,
  `monthlyemi` int(11) DEFAULT NULL,
  `remarks` longtext NOT NULL,
  `sanction_letter` longtext DEFAULT NULL,
  `staffid` int(11) NOT NULL,
  `isDelete` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_applied_history`
--

CREATE TABLE `loan_applied_history` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  `bankid` int(11) NOT NULL,
  `loan_amount` varchar(299) NOT NULL,
  `loan_tenure` varchar(255) NOT NULL,
  `loan_rate` varchar(255) NOT NULL,
  `loan_emi` varchar(255) NOT NULL,
  `isDelete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lyra_entry`
--

CREATE TABLE `lyra_entry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `entryfor` int(11) NOT NULL DEFAULT 0 COMMENT '1=Customer,2=Channel,11=SelfApply,12=Loan Agent, 3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4',
  `userid` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `transactionid` varchar(256) DEFAULT NULL,
  `statuscode` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership_orders`
--

CREATE TABLE `membership_orders` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL,
  `registration_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `card_number` varchar(256) NOT NULL,
  `amount` float(11,2) NOT NULL,
  `paymentid` varchar(256) NOT NULL,
  `isActive` int(11) NOT NULL DEFAULT 1,
  `isDelete` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifications`
--

CREATE TABLE `otp_verifications` (
  `id` int(11) NOT NULL,
  `rec_date` date NOT NULL,
  `mobile` varchar(99) NOT NULL,
  `email` varchar(99) DEFAULT NULL,
  `otp` mediumint(9) NOT NULL,
  `acc_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=none, 1=selfapply, 2=loanagent\r\n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner_tasks`
--

CREATE TABLE `partner_tasks` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `assignees` int(11) NOT NULL,
  `assign_to` varchar(199) NOT NULL,
  `task_title` varchar(199) NOT NULL,
  `task_desc` longtext NOT NULL,
  `attachment` varchar(199) DEFAULT NULL,
  `priority` varchar(99) NOT NULL DEFAULT 'Low',
  `task_module` varchar(255) NOT NULL,
  `task_status` varchar(55) NOT NULL DEFAULT 'Open',
  `completion_date` datetime DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `project_name` varchar(255) NOT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active,0=deactive',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no,1=yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paygic_entry`
--

CREATE TABLE `paygic_entry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `entryfor` int(11) NOT NULL DEFAULT 0 COMMENT '3 - la offer 1\r\n4 - la offer 2\r\n5 - la offer 3\r\n6 - sa offer 1\r\n7 - sa offer 2\r\n8 - sa offer 3\r\n9 - sa offer 4\r\n10 - la offer 4',
  `userid` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phonepe_entry`
--

CREATE TABLE `phonepe_entry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `entryfor` int(11) NOT NULL DEFAULT 0 COMMENT '3 - la offer 1\r\n4 - la offer 2\r\n5 - la offer 3\r\n6 - sa offer 1\r\n7 - sa offer 2\r\n8 - sa offer 3\r\n9 - sa offer 4\r\n10 - la offer 4',
  `userid` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `productname` varchar(256) NOT NULL,
  `productslug` varchar(256) NOT NULL,
  `amount` float(11,2) NOT NULL,
  `offeramount` float(11,2) NOT NULL,
  `inOffer` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `rec_date`, `productname`, `productslug`, `amount`, `offeramount`, `inOffer`) VALUES
(1, '2025-07-05 11:11:29', 'Self Apply', 'self-apply', 999.00, 199.00, 1),
(2, '2025-07-02 11:11:29', 'Hire Loan Agent', 'hire-loan-agent', 1999.00, 499.00, 1),
(3, '2025-07-02 11:11:29', 'LA Offer 1', 'la-offer-1', 1999.00, 499.00, 1),
(4, '2025-07-02 11:11:29', 'LA Offer 2', 'la-offer-2', 1999.00, 499.00, 1),
(5, '2025-07-02 11:11:29', 'LA Offer 3', 'la-offer-3', 1999.00, 499.00, 1),
(6, '2025-07-05 11:11:29', 'SA Offer 3', 'sa-offer-3', 999.00, 199.00, 1),
(7, '2025-07-05 11:11:29', 'SA Offer 2', 'sa-offer-2', 999.00, 199.00, 1),
(8, '2025-07-05 11:11:29', 'SA Offer 1', 'sa-offer-1', 999.00, 199.00, 1),
(9, '2025-07-05 11:11:29', 'SA Offer 4', 'sa-offer-4', 999.00, 199.00, 1),
(10, '2025-07-02 11:11:29', 'LA OFFER 4', 'la-offer-4', 1999.00, 499.00, 1),
(11, '2025-07-05 11:11:29', 'SA OFFER 5', 'sa-offer-5', 999.00, 199.00, 1),
(12, '2025-07-02 11:11:29', 'LA OFFER 5', 'la-offer-5', 1999.00, 499.00, 1),
(13, '2025-07-05 11:11:29', 'SA OFFER 6', 'sa-offer-6', 999.00, 199.00, 1),
(14, '2025-07-02 11:11:29', 'LA OFFER 6', 'la-offer-6', 1999.00, 499.00, 1),
(15, '2025-07-05 11:11:29', 'SA Offer 7', 'sa-offer-7', 999.00, 199.00, 1),
(16, '2025-07-31 14:42:50', 'Loan Assistant', 'loan-assistant', 1299.00, 299.00, 1),
(17, '2025-08-07 13:09:05', 'Top Offer', 'top-offer', 1299.00, 299.00, 1),
(18, '2025-08-07 13:09:44', 'Excel Offer', 'excel-offer', 1299.00, 299.00, 1),
(19, '2025-08-07 13:09:44', 'Special Offer', 'special-offer', 1299.00, 299.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `razorpayentry`
--

CREATE TABLE `razorpayentry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `entryfor` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` int(11) NOT NULL,
  `rec_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `ref_date` date DEFAULT NULL,
  `ref_number` varchar(256) NOT NULL,
  `ref_price` float(11,2) NOT NULL,
  `ref_cgst` float(11,2) NOT NULL,
  `ref_sgst` float(11,2) NOT NULL,
  `ref_igst` float(11,2) NOT NULL,
  `ref_grandtotal` float(11,2) NOT NULL,
  `paymentid` varchar(256) DEFAULT NULL,
  `remarks` varchar(256) DEFAULT NULL,
  `isDelete` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roipackages`
--

CREATE TABLE `roipackages` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `bankid` int(11) NOT NULL,
  `roi` float(11,2) NOT NULL,
  `termsyears` float(11,2) NOT NULL,
  `termsmonths` int(11) NOT NULL,
  `isDelete` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL,
  `services_name` varchar(255) NOT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active, 0 = no active',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = active, 1 = delete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4WsNljkBZvNOBTAmlEdlYCSRWTxTcVMbRzcXMujz', NULL, '116.74.76.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUg1Ym01WXh4aGVXUnI4N0hpaFpuZTNMNEU0YTJFSHExN1hTSGQ2ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vYXBsb2FubndhbGEuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1777005028),
('5zLKDdw37s1RQNgqEx0Q3ojkJeeFBe75Mo2fp4di', NULL, '52.167.144.23', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2U4TUpVU29PRTZEd3liNHBWVHRrSjBpRUVwSjdIdnVnS2NwOExRTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vYXBsb2FubndhbGEuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1777006113),
('ttGTzdNTz8xpSt5XCgCL3IOrlEENm8dbbENXJcii', 1, '116.74.76.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNVRpNTVralJGNzIxN0dnRHB5SXlzMzYzc0dKazhjME5ZZE9SeU5BUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vbWFuYWdlLmFwbG9hbm53YWxhLmNvbS9sb2FuYWdlbnQvY3VzdG9tZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1777005546),
('vqhddnKCibi3cG2qYRv7xbbdrfAsTsrN3U3j2FOI', NULL, '51.161.65.221', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjA4VnFGMUpYcVNYNFBYYUM2UWtJTEh3REhMMm95Sjh4cnFlUDM1YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYXBsb2FubndhbGEuY29tL2NhcmVlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777005444),
('ZBCsyoUJsB70yogoplElDFbAwxFSyyhyoDpiOm68', NULL, '216.244.66.242', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFA2NEI5UGlLek1WaTdKcjlENFZKdmdRTTZneVh2UlYwVzVRRm4xYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9hcGxvYW5ud2FsYS5jb20vY3VzdG9tZXIvZm9yZ2V0LXBhc3N3b3JkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1777001408),
('ZplRYUhsWGvEBDAPLRxx1XZ0nt7jOTW1kkX2O4pF', NULL, '116.74.76.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaG13c3JnTTRuRU13dWFHZWVqWW1LNktnVml6QjR5ZFpYb2ZsaVdqbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vYXBsb2FubndhbGEuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1777005751);

-- --------------------------------------------------------

--
-- Table structure for table `site_options`
--

CREATE TABLE `site_options` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL,
  `option_key` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `site_options`
--

INSERT INTO `site_options` (`id`, `rec_date`, `option_key`, `option_value`) VALUES
(1, '2025-09-26 18:07:07', 'newinvoiceno', '1'),
(2, '2024-04-18 11:05:19', 'account-msg-customer', 'For the Customers who have given other customer referrals to the company, it would be compulsory for them to submit their kyc Documents to the company within 30 days. If not submitted, all the payouts of the Customer will be automatically cancelled To  get the cancelled payout, you can contact the company and discuss it.'),
(3, '2025-02-27 20:11:42', 'sa-wp-remarketing', '#'),
(4, '2025-02-27 20:11:42', 'sa-wp-getoffer', '#'),
(5, '2025-02-27 20:11:42', 'sa-wp-payment-success', '#'),
(6, '2025-02-27 20:11:42', 'sa-wp-username-password', '#'),
(7, '2025-02-27 20:11:42', 'la-wp-remarketing', '#'),
(8, '2025-02-27 20:11:42', 'la-wp-getoffer', '#'),
(9, '2025-02-27 20:11:42', 'la-wp-payment-success', '#'),
(10, '2025-02-27 20:11:42', 'la-wp-username-password', '#'),
(11, '2025-06-03 14:46:05', 'last_agent_id', '#'),
(12, '2025-07-07 13:16:51', 'last_self_agent_id', '#'),
(13, '2025-07-31 09:03:19', 'last_assistant_id', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sms_list`
--

CREATE TABLE `sms_list` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `type` tinyint(4) NOT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `message` mediumtext NOT NULL,
  `isActive` tinyint(4) NOT NULL COMMENT '1=active, 0=not active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sms_list`
--

INSERT INTO `sms_list` (`id`, `rec_date`, `type`, `slug`, `title`, `message`, `isActive`) VALUES
(1, '2025-08-21 17:46:01', 1, 'get_offer', 'Get Offer', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KRDTBZ/xgejd aploanwala', 1),
(2, '2025-08-22 17:04:21', 1, 'remarketing_sms', 'Remarketing SMS', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KRDTBZ/xgejd aploanwala', 1),
(3, '2025-08-12 14:43:13', 1, 'payment_unsuccessful', 'Payment Unsuccessful', 'Dear Customer, Your payment for aploanwala\'s Self-Apply Plan was unsuccessful. Please use alternate payment method. Pay Now https://kbzp.in/KRDTBZ/xgejd', 1),
(4, '2025-05-21 00:41:41', 1, 'payment_successful', 'Payment Successful', 'Dear Customer, Your Payment for Self-Apply Plan has been successful! Check your reg. email and login to customer portal to proceed ahead. Thanks, aploanwala', 1),
(6, '2025-08-26 14:41:01', 2, 'get_offer', 'Get Offer', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KREDBA/idftd aploanwala', 1),
(5, '2025-06-07 15:36:01', 1, 'forgot_password', 'Forgot Password', 'Dear Customer, your new password for aploanwala Customer portal is successfully generated. New password is {#varpassword#}. Thanks, aploanwala', 1),
(7, '2025-08-26 14:39:28', 2, 'remarketing_sms', 'Remarketing SMS', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KREDBA/idftd aploanwala', 1),
(8, '2025-08-27 12:14:50', 2, 'payment_unsuccessful', 'Payment Unsuccessful', 'Dear Customer, Your payment for aploanwala\'s Hire Agent Plan was unsuccessful. Please use alternate payment method. Pay Now https://kbzp.in/KREDBA/idftd', 1),
(9, '2025-05-21 00:45:47', 2, 'payment_successful', 'Payment Successful', 'Dear Customer, Your Payment for Hire Agent Plan has been successful! Check your reg. email and login to customer portal to proceed ahead. Thanks, aploanwala', 1),
(10, '2025-06-07 15:36:30', 2, 'forgot_password', 'Forgot Password', 'Dear Customer, your new password for aploanwala Customer portal is successfully generated. New password is {#varpassword#}. Thanks, aploanwala', 1),
(11, '2025-05-22 14:50:38', 3, 'ticket_raised', 'Support Request  – Ticket Raised', 'Hello, your request ticket is raised in our system & Ticket Id is {#varticket#}. We will contact you within 24-48 hours to discuss further. Regards, aploanwala', 1),
(12, '2025-05-22 14:50:38', 3, 'ticket_underprocess', 'Support Request – Under Process', 'Hello, Your request with Ticket ID: {#varticket#} is under process. The query will be solved soon and it will be informed to you shortly. Thanks, aploanwala', 1),
(13, '2025-05-22 14:56:52', 3, 'ticket_noresponse', 'Support Request – No-response Closed', 'Hello, Your request with Ticket Id: {#varticket#} is closed as the company tried calling you for the last 3 days but got no response. Thanks, aploanwala', 1),
(14, '2025-05-22 14:56:52', 3, 'ticket_solved', 'Support Request – Solved', 'Hello, Your request with Ticket Id: {#varticket#} is Solved. We thank you for the opportunity to serve you. Thanks, aploanwala', 1),
(15, '2025-05-22 14:57:18', 3, 'ticket_closed', 'Support Request – Closed', 'Hello, Your request with Ticket Id: {#varticket#} is Closed. We thank you for the opportunity to serve you. Thanks, aploanwala', 1),
(16, '2025-06-09 17:58:15', 1, 'sales_cycle_days', 'After Sales Cycle - 1,2,3,5 days', 'Dear Customer, We Hope You\'ve Utilised Loan Self Login links. If not, click https://aploanwala.com/customer/login and check Pre-Approved Loan section. Thanks! aploanwala', 1),
(17, '2025-09-10 10:04:47', 1, 'sales_cycle_closed', 'After Sales Cycle - Closed', 'Dear Customer, We hope our services have benefited you. If you\'re still confused how to apply for loan, call our customer care on 9724206519 aploanwala', 1),
(18, '2025-05-22 15:02:47', 2, 'sales_cycle_closed', 'After Sales Cycle - Closed', 'Dear Customer, We hope our services guided you well. If you\'ve any queries, kindly call on 9724206519 Mon-Sat 10am-5pm on business days. Thanks, aploanwala', 1),
(19, '2025-05-27 12:27:50', 2, 'app_remarks_add', 'Application Remarks Add', 'Dear Customer, a new update on your service is displayed on your customer portal. Check here https://aploanwala.com/customer/login aploanwala', 1),
(20, '2025-07-19 12:30:41', 1, 'verified_customer', 'Verified Customer', 'Dear Customer, We hope you will make the most of the guidance provided by our Company Executive. For any further assistance, please call on (9724206519) from Monday-Saturday between (10:00 AM to 5:00 PM) only business days. Thanks, aploanwala', 1),
(21, '2025-08-21 17:38:35', 4, 'get_offer_', 'Get Offer', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KDBAZR/rgvfa aploanwala', 1),
(23, '2025-08-21 17:37:44', 4, 'get_offer', 'Get Offer', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KDBAZR/rgvfa aploanwala', 1),
(24, '2025-09-10 10:14:25', 4, 'payment_unsuccessful', 'Payment Unsucessful', 'Dear Customer, Your payment for aploanwala\'s Loan Assistant Plan was unsuccessful. Please use alternate payment method. Pay Now https://kbzp.in/KDBAZR/rgvfa', 1),
(25, '2025-08-07 19:37:35', 4, 'payment_successful', 'Payment Successful', 'Dear Customer, Your Payment for Loan Assistant Plan has been successful! Check your reg. email and login to customer portal to proceed ahead. Thanks,aploanwala', 1),
(26, '2025-08-07 19:37:35', 4, 'forgot_password', 'Forget Password', 'Dear Customer, your new password for aploanwala Customer portal is successfully generated. New password is {#varpassword#}. Thanks, aploanwala', 1),
(27, '2025-08-11 15:41:32', 4, 'pre_approved', 'Pre Approved', 'Dear Applicant! You`re Eligible for Rs.{#varamount#}/- Pre-Approved Loan Offer! Get Money Direct in Your Bank A/c. Apply Now https://kbzp.in/KDBAZR/rgvfa aploanwala', 1),
(28, '2025-08-21 17:31:17', 4, 'remarketing_sms', 'Remarketing SMS', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KDBAZR/rgvfa aploanwala', 1),
(29, '2025-08-13 15:24:16', 4, 'sales_cycle_closed', 'After Sales Cycle - Closed', 'Dear Customer, We hope our services have benefited you. If you\'re still confused how to apply for loan, call our customer care on 9724206519 aploanwala', 1),
(30, '2025-06-09 17:58:15', 2, 'sales_cycle_days', 'After Sales Cycle - 1,2,3,5 days', 'Dear Customer, We Hope You\'ve Utilised Loan Self Login links. If not, click https://aploanwala.com/customer/login and check Pre-Approved Loan section. Thanks! aploanwala', 1),
(31, '2025-06-09 17:58:15', 4, 'sales_cycle_days', 'After Sales Cycle - 1,2,3,5 days', 'Dear Customer, We Hope You\'ve Utilised Loan Self Login links. If not, click https://aploanwala.com/customer/login and check Pre-Approved Loan section. Thanks! aploanwala', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_log`
--

CREATE TABLE `sms_log` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `crontype` varchar(50) NOT NULL,
  `parentid` int(11) NOT NULL,
  `cronname` varchar(255) NOT NULL,
  `msgcount` int(11) NOT NULL,
  `msgresponse` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `source_entry`
--

CREATE TABLE `source_entry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `utm_source` varchar(125) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `utm_medium` varchar(125) DEFAULT NULL,
  `source_id` varchar(299) DEFAULT NULL,
  `utm_referral` varchar(99) DEFAULT NULL,
  `client_ip` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `source_entry`
--

INSERT INTO `source_entry` (`id`, `rec_date`, `user_id`, `utm_source`, `utm_campaign`, `utm_medium`, `source_id`, `utm_referral`, `client_ip`) VALUES
(1, '2025-12-28 15:11:28', 1, 'web', '', 'direct', NULL, NULL, '127.0.0.1'),
(2, '2026-02-09 11:21:02', 1, 'web', '', 'direct', NULL, NULL, '127.0.0.1'),
(3, '2026-02-09 12:06:41', 2, 'web', '', 'direct', '', '', '127.0.0.1'),
(4, '2026-02-09 12:20:59', 2, 'web', '', 'direct', '', '', '127.0.0.1'),
(5, '2026-02-09 12:23:15', 3, 'web', '', 'direct', NULL, NULL, '127.0.0.1'),
(6, '2026-02-13 10:36:52', 4, 'web', '', 'direct', NULL, NULL, '127.0.0.1'),
(7, '2026-04-08 10:16:37', 1, 'web', '', 'direct', NULL, NULL, '125.99.174.37');

-- --------------------------------------------------------

--
-- Table structure for table `staff_tasks`
--

CREATE TABLE `staff_tasks` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `assignee_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `task_title` varchar(299) NOT NULL,
  `task_desc` longtext NOT NULL,
  `attachment` varchar(299) DEFAULT NULL,
  `priority` varchar(55) NOT NULL,
  `task_module` varchar(199) NOT NULL,
  `task_status` varchar(55) NOT NULL,
  `completion_date` datetime DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `projects` varchar(299) NOT NULL,
  `task_goal` varchar(55) NOT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active, 0= deactive',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0= no, 1= yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subpaisa_entry`
--

CREATE TABLE `subpaisa_entry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `entryfor` int(11) NOT NULL DEFAULT 0 COMMENT '1=Customer,2=Channel,11=SelfApply,12=Loan Agent, 3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4',
  `userid` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_requests`
--

CREATE TABLE `support_requests` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL,
  `ticketno` varchar(50) NOT NULL,
  `usertype` int(11) NOT NULL DEFAULT 1 COMMENT '1 = selfapply, 2 = guest user, 3 = loan agent',
  `firstname` varchar(125) NOT NULL,
  `lastname` varchar(125) NOT NULL,
  `mobile` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `issuetype` varchar(255) NOT NULL,
  `cardnumber` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0=No,1=Yes',
  `serverip` varchar(99) DEFAULT NULL,
  `isDelete` int(11) NOT NULL DEFAULT 0 COMMENT '0=No,1=Yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_request_chat`
--

CREATE TABLE `support_request_chat` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `requestid` int(11) NOT NULL,
  `remarks` longtext NOT NULL,
  `staffid` int(11) NOT NULL,
  `isDelete` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

CREATE TABLE `user_documents` (
  `id` int(11) NOT NULL,
  `rec_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL,
  `profilephoto` varchar(256) DEFAULT NULL,
  `aadharcard` varchar(256) DEFAULT NULL,
  `aadharcard_number` varchar(256) DEFAULT NULL,
  `pancard` varchar(256) DEFAULT NULL,
  `pancard_number` varchar(256) DEFAULT NULL,
  `cancelcheque` varchar(256) DEFAULT NULL,
  `lightbill` varchar(256) DEFAULT NULL,
  `bankstatement` varchar(256) DEFAULT NULL,
  `formsixteen` varchar(256) DEFAULT NULL,
  `salaryslip` varchar(256) DEFAULT NULL,
  `businessproof` varchar(256) DEFAULT NULL,
  `itreturn` varchar(256) DEFAULT NULL,
  `remarks` varchar(256) DEFAULT NULL,
  `isVerified` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_offers`
--

CREATE TABLE `user_offers` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL,
  `offerdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_payout_documents`
--

CREATE TABLE `user_payout_documents` (
  `id` int(11) NOT NULL,
  `rec_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL,
  `gstdoc` varchar(256) DEFAULT NULL,
  `gstdoc_number` varchar(256) DEFAULT NULL,
  `aadharcard` varchar(256) DEFAULT NULL,
  `aadharcard_number` varchar(256) DEFAULT NULL,
  `pancard` varchar(256) DEFAULT NULL,
  `pancard_number` varchar(256) DEFAULT NULL,
  `cancelcheque` varchar(256) DEFAULT NULL,
  `remarks` varchar(256) NOT NULL,
  `isVerified` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_registrations`
--

CREATE TABLE `user_registrations` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `offerpage` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = none, 1 = la offer 1, 2 = la offer 2, 3 = la offer 3, 4 = sa offer 1, 5 = sa offer 2, 6 = sa offer 3, 7 = sa offer 4, 8 = la offer 4, 9 = sa offer 5, 10 = la offer 5',
  `rec_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pancard` varchar(55) DEFAULT NULL,
  `pincode` varchar(55) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(115) DEFAULT NULL,
  `process_step` tinyint(4) NOT NULL DEFAULT 0,
  `refcode` varchar(55) DEFAULT NULL,
  `acc_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=none, 1=selfapply, 2=loan-agent, 3=loan assistant',
  `company_name` varchar(99) DEFAULT NULL,
  `company_gst` varchar(99) DEFAULT NULL,
  `isUser` tinyint(4) NOT NULL DEFAULT 1 COMMENT '\r\n1=steps,2=register',
  `iAgree` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=checked,1=unchecked',
  `isDnd` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes',
  `isVerified` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=active, 1=delete',
  `isActive` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1= active, 0=noactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_tree`
--

CREATE TABLE `user_tree` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `refferaltype` int(11) NOT NULL DEFAULT 1 COMMENT '1=Customer, 2=Channel',
  `refferaluserid` int(11) NOT NULL,
  `subuserid` int(11) NOT NULL,
  `payout` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes',
  `payout_date` date DEFAULT NULL,
  `payout_amount` float(11,2) NOT NULL DEFAULT 0.00,
  `order_amount` float(11,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vegaah_entry`
--

CREATE TABLE `vegaah_entry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `entryfor` int(11) NOT NULL DEFAULT 0 COMMENT '11=SelfApply,12=Loan Agent,3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4	',
  `userid` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zaakpay_entry`
--

CREATE TABLE `zaakpay_entry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT current_timestamp(),
  `entryfor` int(11) NOT NULL DEFAULT 0 COMMENT '11=SelfApply,12=Loan Agent,3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4',
  `userid` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `statuscode` varchar(256) DEFAULT NULL,
  `transactionid` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zwitch_entry`
--

CREATE TABLE `zwitch_entry` (
  `id` int(11) NOT NULL,
  `rec_date` datetime NOT NULL,
  `entryfor` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrations`
--
ALTER TABLE `administrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adscontent`
--
ALTER TABLE `adscontent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airpay_entry`
--
ALTER TABLE `airpay_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aisensy_settings`
--
ALTER TABLE `aisensy_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_remarks`
--
ALTER TABLE `application_remarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_application_id` (`application_id`),
  ADD KEY `administration_id` (`staff_id`);

--
-- Indexes for table `applylink_criteria`
--
ALTER TABLE `applylink_criteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankapplylink`
--
ALTER TABLE `bankapplylink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulksms`
--
ALTER TABLE `bulksms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cardoffer`
--
ALTER TABLE `cardoffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_enquiries`
--
ALTER TABLE `career_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashfree_entry`
--
ALTER TABLE `cashfree_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel_partners`
--
ALTER TABLE `channel_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cipherpayentry`
--
ALTER TABLE `cipherpayentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `click_counts`
--
ALTER TABLE `click_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_enquiry`
--
ALTER TABLE `contact_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria_list`
--
ALTER TABLE `criteria_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enroll_services`
--
ALTER TABLE `enroll_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceid` (`serviceid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fb_ads_entry`
--
ALTER TABLE `fb_ads_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `important_update`
--
ALTER TABLE `important_update`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_pages`
--
ALTER TABLE `info_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interakt_settings`
--
ALTER TABLE `interakt_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `loanstatus`
--
ALTER TABLE `loanstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loanstatus_remarks`
--
ALTER TABLE `loanstatus_remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_applications`
--
ALTER TABLE `loan_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `loan_application_status`
--
ALTER TABLE `loan_application_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_applied_history`
--
ALTER TABLE `loan_applied_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lyra_entry`
--
ALTER TABLE `lyra_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_orders`
--
ALTER TABLE `membership_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_tasks`
--
ALTER TABLE `partner_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paygic_entry`
--
ALTER TABLE `paygic_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phonepe_entry`
--
ALTER TABLE `phonepe_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpayentry`
--
ALTER TABLE `razorpayentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roipackages`
--
ALTER TABLE `roipackages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_options`
--
ALTER TABLE `site_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_list`
--
ALTER TABLE `sms_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_log`
--
ALTER TABLE `sms_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source_entry`
--
ALTER TABLE `source_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_tasks`
--
ALTER TABLE `staff_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subpaisa_entry`
--
ALTER TABLE `subpaisa_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_requests`
--
ALTER TABLE `support_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_request_chat`
--
ALTER TABLE `support_request_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_offers`
--
ALTER TABLE `user_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_payout_documents`
--
ALTER TABLE `user_payout_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registrations`
--
ALTER TABLE `user_registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile` (`mobile`);

--
-- Indexes for table `user_tree`
--
ALTER TABLE `user_tree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vegaah_entry`
--
ALTER TABLE `vegaah_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zaakpay_entry`
--
ALTER TABLE `zaakpay_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zwitch_entry`
--
ALTER TABLE `zwitch_entry`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrations`
--
ALTER TABLE `administrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adscontent`
--
ALTER TABLE `adscontent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `airpay_entry`
--
ALTER TABLE `airpay_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aisensy_settings`
--
ALTER TABLE `aisensy_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `application_remarks`
--
ALTER TABLE `application_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applylink_criteria`
--
ALTER TABLE `applylink_criteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bankapplylink`
--
ALTER TABLE `bankapplylink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `bulksms`
--
ALTER TABLE `bulksms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardoffer`
--
ALTER TABLE `cardoffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `career_enquiries`
--
ALTER TABLE `career_enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cashfree_entry`
--
ALTER TABLE `cashfree_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channel_partners`
--
ALTER TABLE `channel_partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cipherpayentry`
--
ALTER TABLE `cipherpayentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `click_counts`
--
ALTER TABLE `click_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_enquiry`
--
ALTER TABLE `contact_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `criteria_list`
--
ALTER TABLE `criteria_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enroll_services`
--
ALTER TABLE `enroll_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fb_ads_entry`
--
ALTER TABLE `fb_ads_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `important_update`
--
ALTER TABLE `important_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `info_pages`
--
ALTER TABLE `info_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `interakt_settings`
--
ALTER TABLE `interakt_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loanstatus`
--
ALTER TABLE `loanstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `loanstatus_remarks`
--
ALTER TABLE `loanstatus_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_applications`
--
ALTER TABLE `loan_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_application_status`
--
ALTER TABLE `loan_application_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_applied_history`
--
ALTER TABLE `loan_applied_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lyra_entry`
--
ALTER TABLE `lyra_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership_orders`
--
ALTER TABLE `membership_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner_tasks`
--
ALTER TABLE `partner_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paygic_entry`
--
ALTER TABLE `paygic_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phonepe_entry`
--
ALTER TABLE `phonepe_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `razorpayentry`
--
ALTER TABLE `razorpayentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roipackages`
--
ALTER TABLE `roipackages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_options`
--
ALTER TABLE `site_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sms_list`
--
ALTER TABLE `sms_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sms_log`
--
ALTER TABLE `sms_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `source_entry`
--
ALTER TABLE `source_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff_tasks`
--
ALTER TABLE `staff_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subpaisa_entry`
--
ALTER TABLE `subpaisa_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_requests`
--
ALTER TABLE `support_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_request_chat`
--
ALTER TABLE `support_request_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_documents`
--
ALTER TABLE `user_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_offers`
--
ALTER TABLE `user_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_payout_documents`
--
ALTER TABLE `user_payout_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_registrations`
--
ALTER TABLE `user_registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_tree`
--
ALTER TABLE `user_tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vegaah_entry`
--
ALTER TABLE `vegaah_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zaakpay_entry`
--
ALTER TABLE `zaakpay_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zwitch_entry`
--
ALTER TABLE `zwitch_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
