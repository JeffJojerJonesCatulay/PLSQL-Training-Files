SET SERVEROUTPUT ON;
-- EXECUTE IMMEDIATE QUERY 
--DECLARE
--    sql_query VARCHAR2(150);
--    total_num NUMBER;
--BEGIN
--    sql_query := 'SELECT count(*) FROM people';
--    EXECUTE IMMEDIATE sql_query INTO total_num;
--    DBMS_OUTPUT.PUT_LINE(total_num);
--END;
--/

-- EXECUTE IMMEDIATE QUERY DDL STATEMENTS
--DECLARE
--    sql_query VARCHAR2(150);
--BEGIN
--    sql_query := 'CREATE TABLE superheroes (
--        id NUMBER,
--        real_name VARCHAR2(50),
--        HERO_name VARCHAR2(50)
--    )';
--    
--    EXECUTE IMMEDIATE sql_query;
--END;
--/
--desc superheroes;

-- EXECUTE IMMEDIATE QUERY USING STATEMENT
--DECLARE
--    sql_query VARCHAR2(150);
--BEGIN
--    sql_query := 'INSERT INTO people (id, people_name, people_age) VALUES (:p_id, :p_name, :p_age)';
--    EXECUTE IMMEDIATE sql_query USING 3, 'Erica', 22;
--END;
--/
--SELECT * FROM people;

-- EXECUTE IMMEDIATE BULK COLLECT
--DECLARE
--    TYPE nt_name IS TABLE OF VARCHAR2(20);
--    p_name nt_name;
--
--    sql_query VARCHAR2(150);
--BEGIN
--    sql_query := 'SELECT people_name FROM people';
--    EXECUTE IMMEDIATE sql_query BULK COLLECT INTO p_name;
--    FOR i IN 1..p_name.COUNT LOOP
--        DBMS_OUTPUT.PUT_LINE(p_name(i));
--    END LOOP;
--END;
--/



























