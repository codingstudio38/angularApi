-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 03:45 AM
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
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `angularuser_tbl`
--

INSERT INTO `angularuser_tbl` (`id`, `name`, `email`, `password`, `photo`) VALUES
(2, 'Vidyut Mandal', 'vidyut.star006@gmail.com', '123456', '78643_8886.png'),
(3, 'Vidyut Mandal', 'vidyut.star004@gmail.com', '132321', '16990_4038.png'),
(4, 'Vidyut Mandal', 'vidyut.star0064@gmail.com', '344354353', '72195_75832.jpg'),
(5, 'Vidyut Mandal', 'vidyut@123.com', '344354353', '35418_75832.jpg'),
(6, 'Vidyut Mandal', 'vidyu23t.star006@gmail.com', '23233232', '11634_764461.jpg'),
(9, 'Vidyut Mandal d', 'vidyut.star00ew6@gmail.com', '453534534', '99867_10570.jpg'),
(13, 'Vidyut Mandal', 'vidyut.star00446@gmail.com', '12345678', '98171_977271.jpg'),
(14, 'Vidyut Mandal', 'vidyut.star00c6@gmail.com', '3242343243', '66817_15620.png');

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
(1, '2022_06_23_021424_demo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multiples`
--

CREATE TABLE `multiples` (
  `id` int(11) NOT NULL,
  `cid` varchar(200) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `qty` varchar(250) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `currentdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `multiples`
--

INSERT INTO `multiples` (`id`, `cid`, `name`, `price`, `qty`, `photo`, `currentdate`) VALUES
(1, '1', '1', '1', '1', 'multiple_58452_2779758.jpg', '2022-06-15 13:16:28'),
(2, '1', '2', '2', '2', 'multiple_32814_6468458.jpg', '2022-06-15 13:16:28'),
(3, '1', '3', '3', '3', 'multiple_72412_6105330.jpg', '2022-06-15 13:16:28'),
(4, '2', '1', '1', '1', 'multiple_41311_2779758.jpg', '2022-06-15 13:16:35'),
(5, '2', '2', '2', '2', 'multiple_76736_6468458.jpg', '2022-06-15 13:16:35'),
(6, '2', '3', '3', '3', 'multiple_88612_6105330.jpg', '2022-06-15 13:16:35'),
(7, '3', '1', '3', '2', 'multiple_28299_31126.jpg', '2022-06-18 01:44:31'),
(8, '3', '1', '3', '2', 'multiple_76940_6105330.jpg', '2022-06-18 01:44:31'),
(9, '3', '1', '3', '2', 'multiple_84100_1230664.jpg', '2022-06-18 01:44:31'),
(14, '3', '1', '3', '2', 'multiple_93420_1133693.jpg', '2022-06-19 06:42:19'),
(16, '3', '4', '4', '4', NULL, '2022-06-24 14:58:18'),
(17, '4', '2w', '2w', '2w', 'multiple_78531_99017.jpg', '2022-10-17 02:00:16'),
(18, '6', '1', '2', '2', 'multiple_52627_99017.jpg', '2022-10-17 02:03:05'),
(19, '6', '2', '2', '2', 'multiple_95155_38504.png', '2022-10-17 02:03:05'),
(20, '4', '2', '2', '22', 'multiple_78979_38504.png', '2022-10-17 02:06:27');

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
(1, '1', 'mondalbidyut38@gmail.com', 'a110a06658c42a075b15ca005e67608b6029c7b1ad00818680982e1e85ca407e', 'http://127.0.0.1:8000/myblog/access/viewallmultidata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', '2022-06-23 08:29:51 PM', '2022-06-23 14:58:00', '2022-06-23 14:59:51', 'Expired'),
(2, '1', 'mondalbidyut38@gmail.com', '4f4d19c5c8bf883824a54cdd8e8ca775a5e7faca55dfb34baa78c731ac67f420', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', '2022-06-23 08:30:43 PM', '2022-06-23 15:00:09', '2022-06-23 15:00:43', 'Expired'),
(3, '1', 'mondalbidyut38@gmail.com', '3b9e951deabd2c3c3a46422e445eac226819a8a7bfd6859ddea8bc72be445052', 'http://127.0.0.1:8000/myblog/access/multiusersearch/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', '2022-07-15 08:46:21 PM', '2022-06-24 14:47:19', '2022-07-15 15:16:21', 'Expired'),
(4, '1', 'mondalbidyut38@gmail.com', '0eaba0b7c0c20ac9724147f642f0370bcc43226c3512b0ce9ea7fd3346c542a0', 'http://127.0.0.1:8000/myblog/access/viewallmultidata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', '2022-07-16 07:56:32 AM', '2022-07-16 02:25:35', '2022-07-16 02:26:32', 'Expired'),
(5, '1', 'mondalbidyut38@gmail.com', 'ac97643a5be733bf02d5ff061b2d7fe8314bff29f91c6a239df5c41be6344675', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', '2022-07-31 01:19:21 PM', '2022-07-31 07:49:17', '2022-07-31 07:49:21', 'Expired'),
(6, '1', 'mondalbidyut38@gmail.com', '52468b2064c91194fd75732f8599a1519de55dd30c604b073f20bdf1c9f7137b', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', '2022-08-02 07:56:59 AM', '2022-08-02 01:39:32', '2022-08-02 02:26:59', 'Expired'),
(7, '1', 'mondalbidyut38@gmail.com', 'c7293d81459683135c469f401d390989721cc2fac01a6c745dd2b7a68575239e', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', '2022-08-02 07:58:03 AM', '2022-08-02 02:27:50', '2022-08-02 02:28:03', 'Expired'),
(8, '1', 'mondalbidyut38@gmail.com', '24fb96b624f2cd87ba6cd8386e77e017162fe5ab7ff451fc356701f1a432675f', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', '2022-08-03 07:30:45 AM', '2022-08-02 16:07:40', '2022-08-03 02:00:45', 'Expired'),
(9, '1', 'mondalbidyut38@gmail.com', '12e5a26b74727b551470517bd9df7112f2449f9fbaa1bd5d24edce07ad317c69', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', '2022-08-04 07:06:27 AM', '2022-08-03 15:50:00', '2022-08-04 01:36:27', 'Expired'),
(10, '1', 'mondalbidyut38@gmail.com', 'e557006f2e88bb4907e737436d844cbb56bf02effaad24dc1e6df463dff53797', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-04 09:26:51 PM', '2022-08-04 01:36:38', '2022-08-04 15:56:51', 'Expired'),
(11, '1', 'mondalbidyut38@gmail.com', '599d9793e80bfe8cc00ae9f7d4d783b2feada9fa671e46083f7c067ba4323953', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 08:53:17 AM', '2022-08-07 02:51:55', '2022-08-07 03:23:17', 'Expired'),
(12, '1', 'mondalbidyut38@gmail.com', '4b296ad093fe3fd58c036ec899f93258f5e5c019e9e6aaf106793d0dbd38e485', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36', '2022-08-07 02:51:21 PM', '2022-08-07 08:33:04', '2022-08-07 09:21:21', 'Expired'),
(13, '1', 'mondalbidyut38@gmail.com', 'b30314f3b8ba8233380f623000e3d68fdac94f5f78d8b227586a81c78080fb8d', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2022-09-14 09:32:51 PM', '2022-09-14 15:50:20', '2022-09-14 16:02:51', 'Expired'),
(14, '1', 'mondalbidyut38@gmail.com', '3628bf29c182c1a05fda387a730fe676f42ce064cc0f6362e73cdf285d5a35e4', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, '2022-09-20 14:42:19', '2022-09-20 14:42:19', 'Expired'),
(15, '1', 'mondalbidyut38@gmail.com', '518b917ee45225ad9316517ba8da46158fc49f629c10c439746920cadc5b6bab', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2022-09-20 08:15:35 PM', '2022-09-20 14:42:19', '2022-09-20 14:45:35', 'Expired'),
(16, '1', 'mondalbidyut38@gmail.com', '56fe2976afbd4a54303d60ff2ab5357cd7dde7835c23633727b8b3e1d3a64313', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '2022-10-17 07:48:45 AM', '2022-10-17 01:48:32', '2022-10-17 02:18:45', 'Expired'),
(17, '1', 'mondalbidyut38@gmail.com', '05cdb2d382e3938d2fac9bb76396b5e18987a989d9e31b23822d22ae26960fc8', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '2022-11-07 09:26:00 PM', '2022-11-07 15:47:48', '2022-11-07 15:56:00', 'Expired'),
(18, '1', 'mondalbidyut38@gmail.com', 'aa2cfd8afd6ddb4cf41b3ae0b0ac4ba49552677793578905f67fbe3a8ed264bd', 'http://127.0.0.1:8000/myblog/access/viewalltbldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2023-01-05 02:31:46 PM', '2023-01-05 08:56:02', '2023-01-05 09:01:46', 'Expired'),
(19, '1', 'mondalbidyut38@gmail.com', '8010a290526311ac8575cbd2133b259505b48896fab8081962c42f77c1c4d965', 'http://127.0.0.1:8000/myblog/access/alldata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2023-01-05 04:37:54 PM', '2023-01-05 11:07:17', '2023-01-05 11:07:54', 'Expired'),
(20, '1', 'mondalbidyut38@gmail.com', '5f5bfa4f47c1776a132cbef70acf4d94c8c5e6362b9c0e24402f00874ab6b3f5', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-21 07:01:10 AM', '2023-03-21 01:29:02', '2023-03-21 01:31:10', 'Expired'),
(21, '1', 'mondalbidyut38@gmail.com', 'bbe51ac0bb6cad06f2492396d5d489e3331c50e996fab27c85de59c21883eb09', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-21 07:03:19 AM', '2023-03-21 01:31:22', '2023-03-21 01:33:19', 'Expired'),
(22, '1', 'mondalbidyut38@gmail.com', 'ec485c5264886e3637df454a50449800caa8e74a28af91854638a069d565d007', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-31 08:28:32 PM', '2023-05-31 14:06:05', '2023-06-04 03:15:50', 'Expired'),
(23, '1', 'mondalbidyut38@gmail.com', '381781073743953b17a536e78cc6febc0533aa4ba267433256e14834ccfa3311', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-04 08:50:04 AM', '2023-06-04 03:15:50', '2023-06-05 14:31:35', 'Expired'),
(24, '1', 'mondalbidyut38@gmail.com', '52899075a1771097519cc0bac3a6666c160301560a76ae9a6796da96a64d0eed', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-05 08:46:09 PM', '2023-06-05 14:31:35', '2023-06-05 15:16:09', 'Expired'),
(25, '1', 'mondalbidyut38@gmail.com', '70a443688ef71a9d461c4b245df5dfdb9d57e2ce1abd90dff8967bf50335dc46', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-07 06:54:39 AM', '2023-06-07 01:24:37', '2023-06-07 13:45:47', 'Expired'),
(26, '1', 'mondalbidyut38@gmail.com', '33031cfbd653f8f25d8116d8cf716941ae1dd58d8c1cb749fe69b305b5b569e9', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-07 07:56:10 PM', '2023-06-07 13:45:47', '2023-06-07 14:26:10', 'Expired'),
(27, '1', 'mondalbidyut38@gmail.com', 'c06e4104c18400baee6d66cfbbd4cc38997ca30bfd629cbbb80b6d5fe9758ea3', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-08 07:24:17 AM', '2023-06-08 01:19:19', '2023-06-08 01:54:17', 'Expired'),
(28, '1', 'mondalbidyut38@gmail.com', 'dd48c8415c736ed4c1855cb41b5d64869e1048b9b95fd342e3baaba5faad46c7', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-08 08:29:03 PM', '2023-06-08 14:28:35', '2023-06-08 14:59:03', 'Expired'),
(29, '1', 'mondalbidyut38@gmail.com', '0d64c4d0a33c06cdb506d91884c3486eed060bc6e06f68c513e5398847f047ee', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-11 12:02:22 PM', '2023-06-11 06:32:21', '2023-06-12 11:00:24', 'Expired'),
(30, '1', 'mondalbidyut38@gmail.com', 'c548a422473dc24ac4b445858c64ac6b4951082eea7dc99f52781e46e6a82f50', 'http://127.0.0.1:8000/myblog/access/viewallmultidata', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-12 04:50:12 PM', '2023-06-12 11:00:24', '2023-06-12 14:22:43', 'Expired'),
(31, '1', 'mondalbidyut38@gmail.com', '0e9014cc9cdb6f9740191da896f4a024c6803392ce1ad78efb71939d15f04ff4', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-12 08:08:32 PM', '2023-06-12 14:22:43', '2023-06-12 14:38:32', 'Expired'),
(32, '1', 'mondalbidyut38@gmail.com', 'a990166d253fdbda42019abf33dd2349db2c13ce0073ab139e54d45ea7ec4694', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-12 08:42:37 PM', '2023-06-12 14:38:52', '2023-06-12 15:12:37', 'Expired'),
(33, '1', 'mondalbidyut38@gmail.com', 'f12ab303334181485f080e2d9de6b888c237483f98b42bb6863a4408e48736f7', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-15 08:12:22 AM', '2023-06-15 02:42:20', '2023-06-15 05:54:56', 'Expired'),
(34, '1', 'mondalbidyut38@gmail.com', 'ed70db1146c472c7259e55d9b172c0b8c58d3632af981e4c5023feb898d4620a', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-15 11:24:58 AM', '2023-06-15 05:54:56', '2023-06-15 15:54:56', 'Expired'),
(35, '1', 'mondalbidyut38@gmail.com', '23f65434ca6f86d3593e092abf9008597b69cb7221adc9e25d997a39252896bf', 'http://127.0.0.1:8000/myblog/access/viewallvideolist', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-15 09:24:57 PM', '2023-06-15 15:54:56', '2023-06-15 15:54:57', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `myblog_register_tbl`
--

CREATE TABLE `myblog_register_tbl` (
  `id` int(11) NOT NULL,
  `login_check` varchar(100) DEFAULT NULL,
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

INSERT INTO `myblog_register_tbl` (`id`, `login_check`, `name`, `email`, `phone`, `password`, `photo`, `admin_check`, `currentdate`) VALUES
(1, '1', 'Bidyut Mandal', 'mondalbidyut38@gmail.com', '7735501335', '$2y$10$BIAbqb6Dm9V2B1gwP/8lqODHruDbCl89XuTpzZymitVIfDf68vGW6', '39637_151695.jpg', 'approved', '2022-02-25');

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
(25, 'How to show and hide password in a web page using javascript ?', 'https://www.youtube.com/embed/kaSaKq_J5w8', 'https://youtu.be/kaSaKq_J5w8', '2022-08-08', '2022-08-07 03:12:06', '2023-05-31 14:06:33');

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
-- Indexes for table `videolist`
--
ALTER TABLE `videolist`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `multiples`
--
ALTER TABLE `multiples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `multiples_user_data`
--
ALTER TABLE `multiples_user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `myblog_logindetails_tbl`
--
ALTER TABLE `myblog_logindetails_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `myblog_register_tbl`
--
ALTER TABLE `myblog_register_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `newdemo_tbl`
--
ALTER TABLE `newdemo_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `videolist`
--
ALTER TABLE `videolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
