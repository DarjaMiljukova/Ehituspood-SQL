--protseduur LisaLadu
BEGIN
    INSERT INTO Ladu (Nimetus, Aadress)
    VALUES (Nimetus, Aadress);
END;

--protseduur LisaKategooria
BEGIN
    INSERT INTO Kategooria (Nimi)
    VALUES (Nimi);
END;

--protseduur LisaTootaja
BEGIN
    INSERT INTO Tootaja (Nimi, Aadress, KontaktTelefon)
    VALUES (Nimi, Aadress, KontaktTelefon);
END;

--protseduur LisaMaksuviis
BEGIN
    INSERT INTO Maksuviis (Nimetus, Kirjeldus)
    VALUES (Nimetus, Kirjeldus);
END;
