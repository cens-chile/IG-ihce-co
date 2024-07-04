/* ---------------------Identificadores de PERSONA ---------------------------*/
CodeSystem: IdentificadoresPersonaCS
Id: IdspersonaColombia
Title: "Identificadores de Persona"
Description: "Elemento de dato que contiene el nombre y número de identificación de una determinada persona para efectos de identidad e individualización" 
* ^name = "IdspersonaColombia"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
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
* ^experimental = false
* ^caseSensitive = true

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
* ^experimental = false
* ^caseSensitive = true

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
* ^experimental = false
* ^caseSensitive = true

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
* ^experimental = false
* ^caseSensitive = true

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

CodeSystem: PaisesCS
Id: PaisesCS
Title: "Códigos del País CS"
Description: "Codigos definidos para la identificación de países segun norma ISO3166-N"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
//* include codes from valueset http://hl7.org/fhir/ValueSet/iso3166-1-N
//* include codes from system urn:iso:std:iso:3166

* #004	"Afghanistan"
* #008	"Albania"
* #010	"Antarctica"
* #012	"Algeria"
* #016	"American Samoa"
* #020	"Andorra"
* #024	"Angola"
* #028	"Antigua and Barbuda"
* #031	"Azerbaijan"
* #032	"Argentina"
* #036	"Australia"
* #040	"Austria"
* #044	"Bahamas"
* #048	"Bahrain"
* #050	"Bangladesh"
* #051	"Armenia"
* #052	"Barbados"
* #056	"Belgium"
* #060	"Bermuda"
* #064	"Bhutan"
* #068	"Bolivia, Plurinational State of"
* #070	"Bosnia and Herzegovina"
* #072	"Botswana"
* #074	"Bouvet Island"
* #076	"Brazil"
* #084	"Belize"
* #086	"British Indian Ocean Territory"
* #090	"Solomon Islands"
* #092	"Virgin Islands, British"
* #096	"Brunei Darussalam"
* #100	"Bulgaria"
* #104	"Myanmar"
* #108	"Burundi"
* #112	"Belarus"
* #116	"Cambodia"
* #120	"Cameroon"
* #124	"Canada"
* #132	"Cabo Verde"
* #136	"Cayman Islands"
* #140	"Central African Republic"
* #144	"Sri Lanka"
* #148	"Chad"
* #152	"Chile"
* #156	"China"
* #158	"Taiwan, Province of China"
* #162	"Christmas Island"
* #166	"Cocos (Keeling) Islands"
* #170	"Colombia"
* #174	"Comoros"
* #175	"Mayotte"
* #178	"Congo"
* #180	"Congo, the Democratic Republic of the"
* #184	"Cook Islands"
* #188	"Costa Rica"
* #191	"Croatia"
* #192	"Cuba"
* #196	"Cyprus"
* #203	"Czechia"
* #204	"Benin"
* #208	"Denmark"
* #212	"Dominica"
* #214	"Dominican Republic"
* #218	"Ecuador"
* #222	"El Salvador"
* #226	"Equatorial Guinea"
* #231	"Ethiopia"
* #232	"Eritrea"
* #233	"Estonia"
* #234	"Faroe Islands"
* #238	"Falkland Islands (Malvinas)"
* #239	"South Georgia and the South Sandwich Islands"
* #242	"Fiji"
* #246	"Finland"
* #248	"Eland Islands"
* #250	"France"
* #254	"French Guiana"
* #258	"French Polynesia"
* #260	"French Southern Territories"
* #262	"Djibouti"
* #266	"Gabon"
* #268	"Georgia"
* #270	"Gambia"
* #275	"Palestine, State of"
* #276	"Germany"
* #288	"Ghana"
* #292	"Gibraltar"
* #296	"Kiribati"
* #300	"Greece"
* #304	"Greenland"
* #308	"Grenada"
* #312	"Guadeloupe"
* #316	"Guam"
* #320	"Guatemala"
* #324	"Guinea"
* #328	"Guyana"
* #332	"Haiti"
* #334	"Heard Island and McDonald Islands"
* #336	"Holy See"
* #340	"Honduras"
* #344	"Hong Kong"
* #348	"Hungary"
* #352	"Iceland"
* #356	"India"
* #360	"Indonesia"
* #364	"Iran, Islamic Republic of"
* #368	"Iraq"
* #372	"Ireland"
* #376	"Israel"
* #380	"Italy"
* #384	"Ctte d'Ivoire"
* #388	"Jamaica"
* #392	"Japan"
* #398	"Kazakhstan"
* #400	"Jordan"
* #404	"Kenya"
* #408	"Korea, Democratic People's Republic of"
* #410	"Korea, Republic of"
* #414	"Kuwait"
* #417	"Kyrgyzstan"
* #418	"Lao People's Democratic Republic"
* #422	"Lebanon"
* #426	"Lesotho"
* #428	"Latvia"
* #430	"Liberia"
* #434	"Libya"
* #438	"Liechtenstein"
* #440	"Lithuania"
* #442	"Luxembourg"
* #446	"Macao"
* #450	"Madagascar"
* #454	"Malawi"
* #458	"Malaysia"
* #462	"Maldives"
* #466	"Mali"
* #470	"Malta"
* #474	"Martinique"
* #478	"Mauritania"
* #480	"Mauritius"
* #484	"Mexico"
* #492	"Monaco"
* #496	"Mongolia"
* #498	"Moldova, Republic of"
* #499	"Montenegro"
* #500	"Montserrat"
* #504	"Morocco"
* #508	"Mozambique"
* #512	"Oman"
* #516	"Namibia"
* #520	"Nauru"
* #524	"Nepal"
* #528	"Netherlands"
* #531	"Curagao"
* #533	"Aruba"
* #534	"Sint Maarten (Dutch part)"
* #535	"Bonaire, Sint Eustatius and Saba"
* #540	"New Caledonia"
* #548	"Vanuatu"
* #554	"New Zealand"
* #558	"Nicaragua"
* #562	"Niger"
* #566	"Nigeria"
* #570	"Niue"
* #574	"Norfolk Island"
* #578	"Norway"
* #580	"Northern Mariana Islands"
* #581	"United States Minor Outlying Islands"
* #583	"Micronesia, Federated States of"
* #584	"Marshall Islands"
* #585	"Palau"
* #586	"Pakistan"
* #591	"Panama"
* #598	"Papua New Guinea"
* #600	"Paraguay"
* #604	"Peru"
* #608	"Philippines"
* #612	"Pitcairn"
* #616	"Poland"
* #620	"Portugal"
* #624	"Guinea-Bissau"
* #626	"Timor-Leste"
* #630	"Puerto Rico"
* #634	"Qatar"
* #638	"Riunion"
* #642	"Romania"
* #643	"Russian Federation"
* #646	"Rwanda"
* #652	"Saint Barthilemy"
* #654	"Saint Helena, Ascension and Tristan da Cunha"
* #659	"Saint Kitts and Nevis"
* #660	"Anguilla"
* #662	"Saint Lucia"
* #663	"Saint Martin (French part)"
* #666	"Saint Pierre and Miquelon"
* #670	"Saint Vincent and the Grenadines"
* #674	"San Marino"
* #678	"Sao Tome and Principe"
* #682	"Saudi Arabia"
* #686	"Senegal"
* #688	"Serbia"
* #690	"Seychelles"
* #694	"Sierra Leone"
* #702	"Singapore"
* #703	"Slovakia"
* #704	"Viet Nam"
* #705	"Slovenia"
* #706	"Somalia"
* #710	"South Africa"
* #716	"Zimbabwe"
* #724	"Spain"
* #728	"South Sudan"
* #729	"Sudan"
* #732	"Western Sahara"
* #740	"Suriname"
* #744	"Svalbard and Jan Mayen"
* #748	"Swaziland"
* #752	"Sweden"
* #756	"Switzerland"
* #760	"Syrian Arab Republic"
* #762	"Tajikistan"
* #764	"Thailand"
* #768	"Togo"
* #772	"Tokelau"
* #776	"Tonga"
* #780	"Trinidad and Tobago"
* #784	"United Arab Emirates"
* #788	"Tunisia"
* #792	"Turkey"
* #795	"Turkmenistan"
* #796	"Turks and Caicos Islands"
* #798	"Tuvalu"
* #800	"Uganda"
* #804	"Ukraine"
* #807	"Macedonia, the former Yugoslav Republic of"
* #818	"Egypt"
* #826	"United Kingdom"
* #831	"Guernsey"
* #832	"Jersey"
* #833	"Isle of Man"
* #834	"Tanzania, United Republic of"
* #840	"United States of America"
* #850	"Virgin Islands, U.S."
* #854	"Burkina Faso"
* #858	"Uruguay"
* #860	"Uzbekistan"
* #862	"Venezuela, Bolivarian Republic of"
* #876	"Wallis and Futuna"
* #882	"Samoa"
* #887	"Yemen"
* #894	"Zambia"

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

* include codes from system PaisesCS

/* ---------------------Tipo Alergias ---------------------------*/
CodeSystem: AlergiasCS
Id: AlergiasCS
Title: "Tipo Alergia"
Description: "Antecedente de Alergia"
* ^name = "AlergiasCS"
* ^experimental = false
* ^caseSensitive = true

* #01   "Medicamento"
* #02   "Alimento"
* #03   "Sustancia del ambiente"
* #04   "Sustancia que entran en contacto con la piel"
* #05   "Picadura de insectos"
* #06	"Otra"


ValueSet: AlergiasVS
Id: AlergiasVS
Title: "Tipo Alergia"
Description:  "Tipo Alergia"
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-01-01T00:00:00-05:00"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

* include codes from system AlergiasCS