#Find the number of patients and nurses a department has.
#Managers can cheeck if there are enough nurses to account for the number of patients.

use hospitaldatabase;

Select Doctorsupervision.department as Department, count(distinct visit.PID) as NumPatients, count(distinct doctorsupervision.NID) as NumNurses
from doctorsupervision, visit where
doctorsupervision.nid = visit.nid
group by doctorsupervision.department
order by -count(distinct visit.PID);
