-- F9
SELECT *
FROM Tulajdonos
WHERE szuletes LIKE "%-08-%";

-- F10
DELETE
FROM Tulajdonos
WHERE szuletes < "1990-01-01";

-- F11
UPDATE Tulajdonos
SET telefon = NULL
WHERE telefon LIKE "__20%";

-- F12
-- wifi = FALSE
-- wifi = 0
SELECT *
FROM Kavezo
WHERE NOT wifi AND forgalom = "tömeg";

-- F13
-- fizetes = fizetes - fizetes * 0.05
-- WHERE TRUE
UPDATE Tulajdonos
SET fizetes = fizetes * 0.95;

-- F14
UPDATE Kavezo
SET ertekeles = ertekeles - 1.5
WHERE cim LIKE "Veszprém%";

-- F15

