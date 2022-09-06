USE CUSTOMER_DB;
DELIMITER &&
DROP procedure IF EXISTS Q4;
CREATE PROCEDURE Q4 ()
BEGIN
DECLARE ind INTEGER DEFAULT 0;
DECLARE C_name VARCHAR(100);
DECLARE C_city VARCHAR(100);
declare C_country VARCHAR(100);
declare C_grade int;
DECLARE stud_cursor cursor for
select CUST_NAME, CUST_CITY, CUST_COUNTRY, GRADE 
from customer
where AGENT_CODE like 'A00%';
DECLARE CONTINUE handler for NOT FOUND SET ind = 1;
open stud_cursor;
get_list: LOOP
FETCH stud_cursor INTO C_name, C_city, C_country, C_grade;
SELECT C_name, C_city, C_country, C_grade;
IF ind = 1 THEN
LEAVE get_list;
END IF;
END LOOP get_list;
CLOSE stud_cursor;
END &&
DELIMITER ;

call Q4();
