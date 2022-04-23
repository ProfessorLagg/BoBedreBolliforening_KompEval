CREATE VIEW [dbo].[MaskineTilVaskeri]
	AS 
SELECT Maskiner.ID,Maskiner.MaskineNavn,Maskiner.Pris,Maskiner.VaskeTid,Maskiner.Vaskeri, Vaskerier.Luk,Vaskerier.VaskeriNavn,Vaskerier.Aaben
FROM Maskiner
JOIN Vaskerier on Maskiner.Vaskeri = Vaskerier.ID
