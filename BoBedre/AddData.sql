/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
INSERT INTO Vaskerier(VaskeriNavn,Aaben,Luk)
VALUES
('Whitewash Inc.','08:00','20:00'),
('Double Bubble','02:00','22:00'),
('Double Bubble','12:00','20:00');

GO

INSERT INTO Brugere (BrugerNavn,EMAIL,Pass,Konto,Vaskeri)
VALUES
('John','john_doe66@gmail.com','password',100.00,2),
('Niel Armstrong','firstman@nasa.gov','eagleLander69',1000.00,2),
('Batman','noreply@thecave.com','Rob1nIsCool',100.00,2),
('Goldman Sachs','moneylaundering@gs.com','NotRecognized',100.00,2),
('50 Cent','50cent@gmail.com','ItsMyBirthday',100.00,2);

GO

INSERT INTO Maskiner(MaskineNavn,Pris,VaskeTid,Vaskeri)
VALUES
('Mielle 911 Turbo',5.00,'01:00:00',2),
('Siemons IClean',10000.00,'00:30:00',1),
('Electrolax FX-2',15.00,'00:45:00',2),
('NASA Spacewasher 8000',500.00,'00:05:00',1),
('The Lost Sock',3.50,'01:30:00',3),
('Yo Mama',0.50,'02:00:00',3);

GO

INSERT INTO Bookinger(Tidspunkt,Bruger,Maskine)
VALUES
('2021-02-26 12:00:00','1',1),
('2021-02-26 16:00:00','1',3),
('2021-02-26 08:00:00','2',4),
('2021-02-26 15:00:00','3',5),
('2021-02-26 20:00:00','4',2),
('2021-02-26 19:00:00','4',2),
('2021-02-26 10:00:00','4',2),
('2021-02-26 16:00:00','5',6);

GO

DECLARE @idag DATETIME;
SET @Idag = (DATETIMEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), DAY(GETDATE()), 12, 0 ,0 ,0));
print @Idag;
--'20222304 12:00:00'
EXEC BookTid @tid = @Idag, @bruger = 4, @maskine = 2;

GO

DELETE
FROM Bookinger
WHERE Tidspunkt between CAST('12:00' AS TIME) and CAST('13.00' AS TIME)

GO

UPDATE Brugere
SET Pass = 'SelinaKyle'
Where BrugerNavn.ToLower() LIKE '%batman%'

GO





