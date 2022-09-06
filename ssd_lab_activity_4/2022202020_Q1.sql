DELIMITER &&
create procedure ADDITION (IN a int, IN b int, OUT ans int)
BEGIN
select a+b INTO ans;
select ans;
END &&
DELIMITER ;

CALL ADDITION(10,12,@ans);
 
