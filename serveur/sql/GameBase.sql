-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 07 juil. 2020 à 07:55
-- Version du serveur :  5.7.26
-- Version de PHP :  7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `GameBase`
--

-- --------------------------------------------------------

--
-- Structure de la table `Avis`
--

CREATE TABLE `Avis` (
  `Id` int(11) NOT NULL,
  `IdJeuVideo` int(11) NOT NULL,
  `Pseudo` varchar(15) NOT NULL,
  `Commentaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Avis`
--

INSERT INTO `Avis` (`Id`, `IdJeuVideo`, `Pseudo`, `Commentaire`) VALUES
(43, 43, 'cstoyle16', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.'),
(44, 44, 'eolsson17', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),
(45, 45, 'vchapple18', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.'),
(46, 46, 'amcgarrie19', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(47, 47, 'ypratte1a', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'),
(48, 48, 'tdougher1b', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.'),
(49, 49, 'lmufford1c', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.'),
(50, 50, 'rlamba1d', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
(51, 47, 'slapthorne0', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.'),
(52, 50, 'bdelgardo1', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.'),
(53, 45, 'dwindmill2', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),
(54, 46, 'sdeek3', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),
(55, 45, 'egelly4', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(56, 49, 'gkyne5', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
(57, 51, 'kcordey6', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.'),
(58, 45, 'lyes7', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'),
(59, 49, 'dhourston8', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.'),
(60, 48, 'abuckney9', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),
(61, 44, 'htomaschkea', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),
(62, 49, 'kmarkosb', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'),
(63, 51, 'nluchellic', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.'),
(64, 47, 'breadyd', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.'),
(65, 46, 'bpadsone', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.'),
(66, 50, 'cpilgramf', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.'),
(67, 47, 'dsamg', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'),
(68, 52, 'epietronh', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),
(69, 52, 'zteresiai', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(70, 49, 'wonolandj', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),
(71, 43, 'pmaink', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.'),
(72, 46, 'dklagemanl', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),
(73, 46, 'wmassonm', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.'),
(74, 48, 'cmarksonn', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(75, 43, 'rtessymano', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),
(76, 46, 'bcarwithenp', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'),
(77, 51, 'spohlingq', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'),
(78, 49, 'sspearingr', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.'),
(79, 52, 'dmoulsons', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.'),
(80, 50, 'lbathersbyt', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
(81, 51, 'wstreetu', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.'),
(82, 52, 'elambav', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.'),
(83, 49, 'fflackew', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),
(84, 50, 'crearyx', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),
(85, 50, 'dshacklefordy', 'Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),
(86, 48, 'tcastelinz', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),
(87, 49, 'wstothard10', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
(88, 47, 'jantley11', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(89, 50, 'sparmby12', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
(90, 43, 'macheson13', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),
(91, 46, 'gwrefford14', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.'),
(92, 47, 'agitsham15', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.'),
(93, 44, 'skloska16', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.'),
(94, 45, 'kgarlinge17', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),
(95, 43, 'flouche18', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.'),
(96, 50, 'hgaroghan19', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.'),
(97, 49, 'tstitt1a', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.'),
(98, 48, 'hbagott1b', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),
(99, 43, 'zlevene1c', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
(100, 51, 'lbolte1d', 'In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');

-- --------------------------------------------------------

--
-- Structure de la table `Editeur`
--

CREATE TABLE `Editeur` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Editeur`
--

INSERT INTO `Editeur` (`Id`, `Nom`) VALUES
(1, 'Riot Games'),
(2, 'Blizzard'),
(3, 'Square Enix'),
(4, 'EA'),
(5, 'Ubisoft'),
(6, 'Capcom'),
(7, 'Konami'),
(8, 'Nintendo'),
(9, 'Epic Games'),
(10, 'Valve'),
(11, 'Bandai Namco');

-- --------------------------------------------------------

--
-- Structure de la table `Genre`
--

CREATE TABLE `Genre` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Genre`
--

INSERT INTO `Genre` (`Id`, `Nom`) VALUES
(1, 'Stratégie'),
(2, 'MMORPG'),
(3, 'RPG'),
(4, 'FPS'),
(5, 'Sport'),
(6, 'MOBA'),
(7, 'Rythme'),
(8, 'Jeu de cartes'),
(9, 'Hack\'n Slash'),
(10, 'Action'),
(11, 'Combat');

-- --------------------------------------------------------

--
-- Structure de la table `JeuVideo`
--

CREATE TABLE `JeuVideo` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `DateSortie` date NOT NULL,
  `IdGenre` int(11) NOT NULL,
  `Note` float NOT NULL,
  `Prix` float NOT NULL,
  `IdEditeur` int(11) NOT NULL,
  `UrlPochette` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `JeuVideo`
--

INSERT INTO `JeuVideo` (`Id`, `Nom`, `Description`, `DateSortie`, `IdGenre`, `Note`, `Prix`, `IdEditeur`, `UrlPochette`) VALUES
(43, 'Final Fantasy VII', 'Meilleur jeu de tous les temps', '1997-01-31', 3, 10, 100, 3, 'Final_Fantasy_VII.png'),
(44, 'Team Fight Tactics', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam bibendum mauris sit amet tortor semper bibendum. Nulla scelerisque tellus efficitur, molestie nunc in, aliquam dui. Cras lacinia arcu ut mi tristique accumsan. Orci varius natoque dolor.', '2019-06-26', 1, 8, 0, 1, 'tft.jpg'),
(45, 'Zelda - A Link to the Past', 'Dans un univers de fantasy appelé Hyrule, Link doit trouver les trois pendentifs magiques afin d\'obtenir l\'épée Excalibur, puis délivrer les sept descendantes des sept sages (dont la princesse Zelda) et vaincre Ganon, dans le but de récupérer la Triforce et ramener la paix dans le royaume. Durant le jeu, Link se déplace dans une carte du monde affichée en vue de dessus, mais explore également plusieurs donjons labyrinthiques souterrains. Le royaume d\'Hyrule est habité par de nombreux monstres que Link doit combattre, et recèle de nombreux secrets et énigmes à résoudre, ce qui permet à Link de découvrir des objets utiles à son avancement dans la quête ou des armes améliorant ses capacités. L\'exploration et la découverte de secrets sont le cœur de l\'expérience de jeu.', '1992-09-24', 10, 10, 99, 8, 'zelda.jpg'),
(46, 'World of Warcraft', 'Le jeu reprend place dans le monde imaginaire d’Azeroth, et dont le cadre historique se situe quatre ans après les évènements concluant Warcraft III. Le joueur choisit son personnage parmi huit, dix ou douzeNote 4 races disponibles divisées en deux factions : l’Alliance et la Horde. Ainsi, si l’Alliance permet d’incarner un Humain, un Nain, un Gnome ou un Elfe de la Nuit, côté Horde ce sera un Orc, un Troll, un Tauren (une sorte de minotaure) ou encore un Mort-vivant.', '2004-11-23', 2, 8, 40, 2, 'wow.jpg'),
(47, 'Counter Strike', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam bibendum mauris sit amet tortor semper bibendum. Nulla scelerisque tellus efficitur, molestie nunc in, aliquam dui. Cras lacinia arcu ut mi tristique accumsan. Orci varius natoque dolor.', '2000-01-01', 4, 9, 10, 10, 'cs.jpg'),
(48, 'Rock Band', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam bibendum mauris sit amet tortor semper bibendum. Nulla scelerisque tellus efficitur, molestie nunc in, aliquam dui. Cras lacinia arcu ut mi tristique accumsan. Orci varius natoque dolor.', '2008-05-22', 7, 9, 69.99, 4, 'rockband.jpg'),
(49, 'Street Fighter 2 Turbo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam bibendum mauris sit amet tortor semper bibendum. Nulla scelerisque tellus efficitur, molestie nunc in, aliquam dui. Cras lacinia arcu ut mi tristique accumsan. Orci varius natoque dolor.', '1992-01-01', 11, 8, 50, 6, 'streetfighter.jpg'),
(50, 'Soul Blade', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam bibendum mauris sit amet tortor semper bibendum. Nulla scelerisque tellus efficitur, molestie nunc in, aliquam dui. Cras lacinia arcu ut mi tristique accumsan. Orci varius natoque dolor.', '1995-12-01', 11, 10, 59.99, 11, 'soulblade.png'),
(51, 'Dragon Ball Z Super Butouden', 'classic', '1993-01-01', 11, 10, 100, 11, 'dbz.jpg'),
(52, 'Final Fantasy Crystal Chronicles Remastered', 'Je l\'attends!!!!!', '2020-12-30', 3, 10, 59.99, 3, 'ffcc.jpg'),
(53, 'Diablo II', 'All time best Hack\'n Slash', '2000-06-29', 9, 10, 40, 2, 'diablo2.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Avis`
--
ALTER TABLE `Avis`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdJeuVideo` (`IdJeuVideo`);

--
-- Index pour la table `Editeur`
--
ALTER TABLE `Editeur`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `JeuVideo`
--
ALTER TABLE `JeuVideo`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdGenre` (`IdGenre`,`IdEditeur`),
  ADD KEY `jeuvideo_ibfk_1` (`IdEditeur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Avis`
--
ALTER TABLE `Avis`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `Editeur`
--
ALTER TABLE `Editeur`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `Genre`
--
ALTER TABLE `Genre`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `JeuVideo`
--
ALTER TABLE `JeuVideo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Avis`
--
ALTER TABLE `Avis`
  ADD CONSTRAINT `avis_ibfk_1` FOREIGN KEY (`IdJeuVideo`) REFERENCES `JeuVideo` (`Id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `JeuVideo`
--
ALTER TABLE `JeuVideo`
  ADD CONSTRAINT `jeuvideo_ibfk_1` FOREIGN KEY (`IdEditeur`) REFERENCES `Editeur` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jeuvideo_ibfk_2` FOREIGN KEY (`IdGenre`) REFERENCES `Genre` (`Id`) ON UPDATE CASCADE;
