# GitOps Infrastructure Management (MVP)

GitOps-driven Terraform workflow (MVP). Store Terraform IaC in git, run plan on PR, apply on merge.

## Contents
- terraform/: example Terraform module using local `null_resource` to simulate infra
- .github/workflows/terraform.yml: GitHub Actions workflow that runs fmt/validate/plan on PR and apply on merge

## Quick start (local simulation)
1. Inspect `terraform/main.tf` and `terraform/backend.tf`.
2. Run `terraform init` then `terraform plan` locally to see the simulated resources.

## Notes
- This repo uses a local backend to avoid cloud credentials in the MVP. Replace backend and sample resources with real AWS/GCP modules later.
