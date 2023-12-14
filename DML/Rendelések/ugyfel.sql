---------------------------------------------------------------------------------
-- SELECT, WHERE
---------------------------------------------------------------------------------

-- WHERE: logikai feltételt vár
-- mindent ismer amit a CHECK-nél meg tudtunk adni
-- a WHERE szigorú feltétel! => csak True esetén adja vissza a rekordot
-- WHERE => szelekció (kiválogatás tétel)
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

-- 2.
DELETE
FROM ugyfel
WHERE fizetes < 300000;

-- 3.
DELETE
FROM ugyfel
WHERE varos IN ("Eger", "Kaposvár", "Budapest");

-- 4.
-- Mintaillesztés
-- Joker karakter:
-- %: valahány karakter (akár 0 darab is)
-- _: pontosan 1 karakter
DELETE
FROM ugyfel
WHERE email LIKE "%ckik.hu";

-- Amiben van pont az email felhasználóban
SELECT *
FROM ugyfel
WHERE email LIKE "%.%@%";

-- Amiben 5 karakter után van pont az email felhasználóban
SELECT *
FROM ugyfel
WHERE email LIKE "_____.%";
-- LIKE "_%@_%._%"
-- Legalább 1 karakter: "_%"
-- LIKE mehet CHECK feltételbe is

-- 5.
DELETE
FROM ugyfel
WHERE szuletes LIKE "1983%";

SELECT *
FROM ugyfel
WHERE YEAR(szuletes) = 1983;

SELECT *
FROM ugyfel
WHERE "1983-01-01" <= szuletes AND szuletes <= "1983-12-31";

---------------------------------------------------------------------------------
-- UPDATE (eredeti adatokkal)
---------------------------------------------------------------------------------

-- 1.


-- 2.


-- 3.


-- 4.


-- 5.


-- 6.


