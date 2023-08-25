SET SERVEROUTPUT ON;
-- TABLE BASED RECORD
DECLARE
    v_people people%rowtype;
BEGIN
    SELECT * INTO v_people FROM people WHERE id = 2;
    dbms_output.put_line(v_people.people_age);
END;
/
-- TABLE BASED RECORD 2
DECLARE
    v_people people%rowtype;
BEGIN
    SELECT people_name INTO v_people.people_name FROM people WHERE id = 2;
    dbms_output.put_line(v_people.people_name);
END;
/
-- CURSOR BASED RECORD
DECLARE
    CURSOR p_cursor IS
    SELECT people_name FROM people
    WHERE id = 1;
    
    v_cur p_cursor%ROWTYPE;
BEGIN
    OPEN p_cursor;
    FETCH p_cursor INTO v_cur;
    dbms_output.put_line(v_cur.people_name);
    CLOSE p_cursor;
END;
/
-- CURSOR BASED RECORD 2
DECLARE
    CURSOR p_cursor IS
    SELECT people_name, people_age FROM people
    WHERE id >= 1;
    
    v_cur p_cursor%ROWTYPE;
BEGIN
    OPEN p_cursor;
    LOOP
        FETCH p_cursor INTO v_cur;
        EXIT WHEN p_cursor%NOTFOUND;
        dbms_output.put_line(v_cur.people_name || ' ' || v_cur.people_age ); 
    END LOOP;
    CLOSE p_cursor;
END;
/
-- USER DEFINED RECORD
DECLARE
   TYPE p_type IS RECORD(
        v_name people.people_name%type,
        v_age people.people_age%type
   );
   
   v_type p_type;
BEGIN
    SELECT people_name, people_age INTO v_type.v_name, v_type.v_age 
    FROM people WHERE id = 1;
    dbms_output.put_line(v_type.v_name || ' ' || v_type.v_age ); 
END;
/





















