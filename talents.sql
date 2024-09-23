-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 23 sep. 2024 à 14:32
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `talents`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `position` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`position`, `id`) VALUES
(NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) NOT NULL,
  `approved` bit(1) NOT NULL,
  `experiences_score` bigint(20) DEFAULT NULL,
  `has_admin_meet` bit(1) NOT NULL,
  `has_client_meet` bit(1) NOT NULL,
  `projects_score` bigint(20) DEFAULT NULL,
  `refused` bit(1) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `selected` bit(1) NOT NULL,
  `skills_score` bigint(20) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `talent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `applications`
--

INSERT INTO `applications` (`id`, `approved`, `experiences_score`, `has_admin_meet`, `has_client_meet`, `projects_score`, `refused`, `score`, `selected`, `skills_score`, `job_id`, `talent_id`) VALUES
(1, b'1', 40, b'1', b'1', 9, b'0', 52, b'1', 3, 10, 2),
(2, b'0', 20, b'1', b'1', 0, b'1', 21, b'1', 1, 10, 4),
(3, b'0', 20, b'0', b'0', 0, b'0', 21, b'0', 1, 10, 5),
(4, b'0', 0, b'0', b'0', 0, b'0', 3, b'0', 3, 10, 6),
(5, b'0', 10, b'0', b'0', 0, b'0', 12, b'0', 2, 9, 2),
(6, b'1', 40, b'1', b'1', 9, b'0', 52, b'1', 3, 13, 2),
(7, b'0', 20, b'1', b'0', 0, b'1', 21, b'1', 1, 13, 4),
(8, b'0', 20, b'1', b'0', 0, b'0', 21, b'0', 1, 13, 5),
(9, b'0', 20, b'0', b'0', 3, b'0', 26, b'0', 3, 12, 2),
(10, b'0', 20, b'0', b'0', 3, b'0', 26, b'0', 3, 8, 2),
(11, b'0', 40, b'0', b'0', 9, b'0', 52, b'0', 3, 14, 2),
(12, b'0', 20, b'0', b'0', 0, b'0', 21, b'0', 1, 14, 4),
(13, b'0', 20, b'0', b'0', 0, b'0', 21, b'0', 1, 14, 5),
(14, b'1', 40, b'1', b'1', 9, b'0', 52, b'1', 3, 15, 2),
(15, b'0', 20, b'1', b'0', 0, b'1', 21, b'1', 1, 15, 4),
(16, b'0', 20, b'0', b'0', 0, b'0', 21, b'0', 1, 15, 5);

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_execution`
--

CREATE TABLE `batch_job_execution` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `batch_job_execution`
--

