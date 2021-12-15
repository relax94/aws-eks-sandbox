terraform {

  required_providers {
    aws = {
      source  = "aws"
      version = "3.53.0"
    }
    kubernetes = {
      source  = "kubernetes"
      version = "2.4.1"
    }
    helm = {
      source  = "helm"
      version = "2.3.0"
    }
  }
}

data "terraform_remote_state" "layer1-aws" {
  backend = "s3"
  config = {
    bucket  = var.remote_state_bucket
    key     = "${var.remote_state_key}/terraform.tfstate"
    region  = "us-east-1"
    encrypt = "true"
  }
  workspace = terraform.workspace
}

data "aws_caller_identity" "current" {}
