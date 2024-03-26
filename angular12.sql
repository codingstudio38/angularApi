-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 05:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angular12`
--

-- --------------------------------------------------------

--
-- Table structure for table `angularuser_tbl`
--

CREATE TABLE `angularuser_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `angularuser_tbl`
--

INSERT INTO `angularuser_tbl` (`id`, `name`, `email`, `password`, `photo`, `created_date`) VALUES
(2, 'Vidyut Mandal', 'vidyut.star006@gmail.com', '123456', '78643_8886.png', '2022-08-04'),
(3, 'Bidyut Mandal', 'vidyut.star004@gmail.com', '132321', '16990_4038.png', '2022-08-04'),
(4, 'Bidyut', 'vidyut.star0064@gmail.com', '344354353', '72195_75832.jpg', '2022-08-04'),
(5, 'Vidyut', 'vidyut@123.com', '344354353', '35418_75832.jpg', '2022-08-04'),
(6, 'Rohit', 'vidyu23t.star006@gmail.com', '23233232', '11634_764461.jpg', '2022-08-04'),
(9, 'sonali', 'vidyut.star00ew6@gmail.com', '453534534', '99867_10570.jpg', '2022-08-04'),
(13, 'Dipti', 'vidyut.star00446@gmail.com', '12345678', '98171_977271.jpg', '2022-08-04'),
(14, 'Apita', 'vidyut.star00c6@gmail.com', '3242343243', '66817_15620.png', '2022-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `country`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Vidyut Mandal', 'vidyut.star006@gmail.com', 'India', '7735501335', 'what to do sir', 'dgdfg', '2022-08-06 00:33:52', '2022-08-06 00:33:52'),
(2, 'Vidyut Mandal', 'vidyut.star006@gmail.com', 'Austria', '2423434324', '34234', '234324', '2022-08-06 03:22:43', '2022-08-06 03:22:43'),
(3, 'Vidyut Mandal', 'vidyut.star006@gmail.com', 'Australia', '8763699746', '24', '234', '2022-08-06 03:23:33', '2022-08-06 03:23:33'),
(4, 'Vidyut Mandal', 'vidyut.star006@gmail.com', 'Åland Islands', '7735501335', '234', '23434', '2022-08-06 03:24:26', '2022-08-06 03:24:26'),
(5, 'Vidyut Mandal', 'vidyut.star006@gmail.com', 'Åland Islands', '7735501335', 'what to do sir234', '234234', '2022-08-06 03:25:05', '2022-08-06 03:25:05'),
(6, 'Vidyut Mandal', 'vidyut.star006@gmail.com', 'Afghanistan', '7735501335', '24234', '234234', '2022-08-06 03:26:58', '2022-08-06 03:26:58'),
(7, 'Vidyut Mandal', 'vidyut.star006@gmail.com', 'Afghanistan', '7735501335', 'a', 'asdasd', '2022-08-06 09:46:35', '2022-08-06 09:46:35'),
(8, 'Vidyut Mandal', 'vidyut.star006@gmail.com', 'Andorra', '3453345555', '345', '354353', '2022-08-16 20:13:00', '2022-08-16 20:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `code` varchar(250) DEFAULT NULL,
  `timezone` varchar(250) DEFAULT NULL,
  `utc` varchar(250) DEFAULT NULL,
  `mobileCode` varchar(250) DEFAULT NULL,
  `flag` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `code`, `timezone`, `utc`, `mobileCode`, `flag`) VALUES
