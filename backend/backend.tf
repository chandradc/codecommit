# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket  = "terraform-state-1040" 
    key     = "terraform-state-1040/tfstate/terraform.tfstate"
    region  = "us-east-1"
    profile = "dc-chandra"
  }
}
