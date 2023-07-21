/* ---------------------Identificadores de PERSONA ---------------------------*/
CodeSystem: IdentificadoresPersonaCS
Id: IdspersonaColombia
Title: "Identificadores de Persona"
Description: "Elemento de dato que contiene el nombre y número de identificación de una determinada persona para efectos de identidad e individualización" 
* ^name = "IdspersonaColombia"
* ^status = #active
* ^experimental = false
* ^date = "2010-01-29"
* ^publisher = "MSP Colombia."
* ^content = #complete

* #CC "Cédula ciudadanía" "Cédula ciudadanía del paciente."
* #CE "Cédula de extranjería" "Cédula de extranjería"
* #CD "Carné diplomático" "Carné diplomático"
* #PA "Pasaporte" "Pasaporte"
* #SC "Salvoconducto de permanencia" "Salvoconducto de permanencia"
* #PT "Permiso Temporal de Permanencia" "Permiso Temporal de Permanencia"
* #PE "Permiso Especial de Permanencia" "Permiso Especial de Permanencia"
* #RC "Registro civil" "Registro civil"
* #TI "Tarjeta de identidad" "Tarjeta de identidad"
* #CN "Certificado de nacido vivo" "Certificado de nacido vivo"
* #DE "Documento Extranjero" "Documento Extranjero"

ValueSet: IdentificadoresPersonaVS
Title: "Identificadores de Persona"
Description:  "Identificadores de Persona Colombia."
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-01-01T00:00:00-05:00"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

* include codes from system IdspersonaColombia


ValueSet: IdentificadoresProfesionalVS
Title: "Identificadores de Profesional"
Description:  "Identificadores de Profesional Colombia."
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-01-01T00:00:00-05:00"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

* $cs_identper#CC "Cédula ciudadanía" 
* $cs_identper#CE "Cédula de extranjería"
* $cs_identper#PA "Pasaporte"
* $cs_identper#PE "Permiso Especial de Permanencia"
* $cs_identper#TI "Tarjeta de identidad" 

//no usados por ahora, ya que es obligatorio el gender. 
/* --------------------- Sexo Colombia--------------------------
CodeSystem: SexoCS
Id: sexoColombia
Title: "Sexo Colombia"
Description: ""
* ^name = "ids-personaColombia"


* #01: "Hombre" "hombre..."
* #02: "Mujer"  "mujer..."
* #03: "Indeterminado/Intersexual"  "indeterm.. "


ValueSet: SexoVS
Title: "Sexo Colombia"
Description:  "sexo colombia VS."
* include codes from system sexoColombia
*/

/* ---------------------Discapacidad ---------------------------*/
CodeSystem: DiscapacidadCS
Id: DiscapacidadCS
Title: "Discapacidad"
Description: "Identificador para determinar la categoría de discapacidad de
acuerdo con el dominio o dominios donde se presente la deficiencia o deficiencias corporales del solicitante"
* ^name = "DiscapacidadCS"

* #01   "Discapacidad física"
* #02   "Discapacidad visual"
* #03   "Discapacidad auditiva"
* #04   "Discapacidad intelectual"
* #05   "Discapacidad sicosocial"
* #06	"Sordoceguera"
* #07	"Discapacidad múltiple"
* #08   "Sin discapacidad"

ValueSet: DiscapacidadVS
Id: DiscapacidadVS
Title: "Discapacidad"
Description:  "Códigos de Discapacidad"
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-01-01T00:00:00-05:00"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

* include codes from system DiscapacidadCS


/* ---------------------IDENTIDAD DE GENERO ---------------------------*/
CodeSystem: IdentidadGeneroCS
Id: IdentidadGeneroCS
Title: "Identidad de genero"
Description: "Identidad de Género."
* ^name = "IdentidadGenero"

* #01    "Masculino"
* #02    "Femenino"
* #03    "Transgénero"
* #04    "Neutro"
* #05    "No lo declara"

ValueSet: IdentidadGeneroVS
Id: IdentidadGeneroVS
Title: "Identidad de Genero"
Description:  "Conjunto de Valores para identidad de Género."
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-01-01T00:00:00-05:00"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

* include codes from system IdentidadGeneroCS

