-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 10, 2024 at 07:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u803075571_zaaminn`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us_pages`
--

CREATE TABLE `about_us_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Location` varchar(191) NOT NULL,
  `en_Title` varchar(191) DEFAULT NULL,
  `en_Subtitle` varchar(191) DEFAULT NULL,
  `Image` varchar(191) DEFAULT NULL,
  `Icon_One` varchar(191) DEFAULT NULL,
  `Icon_Two` varchar(191) DEFAULT NULL,
  `Icon_Three` varchar(191) DEFAULT NULL,
  `Icon_Four` varchar(191) DEFAULT NULL,
  `en_Title_One` varchar(191) DEFAULT NULL,
  `en_Title_Two` varchar(191) DEFAULT NULL,
  `en_Title_Three` varchar(191) DEFAULT NULL,
  `en_Title_Four` varchar(191) DEFAULT NULL,
  `en_Description_One` longtext DEFAULT NULL,
  `en_Description_Two` longtext DEFAULT NULL,
  `en_Description_Three` longtext DEFAULT NULL,
  `en_Description_Four` longtext DEFAULT NULL,
  `fr_Title_One` varchar(191) DEFAULT NULL,
  `fr_Title_Two` varchar(191) DEFAULT NULL,
  `fr_Title_Three` varchar(191) DEFAULT NULL,
  `fr_Title_Four` varchar(191) DEFAULT NULL,
  `fr_Subtitle` varchar(191) DEFAULT NULL,
  `fr_Description_One` longtext DEFAULT NULL,
  `fr_Description_Two` longtext DEFAULT NULL,
  `fr_Description_Three` longtext DEFAULT NULL,
  `fr_Description_Four` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_pages`
--

INSERT INTO `about_us_pages` (`id`, `Location`, `en_Title`, `en_Subtitle`, `Image`, `Icon_One`, `Icon_Two`, `Icon_Three`, `Icon_Four`, `en_Title_One`, `en_Title_Two`, `en_Title_Three`, `en_Title_Four`, `en_Description_One`, `en_Description_Two`, `en_Description_Three`, `en_Description_Four`, `fr_Title_One`, `fr_Title_Two`, `fr_Title_Three`, `fr_Title_Four`, `fr_Subtitle`, `fr_Description_One`, `fr_Description_Two`, `fr_Description_Three`, `fr_Description_Four`, `created_at`, `updated_at`) VALUES
(1, 'about_us', NULL, 'About Us', '650c5cdad98991695309018.png', NULL, NULL, NULL, NULL, 'Innovative solutions <br /> to boost your projects', NULL, NULL, NULL, '<p class=\"about-us-text\">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere consectetur sed, convallis at tellus. Donec rutrum congue leo eget malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet </p>\r\n                        <p class=\"about-us-text\">Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Sed porttitor lectus nibh. Nulla porttitor accumsan tincidunt. Pellentesque in ipsum id orci porta dapibus. Praesent sapien massa, convallis a pellentesque nec, </p>', NULL, NULL, NULL, 'ديس ابتكار الحلول <br/> صب الداعم لك المشاريع', NULL, NULL, NULL, 'معلومات عنا', '<p class=\"about-us-text\">عند مدخل مدخل العفاريت ، كان الألم والانتقام يكمن في الوادي الرئيسي ولكن الوادي عند الأرض. حتى يحتاج الأسد إلى التوحيد. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. الدهليوم&nbsp;</p><p class=\"about-us-text\">كتلة الحاضر حكيمة وليست من وادي القناص ، لكنها ليست من العوز. يعيش لرفع الجلاد يحتاج عطلة نهاية الأسبوع عبارة غاز. لكن العبارة اختارت الكرة. لا توجد طبقة مبتكرة لإيقافها. باسم هذا شركة مصفاة نفط عمان إنها كتلة من الحكماء</p>', NULL, NULL, NULL, '2023-01-02 06:34:12', '2023-09-21 15:10:19'),
(2, 'comfort', NULL, NULL, '650c78932ab831695316115.png', 'service-icon-1.png', 'service-icon-2.png', 'service-icon-3.png', 'service-icon-4.png', 'All Day Comfort', 'All Day Comfort', 'All Day Comfort', 'All Day Comfort', 'We believe getting dressed should be the easiest part of your day.', 'We believe getting dressed should be the easiest part of your day.', 'We believe getting dressed should be the easiest part of your day.', NULL, 'راحة طوال اليوم', 'راحة طوال اليوم', 'راحة طوال اليوم', 'راحة طوال اليوم', NULL, 'نعتقد أن ارتداء الملابس يجب أن يكون أسهل جزء من يومك.', 'نعتقد أن ارتداء الملابس يجب أن يكون أسهل جزء من يومك.', 'نعتقد أن ارتداء الملابس يجب أن يكون أسهل جزء من يومك.', 'نعتقد أن ارتداء الملابس يجب أن يكون أسهل جزء من يومك.', '2023-01-02 06:34:12', '2023-09-21 17:08:35'),
(3, 'features', 'Our Features', 'Why Choose Us', NULL, 'features-icon-1.png', 'features-icon-2.png', 'features-icon-3.png', NULL, 'Why Choose Us', 'Men\'s Collection', 'Innovative Solutions', NULL, 'We believe getting dressed should be the easiest part of your day.', 'We believe getting dressed should be the easiest part of your day.', 'We believe getting dressed should be the easiest part of your day.', NULL, 'لماذا أخترتنا', 'مجموعة الرجال', 'حلول مبتكرة', NULL, NULL, 'نعتقد أن ارتداء الملابس يجب أن يكون أسهل جزء من يومك.', 'نعتقد أن ارتداء الملابس يجب أن يكون أسهل جزء من يومك.', 'نعتقد أن ارتداء الملابس يجب أن يكون أسهل جزء من يومك.', NULL, '2023-01-02 06:34:12', '2023-01-02 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `partName` varchar(255) DEFAULT NULL,
  `discountPrice` decimal(10,2) DEFAULT NULL,
  `is_sold` tinyint(1) DEFAULT 0,
  `is_delete` tinyint(1) DEFAULT 0,
  `is_admin_approval` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image_two` varchar(255) DEFAULT NULL,
  `image_three` varchar(255) DEFAULT NULL,
  `image_four` varchar(255) DEFAULT NULL,
  `image_five` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `user_id`, `city`, `number`, `category`, `sub_category`, `model`, `slug`, `image`, `price`, `description`, `date`, `partName`, `discountPrice`, `is_sold`, `is_delete`, `is_admin_approval`, `created_at`, `updated_at`, `image_two`, `image_three`, `image_four`, `image_five`) VALUES
(2, 1, NULL, NULL, 'smartWatch', 'Redmi Smart', NULL, NULL, 'assets/products/1706710824-png.monster-209.png', 642.00, 'Excellent Quality', NULL, NULL, NULL, 0, 0, 1, '2024-01-31 14:20:24', '2024-01-31 14:20:39', NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, 'accessories', 'Charger', NULL, NULL, 'assets/products/1706711206-png.monster-209.png', 600.00, 'Best Charger', NULL, NULL, NULL, 0, 0, 1, '2024-01-31 14:26:46', '2024-01-31 14:27:20', NULL, NULL, NULL, NULL),
(4, 1, NULL, NULL, 'smartWatch', NULL, NULL, NULL, 'assets/products/1706879377-Comet-Infinity-Smartwatch.webp', 3500.00, 'Samsung Smartwatch 42mm bluetooth calling with charger', NULL, NULL, NULL, 0, 0, 1, '2024-02-02 13:09:37', '2024-02-03 16:47:28', NULL, NULL, NULL, NULL),
(5, 1, NULL, NULL, 'accessories', 'Charger', NULL, NULL, 'assets/products/1708513941-x.jpg', 1500.00, 'IPHONE CHARGER 20W WHITE COLOUR SUPER FAST CHARGING', NULL, NULL, NULL, 0, 0, 1, '2024-02-21 11:12:21', '2024-02-21 11:12:37', NULL, NULL, NULL, NULL),
(6, 1, NULL, NULL, 'smartWatch', 'HandsFree', NULL, NULL, 'assets/products/1708947798-Untitled-1.png', 5000.00, 'hello', NULL, NULL, NULL, 0, 0, 0, '2024-02-26 11:43:18', '2024-02-26 11:43:18', NULL, NULL, NULL, NULL),
(7, 1, NULL, NULL, 'smartWatch', 'Charger', NULL, NULL, 'assets/products/1709141099-Untitled-1.png', 500.00, 'hello', NULL, NULL, NULL, 0, 0, 0, '2024-02-28 17:24:59', '2024-02-28 17:24:59', 'assets/products/1709141099-Untitled-1.png', 'assets/products/1709141099-Untitled-1.png', 'assets/products/1709141099-Untitled-1.png', 'assets/products/1709141099-Untitled-1.png'),
(8, 1, NULL, NULL, 'smartWatch', NULL, NULL, NULL, 'assets/products/1709156263-smart_watch.jpeg', 7000.00, NULL, NULL, NULL, NULL, 0, 0, 1, '2024-02-28 21:37:43', '2024-02-28 21:37:54', 'assets/products/1709156263-speakers.jpeg', 'assets/products/1709156263-mobile_holder.jpeg', 'assets/products/1709156263-airbuds.jpeg', 'assets/products/1709156263-cover.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `image`, `is_admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@gmail.com', 'profile.png', 1, NULL, '$2y$10$XTTKqipCiXMAoRrarl8A6.tsYoSKAnZncLzSND4YUiCERaLYElM.S', NULL, '2023-01-02 06:34:12', '2023-01-02 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

CREATE TABLE `advertises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Image_One` varchar(191) NOT NULL,
  `Image_Two` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertises`
--

INSERT INTO `advertises` (`id`, `Image_One`, `Image_Two`, `created_at`, `updated_at`) VALUES
(1, '65283359765bd1697133401.png', '65283530886661697133872.png', '2023-01-02 06:34:11', '2023-10-12 18:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) NOT NULL,
  `en_title` varchar(191) DEFAULT NULL,
  `en_summary` text DEFAULT NULL,
  `fr_title` varchar(191) DEFAULT NULL,
  `fr_summary` text DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `position` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `en_title`, `en_summary`, `fr_title`, `fr_summary`, `url`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, '65625374cf2251700942708.jpg', 'Exclusive Summer Sale Is Going On Zairito The Shopify', 'Curabitur non nulla sit amet nisl tempus convallis quis lectus. porttitor lectus nibh. Curabitur arcu erat, accu msan id imperdiet et, porttitor at. Cras ultricies ligula sed magna dictum porta. Donec rutrum congue eget malesuaa. Lorem', 'التخفيضات الصيفية الحصرية مستمرة في Zairito The Shopify', 'Curabitur non nulla sit amet nisl tempus convallis quis lectus. porttitor lectus nibh. Curabitur arcu erat, accu msan id imperdiet et, porttitor at. Cras ultricies ligula sed magna dictum porta. Donec rutrum congue eget malesuaa. Lorem', '#', 'home-top', 1, '2023-01-02 06:34:12', '2023-11-25 20:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `User_Id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(191) NOT NULL,
  `Email` varchar(191) DEFAULT NULL,
  `Street` varchar(191) DEFAULT NULL,
  `State` varchar(191) DEFAULT NULL,
  `Zipcode` varchar(191) DEFAULT NULL,
  `Country` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Small_Image` varchar(191) NOT NULL,
  `Big_Image` varchar(191) NOT NULL,
  `en_Title` varchar(191) NOT NULL,
  `en_Description_One` text NOT NULL,
  `en_Description_Two` text NOT NULL,
  `fr_Title` varchar(191) NOT NULL,
  `fr_Description_One` text NOT NULL,
  `fr_Description_Two` text NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `Small_Image`, `Big_Image`, `en_Title`, `en_Description_One`, `en_Description_Two`, `fr_Title`, `fr_Description_One`, `fr_Description_Two`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '650d921916eb01695388185.png', 'blog-single-image.png', 'New line of office products', 'In Look Designed Her Best Friend, Vera Farmiga Lit Up The Many Saints Of Newark Premiere Pro Shorts To All', '<p class=\"blog-content has-dropcap\">\r\n                            Donec  utrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Quisque velit nisi, pretiu    ut lacin ia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vesti bulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tem pus convallis quis ac lectus. Sed porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta </p>\r\n                        <div class=\"blockquote-area\">\r\n                            <p class=\"blockquote-text\">Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla porttitor accumsan tincidunt. Pellentesque in ipsum id orci porta dapibus. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Proin eget tortor risus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus magna justo, lacinia eget </p>\r\n                        </div>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla porttitor accumsan tincidunt. Nulla porttitor accuan sit amet dui. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.\r\n                        </p>', 'مجموعة جديدة من المنتجات المكتبية', 'في نظرة على صديقتها المقربة ، أضاءت فيرا فارميجا العديد من قديسي شورت نيوارك بريمير برو للجميع', '<p class=\"blog-content has-dropcap\">حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.<br></p>', 1, '2023-01-02 06:34:11', '2023-09-22 13:09:45'),
(2, '650d9226452681695388198.png', 'blog-single-image.png', 'New line of office products', 'In Look Designed Her Best Friend, Vera Farmiga Lit Up The Many Saints Of Newark Premiere Pro Shorts To All', '<p class=\"blog-content has-dropcap\">\r\n                            Donec  utrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Quisque velit nisi, pretiu    ut lacin ia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vesti bulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tem pus convallis quis ac lectus. Sed porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta </p>\r\n                        <div class=\"blockquote-area\">\r\n                            <p class=\"blockquote-text\">Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla porttitor accumsan tincidunt. Pellentesque in ipsum id orci porta dapibus. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Proin eget tortor risus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus magna justo, lacinia eget </p>\r\n                        </div>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla porttitor accumsan tincidunt. Nulla porttitor accuan sit amet dui. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.\r\n                        </p>', 'مجموعة جديدة من المنتجات المكتبية', 'في نظرة على صديقتها المقربة ، أضاءت فيرا فارميجا العديد من قديسي شورت نيوارك بريمير برو للجميع', '<p class=\"blog-content has-dropcap\">حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.<br></p>', 1, '2023-01-02 06:34:11', '2023-09-22 13:09:58');
INSERT INTO `blogs` (`id`, `Small_Image`, `Big_Image`, `en_Title`, `en_Description_One`, `en_Description_Two`, `fr_Title`, `fr_Description_One`, `fr_Description_Two`, `user_id`, `created_at`, `updated_at`) VALUES
(3, '650d92312b4f41695388209.png', 'blog-single-image.png', 'New line of office products', 'In Look Designed Her Best Friend, Vera Farmiga Lit Up The Many Saints Of Newark Premiere Pro Shorts To All', '<p class=\"blog-content has-dropcap\">\r\n                            Donec  utrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Quisque velit nisi, pretiu    ut lacin ia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vesti bulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tem pus convallis quis ac lectus. Sed porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta </p>\r\n                        <div class=\"blockquote-area\">\r\n                            <p class=\"blockquote-text\">Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla porttitor accumsan tincidunt. Pellentesque in ipsum id orci porta dapibus. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Proin eget tortor risus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus magna justo, lacinia eget </p>\r\n                        </div>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla porttitor accumsan tincidunt. Nulla porttitor accuan sit amet dui. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.\r\n                        </p>', 'مجموعة جديدة من المنتجات المكتبية', 'في نظرة على صديقتها المقربة ، أضاءت فيرا فارميجا العديد من قديسي شورت نيوارك بريمير برو للجميع', '<p class=\"blog-content has-dropcap\">حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.<br></p>', 1, '2023-01-02 06:34:11', '2023-09-22 13:10:09'),
(4, '650d923cb43361695388220.png', 'blog-single-image.png', 'New line of office products', 'In Look Designed Her Best Friend, Vera Farmiga Lit Up The Many Saints Of Newark Premiere Pro Shorts To All', '<p class=\"blog-content has-dropcap\">\r\n                            Donec  utrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Quisque velit nisi, pretiu    ut lacin ia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vesti bulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tem pus convallis quis ac lectus. Sed porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta </p>\r\n                        <div class=\"blockquote-area\">\r\n                            <p class=\"blockquote-text\">Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla porttitor accumsan tincidunt. Pellentesque in ipsum id orci porta dapibus. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Proin eget tortor risus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus magna justo, lacinia eget </p>\r\n                        </div>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla porttitor accumsan tincidunt. Nulla porttitor accuan sit amet dui. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.\r\n                        </p>', 'مجموعة جديدة من المنتجات المكتبية', 'في نظرة على صديقتها المقربة ، أضاءت فيرا فارميجا العديد من قديسي شورت نيوارك بريمير برو للجميع', '<p class=\"blog-content has-dropcap\">حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.<br></p>', 1, '2023-01-02 06:34:11', '2023-09-22 13:10:21');
INSERT INTO `blogs` (`id`, `Small_Image`, `Big_Image`, `en_Title`, `en_Description_One`, `en_Description_Two`, `fr_Title`, `fr_Description_One`, `fr_Description_Two`, `user_id`, `created_at`, `updated_at`) VALUES
(5, '650d9248270f91695388232.png', 'blog-single-image.png', 'New line of office products', 'In Look Designed Her Best Friend, Vera Farmiga Lit Up The Many Saints Of Newark Premiere Pro Shorts To All', '<p class=\"blog-content has-dropcap\">\r\n                            Donec  utrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Quisque velit nisi, pretiu    ut lacin ia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vesti bulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tem pus convallis quis ac lectus. Sed porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta </p>\r\n                        <div class=\"blockquote-area\">\r\n                            <p class=\"blockquote-text\">Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla porttitor accumsan tincidunt. Pellentesque in ipsum id orci porta dapibus. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Proin eget tortor risus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus magna justo, lacinia eget </p>\r\n                        </div>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla porttitor accumsan tincidunt. Nulla porttitor accuan sit amet dui. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.\r\n                        </p>', 'مجموعة جديدة من المنتجات المكتبية', 'في نظرة على صديقتها المقربة ، أضاءت فيرا فارميجا العديد من قديسي شورت نيوارك بريمير برو للجميع', '<p class=\"blog-content has-dropcap\">حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.<br></p>', 1, '2023-01-02 06:34:11', '2023-09-22 13:10:32'),
(6, '650d9204dd7381695388164.png', 'blog-single-image.png', 'New line of office products', 'In Look Designed Her Best Friend, Vera Farmiga Lit Up The Many Saints Of Newark Premiere Pro Shorts To All', '<p class=\"blog-content has-dropcap\">\r\n                            Donec  utrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Quisque velit nisi, pretiu    ut lacin ia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vesti bulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tem pus convallis quis ac lectus. Sed porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta </p>\r\n                        <div class=\"blockquote-area\">\r\n                            <p class=\"blockquote-text\">Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla porttitor accumsan tincidunt. Pellentesque in ipsum id orci porta dapibus. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Proin eget tortor risus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus magna justo, lacinia eget </p>\r\n                        </div>\r\n                        <p class=\"blog-content\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.\r\n                        </p>\r\n                        <p class=\"blog-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla porttitor accumsan tincidunt. Nulla porttitor accuan sit amet dui. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.\r\n                        </p>', 'مجموعة جديدة من المنتجات المكتبية', 'في نظرة على صديقتها المقربة ، أضاءت فيرا فارميجا العديد من قديسي شورت نيوارك بريمير برو للجميع', '<p class=\"blog-content has-dropcap\">حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.حتى ذلك الحين ، يجب أن يتحد الأسد. المركبات عنصر ، لكنها مهمة للجمهور. إذا رغب الجميع في ذلك ، فإن السعر الذي سيتحتم عليه ، هذا هو العنصر.<br></p>', 1, '2023-01-02 06:34:11', '2023-09-22 13:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Blog_Id` bigint(20) UNSIGNED NOT NULL,
  `User_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `Name` varchar(191) DEFAULT NULL,
  `Email` varchar(191) DEFAULT NULL,
  `Comment` longtext DEFAULT NULL,
  `Parent_Id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `en_BrandName` varchar(191) NOT NULL,
  `fr_BrandName` varchar(191) NOT NULL,
  `en_BrandSlug` varchar(191) NOT NULL,
  `fr_BrandSlug` varchar(191) NOT NULL,
  `BrandImage` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `category_id`, `en_BrandName`, `fr_BrandName`, `en_BrandSlug`, `fr_BrandSlug`, `BrandImage`, `Status`, `created_at`, `updated_at`) VALUES
