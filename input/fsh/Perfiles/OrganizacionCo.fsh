Profile:        OrganizacionCo
Parent:         Organization
Title:          "Organizacion Co"
Description:    "Organización de Salud"

* active ^short = "Estado de si es una Organización Validada o no (true|false)"
* active ^definition = "Indicador si una organización sigue vigente en su rol dentro del sistema de salud"
* active 1..

* identifier and identifier.system and identifier.value MS
* identifier 1..*

* identifier ^short = "Identificador de organizacion de salud"
* identifier ^definition = "Identificador de organizacion de salud"

* identifier.system ^short = "indicador del sistema de indentificación usado pora determinar el valor del identificador"
* identifier.system ^definition = "Se debe aun definir un ValueSet para estos casos"

* identifier.value ^short = "Código asignado al administrador del plan de beneficios en el SGSSS"
* identifier.system ^definition = "Se consideran como tales: todas las entidades responsables de la operación del aseguramiento: las entidades promotoras de salud del régimen contributivo y subsidiado, 
entidades adaptadas, las que administran los regímenes Especial y de Excepción y el fondo nacional de salud de la población privada de la libertad, las secretarías, Institutos, y unidades administrativas,  departamentales, distritales y locales de salud, Las compañías de seguros que emiten  pólizas de accidentes de tránsito, administradoras de planes voluntarios de Salud, las Administradoras de Riesgos Laborales – ARL, según catálogo que establezca el Ministerio de Salud y Protección Social.s"

* name MS
* name ^short = "Nombre asignado al administrador del plan de beneficios en el SGSSS" 
* name ^definition = "Nombre de la Organización"

* type MS
* type ^short = "Indica el tipo de la organización" 
* type ^definition = "Nombre de la Organización"

