variable "environment" {
}
variable "region" {
}
variable "access_key" {
}
variable "secret_key" {
}
variable "ami_id" {
}

#Ideally you wouldn't provide your keys in terraform, running 'aws configure' or setting environment variables is a better and more secure alternative
provider "aws" {
  region     = var.region
  version    = "~> 2.7"
  access_key = var.access_key
  secret_key = var.secret_key
}
module "infrastructure" {
  source      = "../../modules/infrastructure"
  environment = var.environment
  region      = var.region
  ami_id      = var.ami_id
}
