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
GROUP BY diak.id;



-- 3. Adjuk meg, hogy az egyes
-- években hány diák született!




-- 4. Adjuk meg tárgyanként, hogy
-- hány különböző(!) diák kapott már a tárgyból jegyet!

-- Módosítás: fizikából csak 2 diák kapjon jegyet, ne három!
UPDATE jegy
SET diakId = 1
WHERE id = 7;




-- 5. Jelenítsük meg tantárgyanként, hogy
-- az egyes tanulóknak hány jegye van!




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



