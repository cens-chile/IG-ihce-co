// Alias: $allergy-intolerance-substance-condition-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-substance-condition-uv-ips
// Alias: $absent-or-unknown-allergies-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-allergies-uv-ips

// ValueSet: AllergyIntoleranceUvIps
// Id: allergy-intolerance-uv-ips
// Title: "Allergy Intolerance - IPS"
// Description: "IPS Allergy intolerance codes value set. This value set includes codes from SNOMED Clinical Terms®: all descendants of 373873005 \\|Pharmaceutical / biologic product (product)\\|; all descendants of 105590001 \\|Substance (substance)\\|; all descendants of 418038007 \\|Propensity to adverse reactions to substance (finding)\\| plus codes for absent and unknown allergies."
// * ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
// /*
//     * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
//     * ^extension[=].valueInteger = 2
//     * ^extension[=]._valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
//     * ^extension[=]._valueInteger.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
//     * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
//     * ^extension[=].valueCode = #trial-use
//     * ^extension[=]._valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
//     * ^extension[=]._valueCode.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
// */

// * ^url = "http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-uv-ips"
// * ^version = "1.1.0"
// * ^status = #active
// * ^experimental = false
// * ^publisher = "Health Level Seven International - Patient Care Work Group"
// * ^contact.telecom.system = #url
// * ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
// * ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
// * ^immutable = false
// * ^copyright = "The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organization, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review [usage terms](http://www.snomed.org/snomed-ct/get-snomed-ct) or directly contact SNOMED International: info@snomed.org"
// * include codes from valueset $allergy-intolerance-substance-condition-uv-ips
// * include codes from valueset $absent-or-unknown-allergies-uv-ips