#Count the number of patients each doctor sees and display their specialty.
#This will help managers determine which doctors are over or underworked.

use hospitaldatabase;

Select employee.efname as FisrtName, employee.elname as LastName, doctor.dspecialty as Specialty, count(distinct visit.PID) as NumPatients
From employee, doctor, visit 
Where doctor.did = visit.did and
doctor.did = employee.eid
group by doctor.did
order by -count(distinct visit.PID);
