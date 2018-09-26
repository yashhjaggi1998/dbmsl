set verify off

DECLARE
p_cust_id CustomerYashh.cust_id%type;
p_name CustomerYashh.name%type;
p_DateOfPayment CustomerYashh.dateOfPayment%type;
p_NameOfScheme CustomerYashh.nameOfScheme%type;
p_Status CustomerYashh.Status%type;

BEGIN

p_cust_id :=&p_cust_id;
p_name :='&p_name';
p_DateOfPayment :=TO_DATE('&p_DateOfPayment','dd/mm/yyyy');
p_NameOfScheme :='&p_NameOfScheme';
p_Status :='&p_Status';

INSERT INTO CustomerYashh values(p_cust_id,p_name,p_dateOfPayment,p_NameOfScheme,p_Status);



END;
/
