terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0a89fa9a6d8c7ad98"
  instance_type = "t3.micro"
  key_name      = "jb-2024"
  security_groups = ["2024_internship_krakow_jb"]

  tags = {
    Name = "terraform-basic-instance"
    Owner = "jbizon"
    Project = "2024_internship_krakow"
    MyNewTag = "terrafrom-change"
    CustomTag = var.custom_tag
  }
}

