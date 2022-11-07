USE AssigmentDB
GO

--U postojećoj bazi DB_ASSIG1 deklarisati varijable:(Ja sam dao ime bazi AssigmentDB)

DECLARE @var01 INT,
@var02 VARCHAR(10)
SELECT @var01=100,
@var02='MyVar'

DECLARE @var03 VARCHAR(10),
@var04 INT
SET @var03='YourVar'
SET @var04= 1

DECLARE 
@var05 INT = 0,
@var06 NVARCHAR(10)= 'TheirVar'

/*Napisati naredbu CASE koja će za svaki pojedinačni dan u sedmici moći da vrati naziv dana,
 a njenim izvršavanjem će biti vraćen naziv dana koji trenutno jeste.*/

SELECT CASE (SELECT DATENAME(dw, CURRENT_TIMESTAMP))
WHEN 'Monday' THEN N'Ponedeljak'
WHEN 'Tuesday' THEN N'Utorak'
WHEN 'Wednesday' THEN N'Sreda'
WHEN 'Thursday' THEN N'Cetvrtak'
WHEN 'Friday' THEN N'Petak'
WHEN 'Saturday' THEN N'Subota'
ELSE N'Nedelja'
END; 

--Odradio sam zadatak na jos jedan slican nacin
SELECT  CASE DATEPART(WEEKDAY,GETDATE())  
    WHEN 1 THEN N'Nedelja' 
    WHEN 2 THEN N'Ponedeljak' 
    WHEN 3 THEN N'Utorak' 
    WHEN 4 THEN N'Sreda' 
    WHEN 5 THEN N'Cetvrtak' 
    WHEN 6 THEN N'Petak' 
    WHEN 7 THEN N'Subota' 
END


--Napisati korisnički definisanu funkciju koja će za zadati datum vratiti redni broj dana u nedelji.

CREATE FUNCTION DanUNedelji ( @datum [datetime] )
RETURNS [int]
AS
BEGIN
DECLARE @weekday [int]
IF ( SELECT DATENAME(dw, @datum)) IN ( 'Monday' )
BEGIN
SET @weekday = 1
END
ELSE IF ( SELECT DATENAME(dw, @datum)) IN ( 'Tuesday' )
BEGIN
SET @weekday = 2 
END
ELSE IF ( SELECT DATENAME(dw, @datum)) IN ( 'Wednesday' )
BEGIN
SET @weekday = 3 
END
ELSE IF ( SELECT DATENAME(dw, @datum)) IN ( 'Thursday' )
BEGIN
SET @weekday = 4
END
ELSE IF ( SELECT DATENAME(dw, @datum)) IN ( 'Friday' )
BEGIN
SET @weekday = 5 
END
ELSE IF ( SELECT DATENAME(dw, @datum)) IN ( 'Saturday' )
BEGIN
SET @weekday = 6 
END
ELSE
BEGIN
SET @weekday = 7 
END
RETURN (@weekday)
END;


--Izvrsavanje upita
SELECT dbo.DanUNedelji('March 15, 2022')


