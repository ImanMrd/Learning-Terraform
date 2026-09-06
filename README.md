# â˜ï¸ AWS Infrastructure Provisioning with Terraform

[![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![Status](https://img.shields.io/badge/Status-Learning-success?style=for-the-badge)]()

Welcome to my foundational Infrastructure as Code (IaC) repository! This project automatically provisions secure, scalable networking and compute resources in Amazon Web Services (AWS) using Terraform.

## ðŸ—ï¸ Architecture & Resources

This project deploys a basic AWS environment, utilizing an S3 bucket for secure, remote state management.

`mermaid
graph TD
    subgraph AWS Cloud
        subgraph VPC [VPC 10.0.0.0/16]
            EC2[Amazon EC2 t2.micro]
        end
        S3[Amazon S3 Bucket<br/>iman-first-ever-s3-bucket]
    end
    TF[Terraform CLI] -->|Deploys| VPC
    TF -->|Stores State| S3
`

- **Amazon VPC:** A Virtual Private Cloud with a 10.0.0.0/16 CIDR block providing an isolated virtual network.
- **Amazon EC2 Instance:** A scalable 	2.micro virtual machine running Amazon Linux 2.
- **Amazon S3 Bucket:** A dedicated bucket (iman-first-ever-s3-bucket) configured to securely store the Terraform remote state.

## ðŸ—‚ï¸ Project Structure

The configuration is modularized according to HashiCorp best practices:

`	ext
ðŸ“¦ Learning-Terraform
 â”£ ðŸ“œ backend.tf     # Configures the S3 backend for remote state storage
 â”£ ðŸ“œ main.tf        # Main configuration defining VPC and EC2 resources
 â”£ ðŸ“œ providers.tf   # Specifies AWS provider (v6.42.0) and random provider
 â”£ ðŸ“œ variables.tf   # Defines input variables (Environment, region)
 â”— ðŸ“œ README.md      # Project documentation
`

## ðŸš€ Quick Start

### Prerequisites
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- AWS CLI installed and configured with appropriate IAM credentials

### Deployment Steps

1. **Clone the repository:**
   `ash
   git clone https://github.com/ImanMrd/Learning-Terraform.git
   cd Learning-Terraform
   `

2. **Initialize Terraform:**
   This downloads the required providers and initializes the remote S3 backend.
   `ash
   terraform init
   `

3. **Review the execution plan:**
   See exactly what resources will be created.
   `ash
   terraform plan
   `

4. **Apply the configuration:**
   Provision the infrastructure in your AWS account.
   `ash
   terraform apply
   `

5. **Clean up:**
   To avoid unexpected AWS charges, destroy the infrastructure when done.
   `ash
   terraform destroy
   `

## ðŸ” Security Considerations
- **Remote State:** State is stored in an S3 bucket, preventing sensitive information from being exposed in local state files or version control.
- **Resource Tagging:** Resources are automatically tagged with the Environment variable for easier tracking and cost allocation.
