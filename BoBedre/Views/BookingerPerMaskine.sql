CREATE VIEW [dbo].[BookingerPerMaskine]
	AS 
		SELECT Maskine, Antal = COUNT(*)
		FROM Bookinger
		GROUP BY MASKINE
