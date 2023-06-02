Profile:        PractitionerCo
Parent:         Practitioner
Title:          "Profesional Co"
Description:    "Medico que realiza la atención"
* ^name = "MedicoColombiano"
//* ^url = "http://minsalud.gov.co/hci/StructureDefinition/MedicoCol"

//------------Identificadores, campo 36 de la norma
* identifier ^short = "Identificación del profesional."
* identifier ^definition = "Elemento de dato que contiene el nombre y número de identificación de una determinada persona 
para efectos de identidad e individualización."

* identifier 1.. MS
* identifier.type 1.. MS
* identifier.type.coding.code from IdentificadoresProfesionalVS
//* identifier.type.coding.system from IdentificadoresPersonaCS

* identifier.value 1.. MS

* identifier.type.extension ^definition = "Se usa esta extensión para agregarle al tipo de documento el país de origen de este" 
* identifier.type.extension contains Pais named pais_origen 1..1  

