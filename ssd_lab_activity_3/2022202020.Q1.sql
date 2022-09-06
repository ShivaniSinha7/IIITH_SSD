select concat(Fname,Minit, Lname) as Full_Name, EMPLOYEE.Super_ssn, DEPARTMENT.Dnumber, DEPARTMENT.Dname
from EMPLOYEE inner join 
(select Essn, SUM(Hours) as sum
from WORKS_ON
group by Essn) AS T inner join DEPARTMENT
where T.sum < 40 and EMPLOYEE.Ssn = T.Essn and EMPLOYEE.Ssn = DEPARTMENT.Mgr_ssn;



