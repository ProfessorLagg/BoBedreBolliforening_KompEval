CREATE TABLE [dbo].[Vaskerier]
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	Navn Nvarchar NOT NULL,
	Aaben time NOT NULL,
	Luk time NOT NULL,

)
