-- CONSTRAINT: megszorítás, megkötés

-- A) Alapértelmezett érték
ALTER TABLE diak
ADD osztondij INT UNSIGNED DEFAULT 8000;

-- Alapértelmezett érték megváltoztatása
ALTER TABLE diak
ALTER osztondij SET DEFAULT 20000;

-- Alapértelmezett érték törlése
ALTER TABLE diak
ALTER osztondij DROP DEFAULT;

-- B) Kötelező mező
-- Nem lehet NULL a mező értéke
-- NULL helyett a típus egységeleme lesz a korábbi!
ALTER TABLE diak
MODIFY atlag FLOAT NOT NULL;

-- Mégis lehessen NULL?
ALTER TABLE diak
MODIFY atlag FLOAT NULL;

-- C) Egyedi érték (unique, kulcs)
-- UC_Diak_Id
ALTER TABLE diak
ADD CONSTRAINT UQ_Diak_Id UNIQUE (id);

-- Kulcs törlése
ALTER TABLE diak
DROP CONSTRAINT UQ_Diak_Id;

-- Összetett kulcs megadása
ALTER TABLE diak
ADD CONSTRAINT UQ_Diak_NevSzulAtl UNIQUE (nev, szuletes, atlag);

-- D) Elsődleges kulcs
-- Kitüntetett tulajdonság: az elsődleges kulcs NOT NULL
-- Egy darab elsődleges kulcs lehet
ALTER TABLE diak
ADD CONSTRAINT PK_Diak PRIMARY KEY (id);

-- Elsődleges kulcs törlése
ALTER TABLE diak
DROP PRIMARY KEY;

