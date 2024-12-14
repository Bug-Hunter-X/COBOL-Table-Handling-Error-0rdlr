01  WS-AREA. 
    05  WS-COUNT PIC 9(5) VALUE ZEROS. 
    05  WS-TABLE OCCURS 10 TIMES INDEXED BY WS-INDEX. 
       10  WS-ITEM PIC X(20). 

PROCEDURE DIVISION.
    PERFORM VARYING WS-INDEX FROM 1 BY 1 UNTIL WS-INDEX > 10 
       MOVE "Record " & WS-INDEX TO WS-ITEM(WS-INDEX) 
    END-PERFORM. 

    DISPLAY "Table populated successfully". 
    STOP RUN.