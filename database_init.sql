-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2019. Nov 02. 09:48
-- Kiszolgáló verziója: 10.2.27-MariaDB
-- PHP verzió: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `u282403210_vizsg`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ANAL_2_BIZONYITAS`
--

CREATE TABLE `ANAL_2_BIZONYITAS` (
  `ID` int(11) DEFAULT NULL,
  `SZOVEG` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `ANAL_2_BIZONYITAS`
--

INSERT INTO `ANAL_2_BIZONYITAS` (`ID`, `SZOVEG`) VALUES
(1, 'A Weierstrass-tétel'),
(2, 'A Bolzano-tétel'),
(3, 'Az összetett függvény folytonosságára vonatkozó tétel'),
(4, 'Az inverz függvény folytonosságára vonatkozó tétel'),
(5, 'A folytonosság és a derivált kapcsolata'),
(6, 'A deriválhatüság ekvivalens átfogalmazása lineáris közelítéssel'),
(7, 'A szorzatfüggvény deriválása'),
(8, 'A hányadosfüggvény deriválása'),
(9, 'Az összetett függvény deriválása'),
(10, 'Az inverz függvény deriválása'),
(11, 'A lokális szélsőértékre vonatkozó elsőrendű szükséges feltétel'),
(12, 'A Rolle-féle középértéktétel'),
(13, 'A Cauchy-féle középértéktétel'),
(14, 'A monotonitás és a derivált kapcsolata'),
(15, 'A lokális szélsőértékre vonatkozó elsőrendű elégséges feltétel'),
(16, 'A konvexitás ekvivalens átfogalmazása egyenlo ̋tlenséggel'),
(17, 'A konvexitás jellemzése a deriváltfüggvénnyel'),
(18, 'A 0 esetre vonatkozü L’Hospital-szabály'),
(19, 'A Taylor-formula a Lagrange-féle maradéktaggal'),
(20, 'A parciális integrálás szabálya határozatlan integrálra'),
(21, 'A helyettesítéses integrálás szabálya határozatlan integrálra'),
(22, 'Oszcillációs összegek Az integrálhatüság jellemzése az oszcilláciüs összegekkel'),
(23, 'A folytonos függvények intergálhatóságára vonatkozó tétel'),
(24, 'A monoton függvények intergálhatóságára vonatkozü tétel'),
(25, 'Az integrálfüggvény folytonosságára vonatkozü állítás'),
(26, 'Az integrálfüggvény differenciálhatóságára vonatkozó állítás'),
(27, 'A Newton–Leibniz-tétel'),
(28, 'A parciális integrálásra vonatkozó tétel határozott integrálra'),
(29, 'A helyettesítéses integrálás szabálya határozott integrálra');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ANAL_2_DEFIK`
--

