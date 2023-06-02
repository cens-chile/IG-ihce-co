
Profile: PacienteCo
Parent:         Patient
Title:          "Paciente Co"
Description:    "Especificación de datos del recurso Patient, tomando como referencia las definiciones de la resolución 866"
* ^name = "PersonaColombia"


//---------Nombres y Apellidos
    /*
    Nombre patronímico que aparece en el primer lugar en el documento de identidad.
    Nombre patronímico que aparece en segundo lugar en el documento de identidad.
    Primera palabra del nombre que aparece en primer lugar en el documento de identidad
    Segunda palabra del nombre que aparece en segundo lugar en el documento de identidad
    */

* name 1.. MS
* name.family and name.given MS
* name.family 1..

* name.family ^short = "Apellidos del paciente."

* name.family.extension contains
     //utilizamos solo extension para el segundo apellido, el materno.
    $humanname-mothers-family named SegundoApellido 0..
* name.given 1..
* name.given ^short = "Nombres del paciente."

* name ^short = "Nombres y Apellidos del Paciente."
* name ^definition = "Nombre patronímico que aparece en el documento de identidad."


//---------------Sexo    
* gender ^short = "Sexo de nacimiento: male | female | other | unknown (requerido)"
* gender ^definition = "Identificador para determinar las características genéticas, endocrinas y morfológicas del cuerpo al nacer."
* gender 1..1 MS
* gender from $VS_gender (required)



//----------Fecha y hora de nacimiento
/*Fecha en que nació la persona y que se encuentra en el documento de 
identidad o que declare el individuo.  */

* birthDate ^short = "Fecha de Nacimiento, formato: YYYY-MM-DD"
* birthDate ^definition = "Fecha en que nació la persona y que se encuentra en el documento de 
identidad o que declare el individuo."
* birthDate 1..1
* birthDate.extension contains  http://hl7.org/fhir/StructureDefinition/patient-birthTime named horaNacimiento 0..1 MS
* birthDate.extension ^short = "Extension para representar Fecha y Hora de nacimiento de la persona."


//------------Identificadores
* identifier ^short = "Identificación del paciente."
* identifier ^definition = "Elemento de dato que contiene el nombre y número de identificación de una determinada persona 
para efectos de identidad e individualización."

* identifier 1.. MS
* identifier.value 1.. MS
* identifier.value ^short = "Número que indica la identificación."

* identifier.type 1.. MS
* identifier.type ^short = "Tipo de indentificación."
* identifier.type.coding.code from IdentificadoresPersonaVS
* identifier.type.coding 1.. MS
* identifier.type.coding.code 1.. MS

* identifier.type.extension ^short = "Extension para representar pais del documento."
* identifier.type.extension ^definition = "Se usa esta extensión para agregarle al tipo de documento el país de origen de este" 
* identifier.type.extension contains Pais named pais_origen 1..1  


//------------Discapacidad

* extension contains $canonicaDiscap named discapacidad 0..* MS
* extension[disability].valueCodeableConcept from DiscapacidadVS
* extension[disability] ^short = "Extension para la Discapacidad."
* extension[disability] ^definition = "Identificador para determinar la categoría de discapacidad de acuerdo con el dominio o dominios donde se presente la deficiencia o deficiencias corporales del solicitante."


//-------------Identidad de Género

* extension contains $patient-genderIdentity named identidadGenero 0..1 MS


* extension[genderIdentity].valueCodeableConcept from IdentidadGeneroVS
* extension[genderIdentity] ^short = "Extension para Identidad de Género."
* extension[genderIdentity] ^definition = "Es la construcción social que existe sobre los cuerpos o el conjunto de reglas y convenciones establecidas por la sociedad que definen las pautas de comportamiento a seguir por hombres y mujeres, de tal forma que las personas se identifican con un género específico por 
autorreconocimiento al momento de la atención"


//-------------Nacionalidad
* extension contains Nacionalidad named nacionalidad 0.. 
* extension[nacionalidad] ^short = "Extension para la Nacionalidad."
* extension[nacionalidad] ^definition = "Nemónico del país que determina el vínculo jurídico entre un individuo y un Estado"
//Para hacer uso de esta extensión se debe agregar el path: extension.url = ´nacionalidad´


