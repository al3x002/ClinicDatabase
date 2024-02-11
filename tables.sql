USE PrzychodniaLekarska;
GO

CREATE TABLE Lekarze (
   lekarz_id INT PRIMARY KEY,
   imiê VARCHAR(50),
   nazwisko VARCHAR(50),
   specjalizacja VARCHAR(50)
);

CREATE TABLE Pacjenci (
   pacjent_id INT PRIMARY KEY,
   imiê VARCHAR(50),
   nazwisko VARCHAR(50),
   PESEL VARCHAR(11),
   adres VARCHAR(255)
);

CREATE TABLE Wizyty (
   wizyta_id INT PRIMARY KEY,
   lekarz_id INT,
   pacjent_id INT,
   data DATE,
   godzina TIME,
   diagnoza VARCHAR(255),
   FOREIGN KEY (lekarz_id) REFERENCES Lekarze(lekarz_id),
   FOREIGN KEY (pacjent_id) REFERENCES Pacjenci(pacjent_id)
);

CREATE TABLE Pracownicy (
   pracownik_id INT PRIMARY KEY,
   imiê VARCHAR(50),
   nazwisko VARCHAR(50),
   stanowisko VARCHAR(50)
);

CREATE TABLE Oddzia³y (
   oddzia³_id INT PRIMARY KEY,
   nazwa VARCHAR(50),
   lokalizacja VARCHAR(255)
);

CREATE TABLE Badania (
   badanie_id INT PRIMARY KEY,
   pacjent_id INT,
   lekarz_id INT,
   rodzaj_badania VARCHAR(50),
   wynik VARCHAR(255),
   FOREIGN KEY (pacjent_id) REFERENCES Pacjenci(pacjent_id),
   FOREIGN KEY (lekarz_id) REFERENCES Lekarze(lekarz_id)
);


