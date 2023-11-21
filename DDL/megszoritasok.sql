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
ALTER TABLE diak
ADD CONSTRAINT alma UNIQUE (id);