//-------------Etnia
* extension contains $canonicaEtnia named etnia 0..1 MS
* extension[etnia] ^short = "Extension para Etnia."
* extension[etnia] ^definition = "Identificador para determinar la pertenencia étnica de la persona."
* extension[etnia].valueCodeableConcept from EtniaVS


//------------Dirección
* address and address.city and address.country MS

//ciudad - municipio (pide en la norma, el nombre, por eso la extension)
* address.city ^short = "Campo : Municipio"
* address.city ^definition = "Campo para Municipio"
* address.city
//* address.city from $municipioVs (required)


//pendiente restringuir conjunto de valores a los paises
* address.country ^short = "Campo para País de Residencia"
* address.country ^definition = "Campo para País de Residencia"


//Define la categorización de las áreas geográficas identificadas y delimitadas dentro del territorio nacional con objetos y actividades especializadas.
* address.extension contains ZonaResidencia named ZonaResidencia 0..1 
* address.extension[ZonaResidencia] ^short = "Extension para describir la zona de residencia."

* extension ^short = "Se describen las diferentes extensiones. Se referencias de acuerdo a la 'url'."
//* extension ^definition = "Existen 4 extensiones: .... ."


/* ----------------------------------------------------------------------------------------------------*/
/* -------------------------EXTENSIONES----------------------------------------------------------------*/
/* ----------------------------------------------------------------------------------------------------*/


//*------------PAIS DEL DOCUMENTO------------------------------------------*/
Extension: Pais
Id: co-pais
//Title: "Código para representar Pais."
Description: "Extensión utilizada para representar Nacionalidad o Pais de origen del documento."
* valueCodeableConcept 0..1
* valueCodeableConcept from PaisesVS 

//*------------PAIS DEL DOCUMENTO------------------------------------------*/
Extension: Nacionalidad
Id: co-patient-nacionalidad //pais
//Title: "Código para representar Pais."
Description: "Extensión utilizada para representar Nacionalidad."
* valueCodeableConcept 0..1
* valueCodeableConcept from PaisesVS 


/*------------ZonaResidencia------------------------------------------*/
Extension: ZonaResidencia
Id: co-address-zonaResidencia //ZonaResidencia
//Title: "Zona de Residencia"
Description: "Extension utilizada entro Patient -> Address representar, si la residencia es : Urbana o Rural."

* valueCodeableConcept 0..1
* valueCodeableConcept from ZonaResidenciaVS 


/*------------ETNIA------------------------------------------*/
Extension: Etnia
Id: co-patient-etnia
//Title: "Etnia"
Description: "Extension utilizada entro del Patient para representar Etnia de una persona."

* value[x] only CodeableConcept
//* valueCodeableConcept 1..1 
* valueCodeableConcept from EtniaVS 


/*------------COMUNIDAD ETNICA-----------------------------------------*/
/*Extension: PaisExtens
Id: PaisExtens
Title: "Pais"
Description: "...."

* ^url = "http://minsalud.gov.co/hci/ComunidadEtnica"
* valueCodeableConcept 0..1
* valueCodeableConcept from PaisesVS (extensible)*/







/********************************************************BASURAS *********************************/
/*------------Nacionalidad-----------------------------------------
//Extension:   PaisOrigenNacionalidad
Extension:   Nacionalidad
Id:          Nacionalidad
Title:       "Codigo de Identificación de países"
Description: "Esta extensión incluye códigos de paises de origen"
* value[x] only CodeableConcept
* value[x] ^short = "Código de País"
* valueCodeableConcept from PaisesVS (extensible)
*/

/*-----------------PAISES-----------------------------------------
ValueSet: PaisesVS
Id: PaisesVS
Title: "Códigos del País"
Description: "Codigos definidos para la identificación de países segun norma ISO3166-N"
* ^status = #active
//* include codes from valueset http://hl7.org/fhir/ValueSet/iso3166-1-N
* include codes from system urn:iso:std:iso:3166
*/

// Alias: $Pais = https://www.minsalud.gov.co/ihc/fhir/StructureDefinition/Pais
//* identifier[0].type.extension.url = $Pais
//* identifier[0].type.extension.valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
//* identifier[0].type.extension.valueCodeableConcept.coding.code = #170 "Colombia"
