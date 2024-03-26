-- Csoportosítás: GROUP BY

-- Aggregátum (összesítő) függvények:
-- COUNT, SUM, AVG, MIN, MAX

-- AVG: average (átlag)

-- 1. Adjuk meg tantárgyanként:
-- a) Hány jegyet adtak eddig?
-- b) Mi a legrosszabb jegy?
-- c) Mennyi a jegyek átlaga?
SELECT 
    targy,
    COUNT(osztalyzat) AS jegyek_szama,
    MIN(osztalyzat) AS legrosszabb_jegy,
    ROUND(AVG(osztalyzat), 2) AS atlag,
    ROUND(SUM(osztalyzat) / COUNT(osztalyzat), 2) AS atlag2
FROM jegy
GROUP BY targy;



-- 2. Adjuk meg, hogy melyik
-- diák átlaga a legjobb!
-- Mezők: id, nev, atlag
-- Mo: 4 - Molnár Dávid - 4.5
SELECT diak.id, nev, AVG(osztalyzat) AS atlag
FROM diak INNER JOIN jegy ON diak.id = jegy.diakId
GROUP BY diak.id
ORDER BY atlag DESC
LIMIT 1;
-- Gond: Mi van akkor, ha több ember átlaga is 4.5?
-- Válasz: esetleg később...


-- 3. Adjuk meg, hogy az egyes
-- években hány diák született!
-- Megoldás:
-- 1999 2
-- 2000 1
-- 2001 3
SELECT YEAR(datum), COUNT(*)
FROM diak
GROUP BY YEAR(datum);


-- 4. Adjuk meg tárgyanként, hogy
-- hány különböző(!) diák kapott már a tárgyból jegyet!

-- Módosítás: fizikából csak 2 diák kapjon jegyet, ne három!
UPDATE jegy
SET diakId = 1
WHERE id = 7;

-- Rossz mo:
SELECT targy, COUNT(*)
FROM jegy
GROUP BY targy;

-- Jó mo:
SELECT targy, COUNT(DISTINCT diakId)
FROM jegy
GROUP BY targy;

-- Megjegyzés:
-- COUNT(*): Hány rekord van?
-- COUNT(diakId): Hány rekord van, ahol a diakId nem NULL?
-- COUNT(DISTINCT diakId): Hány rekord van, ahol a diakId egyedi?



-- 5. Jelenítsük meg tantárgyanként, hogy
-- az egyes tanulóknak hány jegye van!
-- Mezők: targy, nev, jegyek_szama

-- Pl.:
-- Fizika, Kovács Anna, 2
-- Fizika, Szabó Eszter, 1
SELECT targy, nev, COUNT(*)
FROM diak INNER JOIN jegy ON diak.id = jegy.diakId
GROUP BY jegy.targy, diak.id


-- Csoportra vonatkozó feltétel!
-- 6. Adjuk meg azokat a tárgyakat,
-- amelyekből már legalább 3 jegyet adtak!
-- Mezők: targy, jegyek_szama




-- 7.
-- Tekintsük azokat a tárgyakat, amelyek
-- nem "A" betűvel kezdődnek, valamint
-- senki sem kapott még 5-öst belőlük.
-- (Azaz: DigKult, Fizika, Irodalom, Német, Rajz)

-- Kik azok a diákok, akik már kaptak ilyen
-- tárgyból jegyet? Adjuk meg névsor szerint
-- az első két ilyen diák nevét!
-- Mo: Kovács Anna, Molnár Dávid



