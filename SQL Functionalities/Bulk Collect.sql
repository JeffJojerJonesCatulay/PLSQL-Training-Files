SET SERVEROUTPUT ON;
-- SELECT-INTO
--DECLARE
--    TYPE nt_name IS TABLE OF VARCHAR2(20);
--    p_name nt_name;
--BEGIN
--    SELECT people_name BULK COLLECT INTO p_name FROM people;
--    FOR i IN 1..p_name.COUNT LOOP
--        DBMS_OUTPUT.PUT_LINE(p_name(i));
--    END LOOP;
--END;
--/

-- FETCH-INTO
--DECLARE
--    CURSOR cur_name IS SELECT people_name FROM people;
--    TYPE nt_name IS TABLE OF VARCHAR2(20);
--    p_name nt_name;
--BEGIN
--    OPEN cur_name;
--    LOOP
--        FETCH cur_name BULK COLLECT INTO p_name;
--        EXIT WHEN p_name.COUNT = 0;
--        FOR i in p_name.FIRST..p_name.LAST LOOP
--            DBMS_OUTPUT.PUT_LINE(p_name(i));
--        END LOOP;
--    END LOOP;
--    CLOSE cur_name;
--END;
--/

-- LIMIT CLAUSE
DECLARE
    CURSOR cur_name IS SELECT people_name FROM people;
    TYPE nt_name IS TABLE OF VARCHAR2(20);
    p_name nt_name;
BEGIN
    OPEN cur_name;
    FETCH cur_name BULK COLLECT INTO p_name LIMIT 2;
    FOR i IN 1..p_name.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(p_name(i));
    END LOOP;
    CLOSE cur_name;
END;
/





























