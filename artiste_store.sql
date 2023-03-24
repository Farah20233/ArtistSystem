-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2021 at 02:27 PM
-- Server version: 5.7.33-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artiste_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us Information', 'This website is catered for artists worldwide to publish and auction their artwork', '<p>Online marketplace for artists to publish their artwork</p>');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_username` text NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_username`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Admin', 'farahshaheend@gmail.com', '$2y$10$xpx99o9S254lMEiPRibpwOeFRnrYNuCgnYCl7.E7lr0aGH2kc/kr6', 'admin', 'admin.jpg', '077885221', 'Bahrain', 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(2, 'Quality Certified Artwork', 'Artwork on this site are 100% original and certified!'),
(3, '30 Day Return policy', 'Free returns on everything for 30 days. '),
(6, 'International', 'Discover works by some of today’s most sought after artists, in over 80 different countries.');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(11, 'Print outs bundle #5', 17, 18),
(12, 'Print outs bundle #4', 16, 18),
(13, 'Print outs bundle #3', 15, 18),
(14, 'Print outs bundle #2', 14, 18),
(21, 'Print outs bundle #1 ', 17, 0),
(32, 'Oil Paintings', 4, 11),
(33, 'Print outs bundle #6', 5, 11),
(34, 'Watercolor Bundles', 3, 11),
(35, 'Acrylic Bundles', 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `ip_add`, `qty`, `p_price`, `product_weight`, `product_type`) VALUES
(1, 11, '33666', 1, '200', 2.0, 'physical_product'),
(17, 50, '84.255.184.34', 1, '70', 1.0, 'physical_product'),
(18, 41, '84.255.184.34', 1, '3000', 2.3, 'physical_product'),
(19, 50, '88.201.1.234', 1, '70', 1.0, 'physical_product'),
(20, 3, '88.201.1.234', 1, '0', 0.0, 'physical_product'),
(23, 40, '84.255.184.111', 1, '0', 0.0, 'physical_product'),
(26, 52, '84.255.184.181', 1, '900', 2.0, 'physical_product'),
(29, 46, '84.255.184.242', 3, '50', 2.5, 'physical_product'),
(39, 10, '84.255.184.135', 1, '70', 1.5, 'physical_product');

-- --------------------------------------------------------

--
-- Table structure for table `cart_meta`
--

