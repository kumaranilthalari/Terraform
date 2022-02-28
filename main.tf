terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  access_key = "ENTER ACCESS KEY"
  secret_key = "ENTER SECRET KEY"
  region     = "us-west-2"
}

resource "aws_instance" "ex" {
  ami           = "ami-0ebdd976"
  instance_type = "t2.micro"
  tags = {
    Name = "HELLOW_WORLD"
  }
}

