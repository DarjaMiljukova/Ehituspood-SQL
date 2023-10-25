--tabel kus me paneme päästiku sõnumid

CREATE TABLE logi(
id int PRIMARY KEY identity(1,1),
andmed TEXT,
kuupaev datetime,
kasutaja varchar(100));

--päästikud toote tabelisse

CREATE TRIGGER TR_ToodeLisamine
ON Toode
FOR INSERT
AS
INSERT INTO logi (kuupaev, andmed, kasutaja)
SELECT GETDATE(),
       CONCAT('Toode lisatud: ', inserted.Nimi, ' kategooriasse: ', k.Nimi),
       USER
FROM inserted
INNER JOIN Kategooria k ON inserted.KategooriaId = k.KategooriaId;
 
---kontroll
 
SELECT * FROM Toode
INSERT INTO Toode (Nimi, Kirjeldus, Hind, KategooriaId, LadustamineId)
VALUES('haamer', 'haamer', 51.00, 1, 1)
SELECT * FROM Toode
SELECT * FROM logi;



CREATE TRIGGER TR_ToodeUuendamine
ON Toode
FOR UPDATE
AS
INSERT INTO logi (kuupaev, andmed, kasutaja)
SELECT GETDATE(),
       CONCAT('Vanad andmed: ', deleted.Nimi, ', kategoriasse: ', k1.Nimi,
              '. Uued andmed: ', inserted.Nimi, ', kategooriasse: ', k2.Nimi),
       USER
FROM deleted
INNER JOIN inserted ON deleted.ToodeId = inserted.ToodeId
INNER JOIN Kategooria k1 ON deleted.KategooriaId = k1.KategooriaId
INNER JOIN Kategooria k2 ON inserted.KategooriaId = k2.KategooriaId;

---kontroll

SELECT * FROM Toode;

UPDATE Toode
SET Nimi = 'haamer2',
    Kirjeldus = 'haamer2',
    Hind = 52.00,
    KategooriaId = 1,
    LadustamineId = 1
WHERE ToodeId = 12;

SELECT * FROM Toode;
SELECT * FROM logi;

--päästikud Kliendi tabelisse


CREATE TRIGGER TR_KlientLisamine
ON Klient
FOR INSERT
AS
INSERT INTO logi (kuupaev, andmed, kasutaja)
SELECT GETDATE(),
       CONCAT('Klient lisatud: ', inserted.Eesnimi, ' ', inserted.Perenimi, ' makseviisiga: ', m.Nimi),
       USER
FROM inserted
INNER JOIN Maksuviis m ON inserted.MaksuviisId = m.MaksuviisId;

--kontroll

SELECT * FROM Klient
INSERT INTO Klient (Eesnimi, Perenimi, Aadress, MaksuviisId)
VALUES ('TestKlientEes1', 'TestKlientPere1', 'Test Aadress1, 001', 3);
SELECT * FROM Klient
SELECT * FROM logi



CREATE TRIGGER TR_KlientUuendamine
ON Klient
FOR UPDATE
AS
INSERT INTO logi (kuupaev, andmed, kasutaja)
SELECT GETDATE(),
       CONCAT('Vanad andmed: ', deleted.Eesnimi, ' ', deleted.Perenimi, ' makseviisiga: ', m1.Nimetus,
              '. Uued andmed: ', inserted.Eesnimi, ' ', inserted.Perenimi, ' makseviisiga: ', m2.Nimetus),
       USER
FROM deleted
INNER JOIN inserted ON deleted.KlientId = inserted.KlientId
INNER JOIN Maksuviis m1 ON deleted.MaksuviisId = m1.MaksuviisId
INNER JOIN Maksuviis m2 ON inserted.MaksuviisId = m2.MaksuviisId;

--kontroll

SELECT * FROM Klient

UPDATE Klient
SET Eesnimi = 'TestKlientEes2',
    Perenimi = 'TestKlientPere2',
    MaksuviisId = 5
WHERE KlientId = 12;

SELECT * FROM Klient
SELECT * FROM logi
