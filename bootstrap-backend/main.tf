locals {
    tf_bucket_name = "${var.backend-bucket-region}-aduggirala-bucket-tfstate"
}
resource "google_storage_bucket" "terraform_state-bucket" {
  name          = local.tf_bucket_name
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}