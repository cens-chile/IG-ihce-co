Instance: CompositionColombia
InstanceOf: Composition
Usage: #example
Description: "Ejemplo de Documento RDA Colombiano."

* meta.versionId = "1"
* meta.lastUpdated = "2021-10-13T22:23:44.162Z"
* meta.profile = $canonicaComposition 

* type = $loinc#60591-5 "Patient Summary Document"

* subject = Reference(Patient/PacienteColombiano)
* date = "2022-03-05T18:30:00+01:00"
* status = #final

/* otra forma de referencial al profesional, solo con la identificacion.
* author.identifier.type.coding.system = $cs_identper#CC
* author.identifier.value = "12345"
*/

* author = Reference(Practitioner/ProfesionalColombia)
* title = "Resumen de Paciente Colombia"

* custodian = Reference(Organization/OrganizacionRegionEjemplo)

// ------- seccion de condition, problemas activos.
* section[0].title = "Condiciones del Paciente"

* section[=].code = http://loinc.org#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">CONDICIONES</div>"
* section[=].entry = Reference(Condition/ConditionColombia)



// ------- seccion de medicamentos
* section[0].title = "Medicamentos"

* section[=].code = http://loinc.org#10160-0 "Hx of Medication use"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MEDICAMENTOS</div>"
* section[=].entry = Reference(MedicationStatement/MedicationStatementCo)


// ------- seccion de Alergias
* section[0].title = "Alergias"

* section[=].code = http://loinc.org#48765-2 "Allergies and adverse reactions Document."
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">ALERGIAS</div>"
* section[=].entry = Reference(AllergyIntolerance/AlergiaCo)


/* ------------------Ejemplo ARGENTINO -------------------- */

/*
Instance: Composition-IPS-FernandezPerezPablo
InstanceOf: Composition
Usage: #example
* meta.profile = "http://fhir.msal.gob.ar/core/StructureDefinition/Composition-ar-ips-core"
* identifier.system = "http://hospitaljoaquincorvalan.gob.ar/documentos"
* identifier.value = "3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = http://loinc.org#60591-5 "Patient Summary Document"
* subject = Reference(Patient/Paciente-Ar-FernandezPerezPablo)
* date = "2021-05-05T14:30:00+01:00"
* author.identifier.system = "http://refes.msal.gob.ar"
* author.identifier.value = "10661472173057"
* title = "Resumen IPS para Pablo Fernandez Perez - 05 MAY 2021"
* confidentiality = #N
* custodian.identifier.system = "http://federador.msal.gob.ar/uri"
* custodian.identifier.value = "32818"


* section[0].title = "Problemas activos"
* section[=].code = http://loinc.org#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Asma</div>"
* section[=].entry = Reference(Condition/Condition-Ar-FernandezPerezPablo-Asthma)

* section[+].title = "Medicamentos"
* section[=].code = http://loinc.org#10160-0 "Hx of Medication use"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Anastrozole/Cimicifuga</div>"
* section[=].entry[0] = Reference(MedicationStatement/MedicationStatement-Ar-FernandezPerezPablo-Anastrozole)
* section[=].entry[+] = Reference(MedicationStatement/MedicationStatement-Ar-FernandezPerezPablo-Cimicifuga-Extract)


* section[+].title = "Alergias"
* section[=].code = http://loinc.org#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergy to penicillin, high criticality, active</div>"
* section[=].entry = Reference(AllergyIntolerance/AllergyIntolerance-Ar-FernandezPerezPablo-Penicillin)


* section[+].title = "Vacunas"
* section[=].code = http://loinc.org#11369-6 "Hx of Immunization"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Lista de las vacunas recibidas</div>"
* section[=].entry = Reference(Immunization/Immunization-Ar-FernandezPerezPablo-Influenza)

*/