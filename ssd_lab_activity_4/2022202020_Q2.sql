DELIMITER &&
drop PROCEDURE IF exists Q2;
create procedure Q2 (IN ans varchar(30))
BEGIN
select CUST_NAME
from customer
where WORKING_AREA = ans;
END &&
DELIMITER ;

call Q2('Bangalore');