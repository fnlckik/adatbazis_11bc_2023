CREATE DATABASE Kavezok;
USE Kavezok;

-- F1
CREATE TABLE Tulajdonos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(50),
    email VARCHAR(255),
    telefon CHAR(11),
    fizetes INT,
    CONSTRAINT CHK_Tulajdonos_Fizetes CHECK (fizetes > 0),
    CONSTRAINT CHK_Tulajdonos_Email CHECK (email LIKE "%_@_%"),
    CONSTRAINT UQ_Tulajdonos_Email_Telefon UNIQUE (email, telefon)
);

-- F2
ALTER TABLE Tulajdonos
ADD szuletes DATE;

-- F3
ALTER TABLE Tulajdonos
DROP CONSTRAINT UQ_Tulajdonos_Email_Telefon;

-- Adatok:
INSERT INTO Tulajdonos (nev, email, telefon, fizetes, szuletes)
VALUES 
('Kovács János', 'kovacs.janos@email.com', '06201234567', 300000, '1990-05-15'),
('Nagy Éva', 'nagy.eva@gmail.com', '36301234567', 250000, '1985-08-20'),
('Tóth Gergő', 'toth.gergo@citromail.hu', '06303456789', 350000, '1992-03-10'),
('Szabó Anna', 'szabo.anna@email.com', '36704567890', 320000, '1988-11-05'),
('Horváth Péter', 'horvath.peter@email.com', '06706789012', 280000, '1995-07-25'),
('Kiss Mónika', 'kiss.monika@freemail.hu', '06707890123', 300000, '1983-09-12'),
('Balogh Zoltán', 'balogh.zoltan@email.com', '36209876543', 330000, '1998-01-30'),
('Molnár Katalin', 'molnar.katalin@hotmail.com', '36701234567', 290000, '1980-12-18'),
('Varga István', 'varga.istvan@email.com', '06201234567', 310000, '1993-06-22'),
('Fekete Réka', 'fekete.reka@ckik.hu', '36203456789', 340000, '1987-04-08'),
('Király Dániel', 'kiraly.daniel@gmail.com', '36204567890', 270000, '1996-10-14'),
('Simon Zsuzsa', 'simon.zsuzsa@gmail.com', '06206789012', 320000, '1984-02-28'),
('Németh Gábor', 'nemeth.gabor@hotdog.com', '06707890123', 300000, '1991-08-03'),
('Papp Krisztina', 'papp.krisztina@validator.com', '06309876543', 310000, '1989-04-17'),
('Boros Ádám', 'boros.adam@gmail.com', '06301234567', 290000, '1994-12-05'),
('Szűcs Anikó', 'szucs.aniko@fortnite.com', '36303456789', 330000, '1986-06-11'),
('Takács Balázs', 'takacs.balazs@freemail.hu', '06304567890', 280000, '1997-02-19'),
('Fehér Katalin', 'feher.katalin@belavagyok.hu', '36706789012', 300000, '1982-10-26'),
('Gál Gergely', 'gal.gergely@ckik.hu', '06207890123', 310000, '1999-04-02');
