---------------------------------------------------------------------------------
-- SELECT, WHERE
---------------------------------------------------------------------------------

-- WHERE-hez mehet minden olyan feltétel, ami CHECK-hez jó volt
-- WHERE szigorú igazat kér (csak True értket fogad el)
-- Kik laknak Pécsen?
-- SELECT *
-- FROM ugyfel
-- WHERE varos = "Pécs";

-- WHERE: szelekció (kiválogatás tétel)

SELECT *
FROM ugyfel
WHERE fnev = "SkyWalker89";

---------------------------------------------------------------------------------
-- DELETE
---------------------------------------------------------------------------------

-- 1. 
DELETE
FROM ugyfel
WHERE fnev = "SkyWalker89";
-- fnev LIKE "SkyWalker89"

-- 2.
DELETE
FROM ugyfel
WHERE fizetes < 300000;

-- 3.
DELETE
FROM ugyfel
WHERE varos IN ("Eger", "Kaposvár", "Budapest");

-- 4.
-- Minta illesztés
-- Joker karakter:
-- %: valahány karakter (akár 0 is lehet)
-- _: pontosan 1 karakter
DELETE
FROM ugyfel
WHERE email LIKE "%ckik.hu";

-- email validálás: CHECK (email LIKE "_%@%.%")

-- 5.
SELECT *
FROM ugyfel
WHERE szuletes LIKE "1983%";
-- WHERE szuletes LIKE "1983-__-__";

DELETE
FROM ugyfel
WHERE "1983-01-01" <= szuletes AND szuletes <= "1983-12-31";

---------------------------------------------------------------------------------
-- UPDATE (eredeti adatokkal)
---------------------------------------------------------------------------------

-- 1.
-- SELECT *
-- FROM ugyfel
-- WHERE fnev = "GamerSpirit";

UPDATE ugyfel
SET varos = "Budapest"
WHERE fnev = "GamerSpirit";

-- 2.
UPDATE ugyfel
SET fizetes = fizetes + 5999
WHERE nem = "N";

-- 3.
UPDATE ugyfel
SET fizetes = fizetes * 3
WHERE varos = "Budapest";

-- 4.
UPDATE ugyfel
SET fizetes = fizetes * 1.035
WHERE telefon LIKE "3670%";

-- 5.
-- UPDATE ugyfel
-- SET varos = "Cegléd"
-- WHERE email LIKE "%@ckik.hu" AND nem = "F";

-- UPDATE ugyfel
-- SET fizetes = NULL
-- WHERE email LIKE "%@ckik.hu" AND nem = "F";

UPDATE ugyfel
SET varos = "Cegléd", fizetes = NULL
WHERE email LIKE "%@ckik.hu" AND nem = "F";

-- 6.
UPDATE ugyfel
SET telefon = NULL
WHERE telefon LIKE "%7_";

