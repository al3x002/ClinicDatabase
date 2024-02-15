This is a simple database that concerns the creation of a management system for a medical clinic. The database will be used to store data about doctors, patients, 
visits, employees, wards and the results of medical examinations. The system allows you to register visits, prescribing patients to doctors, monitoring diagnoses, 
and analyzing statistics on the tests carried out. 

The database contains 6 tables, 2 views and 2 check restrictions. In addition, an example function, procedure, and trigger is provided.

This is what the tables do:
1. The 'Doctors' table shall store information about doctors, such as their first name, last name and
specialization.
2. The "Patients" table contains data about patients, including name, surname, social security number and address.
3. The "Visits" table shall record information about visits, including doctor, patient, date,
time and diagnosis.
4. The "Employees" table stores data about the clinic's employees, such as name,
name and job title.
5. The "Departments" table contains information about the departments of the clinic, including the name and
Location.
6. The "Research" table records the results of medical examinations, including the patient, doctor,
type of test and result.

CHECK LIMITATIONS:
1. The CHECK restriction ensures that each patient's PESEL number must be 11 characters long. If
the length of the PESEL number will be different, adding a new record to the Patients table will fail.
2. 2. The CHECK constraint checks if the visit date is a future date. If the date of your visit is
earlier than today (CURDATE()), an attempt to add this visit will be blocked.

VIEWS:
1. The DoctorsPatients view displays the combined data about doctors and assigned to
patients, including the name of the doctor and the name of the patient.
2. ResearchStatistics view presents statistics about medical research
carried out by doctors, showing the number of tests performed for each
doctor and the type of examination.

FUNCTION:
The function takes the doctor's ID (doctorId) as a parameter. Its task is to return the number of visits assigned to a given doctor with a given ID.

PROCEDURE:
This procedure takes two input parameters: visitId of type INT and newDiagnosis of type VARCHAR(255). Its purpose is to update the diagnosis for a visit with a specific identifier (visitId) to a new value (newDiagnoza).

TRIGGER:
This trigger is activated before adding a new row to the "Patients" table. It is defined "FOR EACH ROW", which means it will work for each new row inserted into the "Patients" table.

