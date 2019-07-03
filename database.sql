-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Cze 2019, 01:28
-- Wersja serwera: 10.3.15-MariaDB
-- Wersja PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `database`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `groups`
--

CREATE TABLE `groups` (
  `idGroups` int(11) NOT NULL,
  `group_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `groups`
--

INSERT INTO `groups` (`idGroups`, `group_name`) VALUES
(1, 'D\'Amore, Jerde and Hermiston'),
(2, 'Grimes, Larkin and Grady'),
(3, 'Anderson, Gulgowski and Fahey'),
(4, 'Altenwerth, McKenzie and Gutmann'),
(5, 'Kling-Gutmann');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `group_interests`
--

CREATE TABLE `group_interests` (
  `idGroup_interests` int(11) NOT NULL,
  `id_interest` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `group_interests`
--

INSERT INTO `group_interests` (`idGroup_interests`, `id_interest`, `id_group`) VALUES
(1, 8, 1),
(2, 3, 1),
(3, 9, 4),
(4, 6, 1),
(5, 16, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `group_messages`
--

CREATE TABLE `group_messages` (
  `idGroup_messages` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `group_messages`
--

INSERT INTO `group_messages` (`idGroup_messages`, `members_id`, `content`, `date`, `updated_at`, `created_at`) VALUES
(1, 22, 'Eos est qui hic totam eos. Deleniti nostrum assumenda cupiditate ea sed. Mollitia voluptas necessitatibus reprehenderit fugit veniam.', NULL, '0000-00-00', '0000-00-00'),
(2, 1, 'Odio cum porro et sequi delectus corporis ipsum. Sapiente blanditiis occaecati iste et. Facere quia corporis officiis quia aperiam.', NULL, '0000-00-00', '0000-00-00'),
(3, 11, 'At corporis officia aliquid assumenda. Ipsum ipsum nemo neque cupiditate excepturi id aperiam quas. Est quidem non molestias culpa quis perferendis odio.', NULL, '0000-00-00', '0000-00-00'),
(4, 25, 'Aut similique quod ex neque qui. Sit illum fugit minima tempora doloremque repellat sunt. Deserunt voluptas beatae facilis vel vero. Sed inventore nisi modi libero quam explicabo.', NULL, '0000-00-00', '0000-00-00'),
(5, 16, 'Totam dicta aliquid ut sunt dignissimos dolores. Beatae laudantium libero error corporis numquam laudantium. Officia nam accusamus quasi aut. Praesentium natus possimus quas provident ducimus.', NULL, '0000-00-00', '0000-00-00'),
(6, 4, 'Dolorem consectetur ullam tempora est doloribus consequuntur dolorem. Sint non voluptas libero quo rerum ratione. Corrupti quia tenetur omnis corrupti.', NULL, '0000-00-00', '0000-00-00'),
(7, 1, 'Ad sed iusto quibusdam nam. Iste quam et in eius. Cum nostrum non illum placeat enim. Et accusantium iusto saepe architecto sed voluptas.', NULL, '0000-00-00', '0000-00-00'),
(8, 20, 'Voluptas facere ut repellendus occaecati reiciendis quo. Nostrum maiores dolores et qui. Est esse qui voluptates iste numquam.', NULL, '0000-00-00', '0000-00-00'),
(9, 16, 'Est soluta ut et inventore in et. Esse dolores sit reprehenderit quam. Voluptatem quia debitis eaque est in.', NULL, '0000-00-00', '0000-00-00'),
(10, 2, 'Nesciunt voluptatem id eos adipisci quaerat quae aut. Illum sit a consequatur. Fugit et vero id ex sunt voluptas.', NULL, '0000-00-00', '0000-00-00'),
(11, 2, 'Omnis ipsam aliquam voluptatem aut. Voluptatem deleniti ut at recusandae magni aperiam. Facilis qui mollitia nemo sed velit odit.', NULL, '0000-00-00', '0000-00-00'),
(12, 17, 'Ea dolores officia qui labore libero. Laudantium et veniam ut esse voluptatibus consequatur eveniet.', NULL, '0000-00-00', '0000-00-00'),
(13, 23, 'Dignissimos deserunt dolorum eos quis. Tempora molestiae reiciendis voluptas facilis. Non id tenetur modi. Laborum quo dolor placeat est aut vel commodi.', NULL, '0000-00-00', '0000-00-00'),
(14, 23, 'Et nam consequatur non id quo fuga aperiam aliquam. Non recusandae sit qui omnis voluptatem.', NULL, '0000-00-00', '0000-00-00'),
(15, 7, 'Doloremque nihil natus illum et. Provident repellendus quis consequatur rerum aut dolores. Aut tempora vel nihil quidem quo dolorem. Ea omnis magnam voluptates illum voluptatibus.', NULL, '0000-00-00', '0000-00-00'),
(16, 5, 'Quae et laboriosam tempora omnis omnis est expedita sequi. Cupiditate sed sint eveniet sapiente. Illum quasi ab eaque reiciendis. Quidem et magnam nesciunt vel.', NULL, '0000-00-00', '0000-00-00'),
(17, 1, 'Laudantium eius ducimus sequi et temporibus a. Occaecati reiciendis asperiores rerum. Similique in quam facilis iusto. Nihil quam iusto eum consequatur ad et rerum eum.', NULL, '0000-00-00', '0000-00-00'),
(18, 9, 'Ut nemo aut animi. Sed molestiae culpa neque est. Rerum atque accusantium voluptas voluptatem aliquam similique. Aperiam est at animi commodi. Vel rerum voluptas voluptas quasi itaque est architecto.', NULL, '0000-00-00', '0000-00-00'),
(19, 20, 'Nam suscipit modi est dignissimos non unde. Alias aspernatur molestiae id corporis vel quo quia. Officiis magnam fuga dolor illo dolore. Velit in sint fuga pariatur impedit praesentium.', NULL, '0000-00-00', '0000-00-00'),
(20, 23, 'Et ratione vel repellat facere quisquam modi. Molestias nesciunt ut est autem eos pariatur. Est voluptas ut animi quam quos officiis eos. Magni reprehenderit sit veritatis sit.', NULL, '0000-00-00', '0000-00-00'),
(21, 19, 'Ipsum et iure vitae dolore rerum recusandae. Assumenda tempora sint architecto excepturi sunt. Ullam cum ipsa nemo ut assumenda. Blanditiis officia fugiat quia est omnis rerum.', NULL, '0000-00-00', '0000-00-00'),
(22, 16, 'Libero sed nisi quis a nesciunt. Quia sunt dignissimos quibusdam. Sed sit aut cumque blanditiis. Omnis sit explicabo reiciendis eligendi quae quasi molestiae rerum.', NULL, '0000-00-00', '0000-00-00'),
(23, 9, 'Sit molestias ratione aliquam nihil aut animi. Consectetur repellendus facilis est explicabo. Eos aspernatur autem dolorum sit.', NULL, '0000-00-00', '0000-00-00'),
(24, 3, 'Molestiae accusamus in aut quia ut est nihil eaque. Suscipit alias optio id eos. Recusandae nulla ut deleniti sapiente consequatur et quaerat.', NULL, '0000-00-00', '0000-00-00'),
(25, 6, 'Totam est nam maiores sit ipsum aut aut. Ratione rerum aliquam sunt rerum quidem. Sint officiis voluptatem eligendi est. Rerum cupiditate aut repudiandae dolore rerum.', NULL, '0000-00-00', '0000-00-00'),
(26, 1, 'Porro a vel nesciunt. Dolorem quia harum quis aut aut et ea itaque. Veritatis nam ullam nihil sint aut alias fuga. Et ut nam temporibus distinctio blanditiis.', NULL, '0000-00-00', '0000-00-00'),
(27, 21, 'Soluta quia dolores nisi necessitatibus. Dolor vel earum rerum sed laboriosam placeat.', NULL, '0000-00-00', '0000-00-00'),
(28, 8, 'Consequatur minima perspiciatis eius nihil corporis. Est pariatur et aliquid ut aut vel sit. Et voluptas quidem maiores. Deleniti voluptate nobis tenetur quae totam quisquam.', NULL, '0000-00-00', '0000-00-00'),
(29, 11, 'Doloremque eum iste rem ut adipisci et nihil. Magni incidunt saepe enim voluptatem.', NULL, '0000-00-00', '0000-00-00'),
(30, 5, 'Optio aliquam deserunt voluptas velit qui et alias praesentium. Voluptatem consequatur omnis mollitia voluptates quos sapiente ad. Rerum et qui fugiat amet nihil facere.', NULL, '0000-00-00', '0000-00-00'),
(31, 7, 'Unde et qui exercitationem consequatur similique error minima. Sapiente suscipit non at et. Repudiandae officia consequatur a quasi. Aperiam aut eius maiores dignissimos similique omnis voluptatum.', NULL, '0000-00-00', '0000-00-00'),
(32, 21, 'Consequatur quidem nobis est sequi distinctio adipisci. Et omnis dolor consequatur voluptatibus quia sed sequi. Non corporis provident aut esse enim maxime eaque voluptatum.', NULL, '0000-00-00', '0000-00-00'),
(33, 20, 'Eum quisquam saepe qui qui. Est aliquam velit accusantium. Saepe provident ut omnis aut quidem doloribus. Reprehenderit sapiente deserunt quia recusandae et.', NULL, '0000-00-00', '0000-00-00'),
(34, 18, 'Ipsa maxime qui explicabo magnam quae deleniti iusto consectetur. Rem voluptatum debitis aut quas. Ipsum voluptas aut sed. Eos non neque repellat ut.', NULL, '0000-00-00', '0000-00-00'),
(35, 4, 'Ducimus excepturi harum alias quia voluptas repellendus quis. Nesciunt esse voluptatem labore at suscipit quos voluptatem necessitatibus. Harum neque et explicabo rerum vel numquam.', NULL, '0000-00-00', '0000-00-00'),
(36, 3, 'Vitae aut et dicta possimus. Suscipit eos reiciendis facere omnis. Aut aut fugit dolorem dolores aliquid dignissimos.', NULL, '0000-00-00', '0000-00-00'),
(37, 14, 'Quae rerum ex debitis vel ea quas consequatur. Quae sed necessitatibus et odit fugit quia culpa et. Quisquam ut quo quibusdam aliquam numquam repellendus.', NULL, '0000-00-00', '0000-00-00'),
(38, 21, 'Porro culpa et corrupti et quia. Et omnis beatae facilis non. Iusto tempore explicabo unde amet dignissimos. Qui doloremque quidem ut consequuntur consequatur autem.', NULL, '0000-00-00', '0000-00-00'),
(39, 8, 'Incidunt non facilis consectetur ad laborum ut. Quae amet deserunt aliquam culpa doloremque. Magni sed est quo quisquam sed.', NULL, '0000-00-00', '0000-00-00'),
(40, 17, 'Modi minus aut molestiae animi saepe voluptas et. Ea quia ut autem autem.', NULL, '0000-00-00', '0000-00-00'),
(41, 25, 'Culpa eius laboriosam amet doloribus labore. Nesciunt et distinctio facere corrupti recusandae libero. Qui facilis nobis doloribus.', NULL, '0000-00-00', '0000-00-00'),
(42, 17, 'Consequuntur voluptatem et commodi error atque dolor aut vel. Aut dicta corrupti minima consectetur. Dolorem veniam qui et aut vero autem.', NULL, '0000-00-00', '0000-00-00'),
(43, 12, 'Qui eum est consequatur possimus. Qui sequi nam temporibus exercitationem et. Ea ipsa ipsa et. Vel et saepe quidem molestiae reprehenderit.', NULL, '0000-00-00', '0000-00-00'),
(44, 4, 'Ipsa ut voluptatibus dolore vel officiis rerum voluptatem voluptates. Amet aut maiores deleniti et numquam quis. Consequatur quia omnis reprehenderit nulla dolores natus.', NULL, '0000-00-00', '0000-00-00'),
(45, 21, 'Facilis et repellat modi tempore necessitatibus porro vel. Saepe et nobis incidunt quisquam quis. Est ipsa explicabo repudiandae.', NULL, '0000-00-00', '0000-00-00'),
(46, 1, 'Dolorem placeat repudiandae rerum voluptatum sint. Et quia praesentium qui quidem laudantium possimus vel blanditiis. Magni et nemo velit voluptates excepturi. Minus odio enim est qui nemo.', NULL, '0000-00-00', '0000-00-00'),
(47, 24, 'Illo quod et cumque aut est. Rerum aut ratione quisquam dolores aut. Esse eius at sit quos qui explicabo dolorum esse. Qui eum corporis enim repellat dicta minus voluptas hic.', NULL, '0000-00-00', '0000-00-00'),
(48, 22, 'Voluptatem et recusandae sed quas non quasi accusamus. Rerum et inventore hic mollitia id ad. Temporibus et laboriosam sunt quae. Alias ut magnam officiis officiis quod quo quo.', NULL, '0000-00-00', '0000-00-00'),
(49, 11, 'Culpa porro et dolorem aut ipsa eos. Voluptates qui blanditiis quas ea amet dolor. Ullam quod blanditiis libero neque.', NULL, '0000-00-00', '0000-00-00'),
(50, 4, 'Quas rem repellat temporibus voluptate omnis autem. Qui at sed asperiores reprehenderit. Ex distinctio id reiciendis mollitia. Sequi quia aspernatur consectetur officiis quia.', NULL, '0000-00-00', '0000-00-00'),
(51, 8, 'Molestiae beatae voluptatem aut nulla enim. Et non eaque nostrum accusamus sapiente ipsam.', NULL, '0000-00-00', '0000-00-00'),
(52, 14, 'Dolore numquam sed non velit magni laudantium. Est magnam eos delectus velit repellendus quia. Et voluptas reiciendis hic vel aliquid.', NULL, '0000-00-00', '0000-00-00'),
(53, 25, 'Sint quidem vitae sed quasi. Non sit provident natus rem delectus. Enim quas doloremque consequatur dicta quis corporis quaerat. Iusto iste recusandae error maxime non accusantium.', NULL, '0000-00-00', '0000-00-00'),
(54, 8, 'Aut soluta atque et ut fugiat aut. Enim odio corporis ea optio adipisci aspernatur officiis. Dolor laboriosam sed deleniti quis.', NULL, '0000-00-00', '0000-00-00'),
(55, 1, 'Doloribus et sapiente enim. Ut soluta incidunt labore sapiente. Consequuntur vel minus architecto autem iure eum cumque.', NULL, '0000-00-00', '0000-00-00'),
(56, 3, 'Dolor est nobis est illum accusamus. Consequatur cupiditate non quisquam reprehenderit id debitis. Molestias voluptas iure neque repudiandae dolorem. Et voluptatibus quibusdam est nam expedita.', NULL, '0000-00-00', '0000-00-00'),
(57, 18, 'Alias et delectus est voluptas rerum. Voluptas deleniti assumenda quia recusandae molestias explicabo.', NULL, '0000-00-00', '0000-00-00'),
(58, 23, 'Facere est dolores officiis ipsam. Architecto velit minima delectus sed sed ipsa fuga necessitatibus. Quibusdam soluta modi ex ratione quo saepe earum. Dolores deserunt eaque fuga neque eius.', NULL, '0000-00-00', '0000-00-00'),
(59, 9, 'Ut vero nesciunt blanditiis aut sed ullam est. Maxime aut cum voluptates cupiditate. Accusantium mollitia cumque minus voluptas. Voluptatem ratione distinctio placeat sed.', NULL, '0000-00-00', '0000-00-00'),
(60, 8, 'Itaque porro rerum quidem placeat quasi assumenda sit magnam. Deleniti et molestiae molestiae quia repudiandae accusantium fuga.', NULL, '0000-00-00', '0000-00-00'),
(61, 4, 'Nam quod animi quia sit. Eum doloremque quaerat repudiandae quis temporibus eum voluptates. Non rerum dignissimos quia nesciunt.', NULL, '0000-00-00', '0000-00-00'),
(62, 1, 'Nulla quisquam natus itaque dolorum. Dolorem cupiditate et dolorum consectetur culpa. Facilis alias veritatis voluptates.', NULL, '0000-00-00', '0000-00-00'),
(63, 12, 'Dolorem ut non non ratione velit aliquam. Placeat quod qui ab porro. Quod natus error culpa facilis voluptatibus harum et.', NULL, '0000-00-00', '0000-00-00'),
(64, 17, 'Qui consequatur ex repudiandae ad veritatis et qui. Officia et corrupti optio unde autem aut amet. Corporis quod ullam et officiis officia.', NULL, '0000-00-00', '0000-00-00'),
(65, 24, 'Cum unde distinctio repellat non omnis eligendi. Distinctio consequatur beatae excepturi porro quia. Harum dicta ea repudiandae distinctio dolor.', NULL, '0000-00-00', '0000-00-00'),
(66, 17, 'Deleniti qui maxime qui quia nihil iusto. Quia excepturi aspernatur et neque. Doloribus hic iste nihil molestiae. Suscipit incidunt atque neque iusto quas perspiciatis.', NULL, '0000-00-00', '0000-00-00'),
(67, 16, 'Enim quaerat eligendi minus soluta rerum error inventore. Voluptatem numquam deserunt provident ut. Autem nostrum non aut vitae iure perferendis laborum. Debitis provident inventore quod.', NULL, '0000-00-00', '0000-00-00'),
(68, 16, 'Laborum et qui in repellat est unde. Adipisci rerum doloremque laudantium dolor. Aut nobis et harum. Explicabo quasi asperiores aliquid rerum et et.', NULL, '0000-00-00', '0000-00-00'),
(69, 12, 'Illo ab facilis ipsa aut quas. Dolore voluptatem exercitationem est non dolores dolor. Quis perspiciatis est perferendis. Deserunt aut eius necessitatibus in unde assumenda omnis.', NULL, '0000-00-00', '0000-00-00'),
(70, 2, 'Molestias aspernatur quia laudantium totam. Voluptatem facere quo in. Error et assumenda sapiente debitis dolores.', NULL, '0000-00-00', '0000-00-00'),
(71, 2, 'Fugit sit voluptatem aut autem qui consequatur. Et et est autem molestiae. Aut aut quia dolorem et tempore sunt doloribus.', NULL, '0000-00-00', '0000-00-00'),
(72, 18, 'Quo ea fugiat nobis reiciendis. Aut in repellat inventore dolores optio. Sed eum explicabo at commodi voluptatem. Quidem adipisci in animi eaque nam quas quas.', NULL, '0000-00-00', '0000-00-00'),
(73, 20, 'Ut voluptate aliquid eos alias qui ut quis quibusdam. Adipisci earum omnis tempora nobis. Nihil minima ut consequatur libero itaque assumenda impedit.', NULL, '0000-00-00', '0000-00-00'),
(74, 18, 'Blanditiis facere perferendis voluptatibus nihil officia. Recusandae qui dolore aut iure.', NULL, '0000-00-00', '0000-00-00'),
(75, 22, 'Saepe non velit animi delectus architecto impedit aut. Ut et quia eum totam. Voluptates laboriosam molestiae vero nam. Rerum harum consectetur itaque qui ipsa dicta dolor.', NULL, '0000-00-00', '0000-00-00'),
(76, 23, 'dasdsa', '2019-06-17', '2019-06-17', '2019-06-17'),
(77, 23, 'trial text', '2019-06-17', '2019-06-17', '2019-06-17'),
(78, 23, 'trikafasd', '2019-06-17', '2019-06-17', '2019-06-17'),
(79, 23, 'trikafasd', '2019-06-17', '2019-06-17', '2019-06-17'),
(80, 16, 'nie mam nic do powiedzenia', '2019-06-17', '2019-06-17', '2019-06-17'),
(81, 23, 'super', '2019-06-17', '2019-06-17', '2019-06-17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `interests`
--

CREATE TABLE `interests` (
  `idInterests` int(11) NOT NULL,
  `interest_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `interests`
--

INSERT INTO `interests` (`idInterests`, `interest_name`) VALUES
(1, 'Gainsboro'),
(2, 'WhiteSmoke'),
(3, 'DeepPink'),
(4, 'FloralWhite'),
(5, 'MediumSeaGreen'),
(6, 'Magenta'),
(7, 'Olive'),
(8, 'LightCyan'),
(9, 'Tomato'),
(10, 'Olive'),
(11, 'MediumPurple'),
(12, 'Thistle'),
(13, 'Sienna'),
(14, 'RosyBrown'),
(15, 'AliceBlue'),
(16, 'HoneyDew'),
(17, 'PaleVioletRed');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `members`
--

CREATE TABLE `members` (
  `idMembers` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `members`
--

INSERT INTO `members` (`idMembers`, `id_user`, `id_group`, `created_at`, `updated_at`) VALUES
(1, 6, 4, NULL, NULL),
(2, 16, 5, NULL, NULL),
(3, 21, 5, NULL, NULL),
(4, 21, 4, NULL, NULL),
(5, 18, 4, NULL, NULL),
(6, 18, 1, NULL, NULL),
(7, 2, 3, NULL, NULL),
(8, 16, 1, NULL, NULL),
(9, 3, 4, NULL, NULL),
(10, 6, 1, NULL, NULL),
(11, 12, 3, NULL, NULL),
(12, 11, 1, NULL, NULL),
(13, 5, 5, NULL, NULL),
(14, 16, 5, NULL, NULL),
(15, 15, 5, NULL, NULL),
(16, 1, 4, NULL, NULL),
(17, 25, 2, NULL, NULL),
(18, 13, 4, NULL, NULL),
(19, 10, 1, NULL, NULL),
(20, 15, 2, NULL, NULL),
(21, 20, 2, NULL, NULL),
(22, 15, 5, NULL, NULL),
(23, 1, 1, NULL, NULL),
(24, 12, 1, NULL, NULL),
(25, 24, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `messages`
--

CREATE TABLE `messages` (
  `idMessages` int(11) NOT NULL,
  `id_author` int(11) NOT NULL,
  `message` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `messages`
--

INSERT INTO `messages` (`idMessages`, `id_author`, `message`, `date`, `created_at`, `updated_at`) VALUES
(1, 8, 'Sequi delectus fugiat velit ratione. Sed quo consequuntur qui ipsa illo. Est doloremque qui aut non repellat.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(2, 16, 'Qui doloribus et totam facere est. Dolores sit deleniti minima repellendus. Iure praesentium labore voluptatem itaque. Quia blanditiis est ducimus eum fugiat placeat.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(3, 20, 'Iusto dolor occaecati ab hic aut. Impedit laborum illum saepe expedita. Accusantium eos laborum aspernatur.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(4, 10, 'Perspiciatis facere explicabo accusamus facilis velit consequatur. Omnis quos id atque facilis.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(5, 14, 'Qui repudiandae repudiandae animi dignissimos. Error sit unde quia aut. Quae delectus dolorum architecto possimus sint fuga quae. Officia voluptas dolorum sunt aliquam occaecati sed.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(6, 5, 'Quia quidem eos quae impedit. Possimus dolor saepe quis repudiandae ut autem rem. Nisi iure similique qui.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(7, 23, 'Perspiciatis in vel voluptatem sit dicta voluptas modi facere. Ratione odit eos aspernatur sunt necessitatibus et soluta molestiae. Fugit et facere molestias omnis consequuntur est.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(8, 16, 'Maxime blanditiis voluptatem error eum nisi qui autem explicabo. Et ab odio recusandae.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(9, 8, 'Animi itaque perferendis vero et et sint. Quaerat accusamus deserunt molestias. Est deserunt doloremque quae similique excepturi officiis suscipit. Reprehenderit et sunt nihil nihil magnam neque.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(10, 11, 'Qui quia soluta quia quisquam. Sunt possimus assumenda iusto repudiandae odio. Dolorem ut sit cupiditate beatae omnis.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(11, 10, 'Iste dolore magni consequatur voluptatem. Laudantium laudantium rem vel ut quos. Aut ut ut animi nemo quis ipsam.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(12, 17, 'Suscipit molestiae harum autem qui. Eveniet esse vel totam fuga nobis accusamus voluptatem rerum. Enim quibusdam eum quibusdam.', '2019-06-15 14:16:47', '0000-00-00', '0000-00-00'),
(13, 17, 'Mollitia eligendi velit atque possimus quas. Vel voluptate omnis sunt est inventore. Itaque recusandae distinctio tempore eaque labore quia labore.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(14, 3, 'Odit assumenda deserunt totam illo. Ad est est optio et sapiente. Ut atque a qui sit optio voluptas. Qui modi necessitatibus voluptates nulla voluptatem porro distinctio sint.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(15, 17, 'Suscipit rem omnis deleniti amet. Eum non quas tempora molestiae. Itaque ut adipisci velit qui.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(16, 14, 'Corporis consequatur sit qui vel at velit iste. Sed placeat aspernatur minima enim. Quae dolorem deleniti ipsam voluptates.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(17, 25, 'Ut voluptatem aperiam error nam vitae. Inventore iste aliquam aut quia placeat occaecati vero. Dignissimos reiciendis libero facilis vel quo quo voluptatem.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(18, 19, 'Ut recusandae ut perferendis perferendis quidem. Dignissimos ipsum temporibus officia in. Ipsam officia facilis qui sit voluptatum magnam.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(19, 20, 'Inventore molestiae corporis consequatur iure. Et minima sit esse amet tempore sed eum. Ea quo necessitatibus nihil perspiciatis rerum velit. Autem mollitia quia ratione voluptatum est est.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(20, 4, 'Nihil est quam ratione vel ex aliquid saepe quaerat. Fugit ipsam consequuntur explicabo. Enim corrupti facere aliquam molestiae natus aperiam dolorem.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(21, 15, 'Ducimus in et in sed praesentium. Quia autem rerum eius. Voluptatem ut illo quibusdam quaerat minus.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(22, 15, 'Hic et recusandae doloribus et et non pariatur. Quod culpa sed dolores alias totam eaque porro a. Voluptatem aspernatur eos quas qui.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(23, 25, 'Autem voluptatem sequi nostrum delectus. Voluptas neque et sunt dignissimos est inventore explicabo. Ab illo incidunt et illo et itaque. Vero itaque non aut ut fugit expedita sit quis.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(24, 19, 'Hic debitis quisquam non eum. Nisi consectetur tempora doloremque laudantium qui quidem vitae. Ratione quasi consequatur iure eveniet. Adipisci enim sed porro.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(25, 22, 'Doloribus fuga sed rerum aut quo et sint. Veniam maxime dicta sit ex cupiditate maxime nobis. Nobis et quia fuga et non. Voluptatem sit harum laudantium molestias qui ad.', '2019-06-15 14:16:48', '0000-00-00', '0000-00-00'),
(26, 17, 'Est et consequatur temporibus deleniti. Voluptas laboriosam qui soluta qui iure. Qui nisi voluptatem error voluptas ut et consequuntur.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(27, 3, 'Laudantium sed repellendus voluptate delectus. Reprehenderit tempora perspiciatis aut neque magni dolor. Dolorem omnis voluptates nulla voluptatum enim. Itaque incidunt placeat recusandae quo.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(28, 24, 'Impedit temporibus sit repudiandae. Consequuntur mollitia aut dolorem vel quibusdam sed. Minus aut quam enim qui delectus ea.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(29, 14, 'Unde dolorem dolor quia ex perspiciatis quaerat. Quaerat voluptas est ullam consequatur voluptatem. Corporis expedita id atque qui. Optio corporis et optio praesentium reprehenderit.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(30, 10, 'Quo placeat adipisci voluptates cumque est. Ut vero cumque id est quam.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(31, 23, 'Cupiditate vero alias eligendi possimus. Fugiat nostrum eius ullam voluptatibus culpa dolorem rerum. Officiis sit praesentium eveniet culpa.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(32, 25, 'Esse molestiae soluta ipsa vel. Ullam distinctio quidem voluptatem delectus consequatur. Blanditiis qui iste rem quasi nihil omnis.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(33, 9, 'Omnis quidem consequatur ducimus. Libero voluptatem eaque architecto rerum vitae. Similique molestiae quibusdam aperiam aut eveniet.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(34, 23, 'Accusantium rerum officiis atque aut expedita. Similique animi nobis asperiores ipsa dolores. Porro suscipit et dignissimos. Labore nulla sint consequuntur odio.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(35, 17, 'Ipsa repellat expedita dicta ipsa dolore neque placeat. Qui explicabo voluptatem quia doloremque alias et. Corrupti qui eos doloremque aliquid nobis est facere aliquam.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(36, 9, 'Molestiae ab sed ipsum aut hic ea. Illum dignissimos alias et iusto rerum soluta consectetur qui. Error explicabo et facere vitae qui fugiat.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(37, 20, 'Molestias officiis omnis harum. Id rerum expedita voluptate occaecati cupiditate nesciunt. Vel laboriosam consectetur sit asperiores dolorem.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(38, 18, 'Itaque id atque ut aut. Ea doloremque voluptas voluptatem beatae sit eligendi. Doloremque velit eaque quo placeat praesentium sed voluptatem.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(39, 16, 'Quasi impedit neque qui atque magni. Rerum adipisci eum unde et fugit. Voluptatem temporibus quia voluptatibus placeat ad. Sed animi iusto est. Blanditiis aliquid ut rerum vel nihil.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(40, 9, 'Exercitationem eius dicta ab numquam. Cupiditate occaecati dolorum quaerat sed. Ipsum quo ducimus voluptatem incidunt qui ducimus ipsum. Rerum vero aspernatur earum quia est.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(41, 25, 'Sit dolores vitae reprehenderit debitis magnam debitis. Aspernatur sed ut vel doloribus quam consectetur qui. Officia a ullam soluta.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(42, 2, 'Iure sint aut dolor magnam ipsa sed. Et ipsum debitis sunt ab aperiam dolor. Quisquam reiciendis quia ipsa vel.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(43, 6, 'Tempora et et eos magnam magnam odit et. Eius est quam a. Sapiente excepturi sed dignissimos.', '2019-06-15 14:16:49', '0000-00-00', '0000-00-00'),
(44, 3, 'Cupiditate praesentium ab tempora tempora et. Asperiores consequuntur qui commodi eius quia non. Modi quasi et expedita labore qui non.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(45, 5, 'Ea beatae voluptas cupiditate nisi. In sequi et quae aspernatur ut. Beatae minus iste consequatur quisquam vel nam in. Tenetur aut sed commodi sed.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(46, 20, 'Et dolores vero repudiandae aspernatur perspiciatis quos. Vero dolores exercitationem rem blanditiis.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(47, 8, 'Minus dolorem optio et. Et quas commodi et ut. Sint nam excepturi animi consequatur debitis ut deserunt.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(48, 15, 'Nihil voluptatem assumenda et. Et non aut id ipsam sint. Qui mollitia sunt temporibus.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(49, 17, 'Neque nam numquam est est suscipit. Nihil tempora ipsa beatae necessitatibus odio neque. Sed laboriosam recusandae porro quia. Est rem aut quas corporis. Aliquid aut dolores in quo consequuntur.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(50, 13, 'Natus sunt a ut officiis. Sit et et aut. Deserunt doloribus est et exercitationem animi veritatis.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(51, 19, 'Architecto atque minus occaecati velit voluptatum dolores. Cum quis pariatur assumenda impedit officiis et maiores. Nemo quod aspernatur repellendus sapiente.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(52, 21, 'Voluptas facilis quis ut alias vero. Et ea eum minus ipsum modi aut aspernatur.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(53, 7, 'Quia vero earum reprehenderit ut. Qui est et qui explicabo impedit veritatis. Est ut sunt quo alias quibusdam. Nisi provident nostrum repudiandae voluptatem deleniti dolor blanditiis.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(54, 7, 'Earum facilis assumenda alias. Est est vel incidunt veritatis quisquam nobis.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(55, 20, 'Et vel voluptatem magnam a expedita. Sint et aut repellendus ut. Cumque accusantium facilis quis sequi quo est. Eos repudiandae quia qui quis minus.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(56, 4, 'Reprehenderit at aut autem eum et sunt. Impedit quibusdam perspiciatis vero sint et consequatur vero. Qui aut distinctio vel et minima.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(57, 14, 'Soluta enim vero dolorem totam inventore. Quia nemo unde sunt occaecati voluptatem voluptatem consequatur. Molestiae architecto totam rerum.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(58, 14, 'Explicabo et facere eos non. Nostrum praesentium quidem veritatis quis dolor. Et saepe vitae qui id veniam sapiente. Est id dolores impedit iste harum.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(59, 11, 'Quam sit et est est rerum adipisci itaque eaque. Unde quod eos a esse voluptatem qui consequuntur qui. Consequatur ut ad voluptatum deleniti voluptatem rerum sit et.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(60, 5, 'Explicabo enim quidem fuga ab rerum. Sunt occaecati praesentium est et. Consectetur sed aperiam corrupti et quasi sapiente. Facere sunt ut similique quos quisquam vitae.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(61, 17, 'Rerum dolores et consequatur qui rerum pariatur. Odio aut possimus quia inventore saepe vitae. Qui nemo ab ut corrupti.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(62, 16, 'Quaerat facilis et dolor voluptas. Minima unde voluptatem sunt ullam. Dolorem ut illum maiores eaque nihil.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(63, 2, 'Nihil explicabo ab et. Corporis doloremque tempore aut nostrum ut quas et numquam. Praesentium atque magni nostrum fugit non est quis. Illo nemo consequuntur ad explicabo quasi et.', '2019-06-15 14:16:50', '0000-00-00', '0000-00-00'),
(64, 11, 'Minima dolore voluptas delectus. Provident ducimus accusantium quo impedit dolorum ea repudiandae aperiam. Deleniti eius cum quis nihil numquam in. Nesciunt ut tempore eos ab qui facilis aut.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(65, 9, 'Itaque repellat repellendus consequuntur quod in. Ipsa et minima vel. Quis ullam id vero et perspiciatis. Aperiam et repellendus voluptatibus consequatur cupiditate.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(66, 19, 'Autem sint fugit quisquam unde adipisci omnis. Corrupti tenetur sit aut ut. Accusamus voluptates quia autem recusandae iusto commodi dignissimos.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(67, 6, 'Et quo modi delectus quos modi sed. Aut numquam odit esse voluptatum dolorem ut. Modi et rerum sapiente quia consequatur alias.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(68, 25, 'Cumque qui esse in sed culpa quisquam. Pariatur impedit fuga et. Dolores suscipit tenetur quidem neque voluptate odit.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(69, 5, 'Dolorem quisquam et debitis accusantium aspernatur molestiae dolorem. Enim consequatur repellendus soluta sunt itaque. Itaque dolores aperiam adipisci.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(70, 8, 'Harum aliquam sed autem et consequatur repellendus. Ut commodi officiis vel sit consequatur. Ipsum saepe nihil repellat ipsum eaque sint. Aut excepturi neque autem quo qui aspernatur qui et.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(71, 10, 'Et quia ad nemo tempore sint. Laudantium quia ipsa et molestiae. Repellendus velit aliquid distinctio in autem. Voluptatum debitis consectetur dignissimos quia et.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(72, 11, 'Commodi voluptatem natus soluta fugit aperiam consectetur maxime. Quis ratione culpa cupiditate et corporis vero aut. Eaque dolorem facilis exercitationem eum neque.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(73, 1, 'Nam neque unde quae eligendi nobis omnis. Totam quibusdam doloribus expedita.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(74, 8, 'Consequuntur libero iusto nihil voluptatem sint occaecati et porro. Ex ut minima et. Quia dolor saepe voluptas corrupti molestiae et quasi sit.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(75, 13, 'Assumenda fugit suscipit molestiae corrupti delectus. Quia alias non quibusdam repellat officia. Voluptate est blanditiis et architecto minus.', '2019-06-15 14:16:51', '0000-00-00', '0000-00-00'),
(76, 1, 'o moj boze', '2019-06-17 23:11:25', '2019-06-17', '2019-06-17'),
(77, 1, 'o moj boze', '2019-06-17 23:11:44', '2019-06-17', '2019-06-17'),
(78, 1, 'o moj boze', '2019-06-17 23:13:13', '2019-06-17', '2019-06-17'),
(79, 1, 'nie wiem o co chodzi', '2019-06-17 23:13:45', '2019-06-17', '2019-06-17'),
(80, 1, 'matko swieta XD', '2019-06-17 23:13:58', '2019-06-17', '2019-06-17'),
(81, 7, 'fuck', '2019-06-17 23:26:28', '2019-06-17', '2019-06-17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(82, '2019_01_21_201344_create_users_table', 1),
(83, '2019_01_21_215754_create_messages_table', 1),
(84, '2019_01_21_221126_create_interests_table', 1),
(85, '2019_01_21_221303_create_groups_table', 1),
(86, '2019_01_21_221513_create_warns_table', 1),
(87, '2019_01_21_222004_create_users_interests_table', 1),
(88, '2019_01_21_222316_create_group_interests_table', 1),
(89, '2019_01_21_223329_create_members_table', 1),
(90, '2019_01_21_223730_create_group_messages_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nick` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `nick`, `role`) VALUES
(1, 'E4RUK', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Yesenia Larkin', 1),
(2, 'ozZnf', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Dr. Tia Hudson', 1),
(3, 'rw3TC', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Miss Samanta Simonis', 2),
(4, 'gi7a9', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Dr. Reginald Gaylord MD', 2),
(5, '00q93', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Jade Satterfield', 3),
(6, '2Kxih', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Merritt Willms V', 0),
(7, 'qt9Mn', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Miss Jazlyn Deckow IV', 0),
(8, 'LUonb', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Bernardo Tremblay', 3),
(9, 'sUBlW', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Mrs. Christina Ward PhD', 0),
(10, '2vK1u', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Benton Graham', 1),
(11, 'q62pF', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Daron Kunze', 3),
(12, 'eYnQ9', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Jaleel Hermiston', 1),
(13, 'XKAyv', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Prof. Eduardo Schinner DDS', 0),
(14, 'RFrSs', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Destany Okuneva DVM', 2),
(15, 'ZbD8P', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Foster Mante DDS', 0),
(16, 'owsFY', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Rasheed Veum', 1),
(17, 'EGAVl', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Zelda Barton', 2),
(18, 'GovR5', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Rosella Shields', 1),
(19, 'RR2NJ', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Pasquale Medhurst', 1),
(20, 'N6ltU', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Emmie Daugherty III', 1),
(21, 'Z3Gd8', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Ally Waelchi', 1),
(22, 'mpGjg', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Misael Heller', 0),
(23, '7b9MW', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Theresia Green', 0),
(24, 'LACxp', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Dr. Rupert Jast IV', 3),
(25, 'Qe19A', '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri', 'Adella Larkin', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_interests`
--

CREATE TABLE `user_interests` (
  `idUser_interests` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_interest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `user_interests`
--

INSERT INTO `user_interests` (`idUser_interests`, `id_user`, `id_interest`) VALUES
(1, 8, 4),
(2, 3, 10),
(3, 1, 16),
(4, 25, 9),
(5, 3, 14),
(6, 1, 9),
(7, 7, 14),
(8, 13, 12),
(9, 24, 7),
(10, 8, 1),
(11, 17, 16),
(12, 13, 5),
(13, 12, 6),
(14, 5, 5),
(15, 21, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `warns`
--

CREATE TABLE `warns` (
  `idWarns` int(11) NOT NULL,
  `user_warned` int(11) NOT NULL,
  `moderator` int(11) NOT NULL,
  `reason` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `warns`
--

INSERT INTO `warns` (`idWarns`, `user_warned`, `moderator`, `reason`) VALUES
(1, 7, 8, 'Funk, Wisozk and Morar'),
(2, 6, 21, 'Pfeffer-Kris'),
(3, 20, 9, 'Steuber-Barrows'),
(4, 7, 4, 'Yost Inc'),
(5, 11, 21, 'Jerde-Cremin'),
(6, 12, 25, 'Buckridge-Auer'),
(7, 15, 6, 'Kshlerin, Lemke and Carter'),
(8, 7, 1, 'Morar Inc'),
(9, 8, 13, 'Schiller, Bins and Mosciski'),
(10, 8, 10, 'Kub-Wunsch'),
(11, 20, 3, 'Breitenberg-Dare'),
(12, 14, 16, 'King and Sons'),
(13, 12, 24, 'Kuphal and Sons'),
(14, 17, 25, 'Kuphal, Lowe and McClure'),
(15, 5, 9, 'Grimes, Beer and Beatty');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`idGroups`);

--
-- Indeksy dla tabeli `group_interests`
--
ALTER TABLE `group_interests`
  ADD PRIMARY KEY (`idGroup_interests`),
  ADD KEY `group_interests_id_interest_foreign` (`id_interest`),
  ADD KEY `group_interests_id_group_foreign` (`id_group`);

--
-- Indeksy dla tabeli `group_messages`
--
ALTER TABLE `group_messages`
  ADD PRIMARY KEY (`idGroup_messages`),
  ADD KEY `group_messages_members_id_foreign` (`members_id`);

--
-- Indeksy dla tabeli `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`idInterests`);

--
-- Indeksy dla tabeli `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`idMembers`),
  ADD KEY `members_id_user_foreign` (`id_user`),
  ADD KEY `members_id_group_foreign` (`id_group`);

--
-- Indeksy dla tabeli `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`idMessages`),
  ADD KEY `messages_id_author_foreign` (`id_author`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user_interests`
--
ALTER TABLE `user_interests`
  ADD PRIMARY KEY (`idUser_interests`),
  ADD KEY `user_interests_id_user_foreign` (`id_user`),
  ADD KEY `user_interests_id_interest_foreign` (`id_interest`);

--
-- Indeksy dla tabeli `warns`
--
ALTER TABLE `warns`
  ADD PRIMARY KEY (`idWarns`),
  ADD KEY `warns_user_warned_foreign` (`user_warned`),
  ADD KEY `warns_moderator_foreign` (`moderator`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `group_messages`
--
ALTER TABLE `group_messages`
  MODIFY `idGroup_messages` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT dla tabeli `messages`
--
ALTER TABLE `messages`
  MODIFY `idMessages` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `group_interests`
--
ALTER TABLE `group_interests`
  ADD CONSTRAINT `group_interests_id_group_foreign` FOREIGN KEY (`id_group`) REFERENCES `groups` (`idGroups`),
  ADD CONSTRAINT `group_interests_id_interest_foreign` FOREIGN KEY (`id_interest`) REFERENCES `interests` (`idInterests`);

--
-- Ograniczenia dla tabeli `group_messages`
--
ALTER TABLE `group_messages`
  ADD CONSTRAINT `group_messages_members_id_foreign` FOREIGN KEY (`members_id`) REFERENCES `members` (`idMembers`);

--
-- Ograniczenia dla tabeli `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_id_group_foreign` FOREIGN KEY (`id_group`) REFERENCES `groups` (`idGroups`),
  ADD CONSTRAINT `members_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_id_author_foreign` FOREIGN KEY (`id_author`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `user_interests`
--
ALTER TABLE `user_interests`
  ADD CONSTRAINT `user_interests_id_interest_foreign` FOREIGN KEY (`id_interest`) REFERENCES `interests` (`idInterests`),
  ADD CONSTRAINT `user_interests_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `warns`
--
ALTER TABLE `warns`
  ADD CONSTRAINT `warns_moderator_foreign` FOREIGN KEY (`moderator`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `warns_user_warned_foreign` FOREIGN KEY (`user_warned`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
