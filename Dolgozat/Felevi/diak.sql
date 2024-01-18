CREATE DATABASE Felevi;
USE Felevi;

-- F4
CREATE TABLE Diak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(50) NOT NULL,
    osztondijas BOOLEAN DEFAULT TRUE,
    osztaly CHAR(1),
    CHECK (osztaly IN ("a", "b", "c", "k"))
);


INSERT INTO Diak (nev, osztondijas, osztaly)
VALUES
('Kovács Anna', TRUE, 'a'),
('Nagy Bence', FALSE, 'b'),
('Varga Cecília', TRUE, 'c'),
('Tóth Dávid', FALSE, 'a'),
('Szabó Emma', FALSE, 'k'),
('Kiss Ferenc', TRUE, 'b'),
('Mészáros Gizella', FALSE, 'c'),
('Fekete Hunor', FALSE, 'a'),
('Bálint Izabella', FALSE, 'k'),
('Cser János', TRUE, 'c');

-- F5
SELECT *
FROM Diak
WHERE osztaly = "a" AND NOT osztondijas;
