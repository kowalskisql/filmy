CREATE VIEW Gatunki
AS
SELECT g.Gatunek, count(*) AS FilmyCnt
FROM dbo.Gatunek AS g
JOIN Film AS f ON f.GatunekID = g.GatunekID
GROUP BY g.Gatunek
GO
