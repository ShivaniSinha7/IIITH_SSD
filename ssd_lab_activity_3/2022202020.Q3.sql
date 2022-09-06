select Essn, count(Pno)
from WORKS_ON
group by Essn 
having Essn =
(select Mgr_ssn
from DEPARTMENT
where Dnumber = (select dnum 
				from PROJECT
				where Pnumber = 2));
						
                            

                








