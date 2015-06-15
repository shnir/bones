-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 15 2015 г., 15:59
-- Версия сервера: 5.5.32
-- Версия PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `bones_k`
--
CREATE DATABASE IF NOT EXISTS `bones_k` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bones_k`;

-- --------------------------------------------------------

--
-- Структура таблицы `experiment`
--

CREATE TABLE IF NOT EXISTS `experiment` (
  `id_exp` int(10) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `name` varchar(30) NOT NULL,
  `bones_num` int(10) NOT NULL,
  `faces` int(2) NOT NULL,
  `throws` int(10) NOT NULL,
  PRIMARY KEY (`id_exp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `experiment`
--

INSERT INTO `experiment` (`id_exp`, `date`, `time`, `name`, `bones_num`, `faces`, `throws`) VALUES
(1, '2015-05-27', '14:45:11', 'user', 2, 6, 36000),
(2, '2015-05-27', '14:45:13', 'user', 2, 6, 36000),
(3, '2015-05-27', '14:45:14', 'user', 2, 6, 36000),
(4, '2015-05-27', '14:45:15', 'user', 2, 6, 36000),
(5, '2015-05-27', '15:37:48', 'user', 2, 6, 36000),
(6, '2015-05-27', '15:37:59', 'user', 2, 6, 36000),
(7, '2015-05-27', '15:38:38', 'user', 2, 6, 36000),
(8, '2015-05-27', '15:39:34', 'user', 2, 6, 36000),
(9, '2015-05-27', '15:39:55', 'user', 2, 6, 36000),
(10, '2015-05-27', '15:40:04', 'user', 2, 6, 36000),
(11, '2015-05-27', '15:40:14', 'user', 2, 6, 36000),
(12, '2015-05-27', '15:40:28', 'user', 2, 6, 36000),
(13, '2015-05-27', '15:41:04', 'user', 2, 6, 36000),
(14, '2015-05-27', '17:33:34', 'Андрей', 5, 9, 55555),
(15, '2015-05-27', '17:33:41', 'Андрей', 4, 9, 55555),
(16, '2015-05-27', '17:33:50', 'Андрей', 4, 9, 55555),
(17, '2015-05-27', '17:33:58', 'Андрей', 4, 4, 55555),
(18, '2015-05-27', '17:34:04', 'Андрей', 4, 15, 55555),
(19, '2015-05-27', '17:42:40', 'Андрей', 4, 15, 36000),
(20, '2015-05-27', '17:42:57', 'Андрей', 2, 6, 36000),
(21, '2015-05-27', '17:52:13', 'user', 2, 6, 36000),
(22, '2015-05-27', '17:55:27', 'user', 2, 6, 36000),
(23, '2015-05-27', '17:56:24', 'user', 2, 6, 36000),
(24, '2015-05-27', '17:56:41', 'user', 2, 6, 36000),
(25, '2015-05-27', '17:57:17', 'user', 2, 6, 36000),
(26, '2015-05-28', '10:39:46', 'user', 2, 6, 36000);

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id_result` int(10) NOT NULL AUTO_INCREMENT,
  `num` int(10) NOT NULL,
  `count` int(10) NOT NULL,
  `id_exp` int(10) NOT NULL,
  `chance` float NOT NULL,
  PRIMARY KEY (`id_result`),
  KEY `id_exp` (`id_exp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2899 ;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`id_result`, `num`, `count`, `id_exp`, `chance`) VALUES
