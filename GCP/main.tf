terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "default" {
  name          = var.bucket_name
  location      = var.region
  force_destroy = true

  public_access_prevention = "enforced"
}
