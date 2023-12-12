-- 0. Adatbázis létrehozása
DROP DATABASE IF EXISTS Rendelesek_cs1;
CREATE DATABASE Rendelesek_cs1;
USE Rendelesek_cs1;

-- 1. Ügyfél tábla létrehozása
DROP TABLE IF EXISTS Ugyfel;
CREATE TABLE Ugyfel (
    fnev VARCHAR(50) PRIMARY KEY,
    email VARCHAR(50) NOT NULL UNIQUE,
    telefon CHAR(11),
    fizetes INT CHECK (fizetes >= 0),
    nem CHAR(1) CHECK (nem IN ("F", "N")),
    szuletes DATE,
    varos VARCHAR(50)
    -- CHECK (fizetes >= 0 AND nem IN ("F", "N"))
);

-- 2. Ügyfél adatok (18 db)
INSERT INTO Ugyfel (fnev, email, telefon, fizetes, nem, szuletes, varos)
VALUES 
('User123', 'user123@gmail.com', '36201234567', 480000, 'F', '1990-05-15', 'Budapest'),
('GreenDragon', 'green.dragon@freemail.hu', '36304567890', 350000, 'N', '1985-09-20', NULL),
('Sunflower22', 'sunflower22@ckik.hu', '36707894561', 300000, 'F', '1995-02-10', 'Szeged'),
('SkyWalker89', 'sky.walker89@gmail.com', '36203456789', 420000, 'N', '1980-11-08', 'Pécs'),
('SilverFox', 'silver.fox@freemail.hu', '36701239876', 250000, 'F', '1988-07-12', 'Miskolc'),
('User456', 'user456@ckik.hu', '36306789012', 480000, NULL, '1992-03-18', 'Győr'),
('BlueBird', 'blue.bird@freemail.hu', '36205678901', 320000, 'F', '1987-06-25', 'Eger'),
('MountainView', 'mountain.view@ckik.hu', '36702345678', 380000, 'N', '1998-09-30', 'Debrecen'),
('NightOwl', 'night.owl@gmail.com', '36204567890', 460000, 'F', '1983-12-05', 'Szombathely'),
('TechGeek', 'tech.geek@freemail.hu', '36703456789', 290000, 'N', '1991-08-14', NULL),
('Moonlight', 'moonlight@gmail.com', '36201234567', 430000, 'F', '1989-02-22', 'Kaposvár'),
('Fashionista', 'fashionista@gmail.com', '36304567890', 470000, 'N', '1983-10-10', 'Pécs'),
('YogaEnthusiast', 'yoga.enthusiast@ckik.hu', '36707894561', 300000, 'F', '1990-05-03', 'Szeged'),
('SpaceExplorer', 'space.explorer@gmail.com', '36203456789', 430000, NULL, '1985-01-18', 'Budapest'),
('CoffeeAddict', 'coffee.addict@freemail.hu', '36701239876', 260000, 'F', '1993-09-12', 'Budapest'),
('MountainLover', 'mountain.lover@gmail.com', '36306789012', 390000, 'N', '1981-06-27', 'Pécs'),
('GamerSpirit', 'gamer.spirit@ckik.hu', '36205678901', 320000, 'F', '1988-02-14', 'Pécs'),
('DigitalNomad', 'digital.nomad@ckik.hu', '36702345678', 480000, NULL, '1996-11-09', NULL);
