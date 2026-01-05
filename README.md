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
- NAT Gateways (one per AZ) for private subnet internet egress

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
- **Stage 4:** Implemented NAT gateways to enable secure outbound internet access from private subnets

---

## Challenges and Lessons Learned
- Refactoring from a single-subnet design to a multi-AZ layout required careful handling of Terraform state to avoid CIDR conflicts.
- Encountered subnet CIDR overlap errors when replacing existing resources, reinforcing the importance of understanding Terraform state versus actual AWS resources.
- Learned when it is appropriate to fully destroy and recreate infrastructure during early-stage refactors to maintain state consistency.
- Gained confidence interpreting Terraform plans and validating infrastructure changes before applying them.
- Encountered duplicate resource definition errors when refactoring NAT Gateway resources, reinforcing the importance of maintaining unique resource names within Terraform modules.
- Gained hands-on experience resolving Terraform state and configuration drift during iterative infrastructure refactors.
- Improved understanding of how Terraform builds a dependency graph independent of resource declaration order in code.

---
