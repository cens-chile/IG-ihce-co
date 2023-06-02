Profile:        ConditionCo
Parent:         Condition
Title:          "Condition Co"
Description:    "Condicion del paciente"
//* ^name = "condicionColombia"


//---paciente
* subject only Reference($canonicaPaciente)
* subject MS
* subject.reference 1.. MS

* subject ^short = "Paciente sobre al que corresponde la condición." 
* subject ^definition = "Paciente sobre al que corresponde la condición." 

/*
* code 1..1 MS 
* code from $CIE10VS (preferred)
*/

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