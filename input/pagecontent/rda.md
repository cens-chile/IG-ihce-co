### Definición del RDA

El Resumen Digital de Atención en Salud - RDA es la expresión en medios digitales de los contenidos de la Epicrisis o resumen de atención utilizados en el Sistema de Salud Colombiano y definidos en el Decreto 780 de 2016. 

La epicrisis es un documento médico legal en el que se registra el resumen de la historia clínica originado por el ingreso de un paciente a una institución prestadora de servicios de salud. Debe ser completo, detallado y debe brindar información acerca del proceso de atención desde el inicio de la enfermedad hasta su resolución.

De acuerdo con dicho decreto la Epicrisis es utilizada en el caso de hospitalización y urgencias según lo establecido en el Artículo 2.6.1.4.3.5 que define el contenido de dicha epicrisis como soporte de las reclamaciones por servicios de salud, indemnizaciones y gastos y el Resumen Clínico de la Atención según lo establecido en el Artículo 2.6.1.4.3.6 que define el contenido para servicios de salud ambulatorios.

### El RDA y la IHC
El Resumen Digital de Atención es un estándar para compartir los datos relacionados con la epicrisis y el resumen clínico de la atención en salud de una forma integrada. Dicho estándar incorpora los elementos de datos relacionados con la identificación, contacto con el servicio de salud, uso de tecnologías en salud y la medición de resultados de valoración clínica y de laboratorio. De acuerdo con el Decreto 780 de 2016, el Resumen Digital de Atención-RDA se organiza tal como está definida la Epicrisis y el resumen clínico de atención. 

El RDA es un documento digital generado por el prestador al final de la atención en salud de cada paciente, este resumen digital de atención deberá ser enviado a la plataforma de interoperabilidad usando los servicios dispuestos para ello.  El RDA está basado en las variables de la resolución 866 de 2021 y estructura su información en diferentes secciones.  


### RDA y HL7 FHIR

Se ha definido HL7 FHIR como Lenguaje Comun de Intercambio, y dentro del estandar se han identificado los recursos para su modelamiento.

El modelo del RDA está basado en los siguientes recursos del estándar:

* DocumentRefence, indice del Documento RDA.
* Composition, contexto del RDA:   Fecha, organización, 
* PatientCo, información demográfica del paciente
* Practitioner, Profesional de salud
* Organization, Prestador donde se realiza la atención
* Encounter(pendiente), información general del evento
* MedicationStatment, medicamentos que le son administrados al paciente
* Procedure(pendiente), procedimientos que han sido realizados
* Observation(pendiente), resultados
* AlergyIntolerance, tipos de alergia
* FamilyMemberHistory(pendiente), antecedentes
* Condition, diagnósticos y condición del paciente


### Versiones del RDA

* RDA Mínimo, utilizado para la prueba piloto de Bogotá, Cundinamarca, Antioquia, Santander y Valle del Cauca  unicamente tendrá los recursos : DocumentReference, Composition, Patient, Organization, Practitioner y Condition.

* RDA V1, esta version inlcuye los recursos MedicationStatement, Allergy.