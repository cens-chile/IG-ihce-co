// Alias: $abatement-dateTime-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/abatement-dateTime-uv-ips
// Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
// Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
// Alias: $allergy-intolerance-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-uv-ips
// Alias: $allergy-reaction-snomed-ct-ips-free-set = http://hl7.org/fhir/uv/ips/ValueSet/allergy-reaction-snomed-ct-ips-free-set



Profile:        AlergiaCo
Parent:         AllergyIntolerance
Title:          "Alergias Co"
Description:    "Alergias del paciente"

//---paciente
* patient only Reference(PacienteCo)
* patient MS
* patient.reference 1.. MS

* patient ^short = "Paciente sobre al que corresponde la alergia."
* patient ^definition = "Paciente sobre al que corresponde la alergia." 

* category 0..1	MS 
* category ^short = "food | medication | environment | biologic"
* category ^definition = "Categoría de la alergia o intolerancia detectada." 

* code.text ^short  = "Nombre del alérgeno"	
* code.text 1..1 MS

//* code 1..1 MS 
// * code from $CIE10VS (preferred)

/*IPS
* code from $allergy-intolerance-uv-ips (preferred)
* code ^binding.extension[0].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-snomed-ct-ips-free-set"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Type of the substance/product, allergy or intolerance condition."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[+].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Type of the substance/product, allergy or intolerance condition."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[+].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-allergies-uv-ips"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Absent and unknown codes for allergy or intolerance."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.description = "Type of the substance/product, allergy or intolerance condition or or a code for absent/unknown allergy."
 */

/*
* code 1..1 MS 
* code from $CIE10VS (preferred)
*

* code.text 1..1 MS
* code.coding.code 1..1
* code.coding.system 1..1
* code.coding.code from $CIE10VS (preferred) 
* code.coding.system = "http://hl7.org/fhir/sid/icd-10"
* code.coding.display 1..1

/*
//----Code



* code 1..1 MS

* code only $CodeableConcept-uv-ips
* code ^slicing.discriminator.type = #pattern
* code ^slicing.discriminator.path = "$this"
* code ^slicing.description = "Discriminated by the bound value set"
* code ^slicing.rules = #open
* code ^definition = "Identification of the condition, problem or diagnosis or recording of \"problem absent\" or of \"problems unknown\"."
* code contains
    problemGPSCode 0..1 MS and
    absentOrUnknownProblem 0..1 MS
* code[problemGPSCode] from $core-problem-finding-situation-event-gps-uv-ips (required)
* code[problemGPSCode] ^short = "Code for a problem from the SNOMED CT GPS code set"
* code[problemGPSCode] ^definition = "Code for a clinical problem that is selected from the SNOMED CT GPS code set."
* code[problemGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code[problemGPSCode] ^binding.extension.valueString = "problemGPSCode"
* code[problemGPSCode] ^binding.description = "problemGPS"
* code[absentOrUnknownProblem] from $absent-or-unknown-problems-uv-ips (required)
* code[absentOrUnknownProblem] ^short = "Code for absent problem or for unknown problem"
* code[absentOrUnknownProblem] ^definition = "Code representing the statement \"absent problem\" or the statement \"problems unknown\""
* code[absentOrUnknownProblem] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code[absentOrUnknownProblem] ^binding.extension.valueString = "absentOrUnknownProblem"
* code[absentOrUnknownProblem] ^binding.description = "Absent problem or unknown problem"


//--- verificationStatus
* verificationStatus only $CodeableConcept-uv-ips
* verificationStatus MS
* verificationStatus ^comment = "This element is labeled as a modifier because the status contains the code refuted and entered-in-error that mark the Condition as not currently valid."



*/

/*

Alias: $Medication-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $medication-example-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medication-example-uv-ips
Alias: $absent-or-unknown-medications-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-medications-uv-ips
Alias: $medicine-route-of-administration = http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration

Profile: MedicationStatementIPS
Parent: MedicationStatement
Id: MedicationStatement-uv-ips
Title: "Medication Statement (IPS)"
Description: "This profile represents the constraints applied to the MedicationStatement resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A record of a medication statement is represented in the patient summary as an instance of a MedicationStatement resource constrained by this profile."
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* ^purpose = "This profile constrains the representation of a medication statement related to the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* status ^comment = "In the scope of the IPS the entered-in-error concept is not allowed."
* medication[x] MS
* medication[x] from $medication-example-uv-ips (example)
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #closed
* medication[x] ^definition = "Identifies the medication being administered or the reason for absent or unknown Medication. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code. To improve global interoperability is strongly encouraged that the reference to a medication resource is used, limiting the usage of the medicationCodeableConcept only to the cases in which no other information than a simple code is available."
* medication[x] ^binding.description = "The type of medication"
* medicationReference 0..1 MS
* medicationReference only Reference($Medication-uv-ips)
* medicationReference ^sliceName = "medicationReference"
* medicationCodeableConcept 0..1 MS
* medicationCodeableConcept only $CodeableConcept-uv-ips
* medicationCodeableConcept from $absent-or-unknown-medications-uv-ips (extensible)
* medicationCodeableConcept ^sliceName = "medicationCodeableConcept"
* medicationCodeableConcept ^short = "Code for the medication being administered or an absent or unknown medication"
* medicationCodeableConcept ^definition = "Code for the medication being administered or a negated/excluded medication statement.  If negated, this describes a categorical negated statement (e.g., \"No known medications\")."
* medicationCodeableConcept ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* medicationCodeableConcept ^binding.extension.valueString = "UnknownMedicationCode"
* medicationCodeableConcept ^binding.description = "Representation of unknown or absent medications"
* subject only Reference($Patient-uv-ips)
* subject MS
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* dosage MS
* dosage.text MS
* dosage.timing MS
* dosage.route only $CodeableConcept-uv-ips
* dosage.route from $medicine-route-of-administration (preferred)
* dosage.route ^binding.description = "EDQM Standards Terms"

*/