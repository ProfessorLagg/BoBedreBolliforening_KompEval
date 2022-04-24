CREATE PROCEDURE BookTid2
	@tid datetime,
	@bruger int,
	@maskine int
AS
BEGIN
--DECLARATIONS
	DECLARE @kontanter DECIMAL(19,4);
	DECLARE @pris DECIMAL(19,4);
	DECLARE @BookMulig BIT;

	DECLARE @vaskID int;
	DECLARE @aaben TIME;
	DECLARE @luk TIME;
	DECLARE @DatoSomTid TIME;

	DECLARE @OverLap int;
	DECLARE @Lukket int;
	
--Value Inits
	SET @BookMulig = 0;
	SET @DatoSomTid = CAST(@tid AS TIME);
	SELECT @kontanter =  Konto FROM Brugere WHERE ID = @bruger;
	SELECT @pris = Pris FROM Maskiner WHERE ID = @maskine;

	SELECT @vaskID = Vaskeri FROM Maskiner WHERE ID = @maskine;
	SELECT @aaben = Aaben FROM Vaskerier where ID = @vaskID;
	SELECT @luk = Luk FROM Vaskerier where ID = @vaskID;
	SELECT @OverLap = Count(*) FROM Bookinger WHERE CAST(Tidspunkt AS DATE) = CAST(@tid AS DATE) AND Maskine = @maskine AND ABS(DATEDIFF(MINUTE,Tidspunkt,@tid)) < (SELECT ABS(DATEDIFF(MINUTE,VaskeTid,0)) FROM Maskiner WHERE ID = @maskine)
	
	SELECT @Lukket = Count(*) FROM Bookinger WHERE Maskine = @maskine AND @DatoSomTid > @aaben AND DATEDIFF(minute,@DatoSomTid,@luk) > 0
---BOOL SETTING

	IF ((@kontanter - @pris) > 0 AND @OverLap < 1 AND @Lukket < 1)
	begin
	SET @BookMulig = 1;
	end
	else
	BEGIN
	SET @BookMulig = 0;
	END
--Action
	IF (@BookMulig > 0)
	BEGIN
	UPDATE Brugere 
	SET KONTO = (@kontanter - @pris)
	WHERE ID = @bruger;
	INSERT INTO Bookinger(Tidspunkt,Bruger,Maskine)
	VALUES(@tid,@bruger,@maskine);
	END
END
	
RETURN @BookMulig;
