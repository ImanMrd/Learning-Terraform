terraform {

  backend "s3" {
    bucket       = "iman-first-ever-s3-bucket"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = "iman-first-ever-s3-bucket"
  }
}