-- 1. Jelenítsük meg a jegyeket diakId helyett nevekkel!
SELECT *
FROM diak, jegy
WHERE diak.id = jegy.diakId;

SELECT *
FROM diak d, jegy j
WHERE d.id = j.diakId;

-- "Másképp": JOIN
SELECT *
FROM diak d JOIN jegy j ON d.id = j.diakId;



-- 2. Melyik diákok kaptak jegyet Matematika tárgyból?
-- Osztályzat szerint csökkenő sorrendben írjuk ki!
SELECT nev, targy, osztalyzat
FROM diak d JOIN jegy j ON d.id = j.diakId
WHERE targy = "Matematika"
ORDER BY osztalyzat DESC;



-- 3. Kik azok a diákok (id, nev),
-- akik ugyanabban az évben születtek,
-- mint egy másik diák társuk?
SELECT DISTINCT d1.id, d1.nev
FROM diak d1, diak d2
WHERE YEAR(d1.datum) = YEAR(d2.datum) AND d1.id <> d2.id;



-- 4.
-- a) Töröljük a Naplóból, hogy kik kaptak Matematika tárgyból jegyet!
--    Vigyázat: csak a diák azonosítóját "felejtsük el", ne a rekordot töröljük!
-- b) Adjuk meg a teljes napló tartalmát újra!
--    Vigyázat: legyenek a matek jegyek is közte (ott csak azt nem tudjuk, ki kapta).
UPDATE Jegy
SET diakId = NULL
WHERE targy = "Matematika";

SELECT *
FROM diak d, jegy j
WHERE d.id = j.diakId;

-- "Belső" kapcsolat:
SELECT *
FROM diak d INNER JOIN jegy j ON d.id = j.diakId;

-- "Külső" kapcsolatok: OUTER JOIN => LEFT OUTER JOIN, RIGHT OUTER JOIN
SELECT *
FROM diak d RIGHT JOIN jegy j ON d.id = j.diakId;

SELECT *
FROM diak d LEFT JOIN jegy j ON d.id = j.diakId;



-- 5. És ha tényleg minden adat kell?
-- => az a diák is aki nem kapott jegyet
-- => az a jegy is, amit nem tudunk ki kapott

-- FULL OUTER JOIN -> MariaDB-ben nincs
SELECT *
FROM diak d FULL JOIN jegy j ON d.id = j.diakId;
