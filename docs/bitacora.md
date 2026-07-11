# Bitácora de Desarrollo
## Proyecto: AUY1105-EFT-ICC-Lucy

---

## Paso 1 - Creación del repositorio

**Fecha:** 08-07-2026

### Objetivo
Crear un nuevo repositorio para desarrollar la Evaluación Final Transversal de Infraestructura como Código II.

### Actividades realizadas

- Se creó el repositorio público `AUY1105-EFT-ICC-Lucy` en GitHub.
- Se inicializó el proyecto con un archivo README.
- Se clonó el repositorio al equipo local utilizando Git.

### Resultado

Se dispone de un repositorio limpio e independiente de los trabajos anteriores, que será utilizado para desarrollar la solución completa de la evaluación.

**Evidencia**
- 01-Repositorio-GitHub

---

## Paso 2 - Creación de la estructura del proyecto

### Objetivo

Organizar la estructura inicial del proyecto siguiendo buenas prácticas para facilitar el desarrollo y mantenimiento.

### Actividades realizadas

- Se crearon las carpetas principales:
  - modules
  - docs
  - evidencias
  - .github

- Se crearon los archivos principales:
  - main.tf
  - variables.tf
  - outputs.tf
  - versions.tf
  - terraform.tfvars.example
  - .gitignore

### Resultado

El proyecto quedó preparado para comenzar el desarrollo modular de la infraestructura.

**Evidencia**
- 02-Estructura-VSCode

---

## Paso 3 - Configuración inicial de Terraform

### Objetivo

Configurar Terraform para trabajar con AWS utilizando el proveedor oficial.

### Actividades realizadas

- Se definió la versión mínima de Terraform.
- Se configuró el proveedor AWS.
- Se creó la variable para la región.
- Se incorporaron etiquetas (Tags) por defecto para todos los recursos.

### Resultado

Terraform quedó preparado para iniciar el desarrollo de la infraestructura de forma estandarizada.

**Evidencia**
- 03-Configuracion-Inicial-Terraform

---

## Paso 4 - Inicio del módulo Network

### Objetivo

Comenzar el desarrollo del módulo encargado de la infraestructura de red.

### Actividades realizadas

- Se definieron las variables necesarias para el módulo:
  - CIDR de la VPC.
  - CIDR de la Subred Pública.
  - CIDR de la Subred Privada.
  - Zona de disponibilidad.

- Se creó el recurso inicial correspondiente a la VPC.

### Resultado

Se inició el módulo de red utilizando una estructura reutilizable basada en variables, siguiendo las buenas prácticas de Terraform.

**Evidencia**
- 04-Variables-Modulo-Network
- 05-Creacion-VPC

---

## Paso 5 - Desarrollo del módulo Network

### Objetivo

Implementar la infraestructura de red del proyecto mediante un módulo reutilizable de Terraform, siguiendo buenas prácticas de modularidad y documentación.

### Actividades realizadas

- Se creó la VPC utilizando un rango CIDR configurable.
- Se implementó una subred pública para alojar recursos con acceso a Internet.
- Se implementó una subred privada para futuros recursos internos.
- Se configuró un Internet Gateway para permitir la comunicación hacia Internet.
- Se creó una Route Table pública con la ruta por defecto hacia el Internet Gateway.
- Se asoció la Route Table a la subred pública.
- Se definieron los outputs necesarios para compartir información con otros módulos.
- Se documentó el módulo mediante un archivo README.

### Resultado

Se completó el desarrollo del módulo `network`, el cual permite desplegar una infraestructura de red reutilizable y organizada. Este módulo servirá como base para los módulos de cómputo y almacenamiento que se desarrollarán posteriormente.

### Evidencias

- 04-Variables-Modulo-Network
- 05-Creacion-VPC
- 07-Subredes-Publica-Privada
- 08-Internet-Gateway
- 09-Route-Table-Publica
- 10-Outputs-Modulo-Network
- 11-README-Modulo-Network

---

## Paso 6 - Integración del módulo Network

### Objetivo

Integrar el módulo de red al proyecto principal para permitir su utilización durante el despliegue de la infraestructura.

