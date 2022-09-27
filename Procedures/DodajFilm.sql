CREATE OR ALTER  PROCEDURE DodajFilm
  @Tytul nvarchar(100),
  @KrajID int,
  @CzasTrwania time,
  @Opis nvarchar(max),
  @GatunekID int,
  @Premiera date,
  @RezyseriaID int
AS
BEGIN
	
	SET NOCOUNT ON


	BEGIN TRY
	BEGIN TRAN

		INSERT INTO Film (Tytul, KrajID, CzasTrwania, Opis, GatunekID, Premiera, RezyseriaID)
		VALUES (@Tytul, @KrajID, @CzasTrwania, @Opis, @GatunekID, @Premiera, @RezyseriaID)

	COMMIT
	END TRY
	BEGIN CATCH

		ROLLBACK;

	END CATCH

	SELECT SCOPE_IDENTITY() AS FilmID

END
GO