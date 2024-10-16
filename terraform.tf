# Type_1
terraform {
  required_version = ">= 1.9.0"

#   backend "s3" {
#     bucket = "my-terraform-state"
#     key    = "terraform.tfstate"
#     region = "us-west-2"
#   }
}

# Type_2
# terraform {
#   required_version = ">= 1.0.0"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 3.0"
#     }
#     random = {
#       source  = "hashicorp/random"
#       version = "3.1.0"
#     }
#   }
# }
