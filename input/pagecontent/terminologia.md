
La interoperabilidad requiere de la estandarización de terminologías, diccionarios,  catálogos, subsets de valores y en general de la codificación asociada a la semántica de los contenidos que hacen parte de los procesos de intercambio.

El estándar HL7 FHIR tiene recursos y operaciones específicas para la implementación de servicios terminológicos, através de los cuales se pueden disponibilizar los contenidos, ofreciendo una forma estándar para la distribución, acceso y consulta terminológica.

Este apartado presenta la utilización de los recursos de servicios de terminología para el contexto de Catálogos definidos por el proyecto de Historia Clinica Electrónica del Ministerio de Salud Colombiano.


### CodeSystem

El recurso CodeSystem se utiliza para declarar la existencia y describir un sistema de
codificación (ontología, terminología o enumeración) y sus propiedades clave. Opcionalmente
se puede utilizar para definir una parte o todo su contenido. Algunas de las propiedades clave
son:

- Identificación de URL y versión. 
- Descripción, Copyright, fecha de publicación y otros metadatos.
- Algunas propiedades clave del sistema de codificación en sí, por ejemplo: si exhibe
permanencia del concepto, si define una gramática compositiva y si los códigos que
define distinguen entre mayúsculas y minúsculas.
- Qué filtros se pueden usar en conjuntos de valores que usan el sistema de codificación
en un elemento *ValueSet.compose*.
- Qué propiedades de concepto define el sistema de codificación.
  
Además, el recurso CodeSystem puede enumerar algunos o todos los conceptos del sistema
de codificación, junto con sus propiedades básicas (code, display, definition), designaciones
y propiedades adicionales. Los recursos también se pueden usar para definir suplementos,
que extienden un sistema de código existente con designaciones y propiedades adicionales.
Otra característica de este recurso es la flexibilidad de ser implementados de manera plana o
jerárquica mediante el uso de las propiedades y estructuración anidada de los conceptos.

### ValueSets

Una instancia de recurso de ValueSet, específica un conjunto de códigos extraídos de uno o
más sistemas de codificación, destinados a utilizarse en un contexto particular. Dentro del
recurso se establece el vínculo entre las definiciones de CodeSystem y su uso en elementos
codificados.

Los conjuntos de valores tienen dos aspectos para su definición:

- *compose*: desde donde se definen individualmente cuáles códigos están destinados a
ser parte del ValueSet ("intension"). En este caso las definiciones pueden ser explícitas
indicando uno a uno los conceptos o bien a través de reglas de filtros las que se evalúan
al momento de crear una expansión.

- *expansion*: corresponde la lista de códigos del ValueSet que se genera a través de
una operación de expansión siguiendo las definiciones realizadas en el item compose.

### ConceptMap

Este recurso permite definir un mapeo de un conjunto de conceptos definidos en un sistema de codificación (comúnmente conocido como el "sistema") a uno o más conceptos definidos en otros sistemas de codificación. En el contexto de mapeo, un sistema puede ser un sistema de codificación típico basado en un estándar reconocido o de terminología local, o en algunos casos puede ser un sistema de código "implícito" que no se basa en una terminología reconocida, pero aún representa un conjunto de "conceptos" que pueden ser mapeados de manera útil. Las asignaciones son unidireccionales: desde el sistema de origen hasta el destino. En muchos casos, las asignaciones inversas son válidas, pero no se puede suponer que sea así.




### Consultas generales a los recursos de terminología

  1. Obtener todos los sistemas de codificación almacenados en el servidor:
  ~~~
  {base servidor fhir}/CodeSystem?_summary=true
  ~~~

  2. Obtener la metadata de uno o más sistemas de codificación filtrando por el nombre:
  ~~~
  {base servidor fhir}/CodeSystem?_summary=true&title:contains=Procedimiento
  ~~~

  3. Obtener todos los subsets almacenados en el servidor
  ~~~ 
  {base servidor fhir}/ValueSet?_summary=true
  ~~~

  4. Obtener la metadata de uno o más subsets filtrando por el nombre
  ~~~
  {base servidor fhir}/ValueSet?_summary=true&title:contains=Neoplasias
  ~~~


