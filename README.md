# Terraform Modules Demo

## Overview

This project demonstrates how to build reusable AWS infrastructure using Terraform Modules.

Instead of defining all resources in a single Terraform file, the infrastructure is divided into independent modules that can be reused across multiple environments and projects.

The project provisions:

* VPC
* Public Subnet
* Security Group
* EC2 Instance

using separate Terraform modules.

---

## Project Structure

```text
terraform-modules-demo

├── main.tf
├── variables.tf
├── outputs.tf

└── modules

    ├── vpc
    ├── subnet
    ├── security_group
    └── ec2
```

---

## Modules Used

### VPC Module

Responsible for creating:

* AWS VPC
* VPC CIDR Configuration

Output:

* VPC ID
* VPC CIDR

---

### Subnet Module

Responsible for creating:

* Public Subnet

Input:

* VPC ID (from VPC Module)

Output:

* Subnet ID

---

### Security Group Module

Responsible for creating:

* Security Group
* SSH Access Rule (Port 22)
* Outbound Internet Access

Input:

* VPC ID (from VPC Module)

Output:

* Security Group ID

---

### EC2 Module

Responsible for creating:

* EC2 Instance

Inputs:

* Subnet ID (from Subnet Module)
* Security Group ID (from Security Group Module)

Outputs:

* Instance ID
* Public IP Address

---

## Module Communication

Terraform modules communicate using outputs and variables.

Example:

```text
VPC Module
     ↓
Outputs VPC ID
     ↓
Subnet Module
```

```text
VPC Module
     ↓
Outputs VPC ID
     ↓
Security Group Module
```

```text
Subnet Module
     ↓
Outputs Subnet ID
     ↓
EC2 Module
```

```text
Security Group Module
     ↓
Outputs Security Group ID
     ↓
EC2 Module
```

This creates automatic dependencies between modules.

---

## Final Architecture

```text
VPC Module
     ↓
Subnet Module
     ↓
EC2 Module

VPC Module
     ↓
Security Group Module
     ↓
EC2 Module
```

---

## Advantages of Terraform Modules

### Reusability

The same module can be used multiple times across projects and environments.

Example:

```text
Dev Environment
QA Environment
Production Environment
```

can all use the same module.

---

### Maintainability

Infrastructure is organized into smaller logical components instead of one large file.

---

### Scalability

New environments can be created by reusing existing modules without duplicating code.

---

### Consistency

All environments use the same infrastructure standards and configurations.

---

### Easier Collaboration

Teams can work on different modules independently.

---

## Terraform Concepts Demonstrated

* Root Modules
* Child Modules
* Input Variables
* Output Values
* Module Reusability
* Module Dependencies
* Infrastructure as Code (IaC)

---

## Learning Outcomes


* How Terraform Modules improve code reusability
* How variables are passed into modules
* How outputs are returned from modules
* How modules communicate with each other
* How Terraform automatically manages dependencies between modules
* How to organize infrastructure into reusable components

---

## Cleanup

To destroy all resources:

```bash
terraform destroy
```
