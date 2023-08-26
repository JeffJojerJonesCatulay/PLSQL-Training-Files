SET SERVEROUTPUT ON;
-- VARRAY AS PL/SQL BLOCK
DECLARE
    TYPE varr_grade IS VARRAY (3) OF NUMBER;
    jeff_grade varr_grade := varr_grade(90, 91, 92);
BEGIN
    FOR i IN 1..jeff_grade.LIMIT LOOP
        DBMS_OUTPUT.PUT_LINE(jeff_grade(i));
    END LOOP;
END;
/

-- VARRAY AS DATABASE OBJECT
CREATE OR REPLACE TYPE calendar IS VARRAY (3) of NUMBER;
/

CREATE TABLE work_day(
    w_day VARCHAR(20),
    w_date calendar
);
/

INSERT INTO work_day (w_day, w_date)
VALUES('Monday', calendar(12, 24, 30));
/

SELECT * FROM work_day;

SELECT
    tab1.w_day,
    tab2.column_value
FROM work_day tab1, TABLE (tab1.w_date) tab2;
/















