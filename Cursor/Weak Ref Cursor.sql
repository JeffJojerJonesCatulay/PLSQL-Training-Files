SET SERVEROUTPUT ON;
DECLARE
    TYPE refCur IS REF CURSOR;
    cur refCur;
    p_name people.people_name%TYPE;
    p_age people.people_age%TYPE;
BEGIN
    OPEN cur FOR SELECT people_name, people_age FROM people WHERE id = 1;
    FETCH cur INTO p_name, p_age;
    CLOSE CUR;
    DBMS_OUTPUT.PUT_LINE(p_name || ' ' || p_age);
END;
/