terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = var.region
}

# create vpc

module "vpc" {
    source = "../modules/vpc"
    region = var.region
    project_name = var.project_name
    vpc_cidr = var.vpc_cidr
    public_subnet_az1_cidr = var.public_subnet_az1_cidr 
    public_subnet_az2_cidr = var.public_subnet_az2_cidr
    ami = var.ami
    type = var.type
    key_pair = var.key_pair
}