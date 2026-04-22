terraform {
  backend "s3" {
    bucket         = "sangram-my-terraform-state-1"
    key            = "dev/my-aws-infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
