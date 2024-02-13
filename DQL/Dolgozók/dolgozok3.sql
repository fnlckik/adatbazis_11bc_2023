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
SELECT cim, LOCATE(" ", REVERSE(cim))
FROM Dolgozok;




-- 4. Add meg a "/" karaktert tartalmazó telefonszámok lényegi (utolsó 7) számjegyét!



-- Ne használd ki, hogy egy darab "-" vagy " " választja el egymástól a 7 jegyet!





-- 5. Add meg a női dolgozók vezetéknevét!
-- Minden név legyen egyedi!





-- 6. Az 1988 és 1990 között született emberek
-- melyik évben kezdtek a cégnél dolgozni?
-- Jelenítsd meg a születési és a kezdési évszámot!
-- Csak egyedi sorokat listázz!



-- "Között" operátorral:





-- 7. Sorold fel az email kiszolgálók neveit!
-- Minden nevet csak egyszer jeleníts meg!


