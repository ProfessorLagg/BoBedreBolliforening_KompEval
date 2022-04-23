CREATE TABLE [dbo].[Maskiner]
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	MaskineNavn Nvarchar(50) NOT NULL,
	Pris decimal(19,4) NOT NULL,
	VaskeTid time NOT NULL,
	Vaskeri int FOREIGN KEY REFERENCES Vaskerier(ID) NOT NULL,

)
