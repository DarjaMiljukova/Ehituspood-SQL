CREATE TABLE Ladu (
    LaduId INT PRIMARY KEY AUTO_INCREMENT,
    Nimetus VARCHAR(50),
    Aadress VARCHAR(50)
);

CREATE TABLE Kategooria (
    KategooriaId INT PRIMARY KEY AUTO_INCREMENT,
    Nimi VARCHAR(50)
);

CREATE TABLE Tootaja (
    TootajaId INT PRIMARY KEY AUTO_INCREMENT,
    Nimi VARCHAR(50),
    Aadress VARCHAR(50),
    KontaktTelefon VARCHAR(50)
);

CREATE TABLE Maksuviis (
    MaksuviisId INT PRIMARY KEY AUTO_INCREMENT,
    Nimetus VARCHAR(50),
    Kirjeldus VARCHAR(255)
);


CREATE TABLE Klient (
    KlientId INT PRIMARY KEY AUTO_INCREMENT,
    Eesnimi VARCHAR(50),
    Perenimi VARCHAR(50),
    Aadress VARCHAR(50),
    MaksuviisId INT,
CONSTRAINT FK_Maksuviis_Klient FOREIGN KEY (MaksuviisId) REFERENCES Maksuviis(MaksuviisId)
);
CREATE TABLE Ladustamine (
    LadustamineId INT PRIMARY KEY AUTO_INCREMENT,
    LaduId INT,
    TootajaId INT,
    Kuupaev DATE,
    CONSTRAINT FK_Ladustamine_Ladu FOREIGN KEY (LaduId) REFERENCES Ladu(LaduId),
    CONSTRAINT FK_Ladustamine_Tootaja FOREIGN KEY (TootajaId) REFERENCES Tootaja(TootajaId)
);
CREATE TABLE Toode (
    ToodeId INT PRIMARY KEY AUTO_INCREMENT,
    Nimi VARCHAR(50),
    Kirjeldus VARCHAR(255),
    Hind DECIMAL(10, 2),
    KategooriaId INT,
    LadustamineId INT,
    CONSTRAINT FK_Toode_Kategooria FOREIGN KEY (KategooriaId) REFERENCES Kategooria(KategooriaId),
CONSTRAINT FK_Toode_Ladustamine FOREIGN KEY (LadustamineId) REFERENCES Ladustamine(LadustamineId)
);

CREATE TABLE Tellimus (
    TellimusId INT PRIMARY KEY AUTO_INCREMENT,
    KlientId INT,
    TellimusKuupaev DATE,
    CONSTRAINT FK_Tellimus_Klient FOREIGN KEY (KlientId) REFERENCES Klient(KlientId)
);


CREATE TABLE TellitudToode (
    TellitudToodeId INT PRIMARY KEY AUTO_INCREMENT,
    TellimusId INT,
    ToodeId INT,
    Kogus INT,
    Hind DECIMAL(10, 2),
    Allahindlus DECIMAL(5, 2),
    CONSTRAINT FK_TellitudToode_Tellimus FOREIGN KEY (TellimusId) REFERENCES Tellimus(TellimusId),
    CONSTRAINT FK_TellitudToode_Toode FOREIGN KEY (ToodeId) REFERENCES Toode(ToodeId)
);

CREATE TABLE Tagasiside (
    TagasisideId INT PRIMARY KEY AUTO_INCREMENT,
    ToodeId INT,
    KlientId INT,
    Hinnang INT,
    Kommentaar VARCHAR(255),
    Kuupäev DATE,
    CONSTRAINT FK_Tagasiside_Toode FOREIGN KEY (ToodeId) REFERENCES Toode(ToodeId),
    CONSTRAINT FK_Tagasiside_Klient FOREIGN KEY (KlientId) REFERENCES Klient(KlientId)
);
