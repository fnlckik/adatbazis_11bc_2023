-- F1
-- Add meg a születési dátumokat más formában!
-- 2024. 02. 06.
-- Y: year, m: month, d: day
SELECT
    vnev, knev, szuletes,
    DATE_FORMAT(szuletes, "%Y. %m. %d.") AS sz_datum,
    DATE_FORMAT(szuletes, "%Y. %M %d.", ???) AS sz_datum2
FROM Dolgozok;




-- F2
-- Add meg a dolgozók születési évét, hónapját és napját!





-- F3
-- Add meg a dolgozók születési hónapját vezető 0-kal kiegészítve!


-- Másképp: bal oldali "tömés"


-- Másképp dátum formátum?





-- F4
-- Add meg a mai napot és az aktuális időt (ó, p, mp)!





-- F5
-- Add meg a 42 nappal későbbi dátumot!





-- F6
-- Add meg, hány nap múlva lesz karácsony!


-- Precízebben: ne függjünk az évtől sem!





-- F7
-- Hány naposak a dolgozók?





-- F8
-- Adjuk meg, hogy mennyi idősek a dolgozók!


-- Precízebben: Hány éves korukat töltötték már be idén?


