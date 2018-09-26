CREATE TRIGGER del
BEFORE DELETE
ON StudentYashh
FOR EACH ROW

BEGIN

INSERT INTO ALUMNIYASHH VALUES(:old.rollno , :old.name , :old.branch , :old.percent);

END;
/