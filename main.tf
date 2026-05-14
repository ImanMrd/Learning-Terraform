# create a VPC
resource "aws_vpc" "sample_vpc" {
  cidr_block = "10.0.0.0/16"
  region     = var.region
  tags = {
    Environment = var.Environment
    Name        = "${var.Environment}-VPC"
  }
}
# Create an EC2 Instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" #Amazon linux 2 AMI
  instance_type = "t2.micro"
  region        = var.region
  tags = {
    Environment = var.Environment
    Name        = "${var.Environment}-EC2-Instance"
  }
}

# create S3 bucket
resource "aws_s3_bucket" "first_bucket" {
  bucket = "iman-first-ever-s3-bucket"

  tags = {
    Name        = "${var.Environment} -S3-bucket"
    Environment = var.Environment
  }
}