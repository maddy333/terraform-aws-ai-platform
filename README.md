# terraform-aws-ai-platform

## Project Overview

This repository contains **production-grade Terraform Infrastructure as Code (IaC)** for deploying a scalable AI platform on AWS.

The goal is to provide reusable, modular infrastructure capable of running:

* GenAI backend services
* Worker pipelines
* Vector databases
* Redis caching
* Kubernetes workloads
* Observability and monitoring

---

## Repository Structure

```
terraform-aws-ai-platform/
│
├── modules/
│   ├── vpc/
│   ├── eks/
│   ├── rds/
│   ├── redis/
│   ├── s3/
│   ├── alb/
│   └── monitoring/
│
├── environments/
│   ├── dev/
│   ├── staging/
│   └── prod/
│
├── global/
│   └── backend.tf
│
└── README.md
```

---

## Terraform Standards

### Remote State (Mandatory)

Remote state must use:

* S3 backend
* DynamoDB locking

---

## Deployment Workflow

### Initialize

```
terraform init
```

### Plan

```
terraform plan -var-file=terraform.tfvars
```

### Apply

```
terraform apply -var-file=terraform.tfvars
```

---

## Owner

Maintained by: Madhav Mohan
Project: terraform-aws-ai-platform
