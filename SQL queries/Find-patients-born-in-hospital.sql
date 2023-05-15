#Find all of the patients who were born in this hospital.
#This can help with the recollection of historical data for patient and physician use.

use hospitaldatabase;

Select patient.pfname as FirstName, patient.plname as LastName, patient.PDOB as DOB 
From patient, visit 
Where patient.PID = visit.PID and
patient.PDOB = visit.DateIn;
