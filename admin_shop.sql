-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2023 at 07:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `pty` int NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`) VALUES
(3, 5, 5, 1, 2600000, NULL, NULL),
(4, 6, 4, 1, 1600000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(5, 'Nguyễn Phan Thành Quí', '0704551697', '133/1 Lưu Hữu Phước', 'thanhqui19072000@gmail.com', 'sqsqs', '2023-07-24 01:48:54', '2023-07-24 01:48:54'),
(6, 'Hoàng', '0325793505', 'abc', 'tathanhhoang.work@gmail.com', 'dwdw', '2023-07-24 03:07:10', '2023-07-24 03:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '893f9598-f002-4f4f-87fb-d3da2dc473c3', 'database', 'default', '{\"uuid\":\"893f9598-f002-4f4f-87fb-d3da2dc473c3\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:26:\\\"thanhqui19072000@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-07-23 05:37:04.025926\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: stream_socket_enable_crypto(): Peer certificate CN=`ssl.s1394.sureserver.com\' did not match expected CN=`stmp.gamil.com\' in D:\\laragon\\www\\Shopbi\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:94\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'stream_socket_e...\', \'D:\\\\laragon\\\\www\\\\...\', 94)\n#1 D:\\laragon\\www\\Shopbi\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(94): stream_socket_enable_crypto(Resource id #789, true, 57)\n#2 D:\\laragon\\www\\Shopbi\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(348): Swift_Transport_StreamBuffer->startTLS()\n#3 D:\\laragon\\www\\Shopbi\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#4 D:\\laragon\\www\\Shopbi\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.success\', Array, Object(Closure))\n#8 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#11 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#12 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#13 D:\\laragon\\www\\Shopbi\\app\\Jobs\\SendMail.php(36): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#14 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#15 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#20 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#21 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#22 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#24 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#25 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#26 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#28 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#40 D:\\laragon\\www\\Shopbi\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 D:\\laragon\\www\\Shopbi\\vendor\\symfony\\console\\Application.php(1040): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\laragon\\www\\Shopbi\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 D:\\laragon\\www\\Shopbi\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 D:\\laragon\\www\\Shopbi\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2023-07-22 22:37:09'),
(2, '0398de15-ba78-48b5-8d45-28f601b12ae6', 'database', 'default', '{\"uuid\":\"0398de15-ba78-48b5-8d45-28f601b12ae6\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:26:\\\"thanhqui19072000@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-07-23 05:40:11.390424\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: stream_socket_enable_crypto(): Peer certificate CN=`ssl.s1394.sureserver.com\' did not match expected CN=`stmp.gamil.com\' in D:\\laragon\\www\\Shopbi\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:94\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'stream_socket_e...\', \'D:\\\\laragon\\\\www\\\\...\', 94)\n#1 D:\\laragon\\www\\Shopbi\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(94): stream_socket_enable_crypto(Resource id #799, true, 57)\n#2 D:\\laragon\\www\\Shopbi\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(348): Swift_Transport_StreamBuffer->startTLS()\n#3 D:\\laragon\\www\\Shopbi\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#4 D:\\laragon\\www\\Shopbi\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.success\', Array, Object(Closure))\n#8 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#11 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#12 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#13 D:\\laragon\\www\\Shopbi\\app\\Jobs\\SendMail.php(36): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#14 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#15 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#20 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#21 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#22 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#24 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#25 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#26 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#28 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#40 D:\\laragon\\www\\Shopbi\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 D:\\laragon\\www\\Shopbi\\vendor\\symfony\\console\\Application.php(1040): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\laragon\\www\\Shopbi\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 D:\\laragon\\www\\Shopbi\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 D:\\laragon\\www\\Shopbi\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 D:\\laragon\\www\\Shopbi\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2023-07-22 22:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `thumb`, `active`, `created_at`, `updated_at`) VALUES
(8, 'Balo', 0, 'Balo', '<p>Balo</p>', '/storage/uploads/2023/07/24/banner-06.jpg', 1, '2023-07-23 20:10:32', '2023-07-23 20:10:32'),
(9, 'Nón', 0, 'Nón', '<p>N&oacute;n</p>', '/storage/uploads/2023/07/24/banner-03.jpg', 1, '2023-07-23 20:07:07', '2023-07-23 20:07:07'),
(10, 'Đồng hồ', 0, 'Đồng hồ', '<p>Đồng hồ</p>', '/storage/uploads/2023/07/24/banner-07.jpg', 1, '2023-07-23 20:06:40', '2023-07-23 20:06:40'),
(12, 'Áo Thời Trang', 0, 'Áo Thời Trang', '<p>&Aacute;o Thời Trang</p>', '/storage/uploads/2023/07/24/banner-02.jpg', 1, '2023-07-23 20:04:04', '2023-07-23 20:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_03_19_132406_create_sliders_table', 1),
(8, '2023_04_04_072401_update_sliders', 1),
(11, '2023_03_10_043848_create_menus_table', 2),
(14, '2023_03_16_094127_create_products_table', 3),
(15, '2023_04_04_103821_update_products', 3),
(23, '2019_08_19_000000_create_failed_jobs_table', 6),
(24, '2021_06_11_035047_create_jobs_table', 6),
(25, '2021_06_07_115343_create_customers_table', 7),
(26, '2021_06_07_115353_create_carts_table', 8);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int NOT NULL,
  `price` int DEFAULT NULL,
  `price_sale` int DEFAULT NULL,
  `active` int NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `thumb`, `created_at`, `updated_at`, `thumb1`, `thumb2`, `thumb3`) VALUES
