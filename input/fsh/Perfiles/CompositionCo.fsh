Alias: $loinc = http://loinc.org

Profile: CompositionCo
Parent: Composition
Id: CompositionCo
Title: "Documento Co"
Description: "Definición de un documento clínico para las necesidades de interoperabilidad en Colombia."


//* text MS
//* identifier MS

* status MS
* status ^short = "Estado valor fijo: -final-"
* status ^definition = "Corresponde al estado del documento."

//--- loinc que representa el tipo de documento ----
* type from http://hl7.org/fhir/ValueSet/doc-typecodes (preferred)
* type MS
* type ^short = "Tipo de Documento"
* type ^definition = "Especifica el tipo de documento que se ha generado"


//* ---- Paciente ----- 
* subject 1..1 
* subject only Reference($canonicaPaciente)
* subject MS
* subject ^definition = "Paciente sobre el cual se ha generado este documento. Este debe ser el Perfil de paciente Colombiano."
* subject ^short = "Paciente sobre el cual se ha generado este documento. Este debe ser el Perfil de paciente Colombiano."
* subject.reference 1..1 MS
* subject.reference ^short = "Corresponde al paciente"



//* --- Author : referencia a un practitioner----
* author 1..1 
* author only Reference($canonicaPractitioner) 
* author MS
* author ^short = "Quien Ha creado el documento"
* author ^definition = "Identifica al responsable de los datos ingresados al documento."

//* --- Custodio : referencia a una organización----
* custodian 1..1
* custodian only Reference($canonicaOrganization) 
* custodian MS
* custodian ^short = "Indica la región que será custodio del documento."
* custodian ^definition = "Indica la región que será custodio del documento."

//* --- Fecha -----
* date MS
* date ^short = "Fecha de creación del documento"
* date ^definition = "Fecha de creación del documento"

//* --- Titulo de documento -----
* title MS
* title ^short = "Título del documento generado"
* title ^definition = "Título oficial del documento para que pueda ser legible."


* section 1..3 MS

//----- division de secciones -------
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

* section ^short = "Sección del documento"
* section ^definition = "Sección de notificación de datos clínicos."

* section.code 1.. MS
* section.code from http://hl7.org/fhir/ValueSet/doc-section-codes (example)


//--------- Secciones 
* section contains
    sectionDiagnosticos 1..1 MS and
    sectionMedicacion 0..1 MS and
    sectionAlergias 0..1 MS

  
//------ 1. Diagnosticos------------

* section[sectionDiagnosticos] ^short = "Sección Diagnósticos"
* section[sectionDiagnosticos] ^definition = "Descripción de lista de diagnósticos determinados en el paciente."

* section[sectionDiagnosticos].code MS 
* section[sectionDiagnosticos].code = $loinc#11450-4

* section[sectionDiagnosticos].title 1.. MS

* section[sectionDiagnosticos].entry 1.. MS
* section[sectionDiagnosticos].entry only Reference($canonicaCondition)

* section[sectionDiagnosticos].entry ^slicing.discriminator[0].type = #profile
* section[sectionDiagnosticos].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionDiagnosticos].entry ^slicing.rules = #open
* section[sectionDiagnosticos].entry ^short = "Diagnósticos conocidos actualmente de relevancia para determinaciones clínicas en el paciente."
//* section[sectionDiagnosticos].entry contains problem 1..* MS



//------ 2. Medicacion------------

* section[sectionMedicacion] ^short = "Sección Medicacion"
* section[sectionMedicacion] ^definition = "Descripción de lista de medicacion del paciente."

* section[sectionMedicacion].code MS 
* section[sectionMedicacion].code = $loinc#10160-0
* section[sectionMedicacion].title 1.. MS
* section[sectionMedicacion].entry 1.. MS
* section[sectionMedicacion].entry only Reference($canonicaMedication)

* section[sectionMedicacion].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedicacion].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionMedicacion].entry ^slicing.rules = #open
* section[sectionMedicacion].entry ^short = "Medicación del paciente."


//------ 3. Alergias------------

* section[sectionAlergias] ^short = "Sección Alergias"
* section[sectionAlergias] ^definition = "Descripción de lista de alergias conocidas del paciente."

