CREATE TABLE [dbo].[Vaskerier]
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	VaskeriNavn Nvarchar(50) NOT NULL,
	Aaben time NOT NULL,
	Luk time NOT NULL,

)