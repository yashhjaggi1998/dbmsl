DECLARE



CREATE PROCEDURE proc_Grade(x IN number , y OUT varchar2(10)) IS
BEGIN
	IF x IN (10000,20000) THEN
		y := 'Platinum';
	ELSIF x IN (5000,9999) THEN
		y := 'Gold';
	ELSIF x IN (2000,4999) THEN
		y := 'Silver';
	ElSE
		y := 'Not Eligible';
END;


BEGIN
END;


/