CREATE TABLE `cart_meta` (
  `meta_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `cart_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_meta`
--

INSERT INTO `cart_meta` (`meta_id`, `ip_add`, `cart_id`, `product_id`, `meta_key`, `meta_value`) VALUES
(27, '84.255.184.34', 17, 50, 'measurements', 'Medium'),
(28, '84.255.184.34', 17, 50, 'frame', 'Blue'),
(29, '84.255.184.34', 17, 50, 'variation_id', '#586'),
(30, '84.255.184.34', 18, 41, 'frame', '60X80'),
(31, '84.255.184.34', 18, 41, 'color', 'Black'),
(32, '84.255.184.34', 18, 41, 'variation_id', '#458'),
(33, '88.201.1.234', 19, 50, 'measurements', 'Medium'),
(34, '88.201.1.234', 19, 50, 'frame', 'Blue'),
(35, '88.201.1.234', 19, 50, 'variation_id', '#586'),
(36, '88.201.1.234', 20, 3, 'frame', 'Black'),
(37, '88.201.1.234', 20, 3, 'measurements', '60X80'),
(38, '88.201.1.234', 20, 3, 'variation_id', '#474'),
(47, '84.255.184.111', 23, 40, 'frame', 'Black'),
(48, '84.255.184.111', 23, 40, 'color', 'Blue'),
(49, '84.255.184.111', 23, 40, 'measurements', '40X50'),
(50, '84.255.184.111', 23, 40, 'variation_id', '#359'),
(56, '84.255.184.242', 29, 46, 'measurements', '40x50'),
(57, '84.255.184.242', 29, 46, 'frame', 'Brown'),
(58, '84.255.184.242', 29, 46, 'color', 'Pink&Black'),
(59, '84.255.184.242', 29, 46, 'variation_id', '#494');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Acrylic', 'no', 'acrylic.jpg'),
(3, 'Clay', 'no', 'clay.jpg'),
(4, 'Oil', 'no', 'oilpaintings.jpg'),
(5, 'Gouache', 'no', 'gouache.jpg'),
(6, 'Glass Paint', 'no', 'glass.jpg'),
(7, 'Watercolor', 'no', 'watercolor.jpg'),
(8, 'Digital', 'no', 'digital.jpg'),
(9, 'Charcoal', 'no', 'charcoal.jpg'),
(10, 'Textile', 'no', 'textile.jpg'),
(11, 'Photography', 'no', 'photo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'artisteartassistant@gmail.com', 'Contact us via email', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(10) NOT NULL,
  `country_name` text NOT NULL,
  `country_code` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `country_code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Aland Islands', 'AX'),
(3, 'Albania', 'AL'),
(4, 'Algeria', 'DZ'),
(5, 'American Samoa', 'AS'),
(6, 'Andorra', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antarctica', 'AQ'),
(10, 'Antigua And Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrain', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Belgium', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermuda', 'BM'),
(26, 'Bhutan', 'BT'),
(27, 'Bolivia', 'BO'),
(28, 'Bosnia And Herzegovina', 'BA'),
(29, 'Botswana', 'BW'),
(30, 'Bouvet Island', 'BV'),
(31, 'Brazil', 'BR'),
(32, 'British Indian Ocean Territory', 'IO'),
(33, 'Brunei Darussalam', 'BN'),
(34, 'Bulgaria', 'BG'),
(35, 'Burkina Faso', 'BF'),
(36, 'Burundi', 'BI'),
(37, 'Cambodia', 'KH'),
(38, 'Cameroon', 'CM'),
(39, 'Canada', 'CA'),
(40, 'Cape Verde', 'CV'),
(41, 'Cayman Islands', 'KY'),
(42, 'Central African Republic', 'CF'),
(43, 'Chad', 'TD'),
(44, 'Chile', 'CL'),
(45, 'China', 'CN'),
(46, 'Christmas Island', 'CX'),
(47, 'Cocos (keeling) Islands', 'CC'),
(48, 'Colombia', 'CO'),
(49, 'Comoros', 'KM'),
(50, 'Congo', 'CG'),
(51, 'Congo, The Democratic Republic Of', 'CD'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Cote D\'ivoire', 'CI'),
(55, 'Croatia', 'HR'),
(56, 'Cuba', 'CU'),
(57, 'Cyprus', 'CY'),
(58, 'Czech Republic', 'CZ'),
(59, 'Denmark', 'DK'),
(60, 'Djibouti', 'DJ'),
(61, 'Dominica', 'DM'),
(62, 'Dominican Republic', 'DO'),
(63, 'Ecuador', 'EC'),
(64, 'Egypt', 'EG'),
(65, 'El Salvador', 'SV'),
(66, 'Equatorial Guinea', 'GQ'),
(67, 'Eritrea', 'ER'),
(68, 'Estonia', 'EE'),
(69, 'Ethiopia', 'ET'),
(70, 'Falkland Islands (malvinas)', 'FK'),
(71, 'Faroe Islands', 'FO'),
(72, 'Fiji', 'FJ'),
(73, 'Finland', 'FI'),
(74, 'France', 'FR'),
(75, 'French Guiana', 'GF'),
(76, 'French Polynesia', 'PF'),
(77, 'French Southern Territories', 'TF'),
(78, 'Gabon', 'GA'),
(79, 'Gambia', 'GM'),
(80, 'Georgia', 'GE'),
(81, 'Germany', 'DE'),
(82, 'Ghana', 'GH'),
(83, 'Gibraltar', 'GI'),
(84, 'Greece', 'GR'),
(85, 'Greenland', 'GL'),
(86, 'Grenada', 'GD'),
(87, 'Guadeloupe', 'GP'),
(88, 'Guam', 'GU'),
(89, 'Guatemala', 'GT'),
(90, 'Guernsey', 'GG'),
(91, 'Guinea', 'GN'),
(92, 'Guinea-bissau', 'GW'),
(93, 'Guyana', 'GY'),
(94, 'Haiti', 'HT'),
(95, 'Heard Island And Mcdonald Islands', 'HM'),
(96, 'Holy See (vatican City State)', 'VA'),
(97, 'Honduras', 'HN'),
(98, 'Hong Kong', 'HK'),
(99, 'Hungary', 'HU'),
(100, 'Iceland', 'IS'),
(101, 'India', 'IN'),
(102, 'Indonesia', 'ID'),
(103, 'Iran, Islamic Republic Of', 'IR'),
(104, 'Iraq', 'IQ'),
(105, 'Ireland', 'IE'),
(106, 'Isle Of Man', 'IM'),
(107, 'Israel', 'IL'),
(108, 'Italy', 'IT'),
(109, 'Jamaica', 'JM'),
(110, 'Japan', 'JP'),
(111, 'Jersey', 'JE'),
(112, 'Jordan', 'JO'),
(113, 'Kazakhstan', 'KZ'),
(114, 'Kenya', 'KE'),
(115, 'Kiribati', 'KI'),
(116, 'Korea, Democratic People\'s Republic Of', 'KP'),
(117, 'Korea, Republic Of', 'KR'),
(118, 'Kuwait', 'KW'),
(119, 'Kyrgyzstan', 'KG'),
(120, 'Lao People\'s Democratic Republic', 'LA'),
(121, 'Latvia', 'LV'),
(122, 'Lebanon', 'LB'),
(123, 'Lesotho', 'LS'),
(124, 'Liberia', 'LR'),
(125, 'Libyan Arab Jamahiriya', 'LY'),
(126, 'Liechtenstein', 'LI'),
(127, 'Lithuania', 'LT'),
(128, 'Luxembourg', 'LU'),
(129, 'Macao', 'MO'),
(130, 'Macedonia, The Former Yugoslav Republic Of', 'MK'),
(131, 'Madagascar', 'MG'),
(132, 'Malawi', 'MW'),
(133, 'Malaysia', 'MY'),
(134, 'Maldives', 'MV'),
(135, 'Mali', 'ML'),
(136, 'Malta', 'MT'),
(137, 'Marshall Islands', 'MH'),
(138, 'Martinique', 'MQ'),
(139, 'Mauritania', 'MR'),
(140, 'Mauritius', 'MU'),
(141, 'Mayotte', 'YT'),
(142, 'Mexico', 'MX'),
(143, 'Micronesia, Federated States Of', 'FM'),
(144, 'Moldova, Republic Of', 'MD'),
(145, 'Monaco', 'MC'),
(146, 'Mongolia', 'MN'),
(147, 'Montserrat', 'MS'),
(148, 'Morocco', 'MA'),
(149, 'Mozambique', 'MZ'),
(150, 'Myanmar', 'MM'),
(151, 'Namibia', 'NA'),
(152, 'Nauru', 'NR'),
(153, 'Nepal', 'NP'),
(154, 'Netherlands', 'NL'),
(155, 'Netherlands Antilles', 'AN'),
(156, 'New Caledonia', 'NC'),
(157, 'New Zealand', 'NZ'),
(158, 'Nicaragua', 'NI'),
(159, 'Niger', 'NE'),
(160, 'Nigeria', 'NG'),
(161, 'Niue', 'NU'),
(162, 'Norfolk Island', 'NF'),
(163, 'Northern Mariana Islands', 'MP'),
(164, 'Norway', 'NO'),
(165, 'Oman', 'OM'),
(166, 'Pakistan', 'PK'),
(167, 'Palau', 'PW'),
(168, 'Palestinian Territory, Occupied', 'PS'),
(169, 'Panama', 'PA'),
(170, 'Papua New Guinea', 'PG'),
(171, 'Paraguay', 'PY'),
(172, 'Peru', 'PE'),
(173, 'Philippines', 'PH'),
(174, 'Pitcairn', 'PN'),
(175, 'Poland', 'PL'),
(176, 'Portugal', 'PT'),
(177, 'Puerto Rico', 'PR'),
(178, 'Qatar', 'QA'),
(179, 'Reunion', 'RE'),
(180, 'Romania', 'RO'),
(181, 'Russian Federation', 'RU'),
(182, 'Rwanda', 'RW'),
(183, 'Saint Helena', 'SH'),
(184, 'Saint Kitts And Nevis', 'KN'),
(185, 'Saint Lucia', 'LC'),
(186, 'Saint Pierre And Miquelon', 'PM'),
(187, 'Saint Vincent And The Grenadines', 'VC'),
(188, 'Samoa', 'WS'),
(189, 'San Marino', 'SM'),
(190, 'Sao Tome And Principe', 'ST'),
(191, 'Saudi Arabia', 'SA'),
(192, 'Senegal', 'SN'),
(193, 'Serbia And Montenegro', 'CS'),
(194, 'Seychelles', 'SC'),
(195, 'Sierra Leone', 'SL'),
(196, 'Singapore', 'SG'),
(197, 'Slovakia', 'SK'),
(198, 'Slovenia', 'SI'),
(199, 'Solomon Islands', 'SB'),
(200, 'Somalia', 'SO'),
(201, 'South Africa', 'ZA'),
(202, 'South Georgia And The South Sandwich Islands', 'GS'),
(203, 'Spain', 'ES'),
(204, 'Sri Lanka', 'LK'),
(205, 'Sudan', 'SD'),
(206, 'Suriname', 'SR'),
(207, 'Svalbard And Jan Mayen', 'SJ'),
(208, 'Swaziland', 'SZ'),
(209, 'Sweden', 'SE'),
(210, 'Switzerland', 'CH'),
(211, 'Syrian Arab Republic', 'SY'),
(212, 'Taiwan, Province Of China', 'TW'),
(213, 'Tajikistan', 'TJ'),
(214, 'Tanzania, United Republic Of', 'TZ'),
(215, 'Thailand', 'TH'),
(216, 'Timor-leste', 'TL'),
(217, 'Togo', 'TG'),
(218, 'Tokelau', 'TK'),
(219, 'Tonga', 'TO'),
(220, 'Trinidad And Tobago', 'TT'),
(221, 'Tunisia', 'TN'),
(222, 'Turkey', 'TR'),
(223, 'Turkmenistan', 'TM'),
(224, 'Turks And Caicos Islands', 'TC'),
(225, 'Tuvalu', 'TV'),
(226, 'Uganda', 'UG'),
(227, 'Ukraine', 'UA'),
(228, 'United Arab Emirates', 'AE'),
(229, 'United Kingdom', 'GB'),
(230, 'United States', 'US'),
(231, 'United States Minor Outlying Islands', 'UM'),
(232, 'Uruguay', 'UY'),
(233, 'Uzbekistan', 'UZ'),
(234, 'Vanuatu', 'VU'),
(235, 'Venezuela', 'VE'),
(236, 'Viet Nam', 'VN'),
(237, 'Virgin Islands, British', 'VG'),
(238, 'Virgin Islands, U.S.', 'VI'),
(239, 'Wallis And Futuna', 'WF'),
(240, 'Western Sahara', 'EH'),
(241, 'Yemen', 'YE'),
(242, 'Zambia', 'ZM'),
(243, 'Zimbabwe', 'ZW'),
(245, 'Myanmar (Burma)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `vendor_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(4, '6', 17, 'coupon1', '80', 'coupon-code-124442 ', 8, 0),
(5, 'admin_2', 46, '123', '50', 'abcd', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_username` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL,
  `customer_role` text NOT NULL,
  `following` int(11) NOT NULL,
  `followers` int(11) NOT NULL,
  `bio` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_username`, `customer_contact`, `customer_image`, `customer_ip`, `customer_confirm_code`, `customer_role`, `following`, `followers`, `bio`) VALUES
(2, 'Selena', 'Selena@gmail.com', '$2y$10$xpx99o9S254lMEiPRibpwOeFRnrYNuCgnYCl7.E7lr0aGH2kc/kr6', 'Selena', '0092334566931', 'selene.jpg', '::1', '', 'vendor', 0, 0, ''),
(3, 'Alisha', 'Alisha@gmail.com', '$2y$10$xpx99o9S254lMEiPRibpwOeFRnrYNuCgnYCl7.E7lr0aGH2kc/kr6', 'Alisha', '3334566931', 'alisha.jpg', '::1', '', 'customer', 0, 0, ''),
(6, 'Diane', 'Diane@gmail.com', '$2y$10$xpx99o9S254lMEiPRibpwOeFRnrYNuCgnYCl7.E7lr0aGH2kc/kr6', 'Diana', '3334566931', 'diana.jpg', '::1', '', 'vendor', 0, 0, ''),
(7, 'Layla', 'Layla@gmail.com', '$2y$10$xpx99o9S254lMEiPRibpwOeFRnrYNuCgnYCl7.E7lr0aGH2kc/kr6', 'Layla', '092778857827', 'layla.jpg', '::1', '', 'customer', 0, 0, ''),
(8, 'Mariam', 'Mariam@yahoo.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'Mariam', 'contact', 'mariam.jpg', '::1', '', 'customer', 0, 0, ''),
(9, 'Lana', 'Lana@gmail.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'Lana', 'contact', 'lana.jpg', '::1', '', 'vendor', 0, 0, ''),
(10, 'Diana', 'Diana@gmail.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'Diana', 'contact', 'diana.jpg', '::1', '', 'vendor', 0, 0, ''),
(11, 'Nadia', 'Nadia@gmail.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'Nadia', 'contact', 'nadia.jpg', '::1', '', 'vendor', 0, 0, ''),
(12, 'Rob', 'Rob@gmail.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'Rob', '06467476441', 'rob.jpg', '::1', '', 'vendor', 0, 0, ''),
(13, 'Daniel', 'daniel@gamil.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'Daniel', '05552259358', 'daniel.jpg', '::1', '', 'vendor', 0, 0, ''),
(14, 'Ali', 'Ali@gmail.com', '$2y$10$xpx99o9S254lMEiPRibpwOeFRnrYNuCgnYCl7.E7lr0aGH2kc/kr6', 'Ali', '3333', 'ali.jpg', '::1', '', 'vendor', 0, 0, ''),
(15, 'Mohammed', 'Mohammed@gmail.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'Mohammed', '03334566931', 'ronaldo.jpg', '::1', '', 'vendor', 0, 0, ''),
(16, 'Lisa', 'Lisa@gmail.co', '$2y$10$62dv5LxN8YN60Tcv.XG23eDJiaFPHrCEWPTotCw87YNKC2WfGlyoK', 'Lisa', '033489021', 'africa.jpg', '::1', '1216711300', 'customer', 0, 0, ''),
(17, 'Ahmed', 'Ahmed@gmail.com', '$2y$10$3WfFlZaUIgVltZ/QcAVL4eLUyKIrXez/nt/jDVxDkm/EN7lhhLxHu', 'Ahmed', '0923334566931', 'shah-rukh.jpg', '::1', '', 'vendor', 0, 0, ''),
(18, 'Omar Shaheen', 'omar.shaheen@gmail.com', '$2y$10$y520TPqdmT0pLEp7skE0XedGodhk1cMw701ofw0O0tDwj5t1bnTrO', 'omar', '39639213', 'f54c06594ed18817ff20f4fa9ef6f9e7.jpg', '::1', '2101355148', 'vendor', 0, 0, ''),
(19, 'Farah Shaheen', 'farahshaheend@gmail.com', '*3DEE8978EA1576B3CC50C93DF361059BEF1E7319', 'farah123', '1234567890', 'admin-cover-image.jpg', '::1', '1602867173', 'customer', 0, 0, ''),
(20, 'Farah Shaheenhd', 'farahh@gmail.com', '$2y$10$Gx2HZOkVvkxkkvlskLMRjeuyyeftmle3YM7T0jn1h95.N5W7PgOiK', 'Farahh', '39924900', 'admin-cover-image.jpg', '::1', '777760986', 'vendor', 0, 0, ''),
(21, 'new', 'new@gmail.com', '$2y$10$oDXkjl6DmLOynvtRtuaIEuOFpZCs3onYyziIlFJcHi3MellbhANFW', 'New', '39924900', 'admin-cover-image.jpg', '::1', '43374337', 'customer', 0, 0, ''),
(22, 'Farah Shaheen7', 'farah77@gmail.com', '$2y$10$BQm0s7EXyB.OL.8Enf8roeipKMStnpmOTFqAzTY6r3a4CzmPQvDaC', 'farah134', '39924900', 'admin-cover-image.jpg', '::1', '445967015', 'customer', 0, 0, ''),
(23, 'Sarah', 'fardd@gmail.com', '$2y$10$257oj4JP.2qHGt3KntXyXenbhS4mTnJTO/NlDPw2WlAPjBFptiBHe', 'sarah123', '39924900', 'admin-cover-image.jpg', '::1', '56595130', 'customer', 0, 0, ''),
(24, 'Lala', 'newdiscordacc11@gmail.com', '$2y$10$dJXLqjMCeHyxaZ4uHcOZWumvHEQ86dEsS9j4AZwfk8ZaBeVYFWRlG', 'lala123', '39639213', 'f54c06594ed18817ff20f4fa9ef6f9e7.jpg', '84.255.184.34', '', 'vendor', 0, 0, ''),
(27, 'tester123', 'sarah@gmail.com', '$2y$10$xpx99o9S254lMEiPRibpwOeFRnrYNuCgnYCl7.E7lr0aGH2kc/kr6', 'farah12398', '39924900', 'f54c06594ed18817ff20f4fa9ef6f9e7.jpg', '84.255.184.111', '812742944', 'customer', 0, 0, ''),
(36, 'Seniorprojectdemo', 'seniorprojectdemo123@gmail.com', '$2y$10$b2nswVFgjazPQYe4t/GSAuo4hXWnE16gCXYmuTJkuo7bLmE.GhX3y', 'seniorprojectdemo789', '39924900', '1.jpg', '84.255.184.38', '', 'vendor', 0, 0, ''),
(37, 'DemoCustomer', 'artisteartassistant@gmail.com', '$2y$10$i8kGUQiDAN417duIuSV/8uhj4AiZP1j./LqNVQJdZZLDEaBIhTreO', 'DEMOCustomer', '39924900', '1.jpg', '84.255.184.38', '', 'customer', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `customers_addresses`
--

CREATE TABLE `customers_addresses` (
  `addresse_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `billing_first_name` text NOT NULL,
  `billing_last_name` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address_1` text NOT NULL,
  `billing_address_2` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_postcode` text NOT NULL,
  `shipping_first_name` text NOT NULL,
  `shipping_last_name` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address_1` text NOT NULL,
  `shipping_address_2` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_postcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers_addresses`
--

INSERT INTO `customers_addresses` (`addresse_id`, `customer_id`, `billing_first_name`, `billing_last_name`, `billing_country`, `billing_address_1`, `billing_address_2`, `billing_state`, `billing_city`, `billing_postcode`, `shipping_first_name`, `shipping_last_name`, `shipping_country`, `shipping_address_1`, `shipping_address_2`, `shipping_state`, `shipping_city`, `shipping_postcode`) VALUES
(3, 6, 'f', 'l', '166', 'Address 123b', 'manama', '123', 'Mamana', '54600', 'f1', 'l1', '166', 'House#2/10', '123', 'Kpk', '123', '54000'),
(4, 2, 'Saadesdf', 'd', '166', 'Building 5453', 'hoora', '456', '12', '54000', 'f1', 'l1', '166', 'House #2/10', '123', 'ejf', '123', '54000'),
(5, 7, 'Lisa', 'Layla', '166', 'Building 8574', 'riffa', '789', 'Somewhere', '12763', 'f1', 'l1', '230', 'House #2/10', '123', '123', 'dcity', '54600'),
(6, 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 14, 'Mohammad', 'Ahmed', '166', 'park house', '384', '123', '45', '54600', 'Mohammad', 'Ahmed', '166', 'park123', 'House #2/10', 'notpoikj', 'erfe', '54600'),
(11, 15, 'Ali', 'Ahmed', '166', 'House', '2984', '123', '66t', '59400', 'Ali', 'Ahmed', '166', 'House#2/10', '123', 'adliya', 'fg', '54900'),
(12, 10, 'Diana', '12', '229', 'House', '294', '344', '543', '54600', 'Diana', 'Ahmed', '166', 'House#2/10', 'w8e', 'manama', 'hawaii', '59460'),
(13, 16, 'Alisha', '3', '166', 'house#2', '394', 'riffa', '39r', '54000', '', '', '', '', '', '', '', ''),
(14, 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 18, 'omar ', 'shaheeen', '18', 'dd', 'dddd', 'dd', '', '', '', '', '', '', '', '', '', ''),
(16, 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 22, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(20, 23, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 24, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(22, 25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 26, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(24, 27, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(25, 28, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(26, 29, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 30, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(28, 31, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(29, 31, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(30, 32, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(31, 33, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(32, 34, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(33, 35, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(34, 36, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', '', '', '', '', '', '', '', ''),
(35, 37, 'Farah', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers_history`
--

CREATE TABLE `customers_history` (
  `history_id` int(10) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers_history`
--

INSERT INTO `customers_history` (`history_id`, `ip_address`, `customer_id`, `product_id`) VALUES
(294, '::1', 2, 46),
(297, '::1', 2, 30),
(311, '::1', 14, 46),
(315, '::1', 14, 36),
(316, '::1', 14, 50),
(422, '::1', 0, 5),
(481, '::1', 0, 31),
(636, '::1', 18, 40),
(637, '::1', 18, 41),
(638, '::1', 18, 48),
(639, '::1', 18, 50),
(678, '::1', 20, 4),
(680, '::1', 20, 5),
(683, '::1', 20, 17),
(685, '::1', 0, 36),
(686, '::1', 22, 50),
(687, '::1', 22, 3),
(691, '::1', 22, 36),
(696, '161.35.183.194', 0, 36),
(700, '161.35.183.194', 0, 38),
(712, '84.255.184.34', 0, 4),
(713, '159.203.81.93', 0, 4),
(714, '84.255.184.34', 0, 31),
(715, '159.203.42.143', 0, 31),
(717, '162.243.4.24', 0, 41),
(719, '84.255.184.34', 0, 41),
(721, '162.243.69.215', 0, 50),
(725, '84.255.184.34', 24, 48),
(726, '84.255.184.34', 24, 50),
(727, '84.255.184.34', 24, 36),
(735, '88.201.1.234', 0, 3),
(736, '88.201.1.234', 0, 50),
(737, '88.201.1.234', 0, 14),
(738, '138.197.170.20', 0, 14),
(739, '88.201.82.184', 0, 36),
(740, '88.201.73.36', 0, 46),
(741, '192.241.137.43', 0, 46),
(742, '89.148.53.194', 0, 38),
(744, '109.161.192.140', 0, 40),
(746, '84.255.184.111', 26, 38),
(759, '84.255.184.111', 26, 46),
(763, '84.255.184.111', 26, 40),
(764, '198.199.97.10', 0, 38),
(766, '198.199.97.10', 0, 11),
(768, '84.255.184.111', 14, 11),
(774, '84.255.184.250', 0, 3),
(775, '84.255.184.250', 0, 50),
(776, '84.255.184.250', 0, 30),
(777, '104.248.75.7', 0, 30),
(780, '84.255.184.181', 28, 46),
(783, '84.255.184.181', 30, 15),
(784, '192.241.137.43', 0, 15),
(785, '84.255.184.181', 30, 4),
(786, '162.243.4.24', 0, 4),
(787, '54.186.101.184', 0, 50),
(794, '54.186.101.184', 0, 41),
(842, '34.214.74.175', 0, 31),
(849, '34.214.74.175', 0, 41),
(857, '34.214.74.175', 0, 17),
(860, '34.221.5.60', 0, 41),
(862, '34.221.5.60', 0, 46),
(867, '34.221.190.144', 0, 38),
(868, '34.221.190.144', 0, 50),
(869, '34.221.190.144', 0, 46),
(872, '138.197.202.197', 0, 36),
(879, '84.255.184.242', 0, 36),
(881, '104.248.75.7', 0, 31),
(889, '84.255.184.242', 31, 31),
(891, '162.243.4.24', 0, 46),
(893, '84.255.184.242', 31, 46),
(909, '198.199.97.10', 0, 40),
(917, '84.255.184.135', 24, 40),
(920, '84.255.184.135', 34, 50),
(926, '84.255.184.135', 24, 31),
(929, '84.255.184.135', 24, 10),
(935, '84.255.184.38', 24, 48),
(936, '161.35.183.194', 0, 48),
(937, '84.255.184.38', 24, 15),
(938, '84.255.184.38', 36, 17),
(939, '104.248.75.7', 0, 17),
(940, '84.255.184.38', 36, 5),
(941, '161.35.183.194', 0, 5),
(943, '84.255.184.38', 36, 36),
(944, '138.197.170.20', 0, 59),
(945, '84.255.184.38', 0, 59),
(956, '84.255.184.38', 37, 59);

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `download_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `product_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `download_title` text NOT NULL,
  `download_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`download_id`, `vendor_id`, `product_id`, `variation_id`, `download_title`, `download_file`) VALUES
(2, '6', 17, 489, 'Print1', 'print.jpg'),
(10, '6', 17, 488, 'Print', 'print.jpg'),
(14, '6', 17, 491, 'Print3', 'print3.jpg'),
(15, '6', 15, 0, 'print4', 'print4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `site_title` text NOT NULL,
  `meta_author` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `enable_vendor` text NOT NULL,
  `new_product_status` text NOT NULL,
  `edited_product_status` text NOT NULL,
  `order_status_change` text NOT NULL,
  `order_status_for_withdraw` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `meta_author`, `meta_description`, `meta_keywords`, `enable_vendor`, `new_product_status`, `edited_product_status`, `order_status_change`, `order_status_for_withdraw`) VALUES
(1, 'Artiste- Art Assistant', 'Ariste', 'Social media marketplace website catered towards artsts to publish and auction artwork. ', 'art, multi-artists, project, website', 'yes', 'pending', 'yes', 'yes', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `hide_admin_orders`
--

CREATE TABLE `hide_admin_orders` (
  `hide_id` int(10) NOT NULL,
  `admin_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hide_admin_orders`
--

INSERT INTO `hide_admin_orders` (`hide_id`, `admin_id`, `order_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `icon_id` int(10) NOT NULL,
  `icon_product` int(10) NOT NULL,
  `icon_title` varchar(255) NOT NULL,
  `icon_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`icon_id`, `icon_product`, `icon_title`, `icon_image`) VALUES
(1, 1, 'statue', 'icon image.jpg'),
(2, 2, 'Icon-2', 'icon-2.jpg'),
(3, 3, 'Icon-3', 'icon-3.jpg'),
(4, 4, 'Icon-4', 'icon-4.j[g'),
(5, 3, 'dummy', 'icon image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Anna\r\nBloomfield-Ravliuc', 'no', 'a1.jpg'),
(3, 'Felix\r\nGonzalez', 'no', 'a2.jpg'),
(4, 'Damian\r\nTirado', 'no', 'a3.jpg'),
(5, 'Lu\r\nMourelle', 'no', 'a4.jpg'),
(6, 'Stanislav Sidorov', 'yes', 'a5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `shipping_type` text NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL,
  `payment_method` text NOT NULL,
  `order_date` text NOT NULL,
  `order_total` decimal(10,1) NOT NULL,
  `order_note` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `invoice_no`, `shipping_type`, `shipping_cost`, `payment_method`, `order_date`, `order_total`, `order_note`, `order_status`) VALUES
(1, 14, 1279072311, '', 44.0, 'pay offline', 'January 07, 2019 12:33', 7114.0, '', 'completed'),
(2, 18, 1774462885, '', 0.0, 'pay offline', 'May 18, 2021 12:07', 400.0, '', 'pending'),
(3, 22, 1358583950, '', 0.0, 'pay offline', 'May 19, 2021 10:04', 199.0, '', 'pending'),
(4, 24, 1885739008, '', 0.0, 'pay offline', 'May 19, 2021 07:22', 1270.0, '', 'pending'),
(5, 26, 545280770, '', 0.0, 'pay offline', 'May 21, 2021 12:54', 1100.0, '', 'pending'),
(6, 30, 1645725614, '', 0.0, 'pay offline', 'May 23, 2021 03:06', 2000.0, '', 'pending'),
(7, 31, 1915480805, '', 0.0, 'pay offline', 'May 24, 2021 07:57', 1000.0, '', 'pending'),
(8, 31, 1287972784, '', 0.0, 'pay offline', 'May 24, 2021 08:33', 50.0, '', 'pending'),
(9, 32, 1125692692, '', 0.0, 'pay offline', 'May 24, 2021 04:56', 2000.0, '', 'pending'),
(10, 33, 133066850, '', 0.0, 'paypal', 'May 24, 2021 06:32', 1900.0, '', 'processing'),
(11, 33, 2072045394, '', 0.0, 'paypal', 'May 24, 2021 06:34', 1000.0, '', 'processing'),
(12, 35, 55184496, '', 0.0, 'paypal', 'May 25, 2021 03:14', 1000.0, '', 'processing'),
(13, 36, 2002802157, '', 0.0, 'paypal', 'May 25, 2021 07:03', 1000.0, '', 'completed'),
(14, 37, 1778373570, '', 0.0, 'pay offline', 'May 25, 2021 11:38', 1000.0, '', 'completed'),
(15, 36, 2101062809, '', 0.0, 'pay offline', 'May 25, 2021 11:53', 1000.0, '', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_addresses`
--

CREATE TABLE `orders_addresses` (
  `addresse_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `billing_first_name` text NOT NULL,
  `billing_last_name` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address_1` text NOT NULL,
  `billing_address_2` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_postcode` text NOT NULL,
  `is_shipping_address` text NOT NULL,
  `shipping_first_name` text NOT NULL,
  `shipping_last_name` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address_1` text NOT NULL,
  `shipping_address_2` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_postcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_addresses`
--

INSERT INTO `orders_addresses` (`addresse_id`, `order_id`, `billing_first_name`, `billing_last_name`, `billing_country`, `billing_address_1`, `billing_address_2`, `billing_state`, `billing_city`, `billing_postcode`, `is_shipping_address`, `shipping_first_name`, `shipping_last_name`, `shipping_country`, `shipping_address_1`, `shipping_address_2`, `shipping_state`, `shipping_city`, `shipping_postcode`) VALUES
(1, 1, 'Farah', 'Shaheen', '166', 'house123', 'house123', 'bahrain', 'manama', '54600', 'no', 'farah', 'shaheen', '166', 'house123', 'house123', 'bahrain', 'manama', '54600'),
(2, 2, 'omar ', 'shaheeen', '18', 'dd', 'dddd', 'dd', '', '', 'yes', '', '', '', '', '', '', '', ''),
(3, 3, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'none', '', '', '', '', '', '', '', ''),
(4, 4, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'yes', '', '', '', '', '', '', '', ''),
(5, 5, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'yes', '', '', '', '', '', '', '', ''),
(6, 6, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'yes', '', '', '', '', '', '', '', ''),
(7, 7, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'none', '', '', '', '', '', '', '', ''),
(8, 8, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'yes', '', '', '', '', '', '', '', ''),
(9, 9, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'yes', '', '', '', '', '', '', '', ''),
(10, 10, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'yes', '', '', '', '', '', '', '', ''),
(11, 11, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'yes', '', '', '', '', '', '', '', ''),
(12, 12, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'yes', '', '', '', '', '', '', '', ''),
(13, 13, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'yes', '', '', '', '', '', '', '', ''),
(14, 14, 'Farah', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', ''),
(15, 15, 'Farah', 'Shaheen', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'yes', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `item_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `price` decimal(10,1) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`item_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(1, 1, 50, 70.0, 1),
(2, 1, 46, 1100.0, 1),
(3, 1, 40, 5900.0, 1),
(4, 2, 5, 100.0, 4),
(5, 3, 17, 199.0, 1),
(6, 4, 50, 70.0, 1),
(7, 4, 36, 1200.0, 1),
(8, 5, 46, 1100.0, 1),
(9, 6, 46, 1100.0, 1),
(10, 6, 52, 900.0, 1),
(11, 7, 36, 1000.0, 1),
(12, 8, 31, 50.0, 1),
(13, 9, 46, 1100.0, 1),
(14, 9, 51, 900.0, 1),
(15, 10, 51, 900.0, 1),
(16, 10, 55, 1000.0, 1),
(17, 11, 55, 1000.0, 1),
(18, 12, 57, 1000.0, 1),
(19, 13, 59, 1000.0, 1),
(20, 14, 59, 1000.0, 1),
(21, 15, 59, 1000.0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_items_meta`
--

CREATE TABLE `orders_items_meta` (
  `meta_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_items_meta`
--

INSERT INTO `orders_items_meta` (`meta_id`, `order_id`, `item_id`, `product_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 1, 50, 'Size', 'Medium'),
(2, 1, 1, 50, 'Frame Color', 'Blue'),
(3, 1, 1, 50, 'variation_id', '#586'),
(4, 1, 2, 46, 'Frame Color', 'Brown'),
(5, 1, 2, 46, 'Frame', 'Black'),
(6, 1, 2, 46, 'Color', 'Brown&Black'),
(7, 1, 2, 46, 'variation_id', '#494'),
(8, 1, 3, 40, 'Frame', 'Brown'),
(9, 1, 3, 40, 'Color', 'Blue'),
(10, 1, 3, 40, 'Measurements', '40X50'),
(11, 1, 3, 40, 'variation_id', '#360'),
(12, 3, 5, 17, 'frame_material', 'Plastic'),
(13, 3, 5, 17, 'variation_id', '#489'),
(14, 4, 6, 50, 'measurements', 'Medium'),
(15, 4, 6, 50, 'frame', 'Blue'),
(16, 4, 6, 50, 'variation_id', '#586'),
(17, 4, 7, 36, 'color_combo', 'Black&Yellow'),
(18, 4, 7, 36, 'variation_id', '#336'),
(19, 5, 8, 46, 'measurements', '40x50'),
(20, 5, 8, 46, 'frame', 'Brown'),
(21, 5, 8, 46, 'color', 'Pink&Black'),
(22, 5, 8, 46, 'variation_id', '#494'),
(23, 6, 9, 46, 'measurements', '40x50'),
(24, 6, 9, 46, 'frame', 'Brown'),
(25, 6, 9, 46, 'color', 'Pink&Black'),
(26, 6, 9, 46, 'variation_id', '#494'),
(27, 7, 11, 36, 'color_combo', 'Black&Pink'),
(28, 7, 11, 36, 'variation_id', '#335'),
(29, 8, 12, 31, 'frame', 'White'),
(30, 8, 12, 31, 'measurements', '60X90'),
(31, 8, 12, 31, 'variation_id', '#276'),
(32, 9, 13, 46, 'measurements', '40x50'),
(33, 9, 13, 46, 'frame', 'Brown'),
(34, 9, 13, 46, 'color', 'Pink&Black'),
(35, 9, 13, 46, 'variation_id', '#494');

-- --------------------------------------------------------

--
-- Table structure for table `orders_notes`
--

CREATE TABLE `orders_notes` (
  `note_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `sub_order_id` text NOT NULL,
  `item_id` int(10) NOT NULL,
  `note_content` text NOT NULL,
  `note_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_notes`
--

INSERT INTO `orders_notes` (`note_id`, `order_id`, `sub_order_id`, `item_id`, `note_content`, `note_date`) VALUES
(1, 1, '', 1, 'stock reduced from 3 to 2.', 'January 07, 2019 12:33'),
(2, 1, '', 2, 'stock reduced from 56 to 55.', 'January 07, 2019 12:33'),
(3, 1, '', 3, 'stock reduced from 100 to 99.', 'January 07, 2019 12:33'),
(4, 1, '3', 0, '', 'January 08, 2019 03:00'),
(5, 2, '', 4, 'stock reduced from 5 to 1.', 'May 18, 2021 12:07'),
(6, 3, '', 5, 'stock reduced from 2 to 1.', 'May 19, 2021 10:04'),
(7, 4, '', 6, 'stock reduced from 2 to 1.', 'May 19, 2021 07:22'),
(8, 4, '', 7, 'stock reduced from 2 to 1.', 'May 19, 2021 07:22'),
(9, 5, '', 8, 'stock reduced from 55 to 54.', 'May 21, 2021 12:54'),
(10, 6, '', 9, 'stock reduced from 54 to 53.', 'May 23, 2021 03:06'),
(11, 6, '', 10, 'stock reduced from 0 to -1.', 'May 23, 2021 03:06'),
(12, 7, '', 11, 'stock reduced from 1 to 0.', 'May 24, 2021 07:57'),
(13, 8, '', 12, 'stock reduced from 1 to 0.', 'May 24, 2021 08:33'),
(14, 9, '', 13, 'stock reduced from 53 to 52.', 'May 24, 2021 04:56'),
(15, 9, '', 14, 'stock reduced from 0 to -1.', 'May 24, 2021 04:56'),
(16, 10, '', 15, 'stock reduced from 0 to -1.', 'May 24, 2021 06:32'),
(17, 10, '', 16, 'stock reduced from 12 to 11.', 'May 24, 2021 06:32'),
(18, 11, '', 17, 'stock reduced from 11 to 10.', 'May 24, 2021 06:34'),
(19, 12, '', 18, 'stock reduced from 7 to 6.', 'May 25, 2021 03:14'),
(20, 13, '', 19, 'stock reduced from 7 to 6.', 'May 25, 2021 07:03'),
(21, 14, '', 20, 'stock reduced from 6 to 5.', 'May 25, 2021 11:38'),
(22, 15, '', 21, 'stock reduced from 5 to 4.', 'May 25, 2021 11:53');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'Master card', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'Visa Card', 443, 865, '11/1/2016'),
(10, 1563376867, 563, 'Debit Card', 13536, 213, '2/3/2018');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) NOT NULL,
  `commission_percentage` int(10) NOT NULL,
  `minimum_withdraw_limit` int(10) NOT NULL,
  `days_before_withdraw` int(10) NOT NULL,
  `enable_paypal` text NOT NULL,
  `paypal_email` text NOT NULL,
  `paypal_sandbox` text NOT NULL,
  `paypal_currency_code` text NOT NULL,
  `paypal_app_client_id` text NOT NULL,
  `paypal_app_client_secret` text NOT NULL,
  `enable_stripe` text NOT NULL,
  `stripe_secret_key` text NOT NULL,
  `stripe_publishable_key` text NOT NULL,
  `stripe_currency_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `commission_percentage`, `minimum_withdraw_limit`, `days_before_withdraw`, `enable_paypal`, `paypal_email`, `paypal_sandbox`, `paypal_currency_code`, `paypal_app_client_id`, `paypal_app_client_secret`, `enable_stripe`, `stripe_secret_key`, `stripe_publishable_key`, `stripe_currency_code`) VALUES
(1, 10, 10, 2, 'yes', 'artisteartassistant@gmail.com', 'on', 'USD', 'AQzJGGDi4KZrbX318v6yXzSVQRLesCslKVzNKuGkA1UMAHwBArHr0onrVEZtSAtOi_LbunG2ymrmd45_', 'EFTT61XQPRNeUbai0KMcEwyvRBEqwBUv3z2mgPq-zXjgVmpbMfJNVHfLSY_CBXdIH3G3M5rzuPvme4N_', 'yes', 'sk_test_RtRMOCdX6IIK2f9Q94CilE5k', 'pk_test_NcOLIMZPgVJid1099xnjs1Ka', 'CAD');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_seo_desc` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `product_type` text NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_views` int(10) NOT NULL,
  `product_vendor_status` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `vendor_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_seo_desc`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `product_type`, `product_weight`, `product_views`, `product_vendor_status`, `status`) VALUES
(3, '6', 9, 4, 6, '2021-05-23 01:07:37', 'Spring Bloom', '', 'product-url-1', 'product1.jpg', 'product2.jpg', 'product3.jpg', 0, 0, '<p>Blooming flowers during spring</p>', '<p>Variety of colors and styles</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Canvas', 'Oil', 'variable_product', 0.0, 30, 'active', 'product'),
(4, '6', 9, 2, 5, '2021-05-23 01:22:41', 'Ocean Waves', '', 'product-url-2', 'a1.jpg', 'a2.jpg', 'a4.jpg', 230, 150, '<p>Capturing the beauty of the ocean waves</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Canvas', 'Acrylic', 'physical_product', 2.0, 15, 'active', 'product'),
(5, '6', 7, 4, 5, '2021-05-25 13:44:55', 'Capturing the Stars', '', 'Capturing-the-stars', 'ab1.jpg', 'ab2.jpg', 'ab3.jpg', 259, 100, '<p>Capturing the beauty of the stars at night</p>', '<p>Comes in different frame colors, and sizes</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Canvas', 'Acrylic', 'physical_product', 0.3, 10, 'active', 'product'),
(10, 'admin_2', 10, 4, 4, '2021-05-24 23:29:59', 'Game of Polo', '', 'Game-of-polo', 'g-1.jpg', 'j-2.jpg', 'g-3.jpg', 80, 70, '<p>Polo Game</p>', 'Choose size and frame colors based on your liking', '', 'Canvas', 'New', 'physical_product', 1.5, 12, 'active', 'product'),
(11, '6', 7, 2, 5, '2021-05-23 01:27:20', 'Blue', 'Bundle print', 'blue-print', 'p-1.jpg', 'p-2.jpg', 'p-3.jpg', 300, 200, '<p> Acrylic Pouring</p>', 'Available frame colors : Black, white, and brown. Send me a private message for special request. ', '<iframe width=\"854\" height=\"480\" src=\"https://youtu.be/pbc52bED8lo\" frameborder=\"0\" allowfullscreen></iframe>', 'Canvas', 'Sale', 'physical_product', 2.0, 8, 'active', 'bundle'),
(14, '6', 8, 6, 2, '2021-05-23 01:33:18', 'Castle', '', 'castle-acrylic', 't1.jpg', 't2.jpg', 't3.jpg', 130, 0, '', 'Frame colors are available!', '', 'Canvas, acrylic', 'New', 'physical_product', 0.0, 6, 'active', 'product'),
(15, '6', 8, 4, 5, '2021-05-25 13:00:25', 'Suez canal', '', 'donald-duck', 'p2.jpg', 'p3.jpg', 'p3.jpg', 50, 0, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', '', 'canvas', 'Glow', 'physical_product', 0.0, 10, 'active', 'product'),
(17, '6', 7, 4, 4, '2021-05-25 13:44:16', 'Sur la Nationale', '', 'Sur-la-Nationale', 'v1.jpg', 'v2.jpg', 'v3.jpg', 0, 0, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', 'Oil on Canvas.Artwork on supported wooden frame. Artwork framed.', '', 'Canvas', 'Vintage', 'variable_product', 0.0, 30, 'active', 'product'),
(30, '4', 10, 10, 6, '2021-05-23 01:24:05', 'April Avenue', '', 'april-avenue', 'l1.jpg', 'l2.jpg', 'l3.jpg', 0, 0, '<p> was born and raised in Hanoi, I love this city, the living space, the young pace of life, the prosperous transformation, the beauty of architecture, transportation, culture, food and dormitory. . The old windows, many colors flashing in the night, the street is charming and friendly.\r\nIn April, the early summer sun was dazzlingly bright, many rows of yellow-leafed trees ruined the small streets, the old Crocodile transplants to welcome summer. </p>', '', '', 'Canvas', 'New', 'variable_product', 0.0, 9, 'active', 'product'),
(31, 'admin_2', 10, 8, 6, '2021-05-24 23:29:47', 'The Marketplace', '7 Day Refund!', 'The-Marketplace', 'e1.jpg', 'e2.jpg', 'e3.jpg', 0, 0, '<p>This piece, \"The Marketplace\" shows the energy and chaos of a busy marketplace, it could be seen anywhere. A homage to the excitement and vitality experienced by all of humanity. This is a series of Limited Edition pieces, available on canvas with a minimal float frame.</p>', 'On Canvas, Synthetic board', '', 'Canvas', 'New', 'variable_product', 0.0, 11, 'active', 'product'),
(36, 'admin_2', 4, 2, 5, '2021-05-25 13:46:10', 'PEACE CITY', '', 'PEACE-CITY', 's1.jpg', 's2.jpg', 's3.jpg', 0, 0, '<p>Graffiti painting with acrylic paint and spray paint</p>', 'This graffiti painting is an original hand painted workTechnique: Acrylic paint and spray can on canvas Table format: Rectangle Support: Canvas mounted on a 3D frame Thickness 4 cm Profile 40 x 40 mm Edges: The edges are painted allowing immediate hanging of the work without framing Finish: Two coats of acrylic varnish to protect the work', '', 'Canvas', 'New', 'variable_product', 0.0, 21, 'active', 'product'),
(38, '14', 11, 10, 5, '2021-05-23 01:17:13', 'Leopard Descent (1/2 Life-size)', 'Leopard climbing down a rock face\r\nAvailable to order (casting process between 8 - 12 weeks)', 'Leopard-Descent', 'r1.jpg', 'r2.jpg', 'r3.jpg', 0, 0, '<p>Leopard Descent sculpture</p>', 'TECHNIQUE Bronze With Stand', '', 'Sculpture', 'Bronze', 'variable_product', 0.0, 20, 'active', 'product'),
(40, '14', 10, 11, 6, '2021-05-24 16:46:44', '#8977', 'Digital on Paper', 'paint-8977', 'hob1.jpg', 'hob2.jpg', 'hob3.jpg', 0, 0, '', 'Framing on request', '', 'Photography', 'Photo', 'variable_product', 0.0, 27, 'active', 'product'),
(41, '6', 10, 6, 4, '2021-05-23 01:14:32', 'Foro Romano', 'Watercolor on Paper', 'Foro-Romano', 'f1.jpg', 'f2.jpg', 'f3.jpg', 0, 0, '<p>Roman Forum at sunset. The work is painted in the style of pointillism with watercolor.</p>', 'TECHNIQUE Watercolor on Paper', '', 'Paper', 'Watercolor', 'variable_product', 0.0, 13, 'active', 'product'),
(46, 'admin_2', 10, 10, 6, '2021-05-24 15:50:07', '\"Snowy Mountains\" (Algorithmic art | Stringart)', 'Embroidery on Wood', 'Snowy-Mountains', 'put1.jpg', 'put2.jpg', 'put3.jpg', 0, 0, '<p>Our ancients lived in harmony with these spirits and created a way of life that goes with the natural grain. The feeling that nature gives us is contrary to the general anxious mood of society. As you note, nature does not support general decay, but tear us out of everyday life, make us forget about worries, and transfer us to another, special world. To a world, where calmness, serenity, and tranquility reign.\r\nSilk threads - the material used to make this piece of art - seem so light and thin that their interlacing is perceived as a mirage, which is on the verge of reality and fiction. As if a stately, wise, beautiful mother nature is gradually emerging from the haze and gives us strength.</p>', '', '', 'Textile', 'Textile', 'variable_product', 0.0, 32, 'active', 'product'),
(48, '6', 8, 9, 5, '2021-05-25 11:49:25', 'Mere Breath', 'Charcoal ', 'Mere-Breath', 'car1.jpg', 'car2.jpg', 'car3.jpg', 70, 0, 'This piece shows a driving horse in harness. The high contrast shows the smooth muscles and hair of the horse as well as the highlights of the harness and the steam the horse is breathing.', 'TECHNIQUE Charcoal on Paper, Synthetic board under glass', '', 'Charcoal', 'Charcoal', 'physical_product', 1.4, 14, 'active', 'product'),
(50, '6', 5, 2, 5, '2021-05-24 18:19:58', 'Je suis une femme amoureuse', '', 'Je-suis-une-femme-amoureuse', 'd1.jpg', 'd2.jpg', 'd3.jpg', 0, 0, '<p> Dancer in the city, the dominant colors are red and white. The canvas is varnished for better protection of the work and is ready to be hung on the wall.\r\nI enjoy using and experimenting with all the techniques on canvas, oil, acrylic, knives, brushes, engraving, spray cans, collage, gold leaf, micro glitter inlay ... from small to very large formats.\r\nMy influences are multiple and innumerable, because every day, my imagination is enriched by all the images that I visualize, in magazines, the media, television…. I am sensitive to the work of Andy Warhol.</p>', 'Acrylic, Oil on Canvas', '', 'Canvas', 'New', 'variable_product', 0.0, 16, 'active', 'product'),
(59, '36', 7, 2, 0, '2021-05-25 18:35:56', 'DemoArt', '', 'Demo-sp', '1.jpg', '2.jpg', '3.jpg', 1000, 0, 'Demo', 'demo', '', 'art', 'test', 'physical_product', 2.0, 2, 'active', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `products_stock`
--

CREATE TABLE `products_stock` (
  `stock_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `stock_status` text NOT NULL,
  `enable_stock` text NOT NULL,
  `stock_quantity` text NOT NULL,
  `allow_backorders` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_stock`
--

INSERT INTO `products_stock` (`stock_id`, `product_id`, `variation_id`, `stock_status`, `enable_stock`, `stock_quantity`, `allow_backorders`) VALUES
(10, 36, 340, 'instock', 'yes', '3', 'no'),
(11, 36, 339, 'outofstock', 'yes', '0', 'no'),
(12, 36, 338, 'instock', 'yes', '2', 'no'),
(13, 36, 337, 'instock', 'yes', '12', 'no'),
(14, 36, 336, 'instock', 'yes', '1', 'no'),
(15, 36, 335, 'outofstock', 'yes', '0', 'no'),
(16, 35, 226, 'instock', 'yes', '3', 'no'),
(17, 35, 225, 'instock', 'yes', '3', 'no'),
(18, 35, 224, 'instock', 'yes', '7', 'no'),
(19, 35, 223, 'instock', 'no', '0', 'no'),
(20, 35, 222, 'instock', 'no', '0', 'no'),
(21, 35, 221, 'instock', 'no', '0', 'no'),
(22, 35, 220, 'instock', 'no', '0', 'no'),
(23, 35, 219, 'instock', 'no', '0', 'no'),
(24, 35, 218, 'instock', 'no', '0', 'no'),
(25, 35, 217, 'instock', 'no', '0', 'no'),
(26, 35, 216, 'instock', 'no', '0', 'no'),
(27, 35, 215, 'instock', 'no', '0', 'no'),
(28, 35, 214, 'instock', 'no', '0', 'no'),
(29, 35, 213, 'instock', 'no', '0', 'no'),
(30, 35, 212, 'instock', 'no', '0', 'no'),
(31, 35, 211, 'instock', 'no', '0', 'no'),
(32, 35, 210, 'instock', 'no', '0', 'no'),
(33, 35, 209, 'instock', 'no', '0', 'no'),
(36, 11, 0, 'instock', 'yes', '17', 'no'),
(41, 34, 332, 'instock', 'yes', '4', 'no'),
(42, 34, 331, 'instock', 'no', '0', 'no'),
(43, 34, 330, 'onbackorder', 'yes', '-2', 'yes'),
(44, 34, 89, 'onbackorder', 'yes', '-4', 'notify'),
(45, 34, 88, 'instock', 'no', '0', 'no'),
(46, 34, 87, 'instock', 'no', '0', 'no'),
(47, 34, 86, 'instock', 'yes', '12', 'no'),
(48, 34, 85, 'instock', 'yes', '19', 'no'),
(49, 3, 0, 'instock', 'yes', '3', 'no'),
(50, 4, 0, 'instock', 'yes', '4', 'no'),
(51, 5, 0, 'instock', 'yes', '1', 'no'),
(56, 14, 0, 'instock', 'yes', '2', 'no'),
(57, 15, 0, 'instock', 'yes', '2', 'no'),
(59, 17, 0, 'onbackorder', 'yes', '-3', 'notify'),
(61, 40, 347, 'instock', 'no', '0', 'no'),
(62, 40, 359, 'instock', 'no', '0', 'no'),
(63, 40, 358, 'instock', 'no', '0', 'no'),
(64, 40, 357, 'instock', 'no', '0', 'no'),
(65, 40, 356, 'instock', 'no', '0', 'no'),
(66, 40, 355, 'instock', 'yes', '1', 'no'),
(67, 40, 354, 'instock', 'yes', '3', 'notify'),
(68, 40, 352, 'instock', 'no', '0', 'no'),
(69, 40, 351, 'instock', 'no', '0', 'no'),
(70, 40, 348, 'instock', 'yes', '3', 'no'),
(71, 40, 360, 'instock', 'yes', '99', 'no'),
(72, 40, 361, 'instock', 'no', '0', 'no'),
(73, 31, 283, 'instock', 'no', '0', 'no'),
(74, 31, 282, 'instock', 'no', '0', 'no'),
(75, 31, 281, 'instock', 'no', '0', 'no'),
(76, 31, 280, 'instock', 'no', '0', 'no'),
(77, 31, 279, 'instock', 'no', '0', 'no'),
(78, 31, 278, 'instock', 'no', '0', 'no'),
(79, 31, 277, 'instock', 'no', '0', 'no'),
(80, 31, 276, 'outofstock', 'yes', '0', 'no'),
(81, 31, 275, 'instock', 'no', '0', 'no'),
(82, 31, 274, 'instock', 'no', '0', 'no'),
(83, 31, 273, 'instock', 'no', '0', 'no'),
(84, 31, 272, 'instock', 'no', '0', 'no'),
(85, 31, 271, 'instock', 'no', '0', 'no'),
(86, 31, 270, 'instock', 'no', '0', 'no'),
(87, 31, 269, 'instock', 'no', '0', 'no'),
(88, 31, 268, 'instock', 'no', '0', 'no'),
(89, 31, 267, 'instock', 'no', '0', 'no'),
(90, 31, 266, 'instock', 'no', '0', 'no'),
(93, 41, 453, 'instock', 'no', '0', 'no'),
(94, 41, 452, 'instock', 'no', '0', 'no'),
(95, 41, 451, 'instock', 'no', '0', 'no'),
(96, 41, 450, 'instock', 'no', '0', 'no'),
(97, 41, 449, 'instock', 'no', '0', 'no'),
(98, 41, 448, 'instock', 'no', '0', 'no'),
(99, 41, 447, 'instock', 'no', '0', 'no'),
(100, 41, 446, 'instock', 'no', '0', 'no'),
(101, 41, 445, 'instock', 'no', '0', 'no'),
(102, 41, 444, 'instock', 'no', '0', 'no'),
(103, 41, 443, 'instock', 'no', '0', 'no'),
(104, 41, 442, 'instock', 'no', '0', 'no'),
(105, 41, 441, 'instock', 'no', '0', 'no'),
(106, 41, 440, 'instock', 'no', '0', 'no'),
(107, 41, 439, 'instock', 'no', '0', 'no'),
(108, 41, 438, 'instock', 'no', '0', 'no'),
(109, 41, 454, 'instock', 'no', '0', 'no'),
(110, 41, 458, 'onbackorder', 'yes', '0', 'notify'),
(115, 3, 476, 'instock', 'yes', '2', 'no'),
(116, 3, 475, 'instock', 'no', '0', 'no'),
(117, 3, 474, 'instock', 'no', '0', 'no'),
(118, 3, 473, 'instock', 'no', '0', 'no'),
(119, 3, 472, 'instock', 'no', '0', 'no'),
(120, 3, 471, 'instock', 'no', '0', 'no'),
(121, 3, 470, 'instock', 'no', '0', 'no'),
(122, 3, 469, 'instock', 'no', '0', 'no'),
(123, 3, 468, 'instock', 'no', '0', 'no'),
(124, 38, 478, 'outofstock', 'yes', '-3', 'no'),
(125, 38, 479, 'outofstock', 'yes', '0', 'no'),
(132, 17, 488, 'instock', 'yes', '1', 'no'),
(133, 17, 489, 'instock', 'yes', '1', 'no'),
(135, 17, 491, 'instock', 'yes', '3', 'no'),
(136, 41, 492, 'outofstock', 'yes', '0', 'no'),
(140, 46, 494, 'instock', 'yes', '52', 'no'),
(141, 46, 495, 'instock', 'yes', '12', 'no'),
(142, 46, 496, 'instock', 'yes', '4', 'no'),
(191, 30, 503, 'instock', 'yes', '8', 'no'),
(193, 30, 504, 'instock', 'yes', '5', 'no'),
(194, 30, 505, 'instock', 'yes', '7', 'no'),
(195, 30, 506, 'instock', 'yes', '3', 'no'),
(196, 48, 0, 'instock', 'yes', '6', 'no'),
(199, 50, 584, 'instock', 'yes', '5', 'no'),
(200, 50, 586, 'instock', 'yes', '1', 'no'),
(201, 50, 587, 'instock', 'yes', '1', 'no'),
(202, 10, 0, 'instock', 'yes', '8', 'no'),
(220, 59, 0, 'instock', 'yes', '4', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `attribute_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `attribute_name` text NOT NULL,
  `attribute_values` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`attribute_id`, `product_id`, `attribute_name`, `attribute_values`) VALUES
(24, 30, 'Measurements', '60x80|50x70|80x100'),
(25, 30, 'Frame', 'Black|Brown|Red'),
(26, 30, 'Color', 'Red&Black|Black&Blue|Blue&Brown'),
(27, 31, 'Frame', 'Black|White|Silver Gray'),
(28, 31, 'Measurements', '40X50|50X70|20X40|60X90|10X30|80X100'),
(68, 49, 'Memory', '8 GB|16 GB|32 GB|64 GB'),
(69, 49, 'Processor', '80x10|40x50|50x70'),
(70, 49, 'Storage', '128 GB SSD|256 GB SSD|512GB SSD|1TB SSD|2TB SSD '),
(75, 35, 'Measurements', 'Small|Medium|Large|X-Large|XX-Lagre|3X-Large'),
(76, 35, 'Frame', 'Red|Blue|Aqua Blue'),
(77, 36, 'Color Combo', 'Pink&Blue|Black&Yellow|Green&Blue'),
(82, 40, 'Frame', 'Brown|White|Green|Black'),
(83, 40, 'Color', 'White|Aqua|Gray|Blue'),
(84, 40, 'Measurements', '30X50|50X70|80X100|100X120|150X200'),
(85, 46, 'Measurements', '50x80|120X200|60X80'),
(86, 46, 'Frame', 'Brown|Black'),
(87, 46, 'Color', 'Pink&Black|Brown&Red'),
(88, 41, 'Frame', '50X70|60X80'),
(89, 41, 'Color', 'White|Black'),
(90, 0, '', ''),
(91, 3, 'Frame', 'Black|Brown|White'),
(92, 3, 'Measurements', '40X50|50X70|60X80'),
(95, 38, 'Stand', 'Brown|Black'),
(96, 38, 'Measurements', '50X70|80X100'),
(99, 17, 'Frame Material', 'Plastic|Wood|Metal'),
(106, 50, 'Measurements', 'Small|Medium|Large'),
(107, 50, 'Frame', 'Black|Blue|Maroon|Chocolate|Red'),
(110, 51, 'Frame', '4 GB|8 GB|12 GB|16 GB|32 GB'),
(112, 51, 'Processor', 'i3 7th-generation|i5 7th-generation|i7 7th-generation'),
(113, 51, 'Storage', '128 GB SSD|256 GB SSD|512GB SSD|1TB SSD|2TB SSD');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Pop Art', 'no', 'popart.jpg'),
(5, 'Figurative', 'no', 'figurative.jpg'),
(6, 'Vintage', 'no', 'vintage.jpg'),
(7, 'Abstract', 'no', 'abstraction.jpg'),
(8, 'Still life', 'yes', 'stillart.jpg'),
(9, 'Landscape', 'no', 'landscape.jpg'),
(10, 'Modern Art', 'yes', 'modernart.jpg'),
(11, 'Sculpture', 'no', 'sculpture.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `variation_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_img1` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(10) NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`variation_id`, `product_id`, `product_img1`, `product_price`, `product_psp_price`, `product_weight`, `product_type`) VALUES
(1, 4, '', 0, 0, 2.0, 'physical_product'),
(2, 4, '', 0, 0, 2.0, 'physical_product'),
(3, 4, '', 0, 0, 2.0, 'physical_product'),
(4, 4, '', 0, 0, 2.0, 'physical_product'),
(100, 49, '', 0, 0, 0.0, 'physical_product'),
(102, 49, '', 0, 0, 0.0, 'physical_product'),
(110, 49, '', 0, 0, 0.0, 'physical_product'),
(111, 49, '', 0, 0, 0.0, 'physical_product'),
(115, 49, '', 0, 0, 0.0, 'physical_product'),
(117, 49, '', 0, 0, 0.0, 'default_attributes_variation'),
(118, 49, '', 1890, 1790, 3.4, 'physical_product'),
(207, 35, '', 0, 0, 0.0, 'default_attributes_variation'),
(209, 35, '', 50, 0, 0.0, 'physical_product'),
(210, 35, '', 60, 0, 0.0, 'physical_product'),
(211, 35, '', 70, 0, 0.0, 'physical_product'),
(212, 35, '', 80, 0, 0.0, 'digital_product'),
(213, 35, '', 90, 0, 0.0, 'physical_product'),
(214, 35, '', 100, 0, 0.0, 'physical_product'),
(215, 35, '', 50, 0, 0.0, 'digital_product'),
(216, 35, '', 60, 0, 0.0, 'physical_product'),
(217, 35, '', 70, 0, 0.0, 'physical_product'),
(218, 35, '', 80, 0, 0.0, 'physical_product'),
(219, 35, '', 90, 0, 0.0, 'physical_product'),
(220, 35, '', 100, 0, 0.0, 'physical_product'),
(221, 35, '', 50, 0, 0.0, 'physical_product'),
(222, 35, '', 60, 0, 2.3, 'physical_product'),
(223, 35, '', 70, 0, 0.0, 'physical_product'),
(224, 35, '', 80, 0, 2.3, 'physical_product'),
(225, 35, '', 90, 0, 0.0, 'physical_product'),
(226, 35, '', 100, 0, 0.0, 'physical_product'),
(265, 31, '', 0, 0, 0.0, 'default_attributes_variation'),
(266, 31, '', 0, 0, 0.0, 'physical_product'),
(267, 31, '', 0, 0, 0.0, 'physical_product'),
(268, 31, '', 0, 0, 0.0, 'physical_product'),
(269, 31, '', 0, 0, 0.0, 'physical_product'),
(270, 31, '', 0, 0, 0.0, 'physical_product'),
(271, 31, '', 0, 0, 0.0, 'physical_product'),
(272, 31, '', 0, 0, 0.0, 'physical_product'),
(273, 31, '', 0, 0, 0.0, 'physical_product'),
(274, 31, '', 0, 0, 0.0, 'physical_product'),
(275, 31, '', 0, 0, 0.0, 'physical_product'),
(276, 31, '', 50, 0, 2.3, 'physical_product'),
(277, 31, '', 0, 0, 0.0, 'physical_product'),
(278, 31, '', 0, 0, 0.0, 'physical_product'),
(279, 31, '', 0, 0, 0.0, 'physical_product'),
(280, 31, '', 0, 0, 0.0, 'physical_product'),
(281, 31, '', 0, 0, 0.0, 'physical_product'),
(282, 31, '', 0, 0, 0.0, 'physical_product'),
(283, 31, '', 0, 0, 0.0, 'physical_product'),
(334, 36, '', 0, 0, 0.0, 'default_attributes_variation'),
(335, 36, '', 1000, 0, 2.3, 'digital_product'),
(336, 36, '', 1200, 0, 2.7, 'physical_product'),
(337, 36, '', 1300, 0, 2.4, 'physical_product'),
(338, 36, '', 1460, 0, 3.0, 'physical_product'),
(339, 36, '', 1500, 0, 2.5, 'physical_product'),
(340, 36, '', 1690, 0, 3.2, 'physical_product'),
(346, 40, '', 0, 0, 0.0, 'default_attributes_variation'),
(348, 40, '', 1000, 0, 0.0, 'physical_product'),
(351, 40, '', 0, 0, 0.0, 'physical_product'),
(352, 40, '', 0, 0, 0.0, 'physical_product'),
(354, 40, '', 1700, 0, 2.1, 'physical_product'),
(355, 40, '', 0, 0, 0.0, 'physical_product'),
(356, 40, '', 0, 0, 0.0, 'physical_product'),
(358, 40, '', 0, 0, 0.0, 'physical_product'),
(359, 40, '', 0, 0, 0.0, 'physical_product'),
(360, 40, '', 5900, 0, 0.0, 'physical_product'),
(457, 41, '', 0, 0, 0.0, 'default_attributes_variation'),
(458, 41, '', 3000, 0, 2.3, 'physical_product'),
(464, 3, '', 0, 0, 0.0, 'default_attributes_variation'),
(468, 3, '', 0, 0, 0.0, 'physical_product'),
(469, 3, '', 0, 0, 0.0, 'physical_product'),
(470, 3, '', 0, 0, 0.0, 'physical_product'),
(471, 3, '', 0, 0, 0.0, 'physical_product'),
(472, 3, '', 0, 0, 0.0, 'physical_product'),
(473, 3, '', 0, 0, 0.0, 'physical_product'),
(474, 3, '', 0, 0, 0.0, 'physical_product'),
(475, 3, '', 0, 0, 0.0, 'physical_product'),
(476, 3, '', 120, 0, 2.0, 'physical_product'),
(477, 38, '', 0, 0, 0.0, 'default_attributes_variation'),
(478, 38, '', 2980, 0, 2.1, 'physical_product'),
(479, 38, '', 2340, 0, 2.1, 'physical_product'),
(487, 17, '', 0, 0, 0.0, 'default_attributes_variation'),
(488, 17, '', 220, 0, 0.0, 'digital_product'),
(489, 17, '', 199, 0, 0.0, 'digital_product'),
(491, 17, '', 215, 200, 0.0, 'digital_product'),
(492, 41, '', 2500, 0, 2.3, 'physical_product'),
(493, 46, '', 0, 0, 0.0, 'default_attributes_variation'),
(494, 46, '', 1100, 0, 2.5, 'physical_product'),
(495, 46, '', 900, 0, 2.3, 'physical_product'),
(496, 46, '', 1400, 0, 3.1, 'physical_product'),
(501, 30, '', 0, 0, 0.0, 'default_attributes_variation'),
(503, 30, '', 1000, 0, 2.8, 'physical_product'),
(504, 30, '', 870, 0, 2.7, 'physical_product'),
(505, 30, '', 760, 0, 2.5, 'physical_product'),
(506, 30, '', 1400, 0, 3.0, 'physical_product'),
(584, 50, '', 60, 0, 1.0, 'physical_product'),
(585, 50, '', 0, 0, 0.0, 'default_attributes_variation'),
(586, 50, '', 70, 0, 1.0, 'physical_product'),
(587, 50, '', 80, 0, 1.0, 'physical_product'),
(588, 51, '', 0, 0, 0.0, 'default_attributes_variation'),
(603, 51, '', 0, 0, 0.0, 'physical_product'),
(604, 51, '', 0, 0, 0.0, 'physical_product'),
(605, 51, '', 0, 0, 0.0, 'physical_product'),
(606, 51, '', 0, 0, 0.0, 'physical_product'),
(607, 51, '', 0, 0, 0.0, 'digital_product'),
(608, 51, '', 0, 0, 0.0, 'physical_product'),
(609, 51, '', 0, 0, 0.0, '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `review_title` text NOT NULL,
  `review_rating` int(10) NOT NULL,
  `review_content` text NOT NULL,
  `review_date` text NOT NULL,
  `review_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `customer_id`, `product_id`, `review_title`, `review_rating`, `review_content`, `review_date`, `review_status`) VALUES
(1, 2, 36, 'Excellent quality', 5, 'Nice quality, i\'ll be purchasing more soon', 'November 28, 2020', 'active'),
(2, 3, 36, 'Seems great', 4, 'will the color fade?', 'April 12, 2021', 'active'),
(3, 6, 36, 'Very creative', 3, 'any other frame colors?', 'April 15, 2021', 'active'),
(4, 7, 36, 'Creative title', 2, 'I loved reading the story behind your art!', 'April 19, 2021', 'active'),
(5, 8, 36, 'They don\'t make art like this anymore..', 5, 'Can\'t wait for restock', 'April 20, 2021', 'active'),
(6, 9, 36, 'I\'m getting it as a gift', 5, 'Getting it as a gift for my daughter', 'April 21, 2021', 'active'),
(7, 10, 36, '100 stars!', 5, 'I wish i could give it more stars!!', 'April 21, 2021', 'active'),
(8, 11, 36, 'When will you make new artworks?', 5, 'Love your artwork!', 'April 22, 2021', 'active'),
(9, 12, 36, 'Five Stars', 5, 'great product', 'April 23, 2021', 'active'),
(10, 13, 36, 'Really good quality', 3, 'You are very creative! Looking forward for more artworks', 'April 24, 2021', 'active'),
(12, 15, 36, 'The delivery charges are practically free!', 4, 'I love this website', 'April 29, 2021', 'active'),
(14, 15, 35, 'Satisfied', 5, 'good quality', 'May 04, 2021', 'active'),
(15, 15, 8, 'Very bad quality', 1, 'Waste of money', 'May 04, 2021', 'active'),
(30, 2, 46, 'Beautiful Colors', 5, 'The artwork was delivered quickly, and the quality is great!', 'November 28, 2020', 'active'),
(31, 3, 46, 'Exceeded my expectations!', 4, 'The frame quality is good', 'April 12, 2021', 'active'),
(32, 16, 46, 'Great art, however, it took too long to deliver', 3, 'The delivery service was slow, but the artwork is high quality', 'April 15, 2021', 'active'),
(33, 7, 46, 'Nice!', 2, 'I hanged it up my in my new house', 'April 19, 2021', 'active'),
(34, 8, 46, 'Cool artwork', 5, 'Expensive, but worth it', 'April 20, 2021', 'active'),
(35, 9, 46, 'Everything has been great so far', 5, 'waiting for new stock', 'April 21, 2021', 'active'),
(36, 10, 46, 'Best artist ever!', 5, 'The deliver is quick', 'April 21, 2021', 'active'),
(37, 11, 46, 'Great experience ordering, thank you!', 5, 'It\'s a bit expensive', 'April 22, 2021', 'active'),
(39, 13, 46, 'The frame broke when i opened the delivery box!', 1, 'Sad the frame is broken, but the art is amazing', 'April 24, 2021', 'active'),
(40, 15, 46, 'Cannot wait till mine gets delivered', 4, 'Hope it\'s worth the wait', 'April 29, 2021', 'active'),
(42, 15, 30, 'love your work', 4, 'loved the artwork in my office', 'May 04, 2021', 'active'),
(43, 7, 30, 'Does it come in different colors?', 5, 'Will you restock with different colors?', 'May 04, 2021', 'active'),
(44, 9, 30, 'Amazing!', 5, 'You are amazing!', 'May 04, 2021', 'active'),
(45, 15, 41, 'Best artwork ive ever seen', 4, 'Good pricing!', 'May 04, 2021', 'active'),
(46, 7, 41, 'Do you have it in black?', 5, 'Let me know when you restock in black', 'May 04, 2021', 'active'),
(47, 15, 40, 'Amazing!', 4, 'I love it', 'May 04, 2021', 'active'),
(48, 7, 40, 'Spectacular!', 5, 'I\'m in love!!', 'May 04, 2021', 'active'),
(49, 9, 40, 'Cool work', 5, 'great product', 'May 04, 2021', 'active'),
(50, 11, 40, 'Very cute', 4, 'Can\'t wait to hang it on my wall!', 'May 04, 2021', 'active'),
(51, 7, 38, 'Does it come in other colors?', 5, 'Let me know', 'May 04, 2021', 'active'),
(52, 36, 59, 'demo', 5, 'demo', 'May 25, 2021', 'trash'),
(53, 37, 59, 'Demo-Customer-Review', 5, 'Demo-Customer-Review', 'May 25, 2021', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_meta`
--

CREATE TABLE `reviews_meta` (
  `meta_id` int(10) NOT NULL,
  `review_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews_meta`
--

INSERT INTO `reviews_meta` (`meta_id`, `review_id`, `meta_key`, `meta_value`) VALUES
(4, 1, 'color', 'brown'),
(5, 1, 'color combo', 'pink&black'),
(6, 2, 'frame', 'brown'),
(7, 2, 'Measurements', '50x80'),
(8, 3, 'frame', 'black'),
(9, 3, 'Measurements', '60X100'),
(10, 4, 'frame', 'brown'),
(11, 4, 'Measurements', '40X60'),
(12, 5, 'frame', 'white'),
(13, 5, 'Measurements', '20X40'),
(14, 13, 'frame', 'silver'),
(15, 13, 'Measurements', '80X120'),
(16, 14, 'Size', 'XX-Lagre'),
(17, 14, 'Color', 'Red'),
(19, 16, 'Color', 'green'),
(20, 16, 'Size', 'Medium'),
(22, 17, 'Color', 'White'),
(23, 17, 'Color', 'Black'),
(33, 19, 'color', 'Black'),
(34, 19, 'size', '36');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_desc` text NOT NULL,
  `service_button` varchar(255) NOT NULL,
  `service_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(10) NOT NULL,
  `shipping_type` int(10) NOT NULL,
  `shipping_zone` int(10) NOT NULL,
  `shipping_country` int(10) NOT NULL,
  `shipping_weight` decimal(10,1) NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `shipping_type`, `shipping_zone`, `shipping_country`, `shipping_weight`, `shipping_cost`) VALUES
(1, 4, 9, 0, 1.0, 3.0),
(3, 4, 9, 0, 1.5, 4.5),
(4, 4, 9, 0, 2.0, 6.0),
(5, 4, 9, 0, 2.5, 7.5),
(6, 4, 9, 0, 3.0, 9.0),
(7, 4, 9, 0, 3.5, 10.5),
(8, 4, 9, 0, 4.0, 12.0),
(9, 4, 9, 0, 4.5, 13.5),
(14, 4, 9, 0, 6.0, 18.0),
(15, 4, 9, 0, 6.5, 19.5),
(16, 4, 9, 0, 7.0, 21.0),
(17, 4, 9, 0, 7.5, 22.5),
(18, 4, 9, 0, 8.0, 24.0),
(19, 4, 9, 0, 8.5, 25.5),
(20, 4, 9, 0, 9.0, 27.0),
(21, 4, 9, 0, 9.5, 28.5),
(22, 4, 9, 0, 10.0, 30.0),
(23, 4, 9, 0, 5.0, 15.0),
(24, 4, 9, 0, 5.5, 16.5),
(25, 3, 8, 0, 1.0, 4.0),
(26, 3, 8, 0, 1.5, 6.0),
(27, 3, 8, 0, 2.0, 8.0),
(28, 3, 8, 0, 2.5, 10.0),
(29, 3, 8, 0, 3.0, 12.0),
(30, 3, 8, 0, 3.5, 14.0),
(31, 3, 8, 0, 4.0, 16.0),
(32, 3, 8, 0, 4.5, 18.0),
(33, 3, 8, 0, 6.0, 24.0),
(34, 3, 8, 0, 6.5, 26.0),
(35, 3, 8, 0, 7.0, 28.0),
(36, 3, 8, 0, 7.5, 30.0),
(37, 3, 8, 0, 8.0, 32.0),
(38, 3, 8, 0, 8.5, 34.0),
(39, 3, 8, 0, 9.0, 36.0),
(40, 3, 8, 0, 9.5, 38.0),
(41, 3, 8, 0, 10.0, 40.0),
(42, 1, 5, 0, 1.0, 5.0),
(43, 1, 5, 0, 1.5, 7.5),
(44, 1, 5, 0, 2.0, 10.0),
(45, 1, 5, 0, 2.5, 12.5),
(46, 1, 5, 0, 3.0, 15.0),
(47, 1, 5, 0, 3.5, 17.5),
(49, 1, 5, 0, 4.5, 22.5),
(50, 1, 5, 0, 5.0, 25.0),
(51, 1, 5, 0, 5.5, 27.5),
(52, 1, 5, 0, 6.0, 30.0),
(53, 1, 5, 0, 6.5, 32.5),
(54, 1, 5, 0, 7.0, 35.0),
(55, 1, 5, 0, 7.5, 37.5),
(56, 1, 5, 0, 8.0, 40.0),
(57, 1, 5, 0, 8.5, 42.5),
(58, 1, 5, 0, 9.0, 45.0),
(59, 1, 5, 0, 9.5, 47.5),
(60, 1, 5, 0, 10.0, 50.0),
(61, 7, 0, 230, 1.0, 5.0),
(62, 7, 0, 230, 1.5, 7.5),
(64, 7, 0, 230, 2.5, 12.5),
(65, 7, 0, 230, 3.0, 15.0),
(66, 7, 0, 230, 3.5, 17.5),
(67, 7, 0, 230, 4.5, 22.5),
(68, 7, 0, 230, 5.0, 25.0),
(69, 7, 0, 230, 5.5, 27.5),
(70, 7, 0, 230, 6.0, 30.0),
(71, 7, 0, 230, 6.5, 32.5),
(72, 7, 0, 230, 7.0, 35.0),
(73, 7, 0, 230, 7.5, 37.5),
(74, 7, 0, 230, 8.0, 40.0),
(75, 7, 0, 230, 8.5, 42.5),
(76, 7, 0, 230, 9.0, 45.0),
(77, 7, 0, 230, 9.5, 47.5),
(78, 7, 0, 230, 10.0, 50.0),
(79, 7, 0, 230, 2.0, 10.0),
(80, 6, 0, 230, 1.0, 10.0),
(81, 6, 0, 230, 1.5, 15.0),
(82, 6, 0, 230, 2.0, 20.0),
(83, 6, 0, 230, 2.5, 25.0),
(84, 6, 0, 230, 3.0, 30.0),
(85, 6, 0, 230, 3.5, 35.0),
(86, 6, 0, 230, 4.5, 45.0),
(87, 6, 0, 230, 5.0, 50.0),
(88, 6, 0, 230, 5.5, 55.0),
(89, 6, 0, 230, 6.0, 60.0),
(90, 6, 0, 230, 6.5, 65.0),
(91, 6, 0, 230, 7.0, 70.0),
(92, 6, 0, 230, 7.5, 75.0),
(93, 6, 0, 230, 8.0, 80.0),
(94, 6, 0, 230, 8.5, 85.0),
(95, 6, 0, 230, 9.0, 90.0),
(96, 6, 0, 230, 9.5, 95.0),
(97, 6, 0, 230, 10.0, 100.0),
(98, 1, 5, 0, 4.0, 20.0),
(99, 6, 0, 230, 4.0, 40.0),
(100, 7, 0, 230, 4.0, 20.0),
(101, 5, 10, 0, 1.0, 2.0),
(102, 5, 10, 0, 1.5, 3.0),
(103, 5, 10, 0, 2.0, 4.0),
(104, 5, 10, 0, 2.5, 5.0),
(105, 5, 10, 0, 3.0, 6.0),
(106, 5, 10, 0, 3.5, 7.0),
(108, 5, 10, 0, 4.0, 8.0),
(109, 5, 10, 0, 4.5, 9.0),
(110, 5, 10, 0, 5.0, 10.0),
(111, 5, 10, 0, 5.5, 11.0),
(112, 5, 10, 0, 6.0, 12.0),
(113, 5, 10, 0, 6.5, 13.0),
(114, 5, 10, 0, 7.0, 14.0),
(115, 5, 10, 0, 7.5, 15.0),
(116, 5, 10, 0, 8.0, 16.0),
(117, 5, 10, 0, 8.5, 17.0),
(118, 5, 10, 0, 9.0, 18.0),
(119, 5, 10, 0, 9.5, 19.0),
(120, 5, 10, 0, 10.0, 20.0),
(121, 3, 8, 0, 5.0, 20.0),
(122, 3, 8, 0, 5.5, 22.0),
(125, 8, 5, 0, 1.0, 10.0),
(126, 8, 5, 0, 2.0, 20.0),
(127, 8, 5, 0, 3.0, 30.0),
(128, 8, 5, 0, 4.0, 40.0),
(129, 8, 5, 0, 5.0, 50.0),
(130, 8, 5, 0, 6.0, 60.0),
(132, 8, 5, 0, 7.0, 70.0),
(133, 8, 5, 0, 8.0, 80.0),
(134, 8, 5, 0, 9.0, 90.0),
(135, 8, 5, 0, 10.0, 100.0),
(136, 9, 8, 0, 1.0, 10.0),
(137, 9, 8, 0, 2.0, 20.0),
(138, 9, 8, 0, 3.0, 30.0),
(139, 9, 8, 0, 4.0, 40.0),
(140, 9, 8, 0, 5.0, 50.0),
(141, 9, 8, 0, 6.0, 60.0),
(142, 9, 8, 0, 7.0, 70.0),
(143, 9, 8, 0, 8.0, 80.0),
(144, 9, 8, 0, 9.0, 90.0),
(145, 9, 8, 0, 10.0, 100.0),
(146, 10, 9, 0, 1.0, 10.0),
(147, 10, 9, 0, 2.0, 20.0),
(148, 10, 9, 0, 3.0, 30.0),
(149, 10, 9, 0, 4.0, 40.0),
(150, 10, 9, 0, 5.0, 50.0),
(151, 10, 9, 0, 6.0, 60.0),
(152, 10, 9, 0, 7.0, 70.0),
(153, 10, 9, 0, 8.0, 80.0),
(154, 10, 9, 0, 9.0, 90.0),
(155, 10, 9, 0, 10.0, 100.0),
(156, 11, 10, 0, 1.0, 10.0),
(157, 11, 10, 0, 2.0, 20.0),
(158, 11, 10, 0, 3.0, 30.0),
(159, 11, 10, 0, 4.0, 40.0),
(160, 11, 10, 0, 5.0, 50.0),
(161, 11, 10, 0, 6.0, 60.0),
(162, 11, 10, 0, 7.0, 70.0),
(163, 11, 10, 0, 8.0, 80.0),
(164, 11, 10, 0, 9.0, 90.0),
(165, 11, 10, 0, 10.0, 100.0),
(166, 9, 8, 0, 11.0, 110.0),
(167, 9, 8, 0, 12.0, 120.0),
(168, 16, 0, 229, 1.0, 10.0),
(169, 16, 0, 229, 2.0, 20.0),
(170, 13, 8, 0, 1.0, 5.0),
(171, 13, 8, 0, 2.0, 10.0),
(172, 3, 8, 0, 11.0, 45.0),
(173, 17, 13, 0, 1.0, 5.0),
(174, 17, 13, 0, 2.0, 10.0),
(176, 18, 0, 230, 1.0, 5.0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_type`
--

CREATE TABLE `shipping_type` (
  `type_id` int(11) NOT NULL,
  `vendor_id` text NOT NULL,
  `type_name` text NOT NULL,
  `type_order` int(11) NOT NULL,
  `type_default` varchar(255) NOT NULL,
  `type_local` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping_type`
--

INSERT INTO `shipping_type` (`type_id`, `vendor_id`, `type_name`, `type_order`, `type_default`, `type_local`) VALUES
(1, 'admin_2', 'Next Day (orders placed before 7pm)', 1, 'no', 'yes'),
(3, '6', ' Speedy 1-2 days', 3, 'no', 'yes'),
(4, '2', 'Standard 3-5 days', 3, 'no', 'yes'),
(5, '14', 'Economy 5-7 days', 5, 'no', 'yes'),
(6, '0', 'Express International', 1, 'yes', 'no'),
(7, '0', 'Standard International', 2, 'no', 'no'),
(8, 'admin_2', 'Overnight Shipping ', 5, 'no', 'yes'),
(9, '6', 'Standard 3-5 days', 2, 'yes', 'yes'),
(10, '2', 'Overnight Shipping ', 5, 'no', 'yes'),
(11, '14', 'Business Days Shipping', 5, 'no', 'yes'),
(12, '14', 'DHL Express International', 5, 'yes', 'yes'),
(15, '6', 'Express International', 1, 'no', 'no'),
(16, '6', 'Standard International', 2, 'yes', 'no'),
(17, '6', 'Overnight Shipping ', 1, 'yes', 'yes'),
(18, '6', 'DHL Express International', 3, 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'Slide Number 1', '1.jpg', 'http://artistewebsite.com'),
(2, 'Slide Number 2', '2.jpg', 'http://artistewebsite.com'),
(3, 'Slide Number 3', '3.jpg', 'http://artistewebsite.com'),
(7, 'Slide Number 4', '4.jpg', 'http://artistewebsite.com'),
(8, 'Slider Number 5\r\n', '5.jpg', 'http://artistewebsite.com');

-- --------------------------------------------------------

--
-- Table structure for table `store_settings`
--

CREATE TABLE `store_settings` (
  `settings_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `store_cover_image` text NOT NULL,
  `store_profile_image` text NOT NULL,
  `store_name` text NOT NULL,
  `store_country` text NOT NULL,
  `store_address_1` text NOT NULL,
  `store_address_2` text NOT NULL,
  `store_state` text NOT NULL,
  `store_city` text NOT NULL,
  `store_postcode` text NOT NULL,
  `paypal_email` text NOT NULL,
  `phone_no` text NOT NULL,
  `store_email` text NOT NULL,
  `seo_title` text NOT NULL,
  `meta_author` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_settings`
--

INSERT INTO `store_settings` (`settings_id`, `vendor_id`, `store_cover_image`, `store_profile_image`, `store_name`, `store_country`, `store_address_1`, `store_address_2`, `store_state`, `store_city`, `store_postcode`, `paypal_email`, `phone_no`, `store_email`, `seo_title`, `meta_author`, `meta_description`, `meta_keywords`) VALUES
(1, '6', 'cover-image.jpg', 'cover-image.jpg', 'Store1', '166', 'Street:82, Block:283', 'Street: 74, Block 283', 'Bahrain', 'Manama', '35460', 'artisteartassistant@gmail.com', '3334566931', 'yes', 'Store1', 'Farah', 'Store1', ''),
(2, 'admin_2', 'admin-cover-image.jpg', 'admin-cover-image.jpg', 'Store2', '18', 'Manama, Bahrain', 'Manama, Bahrain', 'Bahrain', 'Manama', '54000', 'artisteartassistant@gmail.com', '3331561951', 'yes', 'Store2', '', '', ''),
(3, 'admin_10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, '25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '26', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, '28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '32', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '33', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, '34', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '35', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, '36', '1.jpg', '1.jpg', 'Demo', '18', 'dd', 'dddd', 'dd', 'dd', 'dd', 'artisteartassistant@gmail.com', '39924900', 'yes', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Terms and Conditions\r\nWelcome to Artiste-Art Assistant!\r\n\r\nThese terms and conditions outline the rules and regulations for the use of Artiste\'s Website, located at artistewebsite.com.\r\n\r\nBy accessing this website we assume you accept these terms and conditions. Do not continue to use Artiste-Art Assistant if you do not agree to take all of the terms and conditions stated on this page.\r\n\r\nThe following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company’s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.\r\n\r\nCookies\r\nWe employ the use of cookies. By accessing Artiste-Art Assistant, you agreed to use cookies in agreement with the Artiste\'s Privacy Policy.\r\n\r\nMost interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>'),
(2, 'Refund Policy', 'link2', '<p>Free refund for 30 days only</p>'),
(3, 'Licence', 'link3', '<p>Unless otherwise stated, Artiste and/or its licensors own the intellectual property rights for all material on Artiste-Art Assistant. All intellectual property rights are reserved. You may access this from Artiste-Art Assistant for your own personal use subjected to restrictions set in these terms and conditions.\r\n\r\nYou must not:\r\n\r\nRepublish material from Artiste-Art Assistant\r\nSell, rent or sub-license material from Artiste-Art Assistant\r\nReproduce, duplicate or copy material from Artiste-Art Assistant\r\nRedistribute content from Artiste-Art Assistant\r\nThis Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the Terms And Conditions Generator and the Privacy Policy Generator.\r\n\r\nParts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Artiste does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Artiste,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Artiste shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.\r\n\r\nArtiste reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.\r\n\r\nYou warrant and represent that:\r\n\r\nYou are entitled to post the Comments on our website and have all necessary licenses and consents to do so;\r\nThe Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;\r\nThe Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy\r\nThe Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.\r\nYou hereby grant Artiste a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `variations_meta`
--

CREATE TABLE `variations_meta` (
  `meta_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variations_meta`
--

INSERT INTO `variations_meta` (`meta_id`, `variation_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'Frame Color', 'Black'),
(2, 2, 'Frame Color', 'White'),
(3, 3, 'Measurements', '40X50'),
(4, 4, 'Measurements', '60X120'),
(54, 89, 'Frame', '8 GB'),
(55, 89, 'processor', 'i3 7th-generation'),
(56, 89, 'storage', '128GB SSD'),
(57, 88, 'Frame', '8 GB'),
(58, 88, 'processor', 'i5 7th-generation'),
(59, 88, 'storage', '512GB SSD'),
(60, 87, 'Frame', '8 GB'),
(61, 87, 'processor', 'i7 7th-generation'),
(62, 87, 'storage', '1TB SSD'),
(63, 86, 'Frame', '16 GB'),
(64, 86, 'processor', 'i7 7th-generation'),
(65, 86, 'storage', '512GB SSD'),
(66, 85, 'Frame', '16 GB'),
(67, 85, 'processor', 'i7 7th-generation'),
(68, 85, 'storage', '1TB SSD'),
(69, 101, 'Frame', '8 GB'),
(70, 101, 'processor', 'i5 7th-generation'),
(71, 101, 'storage', '1TB SSD'),
(72, 100, 'Frame', '8 GB'),
(73, 100, 'processor', 'i3 7th-generation'),
(74, 100, 'storage', '256 GB SSD'),
(75, 102, 'Frame', '8 GB'),
(76, 102, 'processor', 'i3 7th-generation'),
(77, 102, 'storage', '128 GB SSD'),
(93, 110, 'Frame', '8 GB'),
(94, 110, 'processor', 'i5 7th-generation'),
(95, 110, 'storage', '256 GB SSD'),
(96, 111, 'Frame', '8 GB'),
(97, 111, 'processor', 'i7 7th-generation'),
(98, 111, 'storage', '1TB SSD'),
(102, 115, 'Frame', '16 GB'),
(103, 115, 'processor', 'i7 7th-generation'),
(104, 115, 'storage', '1TB SSD'),
(105, 116, 'Frame', '8 GB'),
(106, 116, 'processor', 'i7 7th-generation'),
(107, 116, 'storage', '512GB SSD'),
(108, 117, 'Frame', '8 GB'),
(109, 117, 'processor', 'i5 7th-generation'),
(110, 117, 'storage', '256 GB SSD'),
(111, 118, 'Frame', '8 GB'),
(112, 118, 'processor', 'i7 7th-generation'),
(113, 118, 'storage', '256 GB SSD'),
(363, 207, 'Measurements', 'X-Large'),
(364, 207, 'Frame Color', 'Aqua Blue'),
(365, 209, 'Measurements', 'Small'),
(366, 209, 'Frame Color', 'Red'),
(367, 210, 'Measurements', 'Medium'),
(368, 210, 'Frame', 'Red'),
(369, 211, 'Measurements', 'Large'),
(370, 211, 'Frame', 'Red'),
(371, 212, 'Measurements', 'X-Large'),
(372, 212, 'Frame', 'Red'),
(373, 213, 'Measurements', 'XX-Lagre'),
(374, 213, 'Frame', 'Red'),
(375, 214, 'Measurements', '3X-Large'),
(376, 214, 'Frame', 'Red'),
(377, 215, 'Measurements', 'Small'),
(378, 215, 'Frame', 'Blue'),
(379, 216, 'Measurements', 'Medium'),
(380, 216, 'Frame', 'Blue'),
(381, 217, 'Measurements', 'Large'),
(382, 217, 'Frame', 'Blue'),
(383, 218, 'Measurements', 'X-Large'),
(384, 218, 'Frame', 'Blue'),
(385, 219, 'Measurements', 'XX-Lagre'),
(386, 219, 'Frame', 'Blue'),
(387, 220, 'Measurements', '3X-Large'),
(388, 220, 'Frame', 'Blue'),
(389, 221, 'Measurements', 'Small'),
(390, 221, 'Frame', 'Aqua Blue'),
(391, 222, 'Measurements', 'Medium'),
(392, 222, 'Frame', 'Aqua Blue'),
(393, 223, 'Measurements', 'Large'),
(394, 223, 'Frame', 'Aqua Blue'),
(395, 224, 'Measurements', 'X-Large'),
(396, 224, 'Frame', 'Aqua Blue'),
(397, 225, 'Measurements', 'XX-Lagre'),
(398, 225, 'Frame', 'Aqua Blue'),
(399, 226, 'Measurements', '3X-Large'),
(400, 226, 'Frame', 'Aqua Blue'),
(477, 265, 'Frame', 'White'),
(478, 265, 'Measurements', '60X90'),
(479, 266, 'Frame', 'Black'),
(480, 266, 'Measurements', '40X50'),
(481, 267, 'Frame', 'White'),
(482, 267, 'Measurements', '40X50'),
(483, 268, 'Frame', 'Silver Gray'),
(484, 268, 'Measurements', '40X50'),
(485, 269, 'Frame', 'Black'),
(486, 269, 'Measurements', '50X70'),
(487, 270, 'Frame', 'White'),
(488, 270, 'Measurements', '50X70'),
(489, 271, 'Frame', 'Silver Gray'),
(490, 271, 'Measurements', '50X70'),
(491, 272, 'Frame', 'Black'),
(492, 272, 'Measurements', '40X70'),
(493, 273, 'Frame', 'White'),
(494, 273, 'Measurements', '20X40'),
(495, 274, 'Frame', 'Silver Gray'),
(496, 274, 'Measurements', '20X40'),
(497, 275, 'Frame', 'Black'),
(498, 275, 'Measurements', '60X90'),
(499, 276, 'Frame', 'White'),
(500, 276, 'Measurements', '60X90'),
(501, 277, 'Frame', 'Silver Gray'),
(502, 277, 'Measurements', '60X90'),
(503, 278, 'Frame', 'Black'),
(504, 278, 'Measurements', '10X30'),
(505, 279, 'Frame', 'White'),
(506, 279, 'Measurements', '10X30'),
(507, 280, 'Frame', 'Silver Gray'),
(508, 280, 'Measurements', '10X30'),
(509, 281, 'Frame', 'Black'),
(510, 281, 'Measurements', '80X100'),
(511, 282, 'Frame', 'White'),
(512, 282, 'Measurements', '80X100'),
(513, 283, 'Frame', 'Silver Gray'),
(514, 283, 'Measurements', '80X100'),
(653, 330, 'Frame', '8 GB'),
(654, 330, 'processor', 'i5 7th-generation'),
(655, 330, 'storage', '1TB SSD'),
(656, 331, 'Frame', '16 GB'),
(657, 331, 'processor', 'i5 7th-generation'),
(658, 331, 'Measurements', '50X70'),
(659, 332, 'Frame', '4 GB'),
(660, 332, 'processor', 'i3 7th-generation'),
(661, 332, 'Measurements', '30X60'),
(662, 333, 'Frame', '16 GB'),
(663, 333, 'processor', 'i7 7th-generation'),
(664, 333, 'Measurements', '512GB SSD'),
(665, 334, 'Color_Combo', 'Pink&Blue'),
(666, 334, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(667, 335, 'Color_Combo', 'Black&Pink'),
(668, 335, 'capacity', '8 GB RAM / 256 GB SSD'),
(669, 336, 'Color_Combo', 'Black&Yellow'),
(670, 336, 'capacity', '8 GB RAM / 256 GB SSD'),
(671, 337, 'Color_Combo', 'Green&Pink'),
(672, 337, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(673, 338, 'Color_Combo', 'Green&Blue'),
(674, 338, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(675, 339, 'Color_Combo', 'Aqua&Orange'),
(676, 339, 'capacity', '16 GB RAM / 1 TB SSD 4K'),
(677, 340, 'Color_Combo', 'Purple&Orange'),
(678, 340, 'capacity', '16 GB RAM / 1 TB SSD 4K'),
(679, 341, 'Frame', 'White'),
(680, 341, 'Memory', ''),
(681, 342, 'Color', 'Green&Yellow'),
(682, 342, 'Frame', '70X100'),
(683, 343, 'Color', 'Blue&Black'),
(684, 343, 'Frame', '40X50'),
(685, 344, 'Color', 'Orange&Purple'),
(686, 344, 'Frame', '20X40'),
(687, 345, 'Color', 'Red&Blue'),
(688, 345, 'Frame', '60X120'),
(689, 346, 'Frame', 'Black'),
(690, 346, 'Color', 'Blue'),
(693, 348, 'Frame', 'Brown'),
(694, 348, 'Color', 'White'),
(699, 351, 'Frame', 'White'),
(700, 351, 'Color', 'Aqua'),
(701, 352, 'Frame', 'Green'),
(702, 352, 'Color', 'Aqua'),
(705, 354, 'Frame', 'White'),
(706, 354, 'Color', 'Gray'),
(707, 355, 'Frame', 'Green'),
(708, 355, 'Color', 'Gray'),
(709, 356, 'Frame', 'Brown'),
(710, 356, 'Color', 'Gray'),
(713, 358, 'Frame', 'Green'),
(714, 358, 'Color', 'Blue'),
(715, 359, 'Frame', 'Black'),
(716, 359, 'Color', 'Blue'),
(717, 360, 'Frame', 'Black'),
(718, 360, 'Color', 'Blue'),
(719, 360, 'storage', '2TB SSD'),
(723, 359, 'Measurements', '40X50'),
(724, 358, 'Measurements', '40X50'),
(725, 356, 'Measurements', '50X70'),
(726, 355, 'Measurements', '50X70'),
(727, 354, 'Measurements', '50X70'),
(728, 352, 'Measurements', '120X140'),
(729, 351, 'storage', '256 GB SSD'),
(730, 348, 'Measurements', '30X60'),
(731, 346, 'Measurements', '40X50'),
(996, 457, 'Frame', 'White'),
(997, 457, 'Color', 'Gray'),
(998, 458, 'Frame', '60X80'),
(999, 458, 'Color', 'Black'),
(1008, 464, 'Frame', 'Black'),
(1009, 464, 'Measurements', '60X80'),
(1012, 468, 'Frame', 'Brown'),
(1013, 468, 'Measurements', '50X70'),
(1014, 469, 'Frame', 'White'),
(1015, 469, 'Measurements', '40X50'),
(1016, 470, 'Frame', 'Yellow'),
(1017, 470, 'Measurements', '60X70'),
(1018, 471, 'Frame', 'Brown'),
(1019, 471, 'Measurements', '50X70'),
(1020, 472, 'Frame', 'Black'),
(1021, 472, 'Measurements', '50X70'),
(1022, 473, 'Frame', 'Brown'),
(1023, 473, 'Measurements', '50X70'),
(1024, 474, 'Frame', 'Black'),
(1025, 474, 'Measurements', '60X80'),
(1026, 475, 'Frame', 'White'),
(1027, 475, 'Measurements', '60X80'),
(1028, 476, 'Frame ', 'Yellow'),
(1029, 476, 'Measurements', '60X80'),
(1030, 477, 'Stand', 'Brown'),
(1031, 477, 'Measurements', '50X70'),
(1032, 478, 'Stand', 'Black'),
(1033, 478, 'Measurements', '80X100'),
(1034, 479, 'Stand', 'Brown'),
(1035, 479, 'Measurements', '50X70'),
(1036, 480, 'os', ''),
(1037, 480, 'edition', ''),
(1038, 481, 'os', 'Windows'),
(1039, 481, 'edition', 'Ultimate'),
(1042, 483, 'os', 'Windows'),
(1043, 483, 'edition', 'Ultra'),
(1046, 485, 'os', 'Mac-Os'),
(1047, 485, 'edition', 'Delux'),
(1048, 486, 'os', 'Mac-Os'),
(1049, 486, 'edition', 'Ultra'),
(1050, 487, 'Frame_Material', 'Plastic'),
(1051, 488, 'Frame_Material', 'Wood'),
(1052, 489, 'Frame_Material', 'Plastic'),
(1053, 490, 'os', 'Wood'),
(1054, 490, 'edition', 'Delux'),
(1055, 491, 'Frame_Material', 'Metal'),
(1056, 492, 'Frame', '50X70'),
(1057, 492, 'Color', 'White'),
(1058, 493, 'Measurements', '40x50'),
(1059, 493, 'Frame', 'Brown'),
(1060, 493, 'Color', 'Pink&Black'),
(1061, 494, 'Measurements', '50x70'),
(1062, 494, 'Frame', 'Brown'),
(1063, 494, 'Color', 'Pink&Black'),
(1064, 495, 'Measurements', '40x50'),
(1065, 495, 'Frame', 'Brown'),
(1066, 495, 'Color', 'Brown&Red'),
(1067, 496, 'Measurements', '80x10'),
(1068, 496, 'Frame', 'Black'),
(1069, 496, 'Color', '1TB SSD'),
(1082, 501, 'Measurements', '50x70'),
(1083, 501, 'Frame', 'Brown'),
(1084, 501, 'Color', 'Black&Blue'),
(1085, 503, 'Measurements', '50x70'),
(1086, 503, 'Frame', 'Brown'),
(1087, 503, 'Color', 'Black&Blue'),
(1091, 504, 'Measurements', '50x70'),
(1092, 504, 'Frame', 'Black'),
(1093, 504, 'Color', 'Red&Black'),
(1094, 505, 'Measurements', '60x80'),
(1095, 505, 'Frame', 'Black'),
(1096, 505, 'Color', 'Red&Black'),
(1097, 506, 'Measurements', '80x100'),
(1098, 506, 'Frame', 'Brown'),
(1099, 506, 'Color', 'Blue&Brown'),
(1250, 585, 'Measurements', 'Medium'),
(1251, 585, 'Frame ', 'Blue'),
(1252, 584, 'Measurements', 'Small'),
(1253, 584, 'Frame ', 'Black'),
(1254, 586, 'Measurements', 'Medium'),
(1255, 586, 'Frame', 'Blue'),
(1256, 587, 'Measurements', 'Large'),
(1257, 587, 'Frame', 'Maroon');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_accounts`
--

CREATE TABLE `vendor_accounts` (
  `account_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL,
  `current_balance` decimal(10,1) NOT NULL,
  `pending_clearance` decimal(10,1) NOT NULL,
  `withdrawals` decimal(10,1) NOT NULL,
  `month_earnings` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_accounts`
--

INSERT INTO `vendor_accounts` (`account_id`, `vendor_id`, `current_balance`, `pending_clearance`, `withdrawals`, `month_earnings`) VALUES
(1, 6, 5878.2, 0.0, 118.0, 5996.2),
(2, 18, 0.0, 0.0, 0.0, 0.0),
(3, 20, 0.0, 0.0, 0.0, 0.0),
(4, 24, 0.0, 0.0, 0.0, 0.0),
(5, 25, 0.0, 0.0, 0.0, 0.0),
(6, 26, 0.0, 0.0, 0.0, 0.0),
(7, 28, 0.0, 0.0, 0.0, 0.0),
(8, 29, 0.0, 0.0, 0.0, 0.0),
(9, 30, 0.0, 0.0, 0.0, 0.0),
(10, 31, 0.0, 0.0, 0.0, 0.0),
(11, 31, 0.0, 0.0, 0.0, 0.0),
(12, 32, 0.0, 0.0, 0.0, 0.0),
(13, 33, 0.0, 0.0, 0.0, 0.0),
(14, 34, 0.0, 0.0, 0.0, 0.0),
(15, 35, 0.0, 0.0, 0.0, 0.0),
(16, 36, 2700.0, 0.0, 0.0, 2700.0);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_commissions`
--

CREATE TABLE `vendor_commissions` (
  `commission_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `commission_paid_date` text NOT NULL,
  `commission_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_commissions`
--

INSERT INTO `vendor_commissions` (`commission_id`, `vendor_id`, `order_id`, `commission_paid_date`, `commission_status`) VALUES
(7, 6, 31, 'June 20, 2018 05:13:27', 'cleared'),
(8, 6, 30, 'June 22, 2018 09:07:12', 'cleared'),
(10, 6, 19, 'June 23, 2018 01:47:18', 'cleared'),
(11, 6, 41, 'June 25, 2018 05:21:10', 'cleared'),
(12, 14, 3, 'January 09, 2019 08:02:24', 'cleared'),
(13, 36, 18, 'May 27, 2021 02:09:20', 'cleared'),
(14, 36, 19, 'May 27, 2021 06:39:35', 'cleared'),
(15, 36, 20, 'May 27, 2021 06:53:56', 'cleared');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(11) NOT NULL,
  `order_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `shipping_type` text NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL,
  `order_total` decimal(10,1) NOT NULL,
  `net_amount` decimal(10,1) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `order_id`, `vendor_id`, `invoice_no`, `shipping_type`, `shipping_cost`, `order_total`, `net_amount`, `order_status`) VALUES
(1, 1, '6', 1700767450, ' Speedy 1-2 days', 4.0, 74.0, 63.0, 'pending'),
(2, 1, 'admin_2', 502364325, 'Business Days', 30.0, 1130.0, 990.0, 'pending'),
(3, 1, '14', 2054927691, 'Overnight Shipping', 10.0, 5910.0, 5310.0, 'completed'),
(4, 2, '6', 1726995664, '', 0.0, 400.0, 360.0, 'pending'),
(5, 3, '6', 30954437, '', 0.0, 199.0, 179.1, 'pending'),
(6, 4, '6', 379044960, '', 0.0, 70.0, 63.0, 'pending'),
(7, 4, 'admin_2', 1813246881, '', 0.0, 1200.0, 1080.0, 'pending'),
(8, 5, 'admin_2', 448702480, '', 0.0, 1100.0, 990.0, 'pending'),
(9, 6, 'admin_2', 1733367885, '', 0.0, 1100.0, 990.0, 'pending'),
(10, 6, '30', 1346054401, '', 0.0, 900.0, 810.0, 'pending'),
(11, 7, 'admin_2', 1129883075, '', 0.0, 1000.0, 900.0, 'pending'),
(12, 8, 'admin_2', 35866909, '', 0.0, 50.0, 45.0, 'pending'),
(13, 9, 'admin_2', 653872408, '', 0.0, 2000.0, 1800.0, 'pending'),
(14, 10, 'admin_2', 94074809, '', 0.0, 900.0, 810.0, 'processing'),
(15, 10, '33', 1244747418, '', 0.0, 1000.0, 900.0, 'processing'),
(16, 11, '33', 906980190, '', 0.0, 1000.0, 900.0, 'processing'),
(17, 12, '35', 374661883, '', 0.0, 1000.0, 900.0, 'processing'),
(18, 13, '36', 1571501041, '', 0.0, 1000.0, 900.0, 'completed'),
(19, 14, '36', 584751636, '', 0.0, 1000.0, 900.0, 'completed'),
(20, 15, '36', 1900041566, '', 0.0, 1000.0, 900.0, 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_withdraws`
--

CREATE TABLE `vendor_withdraws` (
  `withdraw_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `amount` decimal(10,1) NOT NULL,
  `method` text NOT NULL,
  `date` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_withdraws`
--

INSERT INTO `vendor_withdraws` (`withdraw_id`, `vendor_id`, `amount`, `method`, `date`, `status`) VALUES
(1, '6', 10.3, 'paypal', 'June 15, 2018 9:11 am', 'pending'),
(2, '6', 70.0, 'stripe', 'June 18, 2018 09:51', 'cancelled'),
(3, '6', 100.0, 'bank-transfer', 'June 18, 2018 09:51', 'cancelled'),
(4, '6', 100.0, 'bank-transfer', 'June 18, 2018 09:51', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(20, 10, 36),
(21, 10, 36),
(23, 2, 46),
(24, 31, 31);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_meta`
--

CREATE TABLE `wishlist_meta` (
  `meta_id` int(10) NOT NULL,
  `wishlist_id` int(255) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `wishlist_meta`
--

INSERT INTO `wishlist_meta` (`meta_id`, `wishlist_id`, `customer_id`, `product_id`, `meta_key`, `meta_value`) VALUES
(1, 24, 31, 31, 'frame', 'White'),
(2, 24, 31, 31, 'measurements', '60X90'),
(3, 24, 31, 31, 'variation_id', '#276');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `zone_name` text NOT NULL,
  `zone_order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `vendor_id`, `zone_name`, `zone_order`) VALUES
(5, 'admin_2', 'Bahrain', 1),
(6, 'admin_2', 'UK', 2),
(7, 'admin_2', 'Europe Zone', 3),
(9, '2', 'USA', 1),
(10, '14', 'Saudi Arabia', 1),
(13, '6', 'UAE', 2),
(14, '36', 'Bahrain', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zones_locations`
--

CREATE TABLE `zones_locations` (
  `location_id` int(10) NOT NULL,
  `zone_id` int(10) NOT NULL,
  `location_code` text NOT NULL,
  `location_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `zones_locations`
--

INSERT INTO `zones_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(24, 7, '74', 'country'),
(25, 7, '154', 'country'),
(26, 7, '229', 'country'),
(129, 13, '101', 'country'),
(130, 13, '110012', 'postcode'),
(131, 13, '110003', 'postcode'),
(132, 13, '110011', 'postcode'),
(133, 13, '110012', 'postcode'),
(134, 5, '18', 'country'),
(135, 5, '54000', 'postcode'),
(136, 5, '54600', 'postcode'),
(137, 5, '53720', 'postcode'),
(138, 9, '230', 'country'),
(139, 9, '54000', 'postcode'),
(140, 9, '54600', 'postcode'),
(141, 9, '53720', 'postcode'),
(142, 10, '191', 'country'),
(143, 10, '54600', 'postcode'),
(144, 10, '53720', 'postcode'),
(145, 6, '229', 'country'),
(146, 6, '110003', 'postcode'),
(147, 6, '110055', 'postcode'),
(148, 6, '110011', 'postcode'),
(149, 6, '110026', 'postcode'),
(150, 14, '18', 'country'),
(151, 14, '1000', 'postcode');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `cart_meta`
--
ALTER TABLE `cart_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customers_addresses`
--
ALTER TABLE `customers_addresses`
  ADD PRIMARY KEY (`addresse_id`);

--
-- Indexes for table `customers_history`
--
ALTER TABLE `customers_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hide_admin_orders`
--
ALTER TABLE `hide_admin_orders`
  ADD PRIMARY KEY (`hide_id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_addresses`
--
ALTER TABLE `orders_addresses`
  ADD PRIMARY KEY (`addresse_id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders_items_meta`
--
ALTER TABLE `orders_items_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `orders_notes`
--
ALTER TABLE `orders_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_stock`
--
ALTER TABLE `products_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`variation_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `reviews_meta`
--
ALTER TABLE `reviews_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `shipping_type`
--
ALTER TABLE `shipping_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `store_settings`
--
ALTER TABLE `store_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `variations_meta`
--
ALTER TABLE `variations_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `vendor_commissions`
--
ALTER TABLE `vendor_commissions`
  ADD PRIMARY KEY (`commission_id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_withdraws`
--
ALTER TABLE `vendor_withdraws`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- Indexes for table `wishlist_meta`
--
ALTER TABLE `wishlist_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `zones_locations`
--
ALTER TABLE `zones_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `cart_meta`
--
ALTER TABLE `cart_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `customers_addresses`
--
ALTER TABLE `customers_addresses`
  MODIFY `addresse_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `customers_history`
--
ALTER TABLE `customers_history`
  MODIFY `history_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=957;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `download_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hide_admin_orders`
--
ALTER TABLE `hide_admin_orders`
  MODIFY `hide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `icon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders_addresses`
--
ALTER TABLE `orders_addresses`
  MODIFY `addresse_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders_items_meta`
--
ALTER TABLE `orders_items_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders_notes`
--
ALTER TABLE `orders_notes`
  MODIFY `note_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `products_stock`
--
ALTER TABLE `products_stock`
  MODIFY `stock_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `attribute_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `variation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `reviews_meta`
--
ALTER TABLE `reviews_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `shipping_type`
--
ALTER TABLE `shipping_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store_settings`
--
ALTER TABLE `store_settings`
  MODIFY `settings_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variations_meta`
--
ALTER TABLE `variations_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1258;

--
-- AUTO_INCREMENT for table `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  MODIFY `account_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vendor_commissions`
--
ALTER TABLE `vendor_commissions`
  MODIFY `commission_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vendor_withdraws`
--
ALTER TABLE `vendor_withdraws`
  MODIFY `withdraw_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wishlist_meta`
--
ALTER TABLE `wishlist_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `zones_locations`
--
ALTER TABLE `zones_locations`
  MODIFY `location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
