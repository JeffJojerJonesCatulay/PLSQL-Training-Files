SET SERVEROUTPUT ON;
-- CURSOR SIMPLE LOOP
DECLARE
    v_name people.people_name%type;
--    CURSOR people_cursor IS SELECT people_name FROM people WHERE people_age > 20;
    CURSOR people_cursor (p_id people.id%type) IS SELECT people_name FROM people WHERE id = p_id;
BEGIN
    OPEN people_cursor(2);
    LOOP
        FETCH people_cursor INTO v_name;
        EXIT WHEN people_cursor%notfound;
        dbms_output.put_line(v_name);
    END LOOP;
    CLOSE people_cursor;
END;
/



