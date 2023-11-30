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
-- Mj: előtte törölni kell az AUTO_INCREMENT tulajdonságot
ALTER TABLE diak
DROP PRIMARY KEY;

-- Automatikusan növekvő mező
-- csak egy auto_increment mező lehet (a PK)
ALTER TABLE diak
MODIFY id INT AUTO_INCREMENT;

-- Máshonnan induljon az AUTO_INCREMENT
ALTER TABLE diak
AUTO_INCREMENT = 100;

-- E) Ellenőrző feltétel (CHECK)
-- Tiltó feltétel (FALSE értéket nem enged beszúrni)
ALTER TABLE diak
ADD CONSTRAINT CHK_Diak_Atlag CHECK (1 <= atlag AND atlag <= 5);

-- Csak helyes dátum legyen megadható ("0000-00-00" ne)
ALTER TABLE diak
ADD CONSTRAINT CHK_Diak_Szuletes CHECK (szuletes != "0000-00-00");

ALTER TABLE diak
ADD CONSTRAINT CHK_Diak_Szuletes CHECK (szuletes <> "0000-00-00");

ALTER TABLE diak
ADD CONSTRAINT CHK_Diak_Szuletes CHECK (NOT(szuletes = "0000-00-00"));
