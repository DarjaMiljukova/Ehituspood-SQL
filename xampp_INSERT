INSERT INTO Ladu (Nimetus, Aadress)
VALUES
    ('Ladu 1', 'A. H. Tammsaare tee 49'),
    ('Ladu 2', 'Paldiski mnt 108a'),
    ('Ladu 3', 'Pärnu mnt 102c'),
    ('Ladu 4', 'Kadaka tee 65'),
    ('Ladu 5', 'Peterburi tee 71'),
    ('Ladu 6', 'Pärnu mnt 186'),
    ('Ladu 7', 'Võidu 93'),
    ('Ladu 8', 'Riia mnt 108b'),
    ('Ladu 9', 'Tallinna 40'),
    ('Ladu 10', 'Rohuneeme tee 67');

INSERT INTO Kategooria (Nimi)
VALUES
    ('Mänguajad'),
    ('Mööbel'),
    ('Tööristad'),
    ('Kodumasinad'),
    ('Viimistlusmaterjalid'),
    ('Tööriided'),
    ('Valgustid'),
    ('Aed'),
    ('Lemmikloomatarbed'),
    ('Ehitus ja Remont');

INSERT INTO Tootaja (Nimi, Aadress, KontaktTelefon)
VALUES
    ('Tatiana Ivanova','Narva mnt 101', '1111-2222'),
    ('Peter Sidorov', 'Narva mnt 176', '3333-4444'),
    ('Anna Petrova', 'Narva mnt 106', '5555-6666'),
    ('Ivan Mikhailov', 'Narva mnt 123', '7777-8888'),
    ('Elena Nikolaeva', 'Narva mnt 138', '9999-0000'),
    ('Maxim Kuznetsov', 'Narva mnt 181', '1212-3434'),
    ('Olga Smirnova', 'Narva mnt 144', '5656-7878'),
    ('Alexander Popov', 'Narva mnt 111', '9090-2323'),
    ('Maria Fedorova', 'Narva mnt 131', '4545-6767'),
    ('Dmitri Solovjev', 'Narva mnt 199', '8989-0101');

INSERT INTO Maksuviis (Nimetus, Kirjeldus)
VALUES
    ('Sularaha', 'Sularahas maksmine'),
    ('Krediitkaart', 'Maksmine krediitkaardiga internetis'),
    ('Pangaülekanne', 'Maksmine pangaülekandega'),
    ('Tšekk', 'Maksmine tšekiga posti teel'),
    ('PayPal', 'Maksmine PayPali kaudu'),
    ('Elektrooniline raha', 'Maksmine elektroonilise raha kaudu'),
    ('Bitcoin', 'Maksmine bitcoinidega'),
    ('Yandex.Money', 'Maksmine Yandex.Money kaudu'),
    ('WebMoney', 'Maksmine WebMoney kaudu'),
    ('Apple Pay', 'Maksmine Apple Pay kaudu');

INSERT INTO Klient (Eesnimi, Perenimi, Aadress, MaksuviisId)
VALUES
    ('Alexei', 'Ivanov', 'Sõpruse pst 69', 1),
    ('Natalia', 'Petrova', 'Sõpruse pst 172', 2),
    ('Vladimir', 'Smirnov', 'Sõpruse pst 201', 3),
    ('Elena', 'Sidorova', 'Sõpruse pst 32', 4),
    ('Sergei', 'Mihhailov', 'Sõpruse pst 81', 5),
    ('Olga', 'Kuznetsova', 'Sõpruse pst 22', 6),
    ('Dmitri', 'Nikolajev', 'Sõpruse pst 74', 7),
    ('Maria', 'Popova', 'Sõpruse pst 11', 8),
    ('Andrey', 'Fedorov', 'Sõpruse pst 102', 9),
    ('Ljudmila', 'Solovjova', 'Sõpruse pst 91', 10);


INSERT INTO Ladustamine (LaduId, TootajaId, Kuupaev)
VALUES
    (1, 1, '2023-10-01'),
    (2, 2, '2023-10-02'),
    (3, 3, '2023-10-03'),
    (4, 4, '2023-10-04'),
    (5, 5, '2023-10-05'),
    (6, 6, '2023-10-06'),
    (7, 7, '2023-10-07'),
    (8, 8, '2023-10-08'),
    (9, 9, '2023-10-09'),
    (10, 10, '2023-10-10');

INSERT INTO Toode (Nimi, Kirjeldus, Hind, KategooriaId, LadustamineId)
VALUES
    ('Ehitushaamer', 'Vastupidav haamer tellise ja betooni jaoks', 50.00, 1, 1),
    ('Bosch kruvikeerajad', 'Võimas akukruvikeeraja', 75.00, 2, 2),
    ('Metallsahk', 'Karbiidist metallhammastega saag', 30.00, 3, 3),
    ('Makita ketassaag', 'Tõhus saag puidu lõikamiseks', 45.00, 4, 4),
    ('Maaparandushaakur', 'Tugev maaparandushaakur', 60.00, 5, 5),
    ('Krohvimiskaabel', 'Roostevabast terasest krohvimiskaabel', 25.00, 6, 6),
    ('Champion generaator', 'Võimas generaator tööplatsile', 70.00, 7, 7),
    ('DeWalt Power Drill', 'Professional Power Drill', 55.00, 8, 8),
    ('Betoonisegisti', 'Betoonisegisti', 40.00, 9, 9),
    ('Mitme positsiooniga redel', 'Universaalne redel kõrgel töötamiseks', 65.00, 10, 10);


INSERT INTO Tellimus (KlientId, TellimusKuupaev)
VALUES
    (1, '2023-10-01'),
    (2, '2023-10-02'),
    (3, '2023-10-03'),
    (4, '2023-10-04'),
    (5, '2023-10-05'),
    (6, '2023-10-06'),
    (7, '2023-10-07'),
    (8, '2023-10-08'),
    (9, '2023-11-09'),
    (10, '2023-11-10');

INSERT INTO TellitudToode (TellimusId, ToodeId, Kogus, Hind, Allahindlus)
VALUES
    (1, 1, 2, 100.00, 0.00),
    (2, 2, 3, 200.00, 10.00),
    (3, 3, 1, 30.00, 5.00),
    (4, 4, 4, 180.00, 15.00),
    (5, 5, 2, 120.00, 0.00),
    (6, 6, 1, 25.00, 0.00),
    (7, 7, 3, 210.00, 20.00),
    (8, 8, 2, 110.00, 0.00),
    (9, 9, 5, 200.00, 25.00),
    (10, 10, 4, 260.00, 30.00);

INSERT INTO Tagasiside (ToodeId, KlientId, Hinnang, Kommentaar, Kuupäev)
VALUES
    (1, 1, 5, 'Hea toode', '2023-10-01'),
    (2, 2, 4, 'Hea kvaliteet', '2023-10-02'),
    (3, 3, 3, 'Keskmine', '2023-10-03'),
    (4, 4, 2, 'Rahulolev', '2023-10-04'),
    (5, 5, 5, 'Suurepärane toode', '2023-10-05'),
    (6, 6, 2, 'Ma ei ole muljet avaldanud', '2023-10-06'),
    (7, 7, 5, 'See on suurepärane!', '2023-10-07'),
	(8, 8, 1, 'Nice', '2023-11-05'),
    (9, 9, 2, 'Nii ja naa', '2023-11-06'),
    (10, 10, 3, 'Rahulolev', '2023-11-07');
