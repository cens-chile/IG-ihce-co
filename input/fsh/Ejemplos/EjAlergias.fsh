Instance: AlergiaCo
InstanceOf: AlergiaCo
Usage: #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
//* code = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-known-allergies "No known allergies"
//* code = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-known-allergies "No known allergies"
* code.text = "alergia a nueces"
//* code.coding.system = "http://hl7.org/fhir/sid/icd-10"

//* patient = Reference(Patient/eumfh-39-07) "Alexander Heig (inject 39-07)"

* patient =  Reference(Patient/PacienteColombiano) "Paciente Colombiano"

* category = #food

//* onsetDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
//* onsetDateTime.extension.valueCode = #unknown

/*Instance: AlergiasColombia
InstanceOf: AlergiasCo
Usage: #example
Description: "Ejemplo de Condición/Antecedente de Paciente."

* meta.versionId = "1"
* meta.lastUpdated = "2022-01-13T22:23:44.162Z"
* meta.profile = $canonicaCondition

* patient = Reference(Patient/PacienteColombiano)

//* code 
//All codes in this table are from the system http://hl7.org/fhir/sid/icd-10 
//https://build.fhir.org/valueset-icd-10.html

//* code = http://hl7.org/fhir/sid/icd-10#E10.4 "Diabetes mellitus insulinodependiente, con complicaciones oftálmicas"
/*
* code = http://hl7.org/fhir/sid/icd-10#E10.4 "Type 1 diabetes mellitus : With neurological complications"

* code.text = "Diabetes Tipo 1, con complicaciones neurologicas"
* code.coding.code = #E10.4 
* code.coding.system = "http://hl7.org/fhir/sid/icd-10"
* code.coding.display = "Type 1 diabetes mellitus : With neurological complications"
*/
    //code: system: "", ...

/* 
Instance: allergyintolerance-multiple-codings
InstanceOf: AllergyIntolerance
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* code.coding[0] = http://snomed.info/sct#764146007 "Penicillin (substance)"
* code.coding[+] = http://snomed.info/sct#91936005 "Allergy to penicillin (finding)"
* code.coding[+] = http://www.nlm.nih.gov/research/umls/rxnorm#7984 "penicillin V"
* code.coding[+] = http://www.whocc.no/atc#N03AA02 "phenobarbital"
* patient = Reference(Patient/66033)
* onsetDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* onsetDateTime.extension.valueCode = #unknown
*/
