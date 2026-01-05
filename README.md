# Production-Grade AWS VPC (Terraform)

## Overview
This project provisions a foundational AWS VPC using Terraform, including networking components required for public connectivity.

## Architecture
- VPC
- Public subnet
- Internet Gateway
- Route table and association

## Technologies Used
- AWS
- Terraform
- Linux (WSL)
- Bash

## What I Learned
- Terraform project structure (main.tf, variables.tf, outputs.tf)
- Using variables and outputs
- Resource dependencies in Terraform
- Terraform workflow: init, plan, apply, destroy

## Challenges
- Understanding how Terraform loads multiple .tf files
- Navigating WSL vs Windows filesystem
- Wiring VS Code with WSL
- Navigating the Linux filesystem in WSL

## Next Improvements
- Add multiple subnets
- Parameterise CIDRs and availability zones
- Add NAT Gateway and private subnets
- Move state to S3 backend

## Challenges and Lessons Learned
- Refactoring from a single-subnet design to a multi-AZ layout required careful state management to avoid CIDR conflicts.
- Encountered subnet CIDR overlap errors when replacing existing resources, reinforcing the importance of understanding Terraform state vs actual AWS resources.
- Learned when it is appropriate to perform a full infrastructure teardown (`terraform destroy`) during early-stage refactors to ensure state consistency.
