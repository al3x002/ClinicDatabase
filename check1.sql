ALTER TABLE Pacjenci
ADD CONSTRAINT check_pesel_length CHECK (LEN(PESEL) = 11);