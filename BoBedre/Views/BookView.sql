CREATE VIEW [dbo].[BookView]
	AS
	SELECT Bookinger.Tidspunkt, Brugere.BrugerNavn, Maskiner.MaskineNavn, Maskiner.Pris
	From Bookinger
	JOIN Brugere ON Brugere.ID = Bookinger.Bruger
	JOIN Maskiner ON Maskiner.ID = Maskine