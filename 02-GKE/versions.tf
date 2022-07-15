terraform {
  backend "gcs" {
    bucket = "dataprodev-01"
    prefix = "terraform/state/terraform.tfstate"
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.28.0"
    }
  }
}

