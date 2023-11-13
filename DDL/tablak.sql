-- Adatbázis létrehozása
CREATE DATABASE iskola;

-- Adatbázis törlése
DROP DATABASE iskola;

-- Ha van a névben szóköz:
-- create database `iskolai adatbázis`;

-- Tábla létrehozása
CREATE TABLE diak (
    id INT,
    nev VARCHAR(25),
    kor TINYINT UNSIGNED
);

-- Tábla törlése
DROP TABLE diak;

-- Tábla tartalmának törlése
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
-- DROP COLUMN kor;
ALTER TABLE diak
DROP kor;

-- Mező módosítása (típus)
ALTER TABLE diak
MODIFY datum DATE;

-- Mező módosítása (név + típus)
ALTER TABLE diak
CHANGE datum szuletes DATE;

alter table diak
add atlag float;