* section[sectionAlergias].code MS 
* section[sectionAlergias].code = $loinc#48765-2
* section[sectionAlergias].title 1.. MS
* section[sectionAlergias].entry 1.. MS
* section[sectionAlergias].entry only Reference($canonicaAlergia)

* section[sectionAlergias].entry ^slicing.discriminator[0].type = #profile
* section[sectionAlergias].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionAlergias].entry ^slicing.rules = #open
* section[sectionAlergias].entry ^short = "Alergias del paciente."










/*******************************************************************************************************************/


/*
//Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
//Alias: $clinicaldocument = http://hl7.org/fhir/StructureDefinition/clinicaldocument
//Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
//Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
//Alias: $AllergyIntolerance-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips
//Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
//Alias: $MedicationStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
//Alias: $MedicationRequest-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips
Alias: $Condition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Alias: $Procedure-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips
Alias: $Immunization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Alias: $DeviceUseStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips
Alias: $Observation-results-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: $DiagnosticReport-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips
Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $Observation-tobaccouse-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips
Alias: $Observation-alcoholuse-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips
Alias: $Observation-pregnancy-status-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips
Alias: $Observation-pregnancy-outcome-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips
*/


/* section[sectionDiagnosticos].entry[problem] only Reference($Condition-uv-ips)

/*
* section[sectionDiagnosticos] ^short = "Diagnosticos del Paciente"
* section[sectionDiagnosticos] ^definition = "Esta sección contiene el listado de diagnósticos determinados para el paciente."
* section[sectionDiagnosticos].title 1.. MS
* section[sectionDiagnosticos].code = $loinc#57852-6
* section[sectionDiagnosticos].entry 1.. MS
* section[sectionDiagnosticos].entry only Reference(AllergyIntolerance or DocumentReference)
* section[sectionDiagnosticos].entry ^slicing.discriminator[0].type = #profile
* section[sectionDiagnosticos].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionDiagnosticos].entry ^slicing.rules = #open
* section[sectionDiagnosticos].entry ^short = "Relevant allergies or intolerances (conditions) for that patient."
* section[sectionDiagnosticos].entry ^definition = "It lists the relevant allergies or intolerances (conditions) for that patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum, it should list currently active and any relevant historical allergies and adverse reactions.\r\n This entry shall be used to document that no information about allergies is available, or that no allergies are known ."
* section[sectionDiagnosticos].entry contains allergyOrIntolerance 1..* MS
* section[sectionDiagnosticos].entry[allergyOrIntolerance] only Reference($AllergyIntolerance-uv-ips)
*/


/*  
* section[sectionMedications] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedications] ^extension.valueString = "Section"
* section[sectionMedications] ^short = "IPS Medication Summary Section"
* section[sectionMedications] ^definition = "The medication summary section contains a description of the patient's medications relevant for the scope of the patient summary.\r\nThe actual content could depend on the jurisdiction, it could report:\r\n- the currently active medications; \r\n- the current and past medications considered relevant by the authoring GP; \r\n- the patient prescriptions or dispensations automatically extracted by a regional or a national EHR.\r\n\r\nIn all those cases however medications are documented in the Patient Summary as medication statements.\r\nThis section requires either an entry indicating the subject is known not to be on any relevant medication; either an entry indicating that no information is available about medications; or entries summarizing the subject's relevant medications."
* section[sectionMedications].title 1.. MS
* section[sectionMedications].title ^short = "Medication Summary section"
* section[sectionMedications].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents.\r\n\r\nMedication Summary "
* section[sectionMedications].code = $loinc#10160-0
* section[sectionMedications].entry 1.. MS
* section[sectionMedications].entry only Reference(MedicationStatement or MedicationRequest or MedicationAdministration or MedicationDispense or DocumentReference)
* section[sectionMedications].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedications].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionMedications].entry ^slicing.rules = #open
* section[sectionMedications].entry ^short = "Medications relevant for the scope of the patient summary"
* section[sectionMedications].entry ^definition = "This list the medications relevant for the scope of the patient summary or it is used to indicate that the subject is known not to be on any relevant medication; either that no information is available about medications."
* section[sectionMedications].entry contains
    medicationStatement 0..* MS and
    medicationRequest 0..* MS
* section[sectionMedications].entry[medicationStatement] only Reference($MedicationStatement-uv-ips)
* section[sectionMedications].entry[medicationRequest] only Reference($MedicationRequest-uv-ips)

*/


