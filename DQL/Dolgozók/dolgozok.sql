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
-- -500000 szegény; 500001-800000 átlagos; 800000- gazdag
SELECT 
    vnev, knev, fizetes,
    IF(fizetes > 800000, 
        "gazdag",
        IF(fizetes > 500000,
            "átlagos",
            "szegény"
        )
    ) AS Kategoria
FROM Dolgozok;

-- Másképp: esetekre bontás
SELECT
    vnev, knev, fizetes,
    CASE
        WHEN fizetes > 800000 THEN "gazdag"
        WHEN fizetes > 500000 THEN "átlagos"
        ELSE "szegény"
    END
FROM Dolgozok;

-- F6
-- Add meg azokat, akiknek nem tudjuk a nemét!

-- Rossz!
-- SELECT vnev, knev, nem
-- FROM Dolgozok
-- WHERE nem = NULL;

-- Rossz!
-- SELECT vnev, knev, nem
-- FROM Dolgozok
-- WHERE nem <> "F" AND nem <> "N";

-- Rossz!
-- SELECT vnev, knev, nem
-- FROM Dolgozok
-- WHERE NOT nem;

SELECT vnev, knev, nem
FROM Dolgozok
WHERE nem IS NULL;

-- F7
-- Add meg azokat, akiknek tudjuk az email címét!
SELECT vnev, knev, email
FROM Dolgozok
WHERE NOT(email IS NULL);

SELECT vnev, knev, email
FROM Dolgozok
WHERE email IS NOT NULL;

SELECT vnev, knev, email
FROM Dolgozok
WHERE NOT email;

-- Kitekintés: Vigyázat, számoknál utóbbi nem jó!
-- Kik azok akiknek tudjuk a jutalmát?
SELECT vnev, knev, jutalom
FROM Dolgozok
WHERE NOT jutalom;

-- F8
-- Akiknek nem tudjuk a nemét, azoknak a neme helyett "-" jelenjen meg!
SELECT 
    vnev, knev,
    IF(nem IS NULL, "-", nem) AS nem
FROM Dolgozok;

SELECT 
    vnev, knev,
    IFNULL(nem, "-") AS nem
FROM Dolgozok;

-- Másik megoldás: egyesülés - COALESCE
-- Legelső nem NULL értéket veszi ki!
SELECT 
    vnev, knev,
    COALESCE(nem, "-") AS nem
FROM Dolgozok;

-- Ha nem tudjuk a jutalmat, legyen a fizetés 1%-a
-- Ha nem tudjuk a fizetést sem, legyen fixen 5000
SELECT
    vnev, knev, fizetes,
    COALESCE(jutalom, fizetes * 0.01, 5000) AS jutalom
FROM Dolgozok;


-- F9
-- Add meg a dolgozók teljes keresetét!


-- F10
-- Add meg a jutalom hány százaléka a fizetésnek!
-- Csak azokban az esetekben számolj, amikor a jutalom ismert!
-- Két tizedesre kerekítve, százalékként írasd ki az erdményt!


-- F11
-- Csak azokat listázzuk, ahol a jutalom aránya legalább 1%


