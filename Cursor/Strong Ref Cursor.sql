SET SERVEROUTPUT ON;
-- TABLE BASED RECORD
--DECLARE
--    TYPE refCur IS REF CURSOR RETURN people%ROWTYPE;
--    cur refCur;
--    res people%ROWTYPE;
--BEGIN
--    OPEN cur FOR SELECT * FROM people WHERE id = 1;
--    FETCH cur INTO res;
--    CLOSE cur;
--    DBMS_OUTPUT.PUT_LINE(res.people_name);
--END;
--/

-- USER DEFINED RECORD
DECLARE
    TYPE rec IS RECORD (
        p_name people.people_name%TYPE
    );
    
    TYPE refCur IS REF CURSOR RETURN rec;
    cur refCur;
    res people.people_name%TYPE;
BEGIN
    OPEN cur FOR SELECT people_name FROM people WHERE id = 1;
    FETCH cur INTO res;
    CLOSE cur;
    DBMS_OUTPUT.PUT_LINE(res);
END;
/
