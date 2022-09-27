CREATE VIEW Gatunki
AS
SELECT TOP 10 Gatunek, LiczbaFilmow AS FilmyCnt
FROM dbo.Gatunek
ORDER BY FilmyCnt

GO