/* ---------------------Zona de residencia ---------------------------*/
CodeSystem: ZonaResidenciaCS
Id: ZonaResidenciaCS
Title: "Zona de residencia"
Description: "Identificador para representar la Zona."
* ^name = "ZonaResidencia"

* #01    "Urbana"
* #02    "Rural"


ValueSet: ZonaResidenciaVS
Id: ZonaResidenciaVS
Title: "Zona de residencia"
Description:  "Conjunto de valores para la zona de residencia."
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-01-01T00:00:00-05:00"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

* include codes from system ZonaResidenciaCS


/* ---------------------Etnia ---------------------------*/
CodeSystem: EtniaCS
Id: EtniaCS
Title: "Etnia"
Description: "Identificador para determinar la pertenencia étnica de la persona."
* ^name = "Etnia"

* #01   "Indigena"
* #02   "ROM (Gitanos)"
* #03   "Raizal (San Andrés y Providencia)"
* #04   "Palenquero de San Basilio de Palenque"
* #05   "Negro(a)"
* #06   "Afrocolombiano(a)"
* #99   "Ninguna de las anteriores"

ValueSet: EtniaVS
Id: EtniaVS
Title: "Etnia"
Description:  "Conjunto de valores para la Etnia."
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-01-01T00:00:00-05:00"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

* include codes from system EtniaCS


/* ---------------------Municipios --------------------------
CodeSystem: municipiosCS
Id: municipiosCS
Title: "municipiosCS"
Description: "Identificador para determinar el municipio."
* ^name = "municipiosCS"

ValueSet: municipiosVS
Id: municipiosVS
Title: "municipiosVS"
Description:  "Conjunto de valores para el municipio"
* include codes from system municipiosCS
*/

//no usado por ahora, están pendiente los conjuntos de valores.

/* ---------------------Comunidad Etnica ---------------------------
CodeSystem: ComunidadEtnicaCS
Id: ComunidadEtnicaCS
Title: "Comunidad Etnica"
Description:  "Identificador para determinar la comunidad indígena, pueblo ROM o comunidad negra, 
Afro, palanquera y raizal que pertenece una persona."
// VER Catalogo de : Según catálogo de referencia de comunidades étnicas,
// según catálogo de comunidades étnicas vigente.
* ^name = "CominidadEtnica"

* #01   "Comunidad 1"
* #02   "Comunidad 2"


ValueSet: ComunidadEtnicaCSVS
Id: ComunidadEtnicaCSVS
Title: "Comunidad Etnica"
Description:  "ComunidadEtnicaVS"
* include codes from system ComunidadEtnicaCS


*/

/* ---------------------CIE10 --------------------------*/


ValueSet: CIE10VS
Id: CIE10VS
Title: "Codificacion CIE10 ValueSet"
Description:  "Conjunto de Valores de Codificacion CIE10"
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-01-01T00:00:00-05:00"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

* include codes from system http://hl7.org/fhir/sid/icd-10

// en este VS traigo toda la terminologia de CIE10.



    /* ---------------------Catalogos de Ocupaciones  --------------------------

    Catálogo CIUO - 88 A.C Clasificación Internacional Uniforme de Ocupaciones Adaptada para Colombia por el DANE.
*/



/* ---------------------CUMS --------------------------*/


ValueSet: CUMSVS
Id: CUMSVS
Title: "Codificacion CUMS"
Description:  "Conjunto de Valores de Codificacion CUMS"
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-01-01T00:00:00-05:00"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"


* include codes from system https://www.minsalud.gov.co/CodeSystem/CUMS


/* ---------------------IUM --------------------------*/


ValueSet: IUMVS
Id: IUMVS
Title: "Codificacion IUM"
Description:  "Conjunto de Valores de Codificacion IUM"
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-01-01T00:00:00-05:00"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

* include codes from system https://www.minsalud.gov.co/CodeSystem/IUM

/*-----------------PAISES-----------------------------------------*/

ValueSet: PaisesVS
Id: PaisesVS
Title: "Códigos del País"
Description: "Codigos definidos para la identificación de países segun norma ISO3166-N"
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-01-01T00:00:00-05:00"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

//* include codes from valueset http://hl7.org/fhir/ValueSet/iso3166-1-N
//* include codes from system urn:iso:std:iso:3166

* include codes from system urn:iso:std:iso:3166 where code regex "[0-9]{3}"

