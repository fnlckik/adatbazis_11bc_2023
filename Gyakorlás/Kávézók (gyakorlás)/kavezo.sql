-- F4
CREATE TABLE Kavezo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(50) NOT NULL,
    cim VARCHAR(255) UNIQUE,
    nyitas TIME DEFAULT "8:00",
    ertekeles FLOAT,
    wifi BOOLEAN DEFAULT TRUE
);

-- F5


-- F6


-- F7


-- F8
INSERT INTO Kavezo (id, nev, cim, ertekeles, forgalom, wifi, tulajdonos_id)
VALUES 
('Espresso Élmény', 'Budapest, Levél utca 1.', 9.5, TRUE, 'átlagos', 9),
('Cappuccino Kuckó', 'Debrecen, Kóstoló tér 2.', 8.2, TRUE, 'kicsi', 14),
('Latte Art Bár', 'Szeged, Egészség út 3.', 7.8, FALSE, 'tömeg', 8),
('Mocha Mágia', 'Pécs, Gasztronómia köz 4.', 9.0, TRUE, 'átlagos', 4),
('Americano Alkotás', 'Győr, Mesés sétány 5.', 8.5, TRUE, 'kicsi', 1),
('Flat White Ház', 'Eger, Illatos tér 6.', 7.2, FALSE, 'tömeg', 13),
('Macchiato Mese', 'Szombathely, Étel utca 7.', 9.8, TRUE, 'átlagos', 8),
('Ristretto Rózsa', 'Veszprém, Zöldség út 8.', 8.0, TRUE, 'kicsi', 9),
('Affogato Álom', 'Miskolc, Ízletes sétány 9.', 7.5, FALSE, 'tömeg', 9),
('Turkish Delight Kávéház', 'Kecskemét, Edzés tér 10.', 9.2, TRUE, 'átlagos', 5),
('Irish Coffee Kert', 'Nyíregyháza, Egészség köz 11.', 8.7, TRUE, 'kicsi', 60),
('Café au Lait Palota', 'Szolnok, Friss út 12.', 7.0, FALSE, 'tömeg', 10),
('Espresso Eufória', 'Sopron, Gyümölcs utca 13.', 9.5, TRUE, 'átlagos', 19),
('Caramel Macchiato Csemege', 'Pécs, Ízletes út 14.', 8.2, TRUE, 'kicsi', 12),
('Mint Mocha Mese', 'Debrecen, Zöldség sétány 15.', 7.8, FALSE, 'tömeg', 4),
('Vanilla Latte Varázslat', 'Szeged, Vitalitás tér 16.', 9.0, TRUE, 'átlagos', 1),
('Hazelnut Heaven Kávézó', 'Budapest, Friss köz 17.', 8.5, TRUE, 'kicsi', 14),
('Chocolate Charm Kávéház', 'Győr, Gyümölcs utca 18.', 7.2, FALSE, 'tömeg', 5),
('Berry Bliss Kávézó', 'Eger, Egészség sétány 19.', 9.8, TRUE, 'átlagos', 15),
('Coconut Cappuccino Csemegéző', 'Veszprém, Ízletes út 20.', 8.0, TRUE, 'kicsi', 15);
