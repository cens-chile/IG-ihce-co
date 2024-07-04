Instance : BundleColombiaCo
InstanceOf : BundleCo
Title : "Bundle Colombiano"
Usage : #example
Description: "Ejemplo de Bundle"

* type = #transaction

//* identifier.system = "https://www.minsalud.gov.co/ihc/documentos"
//* identifier.value = "123456789"

* timestamp = "2022-03-03T10:30:00Z"


//DocReference
* entry[DocumentRef].fullUrl = "http://acme.com/ehr/fhir/DocumentReference/DocumentReferenceColombia"
* entry[DocumentRef].resource = DocumentReferenceColombia
* entry[DocumentRef].request.method = #POST
* entry[DocumentRef].request.url = "DocumentReference"


//Composition
* entry[RDA].fullUrl = "http://acme.com/ehr/fhir/Composition/CompositionColombia"
* entry[RDA].resource = CompositionColombia
* entry[RDA].request.method = #POST
* entry[RDA].request.url = "Composition"


//Practitioner
* entry[Profesional].fullUrl = "http://acme.com/ehr/fhir/Practitioner/ProfesionalColombia"
* entry[Profesional].resource = ProfesionalColombia
* entry[Profesional].request.method = #POST
* entry[Profesional].request.url = "Practitioner"

//Condition
* entry[Diagnosticos].fullUrl = "http://acme.com/ehr/fhir/Condition/ConditionColombia"
* entry[Diagnosticos].resource = ConditionColombia
* entry[Diagnosticos].request.method = #POST
* entry[Diagnosticos].request.url = "Condition"


//Alergia-Intolerancia
* entry[Alergias].fullUrl = "http://acme.com/ehr/fhir/AllergyIntolerance/AlergiaColombia"
* entry[Alergias].resource = AlergiaColombia
* entry[Alergias].request.method = #POST
* entry[Alergias].request.url = "AllergyIntolerance"


//Medicaction
* entry[Medicaciones].fullUrl = "http://acme.com/ehr/fhir/MedicationStatement/MedicationStatementColombia" 
* entry[Medicaciones].resource = MedicationStatementColombia
* entry[Medicaciones].request.method = #POST
* entry[Medicaciones].request.url = "MedicationStatement"

//Patient
* entry[Patient].fullUrl = "http://acme.com/ehr/fhir/Patient/PacienteColombianoMinimo"
* entry[Patient].resource = PacienteColombianoMinimo
* entry[Patient].request.method = #POST
* entry[Patient].request.url = "Patient"