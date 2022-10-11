#provider "aws" {
#  region = "us-west-1"
#}

module "test" {
    source  = "./terraform-test-vlad/terraform-test-vlad1/terraform-test-vlad2"
}
    
