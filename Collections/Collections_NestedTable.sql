SET SERVEROUTPUT ON;
-- NESTED TABLE COLLECTION AS PLS/SQL BLOCK
--DECLARE
--    TYPE grades IS TABLE OF NUMBER NOT NULL;
--    v_my_grades grades := grades(78, 79, 80);
--BEGIN
--    FOR i in 1..v_my_grades.COUNT LOOP
--        DBMS_OUTPUT.PUT_LINE(v_my_grades(i));
--    END LOOP;
--END;
--/

-- NESTED TABLE COLLECTION AS DATABASE OBJECT
--CREATE OR REPLACE TYPE work_days IS TABLE OF VARCHAR(20);
--/
--CREATE TABLE employee(
--    e_id NUMBER,
--    e_name VARCHAR2(20),
--    e_days work_days
--) NESTED TABLE e_days STORE AS something;
--/
--desc employee;

-- NESTED TABLE COLLECTION AS USER DEFINED DATA TYPE
--CREATE OR REPLACE TYPE p_obj AS OBJECT(
--    p_age NUMBER,
--    p_name VARCHAR2(20)
--);
--/
--
--CREATE OR REPLACE TYPE p_nt IS TABLE OF p_obj;
--/
--
--CREATE TABLE p_table(
--    p_id NUMBER,
--    p_data p_nt
--) NESTED TABLE p_data STORE AS p_data_1;
--/
--
--desc p_table;
--
--insert into p_table(p_id, p_data) values
--(1, p_nt(p_obj(22, 'Jeff')));
--/

--select * from p_table;




















