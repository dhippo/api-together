-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 27 avr. 2023 à 09:48
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `database_ts`
--

-- --------------------------------------------------------

--
-- Structure de la table `activities`
--

CREATE TABLE `activities` (
                              `id` int(11) NOT NULL,
                              `activity_type` varchar(50) DEFAULT NULL,
                              `name` varchar(50) DEFAULT NULL,
                              `title` varchar(500) NOT NULL,
                              `duration` varchar(500) NOT NULL,
                              `description` varchar(500) NOT NULL,
                              `price` varchar(500) NOT NULL,
                              `types` varchar(500) NOT NULL,
                              `why` varchar(500) NOT NULL,
                              `max_client` int(11) DEFAULT NULL,
                              `min_client` int(11) DEFAULT NULL,
                              `duration_minutes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `activities`
--

INSERT INTO `activities` (`id`, `activity_type`, `name`, `title`, `duration`, `description`, `price`, `types`, `why`, `max_client`, `min_client`, `duration_minutes`) VALUES
(1, NULL, NULL, 'Escape Game', 'Un escape game se déroule le plus souvent l après-midi et dure 1h ou 1h30.', 'Un escape game est un jeu d équipe à 4 ou 5 où les participants sont enfermés dans une pièce. Il faut résoudre des énigmes pour sortir de la pièce dans un temps imparti.', 'Le prix d un escape game se situe généralement entre 20 et 40 euros par personne. Il dépend des options choisies.', 'Les thèmes d un escape game peuvent varier considérablement, allant des énigmes scientifiques ou historiques aux enquêtes policières, en passant par les univers fantastiques ou les scénarios d horreur.', 'Un escape game peut être utile pour le team building en permettant aux membres de l entreprise de développer la communication, la coopération et la résolution de problèmes dans un environnement ludique et collaboratif.', NULL, NULL, NULL),
(2, NULL, NULL, 'Participation à des événements caritatifs', 'La durée de ces événements varie généralement de quelques heures à une journée complète.', 'La participation à des événements caritatifs consiste à sengager dans des actions bénévoles au profit dorganisations à but non lucratif.', 'La participation à ces événements est souvent gratuite, mais des frais de transport ou de matériel peuvent être engagés.', 'Les types dévénements caritatifs incluent des activités de collecte de fonds, des projets de construction ou de rénovation, et des initiatives de sensibilisation.', 'Participer à des événements caritatifs renforce lesprit déquipe et la cohésion en mettant laccent sur la collaboration et lengagement commun pour une cause.', NULL, NULL, NULL),
(3, NULL, NULL, 'Rallye découverte dune ville/dun quartier', 'Un rallye découverte dure généralement entre 2 et 4 heures.', 'Un rallye découverte consiste à explorer une ville ou un quartier à travers des énigmes, des défis et des activités ludiques en équipe.', 'Le prix dun rallye découverte se situe généralement entre 30 et 60 euros par personne.', 'Les thèmes dun rallye découverte peuvent inclure lhistoire, la culture, la gastronomie, ou des activités spécifiques à la région.', 'Un rallye découverte peut être bénéfique pour le team building en encourageant la communication, la créativité et la résolution de problèmes dans un contexte divertissant et instructif.', NULL, NULL, NULL),
(4, NULL, NULL, 'Karaoké/Chorégraphie/Scénettes de théâtre', 'Ces activités durent généralement de 2 à 4 heures.', 'L activité de karaoké consiste à chanter, danser ou jouer la comédie en équipe, souvent avec un encadrement professionnel.', 'Le prix de ces activités varie généralement entre 20 et 50 euros par personne.', 'Les thèmes peuvent inclure des chansons populaires, des comédies musicales, des chorégraphies ou des pièces de théâtre.', 'Le karaoké peut être super amusant à faire en équipe et il renforcera à coup sûr la cohésion de vos associés.', NULL, NULL, NULL),
(5, NULL, NULL, 'Activité Réalité Virtuelle', 'Une activité de réalité virtuelle dure généralement entre 1 et 2 heures.', 'Une activité de réalité virtuelle consiste à utiliser des casques et des contrôleurs de VR pour simuler des environnements et des expériences immersives en équipe.', 'Le prix dune activité de réalité virtuelle se situe généralement entre 30 et 60 euros par personne.', 'Les types dexpériences de réalité virtuelle incluent les jeux daction, les puzzles, les simulations sportives et les expériences narratives.', 'Les activités de réalité virtuelle sont utiles pour le team building car elles encouragent la communication, la collaboration et la résolution de problèmes dans un environnement immersif et stimulant.', NULL, NULL, NULL),
(6, NULL, NULL, 'Création artistique (peinture, sculpture etc)', 'Une activité de création artistique dure généralement entre 2 et 4 heures.', 'Une activité de création artistique consiste à réaliser des œuvres dart en équipe, souvent avec laide dun professionnel.', 'Le prix dune activité de création artistique se situe généralement entre 30 et 70 euros par personne.', 'Les types dactivités artistiques incluent la peinture, la sculpture, la photographie et le dessin.', 'Les activités de création artistique sont utiles pour le team building car elles encouragent la créativité, la communication et lexpression personnelle dans un environnement détendu et stimulant.', NULL, NULL, NULL),
(7, NULL, NULL, 'Compétition sportive', 'Une compétition sportive dure généralement entre 2 et 4 heures.', 'Une compétition sportive consiste à organiser un tournoi ou un match entre les membres de léquipe dans un sport choisi.', 'Le prix dune compétition sportive varie généralement entre 10 et 50 euros par personne, en fonction du sport et des installations.', 'Les types de compétitions sportives incluent les sports collectifs, les sports individuels et les sports de raquette.', 'Les compétitions sportives sont utiles pour le team building car elles développent la cohésion déquipe, lesprit de compétition et la communication dans un environnement dynamique et ludique.', NULL, NULL, NULL),
(8, NULL, NULL, 'Apéro/Cocktail/Repas', 'Un apéro, cocktail ou repas dure généralement entre 2 et 4 heures.', 'Un apéro, cocktail ou repas consiste à organiser un événement convivial où les membres de léquipe peuvent se détendre et discuter autour de boissons et de nourriture.', 'Le prix dun apéro, cocktail ou repas varie généralement entre 15 et 60 euros par personne, en fonction du lieu et des options choisies.', 'Les types dévénements incluent les buffets, les repas assis, les dégustations de vin et les ateliers de mixologie.', 'Un apéro, cocktail ou repas est utile pour le team building car il favorise la détente, la communication informelle et les relations interpersonnelles dans un environnement agréable et convivial.', NULL, NULL, NULL),
(9, NULL, NULL, 'Atelier culinaire', 'Un atelier culinaire dure généralement entre 2 et 4 heures.', 'Un atelier culinaire consiste à apprendre à cuisiner un plat ou un menu en équipe, souvent sous la supervision dun chef professionnel.', 'Le prix dun atelier culinaire se situe généralement entre 50 et 100 euros par personne.', 'Les types dateliers culinaires incluent la cuisine française, italienne, asiatique, végétarienne, et dautres spécialités culinaires.', 'Un atelier culinaire est utile pour le team building car il encourage la coopération, la créativité et la communication dans un environnement ludique et gourmand.', NULL, NULL, NULL),
(10, NULL, NULL, 'Tournoi Babyfoot/Ping pong ou autre', 'Un tournoi de baby-foot, ping-pong ou autre dure généralement entre 1 et 3 heures.', 'Un tournoi de ce type consiste à organiser une compétition amicale entre les membres de léquipe autour dun jeu de table ou dautres jeux similaires.', 'Le prix dun tournoi de baby-foot, ping-pong ou autre varie généralement entre 5 et 20 euros par personne.', 'Les types de tournois incluent le baby-foot, le ping-pong, le billard, le fléchettes et autres jeux de table.', 'Un tournoi de baby-foot, ping-pong ou autre est utile pour le team building car il développe la compétitivité, la communication et lesprit déquipe dans un environnement détendu et ludique.', NULL, NULL, NULL),
(11, NULL, NULL, 'Jeux de société', 'Une session de jeux de société dure généralement entre 1 et 4 heures.', 'Les jeux de société consistent à jouer à divers jeux de plateau, de cartes ou de stratégie en équipe.', 'Le prix dune session de jeux de société varie généralement entre 5 et 20 euros par personne, en fonction du lieu et des jeux choisis.', 'Les types de jeux de société incluent les jeux de stratégie, les jeux coopératifs, les jeux de rôle et les jeux de connaissance.', 'Les jeux de société sont utiles pour le team building car ils encouragent la communication, la stratégie et la coopération dans un environnement amusant et compétitif.', NULL, NULL, NULL),
(12, NULL, NULL, 'Randonnée', 'Une randonnée dure généralement entre 2 et 6 heures, selon la distance et le niveau de difficulté.', 'Une randonnée consiste à marcher ensemble en équipe sur des sentiers naturels pour découvrir des paysages et profiter de la nature.', 'Le prix dune randonnée varie généralement entre 0 et 30 euros par personne, en fonction des frais de transport, de guide ou de matériel.', 'Les types de randonnées incluent les randonnées en montagne, en forêt, le long de la côte ou dans des parcs naturels.', 'La randonnée est utile pour le team building car elle permet de renforcer les liens entre les membres de léquipe, daméliorer la communication et de partager une expérience de bien-être physique et mental.', NULL, NULL, NULL),
(13, NULL, NULL, 'Voyage/Weekend', 'Un voyage ou un weekend dure généralement entre 2 et 4 jours.', 'Un voyage ou un weekend consiste à organiser une escapade pour léquipe afin de découvrir une nouvelle destination et de partager des expériences ensemble.', 'Le prix dun voyage ou dun weekend varie généralement entre 150 et 500 euros par personne, en fonction de la destination, des activités et de lhébergement choisis.', 'Les types de voyages et de weekends incluent les séjours culturels, les escapades nature, les voyages à thème et les aventures sportives.', 'Un voyage ou un weekend est utile pour le team building car il permet de renforcer les liens entre les membres de léquipe, de développer la communication et de partager des expériences mémorables dans un contexte différent du travail.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `activity_localization`
--

CREATE TABLE `activity_localization` (
  `id_activite` int(11) NOT NULL,
  `id_localization` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `activity_material`
--

CREATE TABLE `activity_material` (
  `id_activite` int(11) NOT NULL,
  `id_materiel` int(11) NOT NULL,
  `quantite_necessaire` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `activity_service_provider`
--

CREATE TABLE `activity_service_provider` (
  `id_activite` int(11) NOT NULL,
  `id_prestataire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `bills`
--

CREATE TABLE `bills` (
  `id_bill` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `participants` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `client_company` int(11) DEFAULT NULL,
  `id_reservation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE `companies` (
  `id_company` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `num_siret` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `id_employee` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `is_banned` tinyint(1) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `is_provider` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `employee_reservation`
--

CREATE TABLE `employee_reservation` (
  `id_employee` int(11) NOT NULL,
  `id_reservation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `localizations`
--

CREATE TABLE `localizations` (
  `id_loc` int(11) NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `date_achat` date DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `instock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id_reservation` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `nb_participants` int(11) DEFAULT NULL,
  `activity` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rooms`
--

CREATE TABLE `rooms` (
  `id_room` int(11) NOT NULL,
  `capacity_max` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `localization` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `service_providers`
--

CREATE TABLE `service_providers` (
  `id_prestataire` int(11) NOT NULL,
  `nom_prestataire` varchar(100) DEFAULT NULL,
  `type_activite` varchar(100) DEFAULT NULL,
  `description_activite` text,
  `adresse` varchar(200) DEFAULT NULL,
  `code_postal` varchar(10) DEFAULT NULL,
  `ville` varchar(100) DEFAULT NULL,
  `pays` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `site_web` varchar(200) DEFAULT NULL,
  `tarif` decimal(10,0) DEFAULT NULL,
  `capacite` int(11) DEFAULT NULL,
  `disponibilite` tinyint(1) DEFAULT NULL,
  `note_evaluation` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `activity_localization`
--
ALTER TABLE `activity_localization`
  ADD PRIMARY KEY (`id_activite`,`id_localization`),
  ADD KEY `id_localization` (`id_localization`);

--
-- Index pour la table `activity_material`
--
ALTER TABLE `activity_material`
  ADD PRIMARY KEY (`id_activite`,`id_materiel`),
  ADD KEY `id_materiel` (`id_materiel`);

--
-- Index pour la table `activity_service_provider`
--
ALTER TABLE `activity_service_provider`
  ADD PRIMARY KEY (`id_activite`,`id_prestataire`),
  ADD KEY `id_prestataire` (`id_prestataire`);

--
-- Index pour la table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id_bill`),
  ADD KEY `client_company` (`client_company`),
  ADD KEY `id_reservation` (`id_reservation`);

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id_company`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `company_id` (`company_id`);

--
-- Index pour la table `employee_reservation`
--
ALTER TABLE `employee_reservation`
  ADD PRIMARY KEY (`id_employee`,`id_reservation`),
  ADD KEY `id_reservation` (`id_reservation`);

--
-- Index pour la table `localizations`
--
ALTER TABLE `localizations`
  ADD PRIMARY KEY (`id_loc`);

--
-- Index pour la table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `activity` (`activity`),
  ADD KEY `company_id` (`company_id`);

--
-- Index pour la table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id_room`),
  ADD KEY `localization` (`localization`);

--
-- Index pour la table `service_providers`
--
ALTER TABLE `service_providers`
  ADD PRIMARY KEY (`id_prestataire`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `activity_localization`
--
ALTER TABLE `activity_localization`
  ADD CONSTRAINT `activity_localization_ibfk_1` FOREIGN KEY (`id_activite`) REFERENCES `activities` (`id`),
  ADD CONSTRAINT `activity_localization_ibfk_2` FOREIGN KEY (`id_localization`) REFERENCES `localizations` (`id_loc`);

--
-- Contraintes pour la table `activity_material`
--
ALTER TABLE `activity_material`
  ADD CONSTRAINT `activity_material_ibfk_1` FOREIGN KEY (`id_activite`) REFERENCES `activities` (`id`),
  ADD CONSTRAINT `activity_material_ibfk_2` FOREIGN KEY (`id_materiel`) REFERENCES `materials` (`id`);

--
-- Contraintes pour la table `activity_service_provider`
--
ALTER TABLE `activity_service_provider`
  ADD CONSTRAINT `activity_service_provider_ibfk_1` FOREIGN KEY (`id_activite`) REFERENCES `activities` (`id`),
  ADD CONSTRAINT `activity_service_provider_ibfk_2` FOREIGN KEY (`id_prestataire`) REFERENCES `service_providers` (`id_prestataire`);

--
-- Contraintes pour la table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`client_company`) REFERENCES `companies` (`id_company`),
  ADD CONSTRAINT `bills_ibfk_2` FOREIGN KEY (`id_reservation`) REFERENCES `reservations` (`id_reservation`);

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id_company`);

--
-- Contraintes pour la table `employee_reservation`
--
ALTER TABLE `employee_reservation`
  ADD CONSTRAINT `employee_reservation_ibfk_1` FOREIGN KEY (`id_employee`) REFERENCES `employees` (`id_employee`),
  ADD CONSTRAINT `employee_reservation_ibfk_2` FOREIGN KEY (`id_reservation`) REFERENCES `reservations` (`id_reservation`);

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`activity`) REFERENCES `activities` (`id`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id_company`);

--
-- Contraintes pour la table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`localization`) REFERENCES `localizations` (`id_loc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
