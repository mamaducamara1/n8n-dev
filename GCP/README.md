# GCP Cloud Storage Bucket

This Terraform configuration provisions a private Google Cloud Storage bucket.

## Prerequisites
- Terraform installed
- Google Cloud SDK (gcloud) installed
- Authenticated with GCP using `gcloud auth application-default login`

## Deployment
1. Initialize Terraform:
   `terraform init`
2. Preview the changes:
   `terraform plan -var="project_id=YOUR_PROJECT_ID" -var="bucket_name=YOUR_UNIQUE_BUCKET_NAME"`
3. Apply the configuration:
   `terraform apply -var="project_id=YOUR_PROJECT_ID" -var="bucket_name=YOUR_UNIQUE_BUCKET_NAME"`

## Variables
- `project_id`: The ID of your Google Cloud project.
- `region`: The GCP region (defaults to us-central1).
- `bucket_name`: A globally unique name for the Cloud Storage bucket.
