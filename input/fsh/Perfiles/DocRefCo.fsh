Profile: DocumentReferenceCo
Parent: DocumentReference
Title: "Referencia de Documentos"
Description: "Docuento utilizado para guardar referencias."

//-----------IDENTIFICADOR ---------
/*
* identifier 1.. MS
* identifier ^short = "Identificador del Documento."
* identifier.system = "https://www.minsalud.gov.co/ihc/Documentos"
* identifier.value ^short = "FORMATO : Region - Codprestador - timestamp : AAAAMMDDHHMMSSmm"
* identifier.value 1.. MS
*/

    /*
        "identifier" : [
                {
                "system" : "https://www.minsalud.gov.co/ihc/Documentos/Bogota/PRESTADOR_X/ID_Docs",
                "value" : "20220331100470",
                "assigner" : {
                    "identifier" : {
                    "system" : "https://www.minsalud.gov.co/ihc/codigosOrganizacionSGSSS",
                    "value" : "05000"
                    },
                    "display" : "hospital de bogota xxx"
                }
                }
            ],
    */


* type 1.. MS
* type ^short = "Valor fijo : #60591-5"

* type.coding 1..1 MS
* type.coding ^short = "Código del tipo de documento."

* type.coding.system ^short = "Sistema de codificación"
* type.coding.system = "http://loinc.org"

* type.coding.code ^short = "Valor fijo : #60591-5"
* type.coding.code = #60591-5

//* --- Fecha -----
* date 1..1 MS
* date ^short = "Fecha de creación del documento"
* date ^definition = "Fecha de creación del documento"


* status 1..1 MS
* status = #current 
* status ^short = "Estado del Documento. Valor Fijo: current"
* status ^definition = "Indica el estado del documento."

//-----------PACIENTE --------- 
* subject 1..1 MS
* subject ^short = "Representa al paciente."

* subject.reference 1..
* subject.reference ^short = "URL que referencia al recurso paciente."


* subject only Reference(PacienteCo)


//-----------CUSTODIAN ---------
* custodian 1..1 MS
* custodian ^short = "Corresponde a la región encargada de mantener el documento RDA."

* custodian.reference 1..1
* custodian.reference ^short = "URL que indica la Organización."

* custodian only Reference(OrganizacionCo)



//-----------AUTOR ---------
* author 1..1 MS
* author ^short = "Corresponde la institución donde se creó el documento RDA."
* author.reference 1..
* author.reference ^short = "URL que indica el autor."

* author only Reference(OrganizacionCo) 



//-----------Contenido : Composition ---------
* content.attachment MS
* content.attachment ^short = ""
* content.attachment.url 1..1 MS
* content.attachment.url ^short = "Se debe completar URL del recurso Composition RDA, enviado dentro del bundle."


/*
Description: """A profile on the DocumentReference resource for MHD with minimal metadata constraints. 
- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
- the use defined here is FHIR DocumentReference implementation of the 
- ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).
- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)"""
*/