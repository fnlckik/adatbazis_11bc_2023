-- Halmaz műveletek:

-- a) Unio - legalább az egyikben benne van
SELECT *
FROM diak d RIGHT JOIN jegy j ON d.id = j.diakId
UNION
SELECT *
FROM diak d LEFT JOIN jegy j ON d.id = j.diakId;

-- b) Metszet - közös elemek
SELECT *
FROM diak d RIGHT JOIN jegy j ON d.id = j.diakId
INTERSECT
SELECT *
FROM diak d LEFT JOIN jegy j ON d.id = j.diakId;

-- c) Különbség - elsőben benne van, másodikban nincs
-- Azok a jegyek, amiket nem tudjuk ki kapott:
SELECT *
FROM diak d RIGHT JOIN jegy j ON d.id = j.diakId
EXCEPT
SELECT *
FROM diak d LEFT JOIN jegy j ON d.id = j.diakId;


-- -----------------------------------------------
-- 6. Kik azok a diákok (nev), akik kaptak már 3-mast
-- valamilyen tárgyból? Mindegyikük nevét csak egyszer
-- jelenítsük meg!
SELECT *
FROM diak INNER JOIN jegy ON diak.id = jegy.diakId
WHERE osztalyzat = 3;


-- 7. Kik azok a diákok, akik nem kaptak még 3-mast
-- egyetlen tárgyból sem?




-- 8. Kik azok a diákok (nev), akik webprogból
-- és fizikából is kaptak már jegyet?




-- 9. Jelenítsük meg:
-- azokat a diákokat, akiknek nincs jegyük, továbbá
-- azokat a jegyeket, amelyek nem tudjuk kihez tartoznak!
-- Ezeken kívül semmilyen más adatot ne listázzunk!




-- 10.
-- a) Adjuk meg azokat a napló bejegyzéseket, amelyek
-- esetén az osztályzat 5-ös (akkor is ha nem tudjuk, hogy
-- melyik diákhoz tartozik)!
-- b) A listát a diákok neve szerint abc sorrendben
-- jelenítsük meg!
-- c) Ne tartsuk meg azon rekordokat, ahol a diákról
-- biztosan tudjuk, hogy 2000-ben született!
-- d) Kerüljenek a lista végére azon rekordok, ahol
-- nem ismerjük a diák nevét!



