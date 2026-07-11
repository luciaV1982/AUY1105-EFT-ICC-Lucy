# Módulo Storage

## Descripción

Este módulo crea un bucket Amazon S3 seguro para almacenar archivos y respaldos del proyecto.

## Recursos creados

- Bucket S3.
- Bloqueo de acceso público.
- Versionado del bucket.
- Cifrado del lado del servidor mediante AES-256.

## Variables

| Variable | Descripción | Tipo | Valor predeterminado |
|----------|-------------|------|----------------------|
| `bucket_name` | Nombre único del bucket S3. | `string` | Sin valor predeterminado |
| `enable_versioning` | Habilita o suspende el versionado del bucket. | `bool` | `true` |

## Outputs

| Output | Descripción |
|--------|-------------|
| `bucket_name` | Nombre del bucket S3. |
| `bucket_arn` | ARN del bucket S3. |

## Ejemplo de uso

```hcl
module "storage" {
  source = "./modules/storage"

  bucket_name       = "auy1105-eft-lucia-villalobos-2026"
  enable_versioning = true
}
```

## Seguridad implementada

- El acceso público al bucket se encuentra bloqueado.
- Los objetos almacenados se cifran automáticamente mediante AES-256 (Server-Side Encryption).
- El versionado permite recuperar versiones anteriores de los archivos almacenados.