### Actividades realizadas

- Se incorporó el módulo `network` al archivo `main.tf`.
- Se configuraron los parámetros necesarios para el despliegue:
  - CIDR de la VPC.
  - CIDR de la subred pública.
  - CIDR de la subred privada.
  - Zona de disponibilidad.

### Resultado

El proyecto principal quedó preparado para utilizar el módulo `network` como componente reutilizable dentro de la solución de Infraestructura como Código.

### Evidencia

- 12-Conexion-Modulo-Network

---

## Paso 7 - Inicialización del proyecto Terraform

### Objetivo

Preparar el proyecto Terraform para comenzar el despliegue de la infraestructura.

### Actividades realizadas

- Se ejecutó el comando `terraform init`.
- Se descargó el proveedor oficial de AWS.
- Se inicializó el módulo `network`.
- Se generó el archivo `.terraform.lock.hcl`.

### Resultado

El proyecto quedó correctamente inicializado y preparado para ejecutar las validaciones y el despliegue de la infraestructura.

### Evidencia

- 13-Terraform-Init

---

## Paso 8 - Validación del código Terraform

### Objetivo

Verificar que la configuración de Terraform no presentara errores de sintaxis o estructura antes de continuar con el desarrollo de la infraestructura.

### Actividades realizadas

- Se ejecutó el comando `terraform validate`.
- Se comprobó que la configuración del proyecto era válida.
- Se verificó que el módulo `network` estuviera correctamente integrado al proyecto principal.

### Resultado

Terraform validó exitosamente toda la configuración del proyecto, confirmando que no existen errores de sintaxis ni inconsistencias en la estructura del código.

### Evidencia

- 14-Terraform-Validate

---

## Paso 9 - Desarrollo e integración del módulo Compute

### Objetivo

Implementar un módulo reutilizable para desplegar una instancia EC2 y su Security Group, integrándolo con la infraestructura creada por el módulo Network.

### Actividades realizadas

- Se definieron las variables requeridas por el módulo Compute.
- Se creó un Security Group con reglas de entrada para SSH y HTTP.
- Se configuró una regla de salida para permitir la comunicación desde la instancia.
- Se creó una instancia EC2 dentro de la subred pública.
- Se asociaron la EC2 y el Security Group.
- Se definieron outputs para obtener:
  - ID de la instancia.
  - IP pública.
  - IP privada.
  - ID del Security Group.
- Se documentó el módulo mediante un archivo README.
- Se integró el módulo Compute al proyecto principal.
- Se conectaron los outputs del módulo Network con las variables del módulo Compute.

### Resultado

El módulo Compute quedó desarrollado, documentado e integrado correctamente. La instancia EC2 utilizará la VPC y la subred pública creadas por el módulo Network.

### Evidencias

- 15-Variables-Modulo-Compute
- 16-Security-Group-Compute
- 17-Creacion-EC2
- 18-Outputs-Modulo-Compute
- 19-README-Modulo-Compute
- 20-Integracion-Modulo-Compute
- 23-ReInit-y-Validate-Compute

---

## Paso 10 - Reinicialización y validación del proyecto

### Objetivo

Actualizar la inicialización de Terraform después de incorporar el módulo Compute y validar la configuración completa.

### Actividades realizadas

- Se ejecutó nuevamente `terraform init`.
- Terraform detectó e inicializó el módulo Compute.
- Se reutilizó la versión bloqueada del proveedor AWS.
- Se ejecutó `terraform validate`.

### Resultado

Terraform confirmó que la configuración de los módulos Network y Compute es válida y no presenta errores de sintaxis ni referencias incorrectas.

### Evidencia

- 23-ReInit-y-Validate-Compute

---

## Paso 11 - Desarrollo e integración del módulo Storage

### Objetivo

Implementar un módulo reutilizable para crear un bucket S3 seguro, con versionado, bloqueo de acceso público y cifrado.

### Actividades realizadas

