INSERT INTO Vaskerier(VaskeriNavn,Aaben,Luk)
VALUES
('Whitewash Inc.','08:00','20:00'),
('Double Bubble','02:00','22:00'),
('Double Bubble','12:00','20:00');

GO

INSERT INTO Brugere (BrugerNavn,EMAIL,Pass,Konto,Vaskeri)
VALUES
('John','john_doe66@gmail.com','password',100.00,2),
('Niel Armstrong','firstman@nasa.gov','eagleLander69',1000.00,1),
('Batman','noreply@thecave.com','Rob1nIsCool',500.00,3),
('Goldman Sachs','moneylaundering@gs.com','NotRecognized',100000.00,1),
('50 Cent','50cent@gmail.com','ItsMyBirthday',0.5,3),
('Soren','email@email.com','SikkerKode',42069.0,2);

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
('20210226 12:00:00',1,1),
('20210226 16:00:00',1,3),
('20210226 08:00:00',2,4),
('20210226 15:00:00',3,5),
('20210226 20:00:00',4,2),
('20210226 19:00:00',4,2),
('20210226 10:00:00',4,2),
('20210226 16:00:00',5,6);

GO

DECLARE @idag DATETIME;
SET @Idag = (DATETIMEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), DAY(GETDATE()), 12, 0 ,0 ,0));
--print @Idag;
--'20222304 12:00:00'
EXEC BookTid2 @tid = @Idag, @bruger = 4, @maskine = 2;
GO

DELETE
FROM Bookinger
WHERE CAST(Tidspunkt AS TIME) between TIMEFROMPARTS(12, 0 ,0 ,0,0) and TIMEFROMPARTS(13, 0 ,0 ,0,0)

GO

UPDATE Brugere
SET Pass = 'SelinaKyle'
Where ID = 3;

GO





