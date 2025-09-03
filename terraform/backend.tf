# Local backend for MVP (use S3/Remote backend in production)
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}
