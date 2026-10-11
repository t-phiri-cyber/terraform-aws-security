
provider "aws" {
  region = "eu-west-2"
}

module "secure_storage" {
  source      = "./Modules/Storage"
  bucket_name = var.bucket_name
}
