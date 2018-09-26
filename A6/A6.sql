DECLARE
CURSOR finecur IS
SELECT * FROM old 
MINUS
SELECT * FROM new;

v_fine_cur finecur%rowtype;

BEGIN
	--dbms_output.put_line('Total rows in cursor are ' || finecur%ROWCOUNT);
	FOR v_fine_cur IN finecur LOOP
		INSERT INTO new VALUES(v_fine_cur.name , v_fine_cur.salary);
	END LOOP;
	dbms_output.put_line('Values copied from OLD table to NEW table');
	 
END;
/
