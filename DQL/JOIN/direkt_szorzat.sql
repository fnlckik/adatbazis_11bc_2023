-- SELECT, FROM, WHERE

CREATE DATABASE Descartes_cs1;
USE Descartes_cs1;

-- A = {"a"; "b"; "c"}
CREATE TABLE A (
    betu CHAR(1)
);
INSERT INTO A
VALUES ("a"), ("b"), ("c");

-- B = {1; 2; 3; 4}
CREATE TABLE B (
    szam INT
);
INSERT INTO B
VALUES (1), (2), (3), (4);

-- AxB = {(a, 1); (a, 2); (a, 3); ...}
-- |AxB| = |A| * |B| = 3 * 4 = 12
-- 1. Direkt szorzat SQL-ben (FROM)
SELECT *
FROM A, B;

-- Tartsuk meg azokat, ahol
-- a betű "b" vagy a szám 2-es!
SELECT A.betu, B.szam
FROM A, B
WHERE betu = "b" OR szam = 2;

-- 2. Mi lenne AxA?
-- AxA = {(a, a); (a, b); (a, c); (b, a); ...}
-- |AxA| = 3 * 3 = 9
-- "Ismétléses variáció"
SELECT A1.betu AS betu1, A2.betu AS betu2
FROM A AS A1, A AS A2;

-- 3. Önmagával ne párosítsunk elemeket!
-- "Ismétlés nélküli variáció"
-- {(a, b); (a, c); (b, a); (b, c); (c, a); (c, b)}
-- Most nem kell: {(a, a); (b, b); (c, c)}
SELECT A1.betu AS betu1, A2.betu AS betu2
FROM A AS A1, A AS A2
WHERE A1.betu <> A2.betu;

-- 4. Most a sorrend nem számít a két mezőnél!
-- azaz: (a, b) ugyanaz, mint (b, a)
-- {(a, b); (b, c); (c, a)}
-- "Ismétlés nélküli kombináció"
SELECT A1.betu AS betu1, A2.betu AS betu2
FROM A AS A1, A AS A2;