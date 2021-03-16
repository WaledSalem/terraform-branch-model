module "vpc" {
  source      = "./vpc"

  environment = var.environment
  region      = var.region
}
module "ec2" {
  source      = "./ec2"

  environment       = var.environment
  region            = var.region
  ami_id            = var.ami_id
  public_subnet_id  = module.subnets.public_subnet_id
  private_subnet_id = module.subnets.private_subnet_id
}
module "subnets" {
  source      = "./subnets"

  environment = var.environment
  region      = var.region
  vpc_id      = module.vpc.vpc_id
}