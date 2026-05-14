variable "Environment" {
  default = "dev"
  type    = string
}
variable "region" {
  default = "us-east-1"

}
output "VPC_id" {
  value = aws_vpc.sample_vpc.id
}

output "EC2_id" {
  value = aws_instance.example.id
}