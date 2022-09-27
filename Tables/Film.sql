CREATE TABLE [dbo].[Film] (
    [FilmID]        INT            IDENTITY (1, 1) NOT NULL,
    [Tytul]         NVARCHAR (150)      NULL,
    [KrajID]        INT            NULL,
    [CzasTrwania]   TIME (7)       NULL,
    [Opis]          NVARCHAR (MAX) NULL,
    [GatunekID]     INT            NULL,
    [Premiera]      DATE           NULL,
    [RezyseriaID]   INT            NULL,
    PRIMARY KEY CLUSTERED ([FilmID] ASC),
    CONSTRAINT [FK_Film_Garunek] FOREIGN KEY ([GatunekID]) REFERENCES [dbo].[Gatunek] ([GatunekID]),
    CONSTRAINT [FK_Film_Kraj] FOREIGN KEY ([KrajID]) REFERENCES [dbo].[Kraj] ([KrajID]),
    CONSTRAINT [FK_Filmy_Rezyser] FOREIGN KEY ([RezyseriaID]) REFERENCES [dbo].[Rezyser] ([RezyserID])
);

GO

CREATE OR ALTER TRIGGER dbo.TRG_Film_Gatunek_LiczbaFilmow
ON dbo.Film
FOR INSERT, DELETE, UPDATE
AS
BEGIN

  SET NOCOUNT ON

  UPDATE Gatunek 
  SET LiczbaFilmow = (SELECT count(*) FROM Film 
	WHERE Film.GatunekID = Gatunek.GatunekID)
  WHERE GatunekID   IN (
	SELECT DISTINCT GatunekID FROM inserted
	UNION
	SELECT DISTINCT GatunekID FROM deleted
  )

END
GO


