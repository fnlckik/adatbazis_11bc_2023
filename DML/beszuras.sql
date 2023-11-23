-- Rekord beszúrása
INSERT INTO diak 
VALUES 
(1, "Bajor Szabolcs", 16),
(2, "Huszár Hunor", 24);

insert into diak
values (3, "Kiss Dominik", 42, "2005-11-09 12:42:53");

-- Speciális beszúrás (csak adott mezők)
INSERT INTO diak
VALUES (10, "Kacsa Feri", "1998-02-04", NULL, DEFAULT);

INSERT INTO diak (id, atlag, nev)
VALUES (11, 4.1, "Laci");

-- Diak tábla adatok
INSERT INTO diak
VALUES
(1, 'Kovács Péter', '2000-05-15', 4.2, 20000),
(2, 'Nagy Anna', '2001-02-20', 3.8, 20000),
(3, 'Kiss Gábor', '2000-09-10', NULL, 40000),
(4, 'Tóth Éva', '2002-01-03', NULL, 60000),
(5, 'Molnár Balázs', '2001-11-25', 4.1, 40000);
