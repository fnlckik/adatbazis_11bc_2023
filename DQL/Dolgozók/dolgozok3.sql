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
FROM Dolgozok;

-- Ne használd ki, hogy egy darab "-" vagy " " választja el egymástól a 7 jegyet!
SELECT 
    vnev, telefonszam,
    RIGHT(telefonszam, 
        LOCATE("/", REVERSE(telefonszam)) - 1
    )
FROM Dolgozok
WHERE telefonszam LIKE "%/%";




-- 5. Add meg a női dolgozók vezetéknevét!
-- Minden név legyen egyedi!





-- 6. Az 1988 és 1990 között született emberek
-- melyik évben kezdtek a cégnél dolgozni?
-- Jelenítsd meg a születési és a kezdési évszámot!
-- Csak egyedi sorokat listázz!



-- "Között" operátorral:





-- 7. Sorold fel az email kiszolgálók neveit!
-- Minden nevet csak egyszer jeleníts meg!


