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

