Instance: identifier-type
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2022-05-23T15:41:59.581+00:00"
* meta.source = "#4ccd4ccd6525236f"
* url = "https://www.minsalud.gov.co/ihc/fhir/SearchParameter/identifier-type"
* version = "1"
* name = "IdentifierType"
* status = #active
* experimental = true
* date = "2020-05-28"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Busqueda de un Patient-Practitioner por el valor de identifier.type"
* code = #identifier-type
* base[0] = #Patient
* base[1] = #Practitioner
* type = #token
* expression = "Patient.identifier.type | Practitioner.identifier.type"
* xpathUsage = #normal

Instance: identifier-country
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2022-05-23T15:42:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* url = "https://www.minsalud.gov.co/ihc/fhir/SearchParameter/identifier-country"
* version = "1"
* name = "IdentifierCountry"
* status = #active
* experimental = true
* date = "2020-05-28"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Busqueda de un Patient-Practitioner por el valor de la extension de pais"
* code = #identifier-country
* base[0] = #Patient
* base[1] = #Practitioner
* type = #token
* expression = "Patient.identifier.type.extension('https://www.minsalud.gov.co/ihc/fhir/StructureDefinition/co-pais') | Practitioner.identifier.type.extension('https://www.minsalud.gov.co/ihc/fhir/StructureDefinition/co-pais')"
* xpathUsage = #normal