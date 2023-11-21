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
