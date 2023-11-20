-- Rekord beszúrása
INSERT INTO diak
VALUES
(1, "Fekete Bogi", 16),
(2, "Farkas Máté", 30),
(4, "Kakuk Ákos", 17);

insert into diak
values
(1, "Sanyi", 14, "2008-05-12 08:40:23"),
(2, "Béla", 18, "2012-02-02 12:44:23"),
(3, "Gábor", 15, "2018-10-25 02:20:13");

insert into diak
values
(2, "Jani", "2013-11-04", 4.8);

-- Speciális beszúrás: csak adott mezők
insert into diak
values
(4, "Bogi", NULL, 5.0, DEFAULT);

INSERT INTO diak (nev, id, atlag)
VALUES
("Bogi", 4, 5.0);

-- Minta adatok (ChatGPT)
INSERT INTO diak
VALUES
(1, 'Kovács Péter', '2000-05-15', 4.2, 25000),
(2, 'Nagy Anna', '2001-02-20', 3.8, 20000),
(3, 'Kiss Gábor', '2000-09-10', NULL, 30000),
(4, 'Tóth Éva', '2002-01-03', NULL, 22000),
(5, 'Molnár Balázs', '2001-11-25', 4.1, 23000);

