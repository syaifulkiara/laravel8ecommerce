-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 02:10 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8ecommerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'soluta quas', 'soluta-quas', '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(2, 'maxime quam', 'maxime-quam', '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(3, 'sed aspernatur', 'sed-aspernatur', '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(4, 'corrupti blanditiis', 'corrupti-blanditiis', '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(5, 'quam asperiores', 'quam-asperiores', '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(6, 'ullam nulla', 'ullam-nulla', '2021-04-26 15:51:12', '2021-04-26 15:51:12');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_04_25_142410_create_sessions_table', 1),
(7, '2021_04_26_212108_create_categories_table', 2),
(8, '2021_04_26_222411_create_categories_table', 3),
(9, '2021_04_26_222454_create_products_table', 3);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` bigint(20) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'iure laborum', 'iure-laborum', 'Neque cum reprehenderit illo. Occaecati voluptatem dignissimos voluptas quas.', 'Qui omnis inventore aut molestiae quaerat eos. Voluptatem et voluptas sit aspernatur doloremque quisquam. Blanditiis excepturi suscipit ratione doloremque laborum. Eaque nulla nihil quos a non. Quam itaque quis quia possimus aut. Laborum eaque id voluptates laborum officia. Architecto placeat possimus sapiente distinctio iure. Sunt est ratione sit dolor. Voluptatem minus quisquam qui mollitia tempora aut harum.', '78.00', NULL, 'DIGI500', 'instock', 0, 130, 'digital_7.jpg', NULL, 3, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(2, 'et non', 'et-non', 'Velit placeat incidunt praesentium minima aperiam aut eos temporibus. Quas velit dolores incidunt vitae aut. Sunt nesciunt ut sunt explicabo nesciunt repudiandae omnis.', 'Consequatur saepe qui sunt temporibus. Repellat aut commodi sint quia eveniet iusto consequatur. Eligendi rerum in quia molestiae id quidem. Id distinctio magni molestiae. Exercitationem omnis eum ut provident aliquam rerum hic. Molestiae sit dolor quo nobis et qui tenetur omnis. Aspernatur tempora earum provident et. Eaque quos reiciendis qui porro sed. Perferendis et accusamus saepe ut quia. Velit exercitationem sed sit rerum est et molestiae est.', '128.00', NULL, 'DIGI255', 'instock', 0, 139, 'digital_12.jpg', NULL, 2, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(3, 'saepe accusantium', 'saepe-accusantium', 'Qui officia eaque itaque at saepe. Assumenda doloremque fugit culpa nostrum vel voluptatem nobis. Iure tenetur itaque quasi et qui aut fuga.', 'Totam soluta aspernatur illum veritatis. Nostrum ad praesentium in consequatur. Quasi aliquam similique occaecati. Provident aut reiciendis qui voluptates iusto eos quo. Ipsa ducimus qui quaerat temporibus inventore. Harum magnam voluptatem optio. Nam nesciunt sapiente et earum eum nihil. Illum natus autem facere voluptatibus tempora. Consequatur maxime quibusdam quia facilis labore consequatur maxime. Enim hic sunt numquam. Iure porro qui ipsa voluptatem voluptas iste.', '308.00', NULL, 'DIGI250', 'instock', 0, 133, 'digital_17.jpg', NULL, 1, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(4, 'aperiam fugit', 'aperiam-fugit', 'Sapiente quo at facere soluta reiciendis qui est. Fugiat aut voluptate optio blanditiis consequatur atque et ullam. Et et asperiores est voluptatem.', 'Rerum molestias consequatur est quasi. Consequuntur vel explicabo consectetur quae nulla consequatur id. Dolor illum ad eaque amet aliquam. Explicabo excepturi et delectus mollitia voluptatem qui velit assumenda. Itaque assumenda quibusdam aut quia aut laborum recusandae rerum. Non rerum beatae eos quibusdam ipsam officiis.', '43.00', NULL, 'DIGI428', 'instock', 0, 110, 'digital_15.jpg', NULL, 1, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(5, 'esse a', 'esse-a', 'Illum quod eum nobis rerum odio quisquam. Similique quia labore ut. Mollitia magnam exercitationem suscipit ab nobis. At quisquam ut alias excepturi.', 'Ut magni fugiat aspernatur explicabo eos veniam ducimus asperiores. Consectetur eum ad est distinctio sed. Facere quos omnis illo soluta neque. Officiis non aut autem occaecati placeat beatae incidunt. Dolorum aperiam dicta veniam. Corrupti maxime et consequuntur ut aliquid fuga dolorem. Occaecati id aut sit mollitia at veniam. Ut nesciunt asperiores cumque sint neque et vel. Facere iusto ab qui ut harum est. Facere quis animi quo molestias saepe ut.', '297.00', NULL, 'DIGI205', 'instock', 0, 190, 'digital_1.jpg', NULL, 5, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(6, 'ullam dicta', 'ullam-dicta', 'Modi quo voluptas commodi est quia. Enim et voluptatum et placeat omnis. Voluptatem odio voluptatem id enim.', 'Fugit impedit praesentium illo neque esse ipsa. Inventore ut laboriosam nam rerum unde autem occaecati quis. Dignissimos veniam saepe minus enim. Atque voluptatibus itaque omnis quod minus omnis minima consectetur. Soluta est odit magnam repudiandae. Et repellendus cumque quaerat provident perspiciatis. Ullam quo voluptas sed ipsam. Quia cupiditate sed natus alias repudiandae dignissimos.', '346.00', NULL, 'DIGI413', 'instock', 0, 169, 'digital_6.jpg', NULL, 5, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(7, 'perferendis aut', 'perferendis-aut', 'Reprehenderit reiciendis nihil nostrum. Et sunt voluptatum consequatur natus. Et qui ut officia quaerat.', 'Architecto voluptas deleniti quisquam. Doloribus vel qui architecto reprehenderit rerum. Numquam ab ullam voluptatibus fuga aperiam et nisi. Impedit et consequatur esse aliquam. Dolor voluptas cupiditate ipsum debitis magnam voluptates. Blanditiis excepturi quidem minus dolor. Incidunt qui est molestiae commodi. Iure beatae voluptatem modi doloribus corporis.', '116.00', NULL, 'DIGI465', 'instock', 0, 157, 'digital_19.jpg', NULL, 3, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(8, 'voluptatum optio', 'voluptatum-optio', 'Cumque quidem aliquam ut illum. Et aut aut ad ipsam. Quaerat nemo ut vel magnam molestias similique dolorum.', 'Ut et adipisci itaque quam quos debitis. Quaerat dolores et voluptates officiis nisi. Ad adipisci aut sequi et consequuntur. Nulla ut velit quod enim reiciendis omnis. Fugit facere quis doloribus similique recusandae sed consequuntur. Ut hic quo iure magnam. Facilis quibusdam velit occaecati sed aut. Ut sint et totam sapiente enim corrupti molestiae. Est quidem sint in. Aspernatur odio reprehenderit qui doloremque vero dignissimos quo et. Omnis deserunt sit porro culpa sed omnis et.', '214.00', NULL, 'DIGI119', 'instock', 0, 183, 'digital_22.jpg', NULL, 1, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(9, 'consequatur voluptatum', 'consequatur-voluptatum', 'Totam ipsum fugit quis. Est error temporibus quos nam. Perferendis aliquid quis ut optio esse.', 'Qui eos nisi assumenda aut omnis perferendis. Dolorum molestias earum est. Excepturi dolorem est aspernatur deserunt a recusandae est. Sunt qui minus nobis est sit qui. Dolore officia quia rerum omnis quia. Placeat qui nam necessitatibus laborum corporis consequatur occaecati. Beatae dolore eum aliquid qui est soluta. Labore porro rerum sed nostrum. Saepe voluptatem sit ut libero vitae. Saepe enim a non aut veniam. Animi neque eos sunt ab amet deserunt nulla eos.', '84.00', NULL, 'DIGI249', 'instock', 0, 153, 'digital_10.jpg', NULL, 1, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(10, 'laboriosam consequatur', 'laboriosam-consequatur', 'Dolores aliquid nam voluptates et delectus animi. Tenetur quam et nesciunt expedita sed sint rerum. Vel veniam qui error cum quae omnis. Aut debitis id ab pariatur modi.', 'Harum quia dolores ut praesentium asperiores id voluptatem. Deserunt harum molestiae quidem beatae. Et magni ullam aut dolores unde. Repudiandae fugiat quod debitis qui nostrum. Odio placeat ut nam sequi minima. Laborum fugiat exercitationem dicta et est aut. Voluptatum maxime quam consequuntur alias est hic. Quisquam sint sed est voluptatem. Accusamus laborum repellat est animi distinctio quisquam voluptas delectus. Ullam dolor et ipsam earum tempora velit veritatis et.', '342.00', NULL, 'DIGI168', 'instock', 0, 169, 'digital_4.jpg', NULL, 4, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(11, 'ipsam blanditiis', 'ipsam-blanditiis', 'Provident cum assumenda rerum sed non voluptatem qui. Deserunt asperiores ipsum omnis vel. Qui necessitatibus molestias deleniti maiores aspernatur repellendus molestiae ipsa.', 'Quam vitae tempora quidem qui nostrum veniam. Impedit mollitia non aliquam libero occaecati aut exercitationem. Eveniet sit voluptas est ipsum. Vitae iste aliquid vero id ut magnam. Sed in ullam tempora. Ut error minus facilis. Id aspernatur dolores adipisci velit molestiae sapiente. Ipsa fugiat labore in. Nostrum itaque et quisquam voluptatem nemo qui. Explicabo ipsa ut occaecati nemo ea maiores cum est. Ipsum minus sequi et.', '94.00', NULL, 'DIGI343', 'instock', 0, 164, 'digital_18.jpg', NULL, 2, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(12, 'distinctio aspernatur', 'distinctio-aspernatur', 'Beatae ut et fuga qui et itaque in unde. Exercitationem culpa est doloremque molestiae fugit.', 'Necessitatibus suscipit odio doloremque id autem quia quia. Molestiae non numquam maiores debitis quisquam impedit nulla modi. Necessitatibus velit qui cupiditate nihil minus voluptas et. Magni qui quos est consequatur hic. Aut officiis nostrum excepturi. Ut veritatis accusamus iusto ut. Quos officiis qui ex saepe tempore aspernatur. Molestiae ipsa voluptatum aut. Qui quas eos magnam nesciunt qui assumenda. Aliquid cupiditate qui laborum fugiat officia incidunt aut dignissimos.', '277.00', NULL, 'DIGI193', 'instock', 0, 114, 'digital_2.jpg', NULL, 4, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(13, 'omnis dolorum', 'omnis-dolorum', 'Eos soluta voluptas qui nulla dolorem hic mollitia. Quidem qui laboriosam ullam velit. Et ratione alias molestias consequatur.', 'Unde qui dignissimos qui corporis ratione. Placeat vero recusandae fugiat architecto ea nihil. Cum tempora maxime vitae aliquam magnam repellendus consequatur. Optio minus sint et fugiat. Quia tempore ut qui ab earum. Laudantium autem aliquid ratione dolore repellat. Non sint quae dolorem omnis dignissimos explicabo aut. Repellat modi nihil quam ipsa voluptate nobis. Doloremque et tempore rerum molestias qui veniam odit. Est dolorem maiores delectus ullam id.', '476.00', NULL, 'DIGI209', 'instock', 0, 120, 'digital_16.jpg', NULL, 3, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(14, 'repellendus possimus', 'repellendus-possimus', 'Nobis illum accusantium ut quia voluptatem qui quis. Dolor assumenda aut voluptatem in neque optio quia sapiente. Itaque facilis nisi ratione expedita. Non iusto velit occaecati sequi aut.', 'Dicta sed ut asperiores quas qui impedit quia. Et nostrum consequuntur veritatis corrupti. Explicabo magnam neque et eum neque. Nulla expedita aut deleniti eaque et autem. Et nulla at perferendis dolore et fuga a. Omnis recusandae sed maiores quo corporis. Quae eius aut asperiores fugit sit aut voluptatibus qui. Minus et et sint consequatur explicabo ullam sunt.', '490.00', NULL, 'DIGI152', 'instock', 0, 147, 'digital_21.jpg', NULL, 4, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(15, 'culpa unde', 'culpa-unde', 'Eum nemo amet dolore neque sit aspernatur debitis. Magnam asperiores rerum assumenda est deleniti vel dolor. Odio et pariatur in eius id voluptatem. Tempore repudiandae iusto ducimus atque.', 'Aperiam ducimus quia qui sunt asperiores occaecati. Reprehenderit tempora est a aut dolore iste inventore beatae. Aliquid eos quos velit perspiciatis quod voluptatem. Illo non recusandae autem et. Reprehenderit sit saepe repellendus dicta at. Nulla aspernatur cupiditate voluptas molestias voluptatum autem est. Sint aut itaque qui laudantium aut et pariatur.', '271.00', NULL, 'DIGI371', 'instock', 0, 198, 'digital_20.jpg', NULL, 4, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(16, 'qui reiciendis', 'qui-reiciendis', 'Et voluptatum voluptate temporibus. Vel sit consequuntur qui quis maxime. Animi cupiditate voluptatem saepe facilis numquam sequi.', 'Doloribus doloremque architecto aut aut laudantium quibusdam nemo officiis. Officia reiciendis dolorum corrupti neque expedita. Veritatis est nam et assumenda assumenda placeat delectus. Culpa dolorem aspernatur non. Et fugit consequatur ratione qui tempore itaque. Debitis doloremque id aut at incidunt aspernatur. Perspiciatis qui similique velit quia ex. At voluptas laboriosam et ab dolore sapiente labore alias. Deleniti asperiores aut sint nemo et aut. Ut nam molestias aut.', '432.00', NULL, 'DIGI456', 'instock', 0, 178, 'digital_9.jpg', NULL, 4, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(17, 'quaerat ut', 'quaerat-ut', 'Consequatur unde qui laboriosam vitae at atque. Dolorum sed voluptate in in est. Omnis voluptatem nihil architecto eos quia. Est dolores ullam expedita eligendi.', 'Nostrum unde ut est iure accusamus rerum. Id eum dolores non dolore fugit ex dicta voluptatem. Officiis eaque aut est repellendus. Necessitatibus aut numquam sed nesciunt dolor reprehenderit doloremque. Harum molestiae nulla autem sit doloremque et. Sint quos earum sed numquam quisquam perferendis architecto qui. Illum id reprehenderit consectetur nihil vel. Architecto id molestiae omnis dolorem quia ut quis.', '307.00', NULL, 'DIGI434', 'instock', 0, 113, 'digital_3.jpg', NULL, 2, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(18, 'blanditiis eum', 'blanditiis-eum', 'Vel maiores blanditiis rerum totam. Voluptas quos nesciunt corporis fuga totam. Error ex deserunt sequi ea corrupti beatae aut architecto.', 'Blanditiis itaque accusamus quia atque rerum dolores dolores. Consequatur qui neque error laborum. Beatae voluptates et est ut facilis iure sed. Corrupti voluptatum ea molestias. Odio sit tenetur ducimus quidem. Ratione occaecati consequatur quam beatae. Sapiente est et ut odit molestiae illo tenetur. Quasi cupiditate numquam laboriosam itaque accusantium harum accusantium alias. Et quos voluptas nihil eligendi. Assumenda est omnis fuga sed eum error.', '63.00', NULL, 'DIGI327', 'instock', 0, 172, 'digital_14.jpg', NULL, 4, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(19, 'velit vel', 'velit-vel', 'Et praesentium nihil ut. Aut debitis facere esse minus ratione sapiente. Omnis numquam deserunt laboriosam corrupti omnis ut.', 'Eum et qui voluptatem et reprehenderit. Alias est odit iste molestiae accusantium alias asperiores. Fuga velit atque id et. Voluptatum maxime perspiciatis et impedit. Repudiandae ducimus earum mollitia et. Et dolor magnam iusto debitis blanditiis aut porro. Iusto non dolor consequuntur. Repellat sit aut odit aut et consequatur. Non temporibus asperiores autem reprehenderit laudantium et. Ab velit quaerat et sit sed. Expedita qui ut natus a incidunt nulla velit incidunt. Et ab dignissimos ipsam.', '334.00', NULL, 'DIGI194', 'instock', 0, 130, 'digital_11.jpg', NULL, 2, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(20, 'ex est', 'ex-est', 'Qui corporis maiores accusamus sint. Ipsam adipisci enim deleniti nesciunt et. Quia labore eos et aliquam.', 'Commodi ipsum vero et non aut quam. Voluptatem dolores nam occaecati autem. Ipsa et nemo vero corrupti quo quos. Et ut fuga dolore dolorum est consequuntur non. Voluptatem non nihil maxime aliquam quisquam id facilis. Error eius quisquam in eos voluptates qui. Blanditiis necessitatibus et eligendi et est ab perspiciatis animi. Error repellendus eveniet quibusdam nulla minus. Aut et magnam temporibus aliquid. Nisi nisi ipsa dolore eaque aut dolorem.', '400.00', NULL, 'DIGI125', 'instock', 0, 143, 'digital_13.jpg', NULL, 4, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(21, 'eaque veritatis', 'eaque-veritatis', 'Est quis est dolores a. Dolore assumenda aut odit nesciunt non omnis. Modi aut qui quis est temporibus enim.', 'Repudiandae atque cumque rem ratione veritatis at totam consequatur. Odio maiores aperiam hic laborum quia eius qui. Nisi doloribus maxime esse ut aut. Possimus animi facilis facilis dicta dolores. Voluptatem alias et beatae aspernatur ad. Nihil maiores et suscipit asperiores earum eius et suscipit. Aut odit delectus maiores dolore aut a ratione. Ipsum et excepturi consequatur assumenda. Sed voluptatem odio voluptatem ea asperiores esse.', '156.00', NULL, 'DIGI227', 'instock', 0, 177, 'digital_8.jpg', NULL, 2, '2021-04-26 15:51:12', '2021-04-26 15:51:12'),
(22, 'unde debitis', 'unde-debitis', 'Inventore ut eaque quas tenetur explicabo deleniti. Vel pariatur qui amet. Ut eius et consequuntur magnam quibusdam repellendus. Et repudiandae voluptates quis temporibus.', 'Dicta iusto repudiandae reprehenderit dicta explicabo. Enim repellat quaerat id quod voluptas dolore. Reiciendis accusantium architecto perspiciatis explicabo eum est. Ex saepe est velit temporibus animi. Et blanditiis alias nihil magnam. Cupiditate saepe aut labore aspernatur sit facere iste. Ut et voluptas nobis commodi libero. Repellendus velit sint quis rerum repellendus rerum. Dolor delectus occaecati nam veniam at.', '422.00', NULL, 'DIGI226', 'instock', 0, 117, 'digital_5.jpg', NULL, 1, '2021-04-26 15:51:12', '2021-04-26 15:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('edNc9a13aFjbJCzU0al8kkfpzbQmQIhlQKUXXaKq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNG9lODgwTEdTbGFVMVhkRDc3OXZTNHR3RFRVSGp3bWdtWnlFTzlWZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbDhlY29tbWVyY2UvcHVibGljL2NhcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1619567466),
('gCP6dl2SKGuk5BjcGr4HMLA3LIOfaqSHEZfv0mVI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR3hveWRxME1VNFFUNnF5UFgxRGpjdHpsM05xVExWbmpVR3JwcEJNNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIzNzBkMDg1ODUzNjBmNWM1NjhiMThkMWYyZTRjYTFkZiI7czoyOiJpZCI7aToyO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjY6ImV0IG5vbiI7czo1OiJwcmljZSI7ZDoxMjg7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjAyN2M5MTM0MWZkNWNmNGQyNTc5YjQ5YzRiNmE5MGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO3M6MjoiaWQiO2k6MTtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoxMjoiaXVyZSBsYWJvcnVtIjtzOjU6InByaWNlIjtkOjc4O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319fX19', 1619567456),
('HMSvsrLEQGmRy7INQI7ThA6mV9eKRFTUnY4j3jYl', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUNMS2k1ZVB1MnJ0ZFZxb25PV0tqd3loZEZ0ZDRad1pjaXA1NWx3YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbDhlY29tbWVyY2UvcHVibGljL3Byb2R1Y3QvaXVyZS1sYWJvcnVtIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1619567719),
('mVVCpF9ZnKDWSwse9GsK9yP2gfZkiD4NegBgSzep', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN1Fya0JPaXphRTZ6TmlaUnhSTWR1SjBFMmNodXdTVDVyWHN1dU4zVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiZWZiMjZlMmM2YWI2YmQ0ZDEzMjMyODg5MjM1MjJkNGUiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiJlZmIyNmUyYzZhYjZiZDRkMTMyMzI4ODkyMzUyMmQ0ZSI7czoyOiJpZCI7aTo0O3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjEzOiJhcGVyaWFtIGZ1Z2l0IjtzOjU6InByaWNlIjtkOjQzO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319fX19', 1619568577),
('NY06jsHsAEPd46EvQi1fANCOe7npQHPDQ1pvxbAg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibFZsdG1vNW5hM2p3d1NFaXdTeXFqYUpXWnZhNmxuRWxiNDVhaGZYbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czozMjoiNDY4Mzk5NTgxMzQyNTA1YzQ3ZjQ2MTViODFiZWRhYTkiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiI0NjgzOTk1ODEzNDI1MDVjNDdmNDYxNWI4MWJlZGFhOSI7czoyOiJpZCI7aTo1O3M6MzoicXR5IjtpOjI7czo0OiJuYW1lIjtzOjY6ImVzc2UgYSI7czo1OiJwcmljZSI7ZDoyOTc7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjhhNDhhYTdjOGU1MjAyODQxZGRhZjc2N2JiNGQxMGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiOGE0OGFhN2M4ZTUyMDI4NDFkZGFmNzY3YmI0ZDEwZGEiO3M6MjoiaWQiO2k6NjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoxMToidWxsYW0gZGljdGEiO3M6NToicHJpY2UiO2Q6MzQ2O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO31zOjMyOiJlZmIyNmUyYzZhYjZiZDRkMTMyMzI4ODkyMzUyMmQ0ZSI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6ImVmYjI2ZTJjNmFiNmJkNGQxMzIzMjg4OTIzNTIyZDRlIjtzOjI6ImlkIjtpOjQ7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6MTM6ImFwZXJpYW0gZnVnaXQiO3M6NToicHJpY2UiO2Q6NDM7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX19fX0=', 1619565899),
('t86rcE1oIvNZY7gUcnkD70pk5kCNhy7UpZFyRMZC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRk5GSnY3eEZSMWlXdHNyRUZoU2RwOGh0YnNHU0F5VGdoUjZPNlVFMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbDhlY29tbWVyY2UvcHVibGljL3Byb2R1Y3QvaXVyZS1sYWJvcnVtIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1619566598),
('tjbU9VsxnpSxk27bH4fi2SkQzisDIm4N7gLHo5HV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHlxQmFpRmJaTVkzUkk2dU5kU1dTd3YzYXdVUUlqRFpIWWJCckJmZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbDhlY29tbWVyY2UvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1619568595),
('ZoXKsh7zBJvXEuMLkWyKNN3cD02jc3rChdbuxyP2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGNzbEIxSm5FRjhGWjdWNEkyRU9CSFY1Vk4wQ2xhclZ2NTRxN2lsRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbDhlY29tbWVyY2UvcHVibGljL3Byb2R1Y3QvYXBlcmlhbS1mdWdpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1619565449);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@email.com', NULL, '$2y$10$E.1A3TgRoFjizUyqedhVPurR1.2zosr1CXHRwKPXOEhbdQ3/Di3yS', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-04-25 08:11:36', '2021-04-25 08:11:36'),
(2, 'user', 'user@email.com', NULL, '$2y$10$cfBweEo9e3gqCNEdMz43yOkg1JV.YK9BSHFMXpWhABYp5fj2Dsa7.', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-04-26 08:10:26', '2021-04-26 08:10:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
