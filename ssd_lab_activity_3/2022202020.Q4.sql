select DEPARTMENT.Dnumber, count(DEPT_LOCATIONS.Dlocation) as NumberOfLocation
from DEPT_LOCATIONS 
inner join
DEPARTMENT
where DEPT_LOCATIONS.Dnumber =

(select DEPARTMENT.Dnumber
from DEPARTMENT
where DEPARTMENT.Mgr_ssn = 
(select Mgr_ssn
from DEPARTMENT
inner join DEPENDENT
where DEPARTMENT.Mgr_ssn = DEPENDENT.Essn and DEPENDENT.Sex = 'F'
group by Mgr_ssn
having count(Essn) >=2))
group by DEPARTMENT.Dnumber;