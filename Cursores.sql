
DECLARE cProducts  CURSOR  FOR
SELECT * FROM [dbo].Products;


DECLARE @Status int = CURSOR_STATUS('global','cProducts');
OPEN GLOBAL cProducts;
SELECT @Status = CURSOR_STATUS('global','cProducts') ;
DECLARE @SEstado  VARCHAR = 'qe';
SET @SEstado = SELECT 
CASE   
     WHEN CURSOR_STATUS('global','cProducts') = -3 THEN  ' Abierto'          
     WHEN CURSOR_STATUS('global','cProducts') = -2 THEN  ' Abierto'          
     WHEN CURSOR_STATUS('global','cProducts') = -1 THEN  ' Abierto'     
     WHEN CURSOR_STATUS('global','cProducts') = 0 THEN  ' Abierto'     
     WHEN CURSOR_STATUS('global','cProducts') = 1 THEN  ' Abierto'
     WHEN CURSOR_STATUS('global','cProducts') = 2 THEN  ' Cerrado'
     ELSE 'Otra cosa'
END;



-- Simple CASE expression:

SELECT 
@SEstado =
CASE   
     WHEN CURSOR_STATUS('global','cProducts') = -3 THEN  ' Abierto'          
     WHEN CURSOR_STATUS('global','cProducts') = -2 THEN  ' Abierto'          
     WHEN CURSOR_STATUS('global','cProducts') = -1 THEN  ' Abierto'     
     WHEN CURSOR_STATUS('global','cProducts') = 0 THEN  ' Abierto'     
     WHEN CURSOR_STATUS('global','cProducts') = 1 THEN  ' Abierto'
     WHEN CURSOR_STATUS('global','cProducts') = 2 THEN  ' Cerrado'
     ELSE 'Otra cosa'
END;
PRINT 'STATUSsss:' + @SEstado;
CLOSE cProducts;  
SELECT 
@SEstado =
CASE   
     WHEN CURSOR_STATUS('global','cProducts') = -3 THEN  ' Abierto'          
     WHEN CURSOR_STATUS('global','cProducts') = -2 THEN  ' Abierto'          
     WHEN CURSOR_STATUS('global','cProducts') = -1 THEN  ' Cerrado'     
     WHEN CURSOR_STATUS('global','cProducts') = 0 THEN  ' Abierto'     
     WHEN CURSOR_STATUS('global','cProducts') = 1 THEN  ' Abierto'
     WHEN CURSOR_STATUS('global','cProducts') = 2 THEN  ' Cerrado'
END;
PRINT 'STATUSss:' + @SEstado;
DEALLOCATE cProducts;
SELECT 
@SEstado =
CASE   
     WHEN CURSOR_STATUS('global','cProducts') = -3 THEN  ' Abierto'          
     WHEN CURSOR_STATUS('global','cProducts') = -2 THEN  ' Abierto'          
     WHEN CURSOR_STATUS('global','cProducts') = -1 THEN  ' Abierto'     
     WHEN CURSOR_STATUS('global','cProducts') = 0 THEN  ' Abierto'     
     WHEN CURSOR_STATUS('global','cProducts') = 1 THEN  ' Abierto'
     WHEN CURSOR_STATUS('global','cProducts') = 2 THEN  ' Cerrado'
END;
PRINT 'STATUSsss:' + @SEstado;
GO

/* FETCH NEXT FROM cProducts;  
 WHILE @@FETCH_STATUS = 0      
    BEGIN  
        PRINT @@FETCH_STATUS;
        FETCH NEXT FROM cProducts  
    END;    
        PRINT @@FETCH_STATUS;     *
    
CLOSE cProducts;  

SELECT @Status = CURSOR_STATUS('global','cProducts') ;
DEALLOCATE cProducts; 
SELECT @Status = CURSOR_STATUS('global','cProducts') ;
GO */




