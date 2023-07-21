Instance: DocumentReferenceColombia
InstanceOf: DocumentReferenceCo 
Usage: #example


/* identificador creado por la institucion */
//* identifier.system = "https://www.minsalud.gov.co/ihc/Documentos" // la idea es tener un system unico para todos los docuemntos.
//* identifier.value = "timestamp" //enviado por el prestador AAAAMMDDHHMMSSmm 20081231100470-->2008-12-31 10:04:70
//* api gateway agrega: "BG-1-timestamp" //enviado por el prestador AAAAMMDDHHMMSSmm 20081231100470-->2008-12-31 10:04:70
// "REGION - Codpretador - timestamp"

/* BORRAR: ---- agregado por el nodo bogota cuando llega, previo a  enviarse a REG nacional
* masterIdentifier.system = "https://www.minsalud.gov.co/ihc/Documentos/Bogota/ID_Docs" //creado por Nodo.
* masterIdentifier.value = " -- timestamp.." */

// sgrega api Gateway cuando llega.
//* identifier.assigner.identifier.value = "codigo de instituacion - 05000" // codigo 
//* identifier.assigner.identifier.system = "https://www.minsalud.gov.co/ihc/codigosOrganizacionSGSSS"
//* identifier.assigner.display = "hospital de bogota xxx"


* status = #current 
* date = "2022-03-03T10:30:00Z"

//* type = http://loinc.org#60591-5
* type.coding.system = "http://loinc.org"
* type.coding.code = #60591-5

* subject = Reference(Patient/PacienteColombianoMinimo)

* custodian = Reference(Organization/OrganizacionRegionEjemplo)

* author = Reference(Organization/OrganizacionPrestadorEjemplo)

* content.attachment.contentType = #application/fhir+json
// ANTES: * content.attachment.url = "https://www.minsalud.gov.co/ihc/Bogota/Composition/3213131"

* content.attachment.url = "Composition/CompositionColombia"

