CREATE TABLE [dbo].[Bookinger]
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	Tidspunkt datetime NOT NULL,
	Bruger int FOREIGN KEY REFERENCES [Brugere](ID) NOT NULL,
	Maskine int FOREIGN KEY REFERENCES [Maskiner](ID) NOT NULL,

)
