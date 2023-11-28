-- F1
CREATE DATABASE Karacsony;

-- F2-F3
-- ALTER TABLE Szemely
-- ADD CONSTRAINT PK_Szemely PRIMARY KEY (id);
-- CONSTRAINT: megkötés, megszorítás, (záradék)
CREATE TABLE Szemely (
    id INT AUTO_INCREMENT,
    nev VARCHAR(255) NOT NULL,
    csalados_e BOOLEAN DEFAULT FALSE,
    gyerekek TINYINT DEFAULT 0,
    CONSTRAINT PK_Szemely PRIMARY KEY (id),
    CONSTRAINT UQ_Szemely_Nev UNIQUE (nev),
    CONSTRAINT CHK_Szemely_Gyerekek CHECK (0 <= gyerekek AND gyerekek <= 20)
);

CREATE TABLE KapottAjandek (
    id INT AUTO_INCREMENT,
    szemely_id INT,
    ajandek_id INT,
    datum DATE,
    CONSTRAINT PK_KapottAjandek PRIMARY KEY (id)
);

CREATE TABLE Ajandek (
    id INT AUTO_INCREMENT,
    nev VARCHAR(255) NOT NULL,
    ar INT,
    tomeg FLOAT,
    szarmazas VARCHAR(50) DEFAULT "Magyarország",
    visszavalthato_e BOOLEAN DEFAULT TRUE,
    CONSTRAINT PK_Ajandek PRIMARY KEY (id)
);

-- F4


-- F5


-- F6


-- F7


-- F8


-- F9


-- F10


-- F11