/*
* section[sectionProceduresHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProceduresHx] ^extension.valueString = "Section"
* section[sectionProceduresHx] ^short = "IPS History of Procedures Section"
* section[sectionProceduresHx] ^definition = "The History of Procedures Section contains a description of the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy"
* section[sectionProceduresHx].title 1.. MS
* section[sectionProceduresHx].code = $loinc#47519-4
* section[sectionProceduresHx].entry 1.. MS
* section[sectionProceduresHx].entry only Reference(Procedure or DocumentReference)
* section[sectionProceduresHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionProceduresHx].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionProceduresHx].entry ^slicing.rules = #open
* section[sectionProceduresHx].entry ^short = "Patient past procedures pertinent to the scope of this document."
* section[sectionProceduresHx].entry ^definition = "It lists the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy. This entry shall be used to document that no information about past procedures is available, or that no relevant past procedures are known."
* section[sectionProceduresHx].entry contains procedure 1..* MS
* section[sectionProceduresHx].entry[procedure] only Reference($Procedure-uv-ips)
* section[sectionImmunizations] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionImmunizations] ^extension.valueString = "Section"
* section[sectionImmunizations] ^short = "IPS Immunizations Section"
* section[sectionImmunizations] ^definition = "The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes the current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* section[sectionImmunizations].title 1.. MS
* section[sectionImmunizations].code = $loinc#11369-6
* section[sectionImmunizations].entry 1.. MS
* section[sectionImmunizations].entry only Reference(Immunization or DocumentReference)
* section[sectionImmunizations].entry ^slicing.discriminator[0].type = #profile
* section[sectionImmunizations].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionImmunizations].entry ^slicing.rules = #open
* section[sectionImmunizations].entry ^short = "Patient's immunization status and pertinent history."
* section[sectionImmunizations].entry ^definition = "It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available, or that no immunizations are known."
* section[sectionImmunizations].entry contains immunization 1..* MS
* section[sectionImmunizations].entry[immunization] only Reference($Immunization-uv-ips)
* section[sectionMedicalDevices] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedicalDevices] ^extension.valueString = "Section"
* section[sectionMedicalDevices] ^short = "IPS Medical Devices Section"
* section[sectionMedicalDevices] ^definition = "The medical devices section contains narrative text and coded entries describing the patient history of medical device use."
* section[sectionMedicalDevices].title 1.. MS
* section[sectionMedicalDevices].code = $loinc#46264-8
* section[sectionMedicalDevices].entry 1.. MS
* section[sectionMedicalDevices].entry only Reference(DeviceUseStatement or DocumentReference)
* section[sectionMedicalDevices].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedicalDevices].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionMedicalDevices].entry ^slicing.rules = #open
* section[sectionMedicalDevices].entry ^short = "Patient history of medical device use."
* section[sectionMedicalDevices].entry ^definition = "It describes the patient history of medical device use. This entry shall be used to document that no information about medical device use is available, or that no relevant medical device use is known."
* section[sectionMedicalDevices].entry contains deviceStatement 1..* MS
* section[sectionMedicalDevices].entry[deviceStatement] only Reference($DeviceUseStatement-uv-ips)
* section[sectionResults] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionResults] ^extension.valueString = "Results Section"
* section[sectionResults] ^short = "IPS Results Section"
* section[sectionResults] ^definition = "This section assembles relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].title 1.. MS
* section[sectionResults].code = $loinc#30954-2
* section[sectionResults].entry 1.. MS
* section[sectionResults].entry only Reference(Observation or DiagnosticReport or DocumentReference)
* section[sectionResults].entry ^slicing.discriminator[0].type = #type
* section[sectionResults].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionResults].entry ^slicing.discriminator[+].type = #profile
* section[sectionResults].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionResults].entry ^slicing.rules = #open
* section[sectionResults].entry ^short = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient."
* section[sectionResults].entry ^definition = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].entry contains
    results-observation 0..* MS and
    results-diagnosticReport 0..* MS
* section[sectionResults].entry[results-observation] only Reference($Observation-results-uv-ips)
* section[sectionResults].entry[results-diagnosticReport] only Reference($DiagnosticReport-uv-ips)
* section[sectionVitalSigns] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionVitalSigns] ^extension.valueString = "Vital Signs Section"
* section[sectionVitalSigns] ^label = "Vital signs"
* section[sectionVitalSigns] ^short = "IPS Vital Signs Section"
* section[sectionVitalSigns] ^definition = "The Vital signs section includes blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].title 1.. MS
* section[sectionVitalSigns].code = $loinc#8716-3
* section[sectionVitalSigns].entry only Reference(Observation or DocumentReference)
* section[sectionVitalSigns].entry MS
* section[sectionVitalSigns].entry ^slicing.discriminator[0].type = #profile
* section[sectionVitalSigns].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionVitalSigns].entry ^slicing.rules = #open
* section[sectionVitalSigns].entry ^short = "Notable vital signs or physical findings."
* section[sectionVitalSigns].entry ^definition = "Notable vital signs or physical findings as: blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].entry contains vitalSign 0..* MS
* section[sectionVitalSigns].entry[vitalSign] only Reference($vitalsigns)
* section[sectionPastIllnessHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPastIllnessHx] ^extension.valueString = "Section"
* section[sectionPastIllnessHx] ^short = "IPS History of Past Illness Section"
* section[sectionPastIllnessHx] ^definition = "The History of Past Illness section contains a description of the conditions the patient suffered in the past."
* section[sectionPastIllnessHx].title 1.. MS
* section[sectionPastIllnessHx].code = $loinc#11348-0
* section[sectionPastIllnessHx].entry 1.. MS
* section[sectionPastIllnessHx].entry only Reference(Condition or DocumentReference)
* section[sectionPastIllnessHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionPastIllnessHx].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionPastIllnessHx].entry ^slicing.rules = #open
* section[sectionPastIllnessHx].entry ^short = "Conditions the patient suffered in the past."
* section[sectionPastIllnessHx].entry ^definition = "It contains a description of the conditions the patient suffered in the past."
* section[sectionPastIllnessHx].entry contains pastProblem 1..* MS
* section[sectionPastIllnessHx].entry[pastProblem] only Reference($Condition-uv-ips)
* section[sectionFunctionalStatus] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionFunctionalStatus] ^extension.valueString = "Section"
* section[sectionFunctionalStatus] ^short = "IPS Functional Status"
* section[sectionFunctionalStatus] ^definition = "The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
* section[sectionFunctionalStatus].title 1.. MS
* section[sectionFunctionalStatus].code = $loinc#47420-5
* section[sectionFunctionalStatus].entry only Reference(Condition or ClinicalImpression or DocumentReference)
* section[sectionFunctionalStatus].entry MS
* section[sectionFunctionalStatus].entry ^slicing.discriminator[0].type = #profile
* section[sectionFunctionalStatus].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionFunctionalStatus].entry ^slicing.rules = #open
* section[sectionFunctionalStatus].entry ^short = "Optional entry used to represent disabilities and functional assessments"
* section[sectionFunctionalStatus].entry ^definition = "It describes capabilities of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
* section[sectionFunctionalStatus].entry contains
    disability 0..* MS and
    functionalAssessment 0..* MS
* section[sectionFunctionalStatus].entry[disability] only Reference($Condition-uv-ips)
* section[sectionFunctionalStatus].entry[functionalAssessment] only Reference(ClinicalImpression)
* section[sectionPlanOfCare] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPlanOfCare] ^extension.valueString = "Section"
* section[sectionPlanOfCare] ^short = "IPS Plan of Care Section"
* section[sectionPlanOfCare] ^definition = "The plan of care section contains a narrative description of the expectations for care including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient."
* section[sectionPlanOfCare].title 1.. MS
* section[sectionPlanOfCare].code = $loinc#18776-5
* section[sectionPlanOfCare].entry only Reference(CarePlan or DocumentReference)
* section[sectionPlanOfCare].entry ^slicing.discriminator[0].type = #profile
* section[sectionPlanOfCare].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionPlanOfCare].entry ^slicing.rules = #open
* section[sectionPlanOfCare].entry ^short = "Optional entry used to represent structured care plans"
* section[sectionPlanOfCare].entry ^definition = "Dynamic, personalized plan including identified needed healthcare activity, health objectives and healthcare goals, relating to one or more specified health issues in a healthcare process [Source EN ISO 13940]"
* section[sectionPlanOfCare].entry ^mustSupport = false
* section[sectionPlanOfCare].entry contains carePlan 0..*
* section[sectionPlanOfCare].entry[carePlan] only Reference(CarePlan)
* section[sectionPlanOfCare].entry[carePlan] ^mustSupport = false
* section[sectionSocialHistory] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionSocialHistory] ^extension.valueString = "Section"
* section[sectionSocialHistory] ^short = "IPS Social History Section"
* section[sectionSocialHistory] ^definition = "The social history section contains a description of the person’s Health related \"lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].title 1.. MS
* section[sectionSocialHistory].code = $loinc#29762-2
* section[sectionSocialHistory].entry only Reference(Observation or DocumentReference)
* section[sectionSocialHistory].entry MS
* section[sectionSocialHistory].entry ^slicing.discriminator[0].type = #profile
* section[sectionSocialHistory].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionSocialHistory].entry ^slicing.rules = #open
* section[sectionSocialHistory].entry ^short = "Health related \"lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].entry ^definition = "Description of the person’s Health related “lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].entry contains
    smokingTobaccoUse 0..1 MS and
    alcoholUse 0..1 MS
* section[sectionSocialHistory].entry[smokingTobaccoUse] only Reference($Observation-tobaccouse-uv-ips)
* section[sectionSocialHistory].entry[alcoholUse] only Reference($Observation-alcoholuse-uv-ips)
* section[sectionPregnancyHx] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPregnancyHx] ^extension.valueString = "Section"
* section[sectionPregnancyHx] ^short = "IPS History of Pregnancy Section"
* section[sectionPregnancyHx] ^definition = "The history of pregnancy section shall contain information about whether the patient is currently pregnant or not.\r\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].title 1.. MS
* section[sectionPregnancyHx].code = $loinc#10162-6
* section[sectionPregnancyHx].entry only Reference(Observation or DocumentReference)
* section[sectionPregnancyHx].entry MS
* section[sectionPregnancyHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionPregnancyHx].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionPregnancyHx].entry ^slicing.rules = #open
* section[sectionPregnancyHx].entry ^short = "Current pregnancy status and, optionally, information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].entry ^definition = "It contains information about whether the patient is currently pregnant or not.\r\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].entry contains
    pregnancyStatus 0..* MS and
    pregnancyOutcomeSummary 0..* MS
* section[sectionPregnancyHx].entry[pregnancyStatus] only Reference($Observation-pregnancy-status-uv-ips)
* section[sectionPregnancyHx].entry[pregnancyOutcomeSummary] only Reference($Observation-pregnancy-outcome-uv-ips)
* section[sectionAdvanceDirectives] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAdvanceDirectives] ^extension.valueString = "Section"
* section[sectionAdvanceDirectives] ^short = "IPS Advance Directives Section"
* section[sectionAdvanceDirectives] ^definition = "The advance directives section contains a narrative description of patient's advance directive."
* section[sectionAdvanceDirectives].title 1.. MS
* section[sectionAdvanceDirectives].code = $loinc#42348-3
* section[sectionAdvanceDirectives].entry only Reference(Consent or DocumentReference)
* section[sectionAdvanceDirectives].entry MS
* section[sectionAdvanceDirectives].entry ^slicing.discriminator[0].type = #profile
* section[sectionAdvanceDirectives].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionAdvanceDirectives].entry ^slicing.rules = #open
* section[sectionAdvanceDirectives].entry ^short = "Narrative description of the patient's advance directive."
* section[sectionAdvanceDirectives].entry ^definition = "Contains a narrative description or a Consent entry with information about the patient's advance directive."
* section[sectionAdvanceDirectives].entry contains advanceDirectivesConsent 0..* MS
* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] only Reference(Consent)

*/





