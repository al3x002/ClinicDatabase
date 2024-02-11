ALTER TABLE Wizyty
ADD CONSTRAINT check_future_date CHECK (data >= GETDATE());