SET SERVEROUTPUT ON;
DECLARE
    i_id NUMBER;
    out_details SYS_REFCURSOR;
    
    TYPE rec IS RECORD (
        v_lastname Persons.LASTNAME%TYPE,
        v_dept Department.DEPT%TYPE
    );
    
    r_rec rec;
BEGIN
    i_id := 1;
    findDetails(i_id, out_details);

--    OPEN out_details;
    LOOP
        FETCH out_details INTO r_rec;
        EXIT WHEN out_details%notfound;
        dbms_output.put_line(r_rec.v_lastname || ' ' || r_rec.v_dept);
    END LOOP;
    CLOSE out_details;
END;
/