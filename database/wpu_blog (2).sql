-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 25 Jul 2023 pada 09.40
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-07-17 23:18:14', '2023-07-17 23:18:14'),
(2, 'Data Scientist', 'data-scientist', '2023-07-17 23:18:14', '2023-07-17 23:18:14'),
(3, 'Personal', 'personal', '2023-07-17 23:18:15', '2023-07-17 23:18:15'),
(4, 'App Developer', 'app-developer', '2023-07-19 21:56:59', '2023-07-19 21:56:59'),
(5, 'Design', 'Design', '2023-07-19 21:59:02', '2023-07-19 21:59:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_12_041215_create_categories_table', 1),
(6, '2023_07_12_063556_create_posts_table', 1),
(7, '2023_07_20_031758_add_is_admin_to_users_table', 2),
(8, '2023_07_21_035506_add_role', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Ut in natus sint cumque alias molestiae.', 'incidunt-et-itaque-libero-qui-ipsa-sint', NULL, 'Dolorum nulla totam et repellendus sint ipsa. Veniam libero vel qui deserunt sit quibusdam ea. Ut sunt deserunt laboriosam molestiae autem et. Animi dolorum et numquam et commodi aut.', '<p>Dignissimos in assumenda neque laudantium aliquam. Qui voluptate nobis perspiciatis consequuntur eum consequatur repudiandae. Cumque blanditiis est nostrum praesentium ut. Nisi quo aliquid occaecati reprehenderit dicta corrupti dolorem beatae.</p><p>Consequatur assumenda provident aperiam non laborum odio aliquam. Et sapiente aut illo quia cupiditate ipsum. Quae aliquam id corporis maxime provident rem.</p><p>Explicabo ipsum ratione voluptatibus ea cumque voluptatem ea. Nihil dolores ratione qui. Et beatae maxime ut amet nisi.</p><p>Aperiam est ullam at ut. Sequi suscipit soluta voluptas. Alias officia amet eaque sunt. Quia molestiae non hic perspiciatis maxime ut ut.</p><p>Possimus assumenda repellendus a consequatur et vel quas consectetur. Facere inventore autem eos id inventore ut. Voluptate soluta unde occaecati. Similique et ut soluta at error quod optio. Dolores necessitatibus repudiandae repellat sed.</p><p>Quo necessitatibus sit enim qui sunt est eaque ut. Aliquid magni quia dolorem. Soluta dicta quisquam suscipit vel. Non ratione rerum quaerat. Consequuntur labore et est soluta libero quia.</p><p>Cum sint in nihil totam nihil sit. Excepturi ipsum aliquid dolorem ea natus. Doloremque et placeat fugiat quibusdam qui est aliquid. Neque molestiae sint aut aut ut qui.</p>', NULL, '2023-07-17 23:18:15', '2023-07-17 23:18:15'),
(2, 2, 1, 'Id nemo nam et deserunt nulla odio rem.', 'repudiandae-repudiandae-possimus-voluptatem', NULL, 'Aut adipisci molestias et. Eum in consequuntur cumque ea animi.', '<p>Adipisci placeat aspernatur sit et. Ipsum tenetur a eum officia. Voluptas voluptas voluptatum eum animi.</p><p>Qui doloremque ullam vel ducimus ex. Quis et hic vel aut tempore magni accusamus.</p><p>Esse voluptatem odit ratione temporibus sit molestiae facilis blanditiis. Est dolores iste qui deleniti aut. Non deserunt consequatur maiores cumque.</p><p>Reiciendis ullam enim quas nostrum ab iure incidunt. Sequi culpa ad dolorum cum dicta. Quo officiis praesentium ad aut voluptatibus sint voluptas nihil. Eum recusandae doloremque veniam sed minus et. Fuga dolores ut sit velit neque eius.</p><p>Vel quam ut natus incidunt repellendus. Omnis et quod harum et animi itaque eveniet. Iusto distinctio qui aut cum maiores mollitia.</p><p>Saepe ad voluptatibus et quo dolorem id. Quisquam laudantium reiciendis culpa voluptatem. Ipsum occaecati asperiores ut mollitia inventore.</p><p>Veniam voluptatem non ut quas optio molestiae dolorum et. Rerum id vel eius accusantium quaerat et. Dolores in corporis voluptas qui provident voluptas eos perferendis. Similique aut rem dolores cum.</p><p>Quia est odio maxime iusto aut ut. Voluptas et qui iste. Quis nihil facilis ut odit consequatur. Explicabo necessitatibus accusamus delectus nihil qui magni.</p><p>Delectus consequatur id eveniet quia nisi. Qui dolorem reprehenderit modi qui suscipit. Hic ut perspiciatis consequatur recusandae a odio corrupti sit.</p><p>Totam aut et id qui asperiores. In non qui quos iusto. Quas veritatis rerum id. Non laborum sint dolores fugit. Delectus autem assumenda sit ut perferendis.</p>', NULL, '2023-07-17 23:18:15', '2023-07-17 23:18:15'),
(3, 2, 1, 'Expedita harum ut soluta aperiam temporibus sint qui.', 'nostrum-omnis-ut-possimus-et-ut-non-cum', NULL, 'Est nam ex voluptatum atque quasi quasi tempore. Ut autem fugit dolor vero ad est vel.', '<p>Totam incidunt non voluptatem qui dolores enim ut. Tenetur minus impedit incidunt et itaque laborum libero voluptas. Et dolor eos voluptatem distinctio sed aut.</p><p>Odit beatae optio et. Architecto nobis eius temporibus alias a. Cupiditate quis et incidunt est fugit eius.</p><p>Tempore eum optio est debitis et molestias. Quos quaerat deserunt quia dolores similique. Et laboriosam nobis culpa deserunt minus rerum fuga.</p><p>Enim exercitationem iure architecto velit laborum. Est molestiae doloremque consequuntur a quisquam voluptas quia. Quos sunt temporibus ratione et. Quia temporibus ad inventore vel voluptas. Ad sed explicabo dolorem soluta porro dolor et.</p><p>Asperiores non nisi eligendi dolor soluta omnis aut. Nisi voluptas enim sint recusandae qui quis. Impedit molestias quia ut mollitia. Voluptatum repellendus ea ut omnis sed consequatur. Qui officiis quia laudantium aliquid sed qui perferendis.</p><p>Eius illum quas nostrum odio eum modi. Qui fugiat laborum rerum rerum ut consequatur temporibus. Eum sit blanditiis deleniti earum.</p><p>Natus eius qui quibusdam culpa. Expedita ipsum porro quis enim quisquam. Ratione quidem eos labore porro at.</p><p>Dolores reprehenderit voluptatem officia ab cupiditate dignissimos. Similique qui consectetur quidem quod eius. Delectus laborum commodi dolores dolores suscipit. Odio ipsum dolores quibusdam omnis dignissimos dolorem omnis.</p><p>Rerum fugit voluptates sunt possimus unde ut occaecati. Temporibus velit alias neque esse. Non assumenda vel aliquam. Amet ut adipisci laborum.</p>', NULL, '2023-07-17 23:18:15', '2023-07-17 23:18:15'),
(4, 2, 1, 'Dolor iusto voluptas.', 'dolorem-velit-temporibus-est-nihil-natus-dolor', NULL, 'Eaque id animi tempore provident ut nulla neque. Incidunt blanditiis in impedit voluptatibus quaerat et doloribus facere. Reprehenderit consequatur placeat nisi qui facere ratione harum. Voluptate ea incidunt repudiandae.', '<p>Architecto laudantium est omnis adipisci voluptas. Ut veritatis adipisci quidem blanditiis. Nam vel sit repudiandae dolores at.</p><p>Perferendis laborum totam ab aut culpa qui. Necessitatibus dolorum ex sit. Rerum ut aut ducimus voluptas nisi.</p><p>Quis dolores id ullam nobis eius dolores. Dolores beatae numquam assumenda sunt ab ab nemo et. Quo porro debitis perferendis itaque expedita minus voluptas.</p><p>Dolore magnam odit et autem perferendis. Non corporis laudantium reprehenderit unde. Laborum ipsa aspernatur enim repellat illum molestiae. Consequatur saepe alias est dolorum.</p><p>Ullam aut culpa impedit omnis. Et adipisci assumenda sint vel velit velit est. Itaque inventore dolorem ut necessitatibus veritatis ut. Voluptas in pariatur odit.</p><p>Voluptatem eius molestiae vero et. Placeat voluptate non id quis iusto qui sit pariatur. Recusandae ullam sit eligendi molestias beatae fugiat temporibus. Dolorem dicta aut occaecati debitis et consectetur dicta et.</p><p>Commodi est porro in modi et. Voluptate ut excepturi ab quo tempora. Quaerat quam voluptatibus voluptas rerum saepe nam officiis. Dolore quas quia laborum voluptas.</p><p>Distinctio dignissimos iusto voluptas illum. Reiciendis id dolor et molestiae. Sunt molestiae nam qui et. Quia et illum corrupti commodi.</p>', NULL, '2023-07-17 23:18:15', '2023-07-17 23:18:15'),
(5, 1, 3, 'Incidunt occaecati id necessitatibus voluptas inventore cupiditate aspernatur cum.', 'harum-non-qui-nisi-voluptatem', NULL, 'Et maiores quia temporibus dolores veritatis culpa quos rerum. Est quia deserunt fugiat cupiditate dolor. Odit nobis maiores quia eligendi aut dolorem magnam.', '<p>Similique nobis natus explicabo deserunt. Odio ipsa sint dolores voluptas. Et sunt amet dicta. Ipsam velit sunt nobis error ducimus blanditiis nisi qui.</p><p>Voluptas ut dolores voluptatibus magni corrupti. Et in officiis voluptatum. Incidunt voluptatibus dolorem et. At illo consequatur explicabo vel vero soluta.</p><p>Voluptates corporis nam quia fugit aut itaque. Et doloremque et quod saepe autem atque. Quia dolores quos saepe cum aut aut. Enim animi ducimus a dolorum odio ratione quidem fugiat. Aut accusamus debitis vel eligendi autem.</p><p>Magnam hic qui fugit est quia eos illum. Sit in omnis recusandae alias distinctio reiciendis dignissimos pariatur. Laborum explicabo ad voluptatem ea. Eveniet qui sint beatae. Et iusto in velit est.</p><p>Blanditiis suscipit ut ut rem accusamus adipisci dolorum. Sed eum iste officiis occaecati. Accusantium quam non aut voluptatum.</p><p>Perspiciatis et consequatur pariatur. Sed magni quae impedit quod. Dolorem culpa sint a autem rem et velit. Maxime velit qui rerum cupiditate impedit vitae nihil.</p>', NULL, '2023-07-17 23:18:15', '2023-07-17 23:18:15'),
(6, 1, 2, 'Qui vel voluptate harum sint aperiam.', 'sunt-cum-quia-molestiae-debitis-quia', NULL, 'Eius occaecati cupiditate magni. Est facilis ullam qui sunt quam nihil. Aspernatur assumenda ut occaecati omnis.', '<p>Et tempora commodi quia accusantium quasi adipisci quod. Reiciendis mollitia quia itaque dolorem maxime exercitationem tempora impedit. Et molestiae placeat distinctio laboriosam est iure distinctio.</p><p>Eligendi ut odio vel aperiam vero quae. Non molestiae laborum autem.</p><p>Iusto numquam numquam quasi sequi sunt laudantium ab. Et non qui debitis architecto non.</p><p>Architecto impedit ut ut iure doloribus ipsum. Cum autem et saepe laboriosam ducimus. Est perspiciatis sed minus est.</p><p>Enim fuga ratione neque labore. Non consequatur harum repudiandae in. Rerum porro quia a autem.</p>', NULL, '2023-07-17 23:18:15', '2023-07-17 23:18:15'),
(7, 1, 1, 'Error nulla neque rerum quia impedit.', 'temporibus-enim-nulla-sit-nostrum-error-rerum', NULL, 'Minus sint itaque illo quis. Molestias non sed ipsum voluptatem quis occaecati. Esse sed id fugiat expedita. Magni pariatur repudiandae sed rerum odit et.', '<p>Sit exercitationem est vel optio. Dolore minus minima asperiores aut. Ea recusandae adipisci ipsum molestias voluptatum magni.</p><p>Repellendus laudantium est quasi ut omnis. Quasi numquam molestias ducimus voluptates vitae non qui. Magni hic minus libero molestiae qui aut ut.</p><p>Cupiditate non deleniti sequi laudantium qui aut dolorum. Quia voluptas qui est iusto aut neque cumque. Illo alias est dolores alias repellendus. Aut dolorem assumenda excepturi est molestias cumque.</p><p>Est nam qui nihil quo quo tempore iure maiores. Unde officia labore dolores expedita consequatur minus id cum. Et quia quia minus deleniti iusto. Maiores mollitia eos veniam dolor iste nobis et.</p><p>Quia fugiat enim voluptatum sit. Neque rerum dolorem minima soluta. Consequatur aut recusandae autem eaque et et.</p>', NULL, '2023-07-17 23:18:15', '2023-07-17 23:18:15'),
(8, 1, 1, 'Consequatur accusantium consectetur et et et illum.', 'iusto-provident-sed-excepturi-consequatur-sit-ut', NULL, 'Et incidunt consequatur velit qui blanditiis error voluptatem. Rem error inventore voluptas amet. Sapiente saepe alias illum. Delectus adipisci suscipit numquam eos temporibus ut ut.', '<p>Aut et sint voluptas enim. Aut non iure voluptas officia est sunt mollitia. Sunt omnis tempore et qui dicta. Eius distinctio inventore vel modi qui magnam occaecati.</p><p>Sint veritatis id iste facere dolorem et dolorem similique. Est alias excepturi amet minus. Iste tempora ullam nobis voluptas sint repellat reprehenderit.</p><p>Atque vel sequi doloribus culpa quo quisquam quis. Cum aspernatur quia officia possimus. Totam aspernatur rerum in tempora sit ea quaerat. Et sit beatae officiis dolorum repellendus. Aperiam nisi qui voluptatem in.</p><p>Eum libero sunt minus odio et exercitationem impedit velit. Rerum quis similique sint alias dolor. Expedita perspiciatis incidunt ut alias sequi optio autem.</p><p>Repellat et eligendi error rerum rerum consectetur officia. Odit nostrum magni et expedita tempora. Itaque id minima porro et voluptas.</p><p>Dicta quis eligendi cupiditate odit. Ut recusandae asperiores quod deserunt. Quia rerum quam quia harum.</p><p>Porro quia eum aut delectus dolorem. Et nobis nihil explicabo reiciendis. Ipsum eos possimus earum aut non fugit. Fugit dicta sed rerum et dolorem et. Officia earum eum rerum ducimus aut.</p><p>A temporibus est corrupti quos ut. Ratione ullam omnis voluptate aut.</p>', NULL, '2023-07-17 23:18:16', '2023-07-17 23:18:16'),
(9, 2, 1, 'Ab sed ut et.', 'fugiat-vel-repellendus-aut-sit-quos-nisi-dolorem', NULL, 'Consequuntur nobis qui inventore et quia quis. Vel autem non ut eaque et. In harum quo sint.', '<p>Maxime voluptatum quod et est perspiciatis. Est consectetur voluptatem laudantium libero illum repudiandae aut.</p><p>Et quibusdam totam nihil non sit. Atque cumque tempore eum doloribus facere. Accusantium voluptates atque nihil aut debitis molestias.</p><p>Qui deleniti deleniti neque voluptatum. Minus cupiditate aliquam nihil id distinctio ex autem. Consectetur voluptatem voluptate officia dolore.</p><p>Accusamus a temporibus ut laborum deleniti. Eius aut fugiat fuga et. Tempore non sed provident occaecati cumque ipsam.</p><p>Aspernatur nam omnis in quis reiciendis velit. Tempora illum rem labore ducimus aut minima est. Vitae quia rerum fuga id.</p><p>Qui doloremque iste qui non eos quia incidunt sunt. Architecto non autem recusandae enim aut culpa totam. Vel quas fuga explicabo architecto.</p>', NULL, '2023-07-17 23:18:16', '2023-07-17 23:18:16'),
(10, 1, 3, 'Quis odit vel inventore consequatur nulla dicta officiis magni facere tenetur.', 'non-quis-et-voluptatem-incidunt-eos-repellendus', NULL, 'Assumenda sint voluptatum enim aut omnis. Magnam cum ut est delectus rem quo nostrum. Inventore magni nemo adipisci eligendi.', '<p>Ducimus nesciunt dolorum est fuga quo velit incidunt. Deserunt molestiae enim quia eum. Sit dolore deserunt tenetur earum et dolores repudiandae.</p><p>Debitis alias aliquid est molestias ea. Quibusdam voluptatem voluptatem non officiis odit asperiores quia.</p><p>Exercitationem modi aliquid ut cumque nihil. Perspiciatis amet quasi quia omnis. Itaque id quos error officiis repudiandae unde omnis. Repellat quos maiores sit iste nisi.</p><p>Excepturi nemo voluptas ea iusto nobis et. Impedit doloribus nihil adipisci facilis aut qui.</p><p>Ducimus repudiandae tenetur commodi quidem debitis fugiat. Velit deleniti omnis sapiente at et quasi libero. Vitae sed dignissimos explicabo ipsam.</p><p>Voluptas consequuntur ratione et. Est amet quidem sapiente ducimus reprehenderit. Ipsum officia explicabo deleniti laboriosam excepturi dolor. Non aut sed aut porro aut aut. Alias expedita provident est quo.</p><p>Enim deleniti dolores sit quia. Quasi autem aut consequatur ea praesentium qui saepe. Magni ullam molestias omnis. Ratione quia sed voluptas odio in. Doloribus facere rerum culpa alias voluptas ipsum.</p>', NULL, '2023-07-17 23:18:16', '2023-07-17 23:18:16'),
(11, 1, 2, 'Fuga optio ab sit iste.', 'aut-dolore-recusandae-ex-quia-repellat-maiores', NULL, 'Ipsam ipsam autem maxime eius itaque dolorem eum. Nemo a rerum rem ipsa. Deleniti odio provident voluptates velit temporibus veritatis non.', '<p>Officia quo et ipsam saepe sint dolores sunt. Assumenda quo placeat voluptatem nostrum et esse rerum. Non doloribus et et incidunt est doloribus aliquam.</p><p>Sequi odio debitis neque sapiente voluptate deleniti consequatur quasi. Consequuntur dolores fugiat qui. Quaerat voluptatum ipsum assumenda modi quia. Inventore at ipsam minus qui et.</p><p>Ea voluptatem distinctio odio et similique. Reprehenderit expedita ipsum velit sed.</p><p>Quas non earum et harum reprehenderit. Voluptatem aut praesentium animi. Enim consequatur ducimus maxime delectus voluptas et minus et. Tenetur officia atque vitae qui est sit.</p><p>Quod vero iure qui architecto. Vitae sunt id debitis enim voluptatum. Voluptatem explicabo est dolore ea. Aut et est quisquam sit.</p><p>Vel assumenda dolores quo voluptatem quidem repudiandae. Optio enim optio nesciunt nemo tempora nemo sequi expedita. Magni maiores totam eligendi nihil perspiciatis sed.</p><p>Veniam quisquam est et minus ut molestiae nostrum. Sed similique voluptatem exercitationem ut voluptatem. Magnam ut error nostrum.</p><p>Vel exercitationem quidem qui corrupti eius atque. Debitis assumenda accusamus maiores consequatur sint. Voluptatem porro asperiores quam eum repudiandae accusamus. Quis quo eveniet asperiores ea.</p>', NULL, '2023-07-17 23:18:16', '2023-07-17 23:18:16'),
(12, 2, 2, 'Omnis dolorem est modi libero vel.', 'molestias-exercitationem-expedita-inventore-fugiat-adipisci-dicta-commodi', NULL, 'Eaque maxime est ratione similique. Sit quo alias unde blanditiis dolorum in cupiditate.', '<p>Doloremque et facere est consequatur a. Earum eum veritatis nihil beatae. Sunt itaque id dolorem. Labore nam perspiciatis facilis magni reiciendis non aliquam sint.</p><p>Eum quam quasi quasi libero earum. Recusandae quia voluptatum enim. Praesentium qui ea quidem maiores impedit vel quod non.</p><p>Pariatur officia fuga quidem dolore voluptatum sed perspiciatis. Nobis quia dicta et ut voluptas molestiae voluptates non. Ea perspiciatis voluptatem illum delectus possimus est.</p><p>Dolore consequuntur eos aut rerum repudiandae voluptatem. Natus fugit aut officiis voluptatem id. Enim consequatur et nisi itaque ex et.</p><p>Sunt et est nemo. Culpa voluptates sit aperiam ea. Exercitationem accusantium a quia necessitatibus eligendi eveniet. Dolorum sed porro id.</p><p>Veniam cum facere animi qui consequatur. Necessitatibus dignissimos similique odit et ut sed accusantium. Quisquam autem odio veniam labore autem ut. Et vero eos ipsam atque.</p><p>Perferendis id et nihil odit voluptates optio nobis modi. Architecto nemo optio eum. Et ut eum ducimus cum ullam.</p><p>Vero debitis qui fugit repellat. Quos nemo architecto blanditiis non consequatur totam doloribus. Et quia voluptas eligendi at aut.</p><p>Architecto minus nesciunt odio optio cumque corporis quas. Et animi modi ut illo quia aspernatur tempora. Facilis consectetur iusto expedita necessitatibus velit. Facilis itaque dicta consequuntur id.</p><p>Nostrum non debitis harum voluptate. Aut odio cumque aspernatur voluptatem laudantium labore. Rerum repudiandae ea et reiciendis maxime pariatur ut iure. Omnis corporis cupiditate ut optio atque possimus.</p>', NULL, '2023-07-17 23:18:16', '2023-07-17 23:18:16'),
(13, 3, 3, 'Eos voluptatum distinctio omnis occaecati iusto ipsum aut non.', 'dolorem-eos-consequatur-eius-inventore-vel', NULL, 'Eos et magnam qui numquam. Odio distinctio aliquam fugiat repudiandae autem. Et modi consectetur commodi recusandae vel. Et omnis exercitationem numquam qui aliquam nihil aut.', '<p>Facilis et reprehenderit maxime corrupti voluptate et dicta. Fuga aut dolorem odio ab delectus exercitationem. Rem aut ipsam inventore odio dolores. Molestiae quia ad atque doloremque.</p><p>Qui minus amet illum quisquam nulla. Inventore quidem voluptate non veritatis est explicabo incidunt. Libero est quam eius quisquam omnis. Officiis in eos repudiandae qui voluptas voluptatem.</p><p>Culpa tempora at voluptatem optio et voluptas. Officia velit dolorem facilis quod. Consequatur beatae ut libero corporis eius voluptatibus dignissimos.</p><p>Qui consequuntur voluptatum maxime explicabo beatae. Non ad vel ab accusantium atque corporis exercitationem. Quaerat nihil molestiae laborum nemo ut. Sapiente ut corporis recusandae vel.</p><p>Dolores deleniti corrupti aut et sit aliquid dolores. Aut vel labore et. Impedit est sit placeat iure. Quos voluptatum sequi odit nostrum nisi expedita. Hic iusto enim ipsa ipsam animi eum sed.</p><p>Nihil necessitatibus consequuntur dicta alias eaque. Error reprehenderit perferendis quas dolorem doloribus facilis. Repellat voluptatibus molestiae doloribus ullam quasi error. Esse tempore architecto exercitationem et officiis.</p>', NULL, '2023-07-17 23:18:16', '2023-07-17 23:18:16'),
(14, 1, 3, 'Error quisquam asperiores voluptatem esse.', 'quia-officia-dolor-et-expedita-quo-omnis', NULL, 'Animi aperiam atque sequi voluptates. Illo mollitia iure culpa vero reiciendis debitis. Mollitia voluptate iure amet.', '<p>Eum distinctio sint corrupti debitis. Recusandae repellendus voluptates error minus corporis adipisci. Laudantium error veritatis blanditiis asperiores. Ea deleniti animi consequatur qui vero.</p><p>Nisi libero beatae aut voluptas rerum et quis. Quasi nesciunt in vel rem vel laudantium. Omnis rerum sint libero et dolores quis. Laudantium occaecati voluptates sed eveniet voluptas.</p><p>Enim voluptas est omnis et architecto. Animi assumenda aut repudiandae et. Est est voluptatem optio enim. Ut culpa debitis voluptatem velit.</p><p>Id ex et et ut. Et nisi autem quia repellat ipsum porro similique.</p><p>Ut numquam cum quae officia doloremque dolorem sapiente. Rerum doloremque debitis est eos nam. Ut occaecati quo cumque sit omnis harum.</p><p>Commodi et omnis earum deleniti. Sed repellendus dignissimos consequatur. Eveniet ipsa assumenda ea hic dolor labore. Eos et mollitia dolor animi et impedit aut corrupti.</p><p>Sequi maiores est dolores laboriosam dignissimos quaerat enim. Et odio tenetur quod. Odio laudantium provident consequatur delectus ut. Provident esse cum ad eos tempore esse.</p><p>Tempore quia accusantium non et quae earum ullam. Omnis fugit perspiciatis et fuga sunt quaerat eos.</p><p>Eligendi ut in sit quia quae. Repellat dolores aut quia suscipit. Aspernatur enim esse reprehenderit consequuntur ut molestiae.</p>', NULL, '2023-07-17 23:18:16', '2023-07-17 23:18:16'),
(15, 1, 1, 'Aperiam ducimus sed omnis deleniti.', 'est-suscipit-repellendus-tenetur-iste-ratione-laudantium-qui-ea', NULL, 'Libero perferendis magnam neque debitis. Assumenda dolore sint minus. Amet aut temporibus et quia et. Perspiciatis perferendis natus dolorem ex dicta. Et voluptatem nostrum explicabo temporibus delectus.', '<p>Vel praesentium incidunt non sint delectus qui ullam. Est accusantium provident labore rem nemo perspiciatis fugit. Vel pariatur vero quo quo voluptatem ut et saepe.</p><p>Alias consequatur sed aut quasi. Quasi perspiciatis reiciendis et sint consequuntur repellendus. Eveniet dolorem dicta explicabo omnis nobis consequatur vero. Omnis quae qui corporis nobis tempore sint.</p><p>Sunt consequuntur ut rem a sit. Est expedita quas quia et totam expedita. Et quas ipsam provident voluptatem aut. Occaecati libero harum fugiat est voluptate eaque sit.</p><p>Quos ut illum suscipit. Alias debitis temporibus eos quos nulla laboriosam vel. Qui voluptatem magni fugiat enim perspiciatis. Quia ipsum et est animi.</p><p>Laudantium itaque ea sit pariatur vero autem. Repudiandae ab non amet possimus praesentium aut quas. Laboriosam quidem nobis numquam ex.</p><p>Labore et nam in sunt est et magnam. Occaecati nisi consectetur vel eius sint soluta culpa. Nam eos alias doloremque earum ea beatae.</p><p>Optio provident ab accusamus. Ipsa possimus sed earum sunt veniam itaque.</p><p>Incidunt voluptas eum et cumque aut. Ducimus maxime quae perspiciatis nemo qui. Et molestias dicta quasi est sit totam dignissimos.</p>', NULL, '2023-07-17 23:18:16', '2023-07-17 23:18:16'),
(16, 2, 3, 'Et eum voluptatum neque.', 'quia-excepturi-tempore-architecto-facilis-architecto', NULL, 'Et aut non voluptas voluptatem vitae. Quia enim voluptas quae. Animi doloremque maxime ex illum. Dolores perspiciatis vel iste consequatur perspiciatis quaerat ad necessitatibus.', '<p>Cumque culpa praesentium nostrum. Excepturi voluptatum amet officiis et assumenda. Vero dolor officiis asperiores pariatur minima voluptates repellendus.</p><p>Est fugit voluptatibus ut consectetur ut ea aut. Aut aliquid quisquam ex asperiores ducimus dolore.</p><p>Ab vel cupiditate autem qui ex. Ipsa itaque eos eum unde enim repellat. Eius temporibus omnis et.</p><p>Ipsa totam sequi asperiores dolorem molestiae veritatis quo tenetur. Repellat est est iusto consequatur mollitia esse pariatur. Quam minima aut quia id. Sed qui aut ipsum delectus consequatur ullam.</p><p>Quisquam qui et consectetur repudiandae. Est id doloribus ut labore maxime at eaque. Numquam quidem neque ipsum sunt. Sed hic et nam vel voluptatum qui repellendus.</p><p>Repellat voluptate facere ut illo. Voluptatum earum nemo aut sunt vel quos ipsam mollitia. Omnis repellat aut fuga necessitatibus qui doloribus. Voluptas occaecati quisquam voluptatem quidem cumque aut est.</p><p>Sunt pariatur aliquid ut ut quo ut voluptatem. Officia ipsam aut autem perferendis. Reiciendis quo sed sed ipsa ut.</p><p>Consectetur tempora rerum id explicabo. Iure doloremque velit aliquid aliquam. Suscipit illum deleniti et omnis quidem facilis iusto. Hic ex temporibus nam quam.</p><p>Rerum repellat sint hic et. Non et quo architecto voluptates. Qui ratione quisquam totam similique doloribus quam. In quaerat ab doloremque iure aperiam vero velit dolores.</p>', NULL, '2023-07-17 23:18:16', '2023-07-17 23:18:16'),
(17, 3, 3, 'Quaerat omnis corrupti cum praesentium.', 'pariatur-aut-eos-vitae-corporis', NULL, 'Enim voluptatem hic sint molestias modi. Rem saepe error nisi molestiae fugiat aut. Ut iure facere tempora ut. Necessitatibus quam aspernatur optio laboriosam enim ut culpa quae. Sit sit eum est ad enim architecto.', '<p>Temporibus at architecto sit. Dolor quos maxime quis dolor libero fuga qui. Aspernatur alias numquam aliquam omnis et incidunt commodi non.</p><p>Officiis unde animi et at aut qui aliquid. Quas vitae qui delectus doloribus repellendus aspernatur. Ut aut aliquid recusandae officia ut voluptatem ratione amet.</p><p>Eum aut est qui ratione amet voluptas quia. Doloribus quo et consectetur fugit illum. Ea omnis laudantium quia non vel.</p><p>Sit vel aut libero provident dolores dolorem. Ut veritatis nihil dolor qui odit. Repudiandae harum dolorem inventore maxime.</p><p>Ipsam mollitia quis dignissimos pariatur. Quia eos sequi voluptas nostrum ducimus consectetur. Non qui quos ab distinctio quia odio.</p><p>Atque saepe et modi blanditiis. Repellendus non deserunt et ullam ut. Placeat consequatur asperiores aperiam quae soluta illum sed in. Dolorum voluptatibus dicta iusto optio.</p><p>Perferendis error dolorum non quaerat fugit tenetur sed quos. Nobis saepe excepturi error eos exercitationem. Quia tempore numquam esse earum sit eos saepe voluptas.</p><p>Ab quaerat et sed non quis. Consectetur molestias et minus sit deleniti consequatur possimus. Omnis blanditiis eaque ea quidem rerum earum minus. Iure placeat enim voluptatem eius.</p>', NULL, '2023-07-17 23:18:17', '2023-07-17 23:18:17'),
(18, 3, 2, 'Explicabo voluptatem et tenetur nostrum.', 'earum-repellat-velit-possimus', NULL, 'Eveniet natus atque atque molestias expedita et libero. Iste debitis non perferendis voluptas modi. Laboriosam consequatur eius corrupti tempore cum. Et laboriosam id perspiciatis illum aut quod fuga.', '<p>Ad aut consectetur mollitia rerum. Consectetur pariatur est quo eum. Pariatur molestiae cupiditate fuga voluptatibus recusandae quo doloremque. Et molestiae odit minima enim cum mollitia iste.</p><p>Ipsa quo a sint iusto dignissimos praesentium dolor aut. Excepturi odit ut est cupiditate. Dolorum fuga corporis earum voluptatibus. Quo sequi sit porro nihil.</p><p>Eligendi nesciunt voluptatem inventore ab error qui. Alias omnis laborum enim et dignissimos. Nesciunt temporibus quam sunt optio magnam omnis sit expedita. Quae facere error tempore neque.</p><p>Ut aut iusto et et error. Autem repudiandae iste perferendis qui iusto sit quaerat. Est quos ratione qui eaque. Explicabo est minima a omnis ipsam blanditiis quo.</p><p>Facere est rerum quibusdam voluptas dolorem illum. Ut illo quis voluptas sed. Natus aspernatur labore et nulla a quas. Neque et est aut voluptas non assumenda.</p><p>Exercitationem molestiae quisquam nostrum culpa minima voluptatibus. Quia tempora et culpa voluptates harum. Sunt occaecati architecto voluptates harum sed praesentium cupiditate.</p><p>Rerum ullam repellendus accusamus autem nostrum cumque. Sunt magni rerum vel dolorem deleniti. Reiciendis omnis est qui nisi.</p><p>Quia voluptatum unde alias cupiditate reiciendis. Nobis hic non harum necessitatibus. Ipsam laudantium consequatur aut voluptatem. Quis non sunt nam cupiditate at est.</p><p>Repudiandae temporibus soluta fugit quasi iusto qui. Maxime minima perspiciatis laudantium voluptas. Facere aliquam similique ipsam cumque quaerat.</p>', NULL, '2023-07-17 23:18:17', '2023-07-17 23:18:17'),
(19, 1, 2, 'Cumque ex est occaecati excepturi eveniet tenetur omnis.', 'modi-omnis-ex-et-qui-natus-dolorem-officiis', NULL, 'Ad nesciunt odio tempore eos delectus. Esse fugit et numquam magnam sint autem culpa. Perspiciatis non et qui.', '<p>Omnis aut qui facere eum sed inventore et nisi. Quos eligendi natus necessitatibus. Ipsum excepturi est et id. Sit maiores aut tempore laudantium. Temporibus nostrum occaecati nisi.</p><p>Voluptas blanditiis est vel. Culpa qui aut voluptates corrupti. Fugiat adipisci et velit quod quod.</p><p>Ea et ipsa nihil et aperiam alias aliquid. Repellat a voluptatibus tempore sed eligendi minus ut. Reprehenderit sint odit quos alias voluptatem ipsam ullam.</p><p>Iste corrupti praesentium at esse maxime ut. Ea quas amet eaque sint ipsum eius provident.</p><p>Quidem quia eos dolores ipsum inventore. Quaerat voluptates qui ratione tenetur reprehenderit eos eos est. Voluptas aut at ab sunt suscipit.</p><p>Aperiam eaque id quod ab iusto. Id reiciendis porro eos et. Laboriosam dolore mollitia nostrum. Repellendus molestiae culpa vel dolorum minus.</p><p>Amet est incidunt veniam dolor. Omnis et et magni omnis saepe. Error rem accusantium est nisi voluptas minus excepturi mollitia.</p><p>Sunt neque illo id et et. Quibusdam totam accusantium at molestias iure nisi ut. Voluptas aut illum voluptatem iste voluptatum temporibus magnam. Iste tenetur repudiandae dignissimos aut eum sunt.</p>', NULL, '2023-07-17 23:18:17', '2023-07-17 23:18:17'),
(20, 2, 1, 'Nulla quia delectus itaque sed maiores.', 'non-animi-ex-voluptas-saepe-distinctio-non-velit', NULL, 'Nesciunt doloremque est et vitae quibusdam repudiandae consequatur. Tenetur assumenda dolorem aut hic porro ducimus consectetur.', '<p>Dolore enim aut sunt incidunt saepe quae consequatur et. Enim labore quisquam reprehenderit quo a. Modi reprehenderit id veritatis ut. Atque perferendis delectus voluptatem quod iste nulla voluptatem cumque.</p><p>Aut rerum non dolor est debitis voluptatem. Explicabo ipsa inventore sunt velit. Molestiae qui impedit vel. Dolor ipsam laborum qui non atque.</p><p>Ducimus sed quam ut dolor ducimus maxime. Distinctio labore provident ullam. Qui doloribus nihil eum molestiae veniam eveniet natus.</p><p>Qui est iure quibusdam quis suscipit id inventore. Aut omnis quae sapiente quis iste quo molestiae. Sint alias consequuntur nihil blanditiis ab.</p><p>Qui laudantium eveniet soluta consequatur rerum. Sed alias reiciendis esse molestiae aut eos sapiente. Maiores ducimus non sunt suscipit libero et ab. Doloribus ratione error doloremque a sit quia.</p><p>Dolores ex itaque molestiae et dolor. Vero dolorem et vel adipisci est ab itaque.</p>', NULL, '2023-07-17 23:18:17', '2023-07-17 23:18:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Muhammad Nurdinnulah', 'dinnul', 'muhammadnurdinnullah@gmail.com', NULL, '$2y$10$hA0wEXTUp4miIGoB77C7DuafBT4NKZ1pGiJ93125.9gUldmVfGHWy', NULL, '2023-07-17 23:18:05', '2023-07-17 23:18:05', 0),
(2, 'Eva Usamah', 'galih31', 'puti.situmorang@example.com', '2023-07-17 23:18:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IZrhAMCNf5', '2023-07-17 23:18:14', '2023-07-17 23:18:14', 0),
(3, 'Warta Narpati', 'mandala.sabrina', 'lanang.halim@example.com', '2023-07-17 23:18:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vkMIdPsWMd', '2023-07-17 23:18:14', '2023-07-17 23:18:14', 0),
(4, 'dhani', 'nurhuda rama dhani', 'dhani@gmail.com', '2023-07-17 23:18:14', '$2y$10$qr.HaaqT/jfJhUDznsAKWOOox0.C/3/BFL49sZ6lmZxWXn9lLrXwi', 'Dm91uDzJsF', '2023-07-17 23:18:14', '2023-07-23 16:14:42', 1),
(5, 'nesianly', 'nesian', 'nesianly@gmail.com', NULL, '$2y$10$mAEAYUDVg5GctSvBEmJpQu94aOYYik8iEdMaXyU5bZfwlu9YDg8g.', NULL, '2023-07-19 19:29:20', '2023-07-19 19:29:20', 1);

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
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
