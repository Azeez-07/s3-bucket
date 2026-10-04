# AWS S3 Bucket with Terraform

## 📌 Project Overview

This project uses **Terraform** to provision an AWS S3 bucket that is designed to be used for storing Terraform state remotely.

The S3 bucket is configured with:

- S3 bucket creation using Terraform
- Versioning enabled
- Public access protection
- Private bucket configuration
- Terraform-managed infrastructure

The bucket is initially created as independent infrastructure and is intended to be used later as the **remote backend for Terraform state management**.

---

## 🏗️ Architecture

```text
                    Terraform
                        |
                        |
                        v
              +-------------------+
              |    AWS S3 Bucket   |
              |                   |
              |  Private Bucket   |
              |  Versioning: ON   |
              |  Public Access    |
              |  Blocked          |
              +---------+---------+
                        |
                        |
                        v
              terraform.tfstate
