
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
