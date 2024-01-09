CREATE DATABASE Szaloncukor;
USE Szaloncukor;

CREATE TABLE Raktar (
    kod CHAR(3) PRIMARY KEY,
    tipus VARCHAR(20),
    mennyiseg FLOAT,
    ar INT,
    lejarat DATE,
    UNIQUE (tipus, lejarat)
);

INSERT INTO Raktar (kod, tipus, mennyiseg, ar, lejarat) VALUES
('101', 'kókuszos', 80.5, 2200, '2024-02-28'),
('201', 'dió', 50.2, 2500, '2025-04-15'),
('102', 'kakaó', 65.0, 2300, '2024-11-10'),
('202', 'zselés', 45.8, 2100, '2024-09-30'),
('103', 'málnás', 70.3, 2400, '2025-08-20'),
('203', 'vaníliás', 55.6, 2250, '2024-07-15'),
('301', 'zselés', 90.7, 3350, '2024-05-25'),
('104', 'kókuszos', 40.0, 2600, '2025-02-10'),
('204', 'citromos', 60.9, 1100, '2023-12-05'),
('302', 'cseresznyés', 75.4, 2550, '2025-06-30'),
('105', 'karamelles', 85.2, 3250, '2024-04-18'),
('205', 'almás', 55.0, 2200, '2024-08-22'),
('303', 'mogyoró', 30.8, 2400, '2025-01-15'),
('106', 'zselés', 100.2, 3300, '2024-10-28'),
('206', 'kókuszos', 65.5, 4450, '2025-03-10'),
('304', 'geketeerdő', 78.9, 2500, '2024-09-15'),
('107', 'narancsos', 42.3, 2150, '2024-07-05'),
('207', 'alkoholos', 58.6, 5350, '2025-04-02'),
('305', 'dió', 95.0, 2000, '2023-12-18'),
('108', 'kókuszos', 63.7, 2200, '2025-07-20'),
('208', 'epres', 90.7, 3400, '2024-06-20'),
('306', 'dinnyés', 120.0, 3700, '2025-09-25'),
('109', 'sósmogyoró', 55.3, 3100, '2024-08-12'),
('209', 'kólás', 75.8, 4600, '2025-01-05'),
('307', 'sportszelet', 38.6, 3300, '2024-07-30'),
('110', 'mangó', 90.5, 3400, '2025-03-18'),
('210', 'zselés', 75.2, 2200, '2024-12-15'),
('308', 'körtés', 48.7, 2500, '2025-05-10'),
('121', 'oreos', 65.9, 4300, '2024-10-28'),
('211', 'mogyoró', 40.0, 2600, '2025-02-10'),
('309', 'cseresznyés', 70.4, 2550, '2024-06-30'),
('112', 'kávés', 75.8, 1600, '2023-01-05'),
('212', 'banános', 100.2, 1300, '2024-10-28'),
('320', 'epres', 90.7, 3350, '2024-05-25'),
('113', 'citromos', 38.6, 3300, '2024-07-30'),
('213', 'málnás', 70.3, 1400, '2024-08-20'),
('321', 'kaktuszos', 40.0, 2600, '2025-02-10');

-- F1
SELECT *
FROM Raktar
WHERE 2000 <= ar AND ar <= 2500;

-- F2
SELECT *
FROM Raktar
WHERE tipus LIKE "%os";

-- F3
DELETE
FROM Raktar
WHERE lejarat <= "2023-12-31";

-- F4
UPDATE Raktar
SET ar = ar * 1,35
WHERE tipus = "zselés";

-- F5
UPDATE Raktar
SET mennyiseg = mennyiseg - 18
WHERE kod = "203";

-- F6
DELETE
FROM Raktar
WHERE kod LIKE "%2_";

-- F7
UPDATE Raktar
SET mennyiseg = 0
WHERE tipus = "kókuszos";

-- F8
-- CHECK (rendelo = "TESCO" OR rendelo = "LIDL" OR rendelo = "ALDI" OR rendelo = "SPAR")
CREATE TABLE Vasarlas (
    idopont DATETIME,
    rendelo VARCHAR(50),
    termek CHAR(3),
    mennyiseg FLOAT,
    CHECK (rendelo IN ("TESCO", "LIDL", "ALDI", "SPAR")),
    FOREIGN KEY (termek) REFERENCES Raktar (kod) ON DELETE CASCADE ON UPDATE CASCADE
    -- RESTRICT, SET NULL, CASCADE
);

-- F9
INSERT INTO Vasarlas (idopont, rendelo, termek, mennyiseg)
VALUES ("2024-01-09 12:22", "ALDI", "203", 2.4);
