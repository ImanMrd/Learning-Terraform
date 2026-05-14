# 🚀 My First Terraform AWS Project

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Status](https://img.shields.io/badge/Status-Learning-success?style=for-the-badge)

Welcome to my very first Infrastructure as Code (IaC) repository! This project was built as part of my journey to become a Cloud Engineer. It uses Terraform to automatically provision foundational networking and compute resources in Amazon Web Services (AWS).

## 📖 Description

This repository contains Terraform configurations structured according to HashiCorp best practices (separating resources, variables, providers, and outputs). The code provisions a basic AWS environment, utilizing an S3 bucket for secure, remote state management.

### 🏗️ Architecture & Resources

This project automatically deploys the following AWS infrastructure:
- **Amazon S3 Bucket:** A dedicated bucket (`iman-first-ever-s3-bucket`) configured to store the Terraform remote state securely.
- **Amazon VPC:** A Virtual Private Cloud with a `10.0.0.0/16` CIDR block to provide an isolated virtual network.
- **Amazon EC2 Instance:** A scalable `t2.micro` virtual machine running Amazon Linux 2.

## 🗂️ Project Structure

The code is cleanly separated into the following files for readability and maintainability:

```text
📦 my-first-terraform-repo
 ┣ 📜 providers.tf   # Contains AWS provider and remote S3 backend configuration
 ┣ 📜 main.tf        # Contains the core infrastructure resources (VPC, EC2, S3)
 ┣ 📜 variables.tf   # Defines input variables (e.g., Environment, Region)
 ┣ 📜 outputs.tf     # Defines the console outputs (e.g., VPC_id, EC2_id)
 ┗ 📜 .gitignore     # Prevents sensitive local state files from being pushed to GitHub
```
## ⚙️ Prerequisites

Before you can run this code, ensure you have the following installed and configured:

*   **Terraform** (v1.0.0+)
*   **AWS CLI** installed and configured with your IAM credentials:
    ```bash
    aws configure

[!IMPORTANT]
The S3 bucket used for the backend state must be created manually in the AWS Console before running terraform init.

Follow these steps to deploy the infrastructure to your AWS account:

1. Initialize
Initialize the working directory, download provider plugins, and set up the remote backend.

Bash
terraform init
2. Validate
Check the configuration files for syntax errors or invalid arguments.

Bash
terraform validate
3. Plan
Review the execution plan to see exactly what resources Terraform will create.

Bash
terraform plan
4. Apply
Provision the infrastructure in your AWS account. (Type yes when prompted).

Bash
terraform apply
5. Destroy (Optional)
Clean up your environment and delete all resources to avoid unnecessary AWS charges.

Bash
terraform destroy

👤 Author
Iman Moradi Nezhad

Master's Student at the University of Genova, Italy

☁️ Passionate about Cloud Engineering, AWS, and Infrastructure as Code.