(8, 12, 'IPhone', 'iphone', 'iphone', 'iphone', '6597f35a875a01704457050.jpeg', '1', '2023-09-19 16:40:51', '2024-02-07 13:06:07'),
(9, NULL, 'Samsung', 'سامسونج', 'samsung', 'n-a', '6597f3cfb175f1704457167.jpeg', '1', '2023-10-15 19:27:00', '2024-01-05 12:19:27'),
(10, NULL, 'Redmi', 'ريدمي', 'redmi', 'n-a', '6597f3bbeafbd1704457147.jpeg', '1', '2023-10-15 19:33:43', '2024-01-05 12:19:08'),
(11, NULL, 'Vivo', 'فيفو', 'vivo', 'n-a', '65326e46a94bb1697803846.png', '1', '2023-10-15 19:35:55', '2023-10-20 12:10:47'),
(12, NULL, 'Oppo', 'ممن لهم', 'oppo', 'n-a', '6597f3449c25b1704457028.jpg', '1', '2023-10-15 19:36:51', '2024-01-05 12:17:08'),
(14, NULL, 'Infinix', 'infinix', 'infinix', 'infinix', '6597f3e36cfa31704457187.jpeg', '1', '2023-10-15 19:43:26', '2024-01-05 12:19:47'),
(15, NULL, 'L.G', 'إل جي', 'l-g', 'n-a', '6597f37b5e0c71704457083.jpeg', '1', '2023-10-18 21:58:57', '2024-01-05 12:18:03'),
(17, NULL, 'Realme', 'ريل مي', 'realme', 'n-a', '6597f52b3e8261704457515.jpeg', '1', '2024-01-05 12:25:15', '2024-01-05 12:25:15'),
(18, 14, 'Infinix', 'إنفينكس', 'infinix', 'n-a', '6597f561d402e1704457569.jpeg', '1', '2024-01-05 12:26:09', '2024-02-02 00:31:29'),
(19, NULL, 'Tecno', 'تكنو', 'tecno', 'n-a', '6597f58891c611704457608.jpeg', '1', '2024-01-05 12:26:48', '2024-01-05 12:26:48'),
(20, 13, 'Huawei', 'هواوي', 'huawei', 'n-a', '6597f5a6ca1ec1704457638.jpeg', '1', '2024-01-05 12:27:18', '2024-02-02 00:29:47'),
(21, 13, 'Google', 'ڭوگل', 'google', 'n-a', '6597f5e80690c1704457704.jpeg', '1', '2024-01-05 12:28:24', '2024-02-02 00:29:24'),
(22, NULL, 'Motorola', 'موتورولا', 'motorola', 'n-a', '6597f600e3d121704457728.jpeg', '1', '2024-01-05 12:28:48', '2024-01-05 12:28:48'),
(23, NULL, 'OnePlus', 'ون بلس', 'oneplus', 'n-a', '6597f619637f81704457753.jpeg', '1', '2024-01-05 12:29:13', '2024-01-05 12:29:13'),
(24, 13, 'Samsung', 'Samsung', 'samsung', 'samsung', '65d4e3229185b1708450594.png', '1', '2024-02-20 17:36:34', '2024-02-20 17:36:34'),
(25, 13, 'XI', 'XI', 'xi', 'xi', '65d4e34cceec91708450636.png', '1', '2024-02-20 17:37:16', '2024-02-20 17:37:16'),
(26, 13, 'Apple', 'Apple', 'apple', 'apple', '65e186d3cc2ef1709278931.png', '1', '2024-03-01 07:42:11', '2024-03-01 07:42:11'),
(27, 13, 'Vivo', 'Vivo', 'vivo', 'vivo', '65e1f62c31d2d1709307436.png', '1', '2024-03-01 15:37:16', '2024-03-01 15:37:16'),
(28, 13, 'Infinix', 'Infinix', 'infinix', 'infinix', '65e1f65849c251709307480.png', '1', '2024-03-01 15:38:00', '2024-03-01 15:38:00'),
(29, 13, 'Oppo', 'Oppo', 'oppo', 'oppo', '65e1f679304121709307513.png', '1', '2024-03-01 15:38:33', '2024-03-01 15:38:33'),
(30, 13, 'Tecno', 'Tecno', 'tecno', 'tecno', '65e1f6a88a1b01709307560.png', '1', '2024-03-01 15:39:20', '2024-03-01 15:39:20'),
(31, 13, 'Oneplus', 'Oneplus', 'oneplus', 'oneplus', '65e1f6c26edcc1709307586.png', '1', '2024-03-01 15:39:46', '2024-03-01 15:39:46'),
(32, 13, 'Realme', 'Realme', 'realme', 'realme', '65e1f6e30a8431709307619.png', '1', '2024-03-01 15:40:19', '2024-03-01 15:40:19'),
(33, 13, 'Motorola', 'Motorola', 'motorola', 'motorola', '65e1f6ff55fe81709307647.png', '1', '2024-03-01 15:40:47', '2024-03-01 15:40:47'),
(34, 13, 'Nokia', 'Nokia', 'nokia', 'nokia', '65e1f712d08b91709307666.png', '1', '2024-03-01 15:41:06', '2024-03-01 15:41:06'),
(35, 13, 'LG', 'LG', 'lg', 'lg', '65e1f722e88751709307682.png', '1', '2024-03-01 15:41:23', '2024-03-01 15:41:23'),
(36, 17, 'Battery', 'Battery', 'battery', 'battery', '65e1f754ca7c31709307732.png', '1', '2024-03-01 15:42:12', '2024-03-01 15:42:12'),
(37, 17, 'BackGlass', 'BackGlass', 'backglass', 'backglass', '65e1f76f3f47c1709307759.png', '1', '2024-03-01 15:42:39', '2024-03-01 15:42:39'),
(38, 17, 'Hoosing', 'Hoosing', 'hoosing', 'hoosing', '65e1f7924a8be1709307794.png', '1', '2024-03-01 15:43:14', '2024-03-01 15:43:14'),
(39, 17, 'Front Glass', 'Front Glass', 'front-glass', 'front-glass', '65e1f7b12c4d81709307825.png', '1', '2024-03-01 15:43:45', '2024-03-01 15:43:45'),
(40, 17, 'Front Glass', 'Front Glass', 'front-glass', 'front-glass', '65e1f7b3793d91709307827.png', '1', '2024-03-01 15:43:47', '2024-03-01 15:43:47'),
(41, 17, 'Touch', 'Touch', 'touch', 'touch', '65e1f7cdd70361709307853.png', '1', '2024-03-01 15:44:13', '2024-03-01 15:44:13'),
(42, 17, 'Camera', 'Camera', 'camera', 'camera', '65e1f7e87c31b1709307880.png', '1', '2024-03-01 15:44:40', '2024-03-01 15:44:40'),
(43, 17, 'Charging Ribbon', 'Charging Ribbon', 'charging-ribbon', 'charging-ribbon', '65e1f816d13151709307926.png', '1', '2024-03-01 15:45:26', '2024-03-01 15:45:26'),
(44, 17, 'Finger', 'Finger', 'finger', 'finger', '65e1f82c8d0a61709307948.png', '1', '2024-03-01 15:45:48', '2024-03-01 15:45:48'),
(45, 17, 'I.C', 'I.C', 'i-c', 'i-c', '65e1f8489eb501709307976.png', '1', '2024-03-01 15:46:16', '2024-03-01 15:46:16'),
(46, 15, 'Earphones', 'Earphones', 'earphones', 'earphones', '65e1fcbf42f9b1709309119.png', '1', '2024-03-01 16:05:19', '2024-03-01 16:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `en_Category_Name` varchar(191) NOT NULL,
  `fr_Category_Name` varchar(191) NOT NULL,
  `en_Category_Slug` varchar(191) NOT NULL,
  `fr_Category_Slug` varchar(191) NOT NULL,
  `Category_Icon` varchar(191) DEFAULT NULL,
  `en_Description` varchar(191) DEFAULT NULL,
  `fr_Description` varchar(191) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `category_image` varchar(255) NOT NULL DEFAULT 'default_category.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `en_Category_Name`, `fr_Category_Name`, `en_Category_Slug`, `fr_Category_Slug`, `Category_Icon`, `en_Description`, `fr_Description`, `Status`, `category_image`, `created_at`, `updated_at`) VALUES
(12, 'SMARTWATCHES', 'ماك', 'smartwatches', 'n-a', 'fab fa-apple fa-4x text-black', '\"MacBook\" is a term used for a brand of Mac notebook computers that Apple started', '\"MacBook\" هو مصطلح يستخدم للإشارة إلى علامة تجارية لأجهزة كمبيوتر Mac المحمولة التي بدأتها شركة Apple', 1, 'default_category.png', '2023-10-15 19:56:21', '2024-02-10 08:50:34'),
(13, 'Mobile Phones', 'هاتف محمول', 'mobile-phones', 'n-a', 'fas fa-mobile fa-4x text-black', 'A mobile phone is a handheld communication device.', 'الهاتف المحمول هو جهاز اتصال محمول', 1, 'default_category.png', '2023-10-15 19:59:48', '2023-10-15 20:27:23'),
(14, 'Tablet', 'هاتف جوال', 'tablet', 'n-a', 'fas fa-tablet fa-3x text-black', 'a wireless, portable personal computer with a touchscreen interface.', 'جهاز كمبيوتر شخصي لاسلكي ومحمول مزود بواجهة تعمل باللمس.', 0, 'default_category.png', '2023-10-15 20:04:27', '2024-02-28 17:36:17'),
(15, 'Accessories', 'مُكَمِّلات', 'accessories', 'n-a', 'fas fa-headphones fa-3x text-black', 'Additional items or devices that enhance the functionality and convenience of your smartphone.', 'ملحقات الجوال هي عناصر إضافية أو أجهزة تعزز من وظائف وراحة هاتفك الذكي.', 1, 'default_category.png', '2023-10-15 20:07:56', '2023-10-20 11:56:35'),
(16, 'IPADS', 'كمبيوتر محمول', 'ipads', 'n-a', 'fas fa-laptop fa-3x text-black', 'A laptop is a portable computer that can be easily carried and used on the go.', 'اللابتوب هو جهاز كمبيوتر محمول يمكن حمله واستخدامه بسهولة أثناء التنقل.', 1, 'admin/categories/1-PakistanStateOilLogo.svg.png', '2023-10-15 20:09:51', '2024-02-19 18:40:00'),
(17, 'MOBILE PARTS', 'العناصر القابلة للإصلاح', 'mobile-parts', 'n-a', 'fas fa-wrench fa-4x text-black', 'Phone repairable items are replaceable components', 'العناصر القابلة للإصلاح في الهاتف هي مكونات قابلة للاستبدال', 1, 'default_category.png', '2023-10-15 20:22:35', '2024-02-02 15:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(191) NOT NULL,
  `ColorCode` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `Name`, `ColorCode`, `created_at`, `updated_at`) VALUES
(1, 'Red', '#FF0000', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(2, 'Black', '#000000', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(3, 'Gray', '#808080', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(4, 'Silver', '#C0C0C0', '2023-01-02 06:34:11', '2023-01-02 06:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `Product_Id` bigint(20) UNSIGNED NOT NULL,
  `Color_Id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_stories`
--

CREATE TABLE `company_stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Year` int(11) NOT NULL,
  `en_Description` text NOT NULL,
  `fr_Description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_stories`
--

INSERT INTO `company_stories` (`id`, `Year`, `en_Description`, `fr_Description`, `created_at`, `updated_at`) VALUES
(1, 2016, 'Quisque velit nisi, pretium ut lacinia in, elementum id elementum id enim. Nulla porttitor accumssan tincidunt. Donec rutrum congue leo eget malew susada. Cras ultricies ligula sed magna dictum', 'الكل يريد أن يدخر ، حتى يكون سعر الأمهات ، العنصر الذي يمثل العنصر. ليس هناك فرصة للبدء. حتى ماكياج الأسد يحتاج مالو سوسادا.قول مأثور', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(2, 2017, 'Quisque velit nisi, pretium ut lacinia in, elementum id elementum id enim. Nulla porttitor accumssan tincidunt. Donec rutrum congue leo eget malew susada. Cras ultricies ligula sed magna dictum', 'الكل يريد أن يدخر ، حتى يكون سعر الأمهات ، العنصر الذي يمثل العنصر. ليس هناك فرصة للبدء. حتى ماكياج الأسد يحتاج مالو سوسادا.قول مأثور', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(3, 2018, 'Quisque velit nisi, pretium ut lacinia in, elementum id elementum id enim. Nulla porttitor accumssan tincidunt. Donec rutrum congue leo eget malew susada. Cras ultricies ligula sed magna dictum', 'الكل يريد أن يدخر ، حتى يكون سعر الأمهات ، العنصر الذي يمثل العنصر. ليس هناك فرصة للبدء. حتى ماكياج الأسد يحتاج مالو سوسادا.قول مأثور', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(4, 2019, 'Quisque velit nisi, pretium ut lacinia in, elementum id elementum id enim. Nulla porttitor accumssan tincidunt. Donec rutrum congue leo eget malew susada. Cras ultricies ligula sed magna dictum', 'الكل يريد أن يدخر ، حتى يكون سعر الأمهات ، العنصر الذي يمثل العنصر. ليس هناك فرصة للبدء. حتى ماكياج الأسد يحتاج مالو سوسادا.قول مأثور', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(5, 2020, 'Quisque velit nisi, pretium ut lacinia in, elementum id elementum id enim. Nulla porttitor accumssan tincidunt. Donec rutrum congue leo eget malew susada. Cras ultricies ligula sed magna dictum', 'الكل يريد أن يدخر ، حتى يكون سعر الأمهات ، العنصر الذي يمثل العنصر. ليس هناك فرصة للبدء. حتى ماكياج الأسد يحتاج مالو سوسادا.قول مأثور', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(6, 2021, 'Quisque velit nisi, pretium ut lacinia in, elementum id elementum id enim. Nulla porttitor accumssan tincidunt. Donec rutrum congue leo eget malew susada. Cras ultricies ligula sed magna dictum', 'الكل يريد أن يدخر ، حتى يكون سعر الأمهات ، العنصر الذي يمثل العنصر. ليس هناك فرصة للبدء. حتى ماكياج الأسد يحتاج مالو سوسادا.قول مأثور', '2023-01-02 06:34:12', '2023-01-02 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `compare_lists`
--

CREATE TABLE `compare_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `User_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `Product_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `FirstName` varchar(191) NOT NULL,
  `LastName` varchar(191) NOT NULL,
  `Email` varchar(191) NOT NULL,
  `ContactNumber` varchar(191) NOT NULL,
  `Message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactuses`
--

INSERT INTO `contactuses` (`id`, `FirstName`, `LastName`, `Email`, `ContactNumber`, `Message`, `created_at`, `updated_at`) VALUES
(1, 'Tobiasmig', 'TobiasmigJL', 'no.reply.StephaneMorel@gmail.com', '88957947997', 'Hey there! zaaminn.com \r\n \r\nDid you know that it is possible to send appeals perfectly legal? We propose a new unique way of sending messages through contact forms. You may locate these kinds of feedback forms on a lot of sites. \r\nWhen such messages are sent, no personal data is used, and messages are sent to forms specifically designed to receive and process messages and appeals. Due to their importance, messages sent via Communication Forms have less of a chance of ending up as spam. \r\nWe provide you with the opportunity to test our service free of charge. \r\nWe can dispatch up to 50,000 messages for you. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis offer is automatically generated. \r\nPlease use the contact details below to get in touch with us. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nWhatsApp  +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\n \r\nWe only use chat for communication.', '2023-11-27 08:19:46', '2023-11-27 08:19:46'),
(2, 'Niki', 'Courtice', 'niki.courtice@yahoo.com', '02.81.03.83.76', 'want to be on top 10 Google rankings without any upfront payment? I\'m John, an SEO expert.\r\n Email me at razibarkai1643@gmail.com with your site and keywords, and I\'ll assess it.\r\nI won\'t charge until you reach the top 10. Nothing to lose! Waiting for your email.', '2023-11-29 20:12:11', '2023-11-29 20:12:11'),
(3, 'NqTXxNTdLSv', 'NqTXxNTdLSv', 'BNHrLS.thhpjmw@silesia.life', 'NvuznJUDsSHzRQydiozaFB', 'NvuznJUDsSHzRQydiozaFB', '2023-12-01 23:05:36', '2023-12-01 23:05:36'),
(4, 'Berniece', 'Weisz', 'weisz.berniece@gmail.com', '(02) 6730 7786', 'want to be on top 10 Google rankings without any upfront payment? I\'m John, an SEO expert.\r\n Email me at razibarkai1643@gmail.com with your site and keywords, and I\'ll assess it.\r\nI won\'t charge until you reach the top 10. Nothing to lose! Waiting for your email.', '2023-12-12 11:39:55', '2023-12-12 11:39:55'),
(5, 'Franchesca', 'Cuevas', 'franchesca.cuevas@yahoo.com', '0564-6626878', 'want to be on top 10 Google rankings without any upfront payment? I\'m John, an SEO expert.\r\n Email me at razibarkai1643@gmail.com with your site and keywords, and I\'ll assess it.\r\nI won\'t charge until you reach the top 10. Nothing to lose! Waiting for your email.', '2023-12-22 02:34:16', '2023-12-22 02:34:16'),
(6, 'Kora', 'Kora', 'zBnVCQ.dwtwqcj@tonetics.biz', 'Naya Reid', 'Naya Reid', '2023-12-23 13:04:43', '2023-12-23 13:04:43'),
(7, 'Mellisa', 'Faulk', 'onedollarhosting81@gmail.com', '72 351 54 67', 'reply me if you interested i will send you the link to 1$ a month hosting !', '2023-12-24 00:30:08', '2023-12-24 00:30:08'),
(8, 'Jayleen', 'Jayleen', 'DAoLqJ.bjphpcp@tonetics.biz', 'Francesca Mccullough', 'Francesca Mccullough', '2023-12-24 16:24:48', '2023-12-24 16:24:48'),
(9, 'Zev', 'Zev', 'sJNAkE.bwhbmhm@tonetics.biz', 'Ezra Garcia', 'Ezra Garcia', '2023-12-28 11:03:21', '2023-12-28 11:03:21'),
(10, 'Imran', 'Imran', 'jddfLF.cqcwbqd@tonetics.biz', 'Easton Vazquez', 'Easton Vazquez', '2023-12-29 23:42:59', '2023-12-29 23:42:59'),
(11, 'Charlesamife', 'CharlesamifeTV', 'yasen.krasen.13+92727@mail.ru', '86965541857', 'Ofokfojfief jwlkfeejereghfj iewojfekfjergij wiojewjfewitghuhwrgtjgh ewjhfwqjhdfuewgtuiwe huegfrwgyewgtywegt zaaminn.com', '2024-02-19 20:37:40', '2024-02-19 20:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CouponCode` varchar(191) NOT NULL,
  `Amount` double(8,2) NOT NULL,
  `Min_Expenses` double(8,2) NOT NULL,
  `ExpireDate` date NOT NULL,
  `Status` varchar(191) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `CouponCode`, `Amount`, `Min_Expenses`, `ExpireDate`, `Status`, `created_at`, `updated_at`) VALUES
(1, '122345', 500.00, 2000.00, '2023-11-30', '1', '2023-11-29 11:20:24', '2023-11-29 11:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(191) NOT NULL,
  `iso` varchar(191) NOT NULL,
  `symbol` varchar(191) NOT NULL,
  `position` varchar(191) DEFAULT 'before' COMMENT 'after, before',
  `convert_from_usd` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency`, `iso`, `symbol`, `position`, `convert_from_usd`, `created_at`, `updated_at`) VALUES
(6, 'PKR', 'pkr', 'Rs', 'before', 1.00, NULL, '2023-10-18 22:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `cutomer_services`
--

CREATE TABLE `cutomer_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(191) NOT NULL,
  `en_description` text NOT NULL,
  `fr_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cutomer_services`
--

INSERT INTO `cutomer_services` (`id`, `location`, `en_description`, `fr_description`, `created_at`, `updated_at`) VALUES
(1, 'terms_conditions', '<div class=\"single-term-condition\">\r\n                                <h3 class=\"term-conditions-title\">OVERVIEW</h3>\r\n                                <p class=\"term-condition-text\">Quisque velit nisi, pretium ut lacinia in, elementum id enim. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Sed porttitor lectus nibh. sem. Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec sollicitudin molestie malesuada.</p>\r\n                                <p class=\"term-condition-text\">Proin eget tortor risus. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Donec rutrum congue leo eget malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo eget malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vestibulum ante ipsum volutpat. Vivamus suscipit tortor eget felis porttitor volutpat. Nulla porttitor accumsan tincidunt. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. </p>\r\n                                <p class=\"term-condition-text\">Curabitur aliquet quam id dui posuere blandit. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget </p>\r\n                            </div>\r\n                            <div class=\"single-term-condition\">\r\n                                <h3 class=\"term-conditions-title\">ONLINE STORE TERMS</h3>\r\n                                <p class=\"term-condition-text\">Cras ultricies ligula sed magna dictum porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Donec sollicitudin molestie malesuada. Lorem ipsum dolor sit amet, consectetur ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus suscipit tortor eget felis porttitor volutpat.</p>\r\n                                <p class=\"term-condition-text\">Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectuseget felis porttitor volutpat. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>\r\n                                <p class=\"term-condition-text\">Pellentesque in ipsum id orci porta dapibus. Donec sollicitudin molestie malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur aliquet quam id dui posuere blandit.</p>\r\n                            </div>\r\n                            <div class=\"single-term-condition\">\r\n                                <h3 class=\"term-conditions-title\">COMPLETENESS AND TIMELINESS OF INFORMATION</h3>\r\n                                <p class=\"term-condition-text\">Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec rutrum congue leo eget malesuada. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Cras ultricies ligula sed magna dictum porta. Curabitur aliquet quam id dui posuere blandit.</p>\r\n                                <p class=\"term-condition-text\">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Proin eget tortor risus. Curabitur aliquet quam id dui </p>\r\n                                <p class=\"term-condition-text\">Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus magna justo, elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, </p>\r\n                            </div>\r\n                            <div class=\"single-term-condition\">\r\n                                <h3 class=\"term-conditions-title\">GENERAL CONDITIONS</h3>\r\n                                <p class=\"term-condition-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Cras ultricies ligula sed magna dictum porta. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Curabitur aliquet quam id dui posuere blandit.</p>\r\n                                <p class=\"term-condition-text\">Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat.</p>\r\n                            </div>\r\n                            <div class=\"single-term-condition\">\r\n                                <h3 class=\"term-conditions-title\">CHANGES TO TERMS OF SERVICE</h3>\r\n                                <p class=\"term-condition-text\">Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Cras ultricies ligula sed magna dictum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>\r\n                                <p class=\"term-condition-text\">Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Cras ultricies ligula sed magna dictum porta. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.</p>\r\n                                <p class=\"term-condition-text\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Cras ultricies ligula sed magna dictum porta. Vivamus suscipit tortor eget felis porttitor volutpat.</p>\r\n                            </div>\r\n                            <div class=\"single-term-condition\">\r\n                                <h3 class=\"term-conditions-title\">DISCLAIMER LIMITATION OF LIABILITY</h3>\r\n                                <p class=\"term-condition-text\">Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.Vivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur.</p>\r\n                            </div>', '<div class=\"single-term-condition\">\r\n                                <h3 class=\"privacy-policy-title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 400; line-height: 1.2; font-size: 1.75rem;\">جمع المعلومات الشخصية</h3><h3 class=\"term-conditions-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><p class=\"privacy-policy-text\">ولذا فهو بحاجة إلى ابتسامة بديلة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. حتى يتم توحيد شكل القرض. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. حتى يحتاج الأسد إلى التوحيد. الجميع يريد أن يدخر ، مع استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</p><ul class=\"privacy-feature\"><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li></ul></div></h3><h3 class=\"privacy-policy-title\">جمع المعلومات الشخصية</h3><h3 class=\"privacy-policy-title-small\"><p class=\"privacy-policy-text\" style=\"font-size: 16px;\">ولذا فهو بحاجة إلى ابتسامة بديلة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. حتى يتم توحيد شكل القرض. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. حتى يحتاج الأسد إلى التوحيد. الجميع يريد أن يدخر ، مع استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</p><ul class=\"privacy-feature\" style=\"font-size: 16px;\"><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</li></ul></h3><h3 class=\"term-conditions-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><ul class=\"privacy-feature\"></ul></div></h3><h3 class=\"privacy-policy-title-small\">اتخاذ القرار التلقائي</h3><h3 class=\"term-conditions-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><p class=\"privacy-policy-text\">لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. لكن العبارة اختارت الكرة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. ولذا فهو بحاجة إلى ابتسامة بديلة. حتى الفايكنج يعيش لرفع الجلاد يحتاج عطلة نهاية الأسبوع عبارة غاز. ولذا فهو بحاجة إلى ابتسامة بديلة. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. لا توجد طبقة مبتكرة لإيقافها. الألم نفسه هو الحب ، نظام التخزين الرئيسي. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. كان القوس ، طبقة هذا التمويل حتى يحتاج الأسد إلى التوحيد. باسم هذا شركة مصفاة نفط عمان لا توجد طبقة مبتكرة لإيقافها. لكن العبارة اختارت الكرة.</p></div></h3><h3 class=\"privacy-policy-title-small\">اتخاذ القرار التلقائي</h3><h3 class=\"privacy-policy-title\"><p class=\"privacy-policy-text\" style=\"font-size: 16px;\">لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. لكن العبارة اختارت الكرة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. ولذا فهو بحاجة إلى ابتسامة بديلة. حتى الفايكنج يعيش لرفع الجلاد يحتاج عطلة نهاية الأسبوع عبارة غاز. ولذا فهو بحاجة إلى ابتسامة بديلة. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. لا توجد طبقة مبتكرة لإيقافها. الألم نفسه هو الحب ، نظام التخزين الرئيسي. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. كان القوس ، طبقة هذا التمويل حتى يحتاج الأسد إلى التوحيد. باسم هذا شركة مصفاة نفط عمان لا توجد طبقة مبتكرة لإيقافها. لكن العبارة اختارت الكرة.</p></h3><h3 class=\"term-conditions-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><ul class=\"privacy-feature\"><li class=\"feature-item\">ستمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</li></ul></div></h3></div><div class=\"single-term-condition\">\r\n                            </div>', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(2, 'privacy_policy', '<div class=\"single-privacy-policy\">\r\n                                <h3 class=\"privacy-policy-title\">Collecting Personal Information</h3>\r\n                                <p class=\"privacy-policy-text\">Proin eget tortor risus. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Donec rutrum congue  eget malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Donec rutrum congue leo eget malesuada. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula .</p>\r\n                                <ul class=\"privacy-feature\">\r\n                                    <li class=\"feature-item\"><strong class=\"feature-title\">Examples of Personal Information collected:</strong> Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. <a href=\"#\" class=\"feature-link\">https://policies.google.com/privacy?hl=en</a> consectetur adipiscing rutrum congue</li>\r\n                                    <li class=\"feature-item\"><strong class=\"feature-title\">Purpose of collection:</strong> Vivamus suscipit tortor eget felis volutpat. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</li>\r\n                                    <li class=\"feature-item\"><strong class=\"feature-title\"> Source of collection: </strong>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet</li>\r\n                                    <li class=\"feature-item\"><strong class=\"feature-title\">Disclosure for a business purpose:</strong>  Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, leo eget malesuada. <a href=\"#\" class=\"feature-link\">http://www.networkadvertising.org/understanding-online-advertising/how-does-it-work</a>. non nulla sit amet nisl tempus quis ac lectus.</li>\r\n                                </ul>\r\n                            </div>\r\n                            <div class=\"single-privacy-policy\">\r\n                                <h3 class=\"privacy-policy-title-small\">Using Personal Information</h3>\r\n                                <p class=\"privacy-policy-text\">Cras ultricies ligula sed magna dictum porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Donec sollicitudin molestie malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus suscipit tortor eget felis porttitor volutpat.</p>\r\n                                <ul class=\"privacy-feature\">\r\n                                    <li class=\"feature-item\">Dolor amet consectetur adipiscing elit eiusmod tempor incididunt labore magna</li>\r\n                                    <li class=\"feature-item\">With years of experience in the website design and development industry ThemeZaa pride</li>\r\n                                    <li class=\"feature-item\">The background of several of  the company was the ground for a versatile collection.</li>\r\n                                    <li class=\"feature-item\">Staffy founder creative director had the idea to design where comfort fashion</li>\r\n                                    <li class=\"feature-item\">Generations of shoemaking within the company was the ground versatile</li>\r\n                                </ul>\r\n                            </div>\r\n                            <div class=\"single-privacy-policy\">\r\n                                <h3 class=\"privacy-policy-title-small\">Automatic decision-making</h3>\r\n                                <p class=\"privacy-policy-text\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec sollicitudin molestie malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Curabitur aliquet quam id dui posuere blandit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla porttitor accumsan tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur arcu erat, accumsan id imperdiet et, porttitorullamcorper sit amet ligula. Donec rutrum congue leo eget malesuada. Pellentesque in ipsum id orci porta dapibus. Nulla porttitor accumsan tincidunt. Sed porttitor lectus nibh.</p>\r\n                            </div>\r\n                            <div class=\"single-privacy-policy\">\r\n                                <h3 class=\"privacy-policy-title\">Necessary for the Functioning the Store</h3>\r\n                                <p class=\"privacy-policy-text\">Proin eget tortor risus. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Donec rutrum congue  eget malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Donec rutrum congue leo eget malesuada. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula .</p>\r\n                                <ul class=\"privacy-feature\">\r\n                                    <li class=\"feature-item\"><strong class=\"feature-title\">Sharing Personal Information:</strong>  Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. <a href=\"#\" class=\"feature-link\">https://policies.google.com/privacy?hl=en</a>  consectetur adipiscing rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur</li>\r\n                                    <li class=\"feature-item\"><strong class=\"feature-title\">Automatic decision-making:</strong> Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, leo eget malesuada. <a href=\"#\" class=\"feature-link\">http://www.networkadvertising.org/understanding-online-advertising/how-does-it-work.</a> non nulla sit amet nisl </li>\r\n                                    <li class=\"feature-item\"><strong class=\"feature-title\">Customer support information:</strong> Cras ultricies ligula sed magna dictum porta. Donec sollicitudin molestie malesuada Vestibulum </li>\r\n                                    <li class=\"feature-item\"><strong class=\"feature-title\">Source of collection:</strong> Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n                                </ul>\r\n                            </div>', '<div class=\"single-privacy-policy\">\r\n                                <h3 class=\"privacy-policy-title\">جمع المعلومات الشخصية</h3>\r\n                                <p class=\"privacy-policy-text\">ولذا فهو بحاجة إلى ابتسامة بديلة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. حتى يتم توحيد شكل القرض. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. حتى يحتاج الأسد إلى التوحيد. الجميع يريد أن يدخر ، مع استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</p>\r\n                                <ul class=\"privacy-feature\">\r\n                                    <li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li>\r\n                                    <li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li>\r\n                                    <li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li>\r\n                                    <li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li>\r\n                                </ul>\r\n                            </div>\r\n                            <div class=\"single-privacy-policy\">\r\n                                <h3 class=\"privacy-policy-title\">جمع المعلومات الشخصية</h3><h3 class=\"privacy-policy-title-small\"><p class=\"privacy-policy-text\" style=\"font-size: 16px;\">ولذا فهو بحاجة إلى ابتسامة بديلة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. حتى يتم توحيد شكل القرض. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. حتى يحتاج الأسد إلى التوحيد. الجميع يريد أن يدخر ، مع استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</p><ul class=\"privacy-feature\" style=\"font-size: 16px;\"><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</li></ul></h3><ul class=\"privacy-feature\">\r\n                                </ul>\r\n                            </div>\r\n                            <div class=\"single-privacy-policy\">\r\n                                <h3 class=\"privacy-policy-title-small\">اتخاذ القرار التلقائي</h3>\r\n                                <p class=\"privacy-policy-text\">لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. لكن العبارة اختارت الكرة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. ولذا فهو بحاجة إلى ابتسامة بديلة. حتى الفايكنج يعيش لرفع الجلاد يحتاج عطلة نهاية الأسبوع عبارة غاز. ولذا فهو بحاجة إلى ابتسامة بديلة. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. لا توجد طبقة مبتكرة لإيقافها. الألم نفسه هو الحب ، نظام التخزين الرئيسي. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. كان القوس ، طبقة هذا التمويل حتى يحتاج الأسد إلى التوحيد. باسم هذا شركة مصفاة نفط عمان لا توجد طبقة مبتكرة لإيقافها. لكن العبارة اختارت الكرة.</p>\r\n                            </div>\r\n                            <div class=\"single-privacy-policy\">\r\n                                <h3 class=\"privacy-policy-title-small\">اتخاذ القرار التلقائي</h3><h3 class=\"privacy-policy-title\"><p class=\"privacy-policy-text\" style=\"font-size: 16px;\">لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. لكن العبارة اختارت الكرة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. ولذا فهو بحاجة إلى ابتسامة بديلة. حتى الفايكنج يعيش لرفع الجلاد يحتاج عطلة نهاية الأسبوع عبارة غاز. ولذا فهو بحاجة إلى ابتسامة بديلة. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. لا توجد طبقة مبتكرة لإيقافها. الألم نفسه هو الحب ، نظام التخزين الرئيسي. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. كان القوس ، طبقة هذا التمويل حتى يحتاج الأسد إلى التوحيد. باسم هذا شركة مصفاة نفط عمان لا توجد طبقة مبتكرة لإيقافها. لكن العبارة اختارت الكرة.</p></h3>\r\n                                <ul class=\"privacy-feature\">\r\n                                    <li class=\"feature-item\">ستمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</li>\r\n                                </ul>\r\n                            </div>', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(3, 'return_policy', '<div class=\"single-refund-policy\">\r\n                                <h3 class=\"refund-policy-title\">Our Refund policy</h3>\r\n                                <p class=\"refund-policy-text\">We have a 30-day return policy, which means you have 30 days after receiving your item to request a return. To be eligible for a return, your item must be in the same condition that you received it, unworn or unused, with tags, and in its original packaging. You’ll also need the receipt or proof of purchase.  To start a return, you can contact us at <a class=\"refund-policy-link\" href=\"#\">hi@zainikcom.com</a> If your return is accepted, we’ll send you a return shipping label, as well as instructions on how and where to send your package. Items sent back to us without first requesting a return will not be accepted. You can always contact us for any return question at <a class=\"refund-policy-link\" href=\"#\">hi@zainikcom.com</a></p>\r\n                            </div>\r\n                            <div class=\"single-refund-policy\">\r\n                                <h3 class=\"refund-policy-title\">Exceptions / Non-returnable items</h3>\r\n                                <p class=\"refund-policy-text\">Curabitur aliquet quam id dui posuere blandit. Nulla porttitor accumsan tincidunt. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Proin </p>\r\n                                <p class=\"refund-policy-text\">Pellentesque in ipsum id orci porta dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ac diam sit amet eget felis porttitor volutpat. Nulla quis lorem ut libero malesuada feugiat.</p>\r\n                            </div>\r\n                            <div class=\"single-refund-policy\">\r\n                                <h3 class=\"refund-policy-title\">Exchanges</h3>\r\n                                <p class=\"refund-policy-text\">Cras ultricies ligula sed magna dictum porta. Vivamus suscipit tortor eget felis porttitor volutpat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\r\n                            </div>\r\n                            <div class=\"single-refund-policy\">\r\n                                <h3 class=\"refund-policy-title\">Damages and issues</h3>\r\n                                <p class=\"refund-policy-text\">Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p>\r\n                            </div>\r\n                            <div class=\"single-refund-policy\">\r\n                                <h3 class=\"refund-policy-title\">Refunds</h3>\r\n                                <p class=\"refund-policy-text\">Nulla quis lorem ut libero malesuada feugiat. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n                            </div>', '<div class=\"single-refund-policy\">\r\n                                <h3 class=\"privacy-policy-title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 400; line-height: 1.2; font-size: 1.75rem;\">جمع المعلومات الشخصية</h3><h3 class=\"refund-policy-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><p class=\"privacy-policy-text\">ولذا فهو بحاجة إلى ابتسامة بديلة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. حتى يتم توحيد شكل القرض. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. حتى يحتاج الأسد إلى التوحيد. الجميع يريد أن يدخر ، مع استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</p><ul class=\"privacy-feature\"><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li></ul></div></h3><h3 class=\"privacy-policy-title\">جمع المعلومات الشخصية</h3><h3 class=\"privacy-policy-title-small\"><p class=\"privacy-policy-text\" style=\"font-size: 16px;\">ولذا فهو بحاجة إلى ابتسامة بديلة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. حتى يتم توحيد شكل القرض. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. حتى يحتاج الأسد إلى التوحيد. الجميع يريد أن يدخر ، مع استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</p><ul class=\"privacy-feature\" style=\"font-size: 16px;\"><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</li></ul></h3><h3 class=\"refund-policy-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><ul class=\"privacy-feature\"></ul></div></h3><h3 class=\"privacy-policy-title-small\">اتخاذ القرار التلقائي</h3><h3 class=\"refund-policy-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><p class=\"privacy-policy-text\">لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. لكن العبارة اختارت الكرة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. ولذا فهو بحاجة إلى ابتسامة بديلة. حتى الفايكنج يعيش لرفع الجلاد يحتاج عطلة نهاية الأسبوع عبارة غاز. ولذا فهو بحاجة إلى ابتسامة بديلة. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. لا توجد طبقة مبتكرة لإيقافها. الألم نفسه هو الحب ، نظام التخزين الرئيسي. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. كان القوس ، طبقة هذا التمويل حتى يحتاج الأسد إلى التوحيد. باسم هذا شركة مصفاة نفط عمان لا توجد طبقة مبتكرة لإيقافها. لكن العبارة اختارت الكرة.</p></div></h3><h3 class=\"privacy-policy-title-small\">اتخاذ القرار التلقائي</h3><h3 class=\"privacy-policy-title\"><p class=\"privacy-policy-text\" style=\"font-size: 16px;\">لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. لكن العبارة اختارت الكرة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. ولذا فهو بحاجة إلى ابتسامة بديلة. حتى الفايكنج يعيش لرفع الجلاد يحتاج عطلة نهاية الأسبوع عبارة غاز. ولذا فهو بحاجة إلى ابتسامة بديلة. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. لا توجد طبقة مبتكرة لإيقافها. الألم نفسه هو الحب ، نظام التخزين الرئيسي. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. كان القوس ، طبقة هذا التمويل حتى يحتاج الأسد إلى التوحيد. باسم هذا شركة مصفاة نفط عمان لا توجد طبقة مبتكرة لإيقافها. لكن العبارة اختارت الكرة.</p></h3><h3 class=\"refund-policy-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><ul class=\"privacy-feature\"><li class=\"feature-item\">ستمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</li></ul></div></h3></div><div class=\"single-refund-policy\">\r\n                            </div>', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(4, 'shipping_return', '<div class=\"single-shipping-return\">\r\n                                <h3 class=\"shipping-return-title\">Returns</h3>\r\n                                <p class=\"shipping-return-text\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Cras ultricies ligula sed magna dictum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Donec rutrum congue leo eget malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur arcu erat, elit, eget tincidunt nibh pulvinar a. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n                            </div>\r\n                            <div class=\"single-shipping-return\">\r\n                                <h3 class=\"shipping-return-title\">Exchanges</h3>\r\n                                <p class=\"shipping-return-text\">Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Praesent sapien massa, convallis a pellentesque nec,amet quam vehicula elementum sed sit amet dui. Donec sollicitudin molestie malesuada. Donec rutrum congue leo eget malesuada. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec rutrum congue leo eget malesuada.</p>\r\n                            </div>\r\n                            <div class=\"single-shipping-return\">\r\n                                <h3 class=\"shipping-return-title\">Exchanges (if applicable)</h3>\r\n                                <p class=\"shipping-return-text\">Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p>\r\n                            </div>\r\n                            <div class=\"single-shipping-return\">\r\n                                <h3 class=\"shipping-return-title\">Refunds</h3>\r\n                                <p class=\"shipping-return-text\">Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Proin eget tortor risus. Donec sollicitudin molestie malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Sed porttitor lectus nibh. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh. Donec rutrum congue leo eget malesuada. Donec sollicitudin molestie malesuada. Nulla porttitor accumsan tincidunt. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada. aliquet elit, eget tincidunt nibh pulvinar a. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Sed porttitor lectus nibh. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh. Donec rutrum </p>\r\n                            </div>', '<div class=\"single-shipping-return\">\r\n                                <h3 class=\"privacy-policy-title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 400; line-height: 1.2; font-size: 1.75rem;\">جمع المعلومات الشخصية</h3><h3 class=\"shipping-return-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><p class=\"privacy-policy-text\">ولذا فهو بحاجة إلى ابتسامة بديلة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. حتى يتم توحيد شكل القرض. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. حتى يحتاج الأسد إلى التوحيد. الجميع يريد أن يدخر ، مع استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</p><ul class=\"privacy-feature\"><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li></ul></div></h3><h3 class=\"privacy-policy-title\">جمع المعلومات الشخصية</h3><h3 class=\"privacy-policy-title-small\"><p class=\"privacy-policy-text\" style=\"font-size: 16px;\">ولذا فهو بحاجة إلى ابتسامة بديلة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. حتى يتم توحيد شكل القرض. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. حتى يحتاج الأسد إلى التوحيد. الجميع يريد أن يدخر ، مع استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</p><ul class=\"privacy-feature\" style=\"font-size: 16px;\"><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</li></ul></h3><h3 class=\"shipping-return-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><ul class=\"privacy-feature\"></ul></div></h3><h3 class=\"privacy-policy-title-small\">اتخاذ القرار التلقائي</h3><h3 class=\"shipping-return-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><p class=\"privacy-policy-text\">لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. لكن العبارة اختارت الكرة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. ولذا فهو بحاجة إلى ابتسامة بديلة. حتى الفايكنج يعيش لرفع الجلاد يحتاج عطلة نهاية الأسبوع عبارة غاز. ولذا فهو بحاجة إلى ابتسامة بديلة. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. لا توجد طبقة مبتكرة لإيقافها. الألم نفسه هو الحب ، نظام التخزين الرئيسي. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. كان القوس ، طبقة هذا التمويل حتى يحتاج الأسد إلى التوحيد. باسم هذا شركة مصفاة نفط عمان لا توجد طبقة مبتكرة لإيقافها. لكن العبارة اختارت الكرة.</p></div></h3><h3 class=\"privacy-policy-title-small\">اتخاذ القرار التلقائي</h3><h3 class=\"privacy-policy-title\"><p class=\"privacy-policy-text\" style=\"font-size: 16px;\">لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. لكن العبارة اختارت الكرة. ليس هناك وقت للاعبين للجلوس في حب الوادي والسرير. ولذا فهو بحاجة إلى ابتسامة بديلة. حتى الفايكنج يعيش لرفع الجلاد يحتاج عطلة نهاية الأسبوع عبارة غاز. ولذا فهو بحاجة إلى ابتسامة بديلة. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. قبل الطبقة الأولى من الحداد وألم الانتقام كان يكمن في السرير ؛ طالما أن المؤلف لا يرغب في أن يحب شخص ما أو شيء ما ، يمكن أن يُحب الدببة في جميع أنحاء العالم. لا توجد طبقة مبتكرة لإيقافها. الألم نفسه هو الحب ، نظام التخزين الرئيسي. لقد كان قوسًا ، وطبقة من هذا التمويل ، وعبارة في سيم. كان القوس ، طبقة هذا التمويل حتى يحتاج الأسد إلى التوحيد. باسم هذا شركة مصفاة نفط عمان لا توجد طبقة مبتكرة لإيقافها. لكن العبارة اختارت الكرة.</p></h3><h3 class=\"shipping-return-title\"><div class=\"single-privacy-policy\" style=\"font-size: 16px;\"><ul class=\"privacy-feature\"><li class=\"feature-item\">ستمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض<br></li><li class=\"feature-item\">استمرار السعر ، هذا هو العنصر. نحن نعيش بسحر عظيم ، لكن الشيء الرئيسي هو حاجة التنورة ، الوادي على الأرض</li></ul></div></h3></div><div class=\"single-shipping-return\">\r\n                            </div>', '2023-01-02 06:34:12', '2023-01-02 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) NOT NULL,
  `charge` double(8,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`id`, `country`, `charge`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pakistan', 10.00, 1, '2023-11-29 11:17:49', '2023-12-04 19:53:40'),
(2, 'Algeria', 900.00, 1, '2023-12-04 19:59:25', '2023-12-04 20:00:23');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) NOT NULL,
  `question_fr` varchar(191) DEFAULT NULL,
  `answer` text NOT NULL,
  `answer_fr` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `question_fr`, `answer`, `answer_fr`, `created_at`, `updated_at`) VALUES
(1, 'What shipping methods are availbale?', 'هل تشحن دوليا؟', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut blandit risus. Donec mollis nec tellus consequat quam a purus faucibus scelerisque. Mauris ac dui ante. Pellentesque congue porttitor Curabitur vel sem mi. Proin in lobortis ipsum. Aliquam rutrum tempor ex ac rutrum. Maecenas nunc  nulla, placerat at eleifend in, viverra etos sem. Nam sagittis lacus metus, dignissim blandit magna euismod eget. Suspendisse a nisl lacus. Phasellus eget augue tincidunt, sollicitudin lectus sed, convallis desto. Pellentesque vitae dui lacinia, venenatis erat sit amet, fringilla felis. Nullam maximus nisi nec mi', 'الألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتة', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(2, 'How long will it take to get my package to recive?', 'هل تشحن دوليا؟', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut blandit risus. Donec mollis nec tellus consequat quam a purus faucibus scelerisque. Mauris ac dui ante. Pellentesque congue porttitor Curabitur vel sem mi. Proin in lobortis ipsum. Aliquam rutrum tempor ex ac rutrum. Maecenas nunc  nulla, placerat at eleifend in, viverra etos sem. Nam sagittis lacus metus, dignissim blandit magna euismod eget. Suspendisse a nisl lacus. Phasellus eget augue tincidunt, sollicitudin lectus sed, convallis desto. Pellentesque vitae dui lacinia, venenatis erat sit amet, fringilla felis. Nullam maximus nisi nec mi', 'الألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتة', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(3, 'Do you ship internationally?', 'هل تشحن دوليا؟', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut blandit risus. Donec mollis nec tellus consequat quam a purus faucibus scelerisque. Mauris ac dui ante. Pellentesque congue porttitor Curabitur vel sem mi. Proin in lobortis ipsum. Aliquam rutrum tempor ex ac rutrum. Maecenas nunc  nulla, placerat at eleifend in, viverra etos sem. Nam sagittis lacus metus, dignissim blandit magna euismod eget. Suspendisse a nisl lacus. Phasellus eget augue tincidunt, sollicitudin lectus sed, convallis desto. Pellentesque vitae dui lacinia, venenatis erat sit amet, fringilla felis. Nullam maximus nisi nec mi', 'الألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتة', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(4, 'What payment methods are accepted?', 'هل تشحن دوليا؟', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut blandit risus. Donec mollis nec tellus consequat quam a purus faucibus scelerisque. Mauris ac dui ante. Pellentesque congue porttitor Curabitur vel sem mi. Proin in lobortis ipsum. Aliquam rutrum tempor ex ac rutrum. Maecenas nunc  nulla, placerat at eleifend in, viverra etos sem. Nam sagittis lacus metus, dignissim blandit magna euismod eget. Suspendisse a nisl lacus. Phasellus eget augue tincidunt, sollicitudin lectus sed, convallis desto. Pellentesque vitae dui lacinia, venenatis erat sit amet, fringilla felis. Nullam maximus nisi nec mi', 'الألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتة', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(5, 'Is buying on-line safe?', 'هل تشحن دوليا؟', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut blandit risus. Donec mollis nec tellus consequat quam a purus faucibus scelerisque. Mauris ac dui ante. Pellentesque congue porttitor Curabitur vel sem mi. Proin in lobortis ipsum. Aliquam rutrum tempor ex ac rutrum. Maecenas nunc  nulla, placerat at eleifend in, viverra etos sem. Nam sagittis lacus metus, dignissim blandit magna euismod eget. Suspendisse a nisl lacus. Phasellus eget augue tincidunt, sollicitudin lectus sed, convallis desto. Pellentesque vitae dui lacinia, venenatis erat sit amet, fringilla felis. Nullam maximus nisi nec mi', 'الألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتةالألم نفسه هو الحب ، نظام التخزين الرئيسي. أنت تحب الابتسامة الأكثر إثارة. وحتى ذلك الحين ، لا تنجم نعومة الأرض عما هو نقي من فكي الشوكولاتة', '2023-01-02 06:34:12', '2023-01-02 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `footer_information`
--

CREATE TABLE `footer_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Logo` varchar(191) NOT NULL,
  `Street_Address` text NOT NULL,
  `Contact` text NOT NULL,
  `Email` text NOT NULL,
  `News_Letter` text NOT NULL,
  `Accepts` text NOT NULL,
  `Design_Developed` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_information`
--

INSERT INTO `footer_information` (`id`, `Logo`, `Street_Address`, `Contact`, `Email`, `News_Letter`, `Accepts`, `Design_Developed`, `created_at`, `updated_at`) VALUES
(1, 'footer-logo.png', '<p class=\"address-text\">685 Market Street <br /> San Francisco, CA 94105, <br />United States</p>', ' <p class=\"contact\">Call us: 1.800.000.6690</p>', ' <p class=\"contact\">Email: support@zainikthemes.com</p>', '<p class=\"newsletter-text\">Receive our latest updates about our <br /> products and promotions.</p>', 'accepts-image.png', '<p class=\"copyright-text\">Designed And Developed By Team <a class=\"brand-name\" href=\"#\">Zainiktheme</a> Digital Agency @2021</p>', '2023-01-02 06:34:12', '2023-01-02 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Title` varchar(191) DEFAULT NULL,
  `Logo` varchar(191) DEFAULT NULL,
  `Favicon` varchar(191) DEFAULT NULL,
  `MetaDescription` text DEFAULT NULL,
  `MetaKeywords` text DEFAULT NULL,
  `MetaAuthor` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `Title`, `Logo`, `Favicon`, `MetaDescription`, `MetaKeywords`, `MetaAuthor`, `created_at`, `updated_at`) VALUES
(1, 'Zairito - Ecommerce', 'zairito.png', 'favicon.png', 'Zairito - Ecommerce', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', 'Zairito', '2023-01-02 06:34:11', '2023-01-02 06:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `homepages`
--

CREATE TABLE `homepages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Location` varchar(191) NOT NULL,
  `en_Title` varchar(191) NOT NULL,
  `en_Description_One` text NOT NULL,
  `en_Description_Two` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `fr_Title` varchar(191) NOT NULL,
  `fr_Description_One` text NOT NULL,
  `fr_Description_Two` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepages`
--

INSERT INTO `homepages` (`id`, `Location`, `en_Title`, `en_Description_One`, `en_Description_Two`, `image`, `fr_Title`, `fr_Description_One`, `fr_Description_Two`, `created_at`, `updated_at`) VALUES
(1, 'many_goods', 'Many Goods', 'Popular Categories', NULL, NULL, 'العديد من السلع', 'الفئات الشعبية', NULL, '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(2, 'products', 'New Products', 'Products', NULL, NULL, 'منتجات جديدة', 'منتجات', NULL, '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(3, 'about_us', 'About Us', '<p>The Story Of Borning <br> Company Zairito</p>', NULL, '650c7c0985c6f1695317001.png', 'معلومات عنا', '<div>قصة بورنينج</div><div>شركة زايريتو</div>', NULL, '2023-01-02 06:34:12', '2023-09-21 17:23:24'),
(4, 'popular_products', 'Popular Products', 'Trending Products', NULL, NULL, 'المنتجات الشعبية', 'تتجه المنتجات', NULL, '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(5, 'blogspot', 'Blogspot', 'TNews From Our Blog', NULL, NULL, 'بلوغسبوت', 'أخبار من مدونتنا', NULL, '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(6, 'image_gallery', 'image gallery', 'Image Gallery To Zairito For Making Better Online Shopping Experience', NULL, NULL, 'معرض الصور', 'معرض الصور لتقديم تجربة تسوق أفضل عبر الإنترنت', NULL, '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(7, 'testimonial', 'Testimonial', 'What People Are <br />Saying About Oursalve', '<p>Praesent sapien massa, convallis a pellentesque nec, egestas\r\n                    Vivamus magna justo, lacinia eget consectetur sed</p>', NULL, 'شهادة', '<div>من هم الناس</div><div>نقول عن أنفسنا</div>', '<p>كتلة الحاضر حكيمة وليست من وادي القناص</p>', '2023-01-02 06:34:12', '2023-01-02 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `image_galleries`
--

CREATE TABLE `image_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Image` varchar(191) DEFAULT NULL,
  `theme` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_galleries`
--

INSERT INTO `image_galleries` (`id`, `Image`, `theme`, `created_at`, `updated_at`) VALUES
(1, 'gallery-one-1.png', 1, '2023-01-02 06:34:11', '2023-09-21 17:35:14'),
(2, 'gallery-one-2.png', 1, '2023-01-02 06:34:11', '2023-09-21 17:48:57'),
(3, 'gallery-one-3.png', 1, '2023-01-02 06:34:11', '2023-09-21 17:35:50'),
(4, 'gallery-one-4.png', 1, '2023-01-02 06:34:11', '2023-09-21 17:46:34'),
(5, 'gallery-one-5.png', 1, '2023-01-02 06:34:11', '2023-09-21 17:53:40'),
(6, 'gallery-one-6.png', 1, '2023-01-02 06:34:11', '2023-09-21 17:40:21'),
(7, 'gallery-one-7.png', 1, '2023-01-02 06:34:11', '2023-09-21 17:56:27'),
(8, 'gallery-two-1.jpg', 2, '2023-01-02 06:34:11', NULL),
(9, 'gallery-two-2.jpg', 2, '2023-01-02 06:34:11', NULL),
(10, 'gallery-two-3.jpg', 2, '2023-01-02 06:34:11', NULL),
(11, 'gallery-two-4.jpg', 2, '2023-01-02 06:34:11', NULL),
(12, 'gallery-two-5.jpg', 2, '2023-01-02 06:34:11', NULL),
(13, 'gallery-two-6.jpg', 2, '2023-01-02 06:34:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_tags`
--

CREATE TABLE `item_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_tags`
--

INSERT INTO `item_tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'NEW', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(2, 'HOT', '2023-01-02 06:34:11', '2023-01-02 06:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `direction` varchar(191) NOT NULL,
  `locale` varchar(191) NOT NULL,
  `file` varchar(191) NOT NULL,
  `thumb` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `direction`, `locale`, `file`, `thumb`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'ltr', 'en', 'en.json', 'en.png', 1, '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(2, 'Arabic', 'rtl', 'fr', 'fr.json', 'fr.png', 1, '2023-01-02 06:34:10', '2023-01-02 06:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `en_name` varchar(191) NOT NULL,
  `fr_name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `is_static` tinyint(4) NOT NULL DEFAULT 0,
  `url` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `en_name`, `fr_name`, `slug`, `is_static`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'ميزون', 'home', 1, 'http://localhost/Zairito/public', 1, '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(2, 'About Us', 'يقترح', 'about-us', 1, 'http://localhost/Zairito/public/about-us', 1, '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(3, 'Blog', 'مقالات', 'blog', 1, 'http://localhost/Zairito/public/blog', 1, '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(4, 'Contact', 'اتصل', 'contact', 1, 'http://localhost/Zairito/public/contact-us', 1, '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(5, 'Shop', 'محل', 'shop', 1, '#', 1, '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(6, 'Overview', 'ملخص', NULL, 0, 'http://zaaminn.com', 1, '2023-01-02 06:34:12', '2023-10-18 22:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_09_121846_create_sliders_table', 1),
(6, '2021_12_10_093039_create_advertises_table', 1),
(7, '2021_12_10_115419_create_subscribes_table', 1),
(8, '2021_12_10_130647_create_contactuses_table', 1),
(9, '2021_12_11_044026_create_general_settings_table', 1),
(10, '2021_12_11_055316_create_blogs_table', 1),
(11, '2021_12_11_064014_create_tags_table', 1),
(12, '2021_12_11_085814_create_categories_table', 1),
(13, '2021_12_13_053434_create_brands_table', 1),
(14, '2021_12_14_054525_create_image_galleries_table', 1),
(15, '2021_12_17_162217_create_blog_comments_table', 1),
(16, '2021_12_18_114630_create_products_table', 1),
(17, '2021_12_21_063547_create_sizes_table', 1),
(18, '2021_12_21_063604_create_colors_table', 1),
(19, '2021_12_21_112441_create_size_product_table', 1),
(20, '2021_12_21_112607_create_color_product_table', 1),
(21, '2021_12_22_055720_create_product_tags_table', 1),
(22, '2021_12_28_064913_create_cutomer_services_table', 1),
(23, '2021_12_28_093443_create_company_stories_table', 1),
(24, '2021_12_28_112636_create_testimonials_table', 1),
(25, '2021_12_29_095224_create_admins_table', 1),
(26, '2021_12_29_121919_create_wishlists_table', 1),
(27, '2021_12_30_053914_create_compare_lists_table', 1),
(28, '2021_12_31_135900_create_coupons_table', 1),
(29, '2022_01_02_093244_create_billings_table', 1),
(30, '2022_01_02_093245_create_shippings_table', 1),
(31, '2022_01_02_093501_create_orders_table', 1),
(32, '2022_01_02_093503_create_order_details_table', 1),
(33, '2022_01_12_062951_create_homepages_table', 1),
(34, '2022_01_12_075047_create_about_us_pages_table', 1),
(35, '2022_01_12_131110_create_social_links_table', 1),
(36, '2022_01_13_062857_create_footer_information_table', 1),
(37, '2022_01_15_071424_create_settings_table', 1),
(38, '2022_01_15_100153_create_currencies_table', 1),
(39, '2022_01_18_135821_create_payment_platforms_table', 1),
(40, '2022_02_02_105940_create_product_reviews_table', 1),
(41, '2022_02_07_132905_create_faqs_table', 1),
(42, '2022_02_11_104412_create_product_tag_lists_table', 1),
(43, '2022_02_12_053228_create_item_tags_table', 1),
(44, '2022_03_23_103714_add_digital_link_to_products', 1),
(45, '2022_03_25_110037_add_slug_to_payment_platforms', 1),
(46, '2022_03_28_073649_add_txn_to_orders', 1),
(47, '2022_03_29_085050_add_biil_shipp_to_orders', 1),
(48, '2022_03_30_054051_create_pages_table', 1),
(49, '2022_03_30_092448_create_menus_table', 1),
(50, '2022_03_30_093035_create_sub_menus_table', 1),
(51, '2022_03_31_111150_create_languages_table', 1),
(52, '2022_04_02_104941_create_taxes_table', 1),
(53, '2022_04_04_063654_create_delivery_charges_table', 1),
(54, '2022_04_05_085525_add_google_id_to_users', 1),
(55, '2022_04_09_045107_create_seo_settings_table', 1),
(56, '2022_04_14_071517_create_permission_tables', 1),
(57, '2022_04_20_070253_create_sitemaps_table', 1),
(58, '2022_04_20_101813_add_question_fr_and_answer_fr_to_faqs', 1),
(59, '2022_04_21_103242_add_status_to_users', 1),
(60, '2022_05_19_072147_create_special_offers_table', 1),
(61, '2022_06_20_110213_add_position_to_currencies', 1),
(62, '2022_06_27_063650_create_banners_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 48),
(2, 'App\\Models\\User', 41);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Order_Number` varchar(191) DEFAULT NULL,
  `User_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `Billing_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `Shipping_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `Coupon_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `Coupon_Amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `Delivery_Charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `Sub_Total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `Tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `Grand_Total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `Is_Free_Delivery` tinyint(4) NOT NULL DEFAULT 0,
  `Is_Order_Successful` tinyint(4) NOT NULL DEFAULT 0,
  `Is_Order_Completed` tinyint(4) NOT NULL DEFAULT 0,
  `Payment_Method` varchar(191) NOT NULL DEFAULT '5',
  `Payment_Status` tinyint(4) NOT NULL DEFAULT 5,
  `Order_Status` tinyint(4) NOT NULL DEFAULT 1,
  `txn` varchar(191) DEFAULT NULL,
  `Delivery_At` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remaining_amount` decimal(15,0) NOT NULL,
  `charged_amount` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Order_Id` bigint(20) UNSIGNED NOT NULL,
  `Product_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `Product_Name` varchar(191) DEFAULT NULL,
  `Image` varchar(191) DEFAULT NULL,
  `Size` varchar(191) DEFAULT NULL,
  `Color` varchar(191) DEFAULT NULL,
  `Price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `Quantity` decimal(8,2) NOT NULL DEFAULT 0.00,
  `Total_Price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `en_title` varchar(191) NOT NULL,
  `en_description` text NOT NULL,
  `fr_title` varchar(191) NOT NULL,
  `fr_description` text NOT NULL,
  `slug` text NOT NULL,
  `meta_description` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('zaaminnpk@gmail.com', '03gYxIWOkhb4u3KDxsfCzFIeb7f71Tn47xehIbQwCBkM1buf8fvrRbg3Pkf92K2X', '2024-01-15 07:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `payment_platforms`
--

CREATE TABLE `payment_platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_platforms`
--

INSERT INTO `payment_platforms` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Bank', 'bank', 'bank.png', 1, '2023-01-02 06:34:12', '2023-01-02 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'category-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(2, 'category-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(3, 'category-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(4, 'category-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(5, 'brand-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(6, 'brand-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(7, 'brand-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(8, 'brand-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(9, 'product-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(10, 'product-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(11, 'product-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(12, 'product-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(13, 'order-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(14, 'order-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(15, 'order-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(16, 'order-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(17, 'transaction-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(18, 'transaction-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(19, 'transaction-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(20, 'transaction-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(21, 'tax-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(22, 'tax-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(23, 'tax-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(24, 'tax-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(25, 'delivery-charge-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(26, 'delivery-charge-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(27, 'delivery-charge-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(28, 'delivery-charge-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(29, 'currency-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(30, 'currency-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(31, 'currency-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(32, 'currency-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(33, 'coupon-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(34, 'coupon-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(35, 'coupon-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(36, 'coupon-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(37, 'slider-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(38, 'slider-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(39, 'slider-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(40, 'slider-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(41, 'banner-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(42, 'banner-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(43, 'banner-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(44, 'banner-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(45, 'advertise-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(46, 'advertise-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(47, 'advertise-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(48, 'advertise-delete', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(49, 'blog-list', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(50, 'blog-create', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(51, 'blog-edit', 'web', '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(52, 'blog-delete', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(53, 'crm-list', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(54, 'crm-create', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(55, 'crm-edit', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(56, 'crm-delete', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(57, 'user-list', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(58, 'user-create', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(59, 'user-edit', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(60, 'user-delete', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(61, 'cms-list', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(62, 'cms-create', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(63, 'cms-edit', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(64, 'cms-delete', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(65, 'menu-list', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(66, 'menu-create', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(67, 'menu-edit', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(68, 'menu-delete', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(69, 'payment-gateway-list', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(70, 'payment-gateway-create', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(71, 'payment-gateway-edit', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(72, 'payment-gateway-delete', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Category_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `Brand_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `storage` varchar(100) DEFAULT NULL,
  `ram` varchar(100) DEFAULT NULL,
  `bodyCondition` char(1) DEFAULT NULL,
  `is_true_tone` tinyint(1) DEFAULT NULL,
  `iphone_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`iphone_message`)),
  `battery_status` varchar(100) DEFAULT NULL,
  `screen_glass` varchar(100) DEFAULT NULL,
  `lcd_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`lcd_condition`)),
  `WorkingCondition` varchar(100) DEFAULT NULL,
  `issues` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`issues`)),
  `is_carrier_lock` tinyint(1) DEFAULT NULL,
  `is_pta_official` tinyint(1) DEFAULT NULL,
  `is_sim_working` tinyint(1) DEFAULT NULL,
  `sim` varchar(100) DEFAULT NULL,
  `is_official_warranty` tinyint(1) DEFAULT NULL,
  `warrantyMonths` int(11) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `en_Product_Name` varchar(191) NOT NULL,
  `fr_Product_Name` varchar(191) DEFAULT NULL,
  `en_Product_Slug` varchar(191) NOT NULL,
  `fr_Product_Slug` varchar(191) DEFAULT NULL,
  `en_About` longtext NOT NULL,
  `fr_About` longtext DEFAULT NULL,
  `ItemTag` varchar(191) DEFAULT NULL,
  `Price` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Discount_Price` decimal(8,2) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `Sold` decimal(8,2) NOT NULL DEFAULT 0.00,
  `Primary_Image` varchar(191) NOT NULL,
  `Image2` varchar(191) DEFAULT NULL,
  `Image3` varchar(191) DEFAULT NULL,
  `Image4` varchar(191) DEFAULT NULL,
  `Image5` varchar(191) DEFAULT NULL,
  `digital_type` enum('file','link') DEFAULT NULL,
  `digital_link` text DEFAULT NULL,
  `digital_file` text DEFAULT NULL,
  `license_name` text DEFAULT NULL,
  `license_key` text DEFAULT NULL,
  `affiliate_link` text DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `Featured_Product` tinyint(1) NOT NULL DEFAULT 0,
  `Best_Selling` tinyint(1) NOT NULL DEFAULT 0,
  `New_Arrival` tinyint(1) NOT NULL DEFAULT 0,
  `On_Sale` tinyint(1) NOT NULL DEFAULT 1,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `en_Description` longtext NOT NULL,
  `fr_Description` longtext DEFAULT NULL,
  `en_ShippingReturn` longtext NOT NULL,
  `fr_ShippingReturn` longtext DEFAULT NULL,
  `en_AdditionalInformation` longtext NOT NULL,
  `fr_AdditionalInformation` longtext DEFAULT NULL,
  `Voucher` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `feedback` text NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tag_lists`
--

CREATE TABLE `product_tag_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag_lists`
--

INSERT INTO `product_tag_lists` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ELLA - HALOTHEMES', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(2, 'HOT - COLLECTION', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(3, 'NEW - COLLECTION', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(4, 'ELLA - CALTOUS', '2023-01-02 06:34:11', '2023-01-02 06:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(2, 'xyz', 'web', '2024-02-12 09:37:44', '2024-02-12 09:37:44'),
(3, 'ali', 'web', '2024-02-12 09:49:13', '2024-02-12 09:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seller_products`
--

CREATE TABLE `seller_products` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(18) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `Price` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sold` varchar(255) DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `discount_price` int(100) DEFAULT NULL,
  `en_Product_Slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_products`
--

INSERT INTO `seller_products` (`id`, `user_id`, `title`, `model`, `mobile_number`, `email`, `address`, `Price`, `created_at`, `updated_at`, `sold`, `image`, `discount_price`, `en_Product_Slug`) VALUES
(2, 1, 'iphone', '2023-10-03', '03124585479', 'asatg@gmail.com', 'asaer', '1240', '2023-10-05 11:58:28', '2023-10-20 13:14:22', '0', 'assets/products/1697807662-10-pro.jpg', 255, 'iphone'),
(6, 1, 'iphone', '2023-10-20', '030112341234', '123@xyz.com', 'islamabad', '1000', '2023-10-19 19:49:42', '2023-10-20 13:15:45', '0', 'assets/products/1697807745-11.jpg', NULL, 'iphone'),
(7, 1, 'iphone', '2023-10-20', '030112341234', '123@xyz.com', 'islamabad', '1000', '2023-10-19 19:49:43', '2023-10-20 13:16:28', '0', 'assets/products/1697807788-galaxy-s21-ultra.jpg', NULL, 'iphone'),
(8, 1, 'iphone 14 pro max', '2023-10-28', '030112341234', 'xyz@abc.com', 'islamabad', '10000', '2023-10-19 19:52:50', '2023-10-20 13:17:16', '0', 'assets/products/1697807836-galaxy-s23-ultra.jpg', NULL, 'iphone 14 pro max'),
(9, 19, 'Samsung', '2023-11-26', '03411622166', 'ehtsham3233@gmail.com', 'Pakistan', '2000', '2023-11-25 22:57:15', '2023-11-25 22:57:15', '0', 'assets/products/1700953035-images (11).jpeg', 2000, 'Samsung'),
(10, 22, 'iphone', '2023-11-02', '032187898237', 'tabaraktraders14@yahoo.com', 'Al- Rehmat Center office NO. 507 near Joria Bazar, Karachi, Pakistan', '20', '2023-11-27 11:17:54', '2023-11-27 11:17:54', '0', 'assets/products/1701083874-brick me.PNG', 15, 'iphone'),
(11, 23, 'Iphone', '2023-11-02', '04343434', 'tabaraktraders14@yahoo.com', 'Al- Rehmat Center office NO. 507 near Joria Bazar, Karachi, Pakistan', '50', '2023-11-27 11:38:23', '2023-11-27 11:38:23', '0', 'assets/products/1701085103-brick me.PNG', 45, 'Iphone');

-- --------------------------------------------------------

--
-- Table structure for table `seller_products2`
--

CREATE TABLE `seller_products2` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `storage` varchar(20) DEFAULT NULL,
  `ram` varchar(20) DEFAULT NULL,
  `bodyCondition` char(1) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `img_two` text DEFAULT NULL,
  `img_three` text DEFAULT NULL,
  `img_four` text DEFAULT NULL,
  `img_five` text DEFAULT NULL,
  `is_true_tone` tinyint(1) DEFAULT NULL,
  `iphone_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`iphone_message`)),
  `battery_status` varchar(50) DEFAULT NULL,
  `screen_glass` varchar(50) DEFAULT NULL,
  `lcd_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`lcd_condition`)),
  `WorkingCondition` varchar(50) DEFAULT NULL,
  `issues` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`issues`)),
  `is_carrier_lock` tinyint(1) DEFAULT NULL,
  `is_pta_official` tinyint(1) DEFAULT NULL,
  `is_sim_working` tinyint(1) DEFAULT NULL,
  `sim` varchar(50) DEFAULT NULL,
  `is_official_warranty` tinyint(1) DEFAULT NULL,
  `warrantyMonths` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `number2` varchar(255) DEFAULT NULL,
  `category_id_2` bigint(20) UNSIGNED DEFAULT NULL,
  `companyModel` varchar(255) DEFAULT NULL,
  `partName` varchar(255) DEFAULT NULL,
  `price2` decimal(10,2) DEFAULT NULL,
  `discountPrice` decimal(10,2) DEFAULT NULL,
  `description2` text DEFAULT NULL,
  `is_sold` tinyint(1) DEFAULT 0,
  `is_delete` tinyint(1) DEFAULT 0,
  `is_admin_approval` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_products2`
--

INSERT INTO `seller_products2` (`id`, `user_id`, `city`, `number`, `category_id`, `brand_id`, `model`, `slug`, `color`, `storage`, `ram`, `bodyCondition`, `image`, `img_two`, `img_three`, `img_four`, `img_five`, `is_true_tone`, `iphone_message`, `battery_status`, `screen_glass`, `lcd_condition`, `WorkingCondition`, `issues`, `is_carrier_lock`, `is_pta_official`, `is_sim_working`, `sim`, `is_official_warranty`, `warrantyMonths`, `price`, `description`, `date`, `number2`, `category_id_2`, `companyModel`, `partName`, `price2`, `discountPrice`, `description2`, `is_sold`, `is_delete`, `is_admin_approval`, `created_at`, `updated_at`) VALUES
(2, 36, 'Karachi', '6503232445', 13, 8, '13 Pro Max', NULL, 'Silver Gray', '64gb', NULL, NULL, 'assets/products/1704725587-png.monster-209.png', NULL, NULL, NULL, NULL, 1, '[\"Display-message-lcd\",\"Battery-Message\"]', 'below-85', 'full-clear', '[\"dots-spots\"]', 'fullyFunctional', NULL, 1, 0, NULL, NULL, 1, 3, 50000.00, 'Working condition 8 / 10', '2008-03-13', '278', 14, 'Davenport and Wood Trading', 'Marah Pace', 164.00, NULL, 'Aliquip officiis in', 0, 0, 1, '2024-01-08 14:53:07', '2024-01-25 14:16:41'),
(3, 37, 'karachi', '03423383700', 13, 23, 'oneplus 9', NULL, 'winter mist', '128gb', '8gb', 'A', 'assets/products/1705388632-WhatsApp Image 2024-01-16 at 12.00.49 PM.jpeg', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'full-clear', '[\"full-clean\"]', 'fullyFunctional', NULL, 0, 0, 0, 'single', 0, NULL, 80000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '2024-01-16 07:03:52', '2024-01-29 08:40:41'),
(13, 1, 'Lorem nihil eiusmod', '674', 14, 8, 'Officia eos dolorem', NULL, 'Libero at minim exce', '32gb', '2gb', NULL, 'assets/products/1706532170-png.monster-209.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '[\"broken-lcd\",\"dots-spots\",\"lines\",\"shade-light\",\"full-clean\"]', 'fullyFunctional', NULL, 1, 0, 0, NULL, 1, 7, 794.00, 'In in molestiae mini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '2024-01-29 12:42:50', '2024-01-29 12:42:50'),
(14, 38, 'karachi', '03423383700', 13, 8, '8 Plus', NULL, 'red', '64gb', NULL, 'A', 'assets/products/1707306169-x.jpg', NULL, NULL, NULL, NULL, 1, '[\"none-of-these\"]', 'above-85', 'full-clear', '[\"full-clean\"]', 'fullyFunctional', NULL, 0, 1, 0, 'single', 0, NULL, 48000.00, 'IPHONE 8 PLUS\r\n64GB\r\nGOOD CONDITION\r\nPTA APPROVED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '2024-02-07 11:42:49', '2024-02-07 11:45:20'),
(15, 12, 'Multan', '0302524221', 12, 9, '255', NULL, 'red', '16gb', '1gb', 'A', 'assets/products/1708543168-Screenshot 2023-11-15 184310.png', '65d64cc0342781708543168.png', '65d64cc03ce641708543168.png', '65d64cc0562741708543168.png', '65d64cc06fba21708543168.png', 0, NULL, NULL, 'front-glass-broken', '[\"broken-lcd\"]', 'fullyFunctional', NULL, 1, 0, 0, NULL, 0, NULL, 50000.00, 'sxasxasx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '2024-02-21 19:19:28', '2024-02-21 19:19:28'),
(16, 1, 'Repellendus Nobis q', '532', 17, 33, 'Excepteur quisquam m', NULL, 'Nam aut sint et culp', '512gb', '16gb', 'A', 'assets/products/1709326697-3.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'heavy-glass-broken', '[\"broken-lcd\",\"dots-spots\",\"shade-heavy\",\"shade-light\"]', 'Issue', NULL, 0, 0, 0, 'one-esim', 0, NULL, 181.00, 'Quia sed quis illo e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '2024-03-01 20:58:17', '2024-03-01 20:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `slug`, `title`, `description`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Zaaminn', 'Zaaminn - Laravel Ecommerce Application', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-12-04 19:46:37'),
(2, 'about-us', 'About Us | Zairito - Laravel Ecommerce Application', 'Zairito - Laravel Ecommerce Application', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(3, 'blog', 'Blogs | Zairito - Laravel Ecommerce Application', 'Zairito - Laravel Ecommerce Application', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(4, 'contact', 'Contact Us| Zairito - Laravel Ecommerce Application', 'Zairito - Laravel Ecommerce Application', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(5, 'all-products', 'All Products| Zairito - Laravel Ecommerce Application', 'Zairito - Laravel Ecommerce Application', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(6, 'cart', 'Cart | Zairito - Laravel Ecommerce Application', 'Zairito - Laravel Ecommerce Application', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(7, 'checkout', 'Checkout | Zairito - Laravel Ecommerce Application', 'Zairito - Laravel Ecommerce Application', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(8, 'wishlist', 'Wishlist | Zairito - Laravel Ecommerce Application', 'Zairito - Laravel Ecommerce Application', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(9, 'compare', 'Compare | Zairito - Laravel Ecommerce Application', 'Zairito - Laravel Ecommerce Application', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(10, 'sign-in', 'Sign In', 'Sign In', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(11, 'sign-up', 'Sign Up', 'Sign Up', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(12, 'forget-password', 'Forget Password', 'Forget Password', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(13, 'reset-password', 'Reset Password', 'Reset Password', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(14, 'terms-conditions', 'Terms Conditions', 'Terms Conditions', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(15, 'privacy-policy', 'Privacy Policy', 'Privacy Policy', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(16, 'shipping-return', 'Shipping Return Policy', 'Shipping Return Policy', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(17, 'faq', 'FAQ', 'FAQ', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(18, 'refund-policy', 'Refund Policy', 'Refund Policy', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `slug`, `value`, `created_at`, `updated_at`) VALUES
(1, 'app_title', 'Zaaminn', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(2, 'tax_percentage', '15', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(3, 'shipping_charge', '60', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(4, 'estimating_delivery', '7 days', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(5, 'title', 'Zaaminn', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(6, 'main_logo', '653279f0122a91697806832.png', '2023-01-02 06:34:12', '2023-10-20 13:00:32'),
(7, 'footer_logo', '6509cb0c2bccf1695140620.png', '2023-01-02 06:34:12', '2023-09-19 16:23:40'),
(8, 'footer_title', 'Designed & Developed By Developer', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(9, 'favicon', '6509cb0c327791695140620.png', '2023-01-02 06:34:12', '2023-09-19 16:23:40'),
(10, 'version', '1', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(11, 'meta_author', 'Ahmad Raza', '2023-01-02 06:34:12', '2023-12-10 08:27:26'),
(12, 'meta_description', 'Zairito - Ecommerce App', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(13, 'meta_keywords', 'business,eCommerce, Ecommerce, ecommerce, shop, shopify, shopify ecommerce, creative, woocommerce, design, gallery, minimal, modern, html, html5, responsive', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(14, 'call_us', '+921234567890', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(15, 'email', 'support@zaaminn.com', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(16, 'address', '685 Market Street', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(17, 'state', 'Karachi', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(18, 'country', 'Pakistan', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(19, 'news_letter', 'Receive our latest updates about our <br /> products and promotions.', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(20, 'preloader', 'preloader.svg', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(21, 'popup_image', '6509cb5198f8d1695140689.png', '2023-01-02 06:34:12', '2023-09-19 16:24:49'),
(22, 'menu_thumb', '6509d5638f0cd1695143267.jpg', '2023-01-02 06:34:12', '2023-09-19 17:07:47'),
(23, 'menu_link', 'javascript:void(0)', '2023-01-02 06:34:12', '2023-09-19 17:07:47'),
(24, 'home_products_page', '4', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(25, 'home_trending_page', '4', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(26, 'new_arrival', '1', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(27, 'best_selling', '1', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(28, 'on_sale', '1', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(29, 'featured_items', '1', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(30, 'default_currency', 'PKR', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(31, 'default_language', 'en', '2023-01-02 06:34:12', '2023-10-20 13:00:54'),
(32, 'theme', 'one', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(33, 'news_letter_img', 'accepts-image.png', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(34, 'news_letter_title', 'Guarantee safe & secure checkout', '2023-01-02 06:34:12', '2023-01-02 06:34:12'),
(35, 'news_letter_status', '1', '2023-01-02 06:34:12', '2023-01-02 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `User_Id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(191) NOT NULL,
  `Email` varchar(191) DEFAULT NULL,
  `Street` varchar(191) DEFAULT NULL,
  `State` varchar(191) DEFAULT NULL,
  `Zipcode` varchar(191) DEFAULT NULL,
  `Country` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Size` varchar(7) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `Size`, `created_at`, `updated_at`) VALUES
(1, '7\"', '2023-01-02 06:34:11', '2023-12-04 20:19:12'),
(2, '6.5', '2023-01-02 06:34:11', '2023-12-04 20:19:06'),
(3, '6', '2023-01-02 06:34:11', '2023-12-04 20:18:56'),
(4, 'XL', '2023-01-02 06:34:11', '2023-01-02 06:34:11'),
(5, 'XXL', '2023-01-02 06:34:11', '2023-01-02 06:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `size_product`
--

CREATE TABLE `size_product` (
  `Product_Id` bigint(20) UNSIGNED NOT NULL,
  `Size_Id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Background_Image` varchar(191) NOT NULL,
  `Thumbnail` varchar(191) NOT NULL,
  `en_Title` varchar(191) NOT NULL,
  `en_Sub_Title` varchar(191) NOT NULL,
  `en_Description` text NOT NULL,
  `en_Button_Text` varchar(191) NOT NULL,
  `fr_Title` varchar(191) NOT NULL,
  `fr_Sub_Title` varchar(191) NOT NULL,
  `fr_Description` text NOT NULL,
  `fr_Button_Text` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `Background_Image`, `Thumbnail`, `en_Title`, `en_Sub_Title`, `en_Description`, `en_Button_Text`, `fr_Title`, `fr_Sub_Title`, `fr_Description`, `fr_Button_Text`, `created_at`, `updated_at`) VALUES
(1, '6532781910dd01697806361.png', '65329377c6f8b1697813367.png', 'Explore', 'Zaaminn', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed', 'See Colections', 'الخريف الجديد', 'مجموعة نوفيل', 'كتلة الحاضر حكيمة وليست من وادي القناص ، لكنها ليست من العوز. نحن نعيش بسحر عظيم ، لكن', 'انظر المجموعات', '2023-01-02 06:34:11', '2023-10-20 14:49:28'),
(2, '65327c6b90d1d1697807467.png', '650df42ac947b1695413290.png', 'Explore', 'Zaaminn', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed', 'See Colections', 'الصيف!!', 'تخفيضات الصيف', 'كتلة الحاضر حكيمة وليست من وادي القناص ، لكنها ليست من العوز. نحن نعيش بسحر عظيم ، لكن', 'انظر المجموعات', '2023-01-02 06:34:11', '2023-10-20 13:11:07'),
(3, '653277d1254351697806289.png', '653294dc8a1861697813724.png', 'Explore', 'Zaaminn', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed', 'See Colections', 'ليفيفر', 'مجموعة نوفيل', 'كتلة الحاضر حكيمة وليست من وادي القناص ، لكنها ليست من العوز. نحن نعيش بسحر عظيم ، لكن', 'انظر المجموعات', '2023-01-02 06:34:11', '2023-10-20 14:55:25'),
(4, '65625420835fd1700942880.jpg', '656254208a9b21700942880.jpg', 'dhjkshj', 'jhdkshd', 'ksdksjdhk', 'kdksjd', 'kfldsk', 'djksj', 'jdksj', 'jdksj', '2023-11-25 20:08:00', '2023-11-25 20:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Facebook` varchar(191) DEFAULT NULL,
  `Skype` varchar(191) DEFAULT NULL,
  `Twitter` varchar(191) DEFAULT NULL,
  `Linkedin` varchar(191) DEFAULT NULL,
  `Instagram` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `Facebook`, `Skype`, `Twitter`, `Linkedin`, `Instagram`, `created_at`, `updated_at`, `tiktok`) VALUES
(1, 'https://www.facebook.com/profile.php?id=61550292155199&mibextid=LQQJ4d', NULL, NULL, NULL, 'https://instagram.com/zaaminn7?igshid=YTQwZjQ0NmI0OA%3D%3D&utm_source=qr', '2023-01-02 06:34:12', '2023-10-15 19:19:31', 'https://www.tiktok.com/@zaaminn7?_t=8gXBjivv47z&_r=1');

-- --------------------------------------------------------

--
-- Table structure for table `special_offers`
--

CREATE TABLE `special_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `en_title` varchar(191) DEFAULT NULL,
  `fr_title` varchar(191) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `discount` varchar(191) NOT NULL DEFAULT '0',
  `url` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `special_offers`
--

INSERT INTO `special_offers` (`id`, `image`, `en_title`, `fr_title`, `category_id`, `discount`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, '65625457323481700942935.jpg', 'SPECTIAL OFFER', 'SPECTIAL OFFER', 12, '50', 'www.sadekurrahman.com', 1, '2023-01-02 06:34:12', '2023-11-25 20:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Subscribe` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `Subscribe`, `created_at`, `updated_at`) VALUES
(1, 'asad23@gmail.com', '2023-10-25 04:08:57', '2023-10-25 04:08:57'),
(2, 'dsdsfgsdf@gmail.com', '2023-10-25 05:18:31', '2023-10-25 05:18:31'),
(3, 'edsrfsdf@gmail.com', '2023-10-25 06:06:13', '2023-10-25 06:06:13'),
(4, 'asad@gmail.com', '2023-10-25 06:06:56', '2023-10-25 06:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menus`
--

CREATE TABLE `sub_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `en_name` varchar(191) NOT NULL,
  `fr_name` varchar(191) NOT NULL,
  `url` text DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `Tag` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `blog_id`, `Tag`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"Cloths\",\"Interview\"]', '2023-01-02 06:34:11', '2023-09-22 13:09:45'),
(2, 2, '[\"Bags\",\"New Collection\"]', '2023-01-02 06:34:11', '2023-09-22 13:09:58'),
(3, 3, '[\"Product\",\"Hot Collection\"]', '2023-01-02 06:34:11', '2023-09-22 13:10:09'),
(4, 4, '[\"Cloths\",\"Interview\"]', '2023-01-02 06:34:11', '2023-09-22 13:10:21'),
(5, 5, '[\"Bags\",\"New Collection\"]', '2023-01-02 06:34:11', '2023-09-22 13:10:32'),
(6, 6, '[\"Product\",\"Hot Collection\"]', '2023-01-02 06:34:11', '2023-09-22 13:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) NOT NULL,
  `percentage` double(8,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Image` varchar(191) NOT NULL,
  `Name` varchar(191) NOT NULL,
  `en_Description` text NOT NULL,
  `fr_Description` text NOT NULL,
  `star` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `Image`, `Name`, `en_Description`, `fr_Description`, `star`, `created_at`, `updated_at`) VALUES
(1, '650d8da17128d1695387041.png', 'Andrew Jaimond', 'Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh. Proin eget tortor risus. Proin eget tortor risus. Curabitur arcu', 'لا توجد طبقة مبتكرة لإيقافها. موريس بلانديت أليكت إيليت ، إيجيت تينكيدونت نيبه بولفينار أ. لكن العبارة اختارت الكرة. ولذا فهو بحاجة إلى ابتسامة بديلة. ولذا فهو بحاجة إلى ابتسامة بديلة.', 5, '2023-01-02 06:34:12', '2023-09-22 12:50:41'),
(2, '650d8f74333ad1695387508.png', 'Jhon Cena', 'Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh. Proin eget tortor risus. Proin eget tortor risus. Curabitur arcu', 'لا توجد طبقة مبتكرة لإيقافها. موريس بلانديت أليكت إيليت ، إيجيت تينكيدونت نيبه بولفينار أ. لكن العبارة اختارت الكرة. ولذا فهو بحاجة إلى ابتسامة بديلة. ولذا فهو بحاجة إلى ابتسامة بديلة.', 5, '2023-01-02 06:34:12', '2023-09-22 12:58:28'),
(3, '650de4df5f6261695409375.png', 'Mike Clark', 'Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh. Proin eget tortor risus. Proin eget tortor risus. Curabitur arcu', 'لا توجد طبقة مبتكرة لإيقافها. موريس بلانديت أليكت إيليت ، إيجيت تينكيدونت نيبه بولفينار أ. لكن العبارة اختارت الكرة. ولذا فهو بحاجة إلى ابتسامة بديلة. ولذا فهو بحاجة إلى ابتسامة بديلة.', 5, '2023-01-02 06:34:12', '2023-09-22 19:02:55'),
(4, '650de4f2951b41695409394.png', 'Rey mysterio', 'Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh. Proin eget tortor risus. Proin eget tortor risus. Curabitur arcu', 'لا توجد طبقة مبتكرة لإيقافها. موريس بلانديت أليكت إيليت ، إيجيت تينكيدونت نيبه بولفينار أ. لكن العبارة اختارت الكرة. ولذا فهو بحاجة إلى ابتسامة بديلة. ولذا فهو بحاجة إلى ابتسامة بديلة.', 5, '2023-01-02 06:34:12', '2023-09-22 19:03:14'),
(5, '650d8ec270f5f1695387330.png', 'Big Show', 'Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh. Proin eget tortor risus. Proin eget tortor risus. Curabitur arcu', 'لا توجد طبقة مبتكرة لإيقافها. موريس بلانديت أليكت إيليت ، إيجيت تينكيدونت نيبه بولفينار أ. لكن العبارة اختارت الكرة. ولذا فهو بحاجة إلى ابتسامة بديلة. ولذا فهو بحاجة إلى ابتسامة بديلة.', 5, '2023-01-02 06:34:12', '2023-09-22 12:55:30'),
(6, '650d8f460d02d1695387462.png', 'Michael Beven', 'Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh. Proin eget tortor risus. Proin eget tortor risus. Curabitur arcu', 'لا توجد طبقة مبتكرة لإيقافها. موريس بلانديت أليكت إيليت ، إيجيت تينكيدونت نيبه بولفينار أ. لكن العبارة اختارت الكرة. ولذا فهو بحاجة إلى ابتسامة بديلة. ولذا فهو بحاجة إلى ابتسامة بديلة.', 5, '2023-01-02 06:34:12', '2023-09-22 12:57:42'),
(7, '650d8e500d8431695387216.png', 'Randy orton', 'Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh. Proin eget tortor risus. Proin eget tortor risus. Curabitur arcu', 'لا توجد طبقة مبتكرة لإيقافها. موريس بلانديت أليكت إيليت ، إيجيت تينكيدونت نيبه بولفينار أ. لكن العبارة اختارت الكرة. ولذا فهو بحاجة إلى ابتسامة بديلة. ولذا فهو بحاجة إلى ابتسامة بديلة.', 5, '2023-01-02 06:34:12', '2023-09-22 12:53:36'),
(8, '650d8f65c235f1695387493.png', 'Sheymas', 'Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh. Proin eget tortor risus. Proin eget tortor risus. Curabitur arcu', 'لا توجد طبقة مبتكرة لإيقافها. موريس بلانديت أليكت إيليت ، إيجيت تينكيدونت نيبه بولفينار أ. لكن العبارة اختارت الكرة. ولذا فهو بحاجة إلى ابتسامة بديلة. ولذا فهو بحاجة إلى ابتسامة بديلة.', 5, '2023-01-02 06:34:12', '2023-09-22 12:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `google_id` varchar(191) DEFAULT NULL,
  `facebook_id` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `Number` varchar(191) DEFAULT NULL,
  `Gender` varchar(191) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `street_address` varchar(191) DEFAULT NULL,
  `About` text DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `google_id`, `facebook_id`, `image`, `Number`, `Gender`, `DOB`, `street_address`, `About`, `is_admin`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Zaaminn', 'admin@gmail.com', NULL, NULL, '6509d61f05d751695143455.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '$2a$12$9WF1Khmo06CXy9KC0l.dduRD14RWux1O0DLWmf5zFC4rmkU0A5tqq', NULL, '2023-01-02 06:34:10', '2024-02-20 17:12:14'),
(2, 'William Smith', 'user1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '$2y$10$qqTKsBCMD7fVQXtoJdb37O4zb9UcYDQjDU6fimNYrYZcAnEytKS3y', NULL, '2023-01-02 06:34:10', '2023-01-02 06:34:10'),
(3, 'Haris Saleem', 'harrisaleem13@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '$2y$10$3NzStTagmQXvkcW6xxJ5/Ofrikab51rxuoeSKAl1o8IONU9G1.wNa', NULL, '2023-09-25 11:44:32', '2023-09-25 11:44:32'),
(7, 'asad', 'asad@gmail.com', NULL, NULL, '651d6fced01651696427982.jpg', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$1QUOFUwNEaLnO56lG5vkzejo8tuzQojNEm2VVC.kSsW4Kzp/C7T0C', NULL, '2023-10-04 06:44:48', '2023-10-04 09:13:38'),
(8, 'awais', 'awais@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$g7srFOLNhsZIsT0lMMiqGeScdk8SocGl9Li4icrbVp30Wd0SGldDa', NULL, '2023-10-10 00:42:15', '2023-10-10 00:42:15'),
(10, 'hasaan', 'hasaan@gmaill.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$kjzmjU0ciw87jEOE6QKd3OL7VftYklujIa6c3U5X2au4m..TLUbMO', NULL, '2023-10-10 00:51:06', '2023-10-10 00:51:06'),
(12, 'ali', 'ali@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2a$12$9WF1Khmo06CXy9KC0l.dduRD14RWux1O0DLWmf5zFC4rmkU0A5tqq', NULL, '2023-10-10 00:55:07', '2023-10-10 00:55:07'),
(13, 'haider', 'haider@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$opNt1aesiiLNQDRSOXsMduCD689/Rn8OzkYYuxqKm6NmKNNOkIlte', NULL, '2023-10-10 00:56:56', '2023-10-10 00:56:56'),
(16, 'haider1', 'haider1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$3C5T3TeOKSrDgYRJZfVD3Ok5zYlqRwrit1DHUwWzgAXJ5NfOhjlf2', NULL, '2023-10-10 00:58:30', '2023-10-10 00:58:30'),
(18, 'Haris Saleem', 'taufiqinternational@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '$2y$10$2JvyW6m1arAPVPMgikZE5.ZZ6RohuKm24PyeCV696.IuiiwLVoEqu', NULL, '2023-11-25 20:12:35', '2023-11-25 20:12:35'),
(19, 'Ehtasham', 'sham@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$6tuscOKFpxzdMYZq4gDycuI2YBmayHv2JtUmMTRxiLQW/X1OwGwY6', NULL, '2023-11-25 22:51:11', '2023-11-25 22:51:11'),
(20, 'Shami', 'Shami112633@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$puZ32fHlq1oaFcznP1n7pObOzpTrKzKEcPFbiMJvvHg2GXPjrr2xG', NULL, '2023-11-25 22:52:07', '2023-11-25 22:52:07'),
(21, 'Muneeb', 'muneeb1791@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$hL7VZvDYRJr7w3FHS4.kEOJCzoJUsCxVfE6bZWUrBjjpXR569NXj.', NULL, '2023-11-27 11:11:44', '2023-11-27 11:11:44'),
(22, 'ali', 'ali123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$8Bg/9VqLrURvJKrpTykL9uBd5llgD.wUhnrHKhaBUtf4Z3fD1Zp0e', NULL, '2023-11-27 11:13:15', '2023-11-27 11:13:15'),
(23, 'hassan123', 'hassan123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$wTLOXs6GUjdf.9Mv8326deZz8fc1q8h9FZPU/rL7L4bU.LildykKS', NULL, '2023-11-27 11:33:51', '2023-11-27 11:33:51'),
(24, 'Ahmad', 'iamahmadraza54@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$iLzTg5L4zmLt/TLYu1xsmeyMfchBwPRuATpng23k3Wlrrf.wIAVkW', NULL, '2023-11-27 13:03:25', '2023-11-27 13:03:25'),
(25, 'Ahmad Raza', 'ahmad@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$jit0i6iqDNujvG.Mkw7VduQ6d.dwdHNhA/I3ENtjT9zKmvAHD9voq', NULL, '2023-11-27 13:57:30', '2024-02-12 09:29:56'),
(26, 'test', 'test@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$aZ6i3TGjSg1bn29D6dhhs.xYbfepjgU28CrBh8xk9odn/Aw45GkRK', NULL, '2023-12-01 17:43:07', '2023-12-01 17:43:07'),
(27, 'Muneeb', 'chmoeeb29@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$8kdUZa3TYdXhdoLMtJnlIetxC/UIbb6DfAH4S01CGWFM8TSR6ME4O', NULL, '2023-12-04 20:07:42', '2023-12-04 20:07:42'),
(28, 'asas', 'aaa@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$Cqrma5eeqm1PBklp9WEC1eUS8otG9WjzF3Mr5aKY/owWnxPlUiWLq', NULL, '2023-12-04 20:10:48', '2023-12-04 20:10:48'),
(29, 'asas', 'asas@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$ZyQDu87SI6m7Kgw.7TVjkOswcPuTANqc062y3qVg7JPSYZdcuarU6', NULL, '2023-12-05 10:00:50', '2023-12-05 10:00:50'),
(30, 'ehtisham323', 'Sha@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$gG1XSi/LrDYD0yXI.sxOWewRtD7iPxwFlTsvRKOzXJ.1VGMPwcTz.', NULL, '2023-12-05 18:24:11', '2023-12-05 18:24:11'),
(31, 'Adamey', 'zamin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$cMOV1iitUQrbjwrW5oJyc.glTap26T78jCVi.9IgfbLt5rFYD0zx6', NULL, '2023-12-05 18:57:53', '2023-12-05 18:57:53'),
(32, 'ahmed123', 'zaminworld@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$6HPwD/BqEMWzK7qKPX4zoeg5qJusYd9osaAlm26hztenGsc/knXF6', NULL, '2023-12-05 19:00:38', '2023-12-05 19:00:38'),
(33, 'mmmm', 'Mmmm78@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$OK3LGVpwjuoFz21rsmTwHuU8Px4Q2lc5FoymzqmziFnIVbngp.JCW', NULL, '2023-12-06 15:03:23', '2023-12-06 15:03:23'),
(34, 'ali', 'Mmmm77@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '$2y$10$UvTG1Xwmr5qhogOzqLkF6u/dJJ1zi06NwWswpS4C2BfR1ifUgPo/W', NULL, '2023-12-11 07:53:20', '2023-12-11 07:53:20'),
(35, 'hii', 'hii123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$Wtcn8PtJZcotEgXn8aSiCOARXpSf6z/7mXyOldxh/r.KynAYdFNpS', NULL, '2023-12-11 11:20:42', '2023-12-11 11:20:42'),
(36, 'abdullah test', 'abdullahtesting@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '$2y$10$Sm5FvpUq3ce8w2IF379KV.u6eXouHq58zfAJDRlgZCnPO7WRfwH4G', NULL, '2023-12-21 14:18:26', '2024-01-30 09:48:49'),
(37, 'hassan kadar', 'zaaminnpk@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$RHLM3qs6k9.htnca9JfL8eiStrKOR4l1lTYRHWqiZ6oZgVeMI6Hky', NULL, '2024-01-05 17:56:56', '2024-01-05 17:56:56'),
(38, 'hassan kadar', 'hassan_kadar@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$uMR4FoZdOv8Jz8JrW927f.dMZhlYToe8wMX6/cK8/kaiB0qNrYOvi', NULL, '2024-01-16 12:50:27', '2024-02-07 11:36:38'),
(39, 'hassan kadar', 'hassanabdulkadar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '$2y$10$oiahFVTBUw3eaSxACYFm6uRNc1NFoJQNuRYVfWzL5AZgAVp5CNpz2', NULL, '2024-01-30 06:26:30', '2024-02-26 13:23:23'),
(40, 'haris', 'haris123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '$2y$10$JqSW6/IUKp.zm6X8qp3QBursmhhaegfXIiZKNzDXfmY.teSUo3glC', NULL, '2024-02-10 15:01:44', '2024-02-10 15:01:44'),
(41, 'xyz', 'xyz@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '$2y$10$r1RXErea1F1lJVbOhCyGJ.NQq8Dg0sBKmOUN4b0GUauE8ayL1WPfq', NULL, '2024-02-12 09:38:17', '2024-03-02 17:51:05'),
(42, 'Zaaminn', 'zaamin@gmail.com', NULL, NULL, '6509d61f05d751695143455.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '$2a$12$qI1nrBNZWJ8wad1Rh2XkUemFh9VNvtzjkAr5hCUAoXJNofNvu8efW', NULL, '2023-01-02 06:34:10', '2024-02-19 14:43:54'),
(43, 'Sabir', 'sabir@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '$2y$10$vMRZKIh6Ch8UyHmKazuGXuQp1X3WQIKm6w0fg568yXBDb6nj/tSpu', NULL, '2024-02-19 18:39:05', '2024-02-19 18:39:05'),
(44, 'hasan', 'hasan@gmaill.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '$2y$10$k0qEP7ig99G4OJavhA99ZODnu6dsC/JEAJKLmYT1WMvGUqrXOVI5u', NULL, '2024-02-20 15:46:26', '2024-02-20 15:46:26'),
(45, 'abc', 'abc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '$2y$10$V09C4LkQPDvyhhV7a31cVerNSe3lWMgDGDN90X0gqii7J//OS6Aui', NULL, '2024-02-20 15:48:40', '2024-02-20 15:48:40'),
(46, 'abcd', 'abcd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$uUzLQ3KGtTCOvHkrtHJG/u3d1kqjnxmaPBorhHU5DKcOR15H57u8K', NULL, '2024-02-20 15:53:44', '2024-02-20 15:53:44'),
(47, 'test', 'tested@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '$2y$10$pSpaF0IMHJ3Nobc4Q06ICeZo25Zmun9BVxjRW49EVv1klkpoOxTxi', NULL, '2024-02-20 17:04:06', '2024-02-20 17:04:06'),
(48, 'Test', 'test_email@gmail.com', NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, 1, 1, NULL, '$2y$10$LxnW2BqvAbxcf.T9shUlQOaF20vm99m41d/Te4W1aiPv7Yydb0Igi', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `User_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `Product_Id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us_pages`
--
ALTER TABLE `about_us_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `advertises`
--
ALTER TABLE `advertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billings_user_id_foreign` (`User_Id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_index` (`user_id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_blog_id_foreign` (`Blog_Id`),
  ADD KEY `blog_comments_user_id_foreign` (`User_Id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD KEY `color_product_product_id_foreign` (`Product_Id`),
  ADD KEY `color_product_color_id_foreign` (`Color_Id`);

--
-- Indexes for table `company_stories`
--
ALTER TABLE `company_stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compare_lists`
--
ALTER TABLE `compare_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compare_lists_user_id_foreign` (`User_Id`),
  ADD KEY `compare_lists_product_id_foreign` (`Product_Id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cutomer_services`
--
ALTER TABLE `cutomer_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_information`
--
ALTER TABLE `footer_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepages`
--
ALTER TABLE `homepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_galleries`
--
ALTER TABLE `image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_tags`
--
ALTER TABLE `item_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`User_Id`),
  ADD KEY `orders_billing_id_foreign` (`Billing_Id`),
  ADD KEY `orders_shipping_id_foreign` (`Shipping_Id`),
  ADD KEY `orders_coupon_id_foreign` (`Coupon_Id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`Order_Id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_platforms`
--
ALTER TABLE `payment_platforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_index` (`Category_Id`),
  ADD KEY `products_brand_id_index` (`Brand_Id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tags_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_tag_lists`
--
ALTER TABLE `product_tag_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seller_products`
--
ALTER TABLE `seller_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_products2`
--
ALTER TABLE `seller_products2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_user_id_foreign` (`User_Id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_product`
--
ALTER TABLE `size_product`
  ADD KEY `size_product_product_id_foreign` (`Product_Id`),
  ADD KEY `size_product_size_id_foreign` (`Size_Id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `special_offers_category_id_foreign` (`category_id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_menus_menu_id_index` (`menu_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_blog_id_index` (`blog_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`User_Id`),
  ADD KEY `wishlists_product_id_foreign` (`Product_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us_pages`
--
ALTER TABLE `about_us_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertises`
--
ALTER TABLE `advertises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company_stories`
--
ALTER TABLE `company_stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `compare_lists`
--
ALTER TABLE `compare_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cutomer_services`
--
ALTER TABLE `cutomer_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `footer_information`
--
ALTER TABLE `footer_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `image_galleries`
--
ALTER TABLE `image_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `item_tags`
--
ALTER TABLE `item_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_platforms`
--
ALTER TABLE `payment_platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product_tag_lists`
--
ALTER TABLE `product_tag_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seller_products`
--
ALTER TABLE `seller_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `seller_products2`
--
ALTER TABLE `seller_products2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `special_offers`
--
ALTER TABLE `special_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_menus`
--
ALTER TABLE `sub_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessories`
--
ALTER TABLE `accessories`
  ADD CONSTRAINT `accessories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `billings`
--
ALTER TABLE `billings`
  ADD CONSTRAINT `billings_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`Blog_Id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_comments_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_color_id_foreign` FOREIGN KEY (`Color_Id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `color_product_product_id_foreign` FOREIGN KEY (`Product_Id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `compare_lists`
--
ALTER TABLE `compare_lists`
  ADD CONSTRAINT `compare_lists_product_id_foreign` FOREIGN KEY (`Product_Id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `compare_lists_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_billing_id_foreign` FOREIGN KEY (`Billing_Id`) REFERENCES `billings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_coupon_id_foreign` FOREIGN KEY (`Coupon_Id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`Shipping_Id`) REFERENCES `shippings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`Order_Id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`Brand_Id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`Category_Id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `seller_products2`
--
ALTER TABLE `seller_products2`
  ADD CONSTRAINT `seller_products2_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `size_product`
--
ALTER TABLE `size_product`
  ADD CONSTRAINT `size_product_product_id_foreign` FOREIGN KEY (`Product_Id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `size_product_size_id_foreign` FOREIGN KEY (`Size_Id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD CONSTRAINT `special_offers_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD CONSTRAINT `sub_menus_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`Product_Id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`User_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
