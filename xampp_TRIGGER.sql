--lisamine toode ja kategooria
INSERT INTO logi (kuupaev, andmed, kasutaja)
SELECT NOW(),
CONCAT('Uued andmed ', NEW.Nimi, ', ', k.Nimi),
USER()
FROM Toode AS t
INNER JOIN Kategooria AS k ON t.KategooriaId = k.KategooriaId
WHERE t.ToodeId = NEW.ToodeId
--kontroll
SELECT * FROM Toode;
INSERT INTO Toode (Nimi, Kirjeldus, Hind, KategooriaId, LadustamineId)
VALUES('haamer', 'haamer', 51.00, 1, 1);
SELECT * FROM Toode;
SELECT * FROM logi;



--uuendamine toode ja kategooria
insert into logi(kuupaev, andmed, kasutaja)
select NOW(),
concat('Vanad andmed ',OLD.Nimi, ', ', k1.Nimi, 
'  Uued andmed ', NEW.Nimi, ', ', k2.Nimi),
user
from toode t
inner join kategooria k1 on OLD.KategooriaId=k1.KategooriaId
inner join kategooria k2 on NEW.KategooriaId=k2.KategooriaId
where t.ToodeId=NEW.ToodeId
--kontroll
  SELECT * FROM Toode;

UPDATE Toode
SET Nimi = 'haamer2',
    Kirjeldus = 'haamer2',
    Hind = 52.00,
    KategooriaId = 1,
    LadustamineId = 1
WHERE ToodeId = 23;

SELECT * FROM Toode;
SELECT * FROM logi;


--lisamine klient ja maksuviis
INSERT INTO logi (kuupaev, andmed, kasutaja)
    SELECT NOW(),
           CONCAT('Uued andmed ', NEW.Eesnimi, ', ', NEW.Perenimi, ', ', m.Nimetus),
           USER()
    FROM Maksuviis AS m
    WHERE m.MaksuviisId = NEW.MaksuviisId
--kontroll  
SELECT * FROM Klient;
INSERT INTO Klient (Eesnimi, Perenimi, Aadress, MaksuviisId)
VALUES ('TestKlientEes1', 'TestKlientPere1', 'Test Aadress1, 001', 3);
SELECT * FROM Klient;
SELECT * FROM logi



--uuendamine klient ja maksuviis
INSERT INTO logi (kuupaev, andmed, kasutaja)
    SELECT NOW(),
           CONCAT('Vanad andmed ', OLD.Eesnimi, ', ', OLD.Perenimi, ', ', m.Nimetus,
                  '  Uued andmed ', NEW.Eesnimi, ', ', NEW.Perenimi, ', ', m.Nimetus),
           USER()
    FROM Maksuviis AS m
    WHERE m.MaksuviisId = NEW.MaksuviisId
--kontroll  
SELECT * FROM Klient;

UPDATE Klient
SET Eesnimi = 'TestKlientEes2',
    Perenimi = 'TestKlientPere2',
    MaksuviisId = 5
WHERE KlientId = 31;

SELECT * FROM Klient;
SELECT * FROM logi
