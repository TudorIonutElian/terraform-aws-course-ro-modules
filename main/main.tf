terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  shared_config_files = ["~/.aws/config"]
  shared_credentials_files = [ "~/.aws/credentials" ]
  profile = "default"
}

module "module_vpc" {
  source = "../vpc"
  numar_de_instance_vpc = 4
}


module "module_ec2" {
  source = "../ec2"
}

