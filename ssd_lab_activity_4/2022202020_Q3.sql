DELIMITER &&
DROP procedure IF EXISTS Q3;
create procedure Q3 ()
BEGIN
select T.CUST_NAME, T.GRADE
from (select CUST_NAME, GRADE, (OPENING_AMT + RECEIVE_AMT) as total
from customer) as T
where T.total > 10000;
END &&
DELIMITER ;

call Q3();