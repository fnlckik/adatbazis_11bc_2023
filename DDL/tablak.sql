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

-- Rekord beszúrása
INSERT INTO diak 
VALUES 
(1, "Bajor Szabolcs", 16),
(2, "Huszár Hunor", 24);