# Select the Doctor, Nurse, and Patient involved in a particular visit.
select visit.VID, patient.PID, patient.pfname, patient.plname, employee.eid, employee.efname, employee.elname
from patient, doctor, employee, visit where
visit.vid = 100045 and
visit.did = doctor.did and
visit.pid = patient.pid and
employee.eid = doctor.did
union
select visit.VID, patient.PID, patient.pfname, patient.plname, employee.eid, employee.efname, employee.elname
from patient, nurse, employee, visit where
visit.vid = 100045 and
visit.nid = nurse.nid and
visit.pid = patient.pid and
employee.eid = nurse.nid;


#This will allow us to see which employees were involved in a particular visit and could help with contact tracing and employee accountability.