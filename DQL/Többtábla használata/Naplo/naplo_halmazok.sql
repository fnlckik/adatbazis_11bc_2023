-- Halmaz műveletek:

-- a) Unio - egyesítés (vagy)
SELECT *
FROM diak d RIGHT JOIN jegy j ON d.id = j.diakId
UNION
SELECT *
FROM diak d LEFT JOIN jegy j ON d.id = j.diakId;

-- b) Metszet - közös elemek (és)
-- Ez valójában itt egy INNER JOIN
SELECT *
FROM diak d RIGHT JOIN jegy j ON d.id = j.diakId
INTERSECT
SELECT *
FROM diak d LEFT JOIN jegy j ON d.id = j.diakId;

-- c) Különbség - elsőben van CSAK benne (nem)
SELECT *
FROM diak d RIGHT JOIN jegy j ON d.id = j.diakId
EXCEPT
SELECT *
FROM diak d LEFT JOIN jegy j ON d.id = j.diakId;

-- -----------------------------------------------
-- 6. Kik azok a diákok (nev), akik kaptak már 3-mast
-- valamilyen tárgyból? Mindegyikük nevét csak egyszer
-- jelenítsük meg!
SELECT DISTINCT nev
FROM diak d INNER JOIN jegy j ON d.id = j.diakId
WHERE osztalyzat = 3;



-- 7. Kik azok a diákok, akik nem kaptak még 3-mast
-- egyetlen tárgyból sem?
-- "Dobjuk ki a rosszat!" Jó = Összes - Rossz

-- SELECT DISTINCT nev
-- FROM diak d LEFT JOIN jegy j ON d.id = j.diakId
SELECT *
FROM diak
EXCEPT
SELECT DISTINCT nev
FROM diak d INNER JOIN jegy j ON d.id = j.diakId
WHERE osztalyzat = 3;

-- Vigyázat: halmaz műveleteknél egyforma felépítése kell legyen a két táblának
-- A = {(1, Kovács Anna, 2001-04-20), (2, Nagy Bence, 1999-09-15), ...}
-- B = {(Kovács Anna), (Varga Rita), (Szabó Eszter)}

-- 8. Kik azok a diákok (nev), akik webprogból
-- és fizikából is kaptak már jegyet?
SELECT nev
FROM diak INNER JOIN jegy ON diak.id = jegy.diakId
WHERE targy = "Webprogramozás"
INTERSECT
SELECT nev
FROM diak INNER JOIN jegy ON diak.id = jegy.diakId
WHERE targy = "Fizika";

-- Vigyázat: Ez így üres halmaz!
SELECT nev
FROM diak INNER JOIN jegy ON diak.id = jegy.diakId
WHERE targy = "Fizika" AND targy = "Webprogramozás";

-- 9. Jelenítsük meg:
-- azokat a diákokat, akiknek nincs jegyük, továbbá
-- azokat a jegyeket, amelyek nem tudjuk kihez tartoznak!
-- Ezeken kívül semmilyen más adatot ne listázzunk!
SELECT nev
FROM diak
EXCEPT
SELECT DISTINCT nev
FROM diak INNER JOIN jegy ON diak.id = jegy.diakId
UNION
SELECT DISTINCT targy
FROM jegy
WHERE diakId IS NULL;

-- Mj: diak LEFT JOIN jegy === jegy RIGHT JOIN diak
SELECT *
FROM diak LEFT JOIN jegy ON diak.id = jegy.diakId
WHERE targy IS NULL
UNION
SELECT *
FROM diak RIGHT JOIN jegy ON diak.id = jegy.diakId
WHERE diakId IS NULL;


-- 10.
-- a) Adjuk meg azokat a napló bejegyzéseket, amelyek
-- esetén az osztályzat 5-ös (akkor is ha nem tudjuk, hogy
-- melyik diákhoz tartozik)!
-- b) A listát a diákok neve szerint abc sorrendben
-- jelenítsük meg!
-- c) Ne tartsuk meg azon rekordokat, ahol a diákról
-- biztosan tudjuk, hogy 2000-ben született!
-- d) Kerüljenek a lista végére azon rekordok, ahol
-- nem ismerjük a diák nevét!
SELECT *
FROM diak RIGHT JOIN jegy ON diak.id = jegy.diakId
WHERE osztalyzat = 5;


