CREATE DATABASE Descartes;
USE Descartes;

-- A = {"a", "b", "c"}
CREATE TABLE A (
    betu CHAR(1)
);

INSERT INTO A
VALUES ("a"), ("b"), ("c");

-- B = {1, 2, 3, 4}
CREATE TABLE B (
    szam INT
);

INSERT INTO B
VALUES (1), (2), (3), (4);

-- AxB = {(a, 1), (a, 2), (a, 3)...}
-- |AxB| = 3*4 = 12

-- 1. Táblák összekapcsolása = Descartes-szorzat képzése
SELECT *
FROM a, b;

-- Tartsuk meg csak azokat a sorokat, ahol "b" vagy 3-mas van
SELECT *
FROM a, b
WHERE szam = 3 OR betu = "b"
ORDER BY betu;

-- 2. Készítsük el az AxA halmazt!
-- AxA = {(a, a), (a, b), (a, c), (b, a) ...}
-- Variáció - ismétléses: n*n elem lesz
SELECT a1.betu AS betu1, a2.betu AS betu2
FROM a AS a1, a AS a2;

-- 3. Különböző elemek legyenek egymás mellett!
-- (a, b), (a, c), (b, a), (b, c), (c, a), (c, b)
-- Variácó - ismétlés nélküli: n*(n-1)
SELECT *
FROM a AS a1, a AS a2
WHERE a1.betu <> a2.betu;

-- (a, a), (b, b), (c, c)
-- Ennek mi értelme?
-- Valójában ez a lényeg... majd meglátjátok...
SELECT *
FROM a AS a1, a AS a2
WHERE a1.betu = a2.betu;

-- 4. Különböző elemek legyenek egymás mellett!
-- Sorrend nem számít!
-- Kombináció - ismétlés nélküli
-- (a, b), (a, c), (b, c)
SELECT *
FROM a AS a1, a AS a2
WHERE a1.betu < a2.betu;