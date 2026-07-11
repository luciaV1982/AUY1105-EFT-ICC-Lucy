provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "AUY1105-EFT"
      Environment = "Development"
      Owner       = "Lucia Villalobos"
      ManagedBy   = "Terraform"
    }
  }
}

module "network" {
  source = "./modules/network"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}

module "compute" {
  source = "./modules/compute"

  vpc_id    = module.network.vpc_id
  subnet_id = module.network.public_subnet_id

  ami_id           = var.ami_id
  instance_type    = var.instance_type
  key_name         = var.key_name
  allowed_ssh_cidr = var.allowed_ssh_cidr
}

module "storage" {
  source = "./modules/storage"

  bucket_name       = var.bucket_name
  enable_versioning = var.enable_versioning
}