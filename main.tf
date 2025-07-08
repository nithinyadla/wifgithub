# Configure the GCP provider
provider "google" {
  project = var.project_id
  region  = var.region
}

# Create a GCS bucket
resource "google_storage_bucket" "example_bucket" {
  name          = var.bucket_name
  location      = var.bucket_location
  storage_class = var.storage_class

  uniform_bucket_level_access = var.enable_uniform_access
  force_destroy               = var.force_destroy

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.lifecycle_age
    }
  }

  versioning {
    enabled = var.enable_versioning
  }
}
