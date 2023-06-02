
Instance: ProfesionalColombia
InstanceOf: Practitioner
Usage: #example
Description: "Ejemplo de Profesional Colombiano."

* meta.versionId = "1"
* meta.lastUpdated = "2021-10-13T22:23:44.162Z"
* meta.profile = $canonicaPractitioner 

/*
    * identifier.type.coding.system = $cs_identper#CC
    * identifier[0].type.coding.display = "Cédula ciudadanía"
    * identifier.type.extension.url = $Pais

    * identifier[0].value = "12345"
    * identifier[0].assigner.display = "Cedula colombiana"

    * identifier[0].type.extension.valueCodeableConcept.coding.code = #170 
*/

* identifier[0].type.coding.system = $cs_identper //* identifier.type.coding.system = $cs_identper
* identifier[0].type.coding.code = #CC //* identifier.type.coding.code = #CC
* identifier[0].type.coding.display = "Cédula ciudadanía"


* identifier[0].value = "12345"
* identifier[0].assigner.display = "Registraduria Nacional"

* identifier[0].type.extension.url = $Pais
* identifier[0].type.extension.valueCodeableConcept.coding.system = $cs_pais
* identifier[0].type.extension.valueCodeableConcept.coding.code = #170 "Colombia"
	