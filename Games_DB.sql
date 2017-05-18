-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server versie:                5.7.14 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Versie:              9.4.0.5165
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Databasestructuur van game_database wordt geschreven
CREATE DATABASE IF NOT EXISTS `game_database` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `game_database`;

-- Structuur van  tabel game_database.authors wordt geschreven
CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(100) NOT NULL,
  `author_address` varchar(100) NOT NULL,
  `author_zipcode` varchar(7) NOT NULL,
  `author_city` varchar(100) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumpen data van tabel game_database.authors: ~5 rows (ongeveer)
DELETE FROM `authors`;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` (`author_id`, `author_name`, `author_address`, `author_zipcode`, `author_city`) VALUES
	(1, 'Ernest Cline', 'Main street 1', '555 NY', 'New York'),
	(2, 'Stephen King', 'Warren Ave 1285', '04105', 'Portland'),
	(3, 'John Grisham', 'Goodman Rd 356', '38671', 'Southaven'),
	(4, 'Emily Barr', 'Mercers road', 'N70AA', 'London'),
	(5, 'Tom Clancy', 'Eastern Ave 843', '21224', 'Baltimore');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;

-- Structuur van  tabel game_database.birthdays wordt geschreven
CREATE TABLE IF NOT EXISTS `birthdays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person` varchar(255) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `month` tinyint(4) NOT NULL,
  `year` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumpen data van tabel game_database.birthdays: 18 rows
DELETE FROM `birthdays`;
/*!40000 ALTER TABLE `birthdays` DISABLE KEYS */;
INSERT INTO `birthdays` (`id`, `person`, `day`, `month`, `year`) VALUES
	(1, 'Vera', 5, 8, 1963),
	(2, 'Nadia', 14, 5, 1996),
	(3, 'Petrov', 7, 12, 1985),
	(4, 'Anoushka', 22, 2, 1981),
	(5, 'Dimitri', 21, 5, 2001),
	(6, 'Anna', 28, 4, 1989),
	(7, 'Miroslav', 17, 7, 2010),
	(8, 'Vesela', 14, 5, 1992),
	(9, 'Vlad', 18, 3, 1975),
	(10, 'Mila', 22, 2, 1993),
	(11, 'Goran', 19, 12, 2006),
	(12, 'Brana', 7, 3, 1967),
	(13, 'Darko', 4, 6, 1973),
	(14, 'Dragoslav', 13, 6, 1982),
	(15, 'Godemir', 9, 9, 1984),
	(16, 'Boris', 19, 4, 2001),
	(17, 'Ludmila', 5, 5, 1969),
	(18, 'Stanibor', 14, 5, 1999);
/*!40000 ALTER TABLE `birthdays` ENABLE KEYS */;

-- Structuur van  tabel game_database.books wordt geschreven
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) NOT NULL,
  `book_publisher` varchar(100) NOT NULL,
  `book_summary` text NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumpen data van tabel game_database.books: ~18 rows (ongeveer)
DELETE FROM `books`;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`book_id`, `book_title`, `book_publisher`, `book_summary`, `author_id`) VALUES
	(1, 'Eindspel', 'Luitingh-Sijthoff', 'Eindspel is het nieuwste boek van de Amerikaanse topauteur Tom Clancy, bekend van De jacht op de Red October en Golf van ontzetting. Na een vernietigende nucleaire confrontatie in het Midden-Oosten, staan Amerika en Rusland lijnrecht tegenover elkaar in hun honger naar werelddominantie. ', 5),
	(2, 'Opperbevel', 'A.W. Bruna Uitgevers', 'In Rusland is de macht van president Valeri Volodin tanende en in een poging het verloren gegane terrein terug te veroveren, verlegt hij zijn ambities naar het buitenland. Omdat de Verenigde Staten in het verleden dergelijke expansieplannen altijd hebben gedwarsboomd, besluit Volodin tot een andere aanpak. Een drijvende gasinstallatie in Litouwen wordt opgeblazen. ', 5),
	(3, 'Command Authority', 'Berkley Books', 'The rise of a powerful new authority figure in Russia is based on a dark secret hidden decades in the past with unexpected ties to President Jack Ryan. Co-written by the best-selling author of The Gray Man series. ', 5),
	(4, 'Operatie Rode Storm', 'Bruna', 'Door een aanslag wordt er grote schade toegebracht aan de rijkste Russische olievelden in West-Siberië. Het olietekort wordt zo nijpend dat de Russen besluiten de gebieden rondom de Perzische Golf te bezetten en tegelijk West-Europa onder de voet te lopen om NAVO-interventie te voorkomen. De legertop krijgt exact vier maanden de tijd om deze gigantische aanval, die met Operatie Rode Storm wordt aangeduid, voor te bereiden.', 5),
	(5, 'Ready Player One', 'Cornerstone', 't\'s the year 2044, and the real world has become an ugly place. We\'re out of oil. We\'ve wrecked the climate. Famine, poverty, and disease are widespread. Like most of humanity, Wade Watts escapes this depressing reality by spending his waking hours jacked into the OASIS, a sprawling virtual utopia where you can be anything you want to be, where you can live and play and fall in love on any of ten thousand planets. ', 1),
	(6, 'Armada', 'Cornerstone', 'Zack Lightman has spent his life dreaming. Dreaming that the real world could be a little more like the countless science-fiction books, movies, and videogames he?s spent his life consuming. Dreaming that one day, some fantastic, world-altering event will shatter the monotony of his humdrum existence and whisk him off on some grand space-faring adventure.', 1),
	(7, 'The Importance of Being Ernest', 'Write Bloody Publishing', 'Familiar and resonant, Cline\'s collection takes readers into a private landscape of science fiction, pop culture, and pornography. Ernest Cline is a geek, novelist, poet, and screenwriter based in Austin, Texas. In addition to winning poetry slams, Cline is known for screenwriting "Fanboys," released in 2009. He also recently sold the film rights to his latest book, "Armada."', 1),
	(8, 'It', 'Luitingh-Sijthoff', 'Een achtentwintig jaar oude belofte brengt zeven volwassenen terug naar Derry, Maine. Hier streden ze als tieners tegen een nachtmerrie zonder einde, een duister kwaad zonder naam dat het voorzien had op jonge kinderen. Omdat ze niet zeker wisten of ze het monster definitief hadden verjaagd, beloofden ze terug te keren als het monster weer van zich liet horen.', 2),
	(9, 'De Shining', 'Luitingh-Sijthoff', 'De Shining is waarschijnlijk Stephen Kings beroemdste boek, en werd onvergetelijk verfilmd door Stanley Kubrick.\r\n\r\nJack Torrance, zijn vrouw Wendy en hun vijfjarige zoon Danny verblijven in het Overlook Hotel, waar Jack is ingehuurd als huismeester. Danny heeft een gave: \'het licht\', zoals de oude meneer Hallorann het noemt.', 2),
	(10, 'The Green Mile', 'Luitingh-Sijthoff', 'Hoe zou het zijn, vroeg ik me af, om die laatste veertig meter naar de elektrische stoel te lopen, wetend dat je daar zult sterven? En hoe zou de man zich voelen die de veroordeelde op de stoel moet vastsjorren, of de man die de schakelaar overhaalt?\'', 2),
	(11, 'Christine', 'Luitingh', 'Christine en Arnie zijn verliefd op elkaar. Maar ook de beeldschone Leigh is verliefd op Arnie. Er ontstaat een driehoeksverhouding waarbij de geheimzinnige Christine langzaam maar zeker terrein wint. Ze krijgt het voor elkaar dat Arnie steeds meer van zijn omgeving vervreemd.', 2),
	(12, 'De klokkenluider', 'A.W. Bruna Uitgevers', '"Advocate Lacy Stolz werkt al tien jaar voor de Florida Board on Judicial Conduct. In al die tijd hebben slechts twee van haar zaken ertoe geleid dat rechters uit hun ambt werden gezet, in beide gevallen vanwege onbekwaamheid.', 3),
	(13, 'De veroordeling', 'A.W. Bruna Uitgevers', 'Een rechter met haar eerste moordzaak.\r\nEen advocaat die het allemaal te veel wordt.\r\nEen aanklager die bloed ruikt en uit is op eeuwige roem.\r\nDe beklaagde, die misschien onschuldig is.\r\nEn de moordenaar, die mogelijk de perfecte misdaad heeft gepleegd', 3),
	(14, 'De afperser', 'A.W. Bruna Uitgevers', 'Wanneer rechter Raymond Fawcett maandagochtend niet komt opdagen in de rechtszaal, nemen zijn medewerkers in paniek contact op met de FBI. Fawcetts lichaam wordt korte tijd later gevonden in de kelder van zijn vakantiehuisje, waar hij regelmatig de weekenden doorbracht. Er worden geen sporen van braak gevonden, geen aanwijzingen dat er een gevecht is geweest, alleen de twee lichamen: dat van rechter Fawcett en zijn secretaresse.', 3),
	(15, 'De gevangene', 'A.W. Bruna Uitgevers', 'Op 7 december 1982 wordt de 21-jarige serveerster Debbie Carter in haar appartement vermoord. \r\nDe politie, die vrijwel geen aanwijzingen heeft, staat onder grote druk om snel de dader of daders te vinden. Ron Williamson, een aan lager wal geraakte lokale sportheld, is een van de laatsten die Debbie levend heeft gezien. Tenminste, dat beweert een getuige. ', 3),
	(16, 'Backpack', 'Boekerij', 'Als Tansys vriend het op het laatste moment laat afweten, vertrekt ze alleen op reis naar het Verre Oosten. Daar aangekomen voelt ze zich tamelijk bedonderd: in tegenstelling tot wat de glossys haar hebben voorgespiegeld, is Saigon een smerige en luidruchtige stad. ', 4),
	(17, 'Bedrieglijk', 'Boekerij', 'Een jonge vrouw is vastbesloten haar verloren zus te vinden... tegen elke prijs Liz Greene wist dat haar relatie met Steve niet zo lekker ging. Maar dat hij haar na tien jaar zou verlaten voor een ander, had ze niet verwacht. Eenzaam en wanhopig stort ze haar hart uit bij een vreemde man in het café, waarna ze dronken met hem in bed belandt. ', 4),
	(18, 'Perfecte leugen', 'Boekerij', 'Voor Lucy Riddick is Venetië altijd een droombestemming geweest. Een droom die werd geïnspireerd door de romantische poster aan de muur van haar moeders keuken. Venetië lijkt Lucy de ideale plaats om jezelf te verliezen. En dat is precies wat ze nodig heeft wanneer het grote geheim dat ze al jaren voor haar geliefde en haar vrienden verborgen houdt, dreigt uit te komen.', 4);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

-- Structuur van  tabel game_database.games_db wordt geschreven
CREATE TABLE IF NOT EXISTS `games_db` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `publishers_id` varchar(255) NOT NULL,
  `price` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel game_database.games_db: 60 rows
DELETE FROM `games_db`;
/*!40000 ALTER TABLE `games_db` DISABLE KEYS */;
INSERT INTO `games_db` (`id`, `name`, `publishers_id`, `price`) VALUES
	(1, 'Mass Effect Andromeda ', '1', '$69,99'),
	(2, 'Titanfall 2', '1', '$59,99'),
	(3, 'Battlefield 1', '1', '$59.99'),
	(4, 'FIFA 17', '1', '$59,99'),
	(5, 'Plants vs. Zombies Garden Warfare 2', '1', '$29,99'),
	(6, 'Unravel', '1', '$19,99'),
	(7, 'Need for Speed', '1', '$29,99'),
	(8, 'Mirror\'s Edge', '1', '$19,99'),
	(9, 'Battlefield Hardline', '1', '$19.99'),
	(10, 'Dragon Age: Inquisition', '1', '$39,99'),
	(11, 'De Sims 4', '1', '$49,99'),
	(12, 'Need for Speed Rivals', '1', '$14,99'),
	(13, 'Battlefield 4', '1', '$19,99'),
	(14, 'SimCity', '1', '$19,99'),
	(15, 'Crysis 3', '1', '$9,99'),
	(16, 'Dead Space 3', '1', '$19,99'),
	(17, 'Medal of Honor: Warfighter', '1', '$9,99'),
	(18, 'The Secret World', '1', '$29,99'),
	(19, 'Battlefield 3: Close Quarters', '1', '$9,99'),
	(20, 'Command and Qonquer Tiberium Alliances', '1', '$19,99'),
	(21, 'Star Wars™: The Old Republic™', '1', 'Free'),
	(22, 'Kingdom of amalur: Reckoning', '1', '$9,99'),
	(23, 'Alice: Madness Returns', '1', '$9,99'),
	(24, 'Portal 2', '4', '$19,99'),
	(25, 'Tom Clancy\'s The Division', '2', '$49,99'),
	(26, 'For Honor', '2', '$39,99'),
	(27, 'The Crew', '2', '$24,99'),
	(28, 'Watch Dogs', '2', '$29,99'),
	(29, 'Tom Clancy\'s Ghost Recon: Wildlands', '2', '$59,99'),
	(30, 'Watch Dogs 2', '2', '$59.99'),
	(31, 'Far Cry 3', '2', '$19,99'),
	(32, 'Tom Clancy\'s Rainbow Six Siege', '2', '$39,99'),
	(33, 'Steep', '2', '$59,99'),
	(34, 'Assassin\'s Creed III', '2', '$19,99'),
	(35, 'Far Cry 4', '2', '$29,99'),
	(36, 'Far Cry Primal', '2', '$49,99'),
	(37, 'Beyond Good & Evil', '2', '$9,99'),
	(38, 'Rayman Origins', '2', '$19,99'),
	(39, 'The Elder Scrolls V: Skyrim', '3', '$19,99'),
	(40, 'Fallout 4', '3', '$59,99'),
	(41, 'Fallout 3', '3', '$9,99'),
	(42, 'The Elder Scrolls IV: Oblivion', '3', '$14,99'),
	(43, 'The Elder Scrolls Online', '3', '$29,99'),
	(44, 'Fallout: New Vegas', '3', '$9,99'),
	(45, 'Doom', '3', '$59,99'),
	(46, 'Dishonored', '3', '$9,99'),
	(47, 'Fallout Shelter', '3', 'Free'),
	(48, 'Prey', '3', '$59,99'),
	(49, 'Wolfenstein: The New Order', '3', '$19,99'),
	(50, 'Dota 2', '4', 'Free'),
	(51, 'Counter Strike: Global Offensive', '4', '$13,99'),
	(52, 'Left 4 Dead 2', '4', '$19,99'),
	(53, 'Garry\'s Mod', '4', '$9,99'),
	(54, 'Spore', '1', '$14,99'),
	(55, 'TERA', '5', 'Free'),
	(56, 'PLAYERUNKOWN\'S BATTLEGROUNDS', '5', '$29,99'),
	(57, 'Minecraft', '6', '$23,95'),
	(58, 'Forza Horizon 3', '6', '$69,99'),
	(59, 'Age of Empires III', '6', '$39,99'),
	(60, 'Gears of War 4', '6', '$29,99');
/*!40000 ALTER TABLE `games_db` ENABLE KEYS */;

-- Structuur van  tabel game_database.publishers wordt geschreven
CREATE TABLE IF NOT EXISTS `publishers` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel game_database.publishers: 6 rows
DELETE FROM `publishers`;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` (`id`, `publisher`) VALUES
	(1, 'EA'),
	(2, 'Ubisoft'),
	(3, 'Bethesda'),
	(4, 'Valve'),
	(5, 'Bluehole'),
	(6, 'Microsoft Studios');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
