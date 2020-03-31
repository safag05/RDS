# Pulls VPC,subnet,igw information e.g network info
data "terraform_remote_state" "mysql" {
  backend = "s3"
  config = {
    bucket = "terraform-project-backend-2020"
    key    = "tower/us-east-1/tools/virginia/new-best-tower-team1.tfstate" 
    region = "us-east-1"
  }
}


