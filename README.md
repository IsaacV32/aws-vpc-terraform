# Production-Grade AWS VPC (Terraform)

## Overview
This project provisions a foundational, production-style AWS VPC using Terraform.  
It implements a **multi-AZ network design** with clear separation between public and private subnet tiers, following common real-world AWS networking patterns.

The project is being built iteratively to demonstrate infrastructure evolution, not just a final static configuration.

---

## Architecture
Current architecture includes:

- VPC with DNS support enabled
- 2 public subnets across separate Availability Zones
- 2 private subnets across separate Availability Zones
- Internet Gateway for public subnet connectivity
- Public route table with internet routing
- Private route table for internal-only networking (no internet egress yet)
- Consistent resource tagging via Terraform locals

> Private subnets currently have no outbound internet access.  
> NAT egress will be introduced in a later stage.

---

## Technologies Used
- AWS (VPC, Subnets, Route Tables, Internet Gateway)
- Terraform
- Linux (WSL)
- Bash
- Git & GitHub

---

## Terraform Design Highlights
- Parameterised CIDR blocks and Availability Zones
- Multi-AZ subnet creation using Terraform `count`
- Centralised tagging using `locals`
- Clean separation of public and private routing
- Incremental, stage-based infrastructure evolution

---

## Project Evolution
- **Stage 1:** Single-subnet VPC refactored to use variables and consistent tagging
- **Stage 2:** Expanded to multi-AZ public subnets for high availability
- **Stage 3:** Added multi-AZ private subnets with isolated routing

Future stages will introduce NAT gateways, private subnet egress, and additional production patterns.

---

## Challenges and Lessons Learned
- Refactoring from a single-subnet design to a multi-AZ layout required careful handling of Terraform state to avoid CIDR conflicts.
- Encountered subnet CIDR overlap errors when replacing existing resources, reinforcing the importance of understanding Terraform state versus actual AWS resources.
- Learned when it is appropriate to fully destroy and recreate infrastructure during early-stage refactors to maintain state consistency.
- Gained confidence interpreting Terraform plans and validating infrastructure changes before applying them.

---

## Next Improvements
- Add NAT Gateways for private subnet internet egress
- Introduce VPC endpoints (e.g. S3 gateway endpoint)
- Remote Terraform state using S3 and DynamoDB locking
- Modularise networking components
