provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "var.vpc_cidr"

  private_subnets = ["var.private_subnets"]
  public_subnets  = ["var.public_subnets"]

  tags = {
    Environment = "var.environment"
  }
}