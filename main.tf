resource "google_storage_bucket" "my-bucket" {
  name          = "wif-nithin-234"
  location      = "us-central1"
  project = "bilvantisaimlproject"
  force_destroy = true
  public_access_prevention = "enforced"
}

resource "google_storage_bucket" "my-bucket2" {
  name          = "wif-nithin-235"
  location      = "us-central1"
  project = "bilvantisaimlproject"
  force_destroy = true
  public_access_prevention = "enforced"
}
