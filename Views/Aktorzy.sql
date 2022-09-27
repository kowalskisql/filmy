CREATE VIEW Aktorzy
AS
SELECT a.*, o.Imie, o.Nazwisko
FROM Osoba AS o
JOIN Aktor AS a ON o.OsobaID = a.OsobaID
GO