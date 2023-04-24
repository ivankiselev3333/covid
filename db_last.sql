-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3309
-- Время создания: Апр 12 2023 г., 18:44
-- Версия сервера: 5.7.33
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', 1, 1590653334),
('user', 9, 1590683226),
('user', 10, 1590683290),
('user', 11, 1680779216);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`, `group_code`) VALUES
('/*', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/base/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/base/captcha', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/base/error', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/debug/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/debug/default/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/debug/default/db-explain', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/debug/default/download-mail', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/debug/default/index', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/debug/default/toolbar', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/debug/default/view', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/debug/user/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/debug/user/reset-identity', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/debug/user/set-identity', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/gii/*', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/gii/default/*', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/gii/default/action', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/gii/default/diff', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/gii/default/index', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/gii/default/preview', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/gii/default/view', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/patientss/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/patientss/captcha', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/patientss/create', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/patientss/delete', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/patientss/error', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/patientss/index', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/patientss/update', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/patientss/view', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/polyclinics/*', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/polyclinics/captcha', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/polyclinics/create', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/polyclinics/delete', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/polyclinics/error', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/polyclinics/index', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/polyclinics/update', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/polyclinics/view', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/site/*', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/site/about', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/site/captcha', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/site/contact', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/site/error', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/site/index', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/site/login', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/site/logout', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user-management/*', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/auth-item-group/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth-item-group/bulk-activate', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth-item-group/bulk-deactivate', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth-item-group/bulk-delete', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth-item-group/create', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth-item-group/delete', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth-item-group/grid-page-size', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth-item-group/grid-sort', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth-item-group/index', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth-item-group/toggle-attribute', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth-item-group/update', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth-item-group/view', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth/captcha', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth/change-own-password', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/auth/confirm-email', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth/confirm-email-receive', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth/confirm-registration-email', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth/login', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth/logout', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth/password-recovery', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth/password-recovery-receive', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/auth/registration', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/bulk-activate', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/bulk-deactivate', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/bulk-delete', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/create', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/delete', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/grid-page-size', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/grid-sort', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/index', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/refresh-routes', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/set-child-permissions', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/set-child-routes', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/toggle-attribute', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/update', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/permission/view', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/bulk-activate', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/bulk-deactivate', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/bulk-delete', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/create', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/delete', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/grid-page-size', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/grid-sort', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/index', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/set-child-permissions', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/set-child-roles', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/toggle-attribute', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/update', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/role/view', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-permission/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-permission/set', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/user-permission/set-roles', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/user-visit-log/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-visit-log/bulk-activate', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-visit-log/bulk-deactivate', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-visit-log/bulk-delete', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-visit-log/create', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-visit-log/delete', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-visit-log/grid-page-size', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-visit-log/grid-sort', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-visit-log/index', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-visit-log/toggle-attribute', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-visit-log/update', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user-visit-log/view', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user/*', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user/bulk-activate', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/user/bulk-deactivate', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/user/bulk-delete', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/user/change-password', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/user/create', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/user/delete', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/user/grid-page-size', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/user/grid-sort', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user/index', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/user/toggle-attribute', 3, NULL, NULL, NULL, 1590681644, 1590681644, NULL),
('/user-management/user/update', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user-management/user/view', 3, NULL, NULL, NULL, 1590500441, 1590500441, NULL),
('/user/*', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/bulk-activate', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/bulk-deactivate', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/bulk-delete', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/change-password', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/create', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/delete', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/grid-page-size', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/grid-sort', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/index', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/toggle-attribute', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/update', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('/user/view', 3, NULL, NULL, NULL, 1590681643, 1590681643, NULL),
('Admin', 1, 'Admin', NULL, NULL, 1590500441, 1590500441, NULL),
('assignRolesToUsers', 2, 'Assign roles to users', NULL, NULL, 1590500441, 1590500441, 'userManagement'),
('bindUserToIp', 2, 'Bind user to IP', NULL, NULL, 1590500441, 1590500441, 'userManagement'),
('changeOwnPassword', 2, 'Change own password', NULL, NULL, 1590500441, 1590500441, 'userCommonPermissions'),
('changeUserPassword', 2, 'Change user password', NULL, NULL, 1590500441, 1590500441, 'userManagement'),
('commonPermission', 2, 'Common permission', NULL, NULL, 1590500440, 1590500440, NULL),
('createUsers', 2, 'Create users', NULL, NULL, 1590500441, 1590500441, 'userManagement'),
('deleteUsers', 2, 'Delete users', NULL, NULL, 1590500441, 1590500441, 'userManagement'),
('editUserEmail', 2, 'Edit user email', NULL, NULL, 1590500441, 1590500441, 'userManagement'),
('editUsers', 2, 'Edit users', NULL, NULL, 1590500441, 1590500441, 'userManagement'),
('user', 1, 'user', NULL, NULL, 1590681422, 1590681422, NULL),
('user2', 2, 'User', NULL, NULL, 1590681615, 1590681615, NULL),
('viewRegistrationIp', 2, 'View registration IP', NULL, NULL, 1590500441, 1590500441, 'userManagement'),
('viewUserEmail', 2, 'View user email', NULL, NULL, 1590500441, 1590500441, 'userManagement'),
('viewUserRoles', 2, 'View user roles', NULL, NULL, 1590500441, 1590500441, 'userManagement'),
('viewUsers', 2, 'View users', NULL, NULL, 1590500441, 1590500441, 'userManagement'),
('viewVisitLog', 2, 'View visit log', NULL, NULL, 1590500441, 1590500441, 'userManagement');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('user2', '/patientss/*'),
('user2', '/patientss/captcha'),
('user2', '/patientss/create'),
('user2', '/patientss/delete'),
('user2', '/patientss/error'),
('user2', '/patientss/index'),
('user2', '/patientss/update'),
('user2', '/patientss/view'),
('user2', '/site/*'),
('changeOwnPassword', '/user-management/auth/change-own-password'),
('assignRolesToUsers', '/user-management/user-permission/set'),
('assignRolesToUsers', '/user-management/user-permission/set-roles'),
('editUsers', '/user-management/user/bulk-activate'),
('editUsers', '/user-management/user/bulk-deactivate'),
('deleteUsers', '/user-management/user/bulk-delete'),
('changeUserPassword', '/user-management/user/change-password'),
('createUsers', '/user-management/user/create'),
('deleteUsers', '/user-management/user/delete'),
('viewUsers', '/user-management/user/grid-page-size'),
('viewUsers', '/user-management/user/index'),
('editUsers', '/user-management/user/update'),
('viewUsers', '/user-management/user/view'),
('Admin', 'assignRolesToUsers'),
('Admin', 'changeOwnPassword'),
('Admin', 'changeUserPassword'),
('Admin', 'createUsers'),
('Admin', 'deleteUsers'),
('Admin', 'editUsers'),
('user', 'user2'),
('editUserEmail', 'viewUserEmail'),
('assignRolesToUsers', 'viewUserRoles'),
('Admin', 'viewUsers'),
('assignRolesToUsers', 'viewUsers'),
('changeUserPassword', 'viewUsers'),
('createUsers', 'viewUsers'),
('deleteUsers', 'viewUsers'),
('editUsers', 'viewUsers');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_group`
--

CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_item_group`
--

INSERT INTO `auth_item_group` (`code`, `name`, `created_at`, `updated_at`) VALUES
('userCommonPermissions', 'User common permission', 1590500441, 1590500441),
('userManagement', 'User management', 1590500441, 1590500441);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `form_diseases`
--

CREATE TABLE `form_diseases` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `form_diseases`
--

INSERT INTO `form_diseases` (`id`, `name`, `sort`) VALUES
(1, 'Легкая', NULL),
(2, 'Средней тяжести', NULL),
(3, 'Тяжело', NULL),
(4, 'Бессимптомно', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1590500438),
('m140608_173539_create_user_table', 1590500440),
('m140611_133903_init_rbac', 1590500440),
('m140808_073114_create_auth_item_group_table', 1590500440),
('m140809_072112_insert_superadmin_to_user', 1590500440),
('m140809_073114_insert_common_permisison_to_auth_item', 1590500440),
('m141023_141535_create_user_visit_log', 1590500441),
('m141116_115804_add_bind_to_ip_and_registration_ip_to_user', 1590500441),
('m141121_194858_split_browser_and_os_column', 1590500441),
('m141201_220516_add_email_and_email_confirmed_to_user', 1590500441),
('m141207_001649_create_basic_user_permissions', 1590500441);

-- --------------------------------------------------------

--
-- Структура таблицы `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `birthday` date DEFAULT '0000-00-00',
  `phone` varchar(50) DEFAULT '0',
  `address` varchar(512) DEFAULT '0',
  `polyclinic_id` int(11) DEFAULT '0',
  `treatment_id` int(11) DEFAULT '0',
  `status_id` int(11) DEFAULT '0',
  `form_disease_id` int(11) DEFAULT '0',
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT '0',
  `updated` datetime DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) DEFAULT NULL,
  `diagnosis_date` date DEFAULT '0000-00-00',
  `recovery_date` date DEFAULT '0000-00-00',
  `analysis_date` date DEFAULT '0000-00-00',
  `source_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `patients`
--

INSERT INTO `patients` (`id`, `name`, `birthday`, `phone`, `address`, `polyclinic_id`, `treatment_id`, `status_id`, `form_disease_id`, `created`, `created_by`, `updated`, `updated_by`, `diagnosis_date`, `recovery_date`, `analysis_date`, `source_id`) VALUES
(1, 'ivan', '1971-07-27', '89995675156', 'Маяковского, 122-222', 2, 2, 3, 1, NULL, NULL, '2020-05-28 18:43:16', 1, NULL, NULL, NULL, NULL),
(2, 'sergio', '1970-05-31', '', 'Маяковского, 122-222', 2, 2, 3, 1, NULL, NULL, '2020-05-28 18:41:54', 1, NULL, NULL, NULL, NULL),
(8, 'Пациент', '1966-05-21', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 14:36:37', 1, '2020-05-28 18:42:48', 1, NULL, NULL, NULL, NULL),
(14, 'Пациент', '1992-09-06', '', 'Маяковского, 122-222', 2, 2, 3, 2, '2020-05-28 18:32:45', 1, '2020-05-28 18:44:04', 1, NULL, NULL, NULL, NULL),
(15, 'Пациент', '1980-04-18', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:33:17', 1, '2020-05-28 18:44:19', 1, NULL, NULL, NULL, NULL),
(16, 'Пациент', '1990-09-05', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:33:59', 1, '2020-05-28 18:44:32', 1, NULL, NULL, NULL, NULL),
(17, 'Пациент', '1955-09-10', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:34:20', 1, '2020-05-28 18:44:43', 1, NULL, NULL, NULL, NULL),
(18, 'Пациент', '1939-09-21', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:34:43', 1, '2020-05-28 18:44:58', 1, NULL, NULL, NULL, NULL),
(19, 'Пациент', '1949-04-27', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:35:03', 1, '2020-05-28 18:45:17', 1, NULL, NULL, NULL, NULL),
(20, 'Пациент', '1959-04-12', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:35:24', 1, '2020-05-28 18:45:31', 1, NULL, NULL, NULL, NULL),
(21, 'Пациент', '1955-10-31', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:35:47', 1, '2020-05-28 18:45:48', 1, NULL, NULL, NULL, NULL),
(22, 'Пациент', '1981-03-18', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:36:07', 1, '2020-05-28 18:46:01', 1, NULL, NULL, NULL, NULL),
(23, 'Пациент', '1997-12-27', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:36:30', 1, '2020-05-28 18:46:14', 1, NULL, NULL, NULL, NULL),
(24, 'Пациент', '1970-09-19', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:36:50', 1, '2020-05-28 18:46:28', 1, NULL, NULL, NULL, NULL),
(25, 'Пациент', '1965-04-15', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:37:09', 1, '2020-05-28 18:46:41', 1, NULL, NULL, NULL, NULL),
(26, 'Пациент', '1979-04-22', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:37:32', 1, '2020-05-28 18:46:55', 1, NULL, NULL, NULL, NULL),
(27, 'Пациент', '1972-03-01', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:37:52', 1, '2020-05-28 18:47:07', 1, NULL, NULL, NULL, NULL),
(28, 'Пациент', '1982-11-25', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:38:10', 1, '2020-05-28 18:47:24', 1, NULL, NULL, NULL, NULL),
(29, 'Пациент', '1992-05-28', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:38:31', 1, '2020-05-28 18:47:41', 1, NULL, NULL, NULL, NULL),
(31, 'Пациент', '1995-12-22', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:39:14', 1, '2020-05-28 18:47:56', 1, NULL, NULL, NULL, NULL),
(32, 'Пациент', '1977-04-04', '', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:39:53', 1, '2020-05-28 18:48:07', 1, NULL, NULL, NULL, NULL),
(33, 'Пациент', '1973-07-12', '89995675156', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:48:37', 1, '2020-05-28 18:49:18', 1, NULL, NULL, NULL, NULL),
(34, 'Пациент', '2020-05-28', '89995675156', 'Маяковского, 122-222', 2, 2, 3, 1, '2020-05-28 18:49:02', 1, '2020-05-28 18:49:02', 1, NULL, NULL, NULL, NULL),
(37, 'Пациент	', '1973-07-12', '89995675156', '', 2, 2, 3, 1, '2023-04-12 15:47:22', 9, '2023-04-12 15:47:22', 9, NULL, NULL, NULL, 16),
(38, 'Пациент	', '1973-07-12', '', '', 3, 2, 1, 1, '2023-04-12 15:50:42', 9, '2023-04-12 15:50:42', 9, NULL, NULL, NULL, 37),
(42, 'ivan2', '1971-07-27', '89995675156', '0', 2, 2, 3, 1, '2023-04-12 16:28:17', 11, '2020-05-28 18:43:16', NULL, '2023-04-12', '2023-04-11', '2023-04-12', NULL),
(43, 'ivan2', '1971-07-27', '89995675156', '0', 2, 2, 3, 1, '2023-04-12 16:30:08', 11, '2020-05-28 18:43:16', NULL, '2023-04-12', '2023-04-11', '2023-04-12', NULL),
(47, 'ivan2', '1971-07-27', '123456789', '0', 2, 2, 3, 1, '2023-04-12 16:38:47', 11, '2020-05-28 18:43:16', NULL, '2023-04-12', '2023-04-11', '2023-04-12', NULL),
(48, 'ivan2', '1971-07-27', '123456789', '0', 2, 2, 3, 1, '2023-04-12 16:39:09', 11, '2020-05-28 18:43:16', NULL, '2023-04-12', '2023-04-11', '2023-04-12', NULL),
(49, 'ivan2', '1971-07-27', '1', '0', 2, 2, 3, 1, '2023-04-12 16:39:21', 11, '2020-05-28 18:43:16', NULL, '2023-04-12', '2023-04-11', '2023-04-12', NULL),
(52, 'ivan2', '1971-07-27', '1', '0', 2, 2, 3, 1, '2023-04-12 17:36:19', 11, '2020-05-28 18:43:16', NULL, '2023-04-12', '2023-04-11', '2023-04-12', NULL),
(53, 'ivan2', '1971-07-27', '1', '0', 2, 2, 3, 1, '2023-04-12 17:45:55', 11, '2020-05-28 18:43:16', NULL, '2023-04-12', '2023-04-11', '2023-04-12', NULL),
(54, 'ivan3', '1971-07-27', '89995675156', '0', 2, 2, 3, 1, '2023-04-12 17:46:53', 11, '2020-05-28 18:43:16', NULL, '2023-04-12', '2023-04-11', '2023-04-12', NULL),
(55, 'ivan2', '1971-07-27', '1', '0', 2, 2, 3, 1, '2023-04-12 17:55:21', 11, '2020-05-28 18:43:16', NULL, '2023-04-12', '2023-04-11', '2023-04-12', NULL),
(56, 'ivan3', '1971-07-27', '89995675156', '0', 2, 2, 3, 1, '2023-04-12 18:38:05', 11, '2020-05-28 18:43:16', NULL, '2023-04-12', '2023-04-11', '2023-04-12', NULL),
(57, 'ivan3', '1971-07-27', '89995675156', '0', 2, 2, 3, 1, '2023-04-12 18:41:02', 11, '2020-05-28 18:43:16', NULL, '2023-04-12', '2023-04-11', '2023-04-12', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `polyclinics`
--

CREATE TABLE `polyclinics` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `polyclinics`
--

INSERT INTO `polyclinics` (`id`, `name`) VALUES
(2, 'Поликлиника первая'),
(3, 'поликлиника 2');

-- --------------------------------------------------------

--
-- Структура таблицы `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `sort`) VALUES
(1, 'Контакт', NULL),
(2, 'Не подтвердился', NULL),
(3, 'Болен', NULL),
(4, 'Поправился', NULL),
(5, 'Умер', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `treatments`
--

CREATE TABLE `treatments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `treatments`
--

INSERT INTO `treatments` (`id`, `name`, `sort`) VALUES
(1, 'Госпитализация', NULL),
(2, 'Амбулаторно', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `polyclinic_id` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `superadmin` smallint(6) DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `polyclinic_id`, `username`, `auth_key`, `password_hash`, `confirmation_token`, `status`, `superadmin`, `created_at`, `updated_at`, `registration_ip`, `bind_to_ip`, `email`, `email_confirmed`) VALUES
(1, 0, 'superadmin', 'YpBGl_EWteH_sAUPHVWTpbgdJDE7mrXy', '$2y$13$kNLa.nrU1.9UMYhtVZcBh.Xfsv7eMADJDNeLPoRVEQeYXscR.VJ5K', NULL, 1, 1, 1590500440, 1681214651, NULL, '', NULL, 0),
(9, 2, 'a.plotnikov', 'qyftGvqeDsWenw2pVFzOlm_7u1OhdwpZ', '$2y$13$RXC/s.EQoxntoq9zbVgqreAO7ht9MTMhnV8RaXcVaRQ4eJFF2iVXe', NULL, 1, 1, 1590683226, 1590683226, '188.32.22.19', '', '', 0),
(10, 2, 'user.poilclinica.1', '5Z372ETTEPlibgXrOOK7XzjVH_glLfnY', '$2y$13$TKyulybBOSs3LIf/jb3MeODgl.vPQ43zbtRRkl.h9bohtuSDD5P7W', NULL, 1, 0, 1590683290, 1590683290, '188.32.22.19', '', '', 0),
(11, 3, 'testuser', 'ogvm05q-yOqZJSHJ_rAzJLcYPstyrDnL', '$2y$13$TFib4ERUaCXPv/zEOVF2Se71sCYa2PL2YMeibOXCZWoHIkht869Ie', NULL, 1, 0, 1680779216, 1680779216, '127.0.0.1', '', 'ivankiselev3333@yandex.ru', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user_visit_log`
--

CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_visit_log`
--

INSERT INTO `user_visit_log` (`id`, `token`, `ip`, `language`, `user_agent`, `user_id`, `visit_time`, `browser`, `os`) VALUES
(1, '5ecd32603a185', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 1, 1590506080, 'Chrome', 'Windows'),
(2, '5ecf5690e0075', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 1, 1590646416, 'Chrome', 'Windows'),
(3, '5ecf59cb0e140', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 1, 1590647243, 'Chrome', 'Windows'),
(4, '5ecfde4c30be1', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', NULL, 1590681164, 'Chrome', 'Windows'),
(5, '5ecfe0b81a0a5', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', NULL, 1590681784, 'Chrome', 'Windows'),
(6, '5ecfe0fc2320f', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', NULL, 1590681852, 'Chrome', 'Windows'),
(7, '5ecfe175ee46c', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', NULL, 1590681973, 'Chrome', 'Windows'),
(8, '5ecfe1e052711', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', NULL, 1590682080, 'Chrome', 'Windows'),
(9, '5ecfe672bfb1b', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 9, 1590683250, 'Chrome', 'Windows'),
(10, '5ecfe6b1d026b', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 10, 1590683313, 'Chrome', 'Windows'),
(11, '5f0d5605d355f', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 9, 1594709509, 'Chrome', 'Windows'),
(12, '60377dd4bdec5', '188.32.22.19', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 9, 1614249428, 'Chrome', 'Windows'),
(13, '6422e5197555d', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680008473, 'Chrome', 'Windows'),
(14, '642e8fa04d71c', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680773024, 'Chrome', 'Windows'),
(15, '642ea7e1bd33e', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.0.2246 Yowser/2.5 Safari/537.36', 11, 1680779233, 'Chrome', 'Windows'),
(16, '642ec8ae610ee', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680787630, 'Chrome', 'Windows'),
(17, '64316a54adb92', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.0.2246 Yowser/2.5 Safari/537.36', 11, 1680960084, 'Chrome', 'Windows'),
(18, '64316d1aafb4e', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680960794, 'Chrome', 'Windows'),
(19, '64316f4614d73', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680961350, 'Chrome', 'Windows'),
(20, '64316f5fa86d3', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680961375, 'Chrome', 'Windows'),
(21, '643170570d3c8', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680961623, 'Chrome', 'Windows'),
(22, '6431707ba5a7a', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680961659, 'Chrome', 'Windows'),
(23, '64317150a27d1', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680961872, 'Chrome', 'Windows'),
(24, '643172db5c934', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680962267, 'Chrome', 'Windows'),
(25, '643173ce1e7ee', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680962510, 'Chrome', 'Windows'),
(26, '6431746d816d4', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680962669, 'Chrome', 'Windows'),
(27, '643177a5bbf72', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680963493, 'Chrome', 'Windows'),
(28, '6431786a8be4d', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680963690, 'Chrome', 'Windows'),
(29, '6431943230e91', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680970802, 'Chrome', 'Windows'),
(30, '6431998511fcf', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680972165, 'Chrome', 'Windows'),
(31, '64319c611b006', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680972897, 'Chrome', 'Windows'),
(32, '64319df50bfd3', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680973301, 'Chrome', 'Windows'),
(33, '6431a17a8f142', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680974202, 'Chrome', 'Windows'),
(34, '6431a1b55df15', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680974261, 'Chrome', 'Windows'),
(35, '6431a2f1ae4f5', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1680974577, 'Chrome', 'Windows'),
(36, '64354867f1278', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1681213543, 'Chrome', 'Windows'),
(37, '64354c8463e05', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.0.2246 Yowser/2.5 Safari/537.36', 11, 1681214596, 'Chrome', 'Windows'),
(38, '64354ccc39b79', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 1, 1681214668, 'Chrome', 'Windows'),
(39, '643553a1941f5', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1681216417, 'Chrome', 'Windows'),
(40, '64357d3f62946', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 OPR/82.0.4227.33', 9, 1681227071, 'Chrome', 'Windows');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`),
  ADD KEY `fk_auth_item_group_code` (`group_code`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_item_group`
--
ALTER TABLE `auth_item_group`
  ADD PRIMARY KEY (`code`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `form_diseases`
--
ALTER TABLE `form_diseases`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_patients_polyclinics` (`polyclinic_id`),
  ADD KEY `FK_patients_statuses` (`status_id`),
  ADD KEY `FK_patients_form_diseases` (`form_disease_id`),
  ADD KEY `FK_patients_treatments` (`treatment_id`),
  ADD KEY `FK_patients_user` (`created_by`),
  ADD KEY `FK_patients_patients` (`source_id`),
  ADD KEY `FK_patients_user_2` (`updated_by`);

--
-- Индексы таблицы `polyclinics`
--
ALTER TABLE `polyclinics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `form_diseases`
--
ALTER TABLE `form_diseases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `polyclinics`
--
ALTER TABLE `polyclinics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `user_visit_log`
--
ALTER TABLE `user_visit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auth_item_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `FK_patients_form_diseases` FOREIGN KEY (`form_disease_id`) REFERENCES `form_diseases` (`id`) ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_patients_patients` FOREIGN KEY (`source_id`) REFERENCES `patients` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_patients_polyclinics` FOREIGN KEY (`polyclinic_id`) REFERENCES `polyclinics` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_patients_statuses` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_patients_treatments` FOREIGN KEY (`treatment_id`) REFERENCES `treatments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_patients_user` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_patients_user_2` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ограничения внешнего ключа таблицы `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
