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
SELECT 
    vnev, knev, fizetes, 
    IF (fizetes > 800000, "gazdag", 
        IF (fizetes > 500000, "átlagos", "szegény")
    ) AS Kategoria
FROM Dolgozok;

-- Másképp: esetekre bontás
SELECT 
    vnev, knev, fizetes, 
    CASE
        WHEN fizetes > 800000 THEN "gazdag"
        WHEN fizetes > 500000 THEN "átlagos"
        ELSE "szegény"
    END AS Kategoria
FROM Dolgozok;

-- F6
-- Add meg azokat, akiknek nem tudjuk a nemét!
-- SELECT vnev, knev, nem
-- FROM Dolgozok
-- WHERE nem = NULL;
SELECT vnev, knev, nem
FROM Dolgozok
WHERE nem IS NULL;


-- F7
-- Add meg azokat, akiknek tudjuk az email címét!
-- SELECT id, vnev, knev, email
-- FROM Dolgozok
-- WHERE NOT(email IS NULL);

SELECT id, vnev, knev, email
FROM Dolgozok
WHERE email IS NOT NULL;


-- F8
-- Akiknek nem tudjuk a nemét, azoknak a neme helyett "-" jelenjen meg!
SELECT vnev, knev, IF(nem IS NULL, "-", nem) nem
FROM Dolgozok;

SELECT vnev, knev, IF(nem IS NOT NULL, nem, "-") nem
FROM Dolgozok;

SELECT vnev, knev, IFNULL(nem, "-") nem
FROM Dolgozok;

-- Másik megoldás: egyesülés
SELECT vnev, knev, COALESCE(nem, "-") nem
FROM Dolgozok;

-- Kitekintés:
-- COALESCE => legelső paraméter értékét adja vissza, ami már nem NULL
SELECT id, COALESCE(jutalom, fizetes*0.01, 5000)
FROM Dolgozok;

-- F9
-- Add meg a dolgozók teljes keresetét!
SELECT
    vnev, knev, fizetes, jutalom,
    jutalom + fizetes AS Kereset
FROM Dolgozok;

-- F10
-- Add meg a jutalom hány százaléka a fizetésnek!
-- Csak azokban az esetekben számolj, amikor a jutalom ismert!
-- Két tizedesre kerekítve, százalékként írasd ki az erdményt!


-- F11
-- Csak azokat listázzuk, ahol a jutalom aránya legalább 1%


