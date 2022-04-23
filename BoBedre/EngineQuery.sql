IF DB_ID('BBB') IS NULL
BEGIN
	CREATE DATABASE BBB
	print 'Databse BBB created'
END

ELSE
BEGIN
print 'Databse BBB found'
END

--GO

--USE [BBB]
--IF OBJECT_ID('dbo.Brugere') IS NULL
--BEGIN
--print 'table Brugere not found, creating table'
--CREATE TABLE Brugere (
--	ID int IDENTITY(1,1) PRIMARY KEY,
--	Navn Nvarchar NOT NULL,
--	EMAIL Nvarchar NOT NULL UNIQUE,
--	Pass Nvarchar NOT NULL, 
--	Konto DECIMAL(19,4) DEFAULT 0 NOT NULL,
--	Oprettet datetime DEFAULT GetDate() NOT NULL,
--	CONSTRAINT PassLen CHECK (LEN (Pass) > 6),
--)
--print 'table Brugere Created'

--END

--ELSE PRINT 'Brugere found'