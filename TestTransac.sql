

/* DECLARE @DataId int
SELECT  @DataId = MAX(p.ProductID) FROM dbo.Products p
PRINT @DataId 
GO 

DECLARE @string VARCHAR(10);
SET @string = 1;
SELECT @string + ' is a string.' */

/* DECLARE @string VARCHAR(10);
SET @string = 1;
SELECT @string + ' is a string.'
GO
DECLARE @entero  int;
SET @entero = 100;
DECLARE @cadena NVARCHAR(25);
SET @cadena = N'Ramón y igual cabe xino 木';
SELECT  CAST( (@entero +23) AS varchar) + ' is a string.' + @cadena;
SELECT CONVERT( varchar, @entero,1) 
GO */
/* DECLARE @myval DECIMAL(5, 2);
SET @myval = 193.57;

SELECT CAST(CAST(@myval AS VARBINARY(20)) AS DECIMAL(10, 5));

-- Or, using CONVERT
SELECT CONVERT(DECIMAL(10, 5), CONVERT(VARBINARY(20), @myval));
GO
 */
/* SELECT CAST(N'abc木' AS nvarchar(5)) COLLATE French_CS_AS;
GO */

/* DECLARE @DATE VARCHAR(30)='18 Mar 2016 18:57:35 GMT'
    SELECT  CONVERT(DATETIME,REPLACE(@DATE,'GMT',''))
    PRINT @DATE
    GO */


/* 
SELECT   
    CASE WHEN TRY_CAST('test' AS float) IS NULL   
    THEN 'Cast failed'  
    ELSE 'Cast succeeded'  
END AS Result;  
GO   */


/* IF (TRY_CAST('test' AS decimal) IS NULL) 
  BEGIN
 PRINT 'NULO';
 PRINT ' MAS NULO';
 END
ELSE
  PRINT 'NO NULO'
GO */


/* SELECT @@CURSOR_ROWS;  
-- Esto es un comentario
DECLARE Name_Cursor CURSOR FOR  
SELECT  p.ProductID ,@@CURSOR_ROWS as cursor_rows FROM Products p;
OPEN Name_Cursor;  
FETCH NEXT FROM Name_Cursor;  
SELECT @@CURSOR_ROWS as cursor_rows;  
CLOSE Name_Cursor;  
DEALLOCATE Name_Cursor;  
GO               
 */


 /* SELECT @@TRANCOUNT 
 BEGIN TRANSACTION
 SELECT @@TRANCOUNT 
 ROLLBACK TRANSACTION
 
 SELECT @@TRANCOUNT 
  GO
 */

DECLARE @numero decimal (10);
IF (@numero IS NULL) 
    BEGIN
     PRINT CAST (@numero AS varchar) + ' ES NULO'
    END
ELSE
    BEGIN
     PRINT CAST (@numero AS varchar) + ' NO ES NULO'
    END;
GO



