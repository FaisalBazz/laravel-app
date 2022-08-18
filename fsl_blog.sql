-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Agu 2022 pada 16.32
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fsl_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(2, 'Web Design', 'web-design', '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(3, 'Personal', 'personal', '2022-08-13 23:45:55', '2022-08-13 23:45:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_16_021047_create_posts_table', 1),
(6, '2022_07_02_131144_create_categories_table', 1),
(7, '2022_08_18_023848_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Et dolores impedit hic sunt.', 'eum-maiores-autem-est-voluptatum-neque-nostrum-aut', NULL, 'Non unde illo eum omnis ullam ut commodi. Soluta fugit dolor quasi laboriosam dignissimos. Et id enim consectetur nisi consequatur. Dolorum magni sint voluptas atque odio recusandae.', '<p>Sint adipisci omnis et. Eum officiis aliquam molestiae porro aperiam. Cupiditate quia voluptate dolores quia mollitia sit sint. Expedita assumenda eum voluptatibus odio sapiente quasi sint.</p><p>Optio accusantium accusamus omnis asperiores voluptates. Ea in vero omnis sint. Eveniet nulla dolorem pariatur aut. Eaque veritatis placeat quibusdam molestias esse dolor.</p><p>Et necessitatibus aut facere doloremque. Laborum natus voluptatem excepturi ducimus dolorem rem. Enim recusandae similique sint culpa voluptatum. Velit illo ducimus rerum harum provident.</p><p>Voluptatem dolores et dolorem consequuntur est. Deserunt culpa eos error voluptatem cupiditate quibusdam fugiat. Ut est iste illum eaque quos et.</p><p>Dolorum vero et dignissimos error minima vero ut minus. Autem eum veritatis inventore occaecati. Consectetur aut est aperiam quis ullam. Aut aut fuga tempora voluptatem voluptatem et ut.</p><p>Molestiae odit nostrum enim voluptatem minus nesciunt. Recusandae laudantium omnis dolore quia eius tempora est. Quas pariatur quo explicabo unde exercitationem unde. Nam rerum aperiam dolorem laboriosam eveniet rerum ut sed.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(2, 2, 1, 'Totam voluptatem in.', 'dolores-tenetur-illum-ea', NULL, 'Et ut aliquam quae debitis perferendis. Voluptatem qui laborum nemo. Sint dicta at blanditiis tenetur excepturi quo architecto quisquam.', '<p>Suscipit sequi aut impedit nihil distinctio dicta. Doloribus doloribus ut quis ut et aut. Sapiente et ab quibusdam veniam perferendis cupiditate harum. Dolor quasi ea cupiditate.</p><p>Quidem asperiores quam sunt facilis non. Laboriosam ex nam aut cumque et culpa. Delectus similique deserunt eos id neque rerum nihil. Labore illo rerum ea laborum ad.</p><p>Id temporibus porro aperiam voluptate aut error amet. Blanditiis dolor quisquam ut molestias doloremque. Id dolorem et magnam libero.</p><p>Est quae rerum nihil repellendus consequuntur minus. Qui sit earum doloremque mollitia dolorum. Est rerum dolores nostrum vitae nihil omnis. Aliquam exercitationem sit cum impedit voluptas quam vel.</p><p>Impedit alias voluptates velit rerum facilis qui. Natus sit voluptas accusantium numquam ut quia.</p><p>Aut et modi iste doloremque ut. Sit at dolorem animi doloremque nam voluptatem sunt.</p><p>Omnis minus nulla sed sed doloremque eum eaque ut. Deleniti ut fugit adipisci impedit. Voluptatem officia sint rem delectus. Odio corporis qui soluta dolorem aliquam aspernatur vero et.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(3, 1, 1, 'Cum ipsum qui beatae.', 'ullam-quis-delectus-harum-sunt-dolorem-est-nam', NULL, 'Et quidem molestiae quae quas sint. Exercitationem consequatur reprehenderit earum voluptates ut non voluptates. Quo voluptatem quae atque doloremque necessitatibus alias assumenda aspernatur. Voluptates voluptatum quia nostrum voluptatem adipisci provident.', '<p>Cum dolore asperiores porro. Autem magni quia maiores. Perferendis explicabo voluptate quam laboriosam atque culpa.</p><p>Odio velit aut optio quo quo. Laborum maiores dicta reiciendis qui. Consequatur incidunt consequuntur ea dolore voluptatem cupiditate. Consequatur atque sed sit aperiam.</p><p>Voluptatibus minus reprehenderit laudantium vel. Aut molestiae rem ut voluptate. Ut et corrupti repudiandae et aperiam repudiandae esse.</p><p>Itaque et natus minus ex deserunt. Quia natus et quae inventore. Illo vel nulla qui ut aliquid iure ut.</p><p>Fugiat odio aut accusantium tempora. Tempora ipsam sit eaque consequatur. Nobis impedit modi reprehenderit in. Inventore sit occaecati et ut qui.</p><p>Perspiciatis expedita voluptates ex ea unde placeat. Enim magni at voluptate autem. Molestiae minus sint recusandae architecto qui vero necessitatibus aliquid.</p><p>Consequatur in similique velit facere. Reiciendis labore eius dolore. Nobis aut in qui odio aut delectus. Rerum cupiditate qui voluptas sed aperiam ea.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(4, 1, 3, 'Ea voluptatum non labore ipsa et animi est.', 'est-et-perspiciatis-fugiat-et-illum-accusantium-quisquam', NULL, 'Nesciunt vel rerum ut rerum ullam culpa. Ut eum sint eveniet. Explicabo id asperiores incidunt est nisi.', '<p>Et voluptate nostrum eaque quia qui eaque in aut. Perspiciatis in laborum labore qui sed qui suscipit. Et vitae debitis dolores ipsum alias. Non molestiae ut ab eaque qui explicabo.</p><p>Eos odio neque sit quae hic. Asperiores ratione aut perspiciatis cumque. Eos facilis aliquid eius. Necessitatibus eius quod qui expedita earum tempore. Aut voluptatem rem aliquid consequatur et ex culpa.</p><p>Corrupti commodi laudantium veniam quia rerum. Iusto molestiae velit exercitationem perferendis. Earum omnis quibusdam repellat sed qui ut. Cupiditate praesentium tempora placeat est. Accusamus est omnis qui optio delectus.</p><p>Laudantium excepturi reprehenderit quasi dignissimos consectetur. Fugiat enim rem maiores dolores est est. Eligendi eius qui accusantium in corporis sed. Maiores quod earum dicta commodi a sapiente. Beatae corrupti quo earum quis ea.</p><p>Provident dolores sint numquam officiis quas iure. Amet magni occaecati inventore hic libero porro iste. Rerum quam eos et. Expedita numquam sint ut eum exercitationem.</p><p>Suscipit et sunt et a. Animi ipsa ut consequuntur quidem consequuntur cumque corporis sapiente. Nobis repellat perferendis unde tempore rerum qui non. Ipsam consectetur tenetur est vel.</p><p>Quisquam enim in autem voluptas iure animi occaecati. Ut eos deleniti vel veniam est inventore autem at. Non dicta quis laboriosam suscipit inventore officiis ex quia.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(5, 2, 1, 'Fugiat illo dignissimos.', 'at-autem-eaque-libero-iure-est-consequuntur', NULL, 'Aut sunt recusandae ipsa qui aliquam et. Et itaque et excepturi qui. Aliquam voluptatem velit ratione et facere.', '<p>Placeat commodi cumque sed ex incidunt ipsum molestiae tempore. Quia consequuntur sed consequatur. Non voluptatibus iusto perferendis repellat.</p><p>Quia consectetur est omnis perferendis est. Autem sapiente ut autem aut doloribus et. Earum dolores hic perspiciatis iusto fugit corporis. Et est provident quidem saepe libero molestiae vel.</p><p>Soluta architecto maxime suscipit debitis molestias qui ex accusantium. Unde fugit sunt aliquam et fugiat et. Odit fuga perspiciatis ipsam aut et alias.</p><p>Rerum facere est id ut ut explicabo. Maxime voluptatem voluptatem ea id ut architecto.</p><p>Esse error ut nisi architecto nihil perferendis architecto illo. Repellendus consequatur aut unde reprehenderit. Maxime ratione magni sequi similique tenetur minima.</p><p>Autem accusantium quisquam dolorem dicta. Distinctio exercitationem sunt in fuga molestiae. Illo neque non doloribus enim velit.</p><p>Autem nobis soluta non quis. Sit error sed earum hic eos molestias. Quod qui aut nihil sit qui at. Ducimus aut perferendis hic est soluta. Tenetur aut sit modi suscipit quaerat.</p><p>Veniam at quo possimus modi. Veniam illo possimus blanditiis eius libero ipsa ut. Sed non iure fugiat quo voluptas nesciunt ex magnam. Soluta culpa praesentium adipisci repellat quam sit placeat qui. Magnam ea ea non commodi doloribus quam quibusdam.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(6, 2, 1, 'Doloremque sed voluptas qui consequuntur quo vero ut at.', 'voluptatum-eos-est-voluptatem-omnis-ratione-aut-sed', NULL, 'Porro voluptas et quia incidunt magni excepturi accusamus. Voluptas id voluptatem cumque provident.', '<p>Dolore facilis pariatur a voluptatem quam nulla natus. Et quasi iusto maxime quas beatae.</p><p>Aspernatur voluptas voluptate molestiae adipisci tenetur ipsa fugiat. Et at perferendis ut unde error nulla in. Pariatur velit nemo tenetur.</p><p>Reiciendis dolorum cum voluptatum odio. Ut et neque distinctio voluptas incidunt. Aut consequatur ab ipsam voluptas optio qui. Et a consequatur repellat et esse.</p><p>Ex laudantium repudiandae eaque doloribus ratione et voluptas. Officiis est est quo neque. Voluptatem et dolor a quo quo qui in. Velit excepturi quod est. Cupiditate minus enim debitis ducimus ullam ducimus.</p><p>Qui veniam a dolor recusandae ratione ipsa corporis. Incidunt excepturi aut debitis magnam corporis. Aperiam vero voluptates cum consequatur occaecati reiciendis.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(7, 2, 3, 'Qui repellat ullam fugit quidem odit quia dolorem.', 'ut-voluptatibus-mollitia-nisi-ut', NULL, 'Consequatur nihil deleniti maxime est. Neque officiis dolores non est beatae ab corrupti. Voluptatum qui sunt ut voluptatem cum suscipit. Ipsum beatae omnis animi.', '<p>Provident omnis nihil impedit dolorem magni. Totam ipsum in architecto accusamus reprehenderit deserunt. Et voluptas eius quam dolores et maiores.</p><p>Vitae non ex totam cupiditate saepe eligendi harum. Explicabo earum magnam iure eius accusantium aut consequatur. Recusandae vero vel quo officiis. Earum non rerum voluptatibus fugit.</p><p>Quas qui quis aliquid et voluptatibus. Maxime sit voluptas nesciunt dolore quidem. Earum nostrum voluptatem sunt voluptas consequatur. Sit distinctio quia ipsa nihil nulla ipsum.</p><p>Nesciunt tempore sunt et officia. Ratione officia ut fuga unde est. Laboriosam officia quia mollitia perspiciatis. Quos minus eum minima quis delectus quaerat molestiae esse.</p><p>Illo quo ducimus sequi veritatis et minima fuga. Enim rerum cupiditate sit assumenda odit. Placeat at est consequatur debitis. Voluptas aut ratione quos cum repellat fuga.</p><p>Ut temporibus maxime dolor quaerat fugit. Nostrum accusantium eligendi voluptatem quos. Autem distinctio voluptatem aut voluptatem est. Vitae fuga ea dolor est est ut.</p><p>Repellat dolor adipisci ducimus non. Praesentium enim facere saepe odio velit quas aperiam repellendus. Natus est et culpa non. Iste provident qui et nobis perferendis.</p><p>Dolorum et saepe natus quam placeat. Libero quia ea rem error et voluptas fuga in. Asperiores qui assumenda quia consectetur. Est eius fugiat voluptas ut.</p><p>Praesentium voluptas quia amet expedita vel quis. Vel dolor laboriosam mollitia unde et eligendi et. Perferendis id laborum quia suscipit sint cupiditate est saepe.</p><p>Explicabo totam dolorem aut accusantium ipsam voluptatem ut. Omnis aut omnis ad itaque. Eum ducimus aut aliquam iusto et ipsa repudiandae.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(8, 1, 1, 'Qui quam quas et est minima.', 'est-placeat-occaecati-voluptatem-magnam', NULL, 'Qui quos et asperiores sit expedita itaque. Voluptatem a consequatur velit veniam.', '<p>Numquam repellat eligendi asperiores quos laborum incidunt impedit soluta. Vel impedit est illo rerum aliquam quia. Beatae at voluptas quam temporibus. Accusantium enim sit et quisquam optio. Est ut praesentium iste perspiciatis.</p><p>Quae dolores repellat quia. Delectus voluptate maxime ut dolores. Cumque sunt a aliquid aut sed.</p><p>Omnis inventore eligendi qui. Corporis aut et ipsum. Eos qui repellat qui ratione sed inventore.</p><p>Molestiae fugit doloribus corporis quas vel. Omnis sint voluptatem autem. Ad exercitationem repellat quas cumque culpa.</p><p>Officia ut quaerat ab. Quam eligendi molestiae omnis beatae et iure consequatur. Possimus cupiditate ipsam unde cupiditate in repellat. Est fugit quidem ex aut.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(9, 1, 1, 'Et consequatur voluptates quidem.', 'facere-impedit-eligendi-autem-qui-molestiae-nesciunt-quas', NULL, 'Laborum exercitationem velit et temporibus doloremque quis. Id dolor ut nam sed id. Alias sint et ut cum id consequuntur vero.', '<p>Maxime ab est similique et voluptatem asperiores. Est qui fuga rerum adipisci commodi quo. Quaerat officia et et ea illo velit. Aliquid nisi officia rerum id aut et.</p><p>Earum vel molestias rerum perferendis ab. Officia impedit excepturi dolores id vitae temporibus ex necessitatibus. Magni sapiente ut at iusto ad error id provident. Magnam dignissimos tempora neque accusantium ab aspernatur voluptate.</p><p>Molestiae non architecto architecto soluta quis. Nostrum dolorem quos est porro. Quis et dolores iure officia velit blanditiis.</p><p>Vel in quibusdam consectetur dicta et dolores. Laborum esse aut voluptatum temporibus porro. Est quis consequatur laudantium sit omnis et. Ut repellat autem similique fugit debitis aliquid ut omnis.</p><p>Ipsa suscipit non quo tenetur. Voluptatem deleniti quis necessitatibus facilis ipsum praesentium quia. Ipsa aliquid quisquam provident placeat minima facilis qui laborum.</p><p>Error fugiat culpa non consectetur dolorem cupiditate voluptatem. Quibusdam et natus eum eveniet recusandae commodi quia. Vel velit beatae velit dolorum.</p><p>Ad non fugiat vel deserunt inventore. Voluptas dolorem iusto id molestiae et. Magnam vero fugiat ut explicabo ut.</p><p>Consequuntur sint est vel et. Ipsa iste sequi quae vero cumque. Distinctio sit at doloribus id illo.</p><p>Fuga ad cum quam sequi distinctio autem. Nemo ipsa accusamus temporibus velit accusamus aliquid. Tenetur qui rerum reprehenderit beatae totam qui consequatur. Nam sint eum molestiae.</p><p>Similique dolorem quibusdam omnis eum. Voluptas assumenda et quia molestias velit nisi dolores. Fugiat cupiditate perferendis omnis ullam. Deserunt quia neque a reprehenderit incidunt voluptatem dolores facere.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(10, 2, 3, 'Consequatur at facilis perspiciatis fugit et tenetur.', 'porro-eveniet-laborum-architecto-voluptatem', NULL, 'Velit maxime doloremque dolor quia porro. Fuga molestiae eum ut deserunt. Minus aperiam dolore nostrum quo facere. Aperiam porro voluptates id perspiciatis ut harum qui.', '<p>Et laborum voluptate qui doloremque perspiciatis repellat. Dignissimos aut qui fugiat fugit ut cumque aut. Vel ea nemo mollitia similique dicta hic enim. Optio qui dolorum rerum perspiciatis fugit numquam.</p><p>Nulla et fugiat molestiae cupiditate. Perferendis aspernatur nihil voluptate. Corrupti modi eaque corporis quos eos minus modi. Distinctio iste et qui odio assumenda.</p><p>Expedita voluptates quis vitae ut quod eligendi qui. Debitis sapiente deserunt occaecati veritatis voluptatum. Dolor asperiores placeat non nisi. Quam laboriosam sit atque at sit nihil natus.</p><p>Et rerum voluptas voluptatem facere non id neque. Ea qui est quibusdam at deleniti et. Ab voluptas illo autem totam sequi. Nesciunt architecto quaerat consequuntur fuga in.</p><p>Quo sunt omnis assumenda nulla. Tempora est adipisci et fuga. Et natus ut modi. Magnam quis quia ipsa omnis iure voluptas.</p><p>Nesciunt incidunt recusandae vitae officiis dignissimos ipsam. Perferendis vel ut aut quae aut accusamus. Quod blanditiis rerum accusantium tempora ut fugit.</p><p>Quidem nobis laboriosam molestiae. Repudiandae assumenda blanditiis omnis et voluptatem. Consequatur laboriosam vel excepturi ea. Culpa placeat eaque pariatur inventore optio accusamus.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(11, 1, 2, 'Voluptates sed dolores dolorem officiis cupiditate magni.', 'ipsa-aliquid-autem-omnis-reprehenderit-veniam-odit-aperiam', NULL, 'Error tempore alias quidem adipisci dolor eos. Nesciunt laboriosam minima amet sequi necessitatibus.', '<p>Reprehenderit ducimus molestiae architecto voluptas excepturi. Porro voluptatem illum necessitatibus necessitatibus aperiam ut nihil. Totam dolor id nisi odio vitae.</p><p>Voluptas harum quia neque voluptas. Odio non vitae non recusandae qui laborum reprehenderit. Eum repellat veritatis laboriosam ipsa velit facere et. Aut voluptatem nostrum et. Quo corporis non vero ducimus repellat minus id.</p><p>Vel maxime harum blanditiis aut quasi consequuntur itaque. Voluptatem optio velit laboriosam quo delectus. Ratione quia omnis cupiditate nam deleniti voluptatum consequatur. Consequatur repudiandae sed nam magni amet et iusto.</p><p>Rerum voluptates ipsum voluptatibus dolor dolores quidem quia omnis. Ut est nostrum soluta aut.</p><p>Animi ea qui rerum aliquam inventore omnis aliquid. Officia voluptate eligendi quisquam sunt est tempora sed possimus. Velit eaque dolorum quas nulla ea vel pariatur. Consectetur dolorem asperiores rerum aut explicabo natus ipsa.</p><p>Mollitia et culpa magni illum. Et officia unde est suscipit aliquid omnis. Minima quibusdam corporis ex ut autem fugit. Libero non voluptas voluptatem aspernatur voluptas. Quia vel iste numquam animi quod non.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(12, 2, 1, 'Atque necessitatibus eos sit.', 'aliquid-vero-consequuntur-sunt-impedit-nihil-dolores', NULL, 'Dolorem laborum unde commodi et ut autem quasi. Ex qui nesciunt et a minus. Voluptas autem voluptate ipsum ex.', '<p>Cum fugit unde eaque et repudiandae ab. Facilis commodi enim iusto aut quo. Ab id magni cum. Omnis ut et quia.</p><p>Dolor voluptas sit facilis voluptatem vel pariatur non. Quasi alias nostrum eum. Dolorem aspernatur vero eaque atque laudantium. Ipsam nihil non quibusdam ut omnis laborum.</p><p>Hic rerum quia rerum est aliquam neque. Quisquam quae eum maxime similique ut minima et.</p><p>Aspernatur quia molestias repudiandae libero voluptas qui rerum. Quia sit hic id dolores cumque ipsam. Nemo qui consequatur sed quae blanditiis necessitatibus cumque.</p><p>Fuga et nostrum perspiciatis non reiciendis. In voluptas nesciunt alias reiciendis aut neque ut. Eos eaque in debitis quod eius nam eveniet. Et sit perspiciatis quibusdam iste.</p><p>Fugit qui voluptatem qui. Ut consequatur dignissimos eligendi earum recusandae. Qui fugiat aut magni aut autem eum. Eos harum suscipit autem laborum.</p><p>Saepe hic totam deleniti sunt aut alias. Voluptas eum et quo deleniti sit assumenda est. Nemo iste sint ea qui provident consequuntur quia. In expedita excepturi ducimus maxime sit repellendus ea in. Ipsum necessitatibus molestiae aut voluptatum.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(13, 2, 2, 'Voluptatem iusto ut quia.', 'voluptas-aspernatur-voluptatem-quia-omnis-qui-est', NULL, 'Animi est est recusandae asperiores consequatur impedit. Quaerat est aut qui assumenda. Eaque quo asperiores laborum ut vitae perspiciatis aliquam ut. A cumque dolores ut quis quod rem. Quidem et molestiae sit architecto.', '<p>Ex magni provident fuga. Quia et aliquid voluptatem eum vitae et non. Ut in et provident nulla repellat commodi explicabo.</p><p>Autem voluptas ut placeat. Fugiat doloremque asperiores maxime architecto ut. Et voluptas ut quisquam fuga praesentium quod odio.</p><p>Animi vero sapiente aliquid officia rem ut. Qui officia ut accusamus. Qui quod dolorem earum aut. Optio dolor totam dolorem et et soluta voluptas. Accusamus non sit fuga enim.</p><p>Quaerat dolores ut officiis molestiae. Ut maxime iure nostrum aut nobis reprehenderit. Consequatur qui illo ipsam praesentium nihil ut. Ipsa consequatur sed qui.</p><p>Id cumque dolor aut consequuntur libero. Molestias magnam sunt nisi eos sint. Tempore qui sequi et. Qui consequatur accusamus perspiciatis. Alias ut repudiandae qui at laudantium recusandae dolore aliquid.</p><p>Fugit explicabo aspernatur eos nemo sed quia. Ut reiciendis velit reiciendis dolorem. Natus aut perspiciatis expedita. Aut et et est.</p><p>Corporis itaque ipsam nemo ipsam beatae tenetur. Numquam dicta vel id optio fugiat ea quia. Suscipit dolorem officiis dolor. Ut tempora aut tempora illo at ea voluptatem.</p><p>Nisi aut voluptatibus dignissimos est qui. Fugit aliquid voluptas sunt suscipit provident ea. Sit aperiam iure et corporis.</p><p>Incidunt nemo eaque tempora sunt omnis nam. Aut perferendis mollitia mollitia quia fugit deleniti. Alias nihil cum ut aspernatur qui esse.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(14, 1, 1, 'Magni amet facere fugit soluta cum at consequatur consectetur minus.', 'nostrum-magnam-culpa-explicabo-consequatur-nesciunt-sapiente-architecto', NULL, 'Voluptates at asperiores numquam aut harum qui dolorem. Quaerat dolorem reprehenderit dolores et. Mollitia quo quam voluptatem. Cum aut in aut sapiente eaque non et. Odio quia enim architecto reprehenderit eum veritatis qui.', '<p>Repellendus eius repudiandae autem sapiente aut. Eaque accusamus id exercitationem laboriosam sunt exercitationem dolores. Quia qui omnis similique pariatur. Tenetur culpa unde dolorum perferendis quasi.</p><p>Quia quaerat quisquam quae ea quidem eveniet nesciunt. Facilis corporis iure voluptatem rem est quia quibusdam.</p><p>Laborum dicta in sit et culpa mollitia. Repellendus est ad ipsa corporis autem. Culpa in dicta laborum. Ut aut qui sint qui consequatur.</p><p>Non quisquam fugiat ut consectetur pariatur eaque. Corrupti est et accusamus a consequatur. Dolores velit quia porro recusandae eos optio minima repellat.</p><p>Consectetur illo et doloremque vel. Est eius aut cum nulla laboriosam omnis pariatur. Est sit sint ad.</p><p>Vel sit quod perferendis quo dolorum fugit quia. Quia nesciunt ex recusandae quia dolor perferendis et. Reiciendis illum illum doloremque aperiam et. Iure est enim possimus totam quia est sint.</p><p>Aut sit eaque voluptate est expedita omnis. Doloribus praesentium eos velit voluptatibus ipsum distinctio error amet. In qui excepturi cum corporis est.</p><p>Facere cupiditate odit aut voluptatem. Quasi sunt minus aut quis. Consectetur voluptatem qui itaque tempore eos quo dolorem rerum. Quam voluptates aspernatur cumque quam illo non tempora. Dolore minima aliquam aut.</p><p>Veritatis distinctio sint et molestias itaque. Mollitia eius ipsa sed consequuntur est architecto. Necessitatibus vel ipsum et.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(15, 1, 3, 'Fugit earum saepe ex rerum veritatis.', 'nihil-veritatis-nisi-nihil-sed-molestias-facilis-error', NULL, 'At aliquid esse ullam quae. Voluptatem distinctio id ullam corporis rem in distinctio. Quibusdam earum et nobis. Praesentium et laboriosam aliquam minima dolore.', '<p>Officia iste qui aperiam quis non quidem. Dolorem amet placeat aut sapiente consectetur pariatur perspiciatis. Nemo itaque sint sunt ut aut laborum. Sequi tenetur quos quia aut beatae ut aut.</p><p>Est aliquid et et libero excepturi perspiciatis. Voluptas quos rerum debitis nesciunt. Consequuntur doloremque suscipit et ut ratione. Dignissimos est distinctio ut et in autem.</p><p>Dolorem praesentium vitae consequuntur ea. Et officia nostrum sunt laboriosam consectetur repellat voluptatibus quam. Corporis sit omnis pariatur sint eum.</p><p>Ut sit ut fugiat corporis consequatur veniam totam. Commodi commodi et molestiae labore facilis eum. Debitis et accusamus qui et delectus. Quasi laboriosam et repudiandae id ut vitae odit.</p><p>Doloribus rerum et quos architecto autem nesciunt et. Rerum vero impedit ab est deleniti. Aut sed culpa officiis odit non minus culpa quia. Velit dolorem quis amet quaerat rerum. Aut eligendi sed accusantium eveniet.</p><p>Aut et debitis asperiores enim earum sed aut. Aspernatur sed et quo consequatur in deleniti eveniet. Incidunt minus deserunt ad ut vel eum sunt et.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(16, 1, 2, 'Aut illo odit fugit ipsam rerum.', 'amet-nulla-commodi-debitis-reprehenderit-deleniti-nobis-alias-saepe', NULL, 'Qui est eos voluptatibus nam non. Quia tempore quidem dignissimos magni nesciunt et. Quia aspernatur natus ad magnam et quam qui.', '<p>Impedit ab quia ex. Eaque et sequi autem nam. Dolores qui consectetur quam laboriosam. Non corporis voluptatem maxime voluptas.</p><p>Sed delectus incidunt maiores dolor aliquam atque. Minus recusandae quis soluta non veniam pariatur blanditiis. Temporibus vitae nam voluptas consequatur iusto incidunt fuga possimus. Dolor incidunt beatae quaerat in voluptatum.</p><p>Iure perspiciatis voluptatem ex. Facilis voluptate expedita qui perspiciatis omnis. Autem quibusdam numquam sit iure fuga veritatis.</p><p>Ut placeat reiciendis aut et blanditiis sed error. Quidem adipisci aperiam rem autem. Cupiditate velit architecto voluptatibus maiores aut dolores hic. Qui voluptas nemo dolor eveniet necessitatibus ea similique. Alias vel est incidunt vel quis aut aut.</p><p>Odio veritatis consectetur maxime tempore sit. Et molestias impedit architecto autem. Nesciunt quibusdam aliquid non aperiam et ut. Distinctio rerum velit ex culpa id et corrupti illo.</p><p>Qui alias non quaerat. Voluptatem quibusdam sed vel nemo. Illum beatae aut maxime iusto occaecati saepe in. Aut eos qui non harum ad sed distinctio.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(17, 1, 2, 'Aut quaerat qui nihil consequuntur sed iste quibusdam unde.', 'qui-tempore-et-eos-sit-eveniet-ipsa-nam-accusamus', NULL, 'Omnis quis et blanditiis voluptatem quibusdam non deleniti. Aut sed dolores voluptatem voluptatum dolores autem quasi. Minus incidunt ex expedita ipsam sit. Possimus quas voluptas reiciendis.', '<p>Dolores deserunt eum ipsam voluptates voluptas. Sit similique qui asperiores architecto. Pariatur repellendus velit quod.</p><p>Sint magnam et sit non enim suscipit voluptas voluptatem. Ducimus voluptas consequatur vero rerum aperiam. Ea ut sed in. Illum provident error itaque porro voluptas et.</p><p>Dignissimos error et distinctio facilis sit eos. Facere et est est sunt inventore. Accusantium quo harum sed. Eligendi et autem aspernatur qui quia.</p><p>In et eum provident aspernatur natus voluptate. Ullam ut omnis voluptas libero. Facilis ratione et eum et impedit a. Quaerat velit maiores sit adipisci tempore adipisci. Voluptatem ut quibusdam quia ducimus.</p><p>Et nobis rem qui sed sed asperiores eos soluta. Debitis ipsam repellat tempora hic eligendi.</p><p>Qui explicabo voluptas nam et qui. Inventore cupiditate odio provident nobis qui sit. Vel consequatur saepe fuga. Magnam voluptas ut iste.</p><p>Fugit ea vitae et doloremque voluptates. Sit rerum possimus reiciendis at nemo suscipit. Recusandae esse ducimus inventore aut amet id possimus.</p><p>Explicabo excepturi consequuntur suscipit. In eum vitae omnis dolorem. Unde minus reprehenderit quo provident neque est.</p><p>Error reiciendis est quaerat cum aut. Ut quo ducimus accusamus voluptatum qui. Excepturi aut voluptatem sed voluptas corporis. Cum alias aut dicta aut.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(18, 2, 2, 'Et cum beatae et aperiam error.', 'velit-magni-dolor-et-aperiam', NULL, 'Numquam nihil unde soluta quam enim commodi. Totam ut nihil vel. Magnam quos tempore assumenda accusantium quibusdam.', '<p>Quam voluptatum sint alias perferendis. Consequatur et eaque nihil sit impedit.</p><p>Facere soluta eos cum quibusdam eligendi. Nihil reiciendis quo earum ut aut enim tenetur qui. Doloremque provident et et occaecati cum. Vel facere dolor illum non aut laborum asperiores.</p><p>Iste maiores minima excepturi ea rerum distinctio similique. Consequatur in id et sunt maiores eos. Sint ut recusandae quia qui sint omnis consequatur optio. Quidem quis eius nisi voluptates ut rerum maxime.</p><p>Non et modi et. Sit quae molestiae accusamus voluptas quos amet culpa. Tempora sed blanditiis quae dolor.</p><p>Omnis totam quo quod consequatur provident harum. Sit perspiciatis laboriosam qui quo in eveniet. Modi nisi vel maiores vero non dolores sunt.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(19, 2, 2, 'Sint impedit aut.', 'ducimus-exercitationem-maxime-quis-qui-repudiandae', NULL, 'Deserunt occaecati amet laboriosam. Qui recusandae id quis omnis eligendi sunt maiores. Facere rerum cupiditate qui qui necessitatibus.', '<p>Debitis dolor est eos similique ex. Ex minus eveniet non nihil eos. Repellendus soluta corporis magni asperiores et delectus nihil voluptas.</p><p>Dolores nulla repellat sed est est illum. Laudantium fugit optio quisquam autem sint. Distinctio modi voluptatem ratione ut vel vel.</p><p>Et laborum sit voluptatibus omnis fuga rerum libero. Occaecati nam minima corporis assumenda. Necessitatibus reprehenderit nemo qui aspernatur.</p><p>Sit illum maxime voluptas esse nisi et. Molestiae soluta et delectus repellendus dolore. Eum et debitis error totam sit mollitia ab vero.</p><p>Ipsa sit rerum officiis voluptatem rerum sit. Non quos dolorem odit voluptatibus. Molestiae laborum laboriosam et labore.</p><p>Odit aut quaerat assumenda officiis dolores ut enim. Laborum quasi dolorum ut omnis provident qui voluptas. Delectus consequuntur qui perferendis occaecati. Perspiciatis ut labore possimus porro quia iusto eum. Rerum aut aut rerum itaque et.</p><p>Quia eum consequatur autem tempore molestiae quia sit. Autem vel sit odit ut adipisci sit. Necessitatibus quasi est illum sed vel quisquam enim.</p><p>Reiciendis et facere consequatur et voluptatum. Eius harum soluta dignissimos error repudiandae unde. Eveniet laborum cumque quo sint. Ipsam quia impedit fugit et temporibus.</p><p>Non voluptas aut saepe et vero. Vel nobis voluptate vel repudiandae reiciendis. Quisquam aut nostrum ipsum culpa qui. Esse omnis quam blanditiis assumenda ipsam.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(20, 1, 1, 'In repellat illum voluptas.', 'enim-laudantium-excepturi-perferendis-accusantium', NULL, 'Nobis itaque officiis voluptas exercitationem quod expedita delectus quibusdam. Et doloribus in est. Aut amet a autem ut dolores doloremque harum quo.', '<p>Repellendus illo provident illo fuga suscipit. Recusandae quas rem blanditiis sit in illo vel. Modi et impedit et eum tempore excepturi sequi.</p><p>Quam voluptate qui est excepturi id et quod. Maiores non debitis aut ducimus officiis. Esse aut dicta fugit minima. Eaque repellat fugit nulla consequatur qui enim qui.</p><p>Ea assumenda dolor iusto nemo nihil adipisci. Ipsam magni quis enim facere qui aut et.</p><p>Id numquam nobis omnis alias aut qui. Animi ea rerum adipisci. Et dicta tenetur beatae voluptatem. Voluptatibus dolores fuga rem eos pariatur saepe fugit consequuntur.</p><p>Adipisci mollitia molestiae aut ea quam officia. Corrupti aut sequi omnis quibusdam unde aperiam repudiandae similique. Fuga placeat dolorem labore et quis. Magnam non dicta sit ipsa aut ut.</p><p>Aut magni ut consectetur occaecati ad laborum. Blanditiis harum aperiam earum nisi sit est. Veritatis aut aspernatur illo laudantium cumque excepturi quibusdam nobis.</p><p>Et sint quia quidem. Quaerat omnis architecto ad vitae ipsa alias ut corporis. Tempora omnis dolores culpa aperiam qui id.</p><p>Tempora vel ipsam suscipit doloremque. Illo totam veniam explicabo. Facilis sint ut consequatur velit quidem.</p>', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55'),
(21, 3, 1, 'judul bar', 'judul-bar', 'post-images/tmwgxBAPhFWFjGPlRB9j1gCzln6Y7ED44413cfVx.jpg', 'judul baru', '<div>judul baru</div>', NULL, '2022-08-14 02:17:54', '2022-08-16 21:02:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Faisal Basri', 'faisalbasri', 'faisalBasri@gmail.com', NULL, '$2y$10$yxohQsGtaeljhRe0PGDd0um1XTaKohbjDGpe./Kd9KFx2eb1NgVaS', NULL, '2022-08-13 23:45:55', '2022-08-13 23:45:55', 1),
(2, 'Mulya Pranowo', 'mulyani.luwar', 'nilam.tamba@example.net', '2022-08-13 23:45:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gBKWJVN1Q8jzrqZteakComon6eW8G8ndFsmVsLEOba38l9Z66pAOvfjSZ63P', '2022-08-13 23:45:55', '2022-08-13 23:45:55', 1),
(3, 'Kuncara Hidayanto', 'bandriani', 'paris48@example.com', '2022-08-13 23:45:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VaqvXWcmbX', '2022-08-13 23:45:55', '2022-08-13 23:45:55', 0),
(4, 'Maryadi Siregar S.Gz', 'xrahayu', 'jaka23@example.net', '2022-08-13 23:45:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '73qj1e8UY4', '2022-08-13 23:45:55', '2022-08-13 23:45:55', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
