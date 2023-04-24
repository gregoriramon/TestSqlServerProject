/* DECLARE @numero decimal (10,5);
PRINT ' ES NUMERO'
     SET @numero = 123.123457;
IF (@numero IS NULL) 
    BEGIN
     PRINT CAST (@numero AS varchar) + ' ES NULO';
    END
ELSE
    BEGIN
     PRINT CAST (@numero AS varchar) + ' NO ES NULO';
    END;
GO


-- Create a new table called 'TableName' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.DimCustomer', 'U') IS NOT NULL
DROP TABLE dbo.DimCustomer
GO
-- Create the table in the specified schema
CREATE TABLE dbo.DimCustomer
(
    TableNameId INT NOT NULL PRIMARY KEY, -- primary key column
    DimCustomer [NVARCHAR](50) NOT NULL,
    MiddleName [NVARCHAR](50) NOT NULL,
    LastName [NVARCHAR](50) NOT NULL,
    -- specify more columns here
);
-- Insert rows into table 'TableName'
INSERT INTO dbo.DimCustomer
VALUES( -- first row: values for the columns in the list above
1,'Ramón', 'Gregori', 'Esteve'
),
( -- second row: values for the columns in the list above
 2,'Ramón 2', 'Gregori 2', 'Esteve'
),
( -- second row: values for the columns in the list above
 3,'Ramón 2', 'Gregori 2', 'Esteve'
)
-- add more rows here
GO */


/* DECLARE @Iteration Integer = 0;
WHILE @Iteration <10  
BEGIN  
    SELECT DimCustomer, MiddleName   
    FROM dbo.DimCustomer WHERE MiddleName = 'Gregori';
    SET @Iteration += 1  ;
END;
GO */


/* USE TestData


select *
from dbo.DimCustomer
GO

DECLARE @Iteration Integer = 0;
WHILE @Iteration <100  
BEGIN
    SET @Iteration += 1;
    PRINT CAST (@Iteration as varchar) ;
    IF (@Iteration > 10) BEGIN
                BREAK
    END ELSE
        IF (@Iteration>5)
        BEGIN
        PRINT 'CONTINUE: ' + CAST (@Iteration as varchar) ;
        CONTINUE;
    END;
END;
GO */


/* DECLARE @Numero int = 6;
PRINT CAST (@Numero  AS VARCHAR) +  ' es este';
BEGIN TRY
PRINT @Numero  +  ' es este';
END TRY
BEGIN CATCH
 PRINT "ERROR:" + @@ERROR
END CATCH
GO */

/* USE TestData;  
GO  


BEGIN TRY  
--  Force error 2627, Violation of PRIMARY KEY constraint to be raised.  
    INSERT dbo.TestRethrow VALUES(5);  
END TRY  
BEGIN CATCH  
  
    PRINT 'In catch block.';  
     THROW;    
END CATCH; 
GO */
/* DECLARE @Hora DATETIME = SYSDATETIME();
PRINT @Hora;
PRINT 'Pasado a varchar:' +  CONVERT( VARCHAR, @Hora,108);
WAITFOR  DELAY '00:00:01';
SET @Hora = SYSDATETIME();
PRINT 'Pasado a varchar:' +  CONVERT( VARCHAR, @Hora,108);
GO
 */

/* DECLARE @Hora DATETIME = SYSDATETIME();
PRINT @Hora;
PRINT 'Pasado a varchar:' +  CONVERT( VARCHAR, @Hora,108);
SET @Hora = DATEADD(SECOND,5,@Hora);
PRINT 'Pasado a varchar:' +  CONVERT( VARCHAR, @Hora,108);
WAITFOR TIME @Hora;
SET @Hora = SYSDATETIME();
PRINT 'Pasado a varchar:' +  CONVERT( VARCHAR, @Hora,108);
GO */


DECLARE @Iter int = 0;
DECLARE @HoraIni DATETIME = SYSDATETIME();
DECLARE @HoraFin DATETIME = @HoraIni;
PRINT 'Pasado a varchar:' +  CONVERT( VARCHAR, @HoraFin,108);
DECLARE @Intervalo int = DATEDIFF(SECOND, @HoraIni,@HoraFin);
PRINT 'Intervalor ' +  CAST(@Intervalo AS VARCHAR) ;

WHILE (DATEDIFF(MILLISECOND, @HoraIni,@HoraFin) <=1 and @Iter <=1000)
BEGIN
    SET @Iter += 1;
    PRINT 'Iter :' + CAST(@Iter as varchar) ;
    SET @HoraFin = SYSDATETIME();
    PRINT 'Pasado a varchar:' +  CONVERT( VARCHAR, @HoraFin,114);
END  
GO


