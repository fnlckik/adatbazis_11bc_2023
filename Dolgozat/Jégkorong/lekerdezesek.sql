-- F1
SELECT datum, helyszin, ellenfel
FROM Merkozes
WHERE mpont > epont;

-- F2
SELECT
    datum, ellenfel,
    COALESCE(lott, 0) - kapott AS golkulonbseg
FROM Merkozes;

-- SELECT
--     datum, ellenfel,
--     IF(lott IS NULL, 0, lott) - kapott AS golkulonbseg
-- FROM Merkozes;

-- F3
SELECT DISTINCT tipus
FROM Merkozes
WHERE tipus IS NOT NULL;

-- F4
SELECT datum, mpont
FROM Merkozes
ORDER BY mpont DESC
LIMIT 1;

-- F5
SELECT 
    CONCAT(LEFT(ellenfel, 2), "-Hu") AS resztvevok,
    datum
FROM Merkozes
WHERE MONTH(datum) = 2
ORDER BY resztvevok, datum;

-- F6
SELECT 
    datum,
    CONCAT(
        LPAD(ora, 2, 0),
        ":",
        LPAD(perc, 2, 0)
    ) AS idotartam
FROM Merkozes;

SELECT 
    datum,
    CONCAT(
        IF(ora < 10, CONCAT("0", ora), ora),
        ":",
        IF(perc < 10, CONCAT("0", perc), perc)
    ) AS idotartam
FROM Merkozes;

-- F7
SELECT 
    ellenfel,
    DATE_ADD(CURDATE(), INTERVAL -50 YEAR) AS idopont
FROM Merkozes
WHERE datum IS NULL;

SELECT 
    ellenfel,
    CONCAT(
        YEAR(CURDATE()) - 50, "-",
        LPAD(MONTH(CURDATE()), 2, 0), "-",
        LPAD(DAY(CURDATE()), 2, 0)
    ) AS idopont
FROM Merkozes
WHERE datum IS NULL;

-- F8 - Bonusz
SELECT DISTINCT ellenfel
FROM Merkozes
WHERE mpont > epont AND lott < kapott
ORDER BY IF(ellenfel = "Romania", 1, 0) DESC, CHAR_LENGTH(ellenfel);