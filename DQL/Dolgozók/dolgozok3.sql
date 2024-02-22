-- 1. Készíts monogramot minden dolgozó nevéből!
-- Pl.: Szabó Gergely => S. G.
-- LEFT(szoveg, mennyit), 
-- RIGHT(szoveg, mennyit),
-- SUBSTR(szoveg, honnan, [mennyit])
SELECT
    vnev, knev,
    CONCAT(
        LEFT(vnev, 1), ". ",
        LEFT(knev, 1), "."
    ) AS monogram
FROM Dolgozok;


-- 2. Írjuk ki a dolgozók vezetékneveit, de a karakterek fordított sorrendben legyenek!
-- Az eredetileg első karaktert ne írjuk ki!
-- Székely => ylekézS => ylekéz
-- REVERSE(szoveg): megfordít egy szöveget
-- LENGTH(szoveg): Hány bájtot foglalnak a karakterek?
-- CHAR_LENGTH(szoveg): Hány karakterből áll a szöveg?
SELECT vnev, LEFT(REVERSE(vnev), CHAR_LENGTH(vnev) - 1) AS ize
FROM Dolgozok;

SELECT vnev, REVERSE(RIGHT(vnev, CHAR_LENGTH(vnev) - 1)) AS ize
FROM Dolgozok;

SELECT vnev, REVERSE(SUBSTR(vnev, 2)) AS ize
FROM Dolgozok;



-- 3. Add meg a dolgozók lakhelyeinél a közterület nevét és jellegét!
-- Pl.: "Veszprémi utca"
-- Gond: "Arany jános utca"

-- Nézd már, nem működik a csoda függvény!
-- SELECT SUBSTRING_INDEX(cim, " ", 2)
-- FROM Dolgozok;

-- LOCATE(keresett_szoveg, szoveg)
SELECT 
    cim, 
    LEFT(
        cim,
        CHAR_LENGTH(cim) - LOCATE(" ", REVERSE(cim))
    )
FROM Dolgozok;


-- 4. Add meg a "/" karaktert tartalmazó telefonszámok lényegi (utolsó 7) számjegyét!
SELECT vnev, telefonszam, RIGHT(telefonszam, 8)
FROM Dolgozok
WHERE telefonszam LIKE "%/%";

-- Ne használd ki, hogy egy darab "-" vagy " " választja el egymástól a 7 jegyet!
SELECT 
    vnev, telefonszam,
    RIGHT(
        telefonszam, 
        LOCATE("/", REVERSE(telefonszam)) - 1
    )
FROM Dolgozok
WHERE telefonszam LIKE "%/%";

-- LOCATE: ha nincs benne a keresett szöveg, akkor 0 az értéke
SELECT
    vnev, telefonszam,
    RIGHT(
        telefonszam,
        CHAR_LENGTH(telefonszam) - LOCATE("/", telefonszam)
    ) AS szamjegyek
FROM Dolgozok
WHERE LOCATE("/", telefonszam) <> 0;

SELECT
    vnev, telefonszam,
    SUBSTR(
        telefonszam,
        LOCATE("/", telefonszam) + 1
    ) AS szamjegyek
FROM Dolgozok
WHERE LOCATE("/", telefonszam) <> 0;


-- 5. Add meg a női dolgozók vezetéknevét!
-- Minden név legyen egyedi!
-- DISTINCT: egyedi rekordokat tart meg, SELECT-hez tartozik
SELECT DISTINCT vnev
FROM Dolgozok
WHERE nem = "N";




-- 6. Az 1988 és 1990 között született emberek
-- melyik évben kezdtek a cégnél dolgozni?
-- Jelenítsd meg a születési és a kezdési évszámot!
-- Csak egyedi sorokat listázz!
SELECT DISTINCT YEAR(szuletes) AS szuletes, YEAR(kezdes) AS kezdes
FROM Dolgozok
WHERE 1988 <= YEAR(szuletes) AND YEAR(szuletes) <= 1990;


-- a <= x <= b
-- a <= x AND x <= b
-- x BETWEEN a AND b
-- "Között" operátorral:
SELECT DISTINCT YEAR(szuletes) AS szuletes, YEAR(kezdes) AS kezdes
FROM Dolgozok
WHERE YEAR(szuletes) BETWEEN 1988 AND 1990;




-- 7. Sorold fel az email kiszolgálók neveit!
-- Minden nevet csak egyszer jeleníts meg!
-- Pl.: example.org
SELECT DISTINCT SUBSTR(email, LOCATE("@", email) + 1) AS kiszolgalok
FROM Dolgozok
WHERE email IS NOT NULL;

SELECT DISTINCT SUBSTR(email, LOCATE("@", email) + 1) AS kiszolgalok
FROM Dolgozok
WHERE SUBSTR(email, LOCATE("@", email) + 1) IS NOT NULL;

SELECT DISTINCT SUBSTR(email, LOCATE("@", email) + 1) AS kiszolgalok
FROM Dolgozok
WHERE LOCATE("@", email) <> 0;

SELECT DISTINCT SUBSTR(email, LOCATE("@", email) + 1) AS kiszolgalok
FROM Dolgozok
WHERE email LIKE "%@%";

SELECT DISTINCT
    RIGHT(
        email,
        CHAR_LENGTH(email) - LOCATE("@", email)
    ) AS kiszolgalok
FROM Dolgozok
WHERE email LIKE "%@%";

-- Rossz!
-- SELECT DISTINCT SUBSTR(email, LOCATE("@", email) + 1) AS kiszolgalok
-- FROM Dolgozok
-- WHERE kiszolgalok IS NOT NULL;
-- Vigyázat! Sorrend: FROM -> WHERE -> SELECT