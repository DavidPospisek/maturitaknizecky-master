-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Ned 03. led 2021, 13:50
-- Verze serveru: 10.4.14-MariaDB
-- Verze PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `knihy_ct`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktura tabulky `knihy`
--

CREATE TABLE `knihy` (
  `id_knihy` int(11) NOT NULL,
  `nazev_knihy` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `obal` varchar(120) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `autor` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `obdobi_idobdobi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Vypisuji data pro tabulku `knihy`
--

INSERT INTO `knihy` (`id_knihy`, `nazev_knihy`, `obal`, `autor`, `obdobi_idobdobi`) VALUES
(2, ' Dekameron', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/613223/dekameron.jpg', 'Giovanni Boccaccio', 1),
(3, ' Hamlet', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/660958/hamlet.jpg', 'William Shakespeare', 1),
(4, ' Romeo a Julie ', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/r/romeo-a-julie-9788073902636.jpg', 'William Shakespeare', 1),
(6, ' Lakomec', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/l/lakomec-9788074831300.jpg', 'Moliére', 1),
(12, ' Strakonický dudák', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/133793840/strakonicky-dudak.jpg', 'Josef Kajetán Tyl', 2),
(15, ' Křest sv. Vladimíra', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/k/krest-svateho-vladimira-9788074293481.jpg', 'Karel Havlíček Borovský', 2),
(19, ' Staré pověsti české', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/132983246/26516c14b2997cd826fbb0dd28387efa.jpg', 'Alois Jirásek', 2),
(23, ' Babička', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/b/babicka-9788073900496.jpg.webp', 'Božena Němcová', 2),
(25, ' Revizor', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/r/revizor-9788074830426.jpg', 'Nikolaj Vasiljevič Gogol', 2),
(26, ' Evžen Oněgin', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/661131/evzen-onegin.jpg', 'Alexandr Sergejevič Puškin', 2),
(27, ' Na západní frontě klid', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/243344961/3.jpg', 'Erich Maria Remarque', 3),
(30, ' Kronika ohlášené smrti', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/k/kronika-ohlasene-smrti-9788085906738.gif', 'Gabriel García  Marquéz', 3),
(33, ' Stařec a moře', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/s/starec-a-more-9788020716217.jpg', 'Ernest Hemingway', 3),
(36, ' Alkoholy', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/a/alkoholy-9788070218259.jpg', 'Guillaume Apollinaire', 3),
(38, ' Alchymista', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/a/alchymista-9788072036974.jpg', 'Paulo Coelho', 3),
(40, ' Proměna', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/p/promena-9788072872459.jpg', 'Franz Kafka', 3),
(41, ' Pán prstenů: Společenstvo prstenu', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/p/pan-prstenu-spolecenstvo-prstenu-9788025707463.jpg', 'John Ronald Reuel Tolkien', 3),
(42, ' Ostře sledované vlaky', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/o/ostre-sledovane-vlaky-9788020421142.jpg', 'Bohumil Hrabal', 4),
(43, ' Postřižiny', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/p/postriziny-9788020420435.jpg', 'Bohumil Hrabal', 4),
(44, ' Krysař', 'https://knihydobrovsky.cz/thumbs/book-detail/mod_eshop/produkty/k/krysar-9788073901066.jpg', 'Viktor Dyk', 4),
(45, ' Němá barikáda', 'https://www.cbdb.cz/books/5401.jpg', 'Jan Drda', 4);

-- --------------------------------------------------------

--
-- Struktura tabulky `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `categorie` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Vypisuji data pro tabulku `menu`
--

INSERT INTO `menu` (`idmenu`, `categorie`) VALUES
(1, 'Literatura v 18 století'),
(2, ' Literatura v 19 století'),
(3, 'Světová Literatura 20 a 21 století'),
(4, 'Česká Literatura 20 a 21 století');

-- --------------------------------------------------------

--
-- Struktura tabulky `obdobi`
--

CREATE TABLE `obdobi` (
  `id_obdobi` int(11) NOT NULL,
  `nazev_obdobi` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Vypisuji data pro tabulku `obdobi`
--

INSERT INTO `obdobi` (`id_obdobi`, `nazev_obdobi`) VALUES
(1, 'Světová/česká - 18. stol.'),
(2, 'Světová/česká - 19. stol.'),
(3, 'Světová - 20./21. stol.'),
(4, 'Česká - 20./21. stol.');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$8jGqgy3pg9A/tWUcEent1e7zJBn41vSDjRO5oLfCysxnikP65acpa', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1609677919, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Struktura tabulky `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `knihy`
--
ALTER TABLE `knihy`
  ADD PRIMARY KEY (`id_knihy`);

--
-- Klíče pro tabulku `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Klíče pro tabulku `obdobi`
--
ALTER TABLE `obdobi`
  ADD PRIMARY KEY (`id_obdobi`);

--
-- Klíče pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Klíče pro tabulku `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `knihy`
--
ALTER TABLE `knihy`
  MODIFY `id_knihy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pro tabulku `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `obdobi`
--
ALTER TABLE `obdobi`
  MODIFY `id_obdobi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
