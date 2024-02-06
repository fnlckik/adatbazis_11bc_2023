-- F1
-- Add meg a születési dátumokat más formában!
-- Alapértelmezett: "%Y-%m-%d"
SELECT 
    vnev, knev, szuletes,
    DATE_FORMAT(szuletes, "%Y. %m. %d.") AS sz_d,
    DATE_FORMAT(szuletes, "%Y. %M %d., %W", "hu_HU") AS sz_d2
FROM Dolgozok;




-- F2
-- Add meg a dolgozók születési évét, hónapját és napját!
SELECT
    vnev, knev, szuletes,
    YEAR(szuletes) AS ev,
    MONTH(szuletes) AS honap,
    DAY(szuletes) AS nap
FROM Dolgozok;




-- F3
-- Add meg a dolgozók születési hónapját vezető 0-kal kiegészítve!
SELECT
    vnev, knev, szuletes,
    IF(MONTH(szuletes) < 10,
        CONCAT("0", MONTH(szuletes)),
        MONTH(szuletes)    
    ) AS honap
FROM Dolgozok;

-- Másképp: bal oldali "tömés" - LPAD, RPAD
-- LPAD(Mit?, Milyen hosszura?, Milyen karakterrel?)
SELECT
    vnev, knev, szuletes,
    LPAD(MONTH(szuletes), 2, 0) AS honap
FROM Dolgozok;

-- Másképp dátum formátum?
-- 2024. 02. 06.
SELECT
    vnev, knev, szuletes,
    CONCAT(
        YEAR(szuletes),
        ". ",
        LPAD(MONTH(szuletes), 2, 0),
        ". ",
        LPAD(DAY(szuletes), 2, 0),
        "."
    ) AS sz_datum
FROM Dolgozok;




-- F4
-- Add meg a mai napot és az aktuális időt (ó, p, mp)!
-- CURRENT DATE => CURDATE() => DATE
-- CURRENT TIME => CURTIME() => TIME
-- NOW() => DATETIME
SELECT
    CURDATE(), CURTIME(), NOW(),
    HOUR(CURTIME()), MINUTE(CURTIME()), SECOND(CURTIME());




-- F5
-- Add meg a 42 nappal későbbi dátumot!

-- Rossz
-- SELECT CURDATE() + 42;

SELECT DATE_ADD(CURDATE(), INTERVAL 42 DAY);



-- F6
-- Add meg, hány nap múlva lesz karácsony!


-- Precízebben: ne függjünk az évtől sem!





-- F7
-- Hány naposak a dolgozók?





-- F8
-- Adjuk meg, hogy mennyi idősek a dolgozók!


-- Precízebben: Hány éves korukat töltötték már be idén?


