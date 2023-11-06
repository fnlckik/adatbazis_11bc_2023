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
-- ???
