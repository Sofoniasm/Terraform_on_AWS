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
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-01d3c710cff14f85c"
  instance_type = "t2.micro"
  subnet_id     = "subnet-056c079b028fdaf8b"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
