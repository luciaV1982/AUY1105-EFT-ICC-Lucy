output "vpc_id" {
  description = "ID de la VPC creada"
  value       = module.network.vpc_id
}

output "public_subnet_id" {
  description = "ID de la subred pública"
  value       = module.network.public_subnet_id
}

output "private_subnet_id" {
  description = "ID de la subred privada"
  value       = module.network.private_subnet_id
}

output "ec2_instance_id" {
  description = "ID de la instancia EC2"
  value       = module.compute.instance_id
}

output "ec2_public_ip" {
  description = "Dirección IP pública de la instancia EC2"
  value       = module.compute.public_ip
}

output "ec2_private_ip" {
  description = "Dirección IP privada de la instancia EC2"
  value       = module.compute.private_ip
}

output "security_group_id" {
  description = "ID del Security Group de la instancia EC2"
  value       = module.compute.security_group_id
}

output "s3_bucket_name" {
  description = "Nombre del bucket S3"
  value       = module.storage.bucket_name
}

output "s3_bucket_arn" {
  description = "ARN del bucket S3"
  value       = module.storage.bucket_arn
}