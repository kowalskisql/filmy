CREATE TABLE [dbo].[Gatunek] (
    [GatunekID] INT        IDENTITY (1, 1) NOT NULL,
    [Gatunek]   NVARCHAR (100) NULL,
	[GatunekDE]   NVARCHAR (100) NULL,
	[GatunekEN]   NVARCHAR (100) NULL,
	LiczbaFilmow int NULL,
    PRIMARY KEY CLUSTERED ([GatunekID] ASC)
);

GO

