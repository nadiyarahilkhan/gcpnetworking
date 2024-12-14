terraform {
  backend "gcs" {
    bucket = "tf-bucket-gcp"
    prefix = "terraform/networking"
  }
}
