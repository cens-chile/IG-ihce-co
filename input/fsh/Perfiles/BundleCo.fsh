
Profile: BundleCo
Parent: Bundle
Id: BundleCo
Title: "Bundle Co"
Description: "Se describe como debe ser el recurso Bundle para transportar Document Reference, Composition -RDA-, Conditions."

* type = #transaction

//------Entradas
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.description = "Corresponde a cada una de las entradas del Bundle."
* entry ^slicing.rules = #closed
* entry.resource MS


* entry contains
    DocumentRefs 1..1 and
    Profesional 1..1 and
    RDA 1..1 and
    Condition 1..* and    
    Alergias 0..* and
    Medicaciones 0..* and    
    Patient 1..1
  

/*   --------- Document REF ---------*/
* entry[DocumentRefs] ^short = "Document Reference."
* entry[DocumentRefs] ^definition = "Indica los documentos de referencia."

* entry[DocumentRefs].resource 1..
* entry[DocumentRefs].resource only $canonicaDocRefCo

//metodo POST
* entry[DocumentRefs].request 1..
* entry[DocumentRefs].request.method = #POST


/*   --------- Compostion ---------*/
* entry[RDA] ^short = "RDA - Composition."
* entry[RDA] ^definition = "Registro Digital de Atención - Composition"

* entry[RDA].resource 1..
* entry[RDA].resource only $canonicaComposition

//metodo POST
* entry[RDA].request 1..
* entry[RDA].request.method = #POST


/*   --------- Practitioner ---------*/
* entry[Profesional] ^short = "Profesional."
* entry[Profesional] ^definition = "Profesional"

* entry[Profesional].resource 1..
* entry[Profesional].resource only $canonicaPractitioner

//metodo POST
* entry[Profesional].request 1..
* entry[Profesional].request.method = #POST

/* --------- Condition ---------*/
* entry[Condition] ^short = "Condiciones."
* entry[Condition] ^definition = "Corresponden a los diagnosticos."

* entry[Condition].resource 1..
* entry[Condition].resource only $canonicaCondition

//metodo POST
* entry[Condition].request 1..
* entry[Condition].request.method = #POST



/* --------- Alergias ---------*/
* entry[Alergias] ^short = "Alergias/Intolerancias"
* entry[Alergias] ^definition = "Alergias/Intolerancias."

* entry[Alergias].resource 1..
* entry[Alergias].resource only $canonicaAlergia 
* entry[Alergias].request.method = #POST



/* --------- Medicamentos ---------*/
* entry[Medicaciones] ^short = "Medicamentos"
* entry[Medicaciones] ^definition = "Medicamentos"

* entry[Medicaciones].resource 1..
* entry[Medicaciones].resource only $canonicaMedication 
* entry[Medicaciones].request.method = #POST


/* --------- PACIENTE ---------*/
* entry[Patient] ^short = "Paciente"
* entry[Patient] ^definition = "Paciente."

* entry[Patient].resource 1..
* entry[Patient].resource only $canonicaPaciente
* entry[Patient].request.method 
* entry[Patient].request.method = #POST









/*

/* DE MHD: 
------------------------------------------------------------------------------------------------
* entry contains
    SubmissionSet 1..1 and
    DocumentRefs 0..* and
    Documents 0..* and
    Folders 0..* and
    Patient 0..1

* entry[SubmissionSet] ^short = "the SubmissionSet"
* entry[SubmissionSet] ^definition = "The SubmissionSet defines who submitted it, why they submitted it, when they submitted, what is in it, and where it is destine."
* entry[SubmissionSet].resource 1..
* entry[SubmissionSet].resource only $IHE.MHD.Minimal.SubmissionSet
* entry[SubmissionSet].request 1..
* entry[SubmissionSet].request.method = #POST
*/

/*
* entry[Folders] ^short = "Folders"
* entry[Folders] ^definition = "any Folders being created or updated"
* entry[Folders].resource 1..
* entry[Folders].resource only $IHE.MHD.Minimal.Folder
* entry[Folders].request 1..
* entry[Folders].request.method from $MHDprovideFolderActions (required)
//*entry[Patient].request.method from $MHDprovidePatientActions (required)

/*
* entry[Documents] ^short = "the documents"
* entry[Documents] ^definition = "the documents referenced by the DocumentReference resources"
* entry[Documents].resource 1..
* entry[Documents].resource only Binary
* entry[Documents].request 1..
* entry[Documents].request.method = #POST
*/



/* VERSION ANTERIOR DEL BUNDLE 
Profile: BundleCo
Parent: Bundle
Id: BundleCo
Title: "Bundle Co"
//Description: "Se describe como debe ser el recurso Bundle."
Description: """ 
* Se describe como debe ser el recurso Bundle 

  * algooo

."""

* identifier 1.. MS
* identifier ^short = "Identificador para el Bundle"
//* identifier ^comment = "La identidad persistente generalmente sólo importa para los lotes de tipo Documento, Mensaje y Colección. Normalmente no se rellena para los resultados de la búsqueda y el historial y los servidores ignoran Bundle.identifier al procesar lotes y transacciones. En el caso de los documentos, el .identifier DEBERÁ rellenarse de forma que el .identifier sea único a nivel mundial."

* type MS
* type from BundleType (required)
* type ^short = "| transaction | transaction-response | batch | batch-response | history | searchset | collection, en nuestro caso se fuerza a collection"
* type ^definition = "Indica la finalidad de este paquete, es decir, cómo se va a utilizar. En este caso se utiliza 'Transaction' "
//* type ^comment = "Es posible utilizar un paquete para otros fines (por ejemplo, un documento puede ser aceptado como una transacción). Esto se define principalmente para que pueda haber reglas específicas para algunos de los tipos de paquetes."

* timestamp 1.. MS
* timestamp ^short = "Hora en la cual cual fue ensamblado el Bundle en formato YYYY-MM-DDThh:mm:ss.sss+zz:zz"
* timestamp ^definition = "La fecha/hora en que se ensambló el paquete, es decir, cuando se colocaron los recursos en el paquete"
//* timestamp ^comment = "Para muchos paquetes, la marca de tiempo es igual a .meta.lastUpdated, porque no se almacenan (por ejemplo, los resultados de la búsqueda). Cuando un bundle se coloca en un almacén persistente, .meta.lastUpdated suele ser modificado por el servidor. Cuando el bundle es un mensaje, un agente de middleware que altere el mensaje (aunque no esté almacenado) DEBERÍA actualizar .meta.lastUpdated. .timestamp se utiliza para rastrear la hora original del Bundle, y DEBERÍA ser rellenado."

* entry 1.. MS
* entry ^short = "Se agregan los recursos que se desean adjuntar dentro del bundle en el elemento fullUrl"
* entry.fullUrl MS
* entry.fullUrl ^short = "URL absoluta del recurso a vincular"

*/