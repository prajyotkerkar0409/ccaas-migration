# ccaas-migration
Testing locally ccaas migration

## GitHub Actions Terraform Pipeline
This repository uses a parent GitHub Actions workflow at `.github/workflows/terraform-pipeline.yml`.
The parent workflow orchestrates five reusable Terraform component workflows:
- `terraform-supporting-infra.yml`
- `terraform-instance.yml`
- `terraform-admin-objects.yml`
- `terraform-lambda-functions.yml`
- `terraform-contact-flows.yml`

### Triggering
The parent workflow runs on `push` and `pull_request` to `main`, and also supports manual dispatch.
When manually triggered, you can pass:
- `environment` — deployment environment name (default: `dev`)

### Required GitHub secrets
The reusable workflows rely on these repository secrets:
- `AWS_REGION`
- `AWS_OIDC_ROLE_ARN`

### Notes
- Each component workflow also supports manual execution via `workflow_dispatch`.
- The parent workflow passes the `environment` input to every child workflow.
- If the secrets are not set in the repository, the workflow will fail during AWS credential setup.
