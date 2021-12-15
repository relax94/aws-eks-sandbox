terraform {

  required_providers {
    aws = {
      source  = "aws"
      version = "3.63.0"
    }
    kubernetes = {
      source  = "kubernetes"
      version = "2.6.1"
    }
  }
}

data "aws_availability_zones" "available" {}

data "aws_caller_identity" "current" {}
