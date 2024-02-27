-- Záradékok sorrendje:
-- FROM -> WHERE -> SELECT

-- 1. FROM
-- 2. WHERE
-- 3. ???
-- 4. ???
-- 5. SELECT
-- 6. ORDER BY
-- 7. LIMIT

-- 1. Add meg 7 darab férfi dolgozó minden adatát!
SELECT *
FROM Dolgozok
WHERE nem = "F"
LIMIT 7;



-- 2. Add meg a rekordokat 
-- a foglalkozások szerinti névsorrendben!
SELECT *
FROM Dolgozok
ORDER BY pozicio ASC;
-- ASC: ascendint, növekvő sorba rendez



-- 3. Sorold fel a dolgozókat fizetés szerinti sorrendben!
-- Először a magas fizetésűek legyenek!
SELECT *
FROM Dolgozok
ORDER BY fizetes DESC;
-- DESC: descending, csökkenő sorba rendez




-- 4. Sorold fel a dolgozókat névsor szerint! (vnev, knev)
-- Kétszintű rendezés:
-- elsőként a vnev szerint rendez
-- egyező vnev esetén knev dönt
SELECT *
FROM Dolgozok
ORDER BY vnev, knev;
-- ORDER BY vnev ASC, knev DESC

-- Konkatenáció + alias:
-- SELECT id, CONCAT(vnev, " ", knev) AS nev
-- FROM Dolgozok
-- ORDER BY CONCAT(vnev, " ", knev);
SELECT id, CONCAT(vnev, " ", knev) AS nev
FROM Dolgozok
ORDER BY nev;




-- 5. Kinek a legnagyobb a jutalma?
SELECT *
FROM Dolgozok
ORDER BY jutalom DESC
LIMIT 1;

-- Legkisebb jutalmú, akinek tényleg van jutalma?
SELECT *
FROM Dolgozok
WHERE jutalom > 0
ORDER BY jutalom ASC
LIMIT 1;




-- 6. Kik azok a dolgozók, akiknek a fizetése 
-- a legnagyobb 10 közé tartozik, de nem a top 3-ba?
SELECT *
FROM Dolgozok
ORDER BY fizetes DESC
LIMIT 7 OFFSET 3;
-- OFFSET: eltolás

-- Rövidítve:
SELECT *
FROM Dolgozok
ORDER BY fizetes DESC
LIMIT 3, 7;




-- ----------------------------------
-- 7. Ki a legidősebb (vnev, knev) azok közül 
-- akiknek nem ismerjük a telefonszámát?




-- 8. Mi lenne a dolgozók fizetes szerinti csökkenő sorrendje
-- ha a nők fizetését kétszereznénk?





-- 9. Add meg az 5 legrövidebb nevű dolgozó teljes nevét!





-- 10. Add meg azokat a férfiakat, akik
-- ugyanazon hónapban kezdtek dolgozni, mint amikor születtek!
-- Írd ki róluk a következő adatokat:
-- - vezetéknév, keresztnév, pozíció
-- - nettó kereset (a fizetés 67%-a egészre kerekítve)
-- - email (csak a fiók nevét, a szolgáltatót ne)
-- - a hét melyik napjára esett az első munkanapjuk
-- - mi a házszámuk
-- A listázást a pozíció hossza szerinti növekvő sorrendben csináld
-- csak az első 4 dolgozó adatát jelenítsd meg!





-- 11. Tekintsük azokat a dolgozókat, akiknek
-- ismerjük a nemét, és valamilyen "utca" szerepel a címben!
-- Rendezzük az embereket vezetéknév alapján növekvően,
-- azon belül pedig születésnap szerint csökkenően!

-- Mj.: Születésnap alatt itt azt értjük, hogy
-- a születésnapja melyik hónap melyik napjára esik!
-- Pl.: Kiss Zita korábban van, mint Kiss László, mert
-- 11-06 születésnap később van, mint 07-02

-- Listázzuk az első 15 ilyen ember vezetéknevét és nemét!
-- Egyedi rekordok legyenek a lekérdezés eredményében!
