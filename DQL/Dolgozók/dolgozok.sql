-- F0
-- Add meg a Dolgozok tábla adatait!
SELECT *
FROM Dolgozok;

-- F1
-- Add meg a férfiak adatait!
-- szelekció (WHERE) => rekordok szűrése (kiválogatás)
SELECT *
FROM Dolgozok
WHERE nem = "F";

-- F2
-- Add meg a dolgozók vezetéknevét, keresztnevét, születését!
-- projekció (SELECT) => mezők szűrése
SELECT szuletes, vnev, knev
FROM Dolgozok;

-- SELECT 2/11, 2+5, 2 < 8, NULL = 0, 1 = 0;
-- Szövegösszefűzés: konkatenáció (concatenate)
SELECT CONCAT("alma", "fa");

-- F3
-- Add meg a dolgozók teljes nevét, születési dátumát!
-- SELECT CONCAT(vnev, " ", knev) AS "teljes nev", szuletes
-- FROM Dolgozok;

SELECT CONCAT(vnev, " ", knev) AS teljes_nev, szuletes
FROM Dolgozok;

-- F4
-- Soroljuk gazdag kategóriába azokat, akik fizetése 800e feletti!
SELECT 
    vnev, knev, fizetes,
    IF(fizetes > 800000, "gazdag", NULL) AS kategoria
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


