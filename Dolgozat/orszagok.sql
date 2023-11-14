-- F1
-- KL - 1
CREATE DATABASE orszagok_cs1;

-- F2
-- KL - 1
CREATE TABLE adatok (
    azon TINYINT UNSIGNED, -- ML - 1
    nev VARCHAR(90), -- ML - 1
    fovaros VARCHAR(189), -- KL - 1
    terulet FLOAT, -- KL - 1
    lakossag INT, -- ML - 1
    nemzeti DATE, -- ML - 1
    kod CHAR(2) -- ML - 1
);

-- F3
-- KL - 2p
ALTER TABLE adatok
ADD kontinens VARCHAR(15);

-- F4
-- ML - 1p
RENAME TABLE adatok TO orszag;

-- F5
-- KL - 1p
ALTER TABLE orszag
MODIFY fovaros VARCHAR(201);

-- F6
-- KL - 2p
INSERT INTO orszag
VALUES
(1, "Magyarország", "Budapest", 93022.6, 9597085, "1848-03-15", "HU", "Európa"),
(2, "Olaszország", "Róma", 301340, 60360000, "1945-04-25", "IT", "Európa");

-- F7
SELECT * FROM orszag;

-- F8
-- ML - 1p
TRUNCATE orszag;

-- F9
-- KL - 1p
DROP DATABASE orszag_cs1;


