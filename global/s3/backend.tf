terraform {
  backend "s3" {
    bucket         = "ze-demo-terraform-state"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"

    dynamodb_table = "ze-demo-terraform-state-locks"
    encrypt        = true
  }
}