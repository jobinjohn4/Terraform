terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.69.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

data "aws_ami" "name" {
  most_recent = true
  owners      = ["amazon"]
}
output "aws_ami" {
  value = data.aws_ami.name.id
}

data "aws_security_group" "name" {
  tags = {
    my-sec-group = "http"
  }
}

output "sec_group" {
  value = data.aws_security_group.name.id
}

data "aws_vpc" "name" {
  tags = {
    name = "vpc"
  }
}

output "vpc_id" {
  value = data.aws_vpc.name.id
}

data "aws_availability_zones" "name" {
  state = "available"
}

output "availanlity_zone" {
  value = data.aws_availability_zones.name
}

data "aws_caller_identity" "name" {

}

output "acount_details" {
  value = data.aws_caller_identity.name
}

data "aws_region" "name" {

}

output "region" {
  value = data.aws_region.name
}

data "aws_subnet" "name" {
  tags = {
    Name = "Private-Subnet"
  }
}

output "private_subnet" {
  value = data.aws_subnet.name.id
}

resource "aws_instance" "demo2" {
  ami             = "ami-085f9c64a9b75eed5"
  instance_type   = "t2.micro"
  subnet_id       = data.aws_subnet.name.id
  security_groups = [data.aws_security_group.name.id]
  tags = {
    Name = "New VM"
  }
}