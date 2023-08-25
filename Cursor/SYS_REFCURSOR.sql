SET SERVEROUTPUT ON;
DECLARE
    refCur SYS_REFCURSOR;

    p_name people.people_name%TYPE;
    p_age people.people_age%TYPE;
BEGIN
    OPEN refCur FOR SELECT people_name, people_age FROM people WHERE id = 1;
    FETCH refCur INTO p_name, p_age;
    CLOSE refCur;
    DBMS_OUTPUT.PUT_LINE(p_name || ' ' || p_age);
END;
/