INSERT INTO `batch_job_execution` (`JOB_EXECUTION_ID`, `VERSION`, `JOB_INSTANCE_ID`, `CREATE_TIME`, `START_TIME`, `END_TIME`, `STATUS`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`) VALUES
(1, 2, 1, '2024-08-04 14:51:21.000000', '2024-08-04 14:51:21.000000', '2024-08-04 14:51:23.000000', 'COMPLETED', 'COMPLETED', '', '2024-08-04 14:51:23.000000'),
(2, 2, 2, '2024-08-04 14:53:42.000000', '2024-08-04 14:53:42.000000', '2024-08-04 14:53:43.000000', 'COMPLETED', 'COMPLETED', '', '2024-08-04 14:53:43.000000'),
(3, 2, 3, '2024-08-19 08:02:41.000000', '2024-08-19 08:02:41.000000', '2024-08-19 08:02:41.000000', 'COMPLETED', 'COMPLETED', '', '2024-08-19 08:02:41.000000'),
(4, 2, 4, '2024-08-19 08:03:27.000000', '2024-08-19 08:03:27.000000', '2024-08-19 08:03:27.000000', 'COMPLETED', 'COMPLETED', '', '2024-08-19 08:03:27.000000'),
(5, 2, 5, '2024-08-19 08:05:24.000000', '2024-08-19 08:05:24.000000', '2024-08-19 08:05:24.000000', 'COMPLETED', 'COMPLETED', '', '2024-08-19 08:05:24.000000'),
(6, 2, 6, '2024-08-19 09:44:43.000000', '2024-08-19 09:44:43.000000', '2024-08-19 09:44:44.000000', 'COMPLETED', 'COMPLETED', '', '2024-08-19 09:44:44.000000'),
(7, 2, 7, '2024-08-19 14:47:44.000000', '2024-08-19 14:47:44.000000', '2024-08-19 14:47:45.000000', 'COMPLETED', 'COMPLETED', '', '2024-08-19 14:47:45.000000'),
(8, 2, 8, '2024-08-19 14:48:44.000000', '2024-08-19 14:48:44.000000', '2024-08-19 14:48:44.000000', 'COMPLETED', 'COMPLETED', '', '2024-08-19 14:48:44.000000');

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_execution_context`
--

CREATE TABLE `batch_job_execution_context` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `batch_job_execution_context`
--

INSERT INTO `batch_job_execution_context` (`JOB_EXECUTION_ID`, `SHORT_CONTEXT`, `SERIALIZED_CONTEXT`) VALUES
(1, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(2, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(3, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(4, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(5, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(6, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(7, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(8, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_execution_params`
--

CREATE TABLE `batch_job_execution_params` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `PARAMETER_NAME` varchar(100) NOT NULL,
  `PARAMETER_TYPE` varchar(100) NOT NULL,
  `PARAMETER_VALUE` varchar(2500) DEFAULT NULL,
  `IDENTIFYING` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `batch_job_execution_params`
--

INSERT INTO `batch_job_execution_params` (`JOB_EXECUTION_ID`, `PARAMETER_NAME`, `PARAMETER_TYPE`, `PARAMETER_VALUE`, `IDENTIFYING`) VALUES
(1, 'started-at', 'java.lang.Long', '1722779481668', 'Y'),
(2, 'started-at', 'java.lang.Long', '1722779622530', 'Y'),
(3, 'started-at', 'java.lang.Long', '1724050961327', 'Y'),
(4, 'started-at', 'java.lang.Long', '1724051007573', 'Y'),
(5, 'started-at', 'java.lang.Long', '1724051124364', 'Y'),
(6, 'started-at', 'java.lang.Long', '1724057083222', 'Y'),
(7, 'started-at', 'java.lang.Long', '1724075264236', 'Y'),
(8, 'started-at', 'java.lang.Long', '1724075324465', 'Y');

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_execution_seq`
--

CREATE TABLE `batch_job_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `batch_job_execution_seq`
--

INSERT INTO `batch_job_execution_seq` (`ID`, `UNIQUE_KEY`) VALUES
(8, '0');

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_instance`
--

CREATE TABLE `batch_job_instance` (
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_NAME` varchar(100) NOT NULL,
  `JOB_KEY` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `batch_job_instance`
--

INSERT INTO `batch_job_instance` (`JOB_INSTANCE_ID`, `VERSION`, `JOB_NAME`, `JOB_KEY`) VALUES
(1, 0, 'suggestions-job', '8e7ecfdb77730bac4c3ccf304cb2fc7f'),
(2, 0, 'suggestions-job', 'f5767ffc69562ac6d395114b2e2872c7'),
(3, 0, 'suggestions-job', '8d4c9dc377eb24cb22e76195db60b709'),
(4, 0, 'suggestions-job', '52ecb81f88baa3dd3a04107c2c4d5bcc'),
(5, 0, 'suggestions-job', 'f155bbdd061c19429b7d25ea8a5fd373'),
(6, 0, 'suggestions-job', 'f5a7c982124211d75915ddcd83914643'),
(7, 0, 'suggestions-job', '17d9aca9f9241d8dead961cc0331d8da'),
(8, 0, 'suggestions-job', '5df5f79f16509ef855ece9efcc549ad4');

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_seq`
--

CREATE TABLE `batch_job_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `batch_job_seq`
--

INSERT INTO `batch_job_seq` (`ID`, `UNIQUE_KEY`) VALUES
(8, '0');

-- --------------------------------------------------------

--
-- Structure de la table `batch_step_execution`
--

CREATE TABLE `batch_step_execution` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint(20) DEFAULT NULL,
  `READ_COUNT` bigint(20) DEFAULT NULL,
  `FILTER_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_COUNT` bigint(20) DEFAULT NULL,
  `READ_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `ROLLBACK_COUNT` bigint(20) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `batch_step_execution`
--

INSERT INTO `batch_step_execution` (`STEP_EXECUTION_ID`, `VERSION`, `STEP_NAME`, `JOB_EXECUTION_ID`, `CREATE_TIME`, `START_TIME`, `END_TIME`, `STATUS`, `COMMIT_COUNT`, `READ_COUNT`, `FILTER_COUNT`, `WRITE_COUNT`, `READ_SKIP_COUNT`, `WRITE_SKIP_COUNT`, `PROCESS_SKIP_COUNT`, `ROLLBACK_COUNT`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`) VALUES
(1, 3, 'suggestions-step', 1, '2024-08-04 14:51:21.000000', '2024-08-04 14:51:21.000000', '2024-08-04 14:51:23.000000', 'COMPLETED', 1, 1, 0, 1, 0, 0, 0, 0, 'COMPLETED', '', '2024-08-04 14:51:23.000000'),
(2, 3, 'suggestions-step', 2, '2024-08-04 14:53:42.000000', '2024-08-04 14:53:42.000000', '2024-08-04 14:53:43.000000', 'COMPLETED', 1, 1, 0, 1, 0, 0, 0, 0, 'COMPLETED', '', '2024-08-04 14:53:43.000000'),
(3, 3, 'suggestions-step', 3, '2024-08-19 08:02:41.000000', '2024-08-19 08:02:41.000000', '2024-08-19 08:02:41.000000', 'COMPLETED', 1, 5, 2, 3, 0, 0, 0, 0, 'COMPLETED', '', '2024-08-19 08:02:41.000000'),
(4, 3, 'suggestions-step', 4, '2024-08-19 08:03:27.000000', '2024-08-19 08:03:27.000000', '2024-08-19 08:03:27.000000', 'COMPLETED', 1, 5, 2, 3, 0, 0, 0, 0, 'COMPLETED', '', '2024-08-19 08:03:27.000000'),
(5, 3, 'suggestions-step', 5, '2024-08-19 08:05:24.000000', '2024-08-19 08:05:24.000000', '2024-08-19 08:05:24.000000', 'COMPLETED', 1, 5, 2, 3, 0, 0, 0, 0, 'COMPLETED', '', '2024-08-19 08:05:24.000000'),
(6, 3, 'suggestions-step', 6, '2024-08-19 09:44:43.000000', '2024-08-19 09:44:43.000000', '2024-08-19 09:44:44.000000', 'COMPLETED', 1, 5, 2, 3, 0, 0, 0, 0, 'COMPLETED', '', '2024-08-19 09:44:44.000000'),
(7, 3, 'suggestions-step', 7, '2024-08-19 14:47:44.000000', '2024-08-19 14:47:44.000000', '2024-08-19 14:47:45.000000', 'COMPLETED', 1, 6, 2, 4, 0, 0, 0, 0, 'COMPLETED', '', '2024-08-19 14:47:45.000000'),
(8, 3, 'suggestions-step', 8, '2024-08-19 14:48:44.000000', '2024-08-19 14:48:44.000000', '2024-08-19 14:48:44.000000', 'COMPLETED', 1, 6, 2, 4, 0, 0, 0, 0, 'COMPLETED', '', '2024-08-19 14:48:44.000000');

-- --------------------------------------------------------

--
-- Structure de la table `batch_step_execution_context`
--

CREATE TABLE `batch_step_execution_context` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `batch_step_execution_context`
--

INSERT INTO `batch_step_execution_context` (`STEP_EXECUTION_ID`, `SHORT_CONTEXT`, `SERIALIZED_CONTEXT`) VALUES
(1, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMS4xdAAeSnBhUGFnaW5nSXRlbVJlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(2, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMS4xdAAeSnBhUGFnaW5nSXRlbVJlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(3, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMS4xdAAeSnBhUGFnaW5nSXRlbVJlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAZ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(4, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMS4xdAAeSnBhUGFnaW5nSXRlbVJlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAZ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(5, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMS4xdAAeSnBhUGFnaW5nSXRlbVJlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAZ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(6, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMS4xdAAeSnBhUGFnaW5nSXRlbVJlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAZ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(7, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMS4xdAAeSnBhUGFnaW5nSXRlbVJlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAd0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(8, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMS4xdAAeSnBhUGFnaW5nSXRlbVJlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAd0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `batch_step_execution_seq`
--

CREATE TABLE `batch_step_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `batch_step_execution_seq`
--

INSERT INTO `batch_step_execution_seq` (`ID`, `UNIQUE_KEY`) VALUES
(8, '0');

-- --------------------------------------------------------

--
-- Structure de la table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `issued_at` date DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `talent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `certifications`
--

INSERT INTO `certifications` (`id`, `description`, `issued_at`, `resource`, `title`, `talent_id`) VALUES
(1, NULL, '2024-07-03', NULL, 'Java oracle', 2),
(2, NULL, '2024-07-03', NULL, 'Java oracle', 8);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `city` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `long_description` varchar(5000) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `short_description` varchar(500) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `type` enum('PERSONNEL','COMPANY') DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`city`, `company_name`, `country`, `long_description`, `sector`, `short_description`, `size`, `type`, `website`, `id`) VALUES
('Marrakech', 'Pulse digital', 'Morocco', NULL, 'Software development', 'L’aventure de PULSE.digital a commencé en 2013, lorsque nous avons ouvert nos portes en tant qu’agence digitale « classique ». Animés par une passion pour la technologie et une volonté de fournir des solutions numériques de premier ordre.', '51 - 100', 'COMPANY', 'https://pulse.digital/', 3),
('Casablanca', NULL, 'Morocco', NULL, 'Banking', NULL, NULL, 'PERSONNEL', NULL, 18),
('Rabat', NULL, 'Morocco', NULL, 'Telecommunications', NULL, NULL, 'PERSONNEL', NULL, 19),
('Paris', NULL, 'France', NULL, 'Healthcare', NULL, NULL, 'PERSONNEL', NULL, 20),
('Zurich', NULL, 'Switzerland', NULL, 'Retail', NULL, NULL, 'PERSONNEL', NULL, 21),
('Lyon', NULL, 'France', NULL, 'Software Development', NULL, NULL, 'PERSONNEL', NULL, 22),
('Marseille', NULL, 'France', NULL, 'IT Consulting', NULL, NULL, 'PERSONNEL', NULL, 23),
('Lausanne', NULL, 'Switzerland', NULL, 'Cloud Computing', NULL, NULL, 'PERSONNEL', NULL, 24);

-- --------------------------------------------------------

--
-- Structure de la table `client_contracts`
--

CREATE TABLE `client_contracts` (
  `id` bigint(20) NOT NULL,
  `contract_url` varchar(255) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `confirmation_tokens`
--

CREATE TABLE `confirmation_tokens` (
  `id` bigint(20) NOT NULL,
  `confirmed_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `confirmation_tokens`
--

INSERT INTO `confirmation_tokens` (`id`, `confirmed_at`, `created_at`, `expires_at`, `token`, `user_id`) VALUES
(1, '2024-07-31 14:18:35.000000', '2024-07-31 14:08:32.000000', '2024-07-31 14:23:32.000000', '767244', 2),
(2, NULL, '2024-07-31 14:16:56.000000', '2024-07-31 14:31:56.000000', '680787', 3),
(3, NULL, '2024-08-07 15:05:21.000000', '2024-08-07 15:20:21.000000', '144663', 4),
(4, NULL, '2024-08-07 15:06:28.000000', '2024-08-07 15:21:28.000000', '133741', 5),
(5, NULL, '2024-08-07 15:07:47.000000', '2024-08-07 15:22:47.000000', '256539', 6),
(6, NULL, '2024-08-07 15:08:43.000000', '2024-08-07 15:23:43.000000', '721810', 7),
(7, NULL, '2024-08-07 15:11:41.000000', '2024-08-07 15:26:41.000000', '790425', 8),
(8, NULL, '2024-08-07 15:14:18.000000', '2024-08-07 15:29:18.000000', '852498', 9),
(9, NULL, '2024-08-07 15:15:13.000000', '2024-08-07 15:30:13.000000', '722470', 10),
(10, NULL, '2024-08-07 15:16:19.000000', '2024-08-07 15:31:19.000000', '260045', 11),
(11, NULL, '2024-08-07 15:17:36.000000', '2024-08-07 15:32:36.000000', '800135', 12),
(12, NULL, '2024-08-07 15:19:36.000000', '2024-08-07 15:34:36.000000', '682435', 13),
(13, NULL, '2024-08-07 15:20:56.000000', '2024-08-07 15:35:56.000000', '466708', 14),
(14, NULL, '2024-08-07 15:21:46.000000', '2024-08-07 15:36:46.000000', '503684', 15),
(15, NULL, '2024-08-07 15:23:12.000000', '2024-08-07 15:38:12.000000', '936726', 16),
(16, NULL, '2024-08-07 15:24:12.000000', '2024-08-07 15:39:12.000000', '312408', 17),
(17, NULL, '2024-08-07 20:50:25.000000', '2024-08-07 21:05:25.000000', '901640', 18),
(18, NULL, '2024-08-07 20:51:16.000000', '2024-08-07 21:06:16.000000', '171835', 19),
(19, NULL, '2024-08-07 21:00:54.000000', '2024-08-07 21:15:54.000000', '152201', 20),
(20, NULL, '2024-08-07 21:01:51.000000', '2024-08-07 21:16:51.000000', '685030', 21),
(21, NULL, '2024-08-07 21:05:42.000000', '2024-08-07 21:20:42.000000', '505097', 22),
(22, NULL, '2024-08-07 21:06:28.000000', '2024-08-07 21:21:28.000000', '451179', 23),
(23, NULL, '2024-08-07 21:07:35.000000', '2024-08-07 21:22:35.000000', '258398', 24),
(24, '2024-08-19 14:06:58.000000', '2024-08-19 14:06:24.000000', '2024-08-19 14:21:24.000000', '146454', 25),
(25, NULL, '2024-09-17 20:33:17.000000', '2024-09-17 20:48:17.000000', '165696', 26),
(26, NULL, '2024-09-17 20:38:20.000000', '2024-09-17 20:53:20.000000', '473121', 27),
(27, '2024-09-17 21:10:04.000000', '2024-09-17 21:09:18.000000', '2024-09-17 21:24:18.000000', '714991', 28);

-- --------------------------------------------------------

--
-- Structure de la table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `client_contract_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contracts_talent_contracts`
--

CREATE TABLE `contracts_talent_contracts` (
  `contract_id` bigint(20) NOT NULL,
  `talent_contracts_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `month_of_end` int(11) DEFAULT NULL,
  `month_of_start` int(11) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `year_of_end` int(11) DEFAULT NULL,
  `year_of_start` int(11) DEFAULT NULL,
  `talent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `educations`
--

INSERT INTO `educations` (`id`, `city`, `country`, `domain`, `level`, `month_of_end`, `month_of_start`, `university`, `year_of_end`, `year_of_start`, `talent_id`) VALUES
(1, 'Safi', 'Morocco', ' génie informatique', 'DUT', 6, 9, 'Ecole supérieure de technologie', 2021, 2020, 2),
(2, 'Safi', 'Morocco', ' métiers de l’informatique', 'Licence professionnelle', 6, 9, 'Ecole supérieure de technologie', 2022, 2021, 2),
(3, 'Marrakech', 'Morocco', ' Ingénierie du Développement Web et Mobile', 'Cycle d’ingénieur', 9, 9, 'Isga', 2024, 2023, 2),
(4, 'Marrakech', 'Morocco', ' Ingénierie du Développement Web et Mobile', 'Cycle d’ingénieur', 7, 10, 'Isga', 2024, 2022, 4),
(5, 'Marrakech', 'Morocco', 'Ingénierie du Développement Web et Mobile', 'Cycle d’ingénieur', 9, 9, 'Isga', 2024, 2022, 8);

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `month_of_end` int(11) DEFAULT NULL,
  `month_of_start` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year_of_end` int(11) DEFAULT NULL,
  `year_of_start` int(11) DEFAULT NULL,
  `talent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `experiences`
--

INSERT INTO `experiences` (`id`, `city`, `company`, `country`, `description`, `month_of_end`, `month_of_start`, `title`, `year_of_end`, `year_of_start`, `talent_id`) VALUES
(1, 'Safi', ' Concept Les Freres', 'Morroco', 'Développement d\'une application web pour la gestion des stocks d\'une entreprise et les factures générées pour les clients, en utilisant le framework Laravel.', 6, 4, 'Stage PFE DUT', 2021, 2021, 2),
(2, 'Casablanca', ' Tasmim Web', 'Morocco', 'Développement d\'une application mobile pour un site e-commerce existant, créé avec le CMS WordPress. \n- la création des interfaces mobiles et la consommation de l\'API REST de WooCommerce en utilisant le framework Flutter', 6, 4, 'Stage PFE Licence', 2022, 2022, 2),
(3, 'Casablanca', 'Tasmim Web', 'Morocco', 'Développement d’une application web e-commerce pour la simplification des achats en ligne :\n- Développement de la partie backend sous forme de web service RESTful avec l’écosystème Spring (Spring Boot, MVC, Data JPA, Security).\n- Développement de la partie frontend en utilisant le framework Angular et Bootstrap.', 9, 7, 'Stage PFA', 2023, 2023, 2),
(4, 'Marrakech', ' Pulse digital', 'Morocco', 'Développement d’une application web pour l’optimisation du processus de recrutement des talents pour les clients.\n- Participation à la phase de modélisation et de conception du système en utilisant UML.\n- Développement de la partie backend sous forme de web service RESTful avec l’écosystème Spring (Spring Boot, MVC, Data JPA, Security, Batch, Scheduler).\n- Intégration de RabbitMQ en tant que broker pour permettre une communication asynchrone lors de l\'envoi des emails.\n- Développement de la partie frontend en utilisant le framework Angular et Bootstrap.', 7, 3, 'Stage PFE', 2024, 2024, 2),
(5, 'Marrakech', 'Pulse digital', 'Morocco', 'Développement d’une application web pour l’optimisation du processus de recrutement des talents pour les clients.\n- Participation à la phase de modélisation et de conception du système en utilisant UML.\n- Développement de la partie backend sous forme de web service RESTful avec l’écosystème Spring (Spring Boot, MVC, Data JPA, Security, Batch, Scheduler).\n- Intégration de RabbitMQ en tant que broker pour permettre une communication asynchrone lors de l\'envoi des emails.\n- Développement de la partie frontend en utilisant le framework Angular et Bootstrap.', 7, 3, 'Stage PFE', 2024, 2024, 4),
(6, 'Casablanca', 'Tasmim Web', 'Morocco', 'Développement d’une application web e-commerce pour la simplification des achats en ligne :\n- Développement de la partie backend sous forme de web service RESTful avec l’écosystème Spring (Spring Boot, MVC, Data JPA, Security).\n- Développement de la partie frontend en utilisant le framework Angular et Bootstrap.', 9, 7, 'Stage PFA', 2023, 2023, 5),
(7, 'Casablanca', 'Tasmim Web', 'Morocco', 'Développement d’une application web e-commerce pour la simplification des achats en ligne :\n- Développement de la partie backend sous forme de web service RESTful avec l’écosystème Spring (Spring Boot, MVC, Data JPA, Security).\n- Développement de la partie frontend en utilisant le framework Angular et Bootstrap.', 9, 7, 'Stage PFA', 2023, 2023, 8),
(8, 'Marrakech', 'Pulse digital', 'Morocco', 'Développement d’une application web pour l’optimisation du processus de recrutement des talents pour les clients.\n- Participation à la phase de modélisation et de conception du système en utilisant UML.\n- Développement de la partie backend sous forme de web service RESTful avec l’écosystème Spring (Spring Boot, MVC, Data JPA, Security, Batch, Scheduler).\n- Intégration de RabbitMQ en tant que broker pour permettre une communication asynchrone lors de l\'envoi des emails.\n- Développement de la partie frontend en utilisant le framework Angular et Bootstrap.', 7, 3, 'Stage PFE', 2024, 2024, 8);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) NOT NULL,
  `contract_type` enum('FIXED_DATE','OPEN_ENDED') DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `currency` enum('MAD','EUR','USD') DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `max_salary` int(11) DEFAULT NULL,
  `min_salary` int(11) DEFAULT NULL,
  `number_of_talents` int(11) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `period_unit` enum('DAYS','MONTHS') DEFAULT NULL,
  `salary_unit` enum('DAY','MONTH') DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `status` enum('OPEN','WAITING','IN_SELECTION','IN_APPROVING','CLIENT_CLOSE','ADMIN_CLOSE') DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` enum('FULL_TIME','PART_TIME') DEFAULT NULL,
  `years_of_experiences` int(11) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`id`, `contract_type`, `created_at`, `currency`, `description`, `max_salary`, `min_salary`, `number_of_talents`, `period`, `period_unit`, `salary_unit`, `sector`, `status`, `title`, `type`, `years_of_experiences`, `client_id`) VALUES
(1, 'OPEN_ENDED', '2024-07-31 15:32:19.000000', 'MAD', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 9000, 7000, 1, NULL, NULL, 'MONTH', 'Développement web', 'ADMIN_CLOSE', 'Développeur ou développeuse full stack', 'FULL_TIME', 2, 3),
(2, 'OPEN_ENDED', '2024-07-31 15:34:34.000000', 'MAD', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 9000, 8000, 1, NULL, NULL, 'MONTH', 'Développemnt web', 'ADMIN_CLOSE', 'Full Stack Developer', 'FULL_TIME', 2, 3),
(3, 'OPEN_ENDED', '2024-07-31 15:35:34.000000', 'MAD', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 10000, 8000, 1, NULL, NULL, 'MONTH', 'Développemnt web', 'ADMIN_CLOSE', 'Développeur Web', 'FULL_TIME', 2, 3),
(4, 'OPEN_ENDED', '2024-07-31 15:37:09.000000', 'MAD', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 10000, 9000, 1, NULL, NULL, 'MONTH', 'Développment web', 'OPEN', 'Développeur Full Stack (PHP, Typescript et Angular)', 'FULL_TIME', 3, 3),
(5, 'OPEN_ENDED', '2024-07-31 15:39:00.000000', 'MAD', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 15000, 13000, 1, NULL, NULL, 'MONTH', 'Développement web', 'OPEN', 'RESPONSABLE EQUPE DE DEVELOPPEMENT JAVA/JEE', 'FULL_TIME', 4, 3),
(8, 'OPEN_ENDED', '2024-08-07 21:32:28.000000', 'MAD', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 12000, 10000, 1, NULL, NULL, 'MONTH', 'Développment web', 'OPEN', 'Développeur Full Stack (PHP, Typescript et Angular)', 'FULL_TIME', 4, 18),
(9, 'OPEN_ENDED', '2024-08-07 21:33:40.000000', 'MAD', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 10000, 8000, 1, NULL, NULL, 'MONTH', 'Développemnt web', 'OPEN', 'Développeur Web', 'PART_TIME', 1, 18),
(10, 'OPEN_ENDED', '2024-08-07 21:35:07.000000', 'MAD', 'We are seeking a highly skilled Java and Angular Full-Stack Developer to join our team. As a Full-Stack Developer, you will be responsible for designing, developing, and maintaining our web applications using Java and Angular. You will work closely with our development team to identify and prioritize project requirements, and develop innovative solutions to complex technical problems. Your responsibilities will include designing and implementing scalable and efficient backend APIs using Java, building responsive and user-friendly frontend interfaces using Angular, and ensuring the seamless integration of both components. Additionally, you will be responsible for testing and debugging code, collaborating with other team members, and contributing to the development of our software architecture. If you have a passion for building high-quality software, excellent problem-solving skills, and experience working with both Java and Angular, we would love to hear from you!', 12000, 10000, 1, NULL, NULL, 'MONTH', 'Web development', 'ADMIN_CLOSE', 'FullStack Java Angular Developer', 'FULL_TIME', 3, 3),
(11, 'OPEN_ENDED', '2024-08-19 07:56:39.000000', 'MAD', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 9000, 8000, 1, NULL, NULL, 'MONTH', 'Développemnt web', 'OPEN', 'Full Stack Developer', 'FULL_TIME', 2, 3),
(12, 'OPEN_ENDED', '2024-08-19 07:57:59.000000', 'MAD', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 10000, 9000, 1, NULL, NULL, 'MONTH', 'Développment web', 'OPEN', 'Développeur Full Stack (PHP, Typescript et Angular)', 'FULL_TIME', 1, 3),
(13, 'OPEN_ENDED', '2024-08-19 14:21:02.000000', 'MAD', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 10000, 9000, 1, NULL, NULL, 'MONTH', 'Web development', 'ADMIN_CLOSE', 'Java angular developer', 'FULL_TIME', 2, 3),
(14, 'OPEN_ENDED', '2024-09-20 12:23:08.000000', 'MAD', 'We are seeking a highly skilled Java and Angular Full-Stack Developer to join our team. As a Full-Stack Developer, you will be responsible for designing, developing, and maintaining our web applications using Java and Angular. You will work closely with our development team to identify and prioritize project requirements, and develop innovative solutions to complex technical problems. Your responsibilities will include designing and implementing scalable and efficient backend APIs using Java, building responsive and user-friendly frontend interfaces using Angular, and ensuring the seamless integration of both components. Additionally, you will be responsible for testing and debugging code, collaborating with other team members, and contributing to the development of our software architecture. If you have a passion for building high-quality software, excellent problem-solving skills, and experience working with both Java and Angular, we would love to hear from you!', 12000, 9000, 1, NULL, NULL, 'MONTH', 'Web developement', 'ADMIN_CLOSE', 'Java Angular developer', 'FULL_TIME', 1, 3),
(15, 'OPEN_ENDED', '2024-09-20 12:57:52.000000', 'MAD', 'We are seeking a highly skilled Java and Angular Full-Stack Developer to join our team. As a Full-Stack Developer, you will be responsible for designing, developing, and maintaining our web applications using Java and Angular. You will work closely with our development team to identify and prioritize project requirements, and develop innovative solutions to complex technical problems. Your responsibilities will include designing and implementing scalable and efficient backend APIs using Java, building responsive and user-friendly frontend interfaces using Angular, and ensuring the seamless integration of both components. Additionally, you will be responsible for testing and debugging code, collaborating with other team members, and contributing to the development of our software architecture. If you have a passion for building high-quality software, excellent problem-solving skills, and experience working with both Java and Angular, we would love to hear from you!', 12000, 10000, 1, NULL, NULL, 'MONTH', 'Web developement', 'ADMIN_CLOSE', 'Java angular developer', 'FULL_TIME', 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `jobs_skills`
--

CREATE TABLE `jobs_skills` (
  `job_id` bigint(20) NOT NULL,
  `skills_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jobs_skills`
--

INSERT INTO `jobs_skills` (`job_id`, `skills_id`) VALUES
(1, 6),
(1, 12),
(2, 7),
(2, 8),
(2, 9),
(2, 12),
(3, 12),
(4, 4),
(4, 5),
(4, 12),
(5, 1),
(5, 2),
(5, 3),
(5, 15),
(8, 4),
(8, 5),
(8, 12),
(9, 12),
(9, 13),
(10, 1),
(10, 2),
(10, 4),
(11, 7),
(11, 8),
(11, 9),
(11, 12),
(12, 4),
(12, 5),
(12, 12),
(13, 1),
(13, 2),
(13, 4),
(14, 1),
(14, 2),
(14, 4),
(15, 1),
(15, 2),
(15, 4);

-- --------------------------------------------------------

--
-- Structure de la table `job_interviews`
--

CREATE TABLE `job_interviews` (
  `id` bigint(20) NOT NULL,
  `first_date` datetime(6) DEFAULT NULL,
  `message` varchar(1500) DEFAULT NULL,
  `second_date` datetime(6) DEFAULT NULL,
  `status` enum('CREATED','ACCEPTED','REFUSED') DEFAULT NULL,
  `third_date` datetime(6) DEFAULT NULL,
  `application_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `job_interviews`
--

INSERT INTO `job_interviews` (`id`, `first_date`, `message`, `second_date`, `status`, `third_date`, `application_id`) VALUES
(1, '2024-08-12 14:00:00.000000', 'I need to pass an interview with this talent for the confirmation of selection.', NULL, 'ACCEPTED', NULL, 1),
(2, '2024-08-12 15:00:00.000000', 'HELLO ', NULL, 'CREATED', NULL, 2),
(3, '2024-08-22 14:33:00.000000', 'HELLO REQUEST FOR A MEET', '2024-08-23 14:33:00.000000', 'ACCEPTED', NULL, 6),
(4, '2024-09-26 14:02:00.000000', 'Hi I want to passw an interview with this talent ', '2024-09-27 14:02:00.000000', 'ACCEPTED', NULL, 14),
(5, '2024-09-30 14:32:00.000000', 'Hi I want to pass a second interview with this talent', '2024-10-01 14:32:00.000000', 'CREATED', NULL, 14);

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `talent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `level`, `title`, `talent_id`) VALUES
(1, 'C1', 'Arabe', 2),
(2, 'B2', 'French', 2),
(4, 'C1', 'English', 4),
(5, 'C1', 'French', 4),
(6, 'C2', 'Arabic', 4),
(7, 'C1', 'Arabe', 8),
(8, 'B2', 'English', 8),
(9, 'B2', 'French', 8),
(11, 'B2', 'English', 2);

-- --------------------------------------------------------

--
-- Structure de la table `meets`
--

CREATE TABLE `meets` (
  `id` bigint(20) NOT NULL,
  `contact_type` enum('PHONE_CALL','VIDEO_CALL') DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `first_body` varchar(1500) DEFAULT NULL,
  `meet_type` enum('VERIFICATION','ADMIN_INTERVIEW','CLIENT_INTERVIEW') DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `second_body` varchar(1500) DEFAULT NULL,
  `status` enum('CREATED','ACCEPTED','REFUSED','CLOSED') DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `meets`
--

INSERT INTO `meets` (`id`, `contact_type`, `date`, `first_body`, `meet_type`, `resource`, `second_body`, `status`, `title`, `sender_id`) VALUES
(1, 'PHONE_CALL', '2024-08-08 10:00:00.000000', 'Dear Ahmed El Haddad,\n\nI hope this message finds you well.\n\nAs part of our commitment to maintaining a trusted and secure platform, we need to conduct a verification meeting to confirm the details of your profile. This process helps us ensure the accuracy of the information provided and enhance the credibility of our freelancer community.\n\nYou will be receiving a phone call from our administrative team shortly to discuss the verification details. Please ensure that you are available to take the call.\n\nThank you for your cooperation. We look forward to verifying your profile and continuing to support your success on our platform.\n\nBest regards,\n\nPulse digital company', 'VERIFICATION', NULL, NULL, 'CLOSED', 'Verification meet with Ahmed El Haddad', 1),
(2, 'PHONE_CALL', '2024-08-08 10:30:00.000000', 'Dear Fatima Benjelloun,\n\nI hope this message finds you well.\n\nAs part of our commitment to maintaining a trusted and secure platform, we need to conduct a verification meeting to confirm the details of your profile. This process helps us ensure the accuracy of the information provided and enhance the credibility of our freelancer community.\n\nYou will be receiving a phone call from our administrative team shortly to discuss the verification details. Please ensure that you are available to take the call.\n\nThank you for your cooperation. We look forward to verifying your profile and continuing to support your success on our platform.\n\nBest regards,\n\nPulse digital company', 'VERIFICATION', NULL, NULL, 'CLOSED', 'Verification meet with Fatima Benjelloun', 1),
(3, 'PHONE_CALL', '2024-08-08 11:00:00.000000', 'Dear Mohamed El Mansouri,\n\nI hope this message finds you well.\n\nAs part of our commitment to maintaining a trusted and secure platform, we need to conduct a verification meeting to confirm the details of your profile. This process helps us ensure the accuracy of the information provided and enhance the credibility of our freelancer community.\n\nYou will be receiving a phone call from our administrative team shortly to discuss the verification details. Please ensure that you are available to take the call.\n\nThank you for your cooperation. We look forward to verifying your profile and continuing to support your success on our platform.\n\nBest regards,\n\nPulse digital company', 'VERIFICATION', NULL, NULL, 'CLOSED', 'Verification meet with Mohamed El Mansouri', 1),
(4, 'PHONE_CALL', '2024-08-08 11:30:00.000000', 'Dear Amina Oukili,\n\nI hope this message finds you well.\n\nAs part of our commitment to maintaining a trusted and secure platform, we need to conduct a verification meeting to confirm the details of your profile. This process helps us ensure the accuracy of the information provided and enhance the credibility of our freelancer community.\n\nYou will be receiving a phone call from our administrative team shortly to discuss the verification details. Please ensure that you are available to take the call.\n\nThank you for your cooperation. We look forward to verifying your profile and continuing to support your success on our platform.\n\nBest regards,\n\nPulse digital company', 'VERIFICATION', NULL, NULL, 'CLOSED', 'Verification meet with Amina Oukili', 1),
(5, 'VIDEO_CALL', '2024-08-09 15:00:00.000000', 'Dear Yassir Merfouk,\n\nI hope this message finds you well.\n\nWe are pleased to inform you that you have been shortlisted for an interview for the job \'FullStack Java Angular Developer\' posted by one of our esteemed clients. As part of our hiring process, we would like to invite you to an interview meeting to discuss your qualifications and experience further. This meeting will give us an opportunity to learn more about you and for you to learn more about the exciting opportunities offered by our client.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your interest in this opportunity. We look forward to speaking with you and discussing how your skills and experiences align with the needs of our client.\n\nBest regards,\n\nPulse digital company', 'ADMIN_INTERVIEW', 'https://meet.google.com/ykz-nwze-mus', NULL, 'CLOSED', 'Interview meet with Yassir Merfouk - FullStack Java Angular Developer job offer', 1),
(6, 'VIDEO_CALL', '2024-08-09 16:00:00.000000', 'https://meet.google.com/ykz-nwze-musDear Ahmed El Haddad,\n\nI hope this message finds you well.\n\nWe are pleased to inform you that you have been shortlisted for an interview for the job \'FullStack Java Angular Developer\' posted by one of our esteemed clients. As part of our hiring process, we would like to invite you to an interview meeting to discuss your qualifications and experience further. This meeting will give us an opportunity to learn more about you and for you to learn more about the exciting opportunities offered by our client.\n\nPlease join the meeting using the following Google Meet link .\n\nThank you for your interest in this opportunity. We look forward to speaking with you and discussing how your skills and experiences align with the needs of our client.\n\nBest regards,\n\nPulse digital company', 'ADMIN_INTERVIEW', 'https://meet.google.com/ykz-nwze-mus', NULL, 'CLOSED', 'Interview meet with Ahmed El Haddad - FullStack Java Angular Developer job offer', 1),
(7, 'VIDEO_CALL', '2024-08-12 14:00:00.000000', 'Dear Yassir Merfouk,\n\nWe hope this message finds you well.\n\nWe are pleased to inform you that you have been selected by our client to pass an interview for the job \'FullStack Java Angular Developer\'. As part of this process, we would like to invite you to an interview meeting to discuss your qualifications and experience further. This meeting will give us an opportunity to learn more about you and for you to learn more about the exciting opportunities offered by our client.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your interest in this opportunity. We look forward to speaking with you and discussing how your skills and experiences align with the needs of our client.\n\nBest regards,\n\nPulse Digital Company', 'CLIENT_INTERVIEW', 'https://meet.google.com/ykz-nwze-mus', 'Dear Youssef Soulaim,\n\nI hope this message finds you well.\n\nWe are pleased to inform you that we have arranged the interview you requested for the job \'FullStack Java Angular Developer\'. The interview meeting has been scheduled to discuss their qualifications and experience further.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your continued trust in our services. We look forward to facilitating this interview and helping you find the right fit for your needs.\n\nBest regards,\n\n Pulse Digital Company;', 'CLOSED', 'Client Youssef Soulaim meet with talent Yassir Merfouk for job FullStack Java Angular Developer', 1),
(8, 'PHONE_CALL', '2024-08-26 14:15:00.000000', 'Dear Yassir Merfouk,\n\nI hope this message finds you well.\n\nAs part of our commitment to maintaining a trusted and secure platform, we need to conduct a verification meeting to confirm the details of your profile. This process helps us ensure the accuracy of the information provided and enhance the credibility of our freelancer community.\n\nYou will be receiving a phone call from our administrative team shortly to discuss the verification details. Please ensure that you are available to take the call.\n\nThank you for your cooperation. We look forward to verifying your profile and continuing to support your success on our platform.\n\nBest regards,\n\nPulse digital company', 'VERIFICATION', NULL, NULL, 'CLOSED', 'Verification meet with Yassir Merfouk', 1),
(9, 'VIDEO_CALL', '2024-08-20 14:30:00.000000', 'Dear Yassir Merfouk,\n\nI hope this message finds you well.\n\nWe are pleased to inform you that you have been shortlisted for an interview for the job \'Java angular developer\' posted by one of our esteemed clients. As part of our hiring process, we would like to invite you to an interview meeting to discuss your qualifications and experience further. This meeting will give us an opportunity to learn more about you and for you to learn more about the exciting opportunities offered by our client.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your interest in this opportunity. We look forward to speaking with you and discussing how your skills and experiences align with the needs of our client.\n\nBest regards,\n\nPulse digital company', 'ADMIN_INTERVIEW', 'https://meet.google.com/ykz-nwze-mus', NULL, 'CLOSED', 'Interview meet with Yassir Merfouk - Java angular developer job offer', 1),
(10, 'VIDEO_CALL', '2024-08-20 14:30:00.000000', 'Dear Ahmed El Haddad,\n\nI hope this message finds you well.\n\nWe are pleased to inform you that you have been shortlisted for an interview for the job \'Java angular developer\' posted by one of our esteemed clients. As part of our hiring process, we would like to invite you to an interview meeting to discuss your qualifications and experience further. This meeting will give us an opportunity to learn more about you and for you to learn more about the exciting opportunities offered by our client.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your interest in this opportunity. We look forward to speaking with you and discussing how your skills and experiences align with the needs of our client.\n\nBest regards,\n\nPulse digital company', 'ADMIN_INTERVIEW', 'https://meet.google.com/ykz-nwze-mus', NULL, 'CLOSED', 'Interview meet with Ahmed El Haddad - Java angular developer job offer', 1),
(11, 'VIDEO_CALL', '2024-08-20 14:30:00.000000', 'Dear Fatima Benjelloun,\n\nI hope this message finds you well.\n\nWe are pleased to inform you that you have been shortlisted for an interview for the job \'Java angular developer\' posted by one of our esteemed clients. As part of our hiring process, we would like to invite you to an interview meeting to discuss your qualifications and experience further. This meeting will give us an opportunity to learn more about you and for you to learn more about the exciting opportunities offered by our client.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your interest in this opportunity. We look forward to speaking with you and discussing how your skills and experiences align with the needs of our client.\n\nBest regards,\n\nPulse digital company', 'ADMIN_INTERVIEW', 'https://meet.google.com/ykz-nwze-mus', NULL, 'CLOSED', 'Interview meet with Fatima Benjelloun - Java angular developer job offer', 1),
(12, 'VIDEO_CALL', '2024-08-22 14:33:00.000000', 'Dear Yassir Merfouk,\n\nWe hope this message finds you well.\n\nWe are pleased to inform you that you have been selected by our client to pass an interview for the job \'Java angular developer\'. As part of this process, we would like to invite you to an interview meeting to discuss your qualifications and experience further. This meeting will give us an opportunity to learn more about you and for you to learn more about the exciting opportunities offered by our client.\n\nPlease join the meeting using the following Google Meet link https://workspace.google.com/products/meet/.\n\nThank you for your interest in this opportunity. We look forward to speaking with you and discussing how your skills and experiences align with the needs of our client.\n\nBest regards,\n\nPulse Digital Company', 'CLIENT_INTERVIEW', 'https://workspace.google.com/products/meet/', 'Dear Youssef Soulaim,\n\nI hope this message finds you well.\n\nWe are pleased to inform you that we have arranged the interview you requested for the job \'Java angular developer\'. The interview meeting has been scheduled to discuss their qualifications and experience further.\n\nPlease join the meeting using the following Google Meet link https://workspace.google.com/products/meet/.\n\nThank you for your continued trust in our services. We look forward to facilitating this interview and helping you find the right fit for your needs.\n\nBest regards,\n\n Pulse Digital Company;', 'CLOSED', 'Client Youssef Soulaim meet with talent Yassir Merfouk for job Java angular developer', 1),
(15, 'VIDEO_CALL', '2024-09-20 14:08:00.000000', 'Dear Youssef Soulaim,\n\nI hope this message finds you well.\n\nAs part of our commitment to maintaining a trusted and secure platform, we need to conduct a verification meeting to confirm the details of your profile. This process helps us ensure the accuracy of the information provided and enhance the credibility of our freelancer community.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your cooperation. We look forward to verifying your profile and continuing to support your success on our platform.\n\nBest regards,\n\nPulse digital company', 'VERIFICATION', 'https://meet.google.com/ykz-nwze-mus', NULL, 'CLOSED', 'Verification meet with Youssef Soulaim', 1),
(16, 'VIDEO_CALL', '2024-09-23 14:10:00.000000', 'Dear Yassir Merfouk,\n\nI hope this message finds you well.\n\nAs part of our commitment to maintaining a trusted and secure platform, we need to conduct a verification meeting to confirm the details of your profile. This process helps us ensure the accuracy of the information provided and enhance the credibility of our freelancer community.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your cooperation. We look forward to verifying your profile and continuing to support your success on our platform.\n\nBest regards,\n\nPulse digital company', 'VERIFICATION', 'https://meet.google.com/ykz-nwze-mus', NULL, 'CLOSED', 'Verification meet with Yassir Merfouk', 1),
(23, 'VIDEO_CALL', '2024-09-24 14:30:00.000000', 'Dear Yassir Merfouk,\n\nI hope this message finds you well.\n\nWe are pleased to inform you that you have been shortlisted for an interview for the job \'Java angular developer\' posted by one of our esteemed clients. As part of our hiring process, we would like to invite you to an interview meeting to discuss your qualifications and experience further. This meeting will give us an opportunity to learn more about you and for you to learn more about the exciting opportunities offered by our client.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your interest in this opportunity. We look forward to speaking with you and discussing how your skills and experiences align with the needs of our client.\n\nBest regards,\n\nPulse digital company', 'ADMIN_INTERVIEW', 'https://meet.google.com/ykz-nwze-mus', NULL, 'CLOSED', 'Interview meet with Yassir Merfouk - Java angular developer job offer', 1),
(24, 'VIDEO_CALL', '2024-09-25 14:30:00.000000', 'Dear Ahmed El Haddad,\n\nI hope this message finds you well.\n\nWe are pleased to inform you that you have been shortlisted for an interview for the job \'Java angular developer\' posted by one of our esteemed clients. As part of our hiring process, we would like to invite you to an interview meeting to discuss your qualifications and experience further. This meeting will give us an opportunity to learn more about you and for you to learn more about the exciting opportunities offered by our client.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your interest in this opportunity. We look forward to speaking with you and discussing how your skills and experiences align with the needs of our client.\n\nBest regards,\n\nPulse digital company', 'ADMIN_INTERVIEW', 'https://meet.google.com/ykz-nwze-mus', NULL, 'CLOSED', 'Interview meet with Ahmed El Haddad - Java angular developer job offer', 1),
(25, 'VIDEO_CALL', '2024-09-26 14:02:00.000000', 'Dear Yassir Merfouk,\n\nWe hope this message finds you well.\n\nWe are pleased to inform you that you have been selected by our client to pass an interview for the job \'Java angular developer\'. As part of this process, we would like to invite you to an interview meeting to discuss your qualifications and experience further. This meeting will give us an opportunity to learn more about you and for you to learn more about the exciting opportunities offered by our client.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your interest in this opportunity. We look forward to speaking with you and discussing how your skills and experiences align with the needs of our client.\n\nBest regards,\n\nPulse Digital Company', 'CLIENT_INTERVIEW', 'https://meet.google.com/ykz-nwze-mus', 'Dear Youssef Soulaim,\n\nI hope this message finds you well.\n\nWe are pleased to inform you that we have arranged the interview you requested for the job \'Java angular developer\'. The interview meeting has been scheduled to discuss their qualifications and experience further.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your continued trust in our services. We look forward to facilitating this interview and helping you find the right fit for your needs.\n\nBest regards,\n\n Pulse Digital Company;', 'CLOSED', 'Client Youssef Soulaim meet with talent Yassir Merfouk for job Java angular developer', 1),
(26, 'VIDEO_CALL', '2024-09-30 18:49:00.000000', 'I hope this message finds you well.\n\nWe are pleased to inform you that we have arranged the interview you requested for the job \'Java angular developer\'. The interview meeting has been scheduled to discuss their qualifications and experience further.\n\nPlease join the meeting using the following Google Meet link https://meet.google.com/ykz-nwze-mus.\n\nThank you for your continued trust in our services. We look forward to facilitating this interview and helping you find the right fit for your needs.\n\nBest regards,\n\nPulse Digital Company;', 'ADMIN_INTERVIEW', 'https://meet.google.com/ykz-nwze-mus', NULL, 'CLOSED', 'Job interview for selection', 1);

-- --------------------------------------------------------

--
-- Structure de la table `meets_receivers`
--

CREATE TABLE `meets_receivers` (
  `meet_id` bigint(20) NOT NULL,
  `receivers_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `meets_receivers`
--

INSERT INTO `meets_receivers` (`meet_id`, `receivers_id`) VALUES
(1, 4),
(2, 5),
(3, 6),
(4, 7),
(5, 2),
(6, 4),
(7, 3),
(7, 2),
(8, 8),
(9, 2),
(10, 4),
(11, 5),
(12, 3),
(12, 2),
(15, 3),
(16, 2),
(23, 2),
(24, 4),
(25, 3),
(25, 2),
(26, 2);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `clicked` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `related_model` bigint(20) DEFAULT NULL,
  `seen` bit(1) NOT NULL,
  `type` enum('JOB_STATUS_CHANGED','MEET','TALENT_VERIFICATION','CLIENT_VERIFICATION','INTERVIEW_REQUEST','TEST') DEFAULT NULL,
  `receiver_id` bigint(20) DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `body`, `clicked`, `created_at`, `related_model`, `seen`, `type`, `receiver_id`, `sender_id`) VALUES
(1, 'The Talent Yassir Merfouk sent a verification request to the admins.', b'0', '2024-07-31 15:22:00.000000', 2, b'1', 'TALENT_VERIFICATION', 1, 2),
(2, 'The Client Youssef Soulaim sent a verification request to the admins.', b'0', '2024-07-31 15:26:12.000000', 3, b'1', 'CLIENT_VERIFICATION', 1, 3),
(3, 'You have been verified by the admins, welcome to our platform.', b'0', '2024-07-31 15:26:29.000000', 3, b'1', 'CLIENT_VERIFICATION', 3, NULL),
(4, 'You have been verified by the admins, welcome to our platform.', b'0', '2024-07-31 15:41:33.000000', 2, b'1', 'TALENT_VERIFICATION', 2, NULL),
(5, 'The Talent Ahmed El Haddad sent a verification request to the admins.', b'0', '2024-08-07 15:36:38.000000', 4, b'1', 'TALENT_VERIFICATION', 1, 4),
(6, 'You have a verification meet at août 8, 2024, 10:00 a.m.', b'0', '2024-08-07 15:37:44.000000', 1, b'1', 'MEET', 4, NULL),
(7, 'You have a verification meet at août 8, 2024, 10:30 a.m.', b'0', '2024-08-07 15:39:40.000000', 2, b'1', 'MEET', 5, NULL),
(8, 'You have a verification meet at août 8, 2024, 11:00 a.m.', b'0', '2024-08-07 15:39:58.000000', 3, b'0', 'MEET', 6, NULL),
(9, 'You have a verification meet at août 8, 2024, 11:30 a.m.', b'0', '2024-08-07 15:40:34.000000', 4, b'0', 'MEET', 7, NULL),
(10, 'You have been verified by the admins, welcome to our platform.', b'0', '2024-08-07 15:41:38.000000', 4, b'1', 'TALENT_VERIFICATION', 4, NULL),
(11, 'You have been verified by the admins, welcome to our platform.', b'0', '2024-08-07 15:41:42.000000', 5, b'1', 'TALENT_VERIFICATION', 5, NULL),
(12, 'You have been verified by the admins, welcome to our platform.', b'0', '2024-08-07 15:41:48.000000', 6, b'0', 'TALENT_VERIFICATION', 6, NULL),
(13, 'You have been verified by the admins, welcome to our platform.', b'0', '2024-08-07 15:41:52.000000', 7, b'0', 'TALENT_VERIFICATION', 7, NULL),
(14, 'Client Youssef Soulaim sent a request for starting his job process.', b'1', '2024-08-07 21:42:51.000000', 10, b'1', 'JOB_STATUS_CHANGED', 1, 3),
(15, 'Your job is in selection state now, admin will start selection of talents.', b'0', '2024-08-07 21:43:03.000000', 10, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(16, 'Client Youssef Soulaim sent a request for starting his job process.', b'1', '2024-08-07 21:44:56.000000', 10, b'1', 'JOB_STATUS_CHANGED', 1, 3),
(17, 'Your job is in selection state now, admin will start selection of talents.', b'0', '2024-08-07 21:45:07.000000', 10, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(18, 'You have a interview meet at août 9, 2024, 3:00 p.m.', b'0', '2024-08-07 22:05:19.000000', 5, b'1', 'MEET', 2, NULL),
(19, 'You have a interview meet at août 9, 2024, 4:00 p.m.', b'0', '2024-08-07 22:05:54.000000', 6, b'0', 'MEET', 4, NULL),
(20, 'Your job is in approving state now, please check the selected talents.', b'1', '2024-08-07 22:08:55.000000', 10, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(21, 'Client Youssef Soulaim sent a request for interview with talent Yassir Merfouk for his job offer.', b'1', '2024-08-07 22:18:33.000000', 10, b'1', 'INTERVIEW_REQUEST', 1, 3),
(22, 'You have a interview meet at août 12, 2024, 2:00 p.m.', b'0', '2024-08-07 22:24:46.000000', 7, b'1', 'MEET', 3, NULL),
(23, 'You have a interview meet at août 12, 2024, 2:00 p.m.', b'0', '2024-08-07 22:24:46.000000', 7, b'1', 'MEET', 2, NULL),
(24, 'Client Youssef Soulaim sent a request for interview with talent Ahmed El Haddad for his job offer.', b'1', '2024-08-07 22:25:43.000000', 10, b'1', 'INTERVIEW_REQUEST', 1, 3),
(25, 'Client Youssef Soulaim has closed his job, please check the job.', b'0', '2024-08-07 22:26:10.000000', 10, b'1', 'JOB_STATUS_CHANGED', 1, 3),
(26, 'Your job has been closed by the admin, please check the job.', b'1', '2024-08-07 22:26:39.000000', 10, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(27, 'The Talent Yassir Merfouk sent a verification request to the admins.', b'0', '2024-08-19 14:09:14.000000', 8, b'1', 'TALENT_VERIFICATION', 1, 8),
(28, 'You have a verification meet at août 26, 2024, 2:15 p.m.', b'0', '2024-08-19 14:14:19.000000', 8, b'1', 'MEET', 8, NULL),
(29, 'You have been verified by the admins, welcome to our platform.', b'0', '2024-08-19 14:15:02.000000', 8, b'1', 'TALENT_VERIFICATION', 8, NULL),
(30, 'Client Youssef Soulaim sent a request for starting his job process.', b'1', '2024-08-19 14:23:12.000000', 13, b'1', 'JOB_STATUS_CHANGED', 1, 3),
(31, 'Your job is in selection state now, admin will start selection of talents.', b'0', '2024-08-19 14:23:43.000000', 13, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(32, 'You have a interview meet at août 20, 2024, 2:30 p.m.', b'0', '2024-08-19 14:30:20.000000', 9, b'1', 'MEET', 2, NULL),
(33, 'You have a interview meet at août 20, 2024, 2:30 p.m.', b'0', '2024-08-19 14:30:44.000000', 10, b'0', 'MEET', 4, NULL),
(34, 'You have a interview meet at août 20, 2024, 2:30 p.m.', b'0', '2024-08-19 14:30:53.000000', 11, b'0', 'MEET', 5, NULL),
(35, 'Your job is in approving state now, please check the selected talents.', b'1', '2024-08-19 14:32:11.000000', 13, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(36, 'Client Youssef Soulaim sent a request for interview with talent Yassir Merfouk for his job offer.', b'0', '2024-08-19 14:33:21.000000', 13, b'1', 'INTERVIEW_REQUEST', 1, 3),
(37, 'You have a interview meet at août 22, 2024, 2:33 p.m.', b'1', '2024-08-19 14:36:01.000000', 12, b'1', 'MEET', 3, NULL),
(38, 'You have a interview meet at août 22, 2024, 2:33 p.m.', b'1', '2024-08-19 14:36:01.000000', 12, b'1', 'MEET', 2, NULL),
(39, 'Client Youssef Soulaim has closed his job, please check the job.', b'0', '2024-08-19 14:37:40.000000', 13, b'1', 'JOB_STATUS_CHANGED', 1, 3),
(40, 'Your job has been closed by the admin, please check the job.', b'0', '2024-08-23 13:05:02.000000', 13, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(41, 'Your job has been closed by the admin, please check the job.', b'0', '2024-08-23 13:06:09.000000', 13, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(42, 'The Talent Yassir Merfouk sent a verification request to the admins.', b'0', '2024-09-17 21:37:59.000000', 2, b'1', 'TALENT_VERIFICATION', 1, 2),
(43, 'The Talent Yassir Merfouk sent a verification request to the admins.', b'0', '2024-09-18 13:33:53.000000', 2, b'1', 'TALENT_VERIFICATION', 1, 2),
(44, 'The Client Youssef Soulaim sent a verification request to the admins.', b'1', '2024-09-18 13:50:28.000000', 3, b'1', 'CLIENT_VERIFICATION', 1, 3),
(45, 'The Talent Yassir Merfouk sent a verification request to the admins.', b'1', '2024-09-18 13:56:47.000000', 2, b'1', 'TALENT_VERIFICATION', 1, 2),
(46, 'The Client Youssef Soulaim sent a verification request to the admins.', b'1', '2024-09-18 13:57:07.000000', 3, b'1', 'CLIENT_VERIFICATION', 1, 3),
(47, 'You have a verification meet at sept. 20, 2024, 2:08 p.m.', b'0', '2024-09-18 14:08:53.000000', 15, b'1', 'MEET', 3, NULL),
(48, 'You have a verification meet at sept. 23, 2024, 2:10 p.m.', b'1', '2024-09-18 14:09:49.000000', 16, b'1', 'MEET', 2, NULL),
(49, 'You have been verified by the admins, welcome to our platform.', b'0', '2024-09-18 14:10:25.000000', 2, b'1', 'TALENT_VERIFICATION', 2, NULL),
(50, 'You have been verified by the admins, welcome to our platform.', b'0', '2024-09-18 14:10:36.000000', 3, b'1', 'CLIENT_VERIFICATION', 3, NULL),
(51, 'Client Youssef Soulaim sent a request for starting his job process.', b'1', '2024-09-20 12:25:57.000000', 14, b'1', 'JOB_STATUS_CHANGED', 1, 3),
(52, 'Your job is in selection state now, admin will start selection of talents.', b'1', '2024-09-20 12:27:10.000000', 14, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(53, 'Your job is in approving state now, please check the selected talents.', b'0', '2024-09-20 12:33:09.000000', 14, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(54, 'Client Youssef Soulaim has closed his job, please check the job.', b'0', '2024-09-20 12:33:39.000000', 14, b'1', 'JOB_STATUS_CHANGED', 1, 3),
(55, 'Your job has been closed by the admin, please check the job.', b'0', '2024-09-20 12:34:23.000000', 14, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(56, 'Client Youssef Soulaim sent a request for starting his job process.', b'1', '2024-09-20 13:01:20.000000', 15, b'1', 'JOB_STATUS_CHANGED', 1, 3),
(57, 'Your job is in selection state now, admin will start selection of talents.', b'0', '2024-09-20 13:02:02.000000', 15, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(58, 'You have a interview meet at sept. 23, 2024, 1:45 p.m.', b'1', '2024-09-20 13:44:41.000000', 17, b'1', 'MEET', 2, NULL),
(59, 'You have a interview meet at sept. 24, 2024, 1:44 p.m.', b'0', '2024-09-20 13:44:52.000000', 18, b'0', 'MEET', 4, NULL),
(60, 'Your job is in approving state now, please check the selected talents.', b'1', '2024-09-20 13:45:52.000000', 15, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(61, 'You have a interview meet at sept. 24, 2024, 1:52 p.m.', b'1', '2024-09-20 13:52:25.000000', 19, b'1', 'MEET', 2, NULL),
(62, 'You have a interview meet at sept. 25, 2024, 1:52 p.m.', b'0', '2024-09-20 13:52:42.000000', 20, b'0', 'MEET', 4, NULL),
(63, 'Your job is in approving state now, please check the selected talents.', b'1', '2024-09-20 13:53:44.000000', 15, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(64, 'You have a interview meet at sept. 24, 2024, 1:00 p.m.', b'1', '2024-09-20 13:59:23.000000', 21, b'1', 'MEET', 2, NULL),
(65, 'You have a interview meet at sept. 25, 2024, 1:00 p.m.', b'0', '2024-09-20 13:59:41.000000', 22, b'0', 'MEET', 4, NULL),
(66, 'Your job is in approving state now, please check the selected talents.', b'1', '2024-09-20 14:00:50.000000', 15, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(67, 'Client Youssef Soulaim sent a request for interview with talent Yassir Merfouk for his job offer.', b'1', '2024-09-20 14:02:20.000000', 15, b'1', 'INTERVIEW_REQUEST', 1, 3),
(68, 'You have a interview meet at sept. 24, 2024, 2:30 p.m.', b'1', '2024-09-20 14:28:52.000000', 23, b'1', 'MEET', 2, NULL),
(69, 'You have a interview meet at sept. 25, 2024, 2:30 p.m.', b'0', '2024-09-20 14:29:06.000000', 24, b'0', 'MEET', 4, NULL),
(70, 'Your job is in approving state now, please check the selected talents.', b'1', '2024-09-20 14:31:03.000000', 15, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(71, 'Client Youssef Soulaim sent a request for interview with talent Yassir Merfouk for his job offer.', b'1', '2024-09-20 14:32:14.000000', 15, b'1', 'INTERVIEW_REQUEST', 1, 3),
(72, 'You have a interview meet at sept. 26, 2024, 2:02 p.m.', b'1', '2024-09-20 14:33:32.000000', 25, b'1', 'MEET', 3, NULL),
(73, 'You have a interview meet at sept. 26, 2024, 2:02 p.m.', b'0', '2024-09-20 14:33:32.000000', 25, b'0', 'MEET', 2, NULL),
(74, 'Client Youssef Soulaim has closed his job, please check the job.', b'1', '2024-09-20 14:34:23.000000', 15, b'1', 'JOB_STATUS_CHANGED', 1, 3),
(75, 'Your job has been closed by the admin, please check the job.', b'0', '2024-09-20 14:35:01.000000', 15, b'1', 'JOB_STATUS_CHANGED', 3, NULL),
(76, 'You have a interview meet at sept. 30, 2024, 6:49 p.m.', b'0', '2024-09-20 18:51:15.000000', 26, b'0', 'MEET', 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `password_tokens`
--

CREATE TABLE `password_tokens` (
  `id` bigint(20) NOT NULL,
  `confirmed_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `password_tokens`
--

INSERT INTO `password_tokens` (`id`, `confirmed_at`, `created_at`, `expires_at`, `token`, `user_id`) VALUES
(1, '2024-07-31 14:33:24.000000', '2024-07-31 14:32:25.000000', '2024-07-31 14:47:25.000000', '2b4a517a-00c6-4c11-8198-381c11c7f9fd', 2),
(2, '2024-07-31 14:45:43.000000', '2024-07-31 14:45:21.000000', '2024-07-31 15:00:21.000000', '4031e3c4-f98f-4f60-8797-d09e1426840c', 2),
(3, NULL, '2024-09-06 13:57:40.000000', '2024-09-06 14:12:40.000000', '99c95252-b2cd-4f83-bacd-6ab4e42548b2', 1),
(4, NULL, '2024-09-06 16:26:40.000000', '2024-09-06 16:41:40.000000', '3e5f8fd5-edd3-4049-b930-5af8e110468a', 1),
(5, NULL, '2024-09-06 16:41:26.000000', '2024-09-06 16:56:26.000000', 'f842f1e1-fe3e-496c-9cec-6043d652140d', 1),
(6, '2024-09-17 21:21:13.000000', '2024-09-17 21:20:50.000000', '2024-09-17 21:35:50.000000', 'a9489812-48f5-4854-bae8-4adc663a6341', 28),
(7, '2024-09-17 21:24:24.000000', '2024-09-17 21:24:01.000000', '2024-09-17 21:39:01.000000', 'a7eaf140-aad0-4d00-9656-8f074002414f', 28),
(8, '2024-09-17 21:27:07.000000', '2024-09-17 21:26:46.000000', '2024-09-17 21:41:46.000000', '4abc08ad-78f3-4147-add8-739a440aa49b', 28);

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) NOT NULL,
  `long_description` varchar(2000) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `talent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`id`, `long_description`, `resource`, `short_description`, `title`, `talent_id`) VALUES
(1, NULL, 'https://github.com/yassirmerfouk', 'Application web jee - Guichet unique des candidatures (Servlet, Jsp, Jstl, Hibernate, MySQL, Html, Css, Bootstrap)', 'Application web jee - Guichet unique des candidatures', 2),
(2, NULL, 'https://github.com/yassirmerfouk', 'Application web jee - Application de tutorat (Servlet, Jsp, Jstl, Spring ioc, Hibernate, MySQL, Html, Css, Bootstrap)\n', 'Application web jee - Application de tutorat', 2),
(3, NULL, 'https://github.com/yassirmerfouk', 'Application web spring - Service reviews (Spring ecosystem, Eureka service registry, RabbitMQ, Angular)\n', 'Application web spring - Service reviews', 2),
(4, NULL, 'https://github.com/yassirmerfouk', 'Application web spring - Service reviews (Spring ecosystem, Eureka service registry, RabbitMQ, Angular)', 'Application web spring - Service reviews', 8);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(2, 'ADMIN'),
(3, 'CLIENT'),
(1, 'SUPER_ADMIN'),
(4, 'TALENT');

-- --------------------------------------------------------

--
-- Structure de la table `selections`
--

CREATE TABLE `selections` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `status` enum('CREATED','ACCEPTED','REFUSED','IN_CHOOSING','CLOSED') DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `selections`
--

INSERT INTO `selections` (`id`, `created_at`, `description`, `sector`, `status`, `title`, `client_id`) VALUES
(1, '2024-08-17 15:36:16.000000', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Web developement', 'CLOSED', 'My selection for a java / angular job offer', 3),
(2, '2024-08-19 07:42:36.000000', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Web developement', 'CLOSED', 'New selection for php developer ', 3),
(3, '2024-08-19 07:44:56.000000', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Mobile development', 'CLOSED', 'New selection for Flutter developer', 3),
(4, '2024-08-19 14:39:54.000000', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Web development', 'CLOSED', 'New telection for job offer java', 3),
(5, '2024-08-23 13:14:23.000000', 'We are seeking a highly skilled Java and Angular Full-Stack Developer to join our team. As a Full-Stack Developer, you will be responsible for designing, developing, and maintaining our web applications using Java and Angular. You will work closely with our development team to identify and prioritize project requirements, and develop innovative solutions to complex technical problems. Your responsibilities will include designing and implementing scalable and efficient backend APIs using Java, building responsive and user-friendly frontend interfaces using Angular, and ensuring the seamless integration of both components. Additionally, you will be responsible for testing and debugging code, collaborating with other team members, and contributing to the development of our software architecture. If you have a passion for building high-quality software, excellent problem-solving skills, and experience working with both Java and Angular, we would love to hear from you!', 'Web development', 'CLOSED', 'New selection request for java / angular developer', 3),
(7, '2024-09-15 13:09:59.000000', 'We are seeking a highly skilled Java and Angular Full-Stack Developer to join our team. As a Full-Stack Developer, you will be responsible for designing, developing, and maintaining our web applications using Java and Angular. You will work closely with our development team to identify and prioritize project requirements, and develop innovative solutions to complex technical problems. Your responsibilities will include designing and implementing scalable and efficient backend APIs using Java, building responsive and user-friendly frontend interfaces using Angular, and ensuring the seamless integration of both components. Additionally, you will be responsible for testing and debugging code, collaborating with other team members, and contributing to the development of our software architecture. If you have a passion for building high-quality software, excellent problem-solving skills, and experience working with both Java and Angular, we would love to hear from you!', 'Web development', 'CLOSED', 'New selection request for java / angular developer', 3),
(9, '2024-09-20 18:48:47.000000', 'We are seeking a highly skilled Java and Angular Full-Stack Developer to join our team. As a Full-Stack Developer, you will be responsible for designing, developing, and maintaining our web applications using Java and Angular. You will work closely with our development team to identify and prioritize project requirements, and develop innovative solutions to complex technical problems. Your responsibilities will include designing and implementing scalable and efficient backend APIs using Java, building responsive and user-friendly frontend interfaces using Angular, and ensuring the seamless integration of both components. Additionally, you will be responsible for testing and debugging code, collaborating with other team members, and contributing to the development of our software architecture. If you have a passion for building high-quality software, excellent problem-solving skills, and experience working with both Java and Angular, we would love to hear from you!', 'Web development', 'CLOSED', 'New selection for java/angular developer', 3);

-- --------------------------------------------------------

--
-- Structure de la table `selection_items`
--

CREATE TABLE `selection_items` (
  `id` bigint(20) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `report` varchar(5000) DEFAULT NULL,
  `selected` bit(1) NOT NULL,
  `selection_id` bigint(20) DEFAULT NULL,
  `talent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `selection_items`
--

INSERT INTO `selection_items` (`id`, `level`, `report`, `selected`, `selection_id`, `talent_id`) VALUES
(1, NULL, '[Talent\'s Name] demonstrated a strong command of Java and Angular technologies during the interview. Their skills in backend development with Java, particularly in using Spring Boot, were evident through their detailed explanations of advanced concepts such as dependency injection, transaction management, and application security.\n\nOn the frontend side, [Talent\'s Name] showed a good understanding of Angular concepts, including component management, service communication, and integration with RESTful APIs. They also showcased their knowledge of best practices in developing responsive user interfaces.', b'1', 1, 2),
(2, NULL, '[Talent\'s Name] demonstrated a strong command of Java and Angular technologies during the interview. Their skills in backend development with Java, particularly in using Spring Boot, were evident through their detailed explanations of advanced concepts such as dependency injection, transaction management, and application security.\n\nOn the frontend side, [Talent\'s Name] showed a good understanding of Angular concepts, including component management, service communication, and integration with RESTful APIs. They also showcased their knowledge of best practices in developing responsive user interfaces.', b'0', 1, 4),
(3, NULL, NULL, b'0', 2, 2),
(4, NULL, NULL, b'0', 2, 4),
(5, NULL, NULL, b'1', 3, 2),
(6, NULL, NULL, b'1', 3, 5),
(7, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', b'1', 4, 2),
(8, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', b'0', 4, 4),
(9, NULL, 'Talent Name: Yassir Merfouk\nDate of Interview: August 23, 2024\nPosition: Java/Angular Developer\nInterviewer: Jane Smith\n\nTechnical Skills Assessment\nJava:\nYassir demonstrated a strong understanding of Java, particularly in the context of enterprise application development using Spring Boot. He effectively discussed key Java concepts, such as object-oriented principles, design patterns, and multithreading. Yassir also provided detailed explanations of how he has applied these concepts in previous projects, showcasing his practical experience.\n\nAngular:\nYassir exhibited a solid grasp of Angular, with a clear understanding of its component-based architecture. He successfully explained how he has used Angular to develop dynamic, single-page applications (SPAs), and provided examples of projects where he implemented complex front-end features. His familiarity with Angular’s reactive programming model, along with his knowledge of RxJS, was evident during the discussion.\n\nSoft Skills and Communication\nYassir communicated his thoughts clearly and concisely, demonstrating strong problem-solving abilities. He was able to articulate technical concepts in a way that was easy to understand, which would be beneficial for team collaboration. Yassir also showed a proactive approach to learning and staying updated with the latest developments in Java and Angular.\n\nAreas for Improvement\nWhile Yassir has a solid foundation in both Java and Angular, he could benefit from deeper exploration of microservices architecture and more hands-on experience with cloud platforms like AWS or Azure. Additionally, improving his familiarity with automated testing tools in Angular would enhance his front-end development skills.\n\nOverall Evaluation\nYassir Merfouk is a highly skilled Java/Angular developer with a strong technical background and excellent communication skills. He is well-suited for roles that require expertise in full-stack development and has the potential to contribute significantly to the team. Further development in microservices and cloud technologies would make him even more versatile in his role.\n\nRecommendation: Proceed with the hiring process.', b'1', 5, 2),
(10, NULL, NULL, b'0', 5, 4),
(13, NULL, NULL, b'1', 7, 2),
(14, NULL, NULL, b'0', 7, 4),
(17, NULL, 'Talent Name: Yassir Merfouk\nDate of Interview: August 23, 2024\nPosition: Java/Angular Developer\nInterviewer: Jane Smith\n\nTechnical Skills Assessment\nJava:\nYassir demonstrated a strong understanding of Java, particularly in the context of enterprise application development using Spring Boot. He effectively discussed key Java concepts, such as object-oriented principles, design patterns, and multithreading. Yassir also provided detailed explanations of how he has applied these concepts in previous projects, showcasing his practical experience.\n\nAngular:\nYassir exhibited a solid grasp of Angular, with a clear understanding of its component-based architecture. He successfully explained how he has used Angular to develop dynamic, single-page applications (SPAs), and provided examples of projects where he implemented complex front-end features. His familiarity with Angular’s reactive programming model, along with his knowledge of RxJS, was evident during the discussion.\n\nSoft Skills and Communication\nYassir communicated his thoughts clearly and concisely, demonstrating strong problem-solving abilities. He was able to articulate technical concepts in a way that was easy to understand, which would be beneficial for team collaboration. Yassir also showed a proactive approach to learning and staying updated with the latest developments in Java and Angular.\n\nAreas for Improvement\nWhile Yassir has a solid foundation in both Java and Angular, he could benefit from deeper exploration of microservices architecture and more hands-on experience with cloud platforms like AWS or Azure. Additionally, improving his familiarity with automated testing tools in Angular would enhance his front-end development skills.\n\nOverall Evaluation\nYassir Merfouk is a highly skilled Java/Angular developer with a strong technical background and excellent communication skills. He is well-suited for roles that require expertise in full-stack development and has the potential to contribute significantly to the team. Further development in microservices and cloud technologies would make him even more versatile in his role.\n\nRecommendation: Proceed with the hiring process.', b'1', 9, 2),
(18, NULL, NULL, b'0', 9, 4);

-- --------------------------------------------------------

--
-- Structure de la table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `skills`
--

INSERT INTO `skills` (`id`, `title`) VALUES
(1, 'JAVA'),
(2, 'SPRING'),
(3, 'SPRING BOOT'),
(4, 'ANGULAR'),
(5, 'TYPESCRIPT'),
(6, 'REACTJS'),
(7, 'JAVASCRIPT'),
(8, 'HTML'),
(9, 'CSS'),
(10, 'FLUTTER'),
(11, 'DART'),
(12, 'PHP'),
(13, 'LARAVEL'),
(15, 'JAVAEE'),
(18, 'C++'),
(19, 'C#');

-- --------------------------------------------------------

--
-- Structure de la table `talents`
--

CREATE TABLE `talents` (
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `summary` varchar(3000) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `available` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `talents`
--

INSERT INTO `talents` (`address`, `city`, `date_of_birth`, `summary`, `title`, `id`, `available`) VALUES
('203 BLOC \" RIYAD SAFI', 'Safi', '1999-11-11', 'As a software engineer, I, Yassir Merfouk, have a strong foundation in computer science and engineering, with proficiency in languages like Java, Python, and C++. With experience in developing mobile apps, web applications, I\'ve honed my skills in problem-solving and attention to detail. My passion for technology and teamwork makes me a valuable asset to any organization, where I can leverage my technical expertise and communication skills to deliver high-quality results.', 'Software Engineer', 2, b'1'),
('Suite 286 56726 Curtis Orchard, East Derick, ND 63191', 'Casablanca', '1990-08-18', 'As a software engineer, I, Yassir Merfouk, have a strong foundation in computer science and engineering, with proficiency in languages like Java, Python, and C++. With experience in developing mobile apps, web applications;', 'Software Engineer', 4, b'1'),
(NULL, 'Rabat', '1990-08-18', NULL, 'IT Project Manager', 5, b'1'),
(NULL, 'Marrakech', '1998-08-05', NULL, 'Systems Analyst', 6, b'1'),
(NULL, 'Tangier', '1998-08-05', NULL, 'Network Administrator', 7, b'1'),
('Suite 286 56726 Curtis Orchard, East Derick, ND 63191', 'Safi', '1999-11-11', 'As a software engineer, I, Yassir Merfouk, have a strong foundation in computer science and engineering, with proficiency in languages like Java, Python, and C++. With experience in developing mobile apps, web applications, I\'ve honed my skills in problem-solving and attention to detail. My passion for technology and teamwork makes me a valuable asset to any organization, where I can leverage my technical expertise and communication skills to deliver high-quality results.', 'Web Developer', 8, b'1'),
(NULL, 'Fès', '1988-11-11', NULL, 'DevOps Engineer', 9, b'1'),
(NULL, 'Agadir', '1991-11-27', NULL, 'Front-end Developer', 10, b'1'),
(NULL, 'Marrakech', '1995-11-27', NULL, 'Back-end Developer', 11, b'1'),
(NULL, 'Casablanca', '2000-09-27', NULL, 'Full Stack Developer', 12, b'1'),
(NULL, 'Safi', '1999-11-11', NULL, 'Full Stack Developer', 13, b'1'),
(NULL, 'Casablanca', '1999-11-11', NULL, 'Data Scientist', 14, b'1'),
(NULL, 'Rabat', '1997-11-11', NULL, 'Mobile Developer', 15, b'1'),
(NULL, 'Marrakech', '1997-11-15', NULL, 'UI/UX Designer', 16, b'1'),
(NULL, 'Casablanca', '1989-11-15', NULL, 'Cloud Architect', 17, b'1'),
(NULL, 'Safi', '1999-11-11', NULL, 'Software Engineer', 25, b'0'),
(NULL, 'Casablanca', '1999-11-11', NULL, 'Software engineer', 26, b'0'),
(NULL, 'Safi', '1999-11-11', NULL, 'Software engineer', 27, b'0'),
(NULL, 'Safi', '1999-11-11', NULL, 'Software Engineer', 28, b'0');

-- --------------------------------------------------------

--
-- Structure de la table `talents_skills`
--

CREATE TABLE `talents_skills` (
  `talent_id` bigint(20) NOT NULL,
  `skills_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `talents_skills`
--

INSERT INTO `talents_skills` (`talent_id`, `skills_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(4, 1),
(4, 18),
(4, 19),
(5, 4),
(5, 5),
(6, 1),
(6, 2),
(6, 4),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 7),
(8, 12),
(8, 13);

-- --------------------------------------------------------

--
-- Structure de la table `talent_contracts`
--

CREATE TABLE `talent_contracts` (
  `id` bigint(20) NOT NULL,
  `contract_url` varchar(255) DEFAULT NULL,
  `talent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_type` varchar(10) NOT NULL,
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `locked` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` enum('NOT_VERIFIED','WAITING','VERIFIED','BANNED') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_type`, `id`, `created_at`, `email`, `enabled`, `first_name`, `image`, `last_name`, `locked`, `password`, `phone`, `status`) VALUES
('ADMIN', 1, '2024-07-31 14:02:06.000000', 'admin@mohmal.in', b'1', 'HR', NULL, 'ADMIN', b'0', '$2a$10$QNS3TX/pfxuFZQcquMfnMOjNVXk4w1VzRbCFBUyAQ3dOIY8PP0C9K', '0642848255', 'VERIFIED'),
('TALENT', 2, '2024-07-31 14:08:32.000000', 'talent1@mohmal.in', b'1', 'Yassir', 'https://res.cloudinary.com/djcdpsyie/image/upload/tr1olmtka14cc93sgcx4', 'Merfouk', b'0', '$2a$10$bYCUc8U9X/hOI1XQC1B0ruApx7dqye0NNAdYujGOZBQ.5lnsBE8cG', '0642848255', 'VERIFIED'),
('CLIENT', 3, '2024-07-31 14:16:56.000000', 'client1@mohmal.in', b'1', 'Youssef', 'https://res.cloudinary.com/djcdpsyie/image/upload/mm68xoz1olrqaxch8uc0', 'Soulaim', b'0', '$2a$10$GanuDtWD6FYkQ6CTxXeKAe.2oJig7o/IaxAGv7GxesWSzc8z82CW2', '0624578032', 'VERIFIED'),
('TALENT', 4, '2024-08-07 15:05:20.000000', 'talent2@mohmal.in', b'1', 'Ahmed', 'https://res.cloudinary.com/djcdpsyie/image/upload/undmikphd3jyjjsggvsk', 'El Haddad', b'0', '$2a$10$CyYAxWE8m/YAGXy99irVcuDF8Se0fjwb4q9EUnmLrVw1XVNYl8OXu', '0612345678', 'VERIFIED'),
('TALENT', 5, '2024-08-07 15:06:28.000000', 'talent3@mohmal.in', b'1', 'Fatima', NULL, 'Benjelloun', b'0', '$2a$10$LxHXbCdfnnOCq6WjXiM1wODdCOzjxv6s/bEnXBdjekCaXsRTfzk96', '0612345678', 'VERIFIED'),
('TALENT', 6, '2024-08-07 15:07:47.000000', 'talent4@mohmal.in', b'1', 'Mohamed', NULL, 'El Mansouri', b'0', '$2a$10$taWWgjO.xtkNe/a9E/y5Tuk7jTvDVj7dhdkbtOpKHzOixAp3yRzsa', '0634567890', 'VERIFIED'),
('TALENT', 7, '2024-08-07 15:08:42.000000', 'talent5@mohmal.in', b'1', 'Amina', NULL, 'Oukili', b'0', '$2a$10$q7KSOOerp4HjvyX8JOjzE.Kj2z5WhwNRSSwM4mKvyx1VQ6yNXfnK.', '0634567890', 'VERIFIED'),
('TALENT', 8, '2024-08-07 15:11:41.000000', 'talent6@mohmal.in', b'1', 'Yassir', 'https://res.cloudinary.com/djcdpsyie/image/upload/bkb6bs0a67kelybbepkq', 'Merfouk', b'0', '$2a$10$DHC1nuM6XRuDq5hIxGlPjevAYk75r2QmEJIZlosQCGl3JuBqzF92i', '0642848255', 'VERIFIED'),
('TALENT', 9, '2024-08-07 15:14:18.000000', 'talent7@mohmal.in', b'1', 'Youssef', NULL, 'Amrani', b'0', '$2a$10$GlCIpgojiNeSa93N2UeO.uPbA8V9npCvuzrdMwitKcJuynd4IST1u', '0656789012', 'NOT_VERIFIED'),
('TALENT', 10, '2024-08-07 15:15:13.000000', 'talent8@mohmal.in', b'1', 'Salma', NULL, 'Bouzid', b'1', '$2a$10$Hd61S1Hb0b3GLjTD0ljWUuC30RLYajVfam/tHa/kRQd5d8LakcQIW', '0656789012', 'BANNED'),
('TALENT', 11, '2024-08-07 15:16:19.000000', 'talent9@mohmal.in', b'1', 'Hicham', NULL, 'Belkacem', b'0', '$2a$10$YAcSbMdYwxSdQHkAZX4CyOOsDs.lrtCKIqexHFth5RoCsX0hsZwPK', '0656789012', 'NOT_VERIFIED'),
('TALENT', 12, '2024-08-07 15:17:35.000000', 'talent10@mohmal.in', b'1', 'Leila', NULL, 'Chaouki', b'0', '$2a$10$ebLlBB/PLgGyztLrPjo99.ULjWsUroYrdAFFlNbcbZNipBEQIzC5G', '0689012345', 'NOT_VERIFIED'),
('TALENT', 13, '2024-08-07 15:19:36.000000', 'talent11@mohmal.in', b'1', 'Yassir', NULL, 'Merfouk', b'0', '$2a$10$P.HJPym0WmnIqv.yuozMdOU/B3Ohzf5hGc8q9RTjDDPXQYD.dPD8q', '0642848255', 'NOT_VERIFIED'),
('TALENT', 14, '2024-08-07 15:20:56.000000', 'talent12@mohmal.in', b'1', 'Nadia', NULL, 'El Fassi', b'0', '$2a$10$vafk47VWKsLDsrmfp7EQVO.GEcowBFKYv7sRcKY9VN5MFRqjP6VIG', '062345678', 'NOT_VERIFIED'),
('TALENT', 15, '2024-08-07 15:21:46.000000', 'talent13@mohmal.in', b'1', 'Karim', NULL, 'Jebli', b'0', '$2a$10$IOPdjAXMRLF0A9UPAV/oFupUYsvR4ifD2jrjTJ6r5Rbn/0fMVwaGy', '062345678', 'NOT_VERIFIED'),
('TALENT', 16, '2024-08-07 15:23:11.000000', 'talent14@mohmal.in', b'1', 'Imane', NULL, 'Rachidi', b'0', '$2a$10$ro9FiyyuLLC9dIxVIa73.O0B/3SFmHTE./ZysUU4TuMpGc2uCzcRC', '0645678901', 'NOT_VERIFIED'),
('TALENT', 17, '2024-08-07 15:24:12.000000', 'talent15@mohmal.in', b'1', 'Omar', NULL, 'Zouiten', b'0', '$2a$10$8S5RhdAtINMdoHrn.mECAeiGIu8sTsuVmarudD/5j3kOptRXNZREO', '0656789012', 'NOT_VERIFIED'),
('CLIENT', 18, '2024-08-07 20:50:25.000000', 'client2@mohmal.In', b'1', 'Sara', NULL, 'El Haouari', b'0', '$2a$10$kxCcnE.2TnotdJM0VcOAtetUtt60au2ygKpoeMFNRKtlzre6eQHhK', '+212 6 78 90 12 34', 'VERIFIED'),
('CLIENT', 19, '2024-08-07 20:51:16.000000', 'client3@mohmal.In', b'1', 'Yassine', NULL, 'Ait Benali', b'0', '$2a$10$tgcP34p5CiXyIsq7bDL1.e1xdjGrD7cl.hJl1o82Mlbu/iNChT1Si', '+212 6 89 01 23 45', 'VERIFIED'),
('CLIENT', 20, '2024-08-07 21:00:54.000000', 'client4@mohmal.In', b'1', 'Jean', NULL, 'Dupont', b'0', '$2a$10$C8dvprbOZyDdfLXRl1kwIukFybsv29S2ipJnynJIyxdN2FOwzub3S', '+212 6 89 01 23 45', 'VERIFIED'),
('CLIENT', 21, '2024-08-07 21:01:50.000000', 'client5@mohmal.In', b'1', 'Emma', NULL, 'Müller', b'0', '$2a$10$3X763yldlYxQlNGvIIZSWub6U2H/8UvkLaN1Ww7xp56c0jDAX/PTy', '+41 79 123 45 67', 'WAITING'),
('CLIENT', 22, '2024-08-07 21:05:42.000000', 'client6@mohmal.in', b'1', 'Lucas', NULL, 'Martin', b'0', '$2a$10$Vka3ctXjImTHkZjCi47GI.L4phNS36J1okrbV.QlMMAphXx/6pp9C', '+33 6 23 45 67 89', 'NOT_VERIFIED'),
('CLIENT', 23, '2024-08-07 21:06:28.000000', 'client7@mohmal.in', b'1', 'Clara', NULL, 'Dubois', b'0', '$2a$10$Xy7T.4jgUfC3HDN.P5E86uA3Uz9GQpZcLgmmzteUlFkAmPB7ak/Si', '+33 6 34 56 78 90', 'NOT_VERIFIED'),
('CLIENT', 24, '2024-08-07 21:07:35.000000', 'client8@mohmal.in', b'1', 'Sophie', NULL, 'Fischer', b'0', '$2a$10$FC7/ucy5hHF0dNg.GCYYSeEB5e66vTcG9oNbKHJ3cHQZnqLfdFp2i', '+41 79 345 67 89', 'NOT_VERIFIED'),
('TALENT', 25, '2024-08-19 14:06:24.000000', 'newtalent@mohmal.in', b'1', 'Yassir', NULL, 'Merfouk', b'0', '$2a$10$TvBFPdliMOaWQezc1HhFHeLmau69vx3vr5n3TjRRuGzrKHeCXL2f.', '0642848255', 'NOT_VERIFIED'),
('TALENT', 26, '2024-09-17 20:33:17.000000', 'new-test-1@mohmal.in', b'0', 'Yassir', NULL, 'Merfouk', b'0', '$2a$10$NEAsrbsDvwdBMW5YG5jsA..O5bMthwtzSjw6kKSTsM06wAQ/jZ6TO', '0642848255', 'NOT_VERIFIED'),
('TALENT', 27, '2024-09-17 20:38:20.000000', 'yassirmerfouk@mohmal.in', b'0', 'Yassir', NULL, 'Merfouk', b'0', '$2a$10$hmOTYp0/AOrP3I3KI.UJhOCIvbf24aT2OAhfmfkdlPVTuBh6vd0bW', '0642848255', 'NOT_VERIFIED'),
('TALENT', 28, '2024-09-17 21:09:18.000000', 'yassirmerfouk1@mohmal.in', b'1', 'Yassir', NULL, 'Merfouk', b'0', '$2a$10$DYHAC.ELZNeyIfGfefTdzOE6pEEoq2tAMgLg5xTUXLYE72rPrVye.', '0642848255', 'NOT_VERIFIED');

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `roles_id`) VALUES
(1, 2),
(2, 4),
(3, 3),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 4),
(26, 4),
(27, 4),
(28, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK65weib1lru9dkrbto5pv389vi` (`job_id`),
  ADD KEY `FK32lv74ue0iag5gkxuru3xllse` (`talent_id`);

--
-- Index pour la table `batch_job_execution`
--
ALTER TABLE `batch_job_execution`
  ADD PRIMARY KEY (`JOB_EXECUTION_ID`),
  ADD KEY `JOB_INST_EXEC_FK` (`JOB_INSTANCE_ID`);

--
-- Index pour la table `batch_job_execution_context`
--
ALTER TABLE `batch_job_execution_context`
  ADD PRIMARY KEY (`JOB_EXECUTION_ID`);

--
-- Index pour la table `batch_job_execution_params`
--
ALTER TABLE `batch_job_execution_params`
  ADD KEY `JOB_EXEC_PARAMS_FK` (`JOB_EXECUTION_ID`);

--
-- Index pour la table `batch_job_execution_seq`
--
ALTER TABLE `batch_job_execution_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Index pour la table `batch_job_instance`
--
ALTER TABLE `batch_job_instance`
  ADD PRIMARY KEY (`JOB_INSTANCE_ID`),
  ADD UNIQUE KEY `JOB_INST_UN` (`JOB_NAME`,`JOB_KEY`);

--
-- Index pour la table `batch_job_seq`
--
ALTER TABLE `batch_job_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Index pour la table `batch_step_execution`
--
ALTER TABLE `batch_step_execution`
  ADD PRIMARY KEY (`STEP_EXECUTION_ID`),
  ADD KEY `JOB_EXEC_STEP_FK` (`JOB_EXECUTION_ID`);

--
-- Index pour la table `batch_step_execution_context`
--
ALTER TABLE `batch_step_execution_context`
  ADD PRIMARY KEY (`STEP_EXECUTION_ID`);

--
-- Index pour la table `batch_step_execution_seq`
--
ALTER TABLE `batch_step_execution_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Index pour la table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcgf0009t4k2hi1dxnfrfv4sgw` (`talent_id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client_contracts`
--
ALTER TABLE `client_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKidpo4rsqhf8e4lfndlo3sx1b8` (`client_id`);

--
-- Index pour la table `confirmation_tokens`
--
ALTER TABLE `confirmation_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_b2iom8gfhn1kl16kreejo7pjk` (`token`),
  ADD KEY `FKhpuw37a1pqxfb6ya1nv5lm4ga` (`user_id`);

--
-- Index pour la table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_2fcqhlwcr7byquyai0uebl923` (`client_contract_id`);

--
-- Index pour la table `contracts_talent_contracts`
--
ALTER TABLE `contracts_talent_contracts`
  ADD UNIQUE KEY `UK_786rs0vrgqk842ev4xnmffe7i` (`talent_contracts_id`),
  ADD KEY `FKt19sskb3tb9n6ogvu31xlvl42` (`contract_id`);

--
-- Index pour la table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3keclx4rjvh3xi716hbialn5` (`talent_id`);

--
-- Index pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKm63dri8hxu7ay72fn0kycs8g0` (`talent_id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7nr9m1d6cablg4wjgodpv1q5d` (`client_id`);

--
-- Index pour la table `jobs_skills`
--
ALTER TABLE `jobs_skills`
  ADD PRIMARY KEY (`job_id`,`skills_id`),
  ADD KEY `FKlrieaabfhfofpcif1o42ehtyp` (`skills_id`);

--
-- Index pour la table `job_interviews`
--
ALTER TABLE `job_interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs41fpxn63s8577itg0sx0jrq` (`application_id`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbwh103tcvkrns6y2bnm4h9l96` (`talent_id`);

--
-- Index pour la table `meets`
--
ALTER TABLE `meets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3osc74hhxoe27fhh326sgg2hk` (`sender_id`);

--
-- Index pour la table `meets_receivers`
--
ALTER TABLE `meets_receivers`
  ADD KEY `FKkkrfci9dkmqdg5fwdv05lccwd` (`receivers_id`),
  ADD KEY `FKlvxbx5mb7yt6ycv952sm2r89c` (`meet_id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9kxl0whvhifo6gw4tjq36v53k` (`receiver_id`),
  ADD KEY `FK13vcnq3ukas06ho1yrbc5lrb5` (`sender_id`);

--
-- Index pour la table `password_tokens`
--
ALTER TABLE `password_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcfy8uf6yvjt7x8wcfkyisr8jf` (`user_id`);

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2o5x7wf6rqwwq28hoi59u1ply` (`talent_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`);

--
-- Index pour la table `selections`
--
ALTER TABLE `selections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhq9t3wenabh1smvedagac9jj9` (`client_id`);

--
-- Index pour la table `selection_items`
--
ALTER TABLE `selection_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKa8pakk5d0xdg8gvyxlu08yau9` (`selection_id`),
  ADD KEY `FKr8la33w116g4dsf59usdpv7fx` (`talent_id`);

--
-- Index pour la table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `talents`
--
ALTER TABLE `talents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `talents_skills`
--
ALTER TABLE `talents_skills`
  ADD PRIMARY KEY (`talent_id`,`skills_id`),
  ADD KEY `FKbhfw1miuf4t52oddoec9dim9x` (`skills_id`);

--
-- Index pour la table `talent_contracts`
--
ALTER TABLE `talent_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKfxpkq0kdh13asweq2fqsbrt8b` (`talent_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKa62j07k5mhgifpp955h37ponj` (`roles_id`),
  ADD KEY `FK2o0jvgh89lemvvo17cbqvdxaa` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `client_contracts`
--
ALTER TABLE `client_contracts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `confirmation_tokens`
--
ALTER TABLE `confirmation_tokens`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `job_interviews`
--
ALTER TABLE `job_interviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `meets`
--
ALTER TABLE `meets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `password_tokens`
--
ALTER TABLE `password_tokens`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `selections`
--
ALTER TABLE `selections`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `selection_items`
--
ALTER TABLE `selection_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `talent_contracts`
--
ALTER TABLE `talent_contracts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `FKanhsicqm3lc8ya77tr7r0je18` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `FK32lv74ue0iag5gkxuru3xllse` FOREIGN KEY (`talent_id`) REFERENCES `talents` (`id`),
  ADD CONSTRAINT `FK65weib1lru9dkrbto5pv389vi` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`);

--
-- Contraintes pour la table `batch_job_execution`
--
ALTER TABLE `batch_job_execution`
  ADD CONSTRAINT `JOB_INST_EXEC_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `batch_job_instance` (`JOB_INSTANCE_ID`);

--
-- Contraintes pour la table `batch_job_execution_context`
--
ALTER TABLE `batch_job_execution_context`
  ADD CONSTRAINT `JOB_EXEC_CTX_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Contraintes pour la table `batch_job_execution_params`
--
ALTER TABLE `batch_job_execution_params`
  ADD CONSTRAINT `JOB_EXEC_PARAMS_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Contraintes pour la table `batch_step_execution`
--
ALTER TABLE `batch_step_execution`
  ADD CONSTRAINT `JOB_EXEC_STEP_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Contraintes pour la table `batch_step_execution_context`
--
ALTER TABLE `batch_step_execution_context`
  ADD CONSTRAINT `STEP_EXEC_CTX_FK` FOREIGN KEY (`STEP_EXECUTION_ID`) REFERENCES `batch_step_execution` (`STEP_EXECUTION_ID`);

--
-- Contraintes pour la table `certifications`
--
ALTER TABLE `certifications`
  ADD CONSTRAINT `FKcgf0009t4k2hi1dxnfrfv4sgw` FOREIGN KEY (`talent_id`) REFERENCES `talents` (`id`);

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `FK1hgwdp9vl25xl9i7s354sifey` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `client_contracts`
--
ALTER TABLE `client_contracts`
  ADD CONSTRAINT `FKidpo4rsqhf8e4lfndlo3sx1b8` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

--
-- Contraintes pour la table `confirmation_tokens`
--
ALTER TABLE `confirmation_tokens`
  ADD CONSTRAINT `FKhpuw37a1pqxfb6ya1nv5lm4ga` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `FKiua4i3jj68jpaclmgvg1qynjj` FOREIGN KEY (`client_contract_id`) REFERENCES `client_contracts` (`id`);

--
-- Contraintes pour la table `contracts_talent_contracts`
--
ALTER TABLE `contracts_talent_contracts`
  ADD CONSTRAINT `FK4pjnknl3u0fvw5n64bnwunq9k` FOREIGN KEY (`talent_contracts_id`) REFERENCES `talent_contracts` (`id`),
  ADD CONSTRAINT `FKt19sskb3tb9n6ogvu31xlvl42` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`id`);

--
-- Contraintes pour la table `educations`
--
ALTER TABLE `educations`
  ADD CONSTRAINT `FK3keclx4rjvh3xi716hbialn5` FOREIGN KEY (`talent_id`) REFERENCES `talents` (`id`);

--
-- Contraintes pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `FKm63dri8hxu7ay72fn0kycs8g0` FOREIGN KEY (`talent_id`) REFERENCES `talents` (`id`);

--
-- Contraintes pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `FK7nr9m1d6cablg4wjgodpv1q5d` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

--
-- Contraintes pour la table `jobs_skills`
--
ALTER TABLE `jobs_skills`
  ADD CONSTRAINT `FK5lnk82o1wgsar3sa67ljg430i` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `FKlrieaabfhfofpcif1o42ehtyp` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`id`);

--
-- Contraintes pour la table `job_interviews`
--
ALTER TABLE `job_interviews`
  ADD CONSTRAINT `FKs41fpxn63s8577itg0sx0jrq` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`);

--
-- Contraintes pour la table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `FKbwh103tcvkrns6y2bnm4h9l96` FOREIGN KEY (`talent_id`) REFERENCES `talents` (`id`);

--
-- Contraintes pour la table `meets`
--
ALTER TABLE `meets`
  ADD CONSTRAINT `FK3osc74hhxoe27fhh326sgg2hk` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `meets_receivers`
--
ALTER TABLE `meets_receivers`
  ADD CONSTRAINT `FKkkrfci9dkmqdg5fwdv05lccwd` FOREIGN KEY (`receivers_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKlvxbx5mb7yt6ycv952sm2r89c` FOREIGN KEY (`meet_id`) REFERENCES `meets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `FK13vcnq3ukas06ho1yrbc5lrb5` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK9kxl0whvhifo6gw4tjq36v53k` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `password_tokens`
--
ALTER TABLE `password_tokens`
  ADD CONSTRAINT `FKcfy8uf6yvjt7x8wcfkyisr8jf` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `FK2o5x7wf6rqwwq28hoi59u1ply` FOREIGN KEY (`talent_id`) REFERENCES `talents` (`id`);

--
-- Contraintes pour la table `selections`
--
ALTER TABLE `selections`
  ADD CONSTRAINT `FKhq9t3wenabh1smvedagac9jj9` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

--
-- Contraintes pour la table `selection_items`
--
ALTER TABLE `selection_items`
  ADD CONSTRAINT `FKa8pakk5d0xdg8gvyxlu08yau9` FOREIGN KEY (`selection_id`) REFERENCES `selections` (`id`),
  ADD CONSTRAINT `FKr8la33w116g4dsf59usdpv7fx` FOREIGN KEY (`talent_id`) REFERENCES `talents` (`id`);

--
-- Contraintes pour la table `talents`
--
ALTER TABLE `talents`
  ADD CONSTRAINT `FKsunj4ygm31ngr85kjdtn515rx` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `talents_skills`
--
ALTER TABLE `talents_skills`
  ADD CONSTRAINT `FK3d89ium4dr2f60sdakr4f2nbl` FOREIGN KEY (`talent_id`) REFERENCES `talents` (`id`),
  ADD CONSTRAINT `FKbhfw1miuf4t52oddoec9dim9x` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`id`);

--
-- Contraintes pour la table `talent_contracts`
--
ALTER TABLE `talent_contracts`
  ADD CONSTRAINT `FKfxpkq0kdh13asweq2fqsbrt8b` FOREIGN KEY (`talent_id`) REFERENCES `talents` (`id`);

--
-- Contraintes pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKa62j07k5mhgifpp955h37ponj` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
