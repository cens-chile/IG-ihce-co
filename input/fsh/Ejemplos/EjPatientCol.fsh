//--------------Ejemplo paciente 1- Colombiano

Instance: PacienteColombiano
InstanceOf: PacienteCo
Description: "Ejemplo Completo de paciente Colombiano."

Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2021-10-13T22:23:44.162Z"
* meta.profile = $canonicaPaciente 

* name[0].given = "Miguel"
* name[0].given[1] = "Angel"

* name[0].family = "López"
* name[0].family.extension[mothers-family].valueString = "Ortíz"

* gender = #male

* birthDate = "1974-12-25"
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
* birthDate.extension.valueDateTime = "1974-12-25T14:35:45-05:00"

//?* identifier[0].type.coding.code = #CC
//* identifier.type.coding.system = $cs_identper#CC

* identifier[0].type.coding.system = $cs_identper //* identifier.type.coding.system = $cs_identper
* identifier[0].type.coding.code = #CC //* identifier.type.coding.code = #CC
* identifier[0].type.coding.display = "Cédula ciudadanía"

* identifier[0].value = "12345"
* identifier[0].system = "http://minsalud.gov.co/ihc/ide/170/CC"
* identifier[0].assigner.display = "Registraduria Nacional"

* identifier[0].type.extension.url = $Pais
* identifier[0].type.extension.valueCodeableConcept.coding.system = $cs_pais
* identifier[0].type.extension.valueCodeableConcept.coding.code = #170 "Colombia"
	

//identidad de genero:
* extension[genderIdentity].url = $patient-genderIdentity
* extension[genderIdentity].valueCodeableConcept =  $cs_identGenero#03 "Transgénero" 


//discapacidad
* extension[disability].url = $canonicaDiscap
* extension[disability].valueCodeableConcept = $csDiscap#01 "Discapacidad física"

//Etnia
* extension[co-patient-etnia].url = $canonicaEtnia
* extension[co-patient-etnia].valueCodeableConcept = $csEtnea#01 "Indigena"

//nacionalidad:
* extension[co-patient-nacionalidad].url = $Nacionalidad
* extension[co-patient-nacionalidad].valueCodeableConcept = $cs_pais#170 "Colombia"


* address.city = "Medellín"

//nombre completo: ANA MARIA PEREZ(paterno) RIVAS (materno)



// * address.city.extension.code="5001"

* address.country = #152 "colombia"
//{system}#{code} "{display text}"

* address.extension.url = $ZonaResidencia
//* address.extension.valueCodeableConcept.coding.code = $zonaresidenciaCS#02 "Rural"

* address.extension.valueCodeableConcept = $zonaresidenciaCS#02 "Rural" 
//* address.state = "15"

// -------------------------------------------------------------------------------------------------------//

//-----Ejemplo paciente 2- Extranjero



Instance: PacienteExtranjero
InstanceOf: PacienteCo
Description: "Ejemplo de Paciente extranjero."

Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2021-10-13T22:23:44.162Z"
* meta.profile = $canonicaPaciente 

* identifier[0].type.coding.system = $cs_identper
* identifier[0].type.coding.code = #PA
* identifier[0].type.coding.display = "Pasaporte" 

* identifier[0].value = "9753"

* identifier[0].type.extension.url = $Pais
* identifier[0].type.extension.valueCodeableConcept.coding.system = $cs_pais
* identifier[0].type.extension.valueCodeableConcept.coding.code = #032	"Argentina"

//nombre completo: ANA MARIA PEREZ(paterno) RIVAS (materno)

* name[0].given = "Ana"
* name[0].given[1] = "Maria"

* name[0].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-fathers-family"
* name[0].family.extension.valueString = "Perez"

* name[0].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
* name[0].family.extension.valueString = "Rivas"

* gender = #female

* birthDate = "1974-12-25"
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
* birthDate.extension.valueDateTime = "1974-12-25T14:35:45-05:00"



//--------------Ejemplo 3 - paciente resumido

Instance: PacienteColombianoMinimo
InstanceOf: PacienteCo
Description: "Ejemplo de Paciente Mínimo."

Usage: #example

* identifier[0].type.coding.system = $cs_identper //* identifier.type.coding.system = $cs_identper
* identifier[0].type.coding.code = #CC //* identifier.type.coding.code = #CC
* identifier[0].type.coding.display = "Cédula ciudadanía"

* identifier[0].value = "98765"
* identifier[0].assigner.display = "Registraduria Nacional"


* identifier[0].type.extension.url = $Pais
* identifier[0].type.extension.valueCodeableConcept.coding.system = $cs_pais
* identifier[0].type.extension.valueCodeableConcept.coding.code = #170 "Colombia"

* name[0].given = "Luis"
* name[0].given[1] = "Alberto"

* name[0].family = "Sanchez"
* name[0].family.extension[mothers-family].valueString = "Martinez"

* gender = #male

* birthDate = "1974-12-25"


// -------------------------------------------------------------------------------------------------------//
