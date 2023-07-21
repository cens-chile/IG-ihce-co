
Instance: ConditionColombia
InstanceOf: ConditionCo
Usage: #example
Description: "Ejemplo de Condición/Antecedente de Paciente."

* subject = Reference(Patient/PacienteColombiano)

//* code 
//All codes in this table are from the system http://hl7.org/fhir/sid/icd-10 
//https://build.fhir.org/valueset-icd-10.html

//* code = http://hl7.org/fhir/sid/icd-10#E10.4 "Diabetes mellitus insulinodependiente, con complicaciones oftálmicas"
* code = http://hl7.org/fhir/sid/icd-10#E10.4 "Type 1 diabetes mellitus : With neurological complications"

* code.text = "Diabetes Tipo 1, con complicaciones neurologicas"
* code.coding.code = #E10.4 
* code.coding.system = "http://hl7.org/fhir/sid/icd-10"
* code.coding.display = "Type 1 diabetes mellitus : With neurological complications"

    //code: system: "",