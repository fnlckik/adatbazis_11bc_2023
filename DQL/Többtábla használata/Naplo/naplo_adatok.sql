CREATE DATABASE Naplo_cs2;
USE Naplo_cs2;

CREATE TABLE Diak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(50),
    datum DATE
);

CREATE TABLE Jegy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    diakId INT,
    targy VARCHAR(50),
    osztalyzat INT,
    CONSTRAINT FK_Jegy_Diak FOREIGN KEY (diakId) REFERENCES Diak(id)
);

-- Diak tábla rekordok
INSERT INTO Diak (nev, datum)
VALUES 
('Kovács Anna', '2001-04-20'),
('Nagy Bence', '1999-09-15'),
('Varga Rita', '2000-06-02'),
('Molnár Dávid', '1999-01-28'),
('Szabó Eszter', '2001-11-10'),
('Molnár Aliz', '2001-05-04');

-- Jegy tábla rekordok
INSERT INTO Jegy (diakId, targy, osztalyzat)
VALUES 
(1, 'Matematika', 4),
(1, 'Nyelvtan', 5),
(1, 'Fizika', 3),
(1, 'Irodalom', 4),
(1, 'Matematika', 5),
(2, 'Matematika', 3),
(2, 'Fizika', 4),
(2, 'Webprogramozás', 5),
(2, 'Angol', 4),
(3, 'Német', 3),
(3, 'Irodalom', 4),
(3, 'Webprogramozás', 5),
(3, 'Adatbázis', 3),
(4, 'Rajz', 4),
(4, 'Történelem', 5),
(4, 'Matematika', 3),
(5, 'Digitális kultúra', 4),
(5, 'Kémia', 5),
(5, 'Fizika', 3),
(5, 'Matematika', 4);
