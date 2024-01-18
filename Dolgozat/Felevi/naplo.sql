-- F6
CREATE TABLE Naplo (
    diak INT,
    targy VARCHAR(50),
    jegy INT,
    idopont DATETIME,
    UNIQUE (diak, targy, jegy, idopont),
    CHECK (1 <= jegy AND jegy <= 5),
    FOREIGN KEY (diak) REFERENCES Diak (id) ON UPDATE CASCADE
);


INSERT INTO Naplo (diak, targy, jegy, idopont)
VALUES
(1, 'Matematika', 4, '2024-01-04 12:00:00'),
(3, 'Angol', 3, '2024-01-10 14:30:00'),
(1, 'Matematika', 5, '2024-01-08 11:45:00'),
(2, 'Fizika', 5, '2023-09-12 09:15:00'),
(7, 'Angol', 2, '2024-01-08 10:30:00'),
(3, 'Matematika', 4, '2024-01-04 13:00:00'),
(5, 'Történelem', 3, '2023-10-05 15:45:00'),
(5, 'Történelem', 5, '2024-01-01 08:30:00'),
(2, 'Matematika', 2, '2023-12-12 16:00:00'),
(1, 'Történelem', 4, '2024-01-03 09:45:00');

-- F7
SELECT *
FROM Naplo
WHERE targy LIKE "%k_";

-- F8
UPDATE Naplo
SET jegy = 5
WHERE diak = 5 AND targy = "Történelem";

-- F9
-- SELECT *
-- FROM Naplo
-- WHERE idopont <= "2023-12-31" AND idopont >= "2023-01-01";
DELETE
FROM Naplo
WHERE idopont LIKE "2023%";

-- F10
ALTER TABLE Naplo
ADD tipus VARCHAR(50);

-- F11
ALTER TABLE Naplo
MODIFY idopont DATE;

-- F12
-- DROP TABLE Naplo, Diak;
DROP TABLE Naplo;
DROP TABLE Diak;
