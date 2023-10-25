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
