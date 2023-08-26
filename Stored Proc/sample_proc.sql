CREATE OR REPLACE PROCEDURE findDetails(
        i_id IN number, 
        o_details OUT SYS_REFCURSOR
    ) 
    IS 
    v_query VARCHAR(2000);
BEGIN 
    v_query := 'SELECT LASTNAME as l_name, DEPT FROM PERSONS a INNER JOIN DEPARTMENT b on a.personid = b.deptid AND a.personid = :p_id';
    OPEN o_details FOR v_query USING i_id;
--    CLOSE o_details;
END;  
/






