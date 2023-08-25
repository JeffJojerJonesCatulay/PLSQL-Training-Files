SET SERVEROUTPUT ON;
DECLARE
num NUMBER := &enter_a_number;

BEGIN
dbms_output.put_line(num);
END;
/