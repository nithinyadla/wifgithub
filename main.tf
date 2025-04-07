# Configure the GCP provider
provider "google" {
  project = "bilvantisaimlproject"   # Replace with your GCP project ID
  region  = "us-central1"       # Default region
}

# Create a GCS bucket
resource "google_storage_bucket" "example_bucket" {
  name          = "nani234nithiny"  # Must be globally unique
  location      = "US"                       # Multi-region or region
  storage_class = "STANDARD"                 # Storage class (STANDARD, NEARLINE, etc.)

  # Optional settings:
  uniform_bucket_level_access = true        # Recommended for security
  force_destroy               = false       # Prevent accidental deletion

  # Optional: Add lifecycle rules
  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30  # Delete objects after 30 days
    }
  }

  # Optional: Versioning
  versioning {
    enabled = true
  }
}