(2, 'Blazer nữ', 'Blazer nữ', '<p>Blazer nữ</p>', 12, 2500000, 2000000, 1, '/storage/uploads/2023/07/24/product-04.jpg', '2023-07-23 20:34:35', '2023-07-23 20:37:06', '/storage/uploads/2023/07/24/b2ec4b39f3de36ecaaf80578f43803ef.jpg', '/storage/uploads/2023/07/24/b2ec4b39f3de36ecaaf80578f43803ef.jpg', '/storage/uploads/2023/07/24/b2ec4b39f3de36ecaaf80578f43803ef.jpg'),
(3, 'Áo blazer nam', 'Áo blazer nam', '<p>&Aacute;o blazer nam</p>', 12, 3000000, 2600000, 1, '/storage/uploads/2023/07/24/product-detail-02.jpg', '2023-07-23 20:38:39', '2023-07-23 20:38:39', '/storage/uploads/2023/07/24/product-detail-03.jpg', '/storage/uploads/2023/07/24/product-detail-01.jpg', '/storage/uploads/2023/07/24/product-detail-03.jpg'),
(4, 'Vintage Inspired Classic', 'Vintage Inspired Classic', '<p>Vintage Inspired Classic</p>', 10, 2000000, 1600000, 1, '/storage/uploads/2023/07/24/product-15.jpg', '2023-07-23 20:40:17', '2023-07-23 20:40:17', '/storage/uploads/2023/07/24/product-15.jpg', '/storage/uploads/2023/07/24/product-15.jpg', '/storage/uploads/2023/07/24/product-15.jpg'),
(5, 'Mini Silver Mesh Watch', 'Mini Silver Mesh Watch', '<p>Mini Silver Mesh Watch</p>', 10, 2900000, 2600000, 1, '/storage/uploads/2023/07/24/product-06.jpg', '2023-07-23 20:42:33', '2023-07-24 02:08:15', '/storage/uploads/2023/07/24/item-cart-03.jpg', NULL, '/storage/uploads/2023/07/24/item-cart-03.jpg'),
(6, 'nón America', 'nón America', '<p>n&oacute;n America</p>', 9, 1000000, NULL, 1, '/storage/uploads/2023/07/24/shop-ban-non-dep-20.jpg', '2023-07-23 20:49:10', '2023-07-23 20:49:10', '/storage/uploads/2023/07/24/shop-ban-non-dep-5-1.jpg', '/storage/uploads/2023/07/24/shop-ban-non-dep-2.jpg', '/storage/uploads/2023/07/24/gallery-07.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int NOT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`, `content`) VALUES
(3, 'Thời Trang phá cách', 'http://shopbi.vtest/danh-muc/12-ao-thoi-trang.html', '/storage/uploads/2023/07/24/slide-06.jpg', 1, 1, '2023-07-23 20:12:41', '2023-07-23 20:12:41', 'HOT 2023'),
(4, 'Sản phẩm bán chạy nhất!!!', 'http://shopbi.vtest/san-pham/5-mini-silver-mesh-watch.html', '/storage/uploads/2023/07/24/slide-023.png', 1, 1, '2023-07-23 20:19:19', '2023-07-23 20:50:40', 'ĐỒ HỒ THANH LỊCH'),
(5, 'SALE 50%!!!', 'http://shopbi.vtest/danh-muc/8-balo.html', '/storage/uploads/2023/07/24/slide-07.jpg', 1, 1, '2023-07-23 20:28:06', '2023-07-23 22:30:22', 'BALO DU LỊCH');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin1907@gmail.com', NULL, '$2y$10$SHhrMVsI6krutf6mJIUtd.CYYEHXcgHTAMdTE1k04q.7Hqqkxf5Ju', 'UauiN5UoMTsWV5idz2SlJupbYFhW3GTyCRBCZ9l2utQadXD3HiTDACSJr3Uv', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
