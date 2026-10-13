
# AWS Secure Storage — Terraform

## Overview
A cloud infrastructure project using Terraform to define an Amazon S3 bucket with security-focused configuration.

## Security Controls
- S3 Block Public Access enabled.
- Server-side encryption using AES-256.
- S3 bucket versioning enabled.
- Infrastructure defined as code using a reusable Terraform module.

## Technologies
- Terraform
- AWS S3
- AWS Provider
- HCL
- Git and GitHub

## Project Structure
```text
Terraform-aws-security/
├── main.tf
├── variables.tf
├── outputs.tf
├── versions.tf
└── Modules/
    └── Storage/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

## Validation
Configuration formatted and validated locally with Terraform.

## Cost and Deployment
This repository defines the infrastructure configuration. AWS resources should only be created after reviewing the AWS Free Tier limits, potential charges, and deployment requirements.

## Learning Objectives
- Infrastructure as Code (IaC)
- Terraform modules and variables
- S3 security configuration
- Cloud security fundamentals


## Overview

This project demonstrates Infrastructure as Code (IaC) by provisioning an Amazon S3 storage resource using Terraform. It focuses on implementing foundational AWS storage security controls through a reusable Terraform module.

## Security Controls

- **S3 Block Public Access:** Blocks public access to the storage bucket.
- **Server-Side Encryption:** Configures AES-256 encryption for stored objects.
- **Bucket Versioning:** Enables versioning to preserve and recover previous object versions.
- **Modular Architecture:** Separates storage resource configuration into a reusable Terraform module.

## Technologies

- Terraform
- Amazon Web Services (AWS) — S3
- HashiCorp Configuration Language (HCL)
- Git and GitHub

## Project Structure

```text
terraform-aws-security/
├── main.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── .gitignore
└── Modules/
    └── Storage/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

## Prerequisites

- Terraform CLI installed
- An AWS account
- AWS credentials configured securely
- Git installed

## Security Controls

- **S3 public access blocking:** Blocks public ACLs and public bucket policies.
- **Server-side encryption:** Configures AES-256 encryption for stored objects.
- **Bucket versioning:** Enables recovery of previous object versions.
- **HTTPS-only access:** Denies S3 requests made over insecure transport.

## Validation

Run these commands from the project root directory:

```bash
terraform init
terraform fmt -recursive
terraform validate
```

- `terraform init` initialises Terraform and downloads the required providers.
- `terraform fmt -recursive` formats Terraform files, including those in subdirectories.
- `terraform validate` checks the configuration for syntax and internal consistency.

## Deployment

Before deploying, review the resource configuration, confirm the AWS region and bucket name, and verify the AWS credentials and permissions.

To preview infrastructure changes, run:

```bash
terraform plan
```

Only deploy resources when you understand the proposed changes and any associated AWS costs. This project does not claim that infrastructure has been deployed to AWS.



## Disclaimer

This is a learning and portfolio project. The security controls described above should be verified against the Terraform configuration before deployment. Additional controls may be required for production environments, including least-privilege IAM policies, logging, monitoring and appropriate data protection measures.
