CREATE VIEW [dbo].[gmail]
	AS SELECT * FROM Brugere where EMAIL LIKE '%@gmail.com%'
