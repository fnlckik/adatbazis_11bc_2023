-- F1
CREATE DATABASE Dancing;

-- F2
CREATE TABLE Celeb(
    kod CHAR(3) PRIMARY KEY,
    nev VARCHAR(50) NOT NULL,
    korcsoport VARCHAR(10),
    -- CONSTRAINT PK_Celeb PRIMARY KEY (kod),
    CONSTRAINT CHK_Celeb_Korcsoport CHECK (korcsoport IN ("fiatal", "középkorú", "idős"))
    -- CONSTRAINT CHK_Celeb_Korcsoport CHECK (korcsoport = "fiatal" OR korcsoport = "középkorú" OR korcsoport = "idős"))
);

-- F3
CREATE TABLE Tanc (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipus VARCHAR(20),
    standard BOOLEAN,
    CONSTRAINT UQ_Tanc_Tipus UNIQUE (tipus)
);

-- F4
CREATE TABLE Eloadas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    celeb_id CHAR(3),
    tanc_id INT,
    adas DATE,
    nyelv VARCHAR(20),
    hossz TIME DEFAULT "00:02:05",
    pont TINYINT,
    szavazat FLOAT,
    CONSTRAINT UQ_Eloadas_CelebId_TancId_Adas UNIQUE (celeb_id, tanc_id, adas),
    CONSTRAINT CHK_Eloadas_Pont CHECK (3 <= pont AND pont <= 30),
    CONSTRAINT FK_Eloadas_Celeb FOREIGN KEY (celeb_id) REFERENCES Celeb (kod),
    CONSTRAINT FK_Eloadas_Tanc FOREIGN KEY (tanc_id) REFERENCES Tanc (id)
);

-- F5
ALTER TABLE Celeb
ADD tanar VARCHAR(50);

-- F6
ALTER TABLE Celeb
ALTER korcsoport SET DEFAULT "középkorú";

-- ALTER TABLE Celeb
-- MODIFY korcsoport VARCHAR(10) DEFAULT "középkorú";

-- F7
ALTER TABLE Eloadas
ADD CONSTRAINT CHK_Eloadas_Nyelv CHECK (nyelv <> "orosz");

-- F8
ALTER TABLE Eloadas
DROP hossz;

-- F9
ALTER TABLE Eloadas
MODIFY id INT;

ALTER TABLE Eloadas
DROP PRIMARY KEY;

-- F10
INSERT INTO Celeb (kod, nev, korcsoport)
VALUES
("224", "Krausz Gábor", "középkorú"),
("225", "Marics Péter", "fiatal"),
("229", "T. Danny", "fiatal");

-- F11
RENAME TABLE Celeb TO Sztar;

-- F12
DROP DATABASE Dancing;
