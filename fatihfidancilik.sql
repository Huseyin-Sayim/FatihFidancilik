/*
 Navicat Premium Dump SQL

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3307
 Source Schema         : fatihfidancilik

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 25/12/2024 15:53:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `blog_slug_unique`(`slug` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (2, 'Fidan Dikmenin Önemi', 'fidan-dikmenin-onemi', '<p>Doğanın bize cömertçe verdiği hediyeleri düşünürsek bizim de ona karşılığını vermemiz gerekir. Doğaya verilebilecek en güzel hediye ağaç dikmektir.</p><p>Bir fidanı toprakla buluşturmak, büyüyüp yeşermesini sağlamak kendimiz ve çocuklarımızın geleceği için yapmamız gereken en önemli görevlerden biridir.</p><p>Yaşamımızın devam etmesi için gerekli olan oksijenin büyük bir bölümünü ormanlar sağlar. Yapılan araştırmalara göre yetişkin bir çam ağacı, 40 kişinin bir saatte havaya verdiği karbondioksiti 1 saatte oksijene dönüştürür. 1 hektar çam ormanı yılda 30 ton oksijen üretir.</p><p>Ormanlar sadece oksijen kaynağı değildir. Ormanlar erozyonu, kuraklığı önler, dalından, yaprağından, gövdesinden birçok ürün elde edilir, kökleriyle su tutarak sellerin oluşmasını engeller, gürültüyü azaltır, beden ve ruh sağlığımız üzerine olumlu etkileri vardır. Bütün bu faydaları düşündüğümüzde ormanları korumanın ve ağaç dikmenin önemini daha iyi anlayabiliriz.</p><p>Çevremizde ormanlık alanların oluşturulması için ağaç dikim çalışmaları giderek artıyor. Hemen en yakın bölgeye gidip bir fidan dikebilir, bu kutsal göreve çocuğunuzla birlikte eşlik edebilir ve tertemiz bir hava için katkıda bulunabilirsiniz. Sadece tek bir fidan bile dikerek yeni bir yaşamın başlangıcını sağlayabilirsiniz.</p>', 17, '2024-12-25 11:04:37', '2024-12-25 11:04:37');
INSERT INTO `blog` VALUES (3, 'Fidan dikimi', 'fidan-dikimi', '<p>Fidanlıklarımızda son yıllarda makineli çalışmalar yaygınlaşmış bulunmaktadır. Makine ile yapılan yastık yapma, repikaj, fidan sökümü, kök kesme işlerinin istenilen şekilde olabilmesi, alet ve ekipmanların, rahat, arıza yapmadan çalışabilmesi için de toprağın derin olarak işlenmesi zorunluluğu vardır. Ayrıca yetiştirilen fidanların kök-gövde oranının uygun şekilde oluşturulması, toprağın derin ve çok iyi hazırlanmasına bağlıdır. Ancak, derin işleme fazla gevşek kum topraklarında önemli olmayabilir. Her ne sebeple olursa olsun derin toprak işlemesi, fidanlık çalışmalarında fidan kalitesini yükseltir, maliyeti düşürür.</p>', 11, '2024-12-25 11:05:07', '2024-12-25 11:05:07');
INSERT INTO `blog` VALUES (4, 'Fidan dikiminde önemli olanlar', 'fidan-dikiminde-onemli-olanlar', '<p>Organik Madde Durumu Yurdumuz fidanlıklarının toprakları genellikle organik madde yönünden fakirdir. Organik madde toprak verimliliğini ifade eder. Çok defa toprağın zenginliği, organik maddenin toprağa vermiş olduğu koyu renkle ölçülür. Organik maddelerin toprak üzerindeki etkileri üç grupta toplanabilir. Bunlar sırasıyla fiziksel, kimyasal ve biyolojik etkilerdir. Toprağın organik maddesi bitkisel kökenli(sap, saman, yaprak vb.) ya da hayvansal kökenli(hayvan gübresi) olabilir. Bunların zaman içerisinde fiziksel parçalanma ve kimyasal ayrışmaya uğramasıyla humuslu topraklar teşekkül eder. Organik materyal olarak hayvan gübresi, yeşil gübre, orman humusu ve çürüntüsü, ibre, kozalak, ağaç kabuğu ve odun artığı kırıntıları, talaş, ince yonga, yosun, çeşitli ot, sebze, saman, turba, mezbaha artıkları, melas, bira ve şarap fabrikası artıkları sayılabilir.</p>', 16, '2024-12-25 11:05:28', '2024-12-25 11:05:28');
INSERT INTO `blog` VALUES (5, 'Fidan dikim aşamaları', 'fidan-dikim-asamalari', '<p>Toprağın Yapısı Toprak; bitkilerin kökleriyle tutunduğu gelişip büyümesi için gerekli su ve besin maddeleri ihtiyacını karşıladığı canlı bir ortamdır. Toprağın fiziksel, kimyasal ve biyolojik olmak üzere üç özelliği vardır. Fiziksel özelliği denildiğinde toprak türü ve strüktürü, kimyasal özelliği denildiğinde başta toprağın reaksiyonu (pH) olmak üzere ihtiva ettiği çeşitli besin maddeleri, su ve hava boşluklarındaki gazlar, biyolojik özelliği ise, ihtiva ettiği bakteri, mantar ve diğer canlıların faaliyeti ve toprağa etkileri akla gelmektedir.</p>', 15, '2024-12-25 11:05:48', '2024-12-25 11:05:48');

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `media_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES (1, '1', '1', 'gallery/1735124189.jpg', 'image/jpeg', 1, '2024-12-25 10:56:29', '2024-12-25 10:56:29');
INSERT INTO `gallery` VALUES (2, '2', '2', 'gallery/1735124194.jpg', 'image/jpeg', 1, '2024-12-25 10:56:34', '2024-12-25 10:56:34');
INSERT INTO `gallery` VALUES (3, '3', '3', 'gallery/1735124201.jpg', 'image/jpeg', 1, '2024-12-25 10:56:41', '2024-12-25 10:56:41');
INSERT INTO `gallery` VALUES (4, '4', '4', 'gallery/1735124206.jpg', 'image/jpeg', 1, '2024-12-25 10:56:46', '2024-12-25 10:56:46');
INSERT INTO `gallery` VALUES (5, '5', '5', 'gallery/1735124211.jpg', 'image/jpeg', 1, '2024-12-25 10:56:51', '2024-12-25 10:56:51');
INSERT INTO `gallery` VALUES (6, '6', '6', 'gallery/1735124216.jpg', 'image/jpeg', 1, '2024-12-25 10:56:56', '2024-12-25 10:56:56');
INSERT INTO `gallery` VALUES (7, '7', '7', 'gallery/1735124223.jpg', 'image/jpeg', 1, '2024-12-25 10:57:03', '2024-12-25 10:57:03');
INSERT INTO `gallery` VALUES (8, '8', '8', 'gallery/1735124229.jpg', 'image/jpeg', 1, '2024-12-25 10:57:09', '2024-12-25 10:57:09');
INSERT INTO `gallery` VALUES (9, '9', '9', 'gallery/1735124235.jpg', 'image/jpeg', 1, '2024-12-25 10:57:15', '2024-12-25 10:57:15');
INSERT INTO `gallery` VALUES (10, '10', '10', 'gallery/1735124243.jpg', 'image/jpeg', 1, '2024-12-25 10:57:23', '2024-12-25 10:57:23');
INSERT INTO `gallery` VALUES (11, '11', '11', 'gallery/1735124250.jpg', 'image/jpeg', 1, '2024-12-25 10:57:30', '2024-12-25 10:57:30');
INSERT INTO `gallery` VALUES (12, '12', '12', 'gallery/1735124258.jpg', 'image/jpeg', 1, '2024-12-25 10:57:38', '2024-12-25 10:57:38');
INSERT INTO `gallery` VALUES (13, '13', '13', 'gallery/1735124265.jpg', 'image/jpeg', 1, '2024-12-25 10:57:45', '2024-12-25 10:57:45');
INSERT INTO `gallery` VALUES (14, '14', '14', 'gallery/1735124271.jpg', 'image/jpeg', 1, '2024-12-25 10:57:51', '2024-12-25 10:57:51');
INSERT INTO `gallery` VALUES (15, '15', '15', 'gallery/1735124276.jpg', 'image/jpeg', 1, '2024-12-25 10:57:56', '2024-12-25 10:57:56');
INSERT INTO `gallery` VALUES (16, '16', '16', 'gallery/1735124284.jpg', 'image/jpeg', 1, '2024-12-25 10:58:04', '2024-12-25 10:58:04');
INSERT INTO `gallery` VALUES (17, '17', '17', 'gallery/1735124292.jpg', 'image/jpeg', 1, '2024-12-25 10:58:12', '2024-12-25 10:58:12');

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (9, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (10, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (11, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (12, '2024_11_22_134826_create_settings_table', 1);
INSERT INTO `migrations` VALUES (13, '2024_11_22_135332_create_services_table', 1);
INSERT INTO `migrations` VALUES (14, '2024_11_22_135347_create_blog_table', 1);
INSERT INTO `migrations` VALUES (15, '2024_11_24_135513_create_gallery_table', 1);
INSERT INTO `migrations` VALUES (16, '2024_12_03_111721_update_value_in_settings_table', 1);
INSERT INTO `migrations` VALUES (17, '2024_12_25_093920_add_slug_to_services_table', 1);
INSERT INTO `migrations` VALUES (18, '2024_12_25_095912_add_slug_to_blog_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_intro_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_image` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `services_slug_unique`(`slug` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES (1, 'Zeytin Fidanı Çeşitleri', 'zeytin-fidani-cesitleri', 'Memecik ZeytinMemecik Zeytin İri olan memecik zeytin meyvesi, oval şekle sahiptir ve memeli bir yapısı vardır', '<h3><strong>Memecik Zeytin</strong></h3><p><strong>Memecik Zeytin</strong></p><p>İri olan memecik zeytin meyvesi, oval şekle sahiptir ve memeli bir yapısı vardır. İri çekirdekli olan memecik zeytini ilk başta yeşil kabuklu iken olgunlaşınca kabuğu siyah renk almaktadır. % 29-30 oranında yağ içeren memecik zeytini, depolamaya uygundur.</p><p>Fidan Seçiniz bölümünden aynı çeşide ait farklı anaçlara aşılı ve farklı boylarda fidan seçebilirsiniz. Hepside aynı meyveyi verirler çünkü hepsinede aynı çeşit aşılanmıştır. Fidanlarımız sık dikim için ve-veya değişik toprak yapılarına adaptasyon için bodur - yarıbodur - klasik(tohum anacı) anaçlara aşılanmaktadır. Anaçların özellikleri ve büyüklükleri aşağıdaki tablolarda gösterilmektedir. Fidanlarımız tüplü ve saksılı olarak satışa sunulmaktadır.</p><figure class=\"table\"><table><tbody><tr><td><strong>Tür&nbsp; :</strong></td><td>ZEYTİN</td></tr><tr><td><strong>Çeşit&nbsp; :</strong></td><td>MEMECİK.</td></tr><tr><td><strong>Orjini&nbsp; :</strong></td><td>Anadolu.</td></tr><tr><td><strong>Diğer İsimleri&nbsp; :</strong></td><td>&nbsp;</td></tr><tr><td><strong>Ağaç Özellikleri&nbsp; :</strong></td><td>Orta kuvvette gelişir ve yayvandır.</td></tr><tr><td><strong>Meyve İriliği&nbsp; :</strong></td><td>İri.</td></tr><tr><td><strong>Meyve Şekli&nbsp; :</strong></td><td>Oval şeklinde ve ucu memelidir.</td></tr><tr><td><strong>Meyve Kabuğu&nbsp; :</strong></td><td>İlk önce yeşil daha sonra siyah rengini alır.</td></tr><tr><td><strong>Meyve İçi&nbsp; :</strong></td><td>Çekirdekleri iridir.</td></tr><tr><td><strong>Meyve Kalitesi&nbsp; :</strong></td><td>%28-30 oranında yağ içerir.</td></tr><tr><td><strong>Depolama süresi :</strong></td><td>Depolamaya uygundur.</td></tr><tr><td><strong>Çiçeklenme zamanı&nbsp; :</strong></td><td>Mayıs ortası haziran başı.</td></tr><tr><td><strong>Derim Zamanı Diğer Özellikleri: :</strong></td><td>Yeşil olum dönemi ekim ayının ilk yarısı, siyah olum dönemi kasım ortasından&nbsp; aralık ayı ortasına kadardır. Hem yağlık hem de sofralık olarak kullanılır.</td></tr></tbody></table></figure><p><img src=\"https://www.batuhansenkal.com/deneme2/wp-content/uploads/2020/02/maxresdefault-1-300x169-1.jpg\" alt=\"\"><img src=\"https://fatihfidancilik.com/wp-content/uploads/2019/08/z2-300x125.jpg\" alt=\"\"></p><h3><strong>GEMLİK (TRİLYE) ZEYTİN FİDANI ÖZELLİKLERİ</strong></h3><p>&nbsp;</p><p><strong>Gemlik (Trilye) Zeytin Fidanı</strong></p><p>Fidan çeşidi olarak birçok çeşidi olan&nbsp;<strong>Gemlik (Trilye) zeytin fidanı&nbsp;</strong>tatlı çelik tüplü ve deliceye aşılı şeklinde belirli boyutlarda çeşitlerle bulunuyor. Ana vatanı Anadolu olan bu zeytin fidanının ağaç özellikleri olarak da bir hayli kuvvetli olması dikkat çekiyor.</p><p>Meyve iriliği bakımından orta irilikte olan bu zeytin çeşidinde meyve kalitesi de dikkat çekiyor. Yağ oranı bakımından inanılmaz bir yüksek kaliteye sahip bu zeytin çeşidinde yağ oranın %30 civarında olması bu fidan çeşidine olan ilgiyi artırıyor. Tozlayıcı çeşitleri olarak Ayvalık ve Çakır çeşitleri bulunurken Türkiye’de üretilen zeytinlerin %80’ini kapsıyor. Sofralık olarak kullanılmasının dışında da yağ oranının fazla olması yüzünden yağlık olarak da kullanılıyor.</p><p><strong>&nbsp;</strong></p><p>.</p><figure class=\"table\"><table><tbody><tr><td><strong>Tür&nbsp; :</strong></td><td>ZEYTİN</td></tr><tr><td><strong>Çeşit&nbsp; :</strong></td><td>GEMLİK (TRİLYE)</td></tr><tr><td><strong>Orjini&nbsp; :</strong></td><td>Anadolu.</td></tr><tr><td><strong>Diğer İsimleri&nbsp; :</strong></td><td>Kara, Kıvırcık, Kaplık.</td></tr><tr><td><strong>Ağaç Özellikleri&nbsp; :</strong></td><td>Orta kuvvette gelişir.</td></tr><tr><td><strong>Meyve İriliği&nbsp; :</strong></td><td>Orta iriliktedir.</td></tr><tr><td><strong>Meyve Şekli&nbsp; :</strong></td><td>Yuvarlağa silindiriktir.</td></tr><tr><td><strong>Meyve Kabuğu&nbsp; :</strong></td><td>Siyahtır.</td></tr><tr><td><strong>Meyve İçi&nbsp; :</strong></td><td>Çekirdekleri orta iriliktedir.</td></tr><tr><td><strong>Meyve Kalitesi&nbsp; :</strong></td><td>%29,9 yağ içerir.</td></tr><tr><td><strong>Depolama süresi :</strong></td><td>Depolamaya uygundur.</td></tr><tr><td><strong>Çiçeklenme zamanı&nbsp; :</strong></td><td>12 Mayıs-9 Haziran.</td></tr><tr><td><strong>Derim Zamanı&nbsp; :</strong></td><td>Kasım-Aralık ve Ocak ayları hasadı yapılır.</td></tr><tr><td><strong>Tozlayıcıları&nbsp; :</strong></td><td>Ayvalık,Çakır.</td></tr><tr><td><strong>Diğer özellikleri&nbsp; :</strong></td><td>Ülkemizde üretilen zeytinlerin %80\'i gemlik zeytinidir.Meyveleri yağ bakımından zengin olduğu için sofralık dışında yağlık olarak değerlendirilir.</td></tr></tbody></table></figure><p><img src=\"https://www.batuhansenkal.com/deneme2/wp-content/uploads/2020/02/75110tekir-odemis-esek-300x225-1.jpg\" alt=\"\"><img src=\"https://fatihfidancilik.com/wp-content/uploads/2019/08/odemis-esek-zeytini-zeytn-fdani-403-32-B-262x300.jpg\" alt=\"\"></p><h3><strong>ÖDEMİŞ EŞEK ZEYTİN FİDANI ÖZELLİKLERİ</strong></h3><p>&nbsp;</p><p><strong>Ödemiş Eşek Zeytin Fidanı</strong></p><p>Kahvaltılarında alışkanlık haline gelen ve vazgeçemediğiniz bir besindir aslında zeytin. Birçok çeşide sahiptir. Yeşili, siyahı , kırması, çizmesi, salamurası, biberlisi, tuzlusu o kadar çok seçenek sunar ki alıcısına. Üstelik sadece meyvesinden de değil yağından da nasiplendirir. Birçok yemekte severek kullandığınız zeytinyağlı yemeklerin tadına doyum olmaz. İşte doyamadığınız bir zeytin çeşidi daha ödemiş eşek zeytini tadına bakıldığında eğer sert zeytin tercihleriniz arasındaysa vazgeçemeyeceğiniz bir seçenek olacaktır.</p><p>&nbsp;</p><p>.</p><figure class=\"table\"><table><tbody><tr><td><strong>Tür&nbsp; :</strong></td><td>ZEYTİN</td></tr><tr><td><strong>Çeşit&nbsp; :</strong></td><td>ÖDEMİŞ EŞEK</td></tr><tr><td><strong>Orjini&nbsp; :</strong></td><td>Anadolu.</td></tr><tr><td><strong>Diğer İsimleri&nbsp; :</strong></td><td>Memeli.</td></tr><tr><td><strong>Ağaç Özellikleri&nbsp; :</strong></td><td>Kuvvetli gelişir.</td></tr><tr><td><strong>Meyve İriliği&nbsp; :</strong></td><td>Çok iri.</td></tr><tr><td><strong>Meyve Şekli&nbsp; :</strong></td><td>Yuvarlağa silindirik.</td></tr><tr><td><strong>Meyve Kabuğu&nbsp; :</strong></td><td>Yeşil.</td></tr><tr><td><strong>Meyve İçi&nbsp; :</strong></td><td>Meyve eti sert.</td></tr><tr><td><strong>Meyve Kalitesi&nbsp; :</strong></td><td>Meyveleri %21,8 yağ içerir.</td></tr><tr><td><strong>Depolama süresi :</strong></td><td>Depolamaya dayanıklıdır.</td></tr><tr><td><strong>Çiçeklenme zamanı&nbsp; :</strong></td><td>&nbsp;</td></tr><tr><td><strong>Derim Zamanı&nbsp; :</strong></td><td>&nbsp;</td></tr><tr><td><strong>Tozlayıcıları&nbsp; :</strong></td><td>Kendine verimlidir.</td></tr><tr><td><strong>Diğer özellikleri&nbsp; :</strong></td><td>Yeşil sofralık olarak değerlendirilir.</td></tr></tbody></table></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://www.batuhansenkal.com/deneme2/wp-content/uploads/2020/02/Domat-Zeytin-Fidani-36-300x200-1.jpg\" alt=\"\"><img src=\"https://fatihfidancilik.com/wp-content/uploads/2019/08/z4-300x125.jpg\" alt=\"\"></p><h3><strong>DOMAT ZEYTİN FİDANI ÖZELLİKLERİ</strong></h3><p><strong>Domat Zeytininin Özellikleri</strong></p><p>Domat zeytini genellikle dolmalık zeytin olarak tüketiliyor. Bu tür iri ve etli bir görünüme sahiptir. %23 oranında yağ içerir. Bu zeytin türüne Antalya, Şanlıurfa, Adana, Mersin ve Gaziantep illerinde rastlamak mümkündür. Domat zeytin ağacı orta büyüklükte bir yapıya sahiptir ve yayvan yaprakları bulunur. Ağacın karakteristik bir diğer özelliği ise dallarının çok sık ve sarkık bir şekilde duruyor olmasıdır. Ayrıca çok güçlü büyüyen ağaçlar arasındadır. Bu tür ağaçlar en çok killi toprakları sever ve böylece daha çok verim elde edilir. Killi toprakların yaygın olduğu Akdeniz Bölgesi&nbsp;<strong>Domat zeytin fidanı</strong>&nbsp;yetiştiriciliğinin yapıldığı bölgelerdendir.</p><p>&nbsp;</p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td><strong>Tür&nbsp; :</strong></td><td>ZEYTİN</td></tr><tr><td><strong>Çeşit&nbsp; :</strong></td><td>DOMAT</td></tr><tr><td><strong>Orjini&nbsp; :</strong></td><td>Anadolu.</td></tr><tr><td><strong>Diğer İsimleri&nbsp; : :</strong></td><td>&nbsp;</td></tr><tr><td><strong>Ağaç Özellikleri&nbsp; :</strong></td><td>Kuvvetli gelişir.</td></tr><tr><td><strong>Meyve İriliği&nbsp; :</strong></td><td>Orta iridir.</td></tr><tr><td><strong>Meyve Şekli&nbsp; :</strong></td><td>Yuvarlağa silindiriktir.</td></tr><tr><td><strong>Meyve Kabuğu&nbsp; :</strong></td><td>Yeşil renktedir.</td></tr><tr><td><strong>Meyve İçi&nbsp; :</strong></td><td>Et miktarı %89, yağ oranı %20\'dir.</td></tr><tr><td><strong>Meyve Kalitesi&nbsp; :</strong></td><td>Verimli bir çeşittir.</td></tr><tr><td><strong>Depolama süresi :</strong></td><td>Depolamaya uygundur.</td></tr><tr><td><strong>Çiçeklenme zamanı&nbsp; :</strong></td><td>&nbsp;</td></tr><tr><td><strong>Derim Zamanı&nbsp; :</strong></td><td>Eylül-Ekim.</td></tr><tr><td><strong>Tozlayıcıları&nbsp; :</strong></td><td>Kendine verimlidir.</td></tr><tr><td><strong>Diğer özellikleri&nbsp; :</strong></td><td>Yeşil sofralık olarak değerlendirilir.</td></tr></tbody></table></figure><p>&nbsp;</p><p><img src=\"https://www.batuhansenkal.com/deneme2/wp-content/uploads/2020/02/ayvalik-edremit-zeytin-fidani-300x190-1.jpeg\" alt=\"\"><img src=\"https://fatihfidancilik.com/wp-content/uploads/2019/08/z5-300x125.jpg\" alt=\"\"></p><h3><strong>EDREMİT (AYVALIK) ZEYTİN FİDANI ÖZELLİKLERİ</strong></h3><p><strong>Edremit (Ayvalık) Zeytin Fidanı</strong></p><p>Anadolu kökenli&nbsp;<strong>Edremit (Ayvalık) zeytin fidanı&nbsp;</strong>meyve iriliği bakımından orta büyüklüktedir. %24 gibi yüksek bir yağ oranına sahip bu fidan çeşidinin kokusunun hoş ve ilgi çekici olması ayrı bir olumlu özelliğidir. Bu bakımdan yüksek kalitede olan bu fidan çeşidi soğuğa karşı yüksek direnci ile de kullanımı kolay bir fidan halini almaktadır. Kullanım çeşidi olarak en yaygın kullanım çeşidi yağlık olarak kullanılmasıdır. %100 doğal olan bu ürünün Fatih Fidancılık adresinde tüplü ve saksılı birçok çeşidi bulunmaktadır. Bu fidan çeşitlerinin 50-100 cm aralığında uzunluk seçenekleri de bulunuyor.</p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td><strong>Tür&nbsp; :</strong></td><td>ZEYTİN</td></tr><tr><td><strong>Çeşit&nbsp; :</strong></td><td>EDREMİT(AYVALIK)</td></tr><tr><td><strong>Orjini&nbsp; :</strong></td><td>Anadolu.</td></tr><tr><td><strong>Diğer İsimleri&nbsp; :</strong></td><td>&nbsp;</td></tr><tr><td><strong>Ağaç Özellikleri&nbsp; :</strong></td><td>İyi bakım şartlarında kuvvetli gelişir.</td></tr><tr><td><strong>Meyve İriliği&nbsp; :</strong></td><td>Orta iriliktedir.</td></tr><tr><td><strong>Meyve Şekli&nbsp; :</strong></td><td>Yuvarlağa silindiriktir.</td></tr><tr><td><strong>Meyve Kabuğu&nbsp; :</strong></td><td>Siyahtır.</td></tr><tr><td><strong>Meyve İçi&nbsp; :</strong></td><td>%24,7 yağ içerir.</td></tr><tr><td><strong>Meyve Kalitesi&nbsp; :</strong></td><td>hoş kokuludur, verimi çok iyidir.</td></tr><tr><td><strong>Depolama süresi :</strong></td><td>Depolamaya uygundur.</td></tr><tr><td><strong>Çiçeklenme zamanı&nbsp; :</strong></td><td>&nbsp;</td></tr><tr><td><strong>Derim Zamanı&nbsp; :</strong></td><td>Ekim sonu - Kasım başı.</td></tr><tr><td><strong>Tozlayıcıları&nbsp; :</strong></td><td>Kendine verimlidir.</td></tr><tr><td><strong>Diğer özellikleri&nbsp; :</strong></td><td>Siyah olum döneminde hasat edilir siyah sofralık olarak kullanılır.</td></tr></tbody></table></figure><p>&nbsp;</p><p><strong>Edremit (Ayvalık) Zeytin Fidanı</strong></p><p>Anadolu kökenli&nbsp;<strong>Edremit (Ayvalık) zeytin fidanı&nbsp;</strong>meyve iriliği bakımından orta büyüklüktedir. %24 gibi yüksek bir yağ oranına sahip bu fidan çeşidinin kokusunun hoş ve ilgi çekici olması ayrı bir olumlu özelliğidir. Bu bakımdan yüksek kalitede olan bu fidan çeşidi soğuğa karşı yüksek direnci ile de kullanımı kolay bir fidan halini almaktadır. Kullanım çeşidi olarak en yaygın kullanım çeşidi yağlık olarak kullanılmasıdır. %100 doğal olan bu ürünün fidandeposu.com adresinde tüplü ve saksılı birçok çeşidi bulunmaktadır. Bu fidan çeşitlerinin 50-100 cm aralığında uzunluk seçenekleri de bulunuyor.</p><p><img src=\"https://www.batuhansenkal.com/deneme2/wp-content/uploads/2020/02/MANZALINA-ZEYTIN-FIDANI-80-CM-47a5-300x225-1.jpg\" alt=\"\"><img src=\"https://fatihfidancilik.com/wp-content/uploads/2019/08/z6-300x125.jpg\" alt=\"\"></p><h3><strong>MANZALİNA ZEYTİN FİDANİ ÖZELLİKLERİ</strong></h3><p><strong>MANZALİNA ZEYTİN FİDANİ ÖZELLİKLERİ</strong></p><p>Fidan Seçiniz bölümünden aynı çeşide ait farklı anaçlara aşılı ve farklı boylarda fidan seçebilirsiniz. Hepside aynı meyveyi verirler çünkü hepsinede aynı çeşit aşılanmıştır. Fidanlarımız sık dikim için ve-veya değişik toprak yapılarına adaptasyon için bodur - yarıbodur - klasik(tohum anacı) anaçlara aşılanmaktadır. Anaçların özellikleri ve büyüklükleri aşağıdaki tablolarda gösterilmektedir. Fidanlarımız çıplak köklü, tüplü ve saksılı olarak satışa sunulmaktadır. Saksı ve Tüp büyüklükleri Litre olarak belirtilmiştir ve aşağıda resimde gösterilmiştir.&nbsp;Çıplak köklü fidanlarımız ise 130 cm lik kutularımıza sığacak şekilde kök ve dalları budanarak dikime hazır gönderilecektir.</p><figure class=\"table\"><table><tbody><tr><td><strong>Tür&nbsp; :</strong></td><td>ZEYTİN</td></tr><tr><td><strong>Çeşit&nbsp; :</strong></td><td>MANZALİNA.</td></tr><tr><td><strong>Orjini&nbsp; :</strong></td><td>İspanya.</td></tr><tr><td><strong>Diğer İsimleri&nbsp; :</strong></td><td>&nbsp;</td></tr><tr><td><strong>Ağaç Özellikleri&nbsp; :</strong></td><td>Orta kuvvette gelişir.</td></tr><tr><td><strong>Meyve İriliği&nbsp; :</strong></td><td>Orta iriliktedir.</td></tr><tr><td><strong>Meyve Şekli&nbsp; :</strong></td><td>Yuvarlağa silindiriktir.</td></tr><tr><td><strong>Meyve Kabuğu&nbsp; :</strong></td><td>Yeşil.</td></tr><tr><td><strong>Meyve İçi&nbsp; :</strong></td><td>Çekirdekleri orta iriliktedir.</td></tr><tr><td><strong>Meyve Kalitesi&nbsp; :</strong></td><td>%20.4 yağ içerir.</td></tr><tr><td><strong>Depolama süresi :</strong></td><td>Depolamaya uygundur.</td></tr><tr><td><strong>Çiçeklenme zamanı&nbsp; :</strong></td><td>&nbsp;</td></tr><tr><td><strong>Derim Zamanı&nbsp; :</strong></td><td>&nbsp;</td></tr><tr><td><strong>Tozlayıcıları&nbsp; :</strong></td><td>Kendine verimli.</td></tr><tr><td><strong>Diğer özellikleri&nbsp; :</strong></td><td>Yeşil olum döneminde toplanan zeytinler yeşil sofralık olarak değerlendirilir.</td></tr></tbody></table></figure>', 7, '2024-12-25 10:58:48', '2024-12-25 10:58:48');
INSERT INTO `services` VALUES (2, 'Badem Fidanı Çeşitleri', 'badem-fidani-cesitleri', 'Bademin Ağaç Özellikleri Ağaç: 6-8 m. boylanır. Bazı hâllerde ağaçların yüksekliği 12 m’ye kadar boylanabilir.', '<h3><strong>Bademin Ağaç Özellikleri</strong></h3><p><strong>Ağaç: 6-8 m. boylanır. Bazı hâllerde ağaçların yüksekliği 12 m’ye kadar&nbsp;boylanabilir. Yıllık dallar üzerindeki tüm tomurcuklar aynı mevsimde büyür ve&nbsp;ikinci dalların meydana gelmesi hâlinde ağaç yayvan olur.</strong></p><p><strong>Yıllık sürgünler&nbsp;üzerindeki tomurcukların sürmemesi hâlinde ise ağaç dik büyür (Teksas çeşidi&nbsp;gibi).</strong></p><p>Badem ağaçları ortalama olarak 50 yıl kadar yaşar. 100 yaşına kadar&nbsp;yaşayan ağaçlara da rastlamak mümkündür.</p><ul><li>Kök: Kazık kök tipindedir. Saçak kök az olduğundan fidanlar yer değiştirme&nbsp;sırasında çok kayıplar verir.</li><li>Yapraklar: Çeşitlere göre iri, orta iri ve küçüktür. Yaprağın bulunduğu dal ve&nbsp;çevre koşulları bunu etkiler. Renk açık ve koyu yeşil arasında değişir. Yaprağın</li></ul><p>kenarları dişlidir.</p><ul><li>Tomurcuklar: Çiçek tomurcukları, farklı yaştaki dallarla bunlar üzerindeki 2-13 cm uzunluğundaki buket denilen kısa meyve</li></ul><p>dalcıklarında bulunur.</p><h3><strong>Badem Çeşitleri(Kabuk Özelliklerine Göre)</strong></h3><p><img src=\"https://fatihfidancilik.com/wp-content/uploads/2019/08/kabuk-300x225.jpg\" alt=\"\"></p><h2><strong>BADEM FİDANLARIMIZ (EN ÇOK BİLENEN VE SATIŞTAKİ)</strong></h2><ul><li><strong>Ferraduel badem fidanı,</strong></li><li><strong>Ferragnes Badem fidanı,</strong></li><li><strong>Nonpariel Badem Fidanı,</strong></li><li><strong>Teksas Badem Fidanı,</strong></li><li><strong>Tuono Badem fidanı.</strong></li></ul><h3><strong>Badem Çeşitleri Kabuk Sertliklerine Göre El Bademi, Diş Bademi, Sert Badem ve Taş Bademi Olarak Gruplandırılmaktadır.</strong></h3><h5><strong>·El&nbsp;bademi :&nbsp;&nbsp;&nbsp; &nbsp;Bu gruba giren çeşitlerde kabuk, el ile kolayca kırılabilmektedir. El&nbsp;bademlerinde randıman oldukça yüksektir. El bademlerinin muhafazası, ince&nbsp;kabuklu olmalarından dolayı uzun süreli olamamaktadır.</strong></h5><h5><strong>·Diş bademi :&nbsp;&nbsp;&nbsp;Bu grupta yer alan bademler, diş ile kolayca kırılırken el ile zor&nbsp;kırılırlar. Muhafazaları el bademlerine göre daha kolaydır. İç randımanları&nbsp;yüksektir.</strong></h5><h5><strong>·Sert bademler :&nbsp;&nbsp;&nbsp;Çekiçle kolay, diş ile zor kırılırlar. Randımanı yüksektir.</strong></h5><h5><strong>·Taş bademler :&nbsp;&nbsp;&nbsp;Bu gruba giren bademlerde kabuk ancak çekiçle&nbsp;kırılabilmektedir. Bademler, tat durumlarına göre de tatlı ve acı badem olarak 2&nbsp;gruba ayrılmaktadır:</strong></h5><h5><strong>·Acı Bademler :&nbsp;&nbsp;&nbsp;Siyanidrik asit içerdikleri için zehirlidirler ve badem yağı&nbsp;çıkarmak amacıyla kullanılırlar.</strong></h5><h5><strong>·Tatlı Bademler :&nbsp;&nbsp;&nbsp;28–48° güney enlemlerdeki elverişli bölgelerde yaygın&nbsp;olarak yetiştirilir ve bazı yörelerde şeftaliyle melezlenir. Badem,&nbsp;çiçeklenmeden önce kış koşullarına şeftali kadar dayanıklı olmakla&nbsp;birlikte kuzey yarımkürede genellikle daha erken (ocak sonu ile nisan&nbsp;başı arasında) çiçeklenir. Bu nedenle çiçeklenme döneminde don&nbsp;olaylarına rastlanabilecek yerlerde badem yetiştirmek pek uygun değildir.</strong></h5><h3><strong>Badem Fidanı Fiyatları ve Siparişi</strong></h3><p><strong>Badem fidanlarımız tüplü ve açık köklü olarak satışta olup satışlarımız yılın 12 ayı sürmektedir. Firmamızdan çok uygun fiyatlara badem fidanı sipariş verebilir badem bahçenizi Fatih Fidancılık güvencesi ile kurabilirsiniz…</strong></p><p><img src=\"https://fatihfidancilik.com/wp-content/uploads/2019/08/drake-300x265.jpg\" alt=\"\"></p>', 2, '2024-12-25 10:59:42', '2024-12-25 10:59:42');
INSERT INTO `services` VALUES (3, 'Meyve Fidanı Çeşitleri', 'meyve-fidani-cesitleri', 'Akhisar Fatih Fidancılık Olarak Her Türlü Fidan Çeşitlerinde Sizlere Hizmet Veriyoruz Bizimle İletişime Geçin', '<p><strong>\"Doğal ve Lezzetli Hasat İçin Kaliteli Meyve Fidanları\"</strong><br>Bahçeniz, balkonunuz veya tarlanız için meyve yetiştirmenin en iyi yolu, sağlıklı ve güçlü meyve fidanlarıdır. Dükkanımız, her biri özenle seçilmiş ve yüksek verimliliğe sahip çeşitleri sizlere sunar. Elma, armut, şeftali, erik, kiraz, kayısı, nar, ceviz gibi pek çok farklı meyve türüne ait fidanlarımızla, doğanın bereketini kendi ellerinizle hasat edin.</p><p><strong>Neden Bizim Meyve Fidanlarımız?</strong></p><ul><li><strong>Zengin Çeşitlilik:</strong> Tropikalden klasik meyvelere kadar geniş bir ürün yelpazesi sunuyoruz.</li><li><strong>Sağlık ve Doğallık:</strong> Kendi meyvelerinizi yetiştirerek organik ve katkısız ürünler elde edebilirsiniz.</li><li><strong>Kolay Bakım:</strong> Her fidan için detaylı bakım rehberi ve destek hizmeti sunuyoruz.</li></ul><p><strong>Kimler İçin İdeal?</strong></p><ul><li><strong>Bahçe Meraklıları:</strong> Bahçesine yeni renkler katmak isteyenler.</li><li><strong>Çiftçiler:</strong> Ticari amaçla meyve yetiştiren profesyoneller.</li><li><strong>Hobi Amaçlı Yetiştirenler:</strong> Balkonunda veya küçük bahçesinde meyve ağacı yetiştirmek isteyenler.</li><li><strong>Doğayı Sevenler:</strong> Çevre dostu bir yaşam tarzını benimseyen bireyler.</li></ul><p><strong>Meyve Fidanı Bakımı</strong></p><ul><li>Uygun toprak ve sulama bilgileriyle size rehberlik ediyoruz.</li><li>Dikimden itibaren her mevsime uygun bakım ipuçları sağlıyoruz.</li><li>Zararlılar ve hastalıklara karşı koruma yöntemleriyle fidanlarınızın sağlığını garanti altına alıyoruz.</li></ul><p>Doğadan ilham alın, kendi meyve bahçenizi oluşturun ve her ısırıkta emeğinizin tadını çıkarın! Şimdi sipariş verin ve hayalinizdeki meyve bahçesine bir adım daha yaklaşın.</p>', 6, '2024-12-25 11:00:47', '2024-12-25 11:00:47');
INSERT INTO `services` VALUES (4, 'Ceviz Fidanı Çeşitleri', 'ceviz-fidani-cesitleri', 'Aşılı Ceviz Fidanı Çeşitleri Ülkemiz Dünya’da, coğrafi ve iklimsel özellikler bakımından verimli ceviz yetiştiriciliği yapılabilecek avantajlı ülkelerden biridir.', '<h3><strong>Aşılı Ceviz Fidanı Çeşitleri</strong></h3><p><strong>Ülkemiz Dünya’da, coğrafi ve iklimsel özellikler bakımından verimli ceviz yetiştiriciliği yapılabilecek avantajlı ülkelerden birisidir. Anadolu’nun her bölgesinde çok yaşlı ağaçların bulunması aslında bunun bir kanıtıdır. Bu kapsamda yapılan araştırmalar ışığında son 20 yıldır ülkemizin değişik bölgelerinde aşılı fidan kullanılarak ceviz bahçeleri kurulmuş ve başarılı sonuçlar</strong></p><p><strong>Bu 20 yıllık süreçte elde edilen önemli bilgilerden biri de, bahçe oluştururken dikim yapacağımız uygun ceviz fidanının seçimidir. Ceviz fidanı çeşidinin dikim bölgemizin</strong>&nbsp;<strong>iklim koşullarına uygunluğu</strong>&nbsp;<strong>önem arz etmektedir.</strong></p><p><strong>Ülkemizdeki resmi kurumların bu konudaki çalışmaları durmaksızın devam etmektedir. Tespit edilen ceviz çeşitlerinin üretimi,&nbsp;gerek kurumlarca gerekse de özel teşebbüsler tarafından sertifika verilmek suretiyle yapılmaktadır.</strong></p><p><strong>Yerli ceviz çeşitleri dediğimiz&nbsp;</strong><i><strong>Yalova, Şebin, Bilecik, Kaman</strong></i>&nbsp;<strong>türleri ülkemizdeki üniversite ve tarımsal geliştirme kurumlarında yapılan araştırmalar sonucunda ortaya çıkarılmıştır. Bu ceviz çeşitlerinin son 20 yıldır ismine uygun olarak değişik bölgelere dikimi yapılmaktadır.&nbsp;</strong></p><p><strong>Ceviz yetiştiriciliğinin geliştirilmesi kapsamında yurtdışında da araştırmalar yapılmış ve ülkemize uygun olduğu değerlendirilen ceviz çeşitlerinin anaçları ithal edilmiştir. Yapılan deneme çalışmalarından sonra ülkemize uygun olduğu ve üstün verim elde edilebilen yabancı ceviz fidanı çeşitleri de üretilmeye başlanmıştır.</strong></p><p><strong>Son 10 yıldır dikimi yapılan</strong>&nbsp;<i><strong>Chandler ceviz, Pedro ceviz, Fernor ceviz</strong></i><strong>&nbsp;ve tozlayıcı çeşit olan&nbsp;</strong><i><strong>Franquette ve Fernette ceviz</strong></i><strong>&nbsp;çeşitleri kendini ispatlamış, yatırmcı ve çiftçilerimizce tercih sebebi olmuşlardır.&nbsp;</strong></p><p><strong>Fatih Fidancılık olarak yukarıdaki yerli ve yabancı ceviz fidanı çeşitlerinin</strong>&nbsp;<strong>sertifikalı olarak üretimini</strong>&nbsp;<strong>yapmaktayız</strong></p><p>&nbsp;</p><h2><strong>Fatih Fidancılık olarak ana ilkemiz; gerekli bilgi desteğiyle ismine doğru, sağlıklı ve&nbsp;bölgenize uygun&nbsp;ceviz fidanlarını sizlere ulaştırmaktadır.</strong></h2><p>&nbsp;</p><h3><strong>Aşılı Ceviz Fidanı Çeşitleri (Yabancı Tür)</strong></h3><h2>&nbsp;</h2><p>&nbsp;</p><p><img src=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/ceviz-agaci-yetistiriciligi-3-300x200-1-1.jpg\" alt=\"\"></p><h3><strong>Chandler (Çetnır) Ceviz</strong></h3><p>Üstün verimli Amerikan çeşididir. 1000-1100 metre rakıma (denizden yükseklik) kadar dikilebilir. Sık dikime uygundur. İlkbahar donlarından etkilenmez. Genç yaşlarında ciddi verim alınabilen bir çeşittir. Tozlayıcısı Franquette’dir.</p><p><img src=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/fernor-ceviz-fidani-002-300x300-1.jpg\" alt=\"\" srcset=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/fernor-ceviz-fidani-002-300x300-1.jpg 300w, https://www.fatihfidancilik.com/wp-content/uploads/2020/02/fernor-ceviz-fidani-002-300x300-1-150x150.jpg 150w\" sizes=\"100vw\" width=\"300\"></p><h3><strong>Fernor Ceviz</strong></h3><p>Fransız orjinlidir. 1700-1800 metre rakıma kadar dikilebilir. İlkbahar ve Sonbahar erken donlarından etkilenmez. Sık dikime uygundur. Soğuk iklim cevizi de denilmektedir. Tozlayıcısı&nbsp;Franquette&nbsp;ve&nbsp;Fernettedir</p><p><img src=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/pedro-ceviz-fidani-cevz-fdani-384-11-O.jpg\" alt=\"\" srcset=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/pedro-ceviz-fidani-cevz-fdani-384-11-O.jpg 450w, https://www.fatihfidancilik.com/wp-content/uploads/2020/02/pedro-ceviz-fidani-cevz-fdani-384-11-O-262x300.jpg 262w\" sizes=\"100vw\" width=\"450\"></p><h3><strong>Pedro Ceviz</strong></h3><p><strong>Fransız orjinlidir. &nbsp;Soğuklanma süresi kısadır. Rakımı düşük ve ılıman iklimli bölgelerden 1000 metre rakıma kadar olan bölgelere dikilebilir. Sık dikime uygundur.&nbsp; Sert budamayı sever. Kendi kendini&nbsp;tozlayabilir.</strong></p><p>&nbsp;</p><p><img src=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/franquette-ceviz-fidani-300x300-1.jpg\" alt=\"\" srcset=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/franquette-ceviz-fidani-300x300-1.jpg 300w, https://www.fatihfidancilik.com/wp-content/uploads/2020/02/franquette-ceviz-fidani-300x300-1-150x150.jpg 150w\" sizes=\"100vw\" width=\"300\"></p><h3><strong>Franquette Ceviz</strong></h3><p><strong>Fransız orjinlidir. Genellikle&nbsp;Chandler,&nbsp;Fernor&nbsp;ve&nbsp;Pedro&nbsp;ceviz çeşitleri için&nbsp;tozlayıcı&nbsp;fidan olarak dikilir. &nbsp;Dikilecek (20) adet ana türe &nbsp;(1) adet olarak dikilmelidir.&nbsp; Dikine ve kuvvetli gelişen bir ceviz ağacıdır.</strong></p><p>&nbsp;</p><h3><strong>Yerli Tür Aşılı Ceviz Fidanı Çeşitleri</strong></h3><p><img src=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/sebin_2-240x300-1.jpg\" alt=\"\"></p><h3><strong>Şebin Ceviz</strong></h3><h2>&nbsp;</h2><p><strong>Kıyı bölgeleri hariç tüm bölgelerde dikilebilir. Sık dallı olup yayvan bir gelişme gösterir. 10’ar metre aralıklarla dikilmelidir.&nbsp; Tozlayıcısı&nbsp; Bilecik cevizidir.</strong></p><p><img src=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/bilecik_3-240x300-1.jpg\" alt=\"\"></p><h3><strong>Bilecik Ceviz</strong></h3><p><strong>Kıyı bölgeleri hariç tüm bölgelerde dikilebilir. İlkbahar geç donlarından etkilenmez. 10’ar&nbsp;metre aralıklarla dikilir. Tozlayıcıları&nbsp; Şebin ve Yalova-3 cevizleridir.&nbsp;</strong></p><p><img src=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/YALOVA-300x171-1.jpg\" alt=\"\"></p><h3><strong>Yalova Ceviz</strong></h3><p><strong>Kıyı bölgeleri ile karasal bölgelerde dikilebilen çeşitleri mevcuttur. Dik ve yayvan dallı bir çeşittir. 10’ar metre aralıklarla dikilir. Yalova 1, 3 ve 4 çeşitleri mevcuttur.&nbsp;</strong></p><p><img src=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/kaman-1-cevizi-300x300-1.jpg\" alt=\"\" srcset=\"https://www.fatihfidancilik.com/wp-content/uploads/2020/02/kaman-1-cevizi-300x300-1.jpg 300w, https://www.fatihfidancilik.com/wp-content/uploads/2020/02/kaman-1-cevizi-300x300-1-150x150.jpg 150w\" sizes=\"100vw\" width=\"300\"></p><h3><strong>Kaman-1 Cevizi</strong></h3><p><strong>Kıyı bölgeler hariç tüm bölgelere dikilebilir. İlkbahar geç donlarından etkilenmez. Dik ve yayvan büyür. 10’ar metre aralıklarla dikilir. Tozlayıcıları Bilecik ve Şebin cevizleridir.</strong></p>', 5, '2024-12-25 11:01:36', '2024-12-25 11:01:36');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('O9qcGbWhXxSZzsI5hc3kTNIoJ56MPivbtOU2ncyf', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicjZvUkpvb0RpcllUM25mUXl4d3R1Qm9nandITXZOUEtYSERQVmxuYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTczNTEyNDA2NDt9fQ==', 1735130824);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'Fatih Fidancılık', 'url', 'http://127.0.0.1:8000/', NULL, NULL);
INSERT INTO `settings` VALUES (2, 'Hakkımızda', 'about', '1992 yılında fidan üretim ve alım satım alanında faaliyet göstermeye başlayan firmamız İzmir-İstanbul yolu üzerinde Manisa ili  Akhisar ilçesindedir.İklim ve bitki örtüsü fidan üretim ve alım satımına elverişlidir.\r\n\r\nFirmamız yıllık fidan üretimi miktarını her geçen gün artırarak faaliyet alanını genişletmeye,fidan çeşitliliğinin ve kalitesinin günümüzde kurulan modern bahçe tesislerine uygun anaç ve çeşitlerden seçerek üretimine devam etmektedir', NULL, NULL);
INSERT INTO `settings` VALUES (3, 'Konum', 'maps', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3103.2002640588016!2d27.833398911310795!3d38.9422530715965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b9d228a0cade63%3A0x5bb355b7df33f0d3!2zRmF0aWggRmlkYW5jxLFsxLFr!5e0!3m2!1str!2str!4v1734953468241!5m2!1str!2str', NULL, NULL);
INSERT INTO `settings` VALUES (4, 'Adres', 'address', 'Ulucami Mah. No:11 (Novada Karşısı)', NULL, NULL);
INSERT INTO `settings` VALUES (5, 'Telefon', 'phone', '0553 623 09 23', NULL, NULL);
INSERT INTO `settings` VALUES (6, 'Telefon', 'phone', '0532 624 16 14', NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Test User', 'test@example.com', '2024-12-25 10:53:23', '$2y$12$cj6dKkvpYv7Md0wBnZXbVurSwB/2CjxXOM437JmA18YhM1d/oyeT6', '3HH6UKQ7Yp', '2024-12-25 10:53:23', '2024-12-25 10:53:23');
INSERT INTO `users` VALUES (2, 'user', 'user@mail', NULL, '$2y$12$0RZkytYkgUvPn1l7VEG5.u7jBYkq1REMBNPtPvxyoC.WokWWsvPVm', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
