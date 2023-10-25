CREATE PROCEDURE PR_LisaLadu
    @Nimetus NVARCHAR(50),
    @Aadress NVARCHAR(50)
AS
BEGIN
    INSERT INTO Ladu (Nimetus, Aadress)
    VALUES (@Nimetus, @Aadress);
END;

CREATE PROCEDURE PR_LisaKategooria
    @Nimi NVARCHAR(50)
AS
BEGIN
    INSERT INTO Kategooria (Nimi)
    VALUES (@Nimi);
END;

CREATE PROCEDURE PR_LisaTootaja
    @Nimi NVARCHAR(50),
    @Aadress NVARCHAR(50),
    @KontaktTelefon NVARCHAR(50)
AS
BEGIN
    INSERT INTO Tootaja (Nimi, Aadress, KontaktTelefon)
    VALUES (@Nimi, @Aadress, @KontaktTelefon);

END;

