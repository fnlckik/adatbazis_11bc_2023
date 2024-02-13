-- F1
-- Add meg a születési dátumokat más formában!
-- 2024. 02. 06.
-- Y: year, m: month, d: day
SELECT
    vnev, knev, szuletes,
    DATE_FORMAT(szuletes, "%Y. %m. %d.") AS sz_datum,
    DATE_FORMAT(szuletes, "%Y. %M %d., %W", "hu_HU") AS sz_datum2
FROM Dolgozok;




-- F2
-- Add meg a dolgozók születési évét, hónapját és napját!
SELECT 
    vnev, knev, szuletes,
    YEAR(szuletes) AS év,
    MONTH(szuletes) AS hónap,
    DAY(szuletes) AS nap
FROM Dolgozok;




-- F3
-- Add meg a dolgozók születési hónapját vezető 0-kal kiegészítve!
SELECT 
    vnev, knev, szuletes,
    IF(MONTH(szuletes) < 10,
        CONCAT("0", MONTH(szuletes)),
        MONTH(szuletes)
    ) AS hónap
FROM Dolgozok;

-- Másképp: bal oldali "tömés"
-- LPAD: left padding
-- LPAD(Mit?, Milyen hosszura?, Milyen karakterekkel?)
-- SELECT LPAD("alma", 12, "#"), LPAD("cseresznye", 12, "#");
-- RPAD: right padding
-- SELECT RPAD(1200.05, 10, 0), RPAD(200.05, 10, 0);
SELECT 
    vnev, knev, szuletes,
    LPAD(MONTH(szuletes), 2, 0) AS hónap
FROM Dolgozok;


-- Másképp dátum formátum?
-- 2024. 02. 08.
SELECT 
    vnev, knev, szuletes,
    CONCAT(
        YEAR(szuletes), ". ",
        LPAD(MONTH(szuletes), 2, 0), ". ",
        LPAD(DAY(szuletes), 2, 0), "."
    ) AS sz_datum
FROM Dolgozok;

SELECT 
    vnev, knev, szuletes,
    CONCAT(
        YEAR(szuletes),
        ". ",
        IF(MONTH(szuletes) < 10,
            CONCAT("0", MONTH(szuletes)),
            MONTH(szuletes)
        ),
        ". ",
        IF(DAY(szuletes) < 10,
            CONCAT("0", DAY(szuletes)),
            DAY(szuletes)
        ),
        "."
    ) AS sz_datum,
    DATE_FORMAT(szuletes, "%Y. %m. %d.") AS sz_datum2
FROM Dolgozok;




-- F4
-- Add meg a mai napot és az aktuális időt (ó, p, mp)!
-- CURDATE(): current date => DATE
-- CURTIME(): current time => TIME
-- NOW(): current date + time => DATETIME
-- vagy: CURRENT_TIMESTAMP()
SELECT
    CURDATE() AS dátum,
    CURTIME() AS idő,
    NOW() AS dátum_idő,
    HOUR(CURTIME()) AS óra,
    MINUTE(CURTIME()) AS perc,
    SECOND(CURTIME()) AS másodperc;
    -- CONCAT(CURDATE(), " ", CURTIME()) AS dátum_idő;




-- F5
-- Add meg a 42 nappal későbbi dátumot!
-- YEAR, QUARTER, MONTH, DAY, HOUR, MINUTE
SELECT DATE_ADD(CURDATE(), INTERVAL 42 DAY);




-- F6
-- Add meg, hány nap múlva lesz karácsony!
-- DATEDIFF(mibol, mit): hány nap telik el a két dátum között
SELECT DATEDIFF("2024-12-24", CURDATE());


-- Precízebben: ne függjünk az évtől sem!
SELECT DATEDIFF(
        CONCAT(YEAR(CURDATE()), "-12-24"),
        CURDATE()
    );

SELECT DATEDIFF(
        CONCAT(YEAR("2027-02-13"), "-12-24"),
        "2027-02-13"
    );

-- Hány nap van február 7-ig?
SELECT DATEDIFF(
        CONCAT(YEAR(CURDATE()), "-02-07"),
        CURDATE()
    );

-- F7
-- Hány naposak a dolgozók?





-- F8
-- Adjuk meg, hogy mennyi idősek a dolgozók!


-- Precízebben: Hány éves korukat töltötték már be idén?


