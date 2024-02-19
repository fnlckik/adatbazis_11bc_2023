-- 1. Készíts monogramot minden dolgozó nevéből!
-- Pl.: S. G.
-- LEFT(szoveg, karakterek_szama)
SELECT 
    vnev, knev,
    CONCAT(
        LEFT(vnev, 1), ". ",
        LEFT(knev, 1), "."
    ) AS monogram
FROM Dolgozok;



-- 2. Írjuk ki a dolgozók vezetékneveit, de a karakterek fordított sorrendben legyenek!
-- Az eredetileg első karaktert ne írjuk ki!
-- Pl.: ylekéz

-- MO1
-- SUBSTR(szoveg, honnantol, [hany_karakter])
SELECT vnev, REVERSE(SUBSTR(vnev, 2)) AS forditott
FROM Dolgozok;

-- MO2
-- LENGTH(szoveg): hány bájtot foglal egy szöveg
-- CHAR_LENGTH(szoveg): hány karakterből áll egy szöveg
SELECT vnev, LEFT(REVERSE(vnev), CHAR_LENGTH(vnev)-1) AS forditott
FROM Dolgozok;




-- 3. Add meg a dolgozók lakhelyeinél a közterület nevét és jellegét!
-- Pl.: "Veszprémi utca"
-- CHAR_LENGTH, LEFT
SELECT cim, LEFT(cim, CHAR_LENGTH(cim) - LOCATE(" ", REVERSE(cim))) AS kozterulet
FROM Dolgozok;




-- 4. Add meg a "/" karaktert tartalmazó telefonszámok lényegi (utolsó 7) számjegyét!
SELECT telefonszam, RIGHT(telefonszam, 8) AS utso_szamok
FROM Dolgozok
WHERE telefonszam LIKE "%/%";


-- Ne használd ki, hogy egy darab "-" vagy " " választja el egymástól a 7 jegyet!
SELECT telefonszam, SUBSTR(telefonszam, LOCATE("/", telefonszam) + 1) AS utso_szamok
FROM Dolgozok
WHERE telefonszam LIKE "%/%";




-- 5. Add meg a női dolgozók vezetéknevét!
-- Minden név legyen egyedi!
-- DISTINCT: egyedi rekordok maradnak (SELECT-hez tartozik)
SELECT DISTINCT vnev
FROM Dolgozok
WHERE nem = "N";




-- 6. Az 1988 és 1990 között született emberek
-- melyik évben kezdtek a cégnél dolgozni?
-- Jelenítsd meg a születési és a kezdési évszámot!
-- Csak egyedi sorokat listázz!

SELECT DISTINCT YEAR(szuletes), YEAR(kezdes)
FROM Dolgozok
WHERE 1988 <= YEAR(szuletes) AND YEAR(szuletes) <= 1990;
-- WHERE szuletes >= "1988-01-01" AND szuletes <= "1990-12-31"

-- "x" az "a" és "b" között van: a <= x <= b
-- Programozás: a <= x AND x <= b
-- "Között" operátorral:
SELECT DISTINCT YEAR(szuletes), YEAR(kezdes)
FROM Dolgozok
WHERE YEAR(szuletes) BETWEEN 1988 AND 1990;




-- 7. Sorold fel az email kiszolgálók neveit!
-- Minden nevet csak egyszer jeleníts meg!
-- Pl.: example.org, freemail.hu, gmail.com ...
SELECT DISTINCT SUBSTR(email, LOCATE("@", email) + 1) AS kiszolgalo
FROM Dolgozok;

SELECT DISTINCT RIGHT(email, LOCATE("@", REVERSE(email)) - 1) AS kiszolgalo
FROM Dolgozok;