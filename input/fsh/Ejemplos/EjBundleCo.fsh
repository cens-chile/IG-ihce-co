Instance : BundleColombiaCo
InstanceOf : BundleCo
Title : "Bundle Colombiano"
Usage : #example
Description: "Ejemplo de Bundle"

* meta.profile = $canonicaBundleCo
* type = #transaction

//* identifier.system = "https://www.minsalud.gov.co/ihc/documentos"
//* identifier.value = "123456789"

* timestamp = "2022-03-03T10:30:00Z"


//DocReference
* entry[DocumentRefs].fullUrl = "DocumentReference/DocumentReferenceCo"
* entry[DocumentRefs].resource = DocumentReferenceCo
* entry[DocumentRefs].request.method = #POST
* entry[DocumentRefs].request.url = "DocumentReference"


//Composition
* entry[RDA].fullUrl = "Composition/CompositionColombia"
* entry[RDA].resource = CompositionColombia
* entry[RDA].request.method = #POST
* entry[RDA].request.url = "Composition"


//Practitioner
* entry[Profesional].fullUrl = "Practitioner/ProfesionalColombia"
* entry[Profesional].resource = ProfesionalColombia
* entry[Profesional].request.method = #POST
* entry[Profesional].request.url = "Practitioner"

//Condition
* entry[Condition].fullUrl = "Condition/ConditionColombia"
* entry[Condition].resource = ConditionColombia
* entry[Condition].request.method = #POST
* entry[Condition].request.url = "Condition"


//Alergia-Intolerancia
* entry[Alergias].fullUrl = "AllergyIntolerance/AlergiaCo"
* entry[Alergias].resource = AlergiaCo
* entry[Alergias].request.method = #POST
* entry[Alergias].request.url = "AllergyIntolerance"


//Medicaction
* entry[Medicaciones].fullUrl = "MedicationStatement/MedicationStatementCo" 
* entry[Medicaciones].resource = MedicationStatementCo
* entry[Medicaciones].request.method = #POST
* entry[Medicaciones].request.url = "MedicationStatement"

//Patient
* entry[Patient].fullUrl = "Patient/PacienteColombianoMinimo"
* entry[Patient].resource = PacienteColombianoMinimo
* entry[Patient].request.method = #POST
* entry[Patient].request.url = "Patient"