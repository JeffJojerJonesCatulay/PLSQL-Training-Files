SET SERVEROUTPUT ON;
DECLARE
    TYPE greetings IS TABLE OF VARCHAR(20) INDEX BY VARCHAR(20);
    pinoy_greetings greetings;
    flag VARCHAR2(20);
BEGIN
    pinoy_greetings('1') := 'Mabuhay';
    pinoy_greetings('2') := 'Welcome';
    
    --    DBMS_OUTPUT.PUT_LINE(pinoy_greetings('1'));
    
    flag := pinoy_greetings.FIRST;
    WHILE flag IS NOT NULL LOOP
        DBMS_OUTPUT.PUT_LINE('Key: ' || flag || ' Value: ' || pinoy_greetings(flag));
        flag := pinoy_greetings.NEXT(flag);
    END LOOP;
    
END;
/