(1, 'Afghanistan', 'AF', 'Afghanistan Standard Time', 'UTC+04:30', '+93', 'https://cdn.kcak11.com/CountryFlags/countries/af.svg'),
(2, 'Åland Islands', 'AX', 'FLE Standard Time', 'UTC+02:00', '+358-18', 'https://cdn.kcak11.com/CountryFlags/countries/ax.svg'),
(3, 'Albania', 'AL', 'Central Europe Standard Time', 'UTC+01:00', '+355', 'https://cdn.kcak11.com/CountryFlags/countries/al.svg'),
(4, 'American Samoa', 'AS', 'UTC-11', 'UTC-11:00', '+1-684', 'https://cdn.kcak11.com/CountryFlags/countries/as.svg'),
(5, 'Algeria', 'DZ', 'W. Central Africa Standard Time', 'UTC+01:00', '+213', 'https://cdn.kcak11.com/CountryFlags/countries/dz.svg'),
(6, 'Angola', 'AO', 'W. Central Africa Standard Time', 'UTC+01:00', '+244', 'https://cdn.kcak11.com/CountryFlags/countries/ao.svg'),
(7, 'Anguilla', 'AI', 'SA Western Standard Time', 'UTC-04:00', '+1-264', 'https://cdn.kcak11.com/CountryFlags/countries/ai.svg'),
(8, 'Antarctica', 'AQ', 'Pacific SA Standard Time', 'UTC-03:00', '+672', 'https://cdn.kcak11.com/CountryFlags/countries/aq.svg'),
(9, 'Antigua and Barbuda', 'AG', 'SA Western Standard Time', 'UTC-04:00', '+1-268', 'https://cdn.kcak11.com/CountryFlags/countries/ag.svg'),
(10, 'Argentina', 'AR', 'Argentina Standard Time', 'UTC-03:00', '+54', 'https://cdn.kcak11.com/CountryFlags/countries/ar.svg'),
(11, 'Armenia', 'AM', 'Caucasus Standard Time', 'UTC+04:00', '+374', 'https://cdn.kcak11.com/CountryFlags/countries/am.svg'),
(12, 'Aruba', 'AW', 'SA Western Standard Time', 'UTC-04:00', '+297', 'https://cdn.kcak11.com/CountryFlags/countries/aw.svg'),
(13, 'Australia', 'AU', 'AUS Eastern Standard Time', 'UTC+10:00', '+61', 'https://cdn.kcak11.com/CountryFlags/countries/au.svg'),
(14, 'Andorra', 'AD', 'W. Europe Standard Time', 'UTC+01:00', '+376', 'https://cdn.kcak11.com/CountryFlags/countries/ad.svg'),
(15, 'Austria', 'AT', 'W. Europe Standard Time', 'UTC+01:00', '+43', 'https://cdn.kcak11.com/CountryFlags/countries/at.svg'),
(16, 'Bahamas, The', 'BS', 'Eastern Standard Time', 'UTC-05:00', '+1-242', 'https://cdn.kcak11.com/CountryFlags/countries/bs.svg'),
(17, 'Azerbaijan', 'AZ', 'Azerbaijan Standard Time', 'UTC+04:00', '+994', 'https://cdn.kcak11.com/CountryFlags/countries/az.svg'),
(18, 'Bahrain', 'BH', 'Arab Standard Time', 'UTC+03:00', '+973', 'https://cdn.kcak11.com/CountryFlags/countries/bh.svg'),
(19, 'Bangladesh', 'BD', 'Bangladesh Standard Time', 'UTC+06:00', '+880', 'https://cdn.kcak11.com/CountryFlags/countries/bd.svg'),
(20, 'Barbados', 'BB', 'SA Western Standard Time', 'UTC-04:00', '+1-246', 'https://cdn.kcak11.com/CountryFlags/countries/bb.svg'),
(21, 'Belgium', 'BE', 'Romance Standard Time', 'UTC+01:00', '+32', 'https://cdn.kcak11.com/CountryFlags/countries/be.svg'),
(22, 'Belarus', 'BY', 'Belarus Standard Time', 'UTC+03:00', '+375', 'https://cdn.kcak11.com/CountryFlags/countries/by.svg'),
(23, 'Belize', 'BZ', 'Central America Standard Time', 'UTC-06:00', '+501', 'https://cdn.kcak11.com/CountryFlags/countries/bz.svg'),
(24, 'Benin', 'BJ', 'W. Central Africa Standard Time', 'UTC+01:00', '+229', 'https://cdn.kcak11.com/CountryFlags/countries/bj.svg'),
(25, 'Bermuda', 'BM', 'Atlantic Standard Time', 'UTC-04:00', '+1-441', 'https://cdn.kcak11.com/CountryFlags/countries/bm.svg'),
(26, 'Bolivarian Republic of Venezuela', 'VE', 'Venezuela Standard Time', 'UTC-04:30', '+58', 'https://cdn.kcak11.com/CountryFlags/countries/ve.svg'),
(27, 'Bhutan', 'BT', 'Bangladesh Standard Time', 'UTC+06:00', '+975', 'https://cdn.kcak11.com/CountryFlags/countries/bt.svg'),
(28, 'Bolivia', 'BO', 'SA Western Standard Time', 'UTC-04:00', '+591', 'https://cdn.kcak11.com/CountryFlags/countries/bo.svg'),
(29, 'Bosnia and Herzegovina', 'BA', 'Central European Standard Time', 'UTC+01:00', '+387', 'https://cdn.kcak11.com/CountryFlags/countries/ba.svg'),
(30, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'SA Western Standard Time', 'UTC-04:00', '+599', 'https://cdn.kcak11.com/CountryFlags/countries/bq.svg'),
(31, 'Bouvet Island', 'BV', 'UTC', 'UTC', '+47', 'https://cdn.kcak11.com/CountryFlags/countries/bv.svg'),
(32, 'Botswana', 'BW', 'South Africa Standard Time', 'UTC+02:00', '+267', 'https://cdn.kcak11.com/CountryFlags/countries/bw.svg'),
(33, 'Brazil', 'BR', 'E. South America Standard Time', 'UTC-03:00', '+55', 'https://cdn.kcak11.com/CountryFlags/countries/br.svg'),
(34, 'British Indian Ocean Territory', 'IO', 'Central Asia Standard Time', 'UTC+06:00', '+246', 'https://cdn.kcak11.com/CountryFlags/countries/io.svg'),
(35, 'Brunei', 'BN', 'Singapore Standard Time', 'UTC+08:00', '+673', 'https://cdn.kcak11.com/CountryFlags/countries/bn.svg'),
(36, 'Burundi', 'BI', 'South Africa Standard Time', 'UTC+02:00', '+257', 'https://cdn.kcak11.com/CountryFlags/countries/bi.svg'),
(37, 'Burkina Faso', 'BF', 'Greenwich Standard Time', 'UTC', '+226', 'https://cdn.kcak11.com/CountryFlags/countries/bf.svg'),
(38, 'Cabo Verde', 'CV', 'Cape Verde Standard Time', 'UTC-01:00', '+238', 'https://cdn.kcak11.com/CountryFlags/countries/cv.svg'),
(39, 'Bulgaria', 'BG', 'FLE Standard Time', 'UTC+02:00', '+359', 'https://cdn.kcak11.com/CountryFlags/countries/bg.svg'),
(40, 'Cambodia', 'KH', 'SE Asia Standard Time', 'UTC+07:00', '+855', 'https://cdn.kcak11.com/CountryFlags/countries/kh.svg'),
(41, 'Cameroon', 'CM', 'W. Central Africa Standard Time', 'UTC+01:00', '+237', 'https://cdn.kcak11.com/CountryFlags/countries/cm.svg'),
(42, 'Canada', 'CA', 'Eastern Standard Time', 'UTC-05:00', '+1', 'https://cdn.kcak11.com/CountryFlags/countries/ca.svg'),
(43, 'Cayman Islands', 'KY', 'SA Pacific Standard Time', 'UTC-05:00', '+1-345', 'https://cdn.kcak11.com/CountryFlags/countries/ky.svg'),
(44, 'Central African Republic', 'CF', 'W. Central Africa Standard Time', 'UTC+01:00', '+236', 'https://cdn.kcak11.com/CountryFlags/countries/cf.svg'),
(45, 'Chad', 'TD', 'W. Central Africa Standard Time', 'UTC+01:00', '+235', 'https://cdn.kcak11.com/CountryFlags/countries/td.svg'),
(46, 'Chile', 'CL', 'Pacific SA Standard Time', 'UTC-03:00', '+56', 'https://cdn.kcak11.com/CountryFlags/countries/cl.svg'),
(47, 'China', 'CN', 'China Standard Time', 'UTC+08:00', '+86', 'https://cdn.kcak11.com/CountryFlags/countries/cn.svg'),
(48, 'Christmas Island', 'CX', 'SE Asia Standard Time', 'UTC+07:00', '+61', 'https://cdn.kcak11.com/CountryFlags/countries/cx.svg'),
(49, 'Cocos (Keeling) Islands', 'CC', 'Myanmar Standard Time', 'UTC+06:30', '+61', 'https://cdn.kcak11.com/CountryFlags/countries/cc.svg'),
(50, 'Colombia', 'CO', 'SA Pacific Standard Time', 'UTC-05:00', '+57', 'https://cdn.kcak11.com/CountryFlags/countries/co.svg'),
(51, 'Comoros', 'KM', 'E. Africa Standard Time', 'UTC+03:00', '+269', 'https://cdn.kcak11.com/CountryFlags/countries/km.svg'),
(52, 'Congo', 'CG', 'W. Central Africa Standard Time', 'UTC+01:00', '+242', 'https://cdn.kcak11.com/CountryFlags/countries/cg.svg'),
(53, 'Congo (DRC)', 'CD', 'W. Central Africa Standard Time', 'UTC+01:00', '+243', 'https://cdn.kcak11.com/CountryFlags/countries/cd.svg'),
(54, 'Cook Islands', 'CK', 'Hawaiian Standard Time', 'UTC-10:00', '+682', 'https://cdn.kcak11.com/CountryFlags/countries/ck.svg'),
(55, 'Costa Rica', 'CR', 'Central America Standard Time', 'UTC-06:00', '+506', 'https://cdn.kcak11.com/CountryFlags/countries/cr.svg'),
(56, 'Côte d\'Ivoire', 'CI', 'Greenwich Standard Time', 'UTC', '+225', 'https://cdn.kcak11.com/CountryFlags/countries/ci.svg'),
(57, 'Croatia', 'HR', 'Central European Standard Time', 'UTC+01:00', '+385', 'https://cdn.kcak11.com/CountryFlags/countries/hr.svg'),
(58, 'Cuba', 'CU', 'Eastern Standard Time', 'UTC-05:00', '+53', 'https://cdn.kcak11.com/CountryFlags/countries/cu.svg'),
(59, 'Curaçao', 'CW', 'SA Western Standard Time', 'UTC-04:00', '+599', 'https://cdn.kcak11.com/CountryFlags/countries/cw.svg'),
(60, 'Cyprus', 'CY', 'E. Europe Standard Time', 'UTC+02:00', '+357', 'https://cdn.kcak11.com/CountryFlags/countries/cy.svg'),
(61, 'Czech Republic', 'CZ', 'Central Europe Standard Time', 'UTC+01:00', '+420', 'https://cdn.kcak11.com/CountryFlags/countries/cz.svg'),
(62, 'Democratic Republic of Timor-Leste', 'TL', 'Tokyo Standard Time', 'UTC+09:00', '+670', 'https://cdn.kcak11.com/CountryFlags/countries/tl.svg'),
(63, 'Denmark', 'DK', 'Romance Standard Time', 'UTC+01:00', '+45', 'https://cdn.kcak11.com/CountryFlags/countries/dk.svg'),
(64, 'Djibouti', 'DJ', 'E. Africa Standard Time', 'UTC+03:00', '+253', 'https://cdn.kcak11.com/CountryFlags/countries/dj.svg'),
(65, 'Dominica', 'DM', 'SA Western Standard Time', 'UTC-04:00', '+1-767', 'https://cdn.kcak11.com/CountryFlags/countries/dm.svg'),
(66, 'Dominican Republic', 'DO', 'SA Western Standard Time', 'UTC-04:00', '+1-809 and 1-829', 'https://cdn.kcak11.com/CountryFlags/countries/do.svg'),
(67, 'Ecuador', 'EC', 'SA Pacific Standard Time', 'UTC-05:00', '+593', 'https://cdn.kcak11.com/CountryFlags/countries/ec.svg'),
(68, 'Egypt', 'EG', 'Egypt Standard Time', 'UTC+02:00', '+20', 'https://cdn.kcak11.com/CountryFlags/countries/eg.svg'),
(69, 'El Salvador', 'SV', 'Central America Standard Time', 'UTC-06:00', '+503', 'https://cdn.kcak11.com/CountryFlags/countries/sv.svg'),
(70, 'Equatorial Guinea', 'GQ', 'W. Central Africa Standard Time', 'UTC+01:00', '+240', 'https://cdn.kcak11.com/CountryFlags/countries/gq.svg'),
(71, 'Eritrea', 'ER', 'E. Africa Standard Time', 'UTC+03:00', '+291', 'https://cdn.kcak11.com/CountryFlags/countries/er.svg'),
(72, 'Estonia', 'EE', 'FLE Standard Time', 'UTC+02:00', '+372', 'https://cdn.kcak11.com/CountryFlags/countries/ee.svg'),
(73, 'Falkland Islands (Islas Malvinas)', 'FK', 'SA Eastern Standard Time', 'UTC-03:00', '+500', 'https://cdn.kcak11.com/CountryFlags/countries/fk.svg'),
(74, 'Ethiopia', 'ET', 'E. Africa Standard Time', 'UTC+03:00', '+251', 'https://cdn.kcak11.com/CountryFlags/countries/et.svg'),
(75, 'Faroe Islands', 'FO', 'GMT Standard Time', 'UTC', '+298', 'https://cdn.kcak11.com/CountryFlags/countries/fo.svg'),
(76, 'Fiji Islands', 'FJ', 'Fiji Standard Time', 'UTC+12:00', '+679', 'https://cdn.kcak11.com/CountryFlags/countries/fj.svg'),
(77, 'Finland', 'FI', 'FLE Standard Time', 'UTC+02:00', '+358', 'https://cdn.kcak11.com/CountryFlags/countries/fi.svg'),
(78, 'France', 'FR', 'Romance Standard Time', 'UTC+01:00', '+33', 'https://cdn.kcak11.com/CountryFlags/countries/fr.svg'),
(79, 'French Guiana', 'GF', 'SA Eastern Standard Time', 'UTC-03:00', '+594', 'https://cdn.kcak11.com/CountryFlags/countries/gf.svg'),
(80, 'French Polynesia', 'PF', 'Hawaiian Standard Time', 'UTC-10:00', '+689', 'https://cdn.kcak11.com/CountryFlags/countries/pf.svg'),
(81, 'French Southern and Antarctic Lands', 'TF', 'West Asia Standard Time', 'UTC+05:00', '+262', 'https://cdn.kcak11.com/CountryFlags/countries/tf.svg'),
(82, 'Gabon', 'GA', 'W. Central Africa Standard Time', 'UTC+01:00', '+241', 'https://cdn.kcak11.com/CountryFlags/countries/ga.svg'),
(83, 'Gambia, The', 'GM', 'Greenwich Standard Time', 'UTC', '+220', 'https://cdn.kcak11.com/CountryFlags/countries/gm.svg'),
(84, 'Georgia', 'GE', 'Georgian Standard Time', 'UTC+04:00', '+995', 'https://cdn.kcak11.com/CountryFlags/countries/ge.svg'),
(85, 'Germany', 'DE', 'W. Europe Standard Time', 'UTC+01:00', '+49', 'https://cdn.kcak11.com/CountryFlags/countries/de.svg'),
(86, 'Ghana', 'GH', 'Greenwich Standard Time', 'UTC', '+233', 'https://cdn.kcak11.com/CountryFlags/countries/gh.svg'),
(87, 'Greece', 'GR', 'GTB Standard Time', 'UTC+02:00', '+30', 'https://cdn.kcak11.com/CountryFlags/countries/gr.svg'),
(88, 'Gibraltar', 'GI', 'W. Europe Standard Time', 'UTC+01:00', '+350', 'https://cdn.kcak11.com/CountryFlags/countries/gi.svg'),
(89, 'Grenada', 'GD', 'SA Western Standard Time', 'UTC-04:00', '+1-473', 'https://cdn.kcak11.com/CountryFlags/countries/gd.svg'),
(90, 'Greenland', 'GL', 'Greenland Standard Time', 'UTC-03:00', '+299', 'https://cdn.kcak11.com/CountryFlags/countries/gl.svg'),
(91, 'Guadeloupe', 'GP', 'SA Western Standard Time', 'UTC-04:00', '+590', 'https://cdn.kcak11.com/CountryFlags/countries/gp.svg'),
(92, 'Guam', 'GU', 'West Pacific Standard Time', 'UTC+10:00', '+1-671', 'https://cdn.kcak11.com/CountryFlags/countries/gu.svg'),
(93, 'Guatemala', 'GT', 'Central America Standard Time', 'UTC-06:00', '+502', 'https://cdn.kcak11.com/CountryFlags/countries/gt.svg'),
(94, 'Guinea', 'GN', 'Greenwich Standard Time', 'UTC', '+224', 'https://cdn.kcak11.com/CountryFlags/countries/gn.svg'),
(95, 'Guernsey', 'GG', 'GMT Standard Time', 'UTC', '+44-1481', 'https://cdn.kcak11.com/CountryFlags/countries/gg.svg'),
(96, 'Guinea-Bissau', 'GW', 'Greenwich Standard Time', 'UTC', '+245', 'https://cdn.kcak11.com/CountryFlags/countries/gw.svg'),
(97, 'Haiti', 'HT', 'Eastern Standard Time', 'UTC-05:00', '+509', 'https://cdn.kcak11.com/CountryFlags/countries/ht.svg'),
(98, 'Guyana', 'GY', 'SA Western Standard Time', 'UTC-04:00', '+592', 'https://cdn.kcak11.com/CountryFlags/countries/gy.svg'),
(99, 'Heard Island and McDonald Islands', 'HM', 'Mauritius Standard Time', 'UTC+04:00', '+672', 'https://cdn.kcak11.com/CountryFlags/countries/hm.svg'),
(100, 'Honduras', 'HN', 'Central America Standard Time', 'UTC-06:00', '+504', 'https://cdn.kcak11.com/CountryFlags/countries/hn.svg'),
(101, 'Hong Kong SAR', 'HK', 'China Standard Time', 'UTC+08:00', '+852', 'https://cdn.kcak11.com/CountryFlags/countries/hk.svg'),
(102, 'Hungary', 'HU', 'Central Europe Standard Time', 'UTC+01:00', '+36', 'https://cdn.kcak11.com/CountryFlags/countries/hu.svg'),
(103, 'Iceland', 'IS', 'Greenwich Standard Time', 'UTC', '+354', 'https://cdn.kcak11.com/CountryFlags/countries/is.svg'),
(104, 'India', 'IN', 'India Standard Time', 'UTC+05:30', '+91', 'https://cdn.kcak11.com/CountryFlags/countries/in.svg'),
(105, 'Indonesia', 'ID', 'SE Asia Standard Time', 'UTC+07:00', '+62', 'https://cdn.kcak11.com/CountryFlags/countries/id.svg'),
(106, 'Iran', 'IR', 'Iran Standard Time', 'UTC+03:30', '+98', 'https://cdn.kcak11.com/CountryFlags/countries/ir.svg'),
(107, 'Iraq', 'IQ', 'Arabic Standard Time', 'UTC+03:00', '+964', 'https://cdn.kcak11.com/CountryFlags/countries/iq.svg'),
(108, 'Ireland', 'IE', 'GMT Standard Time', 'UTC', '+353', 'https://cdn.kcak11.com/CountryFlags/countries/ie.svg'),
(109, 'Italy', 'IT', 'W. Europe Standard Time', 'UTC+01:00', '+39', 'https://cdn.kcak11.com/CountryFlags/countries/it.svg'),
(110, 'Israel', 'IL', 'Israel Standard Time', 'UTC+02:00', '+972', 'https://cdn.kcak11.com/CountryFlags/countries/il.svg'),
(111, 'Jamaica', 'JM', 'SA Pacific Standard Time', 'UTC-05:00', '+1-876', 'https://cdn.kcak11.com/CountryFlags/countries/jm.svg'),
(112, 'Jan Mayen', 'SJ', 'W. Europe Standard Time', 'UTC+01:00', '+47', 'https://cdn.kcak11.com/CountryFlags/countries/sj.svg'),
(113, 'Japan', 'JP', 'Tokyo Standard Time', 'UTC+09:00', '+81', 'https://cdn.kcak11.com/CountryFlags/countries/jp.svg'),
(114, 'Jersey', 'JE', 'GMT Standard Time', 'UTC', '+44-1534', 'https://cdn.kcak11.com/CountryFlags/countries/je.svg'),
(115, 'Jordan', 'JO', 'Jordan Standard Time', 'UTC+02:00', '+962', 'https://cdn.kcak11.com/CountryFlags/countries/jo.svg'),
(116, 'Kazakhstan', 'KZ', 'Central Asia Standard Time', 'UTC+06:00', '+7', 'https://cdn.kcak11.com/CountryFlags/countries/kz.svg'),
(117, 'Kenya', 'KE', 'E. Africa Standard Time', 'UTC+03:00', '+254', 'https://cdn.kcak11.com/CountryFlags/countries/ke.svg'),
(118, 'Kiribati', 'KI', 'UTC+12', 'UTC+12:00', '+686', 'https://cdn.kcak11.com/CountryFlags/countries/ki.svg'),
(119, 'Korea', 'KR', 'Korea Standard Time', 'UTC+09:00', '+82', 'https://cdn.kcak11.com/CountryFlags/countries/kr.svg'),
(120, 'Kosovo', 'XK', 'Central European Standard Time', 'UTC+01:00', '+', 'https://cdn.kcak11.com/CountryFlags/countries/xk.svg'),
(121, 'Kuwait', 'KW', 'Arab Standard Time', 'UTC+03:00', '+965', 'https://cdn.kcak11.com/CountryFlags/countries/kw.svg'),
(122, 'Kyrgyzstan', 'KG', 'Central Asia Standard Time', 'UTC+06:00', '+996', 'https://cdn.kcak11.com/CountryFlags/countries/kg.svg'),
(123, 'Laos', 'LA', 'SE Asia Standard Time', 'UTC+07:00', '+856', 'https://cdn.kcak11.com/CountryFlags/countries/la.svg'),
(124, 'Latvia', 'LV', 'FLE Standard Time', 'UTC+02:00', '+371', 'https://cdn.kcak11.com/CountryFlags/countries/lv.svg'),
(125, 'Lebanon', 'LB', 'Middle East Standard Time', 'UTC+02:00', '+961', 'https://cdn.kcak11.com/CountryFlags/countries/lb.svg'),
(126, 'Lesotho', 'LS', 'South Africa Standard Time', 'UTC+02:00', '+266', 'https://cdn.kcak11.com/CountryFlags/countries/ls.svg'),
(127, 'Liechtenstein', 'LI', 'W. Europe Standard Time', 'UTC+01:00', '+423', 'https://cdn.kcak11.com/CountryFlags/countries/li.svg'),
(128, 'Liberia', 'LR', 'Greenwich Standard Time', 'UTC', '+231', 'https://cdn.kcak11.com/CountryFlags/countries/lr.svg'),
(129, 'Libya', 'LY', 'E. Europe Standard Time', 'UTC+02:00', '+218', 'https://cdn.kcak11.com/CountryFlags/countries/ly.svg'),
(130, 'Lithuania', 'LT', 'FLE Standard Time', 'UTC+02:00', '+370', 'https://cdn.kcak11.com/CountryFlags/countries/lt.svg'),
(131, 'Macao SAR', 'MO', 'China Standard Time', 'UTC+08:00', '+853', 'https://cdn.kcak11.com/CountryFlags/countries/mo.svg'),
(132, 'Luxembourg', 'LU', 'W. Europe Standard Time', 'UTC+01:00', '+352', 'https://cdn.kcak11.com/CountryFlags/countries/lu.svg'),
(133, 'Macedonia, Former Yugoslav Republic of', 'MK', 'Central European Standard Time', 'UTC+01:00', '+389', 'https://cdn.kcak11.com/CountryFlags/countries/mk.svg'),
(134, 'Madagascar', 'MG', 'E. Africa Standard Time', 'UTC+03:00', '+261', 'https://cdn.kcak11.com/CountryFlags/countries/mg.svg'),
(135, 'Malawi', 'MW', 'South Africa Standard Time', 'UTC+02:00', '+265', 'https://cdn.kcak11.com/CountryFlags/countries/mw.svg'),
(136, 'Malaysia', 'MY', 'Singapore Standard Time', 'UTC+08:00', '+60', 'https://cdn.kcak11.com/CountryFlags/countries/my.svg'),
(137, 'Maldives', 'MV', 'West Asia Standard Time', 'UTC+05:00', '+960', 'https://cdn.kcak11.com/CountryFlags/countries/mv.svg'),
(138, 'Man, Isle of', 'IM', 'GMT Standard Time', 'UTC', '+44-1624', 'https://cdn.kcak11.com/CountryFlags/countries/im.svg'),
(139, 'Malta', 'MT', 'W. Europe Standard Time', 'UTC+01:00', '+356', 'https://cdn.kcak11.com/CountryFlags/countries/mt.svg'),
(140, 'Mali', 'ML', 'Greenwich Standard Time', 'UTC', '+223', 'https://cdn.kcak11.com/CountryFlags/countries/ml.svg'),
(141, 'Marshall Islands', 'MH', 'UTC+12', 'UTC+12:00', '+692', 'https://cdn.kcak11.com/CountryFlags/countries/mh.svg'),
(142, 'Martinique', 'MQ', 'SA Western Standard Time', 'UTC-04:00', '+596', 'https://cdn.kcak11.com/CountryFlags/countries/mq.svg'),
(143, 'Mauritania', 'MR', 'Greenwich Standard Time', 'UTC', '+222', 'https://cdn.kcak11.com/CountryFlags/countries/mr.svg'),
(144, 'Mauritius', 'MU', 'Mauritius Standard Time', 'UTC+04:00', '+230', 'https://cdn.kcak11.com/CountryFlags/countries/mu.svg'),
(145, 'Mayotte', 'YT', 'E. Africa Standard Time', 'UTC+03:00', '+262', 'https://cdn.kcak11.com/CountryFlags/countries/yt.svg'),
(146, 'Mexico', 'MX', 'Central Standard Time (Mexico)', 'UTC-06:00', '+52', 'https://cdn.kcak11.com/CountryFlags/countries/mx.svg'),
(147, 'Micronesia', 'FM', 'West Pacific Standard Time', 'UTC+10:00', '+691', 'https://cdn.kcak11.com/CountryFlags/countries/fm.svg'),
(148, 'Moldova', 'MD', 'GTB Standard Time', 'UTC+02:00', '+373', 'https://cdn.kcak11.com/CountryFlags/countries/md.svg'),
(149, 'Monaco', 'MC', 'W. Europe Standard Time', 'UTC+01:00', '+377', 'https://cdn.kcak11.com/CountryFlags/countries/mc.svg'),
(150, 'Montenegro', 'ME', 'Central European Standard Time', 'UTC+01:00', '+382', 'https://cdn.kcak11.com/CountryFlags/countries/me.svg'),
(151, 'Mozambique', 'MZ', 'South Africa Standard Time', 'UTC+02:00', '+258', 'https://cdn.kcak11.com/CountryFlags/countries/mz.svg'),
(152, 'Morocco', 'MA', 'Morocco Standard Time', 'UTC', '+212', 'https://cdn.kcak11.com/CountryFlags/countries/ma.svg'),
(153, 'Montserrat', 'MS', 'SA Western Standard Time', 'UTC-04:00', '+1-664', 'https://cdn.kcak11.com/CountryFlags/countries/ms.svg'),
(154, 'Mongolia', 'MN', 'Ulaanbaatar Standard Time', 'UTC+08:00', '+976', 'https://cdn.kcak11.com/CountryFlags/countries/mn.svg'),
(155, 'Myanmar', 'MM', 'Myanmar Standard Time', 'UTC+06:30', '+95', 'https://cdn.kcak11.com/CountryFlags/countries/mm.svg'),
(156, 'Namibia', 'NA', 'Namibia Standard Time', 'UTC+01:00', '+264', 'https://cdn.kcak11.com/CountryFlags/countries/na.svg'),
(157, 'Netherlands', 'NL', 'W. Europe Standard Time', 'UTC+01:00', '+31', 'https://cdn.kcak11.com/CountryFlags/countries/nl.svg'),
(158, 'Nepal', 'NP', 'Nepal Standard Time', 'UTC+05:45', '+977', 'https://cdn.kcak11.com/CountryFlags/countries/np.svg'),
(159, 'New Caledonia', 'NC', 'Central Pacific Standard Time', 'UTC+11:00', '+687', 'https://cdn.kcak11.com/CountryFlags/countries/nc.svg'),
(160, 'Nauru', 'NR', 'UTC+12', 'UTC+12:00', '+674', 'https://cdn.kcak11.com/CountryFlags/countries/nr.svg'),
(161, 'New Zealand', 'NZ', 'New Zealand Standard Time', 'UTC+12:00', '+64', 'https://cdn.kcak11.com/CountryFlags/countries/nz.svg'),
(162, 'Niger', 'NE', 'W. Central Africa Standard Time', 'UTC+01:00', '+227', 'https://cdn.kcak11.com/CountryFlags/countries/ne.svg'),
(163, 'Nicaragua', 'NI', 'Central America Standard Time', 'UTC-06:00', '+505', 'https://cdn.kcak11.com/CountryFlags/countries/ni.svg'),
(164, 'Norfolk Island', 'NF', 'Central Pacific Standard Time', 'UTC+11:00', '+672', 'https://cdn.kcak11.com/CountryFlags/countries/nf.svg'),
(165, 'Nigeria', 'NG', 'W. Central Africa Standard Time', 'UTC+01:00', '+234', 'https://cdn.kcak11.com/CountryFlags/countries/ng.svg'),
(166, 'Niue', 'NU', 'UTC-11', 'UTC-11:00', '+683', 'https://cdn.kcak11.com/CountryFlags/countries/nu.svg'),
(167, 'North Korea', 'KP', 'Korea Standard Time', 'UTC+09:00', '+850', 'https://cdn.kcak11.com/CountryFlags/countries/kp.svg'),
(168, 'Northern Mariana Islands', 'MP', 'West Pacific Standard Time', 'UTC+10:00', '+1-670', 'https://cdn.kcak11.com/CountryFlags/countries/mp.svg'),
(169, 'Norway', 'NO', 'W. Europe Standard Time', 'UTC+01:00', '+47', 'https://cdn.kcak11.com/CountryFlags/countries/no.svg'),
(170, 'Oman', 'OM', 'Arabian Standard Time', 'UTC+04:00', '+968', 'https://cdn.kcak11.com/CountryFlags/countries/om.svg'),
(171, 'Palau', 'PW', 'Tokyo Standard Time', 'UTC+09:00', '+680', 'https://cdn.kcak11.com/CountryFlags/countries/pw.svg'),
(172, 'Palestinian Authority', 'PS', 'Egypt Standard Time', 'UTC+02:00', '+970', 'https://cdn.kcak11.com/CountryFlags/countries/ps.svg'),
(173, 'Pakistan', 'PK', 'Pakistan Standard Time', 'UTC+05:00', '+92', 'https://cdn.kcak11.com/CountryFlags/countries/pk.svg'),
(174, 'Panama', 'PA', 'SA Pacific Standard Time', 'UTC-05:00', '+507', 'https://cdn.kcak11.com/CountryFlags/countries/pa.svg'),
(175, 'Papua New Guinea', 'PG', 'West Pacific Standard Time', 'UTC+10:00', '+675', 'https://cdn.kcak11.com/CountryFlags/countries/pg.svg'),
(176, 'Peru', 'PE', 'SA Pacific Standard Time', 'UTC-05:00', '+51', 'https://cdn.kcak11.com/CountryFlags/countries/pe.svg'),
(177, 'Paraguay', 'PY', 'Paraguay Standard Time', 'UTC-04:00', '+595', 'https://cdn.kcak11.com/CountryFlags/countries/py.svg'),
(178, 'Philippines', 'PH', 'Singapore Standard Time', 'UTC+08:00', '+63', 'https://cdn.kcak11.com/CountryFlags/countries/ph.svg'),
(179, 'Pitcairn Islands', 'PN', 'Pacific Standard Time', 'UTC-08:00', '+870', 'https://cdn.kcak11.com/CountryFlags/countries/pn.svg'),
(180, 'Poland', 'PL', 'Central European Standard Time', 'UTC+01:00', '+48', 'https://cdn.kcak11.com/CountryFlags/countries/pl.svg'),
(181, 'Portugal', 'PT', 'GMT Standard Time', 'UTC', '+351', 'https://cdn.kcak11.com/CountryFlags/countries/pt.svg'),
(182, 'Puerto Rico', 'PR', 'SA Western Standard Time', 'UTC-04:00', '+1-787 and 1-939', 'https://cdn.kcak11.com/CountryFlags/countries/pr.svg'),
(183, 'Qatar', 'QA', 'Arab Standard Time', 'UTC+03:00', '+974', 'https://cdn.kcak11.com/CountryFlags/countries/qa.svg'),
(184, 'Romania', 'RO', 'GTB Standard Time', 'UTC+02:00', '+40', 'https://cdn.kcak11.com/CountryFlags/countries/ro.svg'),
(185, 'Reunion', 'RE', 'Mauritius Standard Time', 'UTC+04:00', '+262', 'https://cdn.kcak11.com/CountryFlags/countries/re.svg'),
(186, 'Russia', 'RU', 'Russian Standard Time', 'UTC+03:00', '+7', 'https://cdn.kcak11.com/CountryFlags/countries/ru.svg'),
(187, 'Rwanda', 'RW', 'South Africa Standard Time', 'UTC+02:00', '+250', 'https://cdn.kcak11.com/CountryFlags/countries/rw.svg'),
(188, 'Saint Barthélemy', 'BL', 'SA Western Standard Time', 'UTC-04:00', '+590', 'https://cdn.kcak11.com/CountryFlags/countries/bl.svg'),
(189, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'Greenwich Standard Time', 'UTC', '+290', 'https://cdn.kcak11.com/CountryFlags/countries/sh.svg'),
(190, 'Saint Kitts and Nevis', 'KN', 'SA Western Standard Time', 'UTC-04:00', '+1-869', 'https://cdn.kcak11.com/CountryFlags/countries/kn.svg'),
(191, 'Saint Lucia', 'LC', 'SA Western Standard Time', 'UTC-04:00', '+1-758', 'https://cdn.kcak11.com/CountryFlags/countries/lc.svg'),
(192, 'Saint Pierre and Miquelon', 'PM', 'Greenland Standard Time', 'UTC-03:00', '+508', 'https://cdn.kcak11.com/CountryFlags/countries/pm.svg'),
(193, 'Saint Martin (French part)', 'MF', 'SA Western Standard Time', 'UTC-04:00', '+590', 'https://cdn.kcak11.com/CountryFlags/countries/mf.svg'),
(194, 'Samoa', 'WS', 'Samoa Standard Time', 'UTC+13:00', '+685', 'https://cdn.kcak11.com/CountryFlags/countries/ws.svg'),
(195, 'Saint Vincent and the Grenadines', 'VC', 'SA Western Standard Time', 'UTC-04:00', '+1-784', 'https://cdn.kcak11.com/CountryFlags/countries/vc.svg'),
(196, 'San Marino', 'SM', 'W. Europe Standard Time', 'UTC+01:00', '+378', 'https://cdn.kcak11.com/CountryFlags/countries/sm.svg'),
(197, 'São Tomé and Príncipe', 'ST', 'Greenwich Standard Time', 'UTC', '+239', 'https://cdn.kcak11.com/CountryFlags/countries/st.svg'),
(198, 'Saudi Arabia', 'SA', 'Arab Standard Time', 'UTC+03:00', '+966', 'https://cdn.kcak11.com/CountryFlags/countries/sa.svg'),
(199, 'Senegal', 'SN', 'Greenwich Standard Time', 'UTC', '+221', 'https://cdn.kcak11.com/CountryFlags/countries/sn.svg'),
(200, 'Serbia', 'RS', 'Central Europe Standard Time', 'UTC+01:00', '+381', 'https://cdn.kcak11.com/CountryFlags/countries/rs.svg'),
(201, 'Seychelles', 'SC', 'Mauritius Standard Time', 'UTC+04:00', '+248', 'https://cdn.kcak11.com/CountryFlags/countries/sc.svg'),
(202, 'Sierra Leone', 'SL', 'Greenwich Standard Time', 'UTC', '+232', 'https://cdn.kcak11.com/CountryFlags/countries/sl.svg'),
(203, 'Singapore', 'SG', 'Singapore Standard Time', 'UTC+08:00', '+65', 'https://cdn.kcak11.com/CountryFlags/countries/sg.svg'),
(204, 'Slovakia', 'SK', 'Central Europe Standard Time', 'UTC+01:00', '+421', 'https://cdn.kcak11.com/CountryFlags/countries/sk.svg'),
(205, 'Slovenia', 'SI', 'Central Europe Standard Time', 'UTC+01:00', '+386', 'https://cdn.kcak11.com/CountryFlags/countries/si.svg'),
(206, 'Sint Maarten (Dutch part)', 'SX', 'SA Western Standard Time', 'UTC-04:00', '+599', 'https://cdn.kcak11.com/CountryFlags/countries/sx.svg'),
(207, 'Solomon Islands', 'SB', 'Central Pacific Standard Time', 'UTC+11:00', '+677', 'https://cdn.kcak11.com/CountryFlags/countries/sb.svg'),
(208, 'Somalia', 'SO', 'E. Africa Standard Time', 'UTC+03:00', '+252', 'https://cdn.kcak11.com/CountryFlags/countries/so.svg'),
(209, 'South Africa', 'ZA', 'South Africa Standard Time', 'UTC+02:00', '+27', 'https://cdn.kcak11.com/CountryFlags/countries/za.svg'),
(210, 'South Georgia and the South Sandwich Islands', 'GS', 'UTC-02', 'UTC-02:00', '+', 'https://cdn.kcak11.com/CountryFlags/countries/gs.svg'),
(211, 'South Sudan', 'SS', 'E. Africa Standard Time', 'UTC+03:00', '+211', 'https://cdn.kcak11.com/CountryFlags/countries/ss.svg'),
(212, 'Spain', 'ES', 'Romance Standard Time', 'UTC+01:00', '+34', 'https://cdn.kcak11.com/CountryFlags/countries/es.svg'),
(213, 'Sri Lanka', 'LK', 'Sri Lanka Standard Time', 'UTC+05:30', '+94', 'https://cdn.kcak11.com/CountryFlags/countries/lk.svg'),
(214, 'Sudan', 'SD', 'E. Africa Standard Time', 'UTC+03:00', '+249', 'https://cdn.kcak11.com/CountryFlags/countries/sd.svg'),
(215, 'Svalbard', 'SJ', 'W. Europe Standard Time', 'UTC+01:00', '+47', 'https://cdn.kcak11.com/CountryFlags/countries/sj.svg'),
(216, 'Suriname', 'SR', 'SA Eastern Standard Time', 'UTC-03:00', '+597', 'https://cdn.kcak11.com/CountryFlags/countries/sr.svg'),
(217, 'Sweden', 'SE', 'W. Europe Standard Time', 'UTC+01:00', '+46', 'https://cdn.kcak11.com/CountryFlags/countries/se.svg'),
(218, 'Switzerland', 'CH', 'W. Europe Standard Time', 'UTC+01:00', '+41', 'https://cdn.kcak11.com/CountryFlags/countries/ch.svg'),
(219, 'Swaziland', 'SZ', 'South Africa Standard Time', 'UTC+02:00', '+268', 'https://cdn.kcak11.com/CountryFlags/countries/sz.svg'),
(220, 'Syria', 'SY', 'Syria Standard Time', 'UTC+02:00', '+963', 'https://cdn.kcak11.com/CountryFlags/countries/sy.svg'),
(221, 'Taiwan', 'TW', 'Taipei Standard Time', 'UTC+08:00', '+886', 'https://cdn.kcak11.com/CountryFlags/countries/tw.svg'),
(222, 'Tajikistan', 'TJ', 'West Asia Standard Time', 'UTC+05:00', '+992', 'https://cdn.kcak11.com/CountryFlags/countries/tj.svg'),
(223, 'Tanzania', 'TZ', 'E. Africa Standard Time', 'UTC+03:00', '+255', 'https://cdn.kcak11.com/CountryFlags/countries/tz.svg'),
(224, 'Thailand', 'TH', 'SE Asia Standard Time', 'UTC+07:00', '+66', 'https://cdn.kcak11.com/CountryFlags/countries/th.svg'),
(225, 'Togo', 'TG', 'Greenwich Standard Time', 'UTC', '+228', 'https://cdn.kcak11.com/CountryFlags/countries/tg.svg'),
(226, 'Tonga', 'TO', 'Tonga Standard Time', 'UTC+13:00', '+676', 'https://cdn.kcak11.com/CountryFlags/countries/to.svg'),
(227, 'Tokelau', 'TK', 'Tonga Standard Time', 'UTC+13:00', '+690', 'https://cdn.kcak11.com/CountryFlags/countries/tk.svg'),
(228, 'Trinidad and Tobago', 'TT', 'SA Western Standard Time', 'UTC-04:00', '+1-868', 'https://cdn.kcak11.com/CountryFlags/countries/tt.svg'),
(229, 'Tunisia', 'TN', 'W. Central Africa Standard Time', 'UTC+01:00', '+216', 'https://cdn.kcak11.com/CountryFlags/countries/tn.svg'),
(230, 'Turkey', 'TR', 'Turkey Standard Time', 'UTC+02:00', '+90', 'https://cdn.kcak11.com/CountryFlags/countries/tr.svg'),
(231, 'Turkmenistan', 'TM', 'West Asia Standard Time', 'UTC+05:00', '+993', 'https://cdn.kcak11.com/CountryFlags/countries/tm.svg'),
(232, 'Turks and Caicos Islands', 'TC', 'Eastern Standard Time', 'UTC-05:00', '+1-649', 'https://cdn.kcak11.com/CountryFlags/countries/tc.svg'),
(233, 'Tuvalu', 'TV', 'UTC+12', 'UTC+12:00', '+688', 'https://cdn.kcak11.com/CountryFlags/countries/tv.svg'),
(234, 'U.S. Minor Outlying Islands', 'UM', 'UTC-11', 'UTC-11:00', '+1', NULL),
(235, 'Uganda', 'UG', 'E. Africa Standard Time', 'UTC+03:00', '+256', 'https://cdn.kcak11.com/CountryFlags/countries/ug.svg'),
(236, 'Ukraine', 'UA', 'FLE Standard Time', 'UTC+02:00', '+380', 'https://cdn.kcak11.com/CountryFlags/countries/ua.svg'),
(237, 'United Arab Emirates', 'AE', 'Arabian Standard Time', 'UTC+04:00', '+971', 'https://cdn.kcak11.com/CountryFlags/countries/ae.svg'),
(238, 'United Kingdom', 'GB', 'GMT Standard Time', 'UTC', '+44', 'https://cdn.kcak11.com/CountryFlags/countries/gb.svg'),
(239, 'United States', 'US', 'Pacific Standard Time', 'UTC-08:00', '+1', 'https://cdn.kcak11.com/CountryFlags/countries/us.svg'),
(240, 'Uruguay', 'UY', 'Montevideo Standard Time', 'UTC-03:00', '+598', 'https://cdn.kcak11.com/CountryFlags/countries/uy.svg'),
(241, 'Vanuatu', 'VU', 'Central Pacific Standard Time', 'UTC+11:00', '+678', 'https://cdn.kcak11.com/CountryFlags/countries/vu.svg'),
(242, 'Uzbekistan', 'UZ', 'West Asia Standard Time', 'UTC+05:00', '+998', 'https://cdn.kcak11.com/CountryFlags/countries/uz.svg'),
(243, 'Vatican City', 'VA', 'W. Europe Standard Time', 'UTC+01:00', '+379', 'https://cdn.kcak11.com/CountryFlags/countries/va.svg'),
(244, 'Vietnam', 'VN', 'SE Asia Standard Time', 'UTC+07:00', '+84', 'https://cdn.kcak11.com/CountryFlags/countries/vn.svg'),
(245, 'Virgin Islands, British', 'VG', 'SA Western Standard Time', 'UTC-04:00', '+1-284', 'https://cdn.kcak11.com/CountryFlags/countries/vg.svg'),
(246, 'Virgin Islands, U.S.', 'VI', 'SA Western Standard Time', 'UTC-04:00', '+1-340', 'https://cdn.kcak11.com/CountryFlags/countries/vi.svg'),
(247, 'Wallis and Futuna', 'WF', 'UTC+12', 'UTC+12:00', '+681', 'https://cdn.kcak11.com/CountryFlags/countries/wf.svg'),
(248, 'Yemen', 'YE', 'Arab Standard Time', 'UTC+03:00', '+967', 'https://cdn.kcak11.com/CountryFlags/countries/ye.svg'),
(249, 'Zambia', 'ZM', 'South Africa Standard Time', 'UTC+02:00', '+260', 'https://cdn.kcak11.com/CountryFlags/countries/zm.svg'),
(250, 'Zimbabwe', 'ZW', 'South Africa Standard Time', 'UTC+02:00', '+263', 'https://cdn.kcak11.com/CountryFlags/countries/zw.svg');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_06_23_021424_demo', 1),
(2, '0000_00_00_000000_create_websockets_statistics_entries_table', 2),
(3, '2014_10_12_000000_create_users_table', 2),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(5, '2019_08_19_000000_create_failed_jobs_table', 2),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(7, '2022_05_22_075726_create_multiples_table', 3),
(8, '2022_05_26_162049_create_multiples_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `multiples`
--

CREATE TABLE `multiples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `multiples_data`
--

CREATE TABLE `multiples_data` (
  `id` int(11) NOT NULL,
  `cid` varchar(200) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `qty` varchar(250) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `currentdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `multiples_data`
--

INSERT INTO `multiples_data` (`id`, `cid`, `name`, `price`, `qty`, `photo`, `currentdate`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '1', 'multiple_58452_2779758.jpg', '2022-06-15 13:16:28', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(2, '1', '2', '2', '2', 'multiple_32814_6468458.jpg', '2022-06-15 13:16:28', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(3, '1', '3', '3', '3', 'multiple_72412_6105330.jpg', '2022-06-15 13:16:28', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(4, '2', '1', '1', '1', 'multiple_41311_2779758.jpg', '2022-06-15 13:16:35', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(5, '2', '2', '2', '2', 'multiple_76736_6468458.jpg', '2022-06-15 13:16:35', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(6, '2', '3', '3', '3', 'multiple_88612_6105330.jpg', '2022-06-15 13:16:35', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(7, '3', '1', '3', '2', 'multiple_28299_31126.jpg', '2022-06-18 01:44:31', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(8, '3', '1', '3', '2', 'multiple_76940_6105330.jpg', '2022-06-18 01:44:31', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(9, '3', '1', '3', '2', 'multiple_84100_1230664.jpg', '2022-06-18 01:44:31', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(14, '3', '1', '3', '2', 'multiple_93420_1133693.jpg', '2022-06-19 06:42:19', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(16, '3', '4', '4', '4', NULL, '2022-06-24 14:58:18', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(17, '4', '2w', '2w', '2w', 'multiple_78531_99017.jpg', '2022-10-17 02:00:16', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(18, '6', '1', '2', '2', 'multiple_52627_99017.jpg', '2022-10-17 02:03:05', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(19, '6', '2', '2', '2', 'multiple_95155_38504.png', '2022-10-17 02:03:05', '2024-03-16 07:06:18', '2024-03-16 07:06:48'),
(20, '4', '2', '2', '22', 'multiple_78979_38504.png', '2022-10-17 02:06:27', '2024-03-16 07:06:18', '2024-03-16 07:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `multiples_users`
--

CREATE TABLE `multiples_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `multiples_user_data`
--

CREATE TABLE `multiples_user_data` (
  `id` int(11) NOT NULL,
  `cname` varchar(300) DEFAULT NULL,
  `cemail` varchar(300) DEFAULT NULL,
  `cphone` varchar(300) DEFAULT NULL,
  `currentdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `multiples_user_data`
--

INSERT INTO `multiples_user_data` (`id`, `cname`, `cemail`, `cphone`, `currentdate`, `update_date`) VALUES
(1, 'Vidyut Mandal', 'vidyut.star006@gmail.com', '9876584321', '2022-06-15 13:16:26', '2022-06-18 01:45:46'),
(2, 'bidyut Mandal', 'vidyut.star0061@gmail.com', '9876548321', '2022-06-15 13:16:33', '2022-06-18 01:45:44'),
(3, 'vk kumar', 'vidyut.star006@gmail.com', '1234567890', '2022-06-18 01:44:30', '2022-06-19 13:50:02'),
(4, 'vs fdsfsd fs', 'vidyut.star006@gmail.com', '1234567890', '2022-10-17 02:00:16', '2022-10-17 02:00:16'),
(5, 'Vidyut Mandal', 'vidyut.star006@gmail.com', '12456', '2022-10-17 02:00:44', '2022-10-17 02:00:44'),
(6, 'Vidyut Mandal', 'vidyut.star006@gmail.com', '12456', '2022-10-17 02:03:05', '2022-10-17 02:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `myblog_logindetails_tbl`
--

CREATE TABLE `myblog_logindetails_tbl` (
  `id` int(11) NOT NULL,
  `tokenable_id` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `tokenable_type` longtext DEFAULT NULL,
  `user_agent` varchar(300) NOT NULL,
  `last_used_at` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myblog_logindetails_tbl`
--

INSERT INTO `myblog_logindetails_tbl` (`id`, `tokenable_id`, `email`, `token`, `tokenable_type`, `user_agent`, `last_used_at`, `created_at`, `updated_at`, `status`) VALUES
(1, '2', 'mondalbidyut38@gmail.com', 'a110a06658c42a075b15ca005e67608b6029c7b1ad00818680982e1e85ca407e', 'http://127.0.0.1:8000/myblog/access/viewallmultidata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', '2022-06-23 08:29:51 PM', '2022-06-23 14:58:00', '2024-01-31 13:39:46', 'Expired'),
(2, '2', 'mondalbidyut38@gmail.com', '4f4d19c5c8bf883824a54cdd8e8ca775a5e7faca55dfb34baa78c731ac67f420', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', '2022-06-23 08:30:43 PM', '2022-06-23 15:00:09', '2024-01-31 13:39:46', 'Expired'),
(3, '2', 'mondalbidyut38@gmail.com', '3b9e951deabd2c3c3a46422e445eac226819a8a7bfd6859ddea8bc72be445052', 'http://127.0.0.1:8000/myblog/access/multiusersearch/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', '2022-07-15 08:46:21 PM', '2022-06-24 14:47:19', '2024-01-31 13:39:46', 'Expired'),
(4, '2', 'mondalbidyut38@gmail.com', '0eaba0b7c0c20ac9724147f642f0370bcc43226c3512b0ce9ea7fd3346c542a0', 'http://127.0.0.1:8000/myblog/access/viewallmultidata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', '2022-07-16 07:56:32 AM', '2022-07-16 02:25:35', '2024-01-31 13:39:46', 'Expired'),
(5, '2', 'mondalbidyut38@gmail.com', 'ac97643a5be733bf02d5ff061b2d7fe8314bff29f91c6a239df5c41be6344675', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', '2022-07-31 01:19:21 PM', '2022-07-31 07:49:17', '2024-01-31 13:39:46', 'Expired'),
(6, '2', 'mondalbidyut38@gmail.com', '52468b2064c91194fd75732f8599a1519de55dd30c604b073f20bdf1c9f7137b', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', '2022-08-02 07:56:59 AM', '2022-08-02 01:39:32', '2024-01-31 13:39:46', 'Expired'),
(7, '2', 'mondalbidyut38@gmail.com', 'c7293d81459683135c469f401d390989721cc2fac01a6c745dd2b7a68575239e', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', '2022-08-02 07:58:03 AM', '2022-08-02 02:27:50', '2024-01-31 13:39:46', 'Expired'),
(8, '2', 'mondalbidyut38@gmail.com', '24fb96b624f2cd87ba6cd8386e77e017162fe5ab7ff451fc356701f1a432675f', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', '2022-08-03 07:30:45 AM', '2022-08-02 16:07:40', '2024-01-31 13:39:46', 'Expired'),
(9, '2', 'mondalbidyut38@gmail.com', '12e5a26b74727b551470517bd9df7112f2449f9fbaa1bd5d24edce07ad317c69', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', '2022-08-04 07:06:27 AM', '2022-08-03 15:50:00', '2024-01-31 13:39:46', 'Expired'),
(10, '2', 'mondalbidyut38@gmail.com', 'e557006f2e88bb4907e737436d844cbb56bf02effaad24dc1e6df463dff53797', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-04 09:26:51 PM', '2022-08-04 01:36:38', '2024-01-31 13:39:46', 'Expired'),
(11, '3', 'mondalbidyut38@gmail.com', '599d9793e80bfe8cc00ae9f7d4d783b2feada9fa671e46083f7c067ba4323953', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:53:17 AM', '2022-08-07 02:51:55', '2024-01-31 13:39:57', 'Expired'),
(12, '3', 'mondalbidyut38@gmail.com', '4b296ad093fe3fd58c036ec899f93258f5e5c019e9e6aaf106793d0dbd38e485', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 02:51:21 PM', '2022-08-07 08:33:04', '2024-01-31 13:39:57', 'Expired'),
(13, '3', 'mondalbidyut38@gmail.com', 'b30314f3b8ba8233380f623000e3d68fdac94f5f78d8b227586a81c78080fb8d', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2022-09-14 09:32:51 PM', '2022-09-14 15:50:20', '2024-01-31 13:39:57', 'Expired'),
(14, '3', 'mondalbidyut38@gmail.com', '3628bf29c182c1a05fda387a730fe676f42ce064cc0f6362e73cdf285d5a35e4', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, '2022-09-20 14:42:19', '2024-01-31 13:39:57', 'Expired'),
(15, '3', 'mondalbidyut38@gmail.com', '518b917ee45225ad9316517ba8da46158fc49f629c10c439746920cadc5b6bab', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2022-09-20 08:15:35 PM', '2022-09-20 14:42:19', '2024-01-31 13:39:57', 'Expired'),
(16, '3', 'mondalbidyut38@gmail.com', '56fe2976afbd4a54303d60ff2ab5357cd7dde7835c23633727b8b3e1d3a64313', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '2022-10-17 07:48:45 AM', '2022-10-17 01:48:32', '2024-01-31 13:39:57', 'Expired'),
(17, '3', 'mondalbidyut38@gmail.com', '05cdb2d382e3938d2fac9bb76396b5e18987a989d9e31b23822d22ae26960fc8', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '2022-11-07 09:26:00 PM', '2022-11-07 15:47:48', '2024-01-31 13:39:57', 'Expired'),
(18, '3', 'mondalbidyut38@gmail.com', 'aa2cfd8afd6ddb4cf41b3ae0b0ac4ba49552677793578905f67fbe3a8ed264bd', 'http://127.0.0.1:8000/myblog/access/viewalltbldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2023-01-05 02:31:46 PM', '2023-01-05 08:56:02', '2024-01-31 13:39:57', 'Expired'),
(19, '3', 'mondalbidyut38@gmail.com', '8010a290526311ac8575cbd2133b259505b48896fab8081962c42f77c1c4d965', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2023-01-05 04:37:54 PM', '2023-01-05 11:07:17', '2024-01-31 13:39:57', 'Expired'),
(20, '3', 'mondalbidyut38@gmail.com', '5f5bfa4f47c1776a132cbef70acf4d94c8c5e6362b9c0e24402f00874ab6b3f5', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-21 07:01:10 AM', '2023-03-21 01:29:02', '2024-01-31 13:39:57', 'Expired'),
(21, '4', 'mondalbidyut38@gmail.com', 'bbe51ac0bb6cad06f2492396d5d489e3331c50e996fab27c85de59c21883eb09', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-21 07:03:19 AM', '2023-03-21 01:31:22', '2024-01-31 13:40:08', 'Expired'),
(22, '4', 'mondalbidyut38@gmail.com', 'ec485c5264886e3637df454a50449800caa8e74a28af91854638a069d565d007', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-31 08:28:32 PM', '2023-05-31 14:06:05', '2024-01-31 13:40:08', 'Expired'),
(23, '4', 'mondalbidyut38@gmail.com', '381781073743953b17a536e78cc6febc0533aa4ba267433256e14834ccfa3311', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-04 08:50:04 AM', '2023-06-04 03:15:50', '2024-01-31 13:40:08', 'Expired'),
(24, '4', 'mondalbidyut38@gmail.com', '52899075a1771097519cc0bac3a6666c160301560a76ae9a6796da96a64d0eed', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-05 08:46:09 PM', '2023-06-05 14:31:35', '2024-01-31 13:40:08', 'Expired'),
(25, '4', 'mondalbidyut38@gmail.com', '70a443688ef71a9d461c4b245df5dfdb9d57e2ce1abd90dff8967bf50335dc46', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-07 06:54:39 AM', '2023-06-07 01:24:37', '2024-01-31 13:40:08', 'Expired'),
(26, '4', 'mondalbidyut38@gmail.com', '33031cfbd653f8f25d8116d8cf716941ae1dd58d8c1cb749fe69b305b5b569e9', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-07 07:56:10 PM', '2023-06-07 13:45:47', '2024-01-31 13:40:08', 'Expired'),
(27, '4', 'mondalbidyut38@gmail.com', 'c06e4104c18400baee6d66cfbbd4cc38997ca30bfd629cbbb80b6d5fe9758ea3', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-08 07:24:17 AM', '2023-06-08 01:19:19', '2024-01-31 13:40:08', 'Expired'),
(28, '4', 'mondalbidyut38@gmail.com', 'dd48c8415c736ed4c1855cb41b5d64869e1048b9b95fd342e3baaba5faad46c7', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-08 08:29:03 PM', '2023-06-08 14:28:35', '2024-01-31 13:40:08', 'Expired'),
(29, '4', 'mondalbidyut38@gmail.com', '0d64c4d0a33c06cdb506d91884c3486eed060bc6e06f68c513e5398847f047ee', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-11 12:02:22 PM', '2023-06-11 06:32:21', '2024-01-31 13:40:08', 'Expired'),
(30, '4', 'mondalbidyut38@gmail.com', 'c548a422473dc24ac4b445858c64ac6b4951082eea7dc99f52781e46e6a82f50', 'http://127.0.0.1:8000/myblog/access/viewallmultidata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-12 04:50:12 PM', '2023-06-12 11:00:24', '2024-01-31 13:40:08', 'Expired'),
(31, '5', 'mondalbidyut38@gmail.com', '0e9014cc9cdb6f9740191da896f4a024c6803392ce1ad78efb71939d15f04ff4', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-12 08:08:32 PM', '2023-06-12 14:22:43', '2024-01-31 13:40:20', 'Expired'),
(32, '5', 'mondalbidyut38@gmail.com', 'a990166d253fdbda42019abf33dd2349db2c13ce0073ab139e54d45ea7ec4694', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-12 08:42:37 PM', '2023-06-12 14:38:52', '2024-01-31 13:40:20', 'Expired'),
(33, '5', 'mondalbidyut38@gmail.com', 'f12ab303334181485f080e2d9de6b888c237483f98b42bb6863a4408e48736f7', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-15 08:12:22 AM', '2023-06-15 02:42:20', '2024-01-31 13:40:20', 'Expired'),
(34, '5', 'mondalbidyut38@gmail.com', 'ed70db1146c472c7259e55d9b172c0b8c58d3632af981e4c5023feb898d4620a', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-15 11:24:58 AM', '2023-06-15 05:54:56', '2024-01-31 13:40:20', 'Expired'),
(35, '5', 'mondalbidyut38@gmail.com', '23f65434ca6f86d3593e092abf9008597b69cb7221adc9e25d997a39252896bf', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-15 09:24:57 PM', '2023-06-15 15:54:56', '2024-01-31 13:40:20', 'Expired'),
(36, '7', 'mondalbidyut38@gmail.com', '03d6174268f0dc81a03d05521bdba97cec16dcddd910400ebf38aac6b35be408', 'http://127.0.0.1:8000/myblog/access/viewallmultidata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-16 08:09:24 PM', '2023-07-16 14:38:38', '2024-01-31 13:40:29', 'Expired'),
(37, '7', 'mondalbidyut38@gmail.com', '6ee45e7352ad6993431b76d0fdc700568f43acba210aafe7ef094185b2352a5d', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-17 06:57:34 AM', '2023-07-17 01:24:59', '2024-01-31 13:40:29', 'Expired'),
(38, '7', 'mondalbidyut38@gmail.com', 'c9cb81ec5bfd00d2b7e54ed1e16f2592c20cc5c5d64db9438c7f20d8e46781dc', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-08 06:43:08 AM', '2023-08-08 01:11:39', '2024-01-31 13:40:29', 'Expired'),
(39, '7', 'mondalbidyut38@gmail.com', 'd49e39e92d7dc7f3d504c436f8acc1576a1dd4949a2142c5b2905567df68d6f8', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-08 07:53:45 PM', '2023-08-08 14:01:09', '2024-01-31 13:40:29', 'Expired'),
(40, '7', 'mondalbidyut38@gmail.com', 'c1dececf08cabe7333fea834b0e3604c47152470a07e72331725a9e0255eb990', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2023-09-06 08:01:44 PM', '2023-09-06 13:51:32', '2024-01-31 13:40:29', 'Expired'),
(41, '8', 'mondalbidyut38@gmail.com', 'db2d17a2377bd65381042f94c150c7cca217d9fc8844185801a5f4a6b0a59851', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-10-07 01:06:59 PM', '2023-10-07 06:10:29', '2024-01-31 13:40:44', 'Expired'),
(42, '8', 'mondalbidyut38@gmail.com', 'd7539e68759c52ea37c3dfcff9e461b86524c16c4474519f97023d2cdfa08259', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-10-07 07:15:30 PM', '2023-10-07 12:34:25', '2024-01-31 13:40:44', 'Expired'),
(43, '8', 'mondalbidyut38@gmail.com', '2303bc6f596ef9ea2046e862d8938bc72246b95f8cfb782e6d41e8246200ee7c', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-10-07 07:31:41 PM', '2023-10-07 13:45:43', '2024-01-31 13:40:44', 'Expired'),
(44, '8', 'mondalbidyut38@gmail.com', '09b81a965a9b12df1f1b6a08e086b4dc8aec691b4d97fba7d1ee98842b33abad', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-07 14:02:06', '2024-01-31 13:40:44', 'Expired'),
(45, '8', 'mondalbidyut38@gmail.com', 'bd0f088688c510782ffdd8eb16acc5e1932ae4bc632e0a207bd39643582bd574', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-10-07 07:50:02 PM', '2023-10-07 14:05:58', '2024-01-31 13:40:44', 'Expired'),
(46, '9', 'mondalbidyut38@gmail.com', '2a28b7c0d5a0c2b71e2f30a629fad55cac1d733169817b795881322ca340f18d', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-07 14:20:17', '2024-01-31 13:41:15', 'Expired'),
(47, '9', 'mondalbidyut38@gmail.com', '79e89ffafda15429774065c5a8b05235709f18905578334dba3ae6ef66d6b05f', 'http://127.0.0.1:8000/myblog/access/testpdf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-10-07 08:58:32 PM', '2023-10-07 14:34:53', '2024-01-31 13:41:15', 'Expired'),
(48, '9', 'mondalbidyut38@gmail.com', 'da0f2ebf3208ac514326550f112d9f7c29ea9791ff825b17329ed0b86208f85e', 'http://127.0.0.1:8000/myblog/access/testpdf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-10-08 09:48:28 AM', '2023-10-08 04:17:33', '2024-01-31 13:41:15', 'Expired'),
(49, '9', 'mondalbidyut38@gmail.com', '9172ffa40d1b284b559c58c03983098da668e5ab34872b78f7b7921e9f665da7', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-10-08 09:48:47 AM', '2023-10-08 04:18:37', '2024-01-31 13:41:15', 'Expired'),
(50, '9', 'mondalbidyut38@gmail.com', 'fdefb03dd40849920416f8c027871ba8d6a5cf63d6b49dda72c50f14bc3f11fa', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-10-08 09:49:12 AM', '2023-10-08 04:19:10', '2024-01-31 13:41:15', 'Expired'),
(51, '10', 'mondalbidyut38@gmail.com', '8f56fa0e8552a1eafcf1c1a173f5d60e3d0dc8dab1e6b2c56979f6516fe646d0', 'http://127.0.0.1:8000/myblog/access/testpdff_data', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-10-08 08:09:29 PM', '2023-10-08 13:26:52', '2024-01-31 13:41:28', 'Expired'),
(52, '10', 'mondalbidyut38@gmail.com', 'ffed5fc267bfb55162aaa5f3e6e6ca6ab20a5a76eed09acb94ede092497aa38c', 'http://127.0.0.1:8000/myblog/access/delete-file', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-10-09 06:52:51 PM', '2023-10-09 13:22:37', '2024-01-31 13:41:28', 'Expired'),
(53, '10', 'mondalbidyut38@gmail.com', 'f92bb507fb538e161491d5352d8c307aba9c801bfae3888aa77309916e08de70', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2023-10-12 07:23:36 PM', '2023-10-12 13:53:34', '2024-01-31 13:41:28', 'Expired'),
(54, '10', 'mondalbidyut38@gmail.com', '1642419132ab0bd76ce2d23385eeb373c7a2c2f69115bf4c5c8f7589e43a6cc5', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2023-10-14 04:21:12 PM', '2023-10-14 10:51:10', '2024-01-31 13:41:28', 'Expired'),
(55, '10', 'mondalbidyut38@gmail.com', '2a1da6e44f284147ed582c61d26193416137abbed02831dd4b85f8e1a4d49c29', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2023-10-14 07:36:12 PM', '2023-10-14 13:45:12', '2024-01-31 13:41:28', 'Expired'),
(56, '10', 'mondalbidyut38@gmail.com', '8a59226cd871c3b2775a36499fa8fd7d8459aec1e84012929809008ca747917d', 'http://127.0.0.1:8000/myblog/access/testpdff_data', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2023-10-15 10:19:42 AM', '2023-10-15 04:49:31', '2024-01-31 13:41:28', 'Expired'),
(57, '10', 'mondalbidyut38@gmail.com', '6938ec74f23d2990e8b03df32cce36576e23513ce7a711ef29f9dea8edd62ba8', 'http://127.0.0.1:8000/myblog/access/testpdff_data', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-08 08:37:59 PM', '2023-11-08 14:48:37', '2024-01-31 13:41:28', 'Expired'),
(58, '1', 'mondalbidyut38@gmail.com', '17aa85e7de21d82c9d2b9e91f7db39b0aa11810d09ccff00f52d45d70dcfeb9d', 'http://127.0.0.1:8000/myblog/access/delete-file', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-01 09:39:24 AM', '2024-02-01 04:09:04', '2024-03-16 05:05:29', 'Expired'),
(59, '1', 'mondalbidyut38@gmail.com', '4d94ee1f2f89a601fb73a92577f5a1b645959ebd8dbce465fa786ab8fcb3036f', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-16 10:38:01 AM', '2024-03-16 05:05:29', '2024-03-16 07:40:32', 'Expired'),
(60, '1', 'mondalbidyut38@gmail.com', '92da7bd6a3d5aed411de73fdffc3fe6ee7cbe1e2a926a181670a1b8b06ad701f', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-16 01:38:36 PM', '2024-03-16 07:40:32', '2024-03-16 08:08:36', 'Expired'),
(61, '1', 'mondalbidyut38@gmail.com', '92a45de31752c63374c1dbdba8aa28d98c996315e7edeaa52490bca445543b69', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, '2024-03-16 08:11:45', '2024-03-16 08:12:50', 'Expired'),
(62, '1', 'mondalbidyut38@gmail.com', '3e5b70f5b1be2bdac5edb15f31eb6ed10d8b4b2777b5584ade32f52140826d3f', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, '2024-03-16 08:12:50', '2024-03-16 08:13:17', 'Expired'),
(63, '1', 'mondalbidyut38@gmail.com', '5ac5fb6f19c0ccf98ab5a4d876a253a0e8d87c05dee3be65935eac183ea7e9b3', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, '2024-03-16 08:13:17', '2024-03-16 08:14:15', 'Expired'),
(64, '1', 'mondalbidyut38@gmail.com', '8f4e79197ac2fc14a206f662ccb3072ab5133d7d5e611687093a167c786d2a4c', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, '2024-03-16 08:14:15', '2024-03-16 08:14:28', 'Expired'),
(65, '1', 'mondalbidyut38@gmail.com', 'f3bcbb89cfea6940e13329c1a1b6eac6a8b6422708fb42e2fef9fcd7e70dc433', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, '2024-03-16 08:14:28', '2024-03-16 08:15:29', 'Expired'),
(66, '1', 'mondalbidyut38@gmail.com', '61b71418eecfc4b49a69ae5acb78ca218575acc48659306488eb84487a7d9f80', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, '2024-03-16 08:15:29', '2024-03-16 08:15:47', 'Expired'),
(67, '1', 'mondalbidyut38@gmail.com', 'bd4f624a8544fc54bdcd5c627a2eeabcaefdd7b939bc087716377758924a6f8c', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, '2024-03-16 08:15:47', '2024-03-16 08:16:02', 'Expired'),
(68, '1', 'mondalbidyut38@gmail.com', 'cefbdfccbdb28bd74ab6ff394439117f2ad5428d6e4c15093ce05da121728370', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, '2024-03-16 08:16:02', '2024-03-16 08:16:15', 'Expired'),
(69, '1', 'mondalbidyut38@gmail.com', 'a17024b5975ed68b8ebe145950f88ef81e52d42c5f26a9cffd439a7096b91bdb', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, '2024-03-16 08:16:15', '2024-03-16 08:17:23', 'Expired'),
(70, '1', 'mondalbidyut38@gmail.com', 'a68a583344fd9ad27563850a506ccd52213ec798d7dd5780127de9ee6f57c487', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-16 01:54:20 PM', '2024-03-16 08:17:23', '2024-03-16 13:40:55', 'Expired'),
(71, '1', 'mondalbidyut38@gmail.com', '9bf192857c82a49452819e27b85f67ebb9b6efbc1cad2cfa7e48ff2bc6e4e46b', 'http://127.0.0.1:8000/myblog/access/chat-user-list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-16 07:52:56 PM', '2024-03-16 13:40:55', '2024-03-17 01:59:49', 'Expired'),
(72, '1', 'mondalbidyut38@gmail.com', '49d56f776b6c39ff912f22bf7ee1524ea30fe2938d8efe3c07687fff8cae9dce', 'http://127.0.0.1:8000/myblog/access/broadcasting/auth', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-17 09:22:23 AM', '2024-03-17 01:59:49', '2024-03-17 03:52:23', 'Expired'),
(73, '1', 'mondalbidyut38@gmail.com', '1643eea19a75f7f39fc61017bf28cde17e2bcf31e73e18c4b187abbae03a1c13', 'http://127.0.0.1:8000/myblog/access/broadcasting/auth', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-17 09:43:12 AM', '2024-03-17 03:52:37', '2024-03-18 13:44:05', 'Expired'),
(74, '1', 'mondalbidyut38@gmail.com', '0d453bb2b5108e635a3a249dd5597179acbd192e64c56eeb91908207e1396c6a', 'http://127.0.0.1:8000/myblog/access/chat-user-list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-18 08:12:48 PM', '2024-03-18 13:44:05', '2024-03-19 13:32:33', 'Expired'),
(75, '14', 'vidyut.star006@gmail.com', '1c7dde464f916bd6ae8365b0052ce69477a2f3c34e090cc55bf9dcb3b7bb8958', 'http://127.0.0.1:8000/myblog/access/chat-user-list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-18 08:12:47 PM', '2024-03-18 13:51:08', '2024-03-19 13:32:42', 'Expired'),
(76, '1', 'mondalbidyut38@gmail.com', '091b29bd54b56b4f77afa738c0a2df7446008efbf9b875c3ed827bb07be7296d', 'http://127.0.0.1:8000/myblog/access/active-user-list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-19 08:02:37 PM', '2024-03-19 13:32:33', '2024-03-20 13:57:42', 'Expired'),
(77, '14', 'vidyut.star006@gmail.com', '81392e4e9e7bb7a618435376e7dabc9ac1d93ae8e02110500c842cea8644ba9c', 'http://127.0.0.1:8000/myblog/access/active-user-list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-19 08:02:37 PM', '2024-03-19 13:32:42', '2024-03-20 13:57:43', 'Expired'),
(78, '1', 'mondalbidyut38@gmail.com', '4c246fa2a914b5fd4155563ea9357e0dcd2d2ea766ff6d74f35bef595c2fc628', 'http://127.0.0.1:8000/myblog/access/active-user-list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-20 08:02:03 PM', '2024-03-20 13:57:42', '2024-03-21 14:05:45', 'Expired'),
(79, '14', 'vidyut.star006@gmail.com', '5ffd39064281933607a35dcfa86f27e2b3501236d36f65bf162bff6272e3ef88', 'http://127.0.0.1:8000/myblog/access/active-user-list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-20 08:02:06 PM', '2024-03-20 13:57:43', '2024-03-21 14:06:01', 'Expired'),
(80, '15', 'bm01@gmail.com', 'a45db905d8f591652fa9a136359b2df216e7acad8f5f48819b849a7b1a42c689', 'http://127.0.0.1:8000/myblog/access/active-user-list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-20 08:01:28 PM', '2024-03-20 14:28:25', '2024-03-20 14:31:28', 'Active'),
(81, '1', 'mondalbidyut38@gmail.com', '65d47f453684c86dd45d3b76550846ae193a919a9cbff6fe7ce608b812dfca90', 'http://127.0.0.1:8000/myblog/access/active-user-list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-21 07:36:28 PM', '2024-03-21 14:05:45', '2024-03-22 14:43:40', 'Expired'),
(82, '14', 'vidyut.star006@gmail.com', 'f8ec01ee3d383ae71dcc8da1214fbadbe5dbaaea48d92f6b74d47e050cafa9a9', 'http://127.0.0.1:8000/myblog/access/active-user-list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-03-21 07:36:28 PM', '2024-03-21 14:06:01', '2024-03-22 14:43:49', 'Expired'),
(83, '1', 'mondalbidyut38@gmail.com', '33e545f4bceb1a1b042671c3fe38fc9ccad03224baa8c73c26c06b0de17a7053', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-22 09:06:13 PM', '2024-03-22 14:43:40', '2024-03-22 15:36:13', 'Expired'),
(84, '14', 'vidyut.star006@gmail.com', '21937e8eaeb867e0adb678e0589c795c7e5a14f2e5c71ec60c9e77b659f98065', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-22 14:43:49', '2024-03-22 14:47:43', 'Expired'),
(85, '16', 'vm01@gmail.com', '06b0476b02075f92465f9d7d29eaf17aaa2288d2dc159dc1f9e947384bc3b807', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-22 08:17:17 PM', '2024-03-22 14:43:57', '2024-03-22 14:47:17', 'Expired'),
(86, '14', 'vidyut.star006@gmail.com', 'b5de90cba928836e02aab4953f7103d7a50f41bae40163684889ed25fca4c0e1', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-22 14:47:43', '2024-03-22 14:49:05', 'Expired'),
(87, '16', 'vm01@gmail.com', '02c981199acae5633d5912b78992a3d13dc62dbbe12fb13382c8e147eb8d463f', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-22 14:48:34', '2024-03-22 14:50:07', 'Expired'),
(88, '14', 'vidyut.star006@gmail.com', '86a70b632cf60da2f6d2c3911c08dc87ae756db5b0d8abd0aeaece65244e15e3', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-22 14:49:05', '2024-03-24 08:21:39', 'Expired'),
(89, '16', 'vm01@gmail.com', '14f84dbf5abe3148f6ad68490f3a4dae5ce0c383c7416eb777b90f867ce36f98', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-22 09:23:57 PM', '2024-03-22 14:50:07', '2024-03-22 15:53:57', 'Expired'),
(90, '1', 'mondalbidyut38@gmail.com', '47583edbfd2e3a9d9869ace388e96acca8fc29f4504232f2db5ceec207856e8a', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-22 10:05:52 PM', '2024-03-22 15:54:08', '2024-03-22 16:35:52', 'Expired'),
(91, '14', 'vidyut.star006@gmail.com', 'c57c689473db7917ea2a1a86aa2b7056292151985a54acaed074ddcbc8051a3c', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-24 08:21:39', '2024-03-25 10:25:48', 'Expired'),
(92, '1', 'mondalbidyut38@gmail.com', 'd8cc71a7643ce741592974f07ec9428405a9bd459869af83e11daf2655c2e479', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-24 08:21:45', '2024-03-25 10:25:57', 'Expired'),
(93, '14', 'vidyut.star006@gmail.com', '20d8691a275fe369c4584e53eb5667fe59b9cd49089048d4cb3d9e7e8aa5eaa8', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-25 10:25:48', '2024-03-25 14:49:19', 'Expired'),
(94, '1', 'mondalbidyut38@gmail.com', '96f1bc2d9324e30fbe711327a04b3da5853fd9b9fe22af59198f79e82621f252', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-25 10:25:57', '2024-03-25 14:49:18', 'Expired'),
(95, '16', 'vm01@gmail.com', '4622a3c69bc4a1ee0fae05b03583f6d085d16f12cfcb5ce0b9c9be2914e12036', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-25 10:26:08', '2024-03-25 14:50:24', 'Expired'),
(96, '1', 'mondalbidyut38@gmail.com', '21a3788daebc8e1bdd21644c5d34d72384337c84285c806e772be1b98a4ee0ec', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-25 11:04:59 PM', '2024-03-25 14:49:18', '2024-03-25 17:34:59', 'Expired'),
(97, '14', 'vidyut.star006@gmail.com', 'c516da081a3cc31476f5f27a7ce998a6023119a8d69a6b59a9550114dbc97eb2', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-25 11:04:48 PM', '2024-03-25 14:49:19', '2024-03-25 17:34:48', 'Expired'),
(98, '16', 'vm01@gmail.com', '0908c47e40d9b080b15a4dbcbdf4825b943136c1622b56303cfd4ab8e8e91f9f', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-25 14:50:24', '2024-03-26 10:16:44', 'Expired'),
(99, '1', 'mondalbidyut38@gmail.com', '83822a6f4261850e1f3963b013d09812c338be3ea5bc9f5124f5417ccd83f40b', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-26 10:16:39', '2024-03-26 14:48:51', 'Expired'),
(100, '14', 'vidyut.star006@gmail.com', 'c3ae972a18ee5a51bc64b819bd666708f5d9825bc76545863d442430e15c209d', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-26 10:16:39', '2024-03-26 14:48:51', 'Expired'),
(101, '16', 'vm01@gmail.com', '533557c2a5cd7cccdb0e5fd951189baf0c1cc2d2f0827001e59cf2dc59a986de', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, '2024-03-26 10:16:44', '2024-03-26 14:48:57', 'Expired'),
(102, '1', 'mondalbidyut38@gmail.com', '9fe078247e0c43946205b4243a3d543c16184ba0cc3ff56cad3f144cf65b8053', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-26 09:52:45 PM', '2024-03-26 14:48:51', '2024-03-26 16:22:45', 'Expired'),
(103, '14', 'vidyut.star006@gmail.com', 'c4e4f6cb578c26e73c1ebc82441559aa88cd0d5969c02522ec072e7abbc3f946', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-26 09:52:33 PM', '2024-03-26 14:48:51', '2024-03-26 16:22:33', 'Expired'),
(104, '16', 'vm01@gmail.com', '59f67362babcfd04ec13f9dbf961a4f6a6e8a224e7f93b90838ecf4e343b982f', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-26 09:52:53 PM', '2024-03-26 14:48:57', '2024-03-26 16:22:53', 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `myblog_register_tbl`
--

CREATE TABLE `myblog_register_tbl` (
  `id` int(11) NOT NULL,
  `login_check` varchar(100) DEFAULT NULL,
  `online_status` int(10) NOT NULL DEFAULT 0,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `admin_check` varchar(100) NOT NULL,
  `currentdate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myblog_register_tbl`
--

INSERT INTO `myblog_register_tbl` (`id`, `login_check`, `online_status`, `name`, `email`, `phone`, `password`, `photo`, `admin_check`, `currentdate`) VALUES
(1, '1', 0, 'Bidyut Mandal', 'mondalbidyut38@gmail.com', '7735501335', '$2y$10$BIAbqb6Dm9V2B1gwP/8lqODHruDbCl89XuTpzZymitVIfDf68vGW6', '39637_151695.jpg', 'approved', '2022-02-25'),
(14, '1', 0, 'Vidyut Mandal', 'vidyut.star006@gmail.com', '8763699746', '$2y$10$BIAbqb6Dm9V2B1gwP/8lqODHruDbCl89XuTpzZymitVIfDf68vGW6', '23423424.jpeg', 'approved', '2022-02-25'),
(15, '1', 0, 'BM', 'bm01@gmail.com', '9763699746', '$2y$10$BIAbqb6Dm9V2B1gwP/8lqODHruDbCl89XuTpzZymitVIfDf68vGW6', 'IMG_20230204_184614_063.jpg', 'approved', '2022-02-25'),
(16, '1', 1, 'VM', 'vm01@gmail.com', '7763699746', '$2y$10$BIAbqb6Dm9V2B1gwP/8lqODHruDbCl89XuTpzZymitVIfDf68vGW6', 'IMG_20230204_184614_085.jpg', 'approved', '2022-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `newdemo_tbl`
--

CREATE TABLE `newdemo_tbl` (
  `id` int(11) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `photo` varchar(300) DEFAULT NULL,
  `user_agent` longtext DEFAULT NULL,
  `currentdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newdemo_tbl`
--

INSERT INTO `newdemo_tbl` (`id`, `email`, `password`, `photo`, `user_agent`, `currentdate`) VALUES
(3, 'App 1', 'App', 'portfolio-1.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-15 14:56:33'),
(5, 'Web 3', 'Web', 'portfolio-2.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-15 15:00:44'),
(6, 'App 2', 'App', 'portfolio-3.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', '2022-05-15 15:01:14'),
(7, 'Card 2', 'Card', 'portfolio-4.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-15 15:53:01'),
(8, 'Web 2', 'Web', 'portfolio-5.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36', '2022-05-17 01:21:09'),
(9, 'App 3', 'App', 'portfolio-6.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36', '2022-05-17 01:21:33'),
(16, 'Card 1', 'Card', 'portfolio-7.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-06-24 14:48:15'),
(17, 'Card 3', 'Card', 'portfolio-8.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2022-05-17 01:21:33'),
(18, 'Web 3', 'Web', 'portfolio-9.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-06-24 14:48:15'),
(19, 'I\'m so happy today!', 'Web', '12892_23197.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:34:37'),
(20, 'I love you so much!', 'Card', '70131_46640.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:36:57'),
(21, 'Are you gunna throw the ball?', 'App', '83627_41450.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:41:22'),
(22, 'A rose for mommy!', 'Web', '16817_52289.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:41:43'),
(23, 'We can\'t afford a cat!', 'Card', '71969_23045.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:42:09'),
(24, 'I see those nugs.', 'App', '62238_39181.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:42:38'),
(25, 'I\'m the baby of the house!', 'Web', '93950_15974.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:43:03'),
(26, 'C\'mon friend!', 'Card', '49306_20882.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:43:19'),
(27, 'You gunna finish that?', 'App', '61955_19758.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:43:55'),
(28, 'Dis my fren!', 'Web', '65803_43684.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:44:16'),
(30, 'Parturient Mollis Malesuada Tristique Inceptos.', 'Web', '36662_11025.jpg', 'null', '2022-08-07 08:49:15'),
(31, 'Vehicula Quam Nibh', 'Card', '25369_22670.jpg', 'null', '2022-08-07 08:49:42'),
(32, 'Parturient Mollis Malesuada Tristique Inceptos.', 'App', '22621_29446.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-08-07 08:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) NOT NULL COMMENT 'myblog_register_tbl_id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userid`, `name`, `email`, `email_verified_at`, `password`, `phone`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 15, 'BM', 'bm01@gmail.com', NULL, '$2y$10$BIAbqb6Dm9V2B1gwP/8lqODHruDbCl89XuTpzZymitVIfDf68vGW6', '9763699746', 'IMG_20230204_184614_063.jpg', NULL, '2024-03-20 14:28:25', NULL),
(31, 1, 'Bidyut Mandal', 'mondalbidyut38@gmail.com', NULL, '$2y$10$BIAbqb6Dm9V2B1gwP/8lqODHruDbCl89XuTpzZymitVIfDf68vGW6', '7735501335', '39637_151695.jpg', NULL, '2024-03-26 14:48:51', NULL),
(32, 14, 'Vidyut Mandal', 'vidyut.star006@gmail.com', NULL, '$2y$10$BIAbqb6Dm9V2B1gwP/8lqODHruDbCl89XuTpzZymitVIfDf68vGW6', '8763699746', '23423424.jpeg', NULL, '2024-03-26 14:48:51', NULL),
(33, 16, 'VM', 'vm01@gmail.com', NULL, '$2y$10$BIAbqb6Dm9V2B1gwP/8lqODHruDbCl89XuTpzZymitVIfDf68vGW6', '7763699746', 'IMG_20230204_184614_085.jpg', NULL, '2024-03-26 14:48:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_chat_tbl`
--

CREATE TABLE `user_chat_tbl` (
  `id` int(11) NOT NULL,
  `chat_type` int(11) NOT NULL COMMENT 'single_chat_group_chat/0=single,1=group',
  `from_` bigint(20) NOT NULL,
  `to_` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `chat_file` varchar(50) DEFAULT NULL,
  `read_status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_chat_tbl`
--

INSERT INTO `user_chat_tbl` (`id`, `chat_type`, `from_`, `to_`, `message`, `chat_file`, `read_status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 14, 'hello vidyut', '44673_56050.webp', 1, '2024-03-21 14:41:38', '2024-03-25 16:06:46'),
(2, 0, 14, 1, 'hii bidyut', '44673_56050.webp', 1, '2024-03-21 14:42:17', '2024-03-25 16:06:46'),
(4, 0, 1, 14, 'ok bey vidyut', NULL, 1, '2024-03-21 14:43:44', '2024-03-25 16:06:46'),
(5, 0, 14, 1, 'ok', NULL, 1, '2024-03-21 14:47:15', '2024-03-25 16:06:46'),
(9, 0, 1, 14, 'hello vidyut', NULL, 1, '2024-03-24 08:59:15', '2024-03-25 16:06:46'),
(11, 0, 1, 14, 'hello vidyut', NULL, 1, '2024-03-24 09:02:41', '2024-03-25 16:06:46'),
(12, 0, 1, 14, 'hello vidyut', NULL, 1, '2024-03-24 09:04:43', '2024-03-25 16:06:46'),
(13, 0, 1, 14, 'hello vidyut', NULL, 1, '2024-03-24 09:06:35', '2024-03-25 16:06:46'),
(14, 0, 1, 14, 'hello vidyut', NULL, 1, '2024-03-24 09:06:41', '2024-03-25 16:06:46'),
(15, 0, 1, 14, 'hello vidyut', NULL, 1, '2024-03-24 09:07:17', '2024-03-25 16:06:46'),
(16, 0, 14, 1, 'whatttttttttttt ???', NULL, 1, '2024-03-24 09:22:55', '2024-03-25 16:06:46'),
(17, 0, 1, 14, 'ok', NULL, 1, '2024-03-24 09:42:47', '2024-03-25 16:06:46'),
(18, 0, 14, 1, 'olla', NULL, 1, '2024-03-24 09:43:29', '2024-03-25 16:06:46'),
(19, 0, 1, 14, 'hello vidyut', NULL, 1, '2024-03-24 09:48:29', '2024-03-25 16:06:46'),
(20, 0, 1, 14, 'hello vidyut', NULL, 1, '2024-03-24 09:49:37', '2024-03-25 16:06:46'),
(21, 0, 14, 1, 'i', NULL, 1, '2024-03-24 09:51:08', '2024-03-25 16:06:46'),
(22, 0, 1, 14, 'hello vidyut', NULL, 1, '2024-03-24 09:51:44', '2024-03-25 16:06:46'),
(23, 0, 1, 14, 'ok', NULL, 1, '2024-03-24 09:52:37', '2024-03-25 16:06:46'),
(24, 0, 14, 1, 'no', NULL, 1, '2024-03-24 09:53:39', '2024-03-25 16:06:46'),
(25, 0, 1, 14, 'why', NULL, 1, '2024-03-24 09:54:22', '2024-03-25 16:06:46'),
(26, 0, 1, 14, '1', NULL, 1, '2024-03-24 09:54:38', '2024-03-25 16:06:46'),
(27, 0, 14, 1, '2', NULL, 1, '2024-03-24 09:55:50', '2024-03-25 16:06:46'),
(28, 0, 1, 14, '3', NULL, 1, '2024-03-24 09:56:04', '2024-03-25 16:06:46'),
(29, 0, 14, 1, '4', NULL, 1, '2024-03-24 09:58:26', '2024-03-25 16:06:46'),
(30, 0, 1, 14, '5', NULL, 1, '2024-03-24 09:58:37', '2024-03-25 16:06:46'),
(31, 0, 14, 1, '6', NULL, 1, '2024-03-24 09:58:42', '2024-03-25 16:06:46'),
(32, 0, 1, 14, '7', NULL, 1, '2024-03-24 10:00:44', '2024-03-25 16:06:46'),
(33, 0, 14, 1, '8', NULL, 1, '2024-03-24 10:01:29', '2024-03-25 16:06:46'),
(34, 0, 1, 14, '9', NULL, 1, '2024-03-24 10:01:40', '2024-03-25 16:06:46'),
(35, 0, 14, 1, '10', NULL, 1, '2024-03-24 10:02:53', '2024-03-25 16:06:46'),
(36, 0, 1, 14, '11', NULL, 1, '2024-03-24 10:02:59', '2024-03-25 16:06:46'),
(37, 0, 14, 1, '12', NULL, 1, '2024-03-24 10:03:33', '2024-03-25 16:06:46'),
(38, 0, 1, 14, '13', NULL, 1, '2024-03-24 10:05:16', '2024-03-25 16:06:46'),
(39, 0, 14, 1, '14', NULL, 1, '2024-03-24 10:05:25', '2024-03-25 16:06:46'),
(40, 0, 1, 14, '15', NULL, 1, '2024-03-24 10:07:50', '2024-03-25 16:06:46'),
(41, 0, 1, 14, 'hello', NULL, 1, '2024-03-25 10:27:14', '2024-03-25 16:06:46'),
(42, 0, 14, 1, 'whatttttttttttt ???', NULL, 1, '2024-03-25 10:27:23', '2024-03-25 16:06:46'),
(43, 0, 1, 14, 'j', NULL, 1, '2024-03-25 10:27:33', '2024-03-25 16:06:46'),
(44, 0, 14, 1, 'no', NULL, 1, '2024-03-25 16:11:15', '2024-03-25 16:20:05'),
(45, 0, 1, 14, 'ok', NULL, 1, '2024-03-25 16:11:24', '2024-03-25 16:20:05'),
(46, 0, 14, 1, 'ok', NULL, 1, '2024-03-25 16:14:13', '2024-03-25 16:20:05'),
(47, 0, 1, 14, '1', NULL, 1, '2024-03-25 16:14:18', '2024-03-25 16:20:05'),
(48, 0, 14, 1, 'vidyut 1', NULL, 1, '2024-03-25 16:15:22', '2024-03-25 16:20:05'),
(49, 0, 1, 14, 'bidyut 2', NULL, 1, '2024-03-25 16:15:29', '2024-03-25 16:20:05'),
(50, 0, 14, 1, 'vidyut 3', NULL, 1, '2024-03-25 16:15:36', '2024-03-25 16:20:05'),
(51, 0, 1, 14, 'bidyut 4', NULL, 1, '2024-03-25 16:16:03', '2024-03-25 16:20:05'),
(52, 0, 1, 14, '1', NULL, 1, '2024-03-25 16:16:56', '2024-03-25 16:20:05'),
(53, 0, 14, 1, '2', NULL, 1, '2024-03-25 16:16:58', '2024-03-25 16:20:05'),
(54, 0, 1, 14, '3', NULL, 1, '2024-03-25 16:17:01', '2024-03-25 16:20:05'),
(55, 0, 14, 1, '4', NULL, 1, '2024-03-25 16:17:05', '2024-03-25 16:20:05'),
(56, 0, 1, 14, '5', NULL, 1, '2024-03-25 16:17:08', '2024-03-25 16:20:05'),
(57, 0, 14, 1, '6', NULL, 1, '2024-03-25 16:17:09', '2024-03-25 16:20:05'),
(58, 0, 1, 14, '7', NULL, 1, '2024-03-25 16:36:21', '2024-03-25 16:37:25'),
(59, 0, 14, 1, '8', NULL, 1, '2024-03-25 16:36:24', '2024-03-25 16:36:52'),
(60, 0, 1, 14, '9', NULL, 1, '2024-03-25 16:36:26', '2024-03-25 16:37:25'),
(61, 0, 14, 1, '10', NULL, 1, '2024-03-25 16:36:30', '2024-03-25 16:36:52'),
(64, 0, 1, 14, '11', NULL, 1, '2024-03-25 16:49:28', '2024-03-25 16:49:29'),
(65, 0, 14, 1, '12', NULL, 1, '2024-03-25 16:49:52', '2024-03-25 16:49:52'),
(66, 0, 16, 14, 'hii from VM', NULL, 1, '2024-03-25 16:51:29', '2024-03-25 16:51:29'),
(67, 0, 1, 14, '13', NULL, 1, '2024-03-25 16:54:07', '2024-03-25 16:54:08'),
(68, 0, 14, 1, '14', NULL, 1, '2024-03-25 16:54:14', '2024-03-25 16:54:14'),
(69, 0, 16, 14, 'hii from VM2', NULL, 1, '2024-03-25 16:54:28', '2024-03-25 16:54:51'),
(70, 0, 14, 16, 'hello from idyut Mandal', NULL, 1, '2024-03-25 16:55:02', '2024-03-25 16:55:02'),
(71, 0, 1, 14, '15', NULL, 1, '2024-03-25 17:02:49', '2024-03-25 17:02:50'),
(72, 0, 14, 1, '16', NULL, 1, '2024-03-25 17:02:58', '2024-03-25 17:02:59'),
(73, 0, 16, 1, 'hii Bidyut Mandal', NULL, 1, '2024-03-25 17:03:26', '2024-03-25 17:29:40'),
(74, 0, 16, 1, 'whatsapp >', NULL, 1, '2024-03-25 17:03:43', '2024-03-25 17:29:40'),
(75, 0, 1, 14, '17', NULL, 1, '2024-03-25 17:09:47', '2024-03-25 17:09:47'),
(76, 0, 14, 1, '18', NULL, 1, '2024-03-25 17:10:06', '2024-03-25 17:10:06'),
(77, 0, 16, 1, 'hii 2', NULL, 1, '2024-03-25 17:10:19', '2024-03-25 17:29:40'),
(78, 0, 16, 1, 'h', NULL, 1, '2024-03-25 17:10:32', '2024-03-25 17:29:40'),
(79, 0, 16, 1, '1', NULL, 1, '2024-03-25 17:13:06', '2024-03-25 17:29:40'),
(80, 0, 16, 1, '2', NULL, 1, '2024-03-25 17:20:21', '2024-03-25 17:29:40'),
(81, 0, 16, 1, '3', NULL, 1, '2024-03-25 17:24:21', '2024-03-25 17:29:40'),
(82, 0, 16, 1, '4', NULL, 1, '2024-03-25 17:25:52', '2024-03-25 17:29:40'),
(83, 0, 16, 1, '5', NULL, 1, '2024-03-25 17:26:04', '2024-03-25 17:29:40'),
(84, 0, 16, 1, 'hello 123 test tes test', NULL, 1, '2024-03-25 17:27:05', '2024-03-25 17:29:40'),
(85, 0, 16, 1, 'test etstt', NULL, 1, '2024-03-25 17:29:12', '2024-03-25 17:29:40'),
(86, 0, 1, 16, 'ok', NULL, 1, '2024-03-25 17:29:46', '2024-03-25 17:29:46'),
(87, 0, 14, 1, '19', NULL, 1, '2024-03-25 17:29:55', '2024-03-25 17:30:01'),
(88, 0, 1, 14, '20', NULL, 1, '2024-03-25 17:30:11', '2024-03-25 17:30:11'),
(89, 0, 16, 1, '...', NULL, 1, '2024-03-25 17:30:26', '2024-03-25 17:31:25'),
(90, 0, 16, 1, 'l', NULL, 1, '2024-03-25 17:31:19', '2024-03-25 17:31:25'),
(91, 0, 14, 1, '21', NULL, 1, '2024-03-25 17:32:35', '2024-03-25 17:32:44'),
(92, 0, 14, 1, '22', NULL, 1, '2024-03-25 17:32:39', '2024-03-25 17:32:44'),
(93, 0, 1, 14, '23', NULL, 1, '2024-03-25 17:32:49', '2024-03-25 17:32:49'),
(94, 0, 16, 1, 'ok', NULL, 1, '2024-03-25 17:33:00', '2024-03-25 17:33:23'),
(95, 0, 16, 1, 'ok1', NULL, 1, '2024-03-25 17:33:05', '2024-03-25 17:33:23'),
(96, 0, 14, 16, 'hii', NULL, 1, '2024-03-25 17:33:14', '2024-03-25 17:33:18'),
(97, 0, 16, 1, 'what', NULL, 1, '2024-03-26 10:17:15', '2024-03-26 10:17:34'),
(98, 0, 16, 1, 'ok sorry', NULL, 1, '2024-03-26 10:17:25', '2024-03-26 10:17:34'),
(99, 0, 16, 1, '🙏', NULL, 1, '2024-03-26 10:17:32', '2024-03-26 10:17:34'),
(100, 0, 1, 16, 'ok', NULL, 1, '2024-03-26 10:17:39', '2024-03-26 10:17:40'),
(101, 0, 14, 1, 'f', NULL, 1, '2024-03-26 10:17:47', '2024-03-26 10:17:51'),
(102, 0, 16, 1, '1', NULL, 1, '2024-03-26 10:19:17', '2024-03-26 16:20:57'),
(103, 0, 16, 1, '2', NULL, 1, '2024-03-26 10:19:20', '2024-03-26 16:20:57'),
(104, 0, 16, 1, '3', NULL, 1, '2024-03-26 10:19:22', '2024-03-26 16:20:57'),
(105, 0, 14, 1, 'hello', NULL, 1, '2024-03-26 10:25:28', '2024-03-26 10:34:35'),
(106, 0, 14, 1, '1', NULL, 1, '2024-03-26 10:26:49', '2024-03-26 10:34:35'),
(107, 0, 14, 1, 'ok ok sd sdf dsf sdfsfsd f d', NULL, 1, '2024-03-26 10:27:37', '2024-03-26 10:34:35'),
(108, 0, 14, 1, 'd ds', NULL, 1, '2024-03-26 10:28:59', '2024-03-26 10:34:35'),
(109, 0, 14, 1, 'as da sda', NULL, 1, '2024-03-26 10:34:05', '2024-03-26 10:34:35'),
(110, 0, 14, 1, 'a sda sdas das da dda da', NULL, 1, '2024-03-26 10:34:15', '2024-03-26 10:34:35'),
(111, 0, 1, 14, 'sdf', NULL, 1, '2024-03-26 10:34:39', '2024-03-26 10:35:15'),
(112, 0, 1, 14, 'ds fdsf sdf sdfsdfs fsdf s', NULL, 1, '2024-03-26 10:34:45', '2024-03-26 10:35:15'),
(113, 0, 1, 14, 'sdf sdf sd', NULL, 1, '2024-03-26 10:34:51', '2024-03-26 10:35:15'),
(114, 0, 1, 14, 'dsf sf f', NULL, 1, '2024-03-26 10:35:02', '2024-03-26 10:35:15'),
(115, 0, 1, 14, 'ds sdfdsfsdf sdf sfsfs', NULL, 1, '2024-03-26 10:35:11', '2024-03-26 10:35:15'),
(116, 0, 16, 1, 'ok', NULL, 1, '2024-03-26 14:49:43', '2024-03-26 16:20:57'),
(117, 0, 14, 1, 'tes sfsdf dsfs f', NULL, 1, '2024-03-26 16:20:30', '2024-03-26 16:20:45'),
(118, 0, 1, 14, 'd adasdsadsa das d', NULL, 1, '2024-03-26 16:20:52', '2024-03-26 16:21:34'),
(119, 0, 1, 16, 'as dasd asdsa', NULL, 1, '2024-03-26 16:21:00', '2024-03-26 16:21:06'),
(120, 0, 16, 14, 'sdfsdf', NULL, 1, '2024-03-26 16:21:17', '2024-03-26 16:21:17'),
(121, 0, 16, 14, 's fsdf', NULL, 1, '2024-03-26 16:21:25', '2024-03-26 16:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `videolist`
--

CREATE TABLE `videolist` (
  `id` int(11) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL,
  `link_href` varchar(300) DEFAULT NULL,
  `date` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videolist`
--

INSERT INTO `videolist` (`id`, `title`, `link`, `link_href`, `date`, `created_at`, `updated_at`) VALUES
(2, 'How to upload file using AJAX and PHP ?', 'https://www.youtube.com/embed/kA4OWq6FEoo', 'https://www.youtube.com/watch?v=kA4OWq6FEoo&t=1s', '2022-08-04', '2022-08-02 02:06:46', '2022-08-04 01:13:59'),
(3, 'How to render & view PDF to CANVAS in a web page using html and javascript ?', 'https://www.youtube.com/embed/nAF-WHgjJ5g', 'https://www.youtube.com/watch?v=nAF-WHgjJ5g&t=1s', '2022-08-13', '2022-08-02 02:06:46', '2022-08-04 01:18:20'),
(4, 'How to delete multiple rows using PHP ?', 'https://www.youtube.com/embed/CI0Y3Limxek', 'https://www.youtube.com/watch?v=CI0Y3Limxek', '2022-08-09', '2022-08-02 02:08:50', '2022-08-04 01:12:42'),
(5, 'How to edit multiple rows using PHP ?', 'https://www.youtube.com/embed/vzBuT_0lHSY', 'https://www.youtube.com/watch?v=vzBuT_0lHSY', '2022-08-12', '2022-08-02 02:08:50', '2022-08-04 01:11:55'),
(6, 'How to Insert Multiple Rows Data using jQuery and PHP ?', 'https://www.youtube.com/embed/GklFO3PQN5o', 'https://www.youtube.com/watch?v=GklFO3PQN5o&t=116s', '2022-08-06', '2022-08-02 02:09:28', '2022-08-04 01:11:16'),
(8, 'How to delete multiple rows without page reload ?', 'https://www.youtube.com/embed/T0Sp8q9w46A', 'https://www.youtube.com/watch?v=T0Sp8q9w46A', '2022-08-24', '2022-08-02 02:09:28', '2022-08-04 01:15:13'),
(11, 'How to disable right click, content copy,Ctrl+u key on a webpage using HTML,JAVASCRIPT', 'https://www.youtube.com/embed/WKTB7HpGalM', 'https://youtu.be/WKTB7HpGalM', '2022-08-07', '2022-08-07 03:11:58', '2022-08-07 03:11:58'),
(12, 'Insert multiple rows value using PHP || Insert multiple rows with one query  ||', 'https://www.youtube.com/embed/LTSOjdvj_4Q', 'https://youtu.be/LTSOjdvj_4Q', '2022-08-07', '2022-08-07 03:11:58', '2022-08-07 03:11:58'),
(13, 'How to create element using JavaScript ? || Create Form Inputs || #codingstudio #coding_studio', 'https://www.youtube.com/embed/RiOsiHuE9fk', 'https://youtu.be/RiOsiHuE9fk', '2022-08-07', '2022-08-07 03:11:58', '2022-08-07 03:11:58'),
(14, 'How to validate a form and insert form data using PHP|| Form Validation #codingstudio #coding_studio', 'https://www.youtube.com/embed/Xp9jKUY_q0Y', 'https://youtu.be/Xp9jKUY_q0Y', '2022-08-07', '2022-08-07 03:11:58', '2022-08-07 03:11:58'),
(15, 'How to upload,rename & validation a file using PHP? 3 Tricks in 1 Video', 'https://www.youtube.com/embed/RZNaevVSKnE', 'https://youtu.be/RZNaevVSKnE', '2022-08-07', '2022-08-07 03:11:58', '2022-08-07 03:11:58'),
(16, 'Difference between JavaScript and jQuery || JavaScript VS jQuery ||', 'https://www.youtube.com/embed/fDl6iAkdR6E', 'https://youtu.be/fDl6iAkdR6E', '2022-08-07', '2022-08-07 03:11:58', '2022-08-07 03:11:58'),
(17, 'How to validate file extension and size using JavaScript ?', 'https://www.youtube.com/embed/_XF7FOWKa3M', 'https://youtu.be/_XF7FOWKa3M', '2022-08-07', '2022-08-07 03:11:58', '2022-08-07 03:11:58'),
(18, 'How to Insert Data Into MySQL Database Table Using PHP ?', 'https://www.youtube.com/embed/I7FeDmyfJvA', 'https://youtu.be/I7FeDmyfJvA', '2022-08-07', '2022-08-07 03:11:58', '2022-08-07 03:11:58'),
(19, 'How to Create a text captcha using JavaScript in HTML form ?', 'https://www.youtube.com/embed/qHPFBY9zoE8', 'https://youtu.be/qHPFBY9zoE8', '2022-08-07', '2022-08-07 03:11:58', '2022-08-07 03:11:58'),
(20, 'How to show and hide password in a web page using javascript ?', 'https://www.youtube.com/embed/kaSaKq_J5w8', 'https://youtu.be/kaSaKq_J5w8', '2022-08-07', '2022-08-07 03:11:58', '2022-08-07 03:11:58'),
(21, 'How to validate a form using HTML & Javascript ?', 'https://www.youtube.com/embed/D6NAAnCUzyE', 'https://youtu.be/D6NAAnCUzyE', '2022-08-07', '2022-08-07 03:11:58', '2022-08-07 03:11:58'),
(23, 'Difference between JavaScript and jQuery || JavaScript VS jQuery ||', 'https://www.youtube.com/embed/fDl6iAkdR6E', 'https://youtu.be/fDl6iAkdR6E', '2022-08-07', '2022-08-07 03:12:06', '2022-08-07 03:12:06'),
(24, 'How to Insert Data Into MySQL Database Table Using PHP ?', 'https://www.youtube.com/embed/I7FeDmyfJvA', 'https://youtu.be/I7FeDmyfJvA', '2022-08-07', '2022-08-07 03:12:06', '2022-08-07 03:12:06'),
(25, 'How to show and hide password in a web page using javascript ?', 'https://www.youtube.com/embed/kaSaKq_J5w8', 'https://youtu.be/kaSaKq_J5w8', '2022-08-08', '2022-08-07 03:12:06', '2023-05-31 14:06:33'),
(47, 'sfds', 'http://localhost:4200/user/home', 'tewfsd', '2023-10-07', '2023-10-07 14:16:19', '2023-10-07 14:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angularuser_tbl`
--
ALTER TABLE `angularuser_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiples`
--
ALTER TABLE `multiples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiples_data`
--
ALTER TABLE `multiples_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiples_users`
--
ALTER TABLE `multiples_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiples_user_data`
--
ALTER TABLE `multiples_user_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myblog_logindetails_tbl`
--
ALTER TABLE `myblog_logindetails_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myblog_register_tbl`
--
ALTER TABLE `myblog_register_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newdemo_tbl`
--
ALTER TABLE `newdemo_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_chat_tbl`
--
ALTER TABLE `user_chat_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videolist`
--
ALTER TABLE `videolist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `angularuser_tbl`
--
ALTER TABLE `angularuser_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `multiples`
--
ALTER TABLE `multiples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `multiples_data`
--
ALTER TABLE `multiples_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `multiples_users`
--
ALTER TABLE `multiples_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `multiples_user_data`
--
ALTER TABLE `multiples_user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `myblog_logindetails_tbl`
--
ALTER TABLE `myblog_logindetails_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `myblog_register_tbl`
--
ALTER TABLE `myblog_register_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `newdemo_tbl`
--
ALTER TABLE `newdemo_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_chat_tbl`
--
ALTER TABLE `user_chat_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `videolist`
--
ALTER TABLE `videolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
