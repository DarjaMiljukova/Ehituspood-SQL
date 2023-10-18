CREATE TABLE Ladu (
    LaduId INT PRIMARY KEY IDENTITY(1,1),
    Nimetus NVARCHAR(50),
    Aadress NVARCHAR(50)
);

CREATE TABLE Kategooria (
    KategooriaId INT PRIMARY KEY IDENTITY(1,1),
    Nimi NVARCHAR(50)
);

CREATE TABLE Tootaja (
    TootajaId INT PRIMARY KEY IDENTITY(1,1),
    Nimi NVARCHAR(50),
    Aadress NVARCHAR(50),
    KontaktTelefon NVARCHAR(50)
);

CREATE TABLE Maksuviis (
    MaksuviisId INT PRIMARY KEY IDENTITY(1,1),
    Nimetus NVARCHAR(50),
    Kirjeldus NVARCHAR(255)
);


CREATE TABLE Klient (
    KlientId INT PRIMARY KEY IDENTITY(1,1),
    Eesnimi NVARCHAR(50),
    Perenimi NVARCHAR(50),
    Aadress NVARCHAR(50),
    MaksuviisId INT
	CONSTRAINT FK_Maksuviis_Klient FOREIGN KEY (MaksuviisId) REFERENCES Maksuviis(MaksuviisId)
);
CREATE TABLE Ladustamine (
    LadustamineId INT PRIMARY KEY IDENTITY(1,1),
    LaduId INT,
    TootajaId INT,
    Kuupaev DATE,
    CONSTRAINT FK_Ladustamine_Ladu FOREIGN KEY (LaduId) REFERENCES Ladu(LaduId),
    CONSTRAINT FK_Ladustamine_Tootaja FOREIGN KEY (TootajaId) REFERENCES Tootaja(TootajaId)
);
CREATE TABLE Toode (
    ToodeId INT PRIMARY KEY IDENTITY(1,1),
    Nimi NVARCHAR(50),
    Kirjeldus NVARCHAR(MAX),
    Hind DECIMAL(10, 2),
    KategooriaId INT,
    LadustamineId INT,
    CONSTRAINT FK_Toode_Kategooria FOREIGN KEY (KategooriaId) REFERENCES Kategooria(KategooriaId),
	CONSTRAINT FK_Toode_Ladustamine FOREIGN KEY (LadustamineId) REFERENCES Ladustamine(LadustamineId)
);

CREATE TABLE Tellimus (
    TellimusId INT PRIMARY KEY IDENTITY(1,1),
    KlientId INT,
    TellimusKuupaev DATE,
    CONSTRAINT FK_Tellimus_Klient FOREIGN KEY (KlientId) REFERENCES Klient(KlientId)
);


CREATE TABLE TellitudToode (
    TellitudToodeId INT PRIMARY KEY IDENTITY(1,1),
    TellimusId INT,
    ToodeId INT,
    Kogus INT,
    Hind DECIMAL(10, 2),
    Allahindlus DECIMAL(5, 2),
    CONSTRAINT FK_TellitudToode_Tellimus FOREIGN KEY (TellimusId) REFERENCES Tellimus(TellimusId),
    CONSTRAINT FK_TellitudToode_Toode FOREIGN KEY (ToodeId) REFERENCES Toode(ToodeId)
);

CREATE TABLE Tagasiside (
    TagasisideId INT PRIMARY KEY IDENTITY(1,1),
    ToodeId INT,
    KlientId INT,
    Hinnang INT,
    Kommentaar NVARCHAR(255),
    Kuupäev DATE,
    CONSTRAINT FK_Tagasiside_Toode FOREIGN KEY (ToodeId) REFERENCES Toode(ToodeId),
    CONSTRAINT FK_Tagasiside_Klient FOREIGN KEY (KlientId) REFERENCES Klient(KlientId)
);