- Se definieron las variables del módulo Storage.
- Se creó el bucket S3.
- Se configuró el bloqueo de acceso público.
- Se habilitó el versionado mediante una variable configurable.
- Se incorporó cifrado del lado del servidor con AES-256.
- Se definieron outputs para obtener:
  - Nombre del bucket.
  - ARN del bucket.
- Se integró el módulo Storage al proyecto principal.
- Se ejecutaron nuevamente los comandos de inicialización y validación.

### Resultado

El módulo Storage quedó desarrollado e integrado correctamente junto con los módulos Network y Compute.

### Evidencias

- 24-Variables-Modulo-Storage
- 25-Creacion-Bucket-S3
- 26-Versionado-Bucket
- 27-Cifrado-Bucket-S3
- 28-Outputs-Modulo-Storage
- 29-Integracion-Modulo-Storage
- 31-Correccion-ReInit-Validate-Storage

---

## Paso 12 - Diagnóstico y corrección de recurso duplicado

### Objetivo

Identificar y corregir un error detectado durante la inicialización del módulo Storage.

### Actividades realizadas

- Terraform detectó dos recursos de cifrado con el mismo tipo y nombre interno.
- Se revisó el archivo `modules/storage/main.tf`.
- Se eliminó el bloque duplicado.
- Se ejecutaron nuevamente:
  - `terraform init`
  - `terraform fmt -recursive`
  - `terraform validate`

### Resultado

El error fue corregido exitosamente y Terraform confirmó que la configuración completa es válida.

### Evidencias

- 30-Error-Recurso-Duplicado-Storage
- 31-Correccion-ReInit-Validate-Storage

- Se documentó el módulo mediante un archivo README que incluye recursos, variables, outputs, ejemplo de uso y controles de seguridad.

---

## Paso 13 - Configuración de outputs principales

### Objetivo

Centralizar los resultados más importantes generados por los módulos Network, Compute y Storage.

### Actividades realizadas

- Se configuraron outputs para mostrar:
  - ID de la VPC.
  - IDs de las subredes pública y privada.
  - ID, IP pública e IP privada de la instancia EC2.
  - ID del Security Group.
  - Nombre y ARN del bucket S3.
- Se ejecutaron `terraform fmt -recursive` y `terraform validate`.

### Resultado

El proyecto principal quedó preparado para mostrar la información relevante de toda la infraestructura después del despliegue.

### Evidencias

- 33-Outputs-Proyecto-Principal
- 34-Validate-Outputs-Principales

---

## Paso 14 - Parametrización del proyecto principal

### Objetivo

Eliminar valores fijos del archivo principal y centralizar la configuración mediante variables reutilizables.

### Actividades realizadas

- Se ampliaron las variables del proyecto principal.
- Se reemplazaron los valores hardcodeados del `main.tf` por referencias `var`.
- Se creó un archivo `terraform.tfvars.example` con los valores de configuración requeridos.
- Se ejecutaron `terraform fmt -recursive` y `terraform validate`.
- Se configuró el archivo .gitignore para excluir estados de Terraform, archivos sensibles y configuraciones locales.

### Resultado

El proyecto quedó más flexible, reutilizable y fácil de adaptar a distintos entornos sin modificar la lógica de los módulos.

### Evidencias

- 35-Variables-Proyecto-Principal
- 36-Main-Refactorizado-Variables
- 37-Terraform-Tfvars-Example-Completo
- 38-GitIgnore

---

## Paso 16 - Endurecimiento de seguridad de la instancia EC2

### Objetivo

Corregir vulnerabilidades detectadas automáticamente por Checkov en la configuración de la instancia EC2.

### Actividades realizadas

- Se habilitó el monitoreo detallado de la instancia EC2.
- Se configuró el uso obligatorio de IMDSv2.
- Se habilitó el cifrado del volumen raíz EBS.
- Se ejecutaron `terraform fmt -recursive` y `terraform validate`.

### Resultado

La configuración de la instancia EC2 fue reforzada mediante controles de monitoreo, protección del servicio de metadatos y cifrado del almacenamiento.

### Evidencias

- 47-Endurecimiento-EC2
- 48-Validate-Endurecimiento-EC2