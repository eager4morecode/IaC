#Define the provider
provider "aws" {
  region                  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket                  = "backendtfstate"
    key                     = "tfstate/vpn.tfstate"
    region                  = "us-east-1"
  }
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  
  name                         = var.name
  cidr                         = var.vpc_cidr
  azs                          = split(",", var.azs)
  public_subnets               = ["172.152.1.0/24", "172.152.2.0/24", "172.152.3.0/24"]
  private_subnets              = ["172.152.5.0/24", "172.152.6.0/24", "172.152.7.0/24"]
  create_database_subnet_group = true
  enable_dns_hostnames         = true
  enable_dns_support           = true
  enable_nat_gateway           = true
}
