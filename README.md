# infra-barb

## Required Artifacts
The following are required to run the infrastructure:
- vars.tf: used to store private variables.
- backend_s3.tfvars: contains S3 backend config.

## Init project
Run the following command to initialize project:
```terraform init -backend-config backend_s3.tfvars```

