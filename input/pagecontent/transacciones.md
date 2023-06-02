

La siguiente sección, describe como serán las transacciones con la plataforma. En la primera parte se representa el guardar Documento, a continuación Buscar Documentos de un paciente y por ultimo obtener un documento especifico.

### Guardar Documento.
Desde el prestador se debe generar un RDA válido,  y se debe construir un Bundle para su envio mediante un POST a los servicios de la Plataforma de la IHC.  En la plataforma el RDA es recibido, validado y consolidado dentro del repositorio territorial con los respectivos identificadores nacionales y es indexado en el recurso DocumentReference.  La Plataforma responde con un mensaje del resultado de la transacción. 

<div>
{% include GuardarRDA.svg %}
</div>



### Buscar Documento de un paciente.

Utilizando el identificador del paciente, desde el prestador se genera una operación de consulta GET hacia la Plataforma de la IHC al recurso DocumentReference.  Esta operación retorna un bundle con  las distintas instancias que existen para el paciente dentro del recurso DocumentReference.  

<div>
{% include BuscarDoc.svg %}
</div>



<!-- #### Mandatory Search Parameters:

The following search parameters, search parameter combinations and search parameter [modifiers], [comparators], [chains] and [composites] SHALL be supported.  the  modifiers, comparators, chains and composites that are listed as optional SHOULD be supported:

1. **SHALL** support searching for all medication statements for a patient. The server application represents the medication using either an inline code or a contained or external reference to the Medication resource. using the **[`patient`](SearchParameter-us-core-medicationstatement-patient.html)** search parameter:

    - including optional support for these `_include` parameters: `MedicationStatement:medication`

    `GET [base]/MedicationStatement?patient=[reference]`

    Example:
    
      1. GET [base]/MedicationStatement?patient=14676
      1. GET [base]/MedicationStatement?patient=14676&amp;_include=MedicationStatement:medication

    *Implementation Notes:* Fetches a bundle of all MedicationStatement resources for the specified patient. Mandatory for client to support the _include parameter. Optional for server to support the _include parameter. ([how to search by reference])
 -->
### Obtener Documento. 

A partir de la información desplegada al usuario, por el bundle obtenido en 4.2, el usuario selecciona un RDA específico a ser visualizado.  Esta selección genera un GET sobre un recurso Composition dentro del repositorio territorial correspondiente en la plataforma de IHC. Acorde con la selección, la plataforma retorna un Bundle con el recurso Composition en donde se encuentran los contenidos del RDA.

<div>
{% include RecuperarDoc.svg %}
</div>
