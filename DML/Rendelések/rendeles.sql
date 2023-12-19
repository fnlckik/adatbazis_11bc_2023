-- 1. Rendelés tábla
-- ON DELETE: törlés hatására ez történjen
-- ON UPDATE: frissítés hatására ez történjen
-- 3 lehetőség:
-- RESTRICT: elutasítja a kérést (reject the query) => nem törölhető, nem módosítható
-- CASCADE: "tovább gördíti"
-- SET NULL: ismeretlenre állítja az értékét (NULL-ra)
-- Alapértelmezett: RESTRICT

-- Pl.: ON DELETE CASCADE: ügyfél törlése esetén a rendeléseit is törli
-- Pl.: ON UPDATE CASCADE: fnev váltása esetén a másik táblában is változik
CREATE TABLE Rendeles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ugyfel_id VARCHAR(50),
    idopont DATETIME DEFAULT "2023-12-11 08:15",
    allapot VARCHAR(20) DEFAULT "rögzítve",
    osszeg INT CHECK (osszeg > 0),
    valuta VARCHAR(10),
    UNIQUE (ugyfel_id, idopont),
    CHECK (allapot IN ("rögzítve", "folyamatban", "teljesítve", "törölve")),
    FOREIGN KEY (ugyfel_id) REFERENCES Ugyfel (fnev) ON DELETE SET NULL ON UPDATE CASCADE
);

-- 2. Rendelés adatok (8 rekord)
INSERT INTO Rendeles (id, ugyfel_id, idopont, allapot, osszeg, valuta)
VALUES 
(1, 'User123', '2023-12-11 08:15', 'rögzítve', 15000, 'forint'),
(2, 'GreenDragon', '2023-12-11 09:30', 'folyamatban', 20000, 'euró'),
(3, 'Sunflower22', '2023-12-11 10:45', 'teljesítve', 25000, 'font'),
(4, 'GreenDragon', '2023-12-11 12:00', 'teljesítve', 30000, 'dollár'),
(5, 'SilverFox', '2023-12-11 13:15', 'folyamatban', 35000, 'forint'),
(6, 'GreenDragon', '2023-12-11 14:30', 'rögzítve', 40000, 'euró'),
(7, 'BlueBird', '2023-12-11 15:45', 'rögzítve', 45000, 'font'),
(8, 'MountainView', '2023-12-11 17:00', 'törölve', 50000, 'dollár');

-------------------------------------------------------------------------------
-- Gyakorlás
-------------------------------------------------------------------------------

-- 1.
DELETE
FROM ugyfel
WHERE fnev = "SilverFox";

-- 2.
UPDATE ugyfel
SET fnev = "OriasiKiseger"
WHERE fnev = "GreenDragon";

-- 3.
UPDATE Rendeles
SET osszeg = osszeg * 1.2
WHERE allapot = "folyamatban" AND valuta = "forint";

-- 4.
DELETE FROM Rendeles
WHERE allapot = "törölve";

-- 5.
UPDATE Rendeles
SET osszeg = osszeg - 1000
WHERE osszeg >= 40000 AND allapot <> "teljesitve";

-- 6.
UPDATE Ugyfel
SET fnev = "Sanyi"
WHERE fnev LIKE "%22";

-- 7.
UPDATE Rendeles
SET allapot = "folyamatban"
WHERE allapot = "rögzítve" AND idopont < "2023-12-11 12:00:00";

-- 8.
INSERT INTO Rendeles (ugyfel_id, idopont, osszeg)
VALUES ("GamerSpirit", "2023-12-12 14:56", 12500);

