CREATE DATABASE betegseg_cs1;

-- Egységbe zárás
CREATE TABLE Beteg (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(50) NOT NULL,
    kor TINYINT UNSIGNED NOT NULL,
    nem CHAR(1),
    beoltott BOOLEAN,
    CONSTRAINT UQ_Beteg_Nev UNIQUE (nev),
    CONSTRAINT CHK_Beteg_Kor CHECK (kor > 0),
    -- CONSTRAINT CHK_Beteg_Nem CHECK (nem = "F" OR nem = "N")
    CONSTRAINT CHK_Beteg_Nem CHECK (nem IN ("F", "N"))
);

CREATE TABLE Betegseg (
    id INT AUTO_INCREMENT PRIMARY KEY,
    betegId INT,
    nev VARCHAR(100) NOT NULL,
    kezdet DATE DEFAULT "2023-12-05" NOT NULL,
    leiras TEXT,
    CONSTRAINT UQ_Betegseg_BNK UNIQUE (betegId, nev, kezdet),
    CONSTRAINT FK_Betegseg_Beteg FOREIGN KEY (betegId) REFERENCES Beteg (id)
);
