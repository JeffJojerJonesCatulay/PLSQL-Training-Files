SET SERVEROUTPUT ON;
-- FORALL LOWER AND UPPER BOUND
--CREATE TABLE tut_77 (
--    Mul_tab    NUMBER(5)
--);
--/
--DECLARE
--    TYPE My_Array IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
--    col_var My_Array;
--
--    tot_rec NUMBER;
--BEGIN
--
--    FOR i IN 1..10 LOOP
--        col_var (i) := 9*i;
--    END LOOP;
--
--    FORALL idx IN 1..10
--        INSERT INTO tut_77 (mul_tab)
--        VALUES (col_var (idx));
--
--    SELECT count (*) INTO tot_rec FROM tut_77;
--    DBMS_OUTPUT.PUT_LINE ('Total records inserted are '||tot_rec);
--END;
--/

-- INDICES OF
--DECLARE
--    TYPE My_Array IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
--    col_var My_Array;
--BEGIN
--    FOR i IN 1..10 LOOP
--        col_var (i) := 9*i;
--    END LOOP;
--    col_var.DELETE(3, 6);
--    FORALL i IN INDICES OF col_var
--        INSERT INTO tut_77 (mul_tab)
--        VALUES (col_var (i));
--END;
--/

-- VALUES OF
--DECLARE
--    TYPE calendar IS TABLE OF NUMBER;
--    dates calendar := calendar(11, 12, 13, 14, 15, 16, 17, 18, 19);
--    
--    TYPE My_Array IS TABLE OF PLS_INTEGER INDEX BY PLS_INTEGER;
--    idx My_Array;
--BEGIN
--    idx (1) := 1;
--    idx (3) := 3;
--    idx (5) := 5;
--    
--    FORALL i IN VALUES OF idx
--        INSERT INTO tut_77 (mul_tab)
--        VALUES (dates (i));
--END;
--/

--TRUNCATE TABLE tut_77;
--SELECT * FROM tut_77;



















