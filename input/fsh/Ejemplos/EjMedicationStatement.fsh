
Instance: MedicationStatementColombia
InstanceOf: MedicationStatementCo
Usage: #example
Description: "Ejemplo de MedicationStatement/MedicaciónPaciente."

* meta.profile = $canonicaMedication

* subject = Reference(Patient/PacienteColombiano)
* status = #active

* medicationCodeableConcept = https://www.minsalud.gov.co/CodeSystem/CUMS#20038383 "10.4 MG DE MONTELUKAST SODICO EQUIVALENTE A MONTELUKAST"


//http://loinc.org#11450-4 "Problem list Reported"
 //$CUMSvs
 //20038383
  //"10.4 MG DE MONTELUKAST SODICO EQUIVALENTE A MONTELUKAST"
//$CUMSvs#20038383"10.4 MG DE MONTELUKAST SODICO EQUIVALENTE A MONTELUKAST"