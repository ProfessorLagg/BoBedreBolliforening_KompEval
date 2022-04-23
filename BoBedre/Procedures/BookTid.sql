CREATE PROCEDURE BookTid
	@tid datetime,
	@bruger int,
	@maskine int
AS
BEGIN
	DECLARE @kontanter DECIMAL(19,4);
	DECLARE @pris DECIMAL(19,4);
	SELECT @kontanter =  Konto FROM Brugere WHERE ID = @bruger;
	SELECT @pris = Pris FROM Maskiner WHERE ID = @maskine;
	--PRINTING SECITON
	print CONCAT('TID -> ',@tid);
	print CONCAT('KONTANTER ->', @kontanter);
	print CONCAT('PRIS -> ', @pris);
	--PRINTING OVER
	--IF (kontanter >= @pris)	
	BEGIN
	print 'Brugeren havde penge nok!';
	UPDATE Brugere 
	SET KONTO = (@kontanter - @pris)
	WHERE ID = @bruger;
	INSERT INTO Bookinger(Tidspunkt,Bruger,Maskine)
	VALUES(@tid,@bruger,@maskine);
	END
END
	
GO;
