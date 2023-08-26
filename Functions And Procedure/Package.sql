-- PACKAGE
CREATE OR REPLACE PACKAGE p_pack IS
    FUNCTION greet RETURN VARCHAR2;
END;
/
-- PACKAGE BODY
CREATE OR REPLACE PACKAGE BODY p_pack IS
    FUNCTION greet RETURN VARCHAR2 IS
    BEGIN
        return 'HELLO WORLD';
    END;

END;
/

-- EXECUTE
SET SERVEROUTPUT ON;
BEGIN
    dbms_output.put_line(p_pack.greet);
END;
/