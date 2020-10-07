terraform {
    required_providers {
        aws = {
            source    = "hashicorp/aws"
            version   = "~> 3.0"
        }
    }
}

# Configure the AWS Provider
provider "aws" {
    region    = var.aws_region
    profile   = "terraform"
}

# For this guide we'll just utilise the default VPC
data "aws_vpc" "default" {
    default = true
}