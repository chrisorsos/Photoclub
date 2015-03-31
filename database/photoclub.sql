-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Hoszt: 127.0.0.1
-- Létrehozás ideje: 2015. Már 31. 11:53
-- Szerver verzió: 5.5.27
-- PHP verzió: 5.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `photoclub`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(60) NOT NULL,
  `szoveg` text NOT NULL,
  `datum` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `forum`
--

INSERT INTO `forum` (`id`, `nev`, `szoveg`, `datum`) VALUES
(1, 'Gazdag András', 'Helo! ', '2015-03-27 09:34:32'),
(2, 'Gazdag András', 'Helo! ', '2015-03-27 09:42:47');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `published` tinyint(1) NOT NULL,
  `tag` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `date`, `published`, `tag`) VALUES
(1, 'Perui fotótúra!', '<a href="Images/Peru.jpg" class="colorbox"><img src="Images/Peru.jpg" class="left" width="200"></a>Az Andok vonulataiban megbúvó kis ország a kontinens egyik legszínesebb kultúrájával büszkélkedhet. Az inka törzsek leszármazottjai a mai napig őrzik ősi hagyományaik egy részét, amelyek leglátványosabb elemei az országszerte népszerű fesztiválok, zarándoklatok. Útjainkat elsősorban ezekre a vidékekre szervezzük, ahol gyalog vagy lóháton vágunk neki a szédítő magaslatoknak, kőomlásos völgyeknek. A Cusco melletti Qoyllurrit''y fesztivál már több éve visszavár, de a szinte ismeretlen perui Amazonas-vidék is tartogat még számtalan úti célt a jövőben.\r\n', '2014-11-11', 0, 0),
(2, 'Budapesti kirándulás!', '<a href="Images/Budapest.jpg" class="colorbox"><img src="Images/Budapest.jpg" class="left" width="200"></a>A reggeli találkozás után (Budapest, Kálvin tér 8.30-kor) átbeszéljük ki-milyen géppel érkezett, majd gyalogosan végigjárjuk Budapest fő látnivalóit, illetve azokat a helyszíneket, amikkel egy városlátogatás alkalmával találkozhatunk. Ezeken elmondjuk, hogy hogyan készíthetünk kreatívabb képeket és különböző feladatokat hajtunk végre, majd ezeket ki is elemezzük. Mellette a felmerülö ötleteket meg is mutatjuk, hogy ki-ki a saját gépével hogyan tudja megvalósítani. Természetesen bárkinek bármilyen kérdése van, arra egyből választ adunk a túra egész napján (kb.este 4 körül ér véget).\r\n', '2014-11-25', 0, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` varchar(25) NOT NULL,
  `title` varchar(60) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `pages`
--

INSERT INTO `pages` (`id`, `title`, `text`) VALUES
('bemutatkozas', 'Bemutatkozás', ' <p>\r\n    Eme oldal a Fotó Club társaságnak készítem. Minden egyes tagnak az oldalon feltüntetett „Regisztráció” fül alatt egy saját profilt kell készíteni, amihez e-mail cím lesz kötelező és a felhasználó felülethez való belépéshez jelszó lesz szükség. A bejelentkezéshez már csak a jelszóra és a felhasználó névre lesz szükség, ami megadás után egyből a saját felhasználói felületünk kezdőképernyőjére hoz minket. \r\n<p>\r\nAz oldal fő fontossága az lesz, hogy a Fotó Club tagjai egymással tudják megosztani saját képeiket/videóikat. A kép/videó feltöltése több kategóriába lesz lehetséges. Lehetőség lesz a „Állatvilág”, „Növényvilág” illetve „Hétköznapi” és „Művészet”ti kategóriába megosztani/feltölteni a képeinket illetve videóinak. (Ezek szigorúan csak példák!) Amennyiben mások, a Fotó Club többi tagja megszeretné tekinteni, mást nem is kell tenniük mint egy „torrent” fájl formájában letölteni azt, ezzel segíteni,hogy mindenki, minél gyorsabban jusson hozzá számára szimpatikus témába szereplő képekhez és videókhoz.\r\n<p>\r\nA torrent alapú letöltés azért fontos, mert a hobbi fotósok nagyfelbontású, tömörítés nélküli képeket (RAW formátum) kívánnak megosztani egymással, amik nagyon nagy méretűek is lehetnek.\r\nAz oldalon, fórum lehetőség is lesz, így akár közös fotózásokra is invitálhatják egymást a tagok, vagy megbeszélhetik a szakma egyéb kulisszatitkait. Amennyiben aki egy természettúrát szeretne indítani fotós társaival, az az oldal adminisztrátorát megkeresve hírt tehet közzé az oldal „hírportálján”. \r\n<p>\r\nAz oldal még egy csodás elemmel lesz bővítve. Amennyiben a regisztrációt túl hosszadalmasnak, bonyolultnak tartjuk, lehetőség lesz akár Facebook illetve Twitter felhasználónkkal is belépni. Az oldal, profi illetve amatőr fotósoknak készül,hogy megtudják egymással osztani azt is, amit az életben egyszer is csoda látni!\r\n\r\n  </p>'),
('kapcsolat', 'Kapcsolat', '<p>\r\nFőadmin: Orsós Krisztián \r\n<p>\r\nTelefonszám: 3630-622-9419\r\n<p>\r\nEmail: christianorsos94@gmail.com');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rights`
--

CREATE TABLE IF NOT EXISTS `rights` (
  `id` tinyint(4) NOT NULL,
  `description` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rights`
--

INSERT INTO `rights` (`id`, `description`) VALUES
(1, 'Adminisztrátor '),
(2, 'Hírszerkesztő'),
(3, 'Vendég');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` tinyint(4) NOT NULL,
  `description` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tags`
--

INSERT INTO `tags` (`id`, `description`) VALUES
(1, 'Természeti'),
(2, 'Művészeti'),
(3, 'Hétköznapi'),
(4, 'Állatos');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `torrentek`
--

CREATE TABLE IF NOT EXISTS `torrentek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(100) NOT NULL,
  `leiras` text NOT NULL,
  `used_id` int(11) NOT NULL,
  `meret` bigint(20) NOT NULL,
  `feltoltes_ideje` date NOT NULL,
  `torrent_fajl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `used_id` (`used_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- A tábla adatainak kiíratása `torrentek`
--

INSERT INTO `torrentek` (`id`, `nev`, `leiras`, `used_id`, `meret`, `feltoltes_ideje`, `torrent_fajl`) VALUES
(1, 'Természetfotók a Desedáról', 'Gyönyörű természetképek a Desedáról', 2, 307, '2015-03-18', 'novenyvilag.torrent'),
(3, 'Hétköznapi fotók', 'Hétköznapi fotók a városokról\r\n', 1, 2, '2015-03-18', 'varos.torrent'),
(4, 'Művészeti képek', 'Művészeti képek a nagyvilágból', 1, 626, '2015-03-18', 'muveszet.torrent'),
(5, 'Állatvilág', 'Csodálatos képek az állatvilágról!', 1, 682, '2015-03-18', 'Allatvilag.torrent');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(25) NOT NULL,
  `upass` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `rights` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `uname`, `upass`, `name`, `email`, `rights`) VALUES
(1, 'krisz', '$1$4f2.5e3.$vQFZ3FYH/Hiii5CPiIMzS0', 'Orsós Krisztián', 'gidajappy@gmail.com', 1),
(2, 'asdasd', 'dsadsa', 'Braun Péter', 'Petikuka@gmail.com', 2),
(3, 'Tegike', '$1$4f2.5e3.$vQFZ3FYH/Hiii5CPiIMzS0', 'Tegike', 'Tegike@gmail.com', 2);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `torrentek`
--
ALTER TABLE `torrentek`
  ADD CONSTRAINT `torrentek_ibfk_1` FOREIGN KEY (`used_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
