SET SERVEROUTPUT ON;
--DECLARE
--    e_error EXCEPTION;
--    num NUMBER := 0;
--BEGIN
--    IF num = 0 THEN
--        RAISE e_error;
--    ELSE
--        dbms_output.put_line('NOT ZERO');
--    END IF;
--    
--    EXCEPTION WHEN e_error THEN
--        dbms_output.put_line('ZERO');
--END;
--/

DECLARE
  ex_age    EXCEPTION;
  age       NUMBER    := 18;
  PRAGMA EXCEPTION_INIT(ex_age, -20008);
BEGIN
  IF age=18 THEN
    RAISE_APPLICATION_ERROR(-20008, '18');

    ELSIF age=17 THEN
    RAISE_APPLICATION_ERROR(-20008, '17');
  END IF;
  
  DBMS_OUTPUT.PUT_LINE('Sure! What would you like to have?');
  
  EXCEPTION WHEN ex_age THEN
    DBMS_OUTPUT.PUT_LINE(SQLERRM);   
END;
/