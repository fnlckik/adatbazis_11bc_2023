-- Adatbázis létrehozása
CREATE DATABASE iskola_cs1;

-- Adatbázis törlése
DROP DATABASE iskola_cs1;

-- Tábla létrehozása
CREATE TABLE diak (
    id INT,
    nev VARCHAR(25),
    kor TINYINT UNSIGNED
);

-- Tábla törlése
DROP TABLE diak;

-- Tábla tartalmának törlése
-- truncate: csonkolás, levág, lenyes
-- TRUNCATE TABLE diak;
TRUNCATE diak;

-- Tábla átnevezése
RENAME TABLE diak TO student;

-- Tábla módosítása (ALTER)

-- Mező hozzáadása
-- ADD COLUMN datum DATETIME;
ALTER TABLE diak
ADD datum DATETIME;

-- Mező törlése
ALTER TABLE diak
DROP kor;

-- Mező módosítása (típus)
ALTER TABLE diak
MODIFY COLUMN datum DATE;