(2456, 2, 989, 1, 2.74722),
(2457, 3, 1994, 1, 5.53889),
(2458, 4, 2979, 1, 8.275),
(2459, 5, 4014, 1, 11.15),
(2460, 6, 5013, 1, 13.925),
(2461, 7, 6012, 1, 16.7),
(2462, 8, 4987, 1, 13.8528),
(2463, 9, 4002, 1, 11.1167),
(2464, 10, 2984, 1, 8.28889),
(2465, 11, 2009, 1, 5.58056),
(2466, 12, 1017, 1, 2.825),
(2467, 2, 989, 2, 2.74722),
(2468, 3, 2012, 2, 5.58889),
(2469, 4, 2989, 2, 8.30278),
(2470, 5, 3979, 2, 11.0528),
(2471, 6, 4977, 2, 13.825),
(2472, 7, 6004, 2, 16.6778),
(2473, 8, 5020, 2, 13.9444),
(2474, 9, 4010, 2, 11.1389),
(2475, 10, 3032, 2, 8.42222),
(2476, 11, 1996, 2, 5.54444),
(2477, 12, 992, 2, 2.75556),
(2478, 2, 1006, 3, 2.79444),
(2479, 3, 2002, 3, 5.56111),
(2480, 4, 3026, 3, 8.40556),
(2481, 5, 4025, 3, 11.1806),
(2482, 6, 4995, 3, 13.875),
(2483, 7, 5979, 3, 16.6083),
(2484, 8, 4987, 3, 13.8528),
(2485, 9, 3984, 3, 11.0667),
(2486, 10, 2974, 3, 8.26111),
(2487, 11, 2014, 3, 5.59444),
(2488, 12, 1008, 3, 2.8),
(2489, 2, 1004, 4, 2.78889),
(2490, 3, 1999, 4, 5.55278),
(2491, 4, 3018, 4, 8.38333),
(2492, 5, 3978, 4, 11.05),
(2493, 6, 4997, 4, 13.8806),
(2494, 7, 6022, 4, 16.7278),
(2495, 8, 4997, 4, 13.8806),
(2496, 9, 3996, 4, 11.1),
(2497, 10, 3003, 4, 8.34167),
(2498, 11, 1983, 4, 5.50833),
(2499, 12, 1003, 4, 2.78611),
(2500, 2, 1004, 5, 2.78889),
(2501, 3, 1991, 5, 5.53056),
(2502, 4, 3012, 5, 8.36667),
(2503, 5, 4015, 5, 11.1528),
(2504, 6, 4998, 5, 13.8833),
(2505, 7, 6024, 5, 16.7333),
(2506, 8, 4981, 5, 13.8361),
(2507, 9, 4005, 5, 11.125),
(2508, 10, 2991, 5, 8.30833),
(2509, 11, 1996, 5, 5.54444),
(2510, 12, 983, 5, 2.73056),
(2511, 2, 1003, 6, 2.78611),
(2512, 3, 2004, 6, 5.56667),
(2513, 4, 3003, 6, 8.34167),
(2514, 5, 4009, 6, 11.1361),
(2515, 6, 5022, 6, 13.95),
(2516, 7, 5973, 6, 16.5917),
(2517, 8, 5017, 6, 13.9361),
(2518, 9, 3990, 6, 11.0833),
(2519, 10, 2988, 6, 8.3),
(2520, 11, 1993, 6, 5.53611),
(2521, 12, 998, 6, 2.77222),
(2522, 2, 995, 7, 2.76389),
(2523, 3, 2001, 7, 5.55833),
(2524, 4, 3002, 7, 8.33889),
(2525, 5, 4001, 7, 11.1139),
(2526, 6, 4992, 7, 13.8667),
(2527, 7, 6009, 7, 16.6917),
(2528, 8, 4999, 7, 13.8861),
(2529, 9, 3993, 7, 11.0917),
(2530, 10, 3014, 7, 8.37222),
(2531, 11, 1997, 7, 5.54722),
(2532, 12, 997, 7, 2.76944),
(2533, 2, 980, 8, 2.72222),
(2534, 3, 1991, 8, 5.53056),
(2535, 4, 3006, 8, 8.35),
(2536, 5, 4014, 8, 11.15),
(2537, 6, 4991, 8, 13.8639),
(2538, 7, 5981, 8, 16.6139),
(2539, 8, 5012, 8, 13.9222),
(2540, 9, 4013, 8, 11.1472),
(2541, 10, 2999, 8, 8.33056),
(2542, 11, 2000, 8, 5.55556),
(2543, 12, 1013, 8, 2.81389),
(2544, 2, 1014, 9, 2.81667),
(2545, 3, 2003, 9, 5.56389),
(2546, 4, 2987, 9, 8.29722),
(2547, 5, 3980, 9, 11.0556),
(2548, 6, 5003, 9, 13.8972),
(2549, 7, 5975, 9, 16.5972),
(2550, 8, 5006, 9, 13.9056),
(2551, 9, 4005, 9, 11.125),
(2552, 10, 3015, 9, 8.375),
(2553, 11, 2014, 9, 5.59444),
(2554, 12, 998, 9, 2.77222),
(2555, 2, 1011, 10, 2.80833),
(2556, 3, 1989, 10, 5.525),
(2557, 4, 3005, 10, 8.34722),
(2558, 5, 4009, 10, 11.1361),
(2559, 6, 4996, 10, 13.8778),
(2560, 7, 6027, 10, 16.7417),
(2561, 8, 4984, 10, 13.8444),
(2562, 9, 4004, 10, 11.1222),
(2563, 10, 2996, 10, 8.32222),
(2564, 11, 1997, 10, 5.54722),
(2565, 12, 982, 10, 2.72778),
(2566, 2, 1000, 11, 2.77778),
(2567, 3, 2004, 11, 5.56667),
(2568, 4, 3005, 11, 8.34722),
(2569, 5, 4009, 11, 11.1361),
(2570, 6, 5021, 11, 13.9472),
(2571, 7, 5975, 11, 16.5972),
(2572, 8, 5019, 11, 13.9417),
(2573, 9, 3994, 11, 11.0944),
(2574, 10, 2988, 11, 8.3),
(2575, 11, 1990, 11, 5.52778),
(2576, 12, 995, 11, 2.76389),
(2577, 2, 997, 12, 2.76944),
(2578, 3, 2001, 12, 5.55833),
(2579, 4, 3006, 12, 8.35),
(2580, 5, 4006, 12, 11.1278),
(2581, 6, 4994, 12, 13.8722),
(2582, 7, 6005, 12, 16.6806),
(2583, 8, 4995, 12, 13.875),
(2584, 9, 3988, 12, 11.0778),
(2585, 10, 3013, 12, 8.36944),
(2586, 11, 1998, 12, 5.55),
(2587, 12, 997, 12, 2.76944),
(2588, 2, 979, 13, 2.71944),
(2589, 3, 1990, 13, 5.52778),
(2590, 4, 3002, 13, 8.33889),
(2591, 5, 4011, 13, 11.1417),
(2592, 6, 4985, 13, 13.8472),
(2593, 7, 5989, 13, 16.6361),
(2594, 8, 5017, 13, 13.9361),
(2595, 9, 4012, 13, 11.1444),
(2596, 10, 2998, 13, 8.32778),
(2597, 11, 2000, 13, 5.55556),
(2598, 12, 1017, 13, 2.825),
(2599, 6, 6, 14, 0.0108001),
(2600, 7, 17, 14, 0.0306003),
(2601, 8, 30, 14, 0.0540005),
(2602, 9, 58, 14, 0.104401),
(2603, 10, 113, 14, 0.203402),
(2604, 11, 198, 14, 0.356403),
(2605, 12, 345, 14, 0.621006),
(2606, 13, 480, 14, 0.864009),
(2607, 14, 681, 14, 1.22581),
(2608, 15, 864, 14, 1.55522),
(2609, 16, 1173, 14, 2.11142),
(2610, 17, 1520, 14, 2.73603),
(2611, 18, 1905, 14, 3.42903),
(2612, 19, 2307, 14, 4.15264),
(2613, 20, 2671, 14, 4.80785),
(2614, 21, 3069, 14, 5.52426),
(2615, 22, 3402, 14, 6.12366),
(2616, 23, 3439, 14, 6.19026),
(2617, 24, 3668, 14, 6.60247),
(2618, 25, 3804, 14, 6.84727),
(2619, 26, 3610, 14, 6.49806),
(2620, 27, 3578, 14, 6.44046),
(2621, 28, 3278, 14, 5.90046),
(2622, 29, 2966, 14, 5.33885),
(2623, 30, 2596, 14, 4.67285),
(2624, 31, 2215, 14, 3.98704),
(2625, 32, 1986, 14, 3.57484),
(2626, 33, 1578, 14, 2.84043),
(2627, 34, 1176, 14, 2.11682),
(2628, 35, 953, 14, 1.71542),
(2629, 36, 661, 14, 1.18981),
(2630, 37, 458, 14, 0.824408),
(2631, 38, 295, 14, 0.531005),
(2632, 39, 189, 14, 0.340203),
(2633, 40, 127, 14, 0.228602),
(2634, 41, 84, 14, 0.151202),
(2635, 42, 35, 14, 0.0630006),
(2636, 43, 13, 14, 0.0234002),
(2637, 44, 5, 14, 0.009),
(2638, 45, 2, 14, 0.0036),
(2639, 5, 47, 15, 0.0846008),
(2640, 6, 79, 15, 0.142201),
(2641, 7, 168, 15, 0.302403),
(2642, 8, 211, 15, 0.379804),
(2643, 9, 484, 15, 0.871209),
(2644, 10, 741, 15, 1.33381),
(2645, 11, 1135, 15, 2.04302),
(2646, 12, 1325, 15, 2.38502),
(2647, 13, 1869, 15, 3.36423),
(2648, 14, 2290, 15, 4.12204),
(2649, 15, 2709, 15, 4.87625),
(2650, 16, 3203, 15, 5.76546),
(2651, 17, 3696, 15, 6.65287),
(2652, 18, 3809, 15, 6.85627),
(2653, 19, 4058, 15, 7.30447),
(2654, 20, 3921, 15, 7.05787),
(2655, 21, 4139, 15, 7.45027),
(2656, 22, 3863, 15, 6.95347),
(2657, 23, 3559, 15, 6.40626),
(2658, 24, 3253, 15, 5.85546),
(2659, 25, 2657, 15, 4.78265),
(2660, 26, 2238, 15, 4.02844),
(2661, 27, 1860, 15, 3.34803),
(2662, 28, 1403, 15, 2.52543),
(2663, 29, 1107, 15, 1.99262),
(2664, 30, 660, 15, 1.18801),
(2665, 31, 481, 15, 0.865809),
(2666, 32, 302, 15, 0.543605),
(2667, 33, 137, 15, 0.246602),
(2668, 34, 89, 15, 0.160202),
(2669, 35, 49, 15, 0.0882008),
(2670, 36, 13, 15, 0.0234002),
(2671, 5, 49, 16, 0.0882008),
(2672, 6, 82, 16, 0.147601),
(2673, 7, 172, 16, 0.309603),
(2674, 8, 211, 16, 0.379804),
(2675, 9, 481, 16, 0.865809),
(2676, 10, 730, 16, 1.31401),
(2677, 11, 1121, 16, 2.01782),
(2678, 12, 1331, 16, 2.39582),
(2679, 13, 1845, 16, 3.32103),
(2680, 14, 2292, 16, 4.12564),
(2681, 15, 2692, 16, 4.84565),
(2682, 16, 3212, 16, 5.78166),
(2683, 17, 3708, 16, 6.67447),
(2684, 18, 3822, 16, 6.87967),
(2685, 19, 4057, 16, 7.30267),
(2686, 20, 3937, 16, 7.08667),
(2687, 21, 4128, 16, 7.43047),
(2688, 22, 3865, 16, 6.95707),
(2689, 23, 3569, 16, 6.42426),
(2690, 24, 3244, 16, 5.83926),
(2691, 25, 2674, 16, 4.81325),
(2692, 26, 2241, 16, 4.03384),
(2693, 27, 1849, 16, 3.32823),
(2694, 28, 1408, 16, 2.53443),
(2695, 29, 1118, 16, 2.01242),
(2696, 30, 659, 16, 1.18621),
(2697, 31, 483, 16, 0.869409),
(2698, 32, 297, 16, 0.534605),
(2699, 33, 130, 16, 0.234002),
(2700, 34, 86, 16, 0.154802),
(2701, 35, 48, 16, 0.0864008),
(2702, 36, 14, 16, 0.0252002),
(2703, 4, 209, 17, 0.376204),
(2704, 5, 832, 17, 1.49761),
(2705, 6, 2226, 17, 4.00684),
(2706, 7, 4347, 17, 7.82468),
(2707, 8, 6821, 17, 12.2779),
(2708, 9, 8658, 17, 15.5846),
(2709, 10, 9456, 17, 17.021),
(2710, 11, 8650, 17, 15.5702),
(2711, 12, 6814, 17, 12.2653),
(2712, 13, 4236, 17, 7.62488),
(2713, 14, 2221, 17, 3.99784),
(2714, 15, 876, 17, 1.57682),
(2715, 16, 209, 17, 0.376204),
(2716, 6, 7, 18, 0.0126001),
(2717, 7, 27, 18, 0.0486004),
(2718, 8, 56, 18, 0.100801),
(2719, 9, 48, 18, 0.0864008),
(2720, 10, 73, 18, 0.131401),
(2721, 11, 113, 18, 0.203402),
(2722, 12, 217, 18, 0.390604),
(2723, 13, 195, 18, 0.351003),
(2724, 14, 325, 18, 0.585006),
(2725, 15, 380, 18, 0.684007),
(2726, 16, 590, 18, 1.06201),
(2727, 17, 623, 18, 1.12141),
(2728, 18, 660, 18, 1.18801),
(2729, 19, 965, 18, 1.73702),
(2730, 20, 1011, 18, 1.81982),
(2731, 21, 1222, 18, 2.19962),
(2732, 22, 1352, 18, 2.43362),
(2733, 23, 1580, 18, 2.84403),
(2734, 24, 1641, 18, 2.95383),
(2735, 25, 1914, 18, 3.44523),
(2736, 26, 1954, 18, 3.51724),
(2737, 27, 2186, 18, 3.93484),
(2738, 28, 2291, 18, 4.12384),
(2739, 29, 2324, 18, 4.18324),
(2740, 30, 2403, 18, 4.32544),
(2741, 31, 2350, 18, 4.23004),
(2742, 32, 2531, 18, 4.55585),
(2743, 33, 2539, 18, 4.57025),
(2744, 34, 2268, 18, 4.08244),
(2745, 35, 2366, 18, 4.25884),
(2746, 36, 2281, 18, 4.10584),
(2747, 37, 2085, 18, 3.75304),
(2748, 38, 2041, 18, 3.67384),
(2749, 39, 1782, 18, 3.20763),
(2750, 40, 1758, 18, 3.16443),
(2751, 41, 1521, 18, 2.73783),
(2752, 42, 1380, 18, 2.48402),
(2753, 43, 1152, 18, 2.07362),
(2754, 44, 1026, 18, 1.84682),
(2755, 45, 920, 18, 1.65602),
(2756, 46, 789, 18, 1.42021),
(2757, 47, 620, 18, 1.11601),
(2758, 48, 439, 18, 0.790208),
(2759, 49, 462, 18, 0.831608),
(2760, 50, 309, 18, 0.556206),
(2761, 51, 255, 18, 0.459004),
(2762, 52, 166, 18, 0.298803),
(2763, 53, 122, 18, 0.219602),
(2764, 54, 97, 18, 0.174602),
(2765, 55, 63, 18, 0.113401),
(2766, 56, 21, 18, 0.0378003),
(2767, 57, 34, 18, 0.0612006),
(2768, 58, 21, 18, 0.0378003),
(2769, 6, 4, 19, 0.0111111),
(2770, 7, 18, 19, 0.05),
(2771, 8, 32, 19, 0.0888888),
(2772, 9, 31, 19, 0.0861111),
(2773, 10, 49, 19, 0.136111),
(2774, 11, 77, 19, 0.213889),
(2775, 12, 138, 19, 0.383333),
(2776, 13, 129, 19, 0.358333),
(2777, 14, 210, 19, 0.583333),
(2778, 15, 244, 19, 0.677778),
(2779, 16, 383, 19, 1.06389),
(2780, 17, 396, 19, 1.1),
(2781, 18, 428, 19, 1.18889),
(2782, 19, 616, 19, 1.71111),
(2783, 20, 650, 19, 1.80556),
(2784, 21, 806, 19, 2.23889),
(2785, 22, 891, 19, 2.475),
(2786, 23, 1021, 19, 2.83611),
(2787, 24, 1042, 19, 2.89444),
(2788, 25, 1238, 19, 3.43889),
(2789, 26, 1275, 19, 3.54167),
(2790, 27, 1405, 19, 3.90278),
(2791, 28, 1489, 19, 4.13611),
(2792, 29, 1500, 19, 4.16667),
(2793, 30, 1556, 19, 4.32222),
(2794, 31, 1510, 19, 4.19444),
(2795, 32, 1645, 19, 4.56944),
(2796, 33, 1660, 19, 4.61111),
(2797, 34, 1457, 19, 4.04722),
(2798, 35, 1529, 19, 4.24722),
(2799, 36, 1492, 19, 4.14444),
(2800, 37, 1350, 19, 3.75),
(2801, 38, 1318, 19, 3.66111),
(2802, 39, 1170, 19, 3.25),
(2803, 40, 1147, 19, 3.18611),
(2804, 41, 985, 19, 2.73611),
(2805, 42, 893, 19, 2.48056),
(2806, 43, 736, 19, 2.04444),
(2807, 44, 674, 19, 1.87222),
(2808, 45, 594, 19, 1.65),
(2809, 46, 506, 19, 1.40556),
(2810, 47, 405, 19, 1.125),
(2811, 48, 279, 19, 0.775),
(2812, 49, 310, 19, 0.861111),
(2813, 50, 208, 19, 0.577778),
(2814, 51, 169, 19, 0.469444),
(2815, 52, 112, 19, 0.311111),
(2816, 53, 78, 19, 0.216667),
(2817, 54, 59, 19, 0.163889),
(2818, 55, 36, 19, 0.1),
(2819, 56, 13, 19, 0.0361111),
(2820, 57, 23, 19, 0.0638888),
(2821, 58, 14, 19, 0.0388888),
(2822, 2, 994, 20, 2.76111),
(2823, 3, 2020, 20, 5.61111),
(2824, 4, 3000, 20, 8.33333),
(2825, 5, 3989, 20, 11.0806),
(2826, 6, 4977, 20, 13.825),
(2827, 7, 5998, 20, 16.6611),
(2828, 8, 4999, 20, 13.8861),
(2829, 9, 4010, 20, 11.1389),
(2830, 10, 3017, 20, 8.38056),
(2831, 11, 1997, 20, 5.54722),
(2832, 12, 999, 20, 2.775),
(2833, 2, 996, 21, 2.76667),
(2834, 3, 1988, 21, 5.52222),
(2835, 4, 2998, 21, 8.32778),
(2836, 5, 4008, 21, 11.1333),
(2837, 6, 4966, 21, 13.7944),
(2838, 7, 6025, 21, 16.7361),
(2839, 8, 4999, 21, 13.8861),
(2840, 9, 4004, 21, 11.1222),
(2841, 10, 3006, 21, 8.35),
(2842, 11, 2001, 21, 5.55833),
(2843, 12, 1009, 21, 2.80278),
(2844, 2, 985, 22, 2.73611),
(2845, 3, 2001, 22, 5.55833),
(2846, 4, 2987, 22, 8.29722),
(2847, 5, 4000, 22, 11.1111),
(2848, 6, 5008, 22, 13.9111),
(2849, 7, 5978, 22, 16.6056),
(2850, 8, 5036, 22, 13.9889),
(2851, 9, 3997, 22, 11.1028),
(2852, 10, 3003, 22, 8.34167),
(2853, 11, 1996, 22, 5.54444),
(2854, 12, 1009, 22, 2.80278),
(2855, 2, 997, 23, 2.76944),
(2856, 3, 2025, 23, 5.625),
(2857, 4, 3017, 23, 8.38056),
(2858, 5, 3994, 23, 11.0944),
(2859, 6, 4983, 23, 13.8417),
(2860, 7, 5994, 23, 16.65),
(2861, 8, 4971, 23, 13.8083),
(2862, 9, 4010, 23, 11.1389),
(2863, 10, 3004, 23, 8.34444),
(2864, 11, 1995, 23, 5.54167),
(2865, 12, 1010, 23, 2.80556),
(2866, 2, 1002, 24, 2.78333),
(2867, 3, 2004, 24, 5.56667),
(2868, 4, 3021, 24, 8.39167),
(2869, 5, 4016, 24, 11.1556),
(2870, 6, 4998, 24, 13.8833),
(2871, 7, 5982, 24, 16.6167),
(2872, 8, 4986, 24, 13.85),
(2873, 9, 3994, 24, 11.0944),
(2874, 10, 2972, 24, 8.25556),
(2875, 11, 2017, 24, 5.60278),
(2876, 12, 1008, 24, 2.8),
(2877, 2, 999, 25, 2.775),
(2878, 3, 1999, 25, 5.55278),
(2879, 4, 3015, 25, 8.375),
(2880, 5, 4028, 25, 11.1889),
(2881, 6, 5003, 25, 13.8972),
(2882, 7, 5979, 25, 16.6083),
(2883, 8, 4986, 25, 13.85),
(2884, 9, 3986, 25, 11.0722),
(2885, 10, 2975, 25, 8.26389),
(2886, 11, 2021, 25, 5.61389),
(2887, 12, 1009, 25, 2.80278),
(2888, 2, 999, 26, 2.775),
(2889, 3, 2000, 26, 5.55556),
(2890, 4, 3001, 26, 8.33611),
(2891, 5, 3976, 26, 11.0444),
(2892, 6, 5009, 26, 13.9139),
(2893, 7, 5975, 26, 16.5972),
(2894, 8, 5003, 26, 13.8972),
(2895, 9, 4006, 26, 11.1278),
(2896, 10, 3019, 26, 8.38611),
(2897, 11, 2013, 26, 5.59167),
(2898, 12, 999, 26, 2.775);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`id_exp`) REFERENCES `experiment` (`id_exp`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;