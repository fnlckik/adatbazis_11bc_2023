-- F0
-- Add meg a Dolgozok tábla adatait!
SELECT *
FROM Dolgozok;

-- F1
-- Add meg a férfiak adatait!
-- szelekció (WHERE) => rekordok szűrése (kiválogatás)
SELECT *
FROM Dolgozok
WHERE nem = "f";

-- F2
-- Add meg a dolgozók vezetéknevét, keresztnevét, születését!
-- projekció (SELECT) => mezők szűrése
SELECT vnev, knev, szuletes
FROM Dolgozok;

-- F3
-- Add meg a dolgozók teljes nevét, születési dátumát!

-- SELECT tábla nélkül
-- SELECT 2*5;

-- szövegösszefűzés: konkatenáció
-- SELECT CONCAT("Nagy", " ", "Miklós");
SELECT CONCAT(vnev, " ", knev) "Teljes név", szuletes Születés
FROM Dolgozok;

-- Alias név:
SELECT CONCAT(vnev, " ", knev) AS Teljes_nev, szuletes
FROM Dolgozok;

-- F4
-- Soroljuk gazdag kategóriába azokat, akik fizetése 800e feletti!
SELECT 
    vnev, knev, fizetes, 
    IF(fizetes > 800000, "gazdag", NULL) AS Kategoria
FROM Dolgozok;

-- F5
-- Soroljuk 3 kategóriába kereset szerint az embereket:
-- 0-500000 szegény; 500001-800000 átlagos; 800000- gazdag


-- Másképp: esetekre bontás


-- F6
-- Add meg azokat, akiknek nem tudjuk a nemét!


-- F7
-- Add meg azokat, akiknek tudjuk az email címét!


-- F8
-- Akiknek nem tudjuk a nemét, azoknak a neme helyett "-" jelenjen meg!


-- Másik megoldás: egyesülés


-- F9
-- Add meg a dolgozók teljes keresetét!


-- F10
-- Add meg a jutalom hány százaléka a fizetésnek!
-- Csak azokban az esetekben számolj, amikor a jutalom ismert!
-- Két tizedesre kerekítve, százalékként írasd ki az erdményt!


-- F11
-- Csak azokat listázzuk, ahol a jutalom aránya legalább 1%


