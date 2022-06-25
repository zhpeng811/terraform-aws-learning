terraform {
  backend "s3" {
    bucket         = "ze-demo-terraform-state"
    key            = "stage/data-stores/mysql/terraform.tfstate"
    region         = "us-east-1"

    dynamodb_table = "ze-demo-terraform-state-locks"
    encrypt        = true
  }
}