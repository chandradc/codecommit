
provider "aws"{
region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket  = "terraform-state-1040"
    key     = "build/terraform.tfstate"
    region  = "us-east-1"
    profile = "dc-chandra"
  }
}


resource "aws_vpc" "myvpc"{

cidr_block = "10.0.0.0/16"
tags={
 Name = "MyCustomVPC"
 project = "P001"
}

}