----------------------------------------------------------------------------------------------------------------

###  Ejemplos de operaciones estándar de Servidor Terminología:

Las operaciones implementadas se basan en las especificaciones que HL7 FHIR sobre los recursos de terminología utilizados.

#### Operaciones Sobre CodeSystem:

 1. **$lookup** : Se utiliza para hacer una búsqueda de un código dentro de un sistema de codificación (CodeSystem) específico. 

El formato del request es: 
  ~~~ 
  {base servidor fhir}/CodeSystem/$lookup?system={url}&code={codigo}
  ~~~
  
El parámetro *system* identifica el tipo de codificación sobre la cual se hace la búsqueda.

<u>Ejemplos:</u>


  *a)* Búsqueda de un Código CUPS:

    {base servidor fhir}/CodeSystem/$lookup?system=https://www.minsalud.gov.co/CodeSystem/CUPS&code=061001
   

  *b)* Búsqueda de un Código CUMS:

    {base servidor fhir}/CodeSystem/$lookup?system=https://www.minsalud.gov.co/CodeSystem/CUMS&code=10124-1
   

  *c)* Búsqueda de un Código CIE 10:

    {base servidor fhir}/CodeSystem/$lookup?system=http://hl7.org/fhir/sid/icd-10&code=A970
   


2.
 **$subsumes**: Determina la relación jerárquica mediante comparación de dos conceptos dentro de un sistema de códigos. Se utiliza en recursos CodeSystem definidos con niveles jerárquicos.

<u>Ejemplos:</u>

  *a)* SubsumedBy (El concepto A incluye a concepto B en su jerarquía)
  
    {base servidor fhir}/CodeSystem/$subsumes?system=http://hl7.org/fhir/sid/icd-10&codeA=A00&codeB=A001
    


  *b)* Subsumes (El concepto B es parte jerárquica del concept A)

    {base servidor fhir}/CodeSystem/$subsumes?system=http://hl7.org/fhir/sid/icd-10&codeA=A001&codeB=A00*
    


  *c)* Not-subsumed (No existe relación entre los conceptos A y B)
 
    {base servidor fhir}/CodeSystem/$subsumes?system=http://hl7.org/fhir/sid/icd-10&codeA=A00&codeB=B00*
  


3- **$validate-code** : Valida que un valor codificado esté en el sistema de códigos. Si la operación no se llama a nivel de instancia, debe proporcionarse uno de los parámetros "url" o "codeSystem". La operación devuelve un resultado (verdadero / falso), un mensaje de error y la visualización recomendada para el código.
Al invocar esta operación, el cliente DEBERÁ proporcionar uno (y sólo uno) de los parámetros (code+system, coding o codeableConcept). Los demás parámetros (incluyendo la versión y la visualización) son opcionales.

Ejemplos:

a) Proporcionando sólo el código del concepto, este retorna el resultado de la validación si el término pertenece o no dentro de un valueset junto con una sugerencia de la descripción del término.

    {base servidor fhir}/ValueSet/$validate-code?url=https://www.minsalud.gov.co/ihc/fhir/ValueSet/CIE10VS&system=http://hl7.org/fhir/sid/icd-10&code=B011


b)  Proporcionando el código y la descripción del término, este retornará verdadero si la validación es correcta. En caso contrario, el servidor desplegará un mensaje junto con el nombre asociado correctamente a ese código.
~~~
{base servidor fhir}/ValueSet/$validate-code?url=https://www.minsalud.gov.co/ihc/fhir/ValueSet/CIE10VS&system=http://hl7.org/fhir/sid/icd-10&code=B011&display=Encefalitis debida a varicela
~~~


