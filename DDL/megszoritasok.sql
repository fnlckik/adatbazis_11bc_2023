-- CONSTRAINT: megszorítás, megkötés

-- A) Alapértelmezett érték
ALTER TABLE diak
ADD osztondij INT UNSIGNED DEFAULT 2000;

-- Mező módosítás (alapértelmezett érték elhagyása)
ALTER TABLE diak
ALTER osztondij DROP DEFAULT;

-- Mező módosítás (alapértelmezett érték megadása)
ALTER TABLE diak
ALTER osztondij SET DEFAULT 20000;

-- B) NOT NULL
ALTER TABLE diak
MODIFY id INT NOT NULL;
-- Mj: korábbi NULL értéket a típus egységelemére állítja

-- Innentől újra lehet NULL az érték
ALTER TABLE diak
MODIFY id INT NULL;

-- C) Egyedi értékek (unique, kulcs)
ALTER TABLE diak
ADD CONSTRAINT UQ_Diak_Id UNIQUE (id);

-- Kulcs törlése
ALTER TABLE diak
DROP CONSTRAINT UQ_Diak_Atlag;

-- Összetett kulcs megadása
ALTER TABLE diak
ADD CONSTRAINT UQ_Diak_NSzA UNIQUE (nev, szuletes, atlag);

-- D) Elsődleges kulcs (primary key)
-- Emlék: egy kitüntetett tulajdonságú kulcs
-- Elsődleges kulcs egyetlen darab lehet!
-- Kitüntetett tulajdonság: NOT NULL
ALTER TABLE diak
ADD CONSTRAINT PK_Diak PRIMARY KEY (id);

-- Elsődleges kulcs törlése
ALTER TABLE diak
DROP PRIMARY KEY;

-- Automatikusan növekvő mező (sorszám)
-- Csak PK mező esetén!!!
ALTER TABLE diak
MODIFY id INT NOT NULL AUTO_INCREMENT;

-- E) Ellenőrző feltétel
-- Tiltó feltétel! Csak a FALSE értéket szűri ki!
ALTER TABLE diak
ADD CONSTRAINT CHK_Diak_Atlag CHECK (1<=atlag AND atlag<=5);

-- Nem egyenlo szintén: !=
ALTER TABLE diak
ADD CONSTRAINT CHK_Diak_Szuletes CHECK (szuletes <> "0000-00-00");

-- 
-- ALTER TABLE diak
-- ADD CONSTRAINT CHK_Diak_Osztondij CHECK (osztondij = 20000 OR osztondij = 40000 OR osztondij = 60000);
ALTER TABLE diak
ADD CONSTRAINT CHK_Diak_Osztondij CHECK (osztondij IN (20000, 40000, 60000));
