set verify off
DECLARE 
curr_date DATE := CURRENT_DATE;
temp integer;   
id integer;
p_cust_id CustomerYashh.cust_id%type;
p_DateOfPayment CustomerYashh.dateOfPayment%type;
p_Status CustomerYashh.Status%type;
p_amount FineYashh.amount%type;

BEGIN 

id := &id;
SELECT cust_id,dateOfPayment,Status INTO p_cust_id,p_dateOfPayment,p_Status FROM CustomerYashh WHERE cust_id = id;

temp := curr_date - p_dateOfPayment -1;

IF ( temp <= 30) THEN
	p_amount := temp * 5;
ELSE 
	
	dbms_output.put_line(temp);
	p_amount :=  temp*50; 	
END IF;

INSERT INTO FineYashh VALUES(p_cust_id,p_dateOfPayment,p_amount);

update CustomerYashh SET Status = 'P' WHERE cust_id = p_cust_id;

END;
/   