CREATE TABLE `ANAL_2_DEFIK` (
  `ID` int(11) DEFAULT NULL,
  `SZOVEG` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `ANAL_2_DEFIK`
--

INSERT INTO `ANAL_2_DEFIK` (`ID`, `SZOVEG`) VALUES
(1, 'Definiálja egy f ∈ R 􏰀→ R függvény pontbeli folytonosságát.'),
(2, 'Mi a kapcsolat a pontbeli folytonosság és a határérték között?'),
(3, 'Milyen tételt ismer hatványsor összegfüggvényének a folytonosságáról?'),
(4, 'Hogyan szól a folytonosságra vonatkozó átviteli elv?'),
(5, 'Fogalmazza meg a hányadosfüggvény folytonosságára vonatkozó tételt.'),
(6, 'Milyen tételt ismer az összetett függvény pontbeli folytonosságáról?'),
(7, 'Mit tud mondani kolátos és zárt intervallumon értelmezett folytonos függvény értékkészletéről?'),
(8, 'Hogyan szól a Weierstrass-tétel?'),
(9, 'Mondja ki az egyenletes folytonosságra igazolt tételt.'),
(10, 'Milyen állítást ismer az inverz függvény folytonosságáról?'),
(11, 'Mit mond ki a Bolzano-tétel?'),
(12, 'Definiálja a megszüntethető szakadási hely fogalmát.'),
(13, 'Definiálja az elsőfaju ́ szakadási hely fogalmát.'),
(14, 'Mit tud mondani monoton függvény szakadási helyeiről?'),
(15, 'Mikor mondja, hogy egy f ∈ R 􏰀→ R függvény differenciálható valamely pontban?'),
(16, 'Milyen ekvivalens átfogalmazást ismer a pontbeli deriválhatóságra a lineáris közelítéssel?'),
(17, 'Mi a kapcsolat a pontbeli differenciálhatóság és a folytonosság között?'),
(18, 'Milyen tételt ismer két függvény összegének valamely pontbeli differenciálhatóságáról és a deriváltjáról?'),
(19, 'Milyen tételt ismer két függvényszorzatának valamely pontbeli differenciálhatóságáról és a deriváltjáról?'),
(20, 'Milyen tételt ismer két függvény hányadosának valamely pontbeli diffe- renciálhatóságáról és a deriváltjáról?'),
(21, 'Milyen tételt ismer két függvény kompozíciójának valamely pontbeli differenciálhatóságáról és a deriváltjáról?'),
(22, 'Milyen tételt tanult az inverz függvény differenciálhatóságáról és a deriváltjáról?'),
(23, 'Milyen állítást tud mondani hatványsor összegfüggvényének a deriválhatóságáról és a deriváltjáról?'),
(24, 'Mikor mondjuk, hogy egy függvény kétszer differenciálható egy pontban?'),
(25, 'Mondja ki a Rolle-tételt.'),
(26, 'Mondja ki a Cauchy-féle középértéktételt.'),
(27, 'Mondja ki a Lagrange-féle középértéktételt.'),
(28, 'Mit ért azon, hogy az f ∈ R 􏰀→ R függvénynek valamely helyen lokális minimuma van?'),
(29, 'Mit ért azon, hogy egy függvény valamely helyen jelet vált?'),
(30, 'Hogyan szól a lokális szélsőértékre vonatkozó elsorendű szükséges feltétel?'),
(31, 'Hogyan szól a lokális minimumra vonatkozó elsőrendű elégséges feltétel?'),
(32, 'Hogyan szól a lokális maximumra vonatkozó elsőrendű elégséges feltétel?'),
(33, 'Írja le a lokális minimumra vonatkozó másodrendű elégséges feltételt.'),
(34, 'Írja le a lokális maximumra vonatkozó másodrendű elégséges feltételt.'),
(35, 'Milyen elégséges feltételt ismer differenciálható függvény szigor monoton növekedésével kapcsolatban?'),
(36, 'Milyen szükséges és elégséges feltételt ismerdifferenciálható függvény monoton növekedésével kapcsolatban?'),
(37, 'Mi a konvex függvény definíciója?'),
(38, 'Jellemezze egy függvény konvexitását a differenciahányados segítségével.'),
(39, 'Jellemezze egy függvény konvexitását az első derivált segítségével.'),
(40, 'Jellemezze egy függvény konkávitását a második derivált segítségével.'),
(41, 'Mi az inflexiós pont definíciója?'),
(42, 'Milyen másodrendű elégséges feltételt ismer az inflexió létezésére?'),
(43, 'Írja le a 0/0 esetre vonatkozó L’Hospital-szabályt'),
(44, 'Mi a kapcsolat a hatványsor összegfüggvénye és a hatványsor együtthatói között?'),
(45, 'Hogyan definiálja egy függvény Taylor-sorát?'),
(46, 'Fogalmazza meg a Taylor-formula Lagrange maradéktaggal néven tanult tételt.'),
(47, 'Definiálja a primitív függvény fogalmát.'),
(48, 'Mit jelent egy függvény határozatlan integrálja?'),
(49, 'Mit ért a határozatlan integrál linearitásán?'),
(50, 'Mit mond ki a határozatlan integrálra vonatkozó parciális integrálás tétele ?'),
(51, 'Hogyan szól a határozatlan integrálra vonatkozó helyettesítési szabály?'),
(52, 'Definiálja intervallum egy felosztását.'),
(53, 'Mit jelent egy felosztás finomítása?'),
(54, 'Mi az alsó közelítő összeg definíciója?'),
(55, 'Mi a felső közelítő összeg definíciója?'),
(56, 'Mi történik egy alsó közelítő összeggel, ha a neki megfelelő felosztást finomítjuk?'),
(57, 'Mi történik egy felső közelítő összeggel, ha a neki megfelelő felosztást finomítjuk?'),
(58, 'Milyen viszony van az alsó és a felső közelítő összegek között?'),
(59, 'Mi a Darboux-féle alsó integrál definíciója?'),
(60, 'Mi a Darboux-féle felső integrál definíciója?'),
(61, 'Mikor nevez egy függvényt (Riemann)-integrálhatónak?'),
(62, 'Hogyan értelmezi egy függvény határozott (vagy Riemann-)integrálját?'),
(63, 'Adjon meg egy példát nem integrálható függvényre.'),
(64, 'Mi az oszcillációs összeg definíciója?'),
(65, 'Hogyan szól a Riemann-integrálhatósággal kapcsolatban tanult kritérium az oszcillációs összegekkel megfogalmazva?'),
(66, 'Adja meg a Riemann-féle közelítő összeg definícióját!'),
(67, 'Milyen tételt tanult Riemann-integrálható függvény megváltoztatását illetően?'),
(68, 'Hogyan szól a Riemann-integrálható függvények szorzatával kapcsolatban tanult tétel?'),
(69, 'Hogyan szól a Riemann-integrálható függvények hányadosával kapcsolat- ban tanult tétel?'),
(70, 'Mit ért a Riemann-integrál intervallum szerinti additivitásán?'),
(71, 'Hogyan szó az intergrálszámítás első középérték tétele'),
(72, 'Mi a kapcsolat a folytonosság és a Riemann-integrálhatóság között?'),
(73, 'Definiálja a szakaszonkánt folytonos függvény fogalmát.'),
(74, 'Mi a kapcsolat a monotonitás és a Riemann-integrálhatóság között?'),
(75, 'Definiálja a szakaszonkánt monoton függvény fogalmát.'),
(76, 'Az integrálfüggvény folytonosságára vonatkozó állítás.'),
(77, 'Az integrálfüggvény differenciálhatóságára vonatkozó állítás.'),
(78, 'A Newton–Leibniz-tétel.'),
(79, 'A parciális integrálásra vonatkozó tétel határozott integrálra.'),
(80, 'A helyettesítéses integrálás szabálya határozott integrálra.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
