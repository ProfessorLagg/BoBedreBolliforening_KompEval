﻿CREATE TABLE [dbo].[Brugere]
(
	ID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Navn Nvarchar NOT NULL,
	EMAIL Nvarchar NOT NULL UNIQUE,
	Pass Nvarchar NOT NULL, 
	Konto DECIMAL(19,4) DEFAULT 0 NOT NULL,
	Vaskeri int FOREIGN KEY REFERENCES Vaskerier(ID) NOT NULL,
	Oprettet datetime DEFAULT GetDate() NOT NULL,
	CONSTRAINT PassLen CHECK (LEN (Pass) > 6),
)
