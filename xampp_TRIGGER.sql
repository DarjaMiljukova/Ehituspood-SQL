--lisamine toode ja kategooria
INSERT INTO logi (kuupaev, andmed, kasutaja)
SELECT NOW(),
CONCAT('Uued andmed ', NEW.Nimi, ', ', k.Nimi),
USER()
FROM Toode AS t
INNER JOIN Kategooria AS k ON t.KategooriaId = k.KategooriaId
WHERE t.ToodeId = NEW.ToodeId



--uuendamine toode ja kategooria
insert into logi(kuupaev, andmed, kasutaja)
select NOW(),
concat('Vanad andmed ',OLD.toode, ', ', k1.kategooria, 
'  Uued andmed ', NEW.toode, ', ', k2.kategooria),
user
from toode t
inner join kategooria k1 on OLD.maakondID=k1.KategooriaId
inner join kategooria k2 on NEW.maakondID=k2.KategooriaId
where t.ToodeId=NEW.ToodeId
