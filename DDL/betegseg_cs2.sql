CREATE DATABASE betegseg_cs2;

-- Egységbe zárás
-- CONSTRAINT CHK_Beteg_Nem CHECK (nem = "F" OR nem = "N")
CREATE TABLE Beteg (
    id INT AUTO_INCREMENT,
    nev VARCHAR(50),
    kor TINYINT NOT NULL,
    nem CHAR(1),
    beoltott_e BOOLEAN DEFAULT FALSE,
    CONSTRAINT PK_Beteg PRIMARY KEY (id),
    CONSTRAINT CHK_Beteg_Kor CHECK (kor > 0),
    CONSTRAINT CHK_Beteg_Nem CHECK (nem IN ("F", "N")),
    CONSTRAINT UQ_Beteg_Nev UNIQUE (nev)
);

CREATE TABLE Betegseg (
    id INT AUTO_INCREMENT,
    betegId INT,
    nev VARCHAR(100) NOT NULL,
    kezdet DATE DEFAULT "2023-11-28" NOT NULL,
    leiras TEXT,
    CONSTRAINT PK_Betegseg PRIMARY KEY (id),
    CONSTRAINT UQ_Betegseg_BetegId_Nev_Kezdet UNIQUE (betegId, nev, kezdet),
    CONSTRAINT FK_Betegseg_Beteg FOREIGN KEY (betegId) REFERENCES Beteg (id)
);